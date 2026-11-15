package com.transsion.playercommon.vishaapis.appconfig;

public class AppControlConfig {
    public static final String HOST = "https://api.vishavideo.com";
    public static final String PRE_HOST = "https://test-visha.transsion-os.com";

    public static final class API {
        public static final String API_GET_AI_SUBTITLE_CONFIG = "/visha/api/aiSub/config/get";
        public static final String API_GET_API_KEYS_CONFIG = "/visha/api/intelligent_edit/api_key/get";
        public static final String API_GET_CHECK_NEW_VERSION = "/visha/api/version/update-info";
        public static final String API_GET_CLOUD_CTRL_CONFIG = "/visha/api/cloud-ctrl-config/get";
        public static final String API_GET_DOWNLOAD_CONFIG = "/visha/api/aggregation_config/sniff_global_config/query/v1";
        public static final String API_GET_GLOBAL_CONFIG = "/visha/api/aggregation_config/global_config/query/v2";
    }
}
