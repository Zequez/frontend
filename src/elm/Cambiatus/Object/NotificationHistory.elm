-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql


module Cambiatus.Object.NotificationHistory exposing (..)

import Cambiatus.InputObject
import Cambiatus.Interface
import Cambiatus.Object
import Cambiatus.Scalar
import Cambiatus.ScalarCodecs
import Cambiatus.Union
import Graphql.Internal.Builder.Argument as Argument exposing (Argument)
import Graphql.Internal.Builder.Object as Object
import Graphql.Internal.Encode as Encode exposing (Value)
import Graphql.Operation exposing (RootMutation, RootQuery, RootSubscription)
import Graphql.OptionalArgument exposing (OptionalArgument(..))
import Graphql.SelectionSet exposing (SelectionSet)
import Json.Decode as Decode


id : SelectionSet Int Cambiatus.Object.NotificationHistory
id =
    Object.selectionForField "Int" "id" [] Decode.int


insertedAt : SelectionSet Cambiatus.ScalarCodecs.DateTime Cambiatus.Object.NotificationHistory
insertedAt =
    Object.selectionForField "ScalarCodecs.DateTime" "insertedAt" [] (Cambiatus.ScalarCodecs.codecs |> Cambiatus.Scalar.unwrapCodecs |> .codecDateTime |> .decoder)


isRead : SelectionSet Bool Cambiatus.Object.NotificationHistory
isRead =
    Object.selectionForField "Bool" "isRead" [] Decode.bool


payload : SelectionSet decodesTo Cambiatus.Union.NotificationType -> SelectionSet decodesTo Cambiatus.Object.NotificationHistory
payload object_ =
    Object.selectionForCompositeField "payload" [] object_ identity


recipient : SelectionSet decodesTo Cambiatus.Object.Profile -> SelectionSet decodesTo Cambiatus.Object.NotificationHistory
recipient object_ =
    Object.selectionForCompositeField "recipient" [] object_ identity


recipientId : SelectionSet String Cambiatus.Object.NotificationHistory
recipientId =
    Object.selectionForField "String" "recipientId" [] Decode.string


type_ : SelectionSet String Cambiatus.Object.NotificationHistory
type_ =
    Object.selectionForField "String" "type" [] Decode.string


updatedAt : SelectionSet Cambiatus.ScalarCodecs.DateTime Cambiatus.Object.NotificationHistory
updatedAt =
    Object.selectionForField "ScalarCodecs.DateTime" "updatedAt" [] (Cambiatus.ScalarCodecs.codecs |> Cambiatus.Scalar.unwrapCodecs |> .codecDateTime |> .decoder)