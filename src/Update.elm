module Update exposing (..)

import Messages exposing (Msg(..))
import Models exposing (Model)
import Todos.Update


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case msg of
        TodoMsg subMsg ->
            let
                ( updatedTodos, cmd ) =
                    Todos.Update.update subMsg model.todos
            in
                ( { model | todos = updatedTodos }, Cmd.map TodoMsg cmd )
