module Messages exposing (..)

import Todos.Messages


type Msg
    = TodoMsg Todos.Messages.Msg
