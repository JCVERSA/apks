package io.appmetrica.analytics.networktasks.impl;

import android.text.TextUtils;
import androidx.browser.trusted.sharing.ShareTarget;
import com.lzy.okgo.model.HttpHeaders;
import io.appmetrica.analytics.network.internal.NetworkClient;
import io.appmetrica.analytics.network.internal.Request;
import io.appmetrica.analytics.network.internal.Response;
import javax.net.ssl.SSLSocketFactory;

public final class a {
    public static Response a(String str, String str2, SSLSocketFactory sSLSocketFactory) {
        Request.Builder builderWithMethod = new Request.Builder(str2).withMethod(ShareTarget.METHOD_GET);
        if (!TextUtils.isEmpty(str)) {
            builderWithMethod.addHeader(HttpHeaders.HEAD_KEY_IF_NONE_MATCH, str);
        }
        NetworkClient.Builder builderWithSslSocketFactory = new NetworkClient.Builder().withInstanceFollowRedirects(true).withSslSocketFactory(sSLSocketFactory);
        int i = b.a;
        return builderWithSslSocketFactory.withConnectTimeout(i).withReadTimeout(i).build().newCall(builderWithMethod.build()).execute();
    }
}
