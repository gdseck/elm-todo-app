module Todos.Update exposing (..)

import Todos.Messages exposing (Msg(..))
import Todos.Models exposing (Todo)


update : Msg -> List Todo -> ( List Todo, Cmd Msg )
update message players =
    case message of
        NoOp ->
            ( players, Cmd.none )
