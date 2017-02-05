module Todos.List exposing (..)

import Html exposing (..)
import Html.Attributes exposing (class)
import Todos.Messages exposing (..)
import Todos.Models exposing (Todo)


view : List Todo -> Html Msg
view todos =
    div []
        [ nav todos
        , list todos
        ]


nav : List Todo -> Html Msg
nav todos =
    div [ class "" ]
        [ div [ class "" ] [ text "Todos" ] ]


list : List Todo -> Html Msg
list todos =
    div []
        [ table []
            [ thead []
                [ tr []
                    [ td [] [ text "Id" ]
                    , td [] [ text "Todo" ]
                    , td [] [ text "Status" ]
                    ]
                ]
            , tbody [] (List.map todoRow todos)
            ]
        ]


todoRow : Todo -> Html Msg
todoRow todo =
    tr []
        [ td [] [ text todo.id ]
        , td [] [ text todo.content ]
        , td [] [ text (toString todo.status) ]
        ]
