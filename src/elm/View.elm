module View exposing (..)

import Html exposing (..)
import Messages exposing (Msg(..))
import Models exposing (Model)
import Todos.List


view : Model -> Html Msg
view model =
    div []
        [ page model ]


page : Model -> Html Msg
page model =
    Html.map TodoMsg (Todos.List.view model.todos)
