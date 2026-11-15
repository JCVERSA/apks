package com.transsion.livecaption.constant;

public interface ICode {
    public static final int DATA_HANDLE_TYPE_ASR = 1;
    public static final int DATA_HANDLE_TYPE_EVENT = 3;
    public static final int DATA_HANDLE_TYPE_START_ASR = 0;
    public static final int DATA_HANDLE_TYPE_TRANSLATION = 2;
    public static final int ERROR_CODE_ERROR_DATA_NULL = -1;
    public static final int ERROR_CODE_ERROR_OBJECT = -3;
    public static final int ERROR_CODE_ERROR_OBJECT_NULL = -2;
    public static final int INFERENCE_ERROR_CLOUD_FAIL = 3002;
    public static final int INFERENCE_ERROR_INPUT_EMPTY = 3005;
    public static final int INFERENCE_ERROR_MODEL_BUSY = 3001;
    public static final int INFERENCE_ERROR_PACKAGE_ILLEGAL = 3004;
    public static final int INFERENCE_ERROR_PARAMETERS_INVALID = 3003;
    public static final int INFERENCE_SUCCESSFUL = 3000;
    public static final int INFERENCE_SUCCESSFUL_IS_FRAUD = 3006;
    public static final int INFERENCE_SUCCESSFUL_IS_NONE_FRAUD = 3008;
    public static final int INFERENCE_SUCCESSFUL_IS_UNFRAUD = 3007;
    public static final String KEY_DATA_CODE = "DATA_CODE";
    public static final String KEY_DATA_DATA = "DATA_MESSAGE";
    public static final String KEY_DATA_TYPE = "DATA_TYPE";
    public static final int LLM_SERVICE_ERROR = -2;
    public static final int LLM_SERVICE_SEIZE_ERROR = -1;
    public static final int LLM_SERVICE_SUCCESS = 0;
    public static final String LLM_SUPPORT_LANGUARG_EN = "en";
    public static final int RESPONSE_STREAM_END = 2003;
    public static final int RESPONSE_STREAM_IN = 2002;
    public static final int RESPONSE_STREAM_START = 2001;
    public static final int SCENE_TYPE_AUDIO_SUMMARIZE = 2;
    public static final int SCENE_TYPE_CHAT = 3;
    public static final int SCENE_TYPE_NOTIFICATION_SUMMARIZE = 10;
    public static final int SCENE_TYPE_PHONE_AUTO_REPLAY = 6;
    public static final int SCENE_TYPE_PHONE_AUTO_REPLAY_AND_FRAUD = 9;
    public static final int SCENE_TYPE_PHONE_FRAUD = 7;
    public static final int SCENE_TYPE_PHONE_SUMMARIZE = 4;
    public static final int SCENE_TYPE_PHONE_SUMMARIZE_AND_TODO = 8;
    public static final int SCENE_TYPE_PHONE_TODO_LIST = 5;
    public static final int SCENE_TYPE_TEXT_SUMMARIZE = 1;
    public static final int TYPE_DATA = 2;
    public static final int TYPE_ERROR = 3;
    public static final int TYPE_EVENT = 1;

    public interface Action {
        public static final int ACTION_PAUSE = 1012;
        public static final int ACTION_RELEASE = 1014;
        public static final int ACTION_START = 1011;
        public static final int ACTION_STOP = 1013;
        public static final int ACTION_TRANSLATE = 1001;
    }

    public interface BUSINESSES {
        public static final int ACTION_INIT_AUTO_ANSWER = 5000;
        public static final int ACTION_INIT_SUBTITLE = 5010;
        public static final int ACTION_START_AUTO_ANSWER = 5001;
        public static final int ACTION_START_SUBTITLE = 5011;
        public static final int ACTION_UPDATE_SUBTITLE = 5012;
        public static final int END_BUSINESS = 10000;
        public static final int END_BUSINESS_WITH_ERROR = 10001;
        public static final int ERROR_CODE_AAP_PARAM_NULL = 1001;
        public static final int ERROR_CODE_AUTO_ANSWER_TIME_OUT = 5005;
        public static final int ERROR_CODE_SERVICE_SHOULD_STOP = 1015;
        public static final int EVENT_CODE_AAP_SERVICE_BOUND = 1010;
        public static final int EVENT_CODE_AAP_SERVICE_CONNECTED = 1011;
        public static final int EVENT_CODE_AAP_SERVICE_DISCONNECTED = 1015;
        public static final int EVENT_CODE_AAP_SERVICE_PAUSED = 1012;
        public static final int EVENT_CODE_AAP_SERVICE_RELEASED = 1014;
        public static final int EVENT_CODE_AAP_SERVICE_STOPPED = 1013;
        public static final int EVENT_CODE_START_FAILED = 10002;
        public static final int EVENT_CODE_UPDATE_FAILED = 10003;
    }

    public interface CALL {
        public static final String CALL_DATA_DIRECTION_DOWN = "down";
        public static final String CALL_DATA_DIRECTION_UP = "up";
        public static final String CALL_KEY_CONTENT = "content";
        public static final String CALL_KEY_DIRECTION = "direction";
        public static final String CALL_KEY_STATE = "state";
    }

    public interface Function {
        public static final int ERROR_CODE_AI_ASR_ERROR = 2033;
        public static final int ERROR_CODE_AI_SERVICE_INIT_FAILED = 2001;
        public static final int ERROR_CODE_AI_SERVICE_INIT_SUCCESS = 2002;
        public static final int ERROR_CODE_AI_SERVICE_OFF = 203;
        public static final int ERROR_CODE_LLM_SERVICE_DISCONNECT = 2004;
        public static final int EVENT_CODE_AI_ASR_EXIT = 2039;
        public static final int EVENT_CODE_AI_ENGINE_INITIALIZE_FAILED = 2012;
        public static final int EVENT_CODE_AI_ENGINE_INITIALIZING = 2011;
        public static final int EVENT_CODE_AI_ENGINE_STARTED = 2014;
        public static final int EVENT_CODE_AI_ENGINE_STOPPED = 2015;
        public static final int EVENT_CODE_AI_ENGINE_UPDATING = 2013;
        public static final int EVENT_CODE_STATE_ASR_BEGIN = 2035;
        public static final int EVENT_CODE_STATE_ASR_CHANGE = 2036;
        public static final int EVENT_CODE_STATE_ASR_END = 2037;
        public static final int EVENT_CODE_STATE_AST_INIT_FAILED = 2032;
        public static final int EVENT_CODE_STATE_LLM_EXIST = 4003;
        public static final int EVENT_CODE_STATE_LLM_INITIALIZE_FAILED = 4004;
        public static final int EVENT_CODE_STATE_LLM_INITIALIZE_SUCCESSFUL = 4002;
        public static final int EVENT_CODE_STATE_LLM_INITIALIZING = 4001;
        public static final int EVENT_CODE_STATE_LLM_SECURITY_INTERCEPT = 4005;
        public static final int EVENT_CODE_STATE_TRANSLATED = 2022;
        public static final int EVENT_CODE_STATE_TRANSLATING = 2021;
        public static final int EVENT_CODE_STATE_TTS_INIT_FAILED = 3002;
        public static final int EVENT_CODE_STATE_TTS_INIT_SUCCESSFUL = 3001;
    }
}
