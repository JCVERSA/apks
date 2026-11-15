package com.hunantv.imgo.data;

public class MgtvPlayerConstants {
    public static final String ECODE_CDN2_EXCEPTION = "02.100001";
    public static final String ECODE_CDN2_INVALID_ENTITY = "02.100003";
    public static String MGSDK_POSID = "";
    public static String MGSDK_PPID = "";
    public static String MGSDK_PREID = "";

    public static final class Definition {
        public static final int DEFINITION_4K = 9;
        public static final int DEFINITION_BLUE = 4;
        public static final int DEFINITION_COPY = 6;
        public static final int DEFINITION_FLOW = 0;
        public static final int DEFINITION_HDR = 7;
        public static final int DEFINITION_HIGH = 2;
        public static final int DEFINITION_NORMAL = 1;
        public static final int DEFINITION_PANS = 5;
        public static final int DEFINITION_SUPER = 3;
    }

    public static class DefinitionChangeResult {
        public static final String FAILED = "0103";
        public static final String NEED_VIP = "0104";
        public static final String SUCCESS = "0000";
    }

    public static final class ErrorCode {
        public static final String AUTH_FAILED = "110101";
        public static final String AUTH_FAILED_AT_NOUSE = "110107";
        public static final String AUTH_FAILED_IP_NOT_PERMITTED = "110103";
        public static final String AUTH_FAILED_JUST_LOOK = "110102";
        public static final String AUTH_FAILED_NETWORE_ERROR = "110105";
        public static final String AUTH_FAILED_NOT_PERMITTED = "100016";
        public static final String AUTH_FAILED_NO_RESOUCE = "110106";
        public static final String AUTH_FAILED_OUTPUT = "199999";
        public static final String AUTH_FAILED_REQUEST_SOURCE_OFFLINE = "110104";
        public static final String AUTH_FAILED_VIP = "110108";
        public static final String AUTH_LOGIN = "110109";
        public static final String AUTH_SUCCESS = "110100";
        public static final String AUTH_TO_MGTV = "110110";
        public static final String CONTINUE_TO_MGTV = "110111";
        public static final String ERROR_CHANGE_DEFINATION_NOTIFY = "130104";
        public static final String ERROR_CHANGE_DEFINATION_VIP = "130101";
        public static final String ERROR_CHANGE_DEFINITION_NETWORK = "130105";
        public static final String ERROR_CHANGE_DEFINITION_NOT_EXIST = "130107";
        public static final String ERROR_CHANGE_DEFINITION_SERVICE = "130106";
        public static final String ERROR_CHANNE_DEFINITION_PLAYER = "130108";
        public static final String ERROR_DECODE_ENCODE_ERROR = "140101";
        public static final String ERROR_M3U8 = "140104";
        public static final String ERROR_NETWORK_ERROR = "140100";
        public static final String ERROR_RUNTIME_ERROR = "140102";
        public static final String ERROR_RUNTIME_PLAY = "140105";
        public static final String ERROR_RUNTIME_UNKNOW = "140103";
        public static final String ERROR_URL = "120100";
        public static final String ERROR_URL_NETWOR = "120101";
        public static final String LIVE_CHANGEDEFINITION_FAILED_NEEDVIP = "170005";
        public static final String LIVE_CHANGEDEFINITION_FAILEd = "170004";
        public static final String LIVE_IS_END = "170007";
        public static final String LIVE_NOT_START = "170006";
        public static final String LIVE_PLAY_AT_ERROR = "170002";
        public static final String LIVE_PLAY_ERROR_NO_SOURCE = "170001";
        public static final String LIVE_PLAY_VIP = "170003";
        public static final String LOCAL_NEWSOURCETASK_ERROR = "160001";
        public static final String LOCAL_PLAY_CONTENTID_DOWNLOADINFO_NULL = "150502";
        public static final String LOCAL_PLAY_CONTENTID_DOWNLOAD_NOT_COMPLETE = "150503";
        public static final String LOCAL_PLAY_CONTENTID_NULL = "150501";
        public static final String LOCAL_PLAY_DEFAULT_ERROR = "150599";
    }

    public static final class PlayerStatus {
        public static final int AD_BUFFERING = 2;
        public static final int AD_PAUSED = 4;
        public static final int AD_PLAYING = 3;
        public static final int AUTHFAIL = 16;
        public static final int AUTHORIZING = 1;
        public static final int COMPLETE = 11;
        public static final int FIRST_FRAME_BUFFERING = 6;
        public static final int IDLE = 0;
        public static final int PLAY_LOADING_HIDE = 18;
        public static final int PLAY_LOADING_SHOW = 17;
        public static final int PREPARING = 5;
        public static final int RELEASED = 12;
        public static final int STATE_ERROR = 13;
        public static final int STATE_START_ABORT = 14;
        public static final int SUSPENDED = 10;
        public static final int VIDEO_BUFFERING = 7;
        public static final int VIDEO_PAUSED = 9;
        public static final int VIDEO_PLAYING = 8;
    }

    public static final class ReportStep {
        public static final int AD = 4;
        public static final int FIRST_AUTH = 0;
        public static final int P2P_DURATION = 7;
        public static final int PREPARE_RENDER = 3;
        public static final int SECOND_CDN = 1;
        public static final int TOTAL_DURATION = 6;
        public static final int TOTAL_HW_DURATION = 8;
        public static final int TOTAL_PREPARE = 5;
        public static final int VIDEO_PREPARE = 2;
    }

    public static final class STEP {
        public static final int SETP_GET_URL = 2;
        public static final int STEP_AD_COMPLETE_NOTIFY = 7;
        public static final int STEP_END_VIDEO = 11;
        public static final int STEP_GET_AD = 1;
        public static final int STEP_GET_SOURCE = 0;
        public static final int STEP_GET_URL_ASYNC = 4;
        public static final int STEP_GET_URL_DEFINATION = 6;
        public static final int STEP_GET_VIDEO = 3;
        public static final int STEP_GET_VIDEO_ASYNC = 5;
        public static final int STEP_LIVE_GET_SOURCE = 8;
        public static final int STEP_LIVE_PLAY_VIDEO = 9;
        public static final int STEP_PAUSE_VIDEO = 10;
    }

    public static final class Success {
        public static final int SUCCESS_AUTH = 65536;
        public static final int SUCCESS_URL = 65537;
        public static final int SUCCESS_VIDEO = 65538;
    }
}
