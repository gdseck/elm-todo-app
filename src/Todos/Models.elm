module Todos.Models exposing (..)


type alias TodoId =
    String


type TodoStatus
    = Active
    | Completed


type alias Todo =
    { id : TodoId
    , content : String
    , status : TodoStatus
    }


new : Todo
new =
    { id = "0"
    , content = ""
    , status = Active
    }
