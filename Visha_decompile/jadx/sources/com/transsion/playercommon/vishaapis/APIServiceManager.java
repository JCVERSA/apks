package com.transsion.playercommon.vishaapis;

import androidx.collection.LruCache;
import com.blankj.utilcode.util.Utils;
import com.transsion.retrofit.factory.BaseAPIManager;
import com.transsion.retrofit.interceptor.HttpLoggingInterceptor;
import defpackage.ge;
import defpackage.w6c;
import java.util.logging.Level;
import okhttp3.Interceptor;

public class APIServiceManager extends BaseAPIManager {

    public static final class InstanceHolder {
        private static final APIServiceManager INSTANCE = new APIServiceManager();

        private InstanceHolder() {
        }
    }

    public static APIServiceManager getInstance() {
        return InstanceHolder.INSTANCE;
    }

    public void clearApiCache() {
        LruCache<Class, Object> lruCache = this.apiCache;
        if (lruCache != null) {
            lruCache.remove(APIService.class);
        }
    }

    @Override
    public String createBaseUrl() {
        return (!ge.e() || w6c.d(Utils.a(), "environment_mode", 0) == 1) ? APIServiceConfig.BASE_HOST_ONLINE : "https://test-visha.transsion-os.com";
    }

    @Override
    public Interceptor createInterceptor() {
        return new APIReqParamInterceptor();
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

    private APIServiceManager() {
    }
}
