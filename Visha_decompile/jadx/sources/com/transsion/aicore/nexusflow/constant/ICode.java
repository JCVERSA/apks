package com.transsion.aicore.nexusflow.constant;

import androidx.annotation.Keep;

@Keep
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
    public static final int INFERENCE_ERROR_TIMEOUT = 3009;
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
}
