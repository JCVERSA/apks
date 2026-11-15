package com.cloud.tupdate.net.network;

import android.text.TextUtils;
import androidx.media3.exoplayer.upstream.CmcdData;
import com.cloud.tupdate.net.sign.HttpSigner;
import com.cloud.tupdate.net.utils.CollectionUtil;
import com.cloud.tupdate.net.utils.LogUtil;
import com.google.gson.Gson;
import com.lzy.okgo.model.HttpHeaders;
import com.transsion.http.impl.StringCallback;
import com.transsion.playercommon.vishaapis.gslb.GslbInterceptor;
import defpackage.es4;
import defpackage.j1a;
import defpackage.nd8;
import defpackage.o6;
import defpackage.y45;
import java.util.Map;
import javassist.compiler.ast.MethodDecl;
import javax.net.ssl.SSLSocketFactory;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

@Metadata(d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0007\n\u0002\u0010%\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0011\n\u0002\u0018\u0002\n\u0002\b\u0007\b\u0016\u0018\u0000 .2\u00020\u0001:\u0002/0B\t\b\u0004¢\u0006\u0004\b\u0002\u0010\u0003J\u0015\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0007\u0010\bJ%\u0010\u000e\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\u000b\u001a\u00020\t2\u0006\u0010\r\u001a\u00020\f¢\u0006\u0004\b\u000e\u0010\u000fJ\u0015\u0010\u0011\u001a\u00020\u00062\u0006\u0010\u0010\u001a\u00020\t¢\u0006\u0004\b\u0011\u0010\u0012JS\u0010\u001a\u001a\u00020\u00062\u0006\u0010\u0013\u001a\u00020\t2\u0014\u0010\u0015\u001a\u0010\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\t\u0018\u00010\u00142\u0014\u0010\u0016\u001a\u0010\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\t\u0018\u00010\u00142\b\u0010\u0017\u001a\u0004\u0018\u00010\u00012\u0006\u0010\u0019\u001a\u00020\u0018¢\u0006\u0004\b\u001a\u0010\u001bR\u001a\u0010\u001f\u001a\u00020\f8\u0006X\u0086D¢\u0006\f\n\u0004\b\u001a\u0010\u001c\u001a\u0004\b\u001d\u0010\u001eR\u0016\u0010!\u001a\u00020\u00048\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u000e\u0010 R\u0016\u0010\u0005\u001a\u00020\u00048\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0007\u0010 R\u0016\u0010\"\u001a\u00020\u00048\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0011\u0010 R\u0016\u0010\n\u001a\u00020\t8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b#\u0010$R\u0016\u0010\u000b\u001a\u00020\t8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b%\u0010$R\u0016\u0010\r\u001a\u00020\f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b&\u0010\u001cR\u0016\u0010\u0010\u001a\u00020\t8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b'\u0010$R\u0016\u0010)\u001a\u00020\t8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b(\u0010$R\u0018\u0010-\u001a\u0004\u0018\u00010*8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b+\u0010,¨\u00061"}, d2 = {"Lcom/cloud/tupdate/net/network/HttpRequestor;", "", MethodDecl.initName, "()V", "", "ifTestMode", "Lzfb;", "c", "(Z)V", "", "appName", "appVersion", "", "versionCode", "b", "(Ljava/lang/String;Ljava/lang/String;I)V", "language", "d", "(Ljava/lang/String;)V", "url", "", "headers", "params", "json", "Lcom/transsion/http/impl/StringCallback;", "callback", CmcdData.OBJECT_TYPE_AUDIO_ONLY, "(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/lang/Object;Lcom/transsion/http/impl/StringCallback;)V", "I", "getUNKNOWN_ERROR_CODE", "()I", "UNKNOWN_ERROR_CODE", "Z", "ifCommonHeader", "loggable", "e", "Ljava/lang/String;", "f", GslbInterceptor.HEADER_KEY_GSLB, CmcdData.STREAMING_FORMAT_HLS, CmcdData.OBJECT_TYPE_INIT_SEGMENT, "country", "Ljavax/net/ssl/SSLSocketFactory;", "j", "Ljavax/net/ssl/SSLSocketFactory;", "sslSocketFactory", "k", "Companion", "HttpRequestorHolder", "tupdate_release"}, k = 1, mv = {1, 6, 0}, xi = 48)
public class HttpRequestor {

    public static final Companion INSTANCE = new Companion(null);
    public static final String l = "Accept-Timezone";
    public static final String m = HttpHeaders.HEAD_KEY_ACCEPT_LANGUAGE;
    public static final String n = "Accept-Country";
    public static final String o = "appName";
    public static final String p = "appVersion";
    public static final String q = "versionCode";

    public boolean loggable;

    public int versionCode;

    public SSLSocketFactory sslSocketFactory;

    public final int UNKNOWN_ERROR_CODE = 10000;

    public boolean ifCommonHeader = true;

    public boolean ifTestMode = true;

    public String appName = "";

    public String appVersion = "";

    public String language = "";

    public String country = "";

    @Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u0005\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u000f\u0010\u0005\u001a\u0004\u0018\u00010\u0004¢\u0006\u0004\b\u0005\u0010\u0006R\u0014\u0010\b\u001a\u00020\u00078\u0002X\u0082D¢\u0006\u0006\n\u0004\b\b\u0010\tR\u0014\u0010\n\u001a\u00020\u00078\u0002X\u0082D¢\u0006\u0006\n\u0004\b\n\u0010\tR\u0014\u0010\u000b\u001a\u00020\u00078\u0002X\u0082D¢\u0006\u0006\n\u0004\b\u000b\u0010\tR\u0014\u0010\f\u001a\u00020\u00078\u0002X\u0082D¢\u0006\u0006\n\u0004\b\f\u0010\tR\u0014\u0010\u000e\u001a\u00020\r8\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u000e\u0010\u000fR\u0014\u0010\u0010\u001a\u00020\u00078\u0002X\u0082D¢\u0006\u0006\n\u0004\b\u0010\u0010\tR\u0014\u0010\u0011\u001a\u00020\u00078\u0002X\u0082D¢\u0006\u0006\n\u0004\b\u0011\u0010\t¨\u0006\u0012"}, d2 = {"Lcom/cloud/tupdate/net/network/HttpRequestor$Companion;", "", MethodDecl.initName, "()V", "Lcom/cloud/tupdate/net/network/HttpRequestor;", CmcdData.OBJECT_TYPE_AUDIO_ONLY, "()Lcom/cloud/tupdate/net/network/HttpRequestor;", "", "APP_NAME", "Ljava/lang/String;", "APP_VERSION", "COUNTRY", "LANGUAGE", "", "TIMEOUT_IN_MILLIONS", "I", "TIME_ZONE", "VERSION_CODE", "tupdate_release"}, k = 1, mv = {1, 6, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final HttpRequestor a() {
            return HttpRequestorHolder.a.a();
        }

        private Companion() {
        }
    }

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\bÂ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003R\u001a\u0010\t\u001a\u00020\u00048\u0016X\u0096\u0004¢\u0006\f\n\u0004\b\u0005\u0010\u0006\u001a\u0004\b\u0007\u0010\b¨\u0006\n"}, d2 = {"Lcom/cloud/tupdate/net/network/HttpRequestor$HttpRequestorHolder;", "", MethodDecl.initName, "()V", "Lcom/cloud/tupdate/net/network/HttpRequestor;", "b", "Lcom/cloud/tupdate/net/network/HttpRequestor;", CmcdData.OBJECT_TYPE_AUDIO_ONLY, "()Lcom/cloud/tupdate/net/network/HttpRequestor;", "sInstance", "tupdate_release"}, k = 1, mv = {1, 6, 0}, xi = 48)
    public static final class HttpRequestorHolder {
        public static final HttpRequestorHolder a = new HttpRequestorHolder();

        public static final HttpRequestor sInstance = new HttpRequestor();

        private HttpRequestorHolder() {
        }

        public HttpRequestor a() {
            return sInstance;
        }
    }

    /* JADX WARN: Code duplicated, block: B:11:0x0047  */
    public final void a(final String url, final Map headers, final Map params, final Object json, final StringCallback callback) {
        String str;
        y45.j(url, "url");
        y45.j(callback, "callback");
        try {
            if (TextUtils.isEmpty(url)) {
                str = url;
            } else {
                CollectionUtil collectionUtil = CollectionUtil.a;
                if (collectionUtil.d(params)) {
                    o6.j().d("update", y45.s("params -> ", params));
                    str = url + '?' + ((Object) collectionUtil.b(params));
                } else {
                    str = url;
                }
            }
            String json2 = new Gson().toJson(json);
            HttpSigner.g(this.ifTestMode);
            nd8 nd8Var = (nd8) ((nd8) ((nd8) ((nd8) ((nd8) ((nd8) es4.b().c(this.loggable)).e(this.sslSocketFactory)).h(json2).b(15000)).d(15000)).a("x-tr-signature", HttpSigner.b("post", "", "application/json", str, json2))).f(str);
            if (CollectionUtil.a.d(headers)) {
                o6.j().d("update", y45.s("header -> ", headers));
                y45.g(headers);
                for (Map.Entry entry : headers.entrySet()) {
                    nd8Var.a((String) entry.getKey(), (String) entry.getValue());
                }
            }
            if (this.ifCommonHeader) {
                nd8Var.a(l, CollectionUtil.a.a());
                if (!TextUtils.isEmpty(this.appName)) {
                    o6.j().d("update", y45.s("header -> appName = ", this.appName));
                    nd8Var.a(o, this.appName);
                }
                if (!TextUtils.isEmpty(this.appVersion)) {
                    o6.j().d("update", y45.s("header -> appVersion = ", this.appVersion));
                    nd8Var.a(p, this.appVersion);
                }
                if (this.versionCode > 0) {
                    o6.j().d("update", y45.s("header -> versionCode = ", Integer.valueOf(this.versionCode)));
                    nd8Var.a(q, y45.s("", Integer.valueOf(this.versionCode)));
                }
                if (!TextUtils.isEmpty(this.language)) {
                    o6.j().d("update", y45.s("header -> language = ", this.language));
                    nd8Var.a(m, this.language);
                }
                if (!TextUtils.isEmpty(this.country)) {
                    o6.j().d("update", y45.s("header -> country = ", this.country));
                    nd8Var.a(n, this.country);
                }
            }
            nd8Var.g().a(new StringCallback() {
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(true);
                }

                @Override
                public void D(int statusCode, String response, Throwable e) {
                    if (!HttpSigner.f(statusCode, response) || j1a.o0(url)) {
                        callback.D(statusCode, response, e);
                    } else {
                        this.a(url, headers, params, json, callback);
                    }
                }

                @Override
                public void E(int statusCode, String responseStr) {
                    callback.E(statusCode, responseStr);
                }
            });
        } catch (Throwable th) {
            LogUtil.a.d(th);
            callback.D(this.UNKNOWN_ERROR_CODE, "", th);
        }
    }

    public final void b(String appName, String appVersion, int versionCode) {
        y45.j(appName, "appName");
        y45.j(appVersion, "appVersion");
        this.appName = appName;
        this.appVersion = appVersion;
        this.versionCode = versionCode;
    }

    public final void c(boolean ifTestMode) {
        this.ifTestMode = ifTestMode;
        HttpSigner.g(ifTestMode);
    }

    public final void d(String language) {
        y45.j(language, "language");
        this.language = language;
    }
}
