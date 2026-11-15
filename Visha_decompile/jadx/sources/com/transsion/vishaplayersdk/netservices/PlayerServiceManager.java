package com.transsion.vishaplayersdk.netservices;

import androidx.collection.LruCache;
import com.transsion.retrofit.factory.BaseAPIManager;
import com.transsion.retrofit.interceptor.HttpLoggingInterceptor;
import defpackage.ge;
import java.util.logging.Level;
import okhttp3.Interceptor;

public class PlayerServiceManager extends BaseAPIManager {

    public static final class InstanceHolder {
        private static final PlayerServiceManager INSTANCE = new PlayerServiceManager();

        private InstanceHolder() {
        }
    }

    public static PlayerServiceManager getInstance() {
        return InstanceHolder.INSTANCE;
    }

    public void clearApiCache() {
        LruCache<Class, Object> lruCache = this.apiCache;
        if (lruCache != null) {
            lruCache.remove(PlayerService.class);
        }
    }

    @Override
    public String createBaseUrl() {
        return PlayerServiceConfig.bTestMode ? "https://test-visha.transsion-os.com" : "https://api.vishavideo.com";
    }

    @Override
    public Interceptor createInterceptor() {
        return new PlayerServiceReqParamInterceptor();
    }

    @Override
    public Interceptor createLogInterceptor() {
        if (!ge.e()) {
            return null;
        }
        HttpLoggingInterceptor httpLoggingInterceptor = new HttpLoggingInterceptor("visha_api");
        httpLoggingInterceptor.setPrintLevel(HttpLoggingInterceptor.Level.BODY);
        httpLoggingInterceptor.setColorLevel(Level.INFO);
        return httpLoggingInterceptor;
    }

    private PlayerServiceManager() {
    }
}
