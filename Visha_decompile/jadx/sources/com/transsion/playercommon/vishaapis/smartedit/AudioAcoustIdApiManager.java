package com.transsion.playercommon.vishaapis.smartedit;

import com.transsion.playercommon.vishaapis.aistatistics.AiStatisticsInterceptor;
import com.transsion.retrofit.factory.BaseAPIManager;
import okhttp3.Interceptor;

public class AudioAcoustIdApiManager extends BaseAPIManager {

    public static final class InstanceHolder {
        private static final AudioAcoustIdApiManager INSTANCE = new AudioAcoustIdApiManager();

        private InstanceHolder() {
        }
    }

    public static AudioAcoustIdApiManager getInstance() {
        return InstanceHolder.INSTANCE;
    }

    @Override
    public String createBaseUrl() {
        return AudioSmartEditApiConfig.ACOUSTID_HOST;
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
