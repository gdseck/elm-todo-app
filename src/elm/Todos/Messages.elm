module Todos.Messages exposing (..)

import Http
import Players.Models exposing (TodoId, TodoStatus, Todo)


type Msg
    = OnFetchAll (Result Http.Error (List Todo))
