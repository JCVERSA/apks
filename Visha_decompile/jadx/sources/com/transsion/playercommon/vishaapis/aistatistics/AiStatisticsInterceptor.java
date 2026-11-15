package com.transsion.playercommon.vishaapis.aistatistics;

import androidx.annotation.NonNull;
import androidx.browser.trusted.sharing.ShareTarget;
import com.transsion.playercommon.vishaapis.APIServiceConfig;
import java.io.IOException;
import java.util.Map;
import java.util.TreeMap;
import okhttp3.HttpUrl;
import okhttp3.Interceptor;
import okhttp3.Request;
import okhttp3.Response;

public class AiStatisticsInterceptor implements Interceptor {
    private static final String TAG = "visha_" + AiStatisticsInterceptor.class.getSimpleName();

    @Override
    @NonNull
    public Response intercept(Interceptor.Chain chain) throws IOException {
        KeyBean keyBean;
        Request request = chain.request();
        Request.Builder builderAddHeader = request.newBuilder().removeHeader("User-Agent").addHeader("User-Agent", APIServiceConfig.getUserAgent());
        if ("https://test-ccdata.transsion-os.com/buried-point".contains(request.url().uri().getPath()) && (keyBean = KeyConstant.keyBean) != null) {
            builderAddHeader.addHeader("encrypt-index", String.valueOf(keyBean.getIndex()));
        }
        if ("POST".equals(request.method())) {
            request = builderAddHeader.build();
        } else if (ShareTarget.METHOD_GET.equals(request.method())) {
            TreeMap treeMap = new TreeMap();
            HttpUrl.Builder builderNewBuilder = request.url().newBuilder();
            for (Map.Entry entry : treeMap.entrySet()) {
                builderNewBuilder.addEncodedQueryParameter((String) entry.getKey(), (String) entry.getValue());
            }
            request = builderAddHeader.method(request.method(), request.body()).url(builderNewBuilder.build()).build();
        }
        return chain.proceed(request);
    }
}
