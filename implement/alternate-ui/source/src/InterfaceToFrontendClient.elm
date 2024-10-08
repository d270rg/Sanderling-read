module InterfaceToFrontendClient exposing (..)

import EveOnline.VolatileProcessInterface
import Json.Encode

type RequestFromClient
    = ReadLogRequest
    | RunInVolatileProcessRequest EveOnline.VolatileProcessInterface.RequestToVolatileHost


type RunInVolatileProcessResponseStructure
    = SetupNotCompleteResponse String
    | RunInVolatileProcessCompleteResponse RunInVolatileProcessComplete


type alias RunInVolatileProcessComplete =
    { exceptionToString : Maybe String
    , returnValueToString : Maybe String
    , durationInMilliseconds : Int
    }
