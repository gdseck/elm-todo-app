module Todos.List exposing (..)

import Html exposing (..)
import Html.Attributes exposing (class)
import Todos.Messages exposing (..)
import Todos.Models exposing (Todo)


view : List Todo -> Html Msg
view todos =
    div [ class "container" ]
        [ nav todos
        , list todos
        ]


nav : List Todo -> Html Msg
nav todos =
    div [ class "title" ]
        [ div [ class "todo-container" ] [ text "Elm Todo App" ] ]


list : List Todo -> Html Msg
list todos =
    div [ class "todo-list-wrapper" ]
        [ ul [ class "todo-list" ]
            (List.map
                todoItem
                todos
            )
        ]


todoItem : Todo -> Html Msg
todoItem todo =
    li [ class "todo-item" ]
        [ text todo.content
        ]
