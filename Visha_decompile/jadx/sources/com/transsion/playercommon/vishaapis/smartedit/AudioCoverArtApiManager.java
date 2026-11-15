package com.transsion.playercommon.vishaapis.smartedit;

import com.transsion.playercommon.vishaapis.aistatistics.AiStatisticsInterceptor;
import com.transsion.retrofit.factory.BaseAPIManager;
import okhttp3.Interceptor;

public class AudioCoverArtApiManager extends BaseAPIManager {

    public static final class InstanceHolder {
        private static final AudioCoverArtApiManager INSTANCE = new AudioCoverArtApiManager();

        private InstanceHolder() {
        }
    }

    public static AudioCoverArtApiManager getInstance() {
        return InstanceHolder.INSTANCE;
    }

    @Override
    public String createBaseUrl() {
        return AudioSmartEditApiConfig.COVER_ART_ARCHIVE_HOST;
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
