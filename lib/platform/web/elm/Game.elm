module Game exposing (..)

import Html exposing (Html, div, text)
import Svg exposing (..)
import Svg.Attributes exposing (..)


-- MAIN


main : Program Never Model Msg
main =
    Html.program
        { init = init
        , view = view
        , update = update
        , subscriptions = subscriptions
        }



-- MODEL


type alias Model =
    { characterPositionX : Int
    , characterPositionY : Int
    , coinPositionX : Int
    , coinPositionY : Int
    }


initialModel : Model
initialModel =
    { characterPositionX = 50
    , characterPositionY = 300
    , coinPositionX = 500
    , coinPositionY = 300
    }


init : ( Model, Cmd Msg )
init =
    ( initialModel, Cmd.none )



-- UPDATE


type Msg
    = NoOp


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case msg of
        NoOp ->
            ( model, Cmd.none )



-- SUBSCRIPTIONS


subscriptions : Model -> Sub Msg
subscriptions model =
    Sub.none



-- VIEW


view : Model -> Html Msg
view model =
    div [] [ viewGame model ]


viewGame : Model -> Svg Msg
viewGame model =
    svg [ version "1.1", width "600", height "400" ]
        [ viewGameWindow
        , viewGameSky
        , viewGameGround
        , viewCharacter model
        , viewCoin model
        ]


viewGameWindow : Svg Msg
viewGameWindow =
    rect
        [ width "600"
        , height "400"
        , fill "none"
        , stroke "black"
        ]
        []


viewGameSky : Svg Msg
viewGameSky =
    rect
        [ x "0"
        , y "0"
        , width "600"
        , height "300"
        , fill "#4b7cfb"
        ]
        []


viewGameGround : Svg Msg
viewGameGround =
    rect
        [ x "0"
        , y "300"
        , width "600"
        , height "100"
        , fill "green"
        ]
        []


viewCharacter : Model -> Svg Msg
viewCharacter model =
    image
        [ xlinkHref "/images/mage_guy_64.png"
        , x (toString model.characterPositionX)
        , y (toString model.characterPositionY)
        , width "64"
        , height "64"
        ]
        []


viewCoin : Model -> Svg Msg
viewCoin model =
    image
        [ xlinkHref "/images/coin.png"
        , x (toString model.coinPositionX)
        , y (toString model.coinPositionY)
        , width "20"
        , height "20"
        ]
        []
