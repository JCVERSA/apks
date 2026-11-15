package com.transsion.playercommon.vishaapis.smartedit;

import com.transsion.playercommon.vishaapis.aistatistics.AiStatisticsInterceptor;
import com.transsion.retrofit.factory.BaseAPIManager;
import okhttp3.Interceptor;

public class AudioLastFmCoverApiManager extends BaseAPIManager {

    public static final class InstanceHolder {
        private static final AudioLastFmCoverApiManager INSTANCE = new AudioLastFmCoverApiManager();

        private InstanceHolder() {
        }
    }

    public static AudioLastFmCoverApiManager getInstance() {
        return InstanceHolder.INSTANCE;
    }

    @Override
    public String createBaseUrl() {
        return AudioSmartEditApiConfig.COVER_LAST_FM_HOST;
    }

    @Override
    public Interceptor createInterceptor() {
        return new AiStatisticsInterceptor();
    }

    @Override
    public Interceptor createLogInterceptor() {
        return null;
    }
}
