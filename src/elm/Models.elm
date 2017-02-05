module Models exposing (..)

import Todos.Models exposing (Todo)


type alias Model =
    { todos : List Todo }


initialModel : Model
initialModel =
    { todos = [ Todo "1" "Learn Elm" Todos.Models.Active ]
    }
