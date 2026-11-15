package com.cloud.hisavana.net;

import androidx.media3.exoplayer.upstream.CmcdData;
import com.cloud.hisavana.net.HttpRequest;
import com.cloud.hisavana.net.disklrucache.listener.LruCleanCallBack;
import com.cloud.hisavana.net.impl.IHttpCallback;
import com.cloud.sdk.commonutil.util.HSScopeHelper;
import com.transsion.playercommon.vishaapis.gslb.GslbInterceptor;
import defpackage.ja1;
import defpackage.y45;
import java.util.concurrent.CopyOnWriteArrayList;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;
import kotlin.jvm.internal.Ref$ObjectRef;
import okhttp3.Request;
import org.apache.commons.lang3.BooleanUtils;

@Metadata(d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\u000e\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J-\u0010\u000b\u001a\u00020\n2\b\u0010\u0005\u001a\u0004\u0018\u00010\u00042\b\u0010\u0007\u001a\u0004\u0018\u00010\u00062\b\u0010\t\u001a\u0004\u0018\u00010\bH\u0007¢\u0006\u0004\b\u000b\u0010\fJ-\u0010\r\u001a\u00020\n2\b\u0010\u0005\u001a\u0004\u0018\u00010\u00042\b\u0010\u0007\u001a\u0004\u0018\u00010\u00062\b\u0010\t\u001a\u0004\u0018\u00010\bH\u0007¢\u0006\u0004\b\r\u0010\fJ+\u0010\u000e\u001a\u00020\n2\b\u0010\u0005\u001a\u0004\u0018\u00010\u00042\b\u0010\u0007\u001a\u0004\u0018\u00010\u00062\b\u0010\t\u001a\u0004\u0018\u00010\b¢\u0006\u0004\b\u000e\u0010\fJ\u0017\u0010\u0011\u001a\u00020\n2\b\u0010\u0010\u001a\u0004\u0018\u00010\u000f¢\u0006\u0004\b\u0011\u0010\u0012R\u001d\u0010\u0017\u001a\b\u0012\u0004\u0012\u00020\u000f0\u00138\u0006¢\u0006\f\n\u0004\b\u0011\u0010\u0014\u001a\u0004\b\u0015\u0010\u0016R\"\u0010\u001e\u001a\u00020\u00188\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\r\u0010\u0019\u001a\u0004\b\u001a\u0010\u001b\"\u0004\b\u001c\u0010\u001dR\"\u0010\"\u001a\u00020\u00188\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u001f\u0010\u0019\u001a\u0004\b \u0010\u001b\"\u0004\b!\u0010\u001dR\"\u0010%\u001a\u00020\u00188\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u001a\u0010\u0019\u001a\u0004\b#\u0010\u001b\"\u0004\b$\u0010\u001d¨\u0006&"}, d2 = {"Lcom/cloud/hisavana/net/HttpRequest;", "", MethodDecl.initName, "()V", "", "url", "Lcom/cloud/hisavana/net/RequestParams;", "params", "Lcom/cloud/hisavana/net/impl/IHttpCallback;", "callback", "Lzfb;", "j", "(Ljava/lang/String;Lcom/cloud/hisavana/net/RequestParams;Lcom/cloud/hisavana/net/impl/IHttpCallback;)V", "c", CmcdData.STREAMING_FORMAT_HLS, "Lcom/cloud/hisavana/net/disklrucache/listener/LruCleanCallBack;", "lruCleanCallBack", "b", "(Lcom/cloud/hisavana/net/disklrucache/listener/LruCleanCallBack;)V", "Ljava/util/concurrent/CopyOnWriteArrayList;", "Ljava/util/concurrent/CopyOnWriteArrayList;", GslbInterceptor.HEADER_KEY_GSLB, "()Ljava/util/concurrent/CopyOnWriteArrayList;", "lruCleanCallBacks", "", "I", "e", "()I", "setCacheSize", "(I)V", "cacheSize", "d", CmcdData.OBJECT_TYPE_INIT_SEGMENT, "setVideoCacheSize", "videoCacheSize", "f", "k", "defaultCacheSize", "adnetwork_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class HttpRequest {
    public static final HttpRequest a = new HttpRequest();

    public static final CopyOnWriteArrayList lruCleanCallBacks = new CopyOnWriteArrayList();

    public static int cacheSize;

    public static int videoCacheSize;

    public static int defaultCacheSize;

    private HttpRequest() {
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r4v6, types: [T, com.cloud.hisavana.net.RequestParams] */
    public static final void c(String url, RequestParams params, final IHttpCallback callback) {
        try {
            final Ref$ObjectRef ref$ObjectRef = new Ref$ObjectRef();
            ref$ObjectRef.element = params;
            if (params == 0) {
                ref$ObjectRef.element = new RequestParams();
            }
            ((RequestParams) ref$ObjectRef.element).i("isDownload", BooleanUtils.TRUE);
            final Request requestA = CommonRequest.a(url, (RequestParams) ref$ObjectRef.element, callback);
            if (requestA != null) {
                HSScopeHelper.a.l(new Runnable() {
                    @Override
                    public final void run() {
                        HttpRequest.d(ref$ObjectRef, requestA, callback);
                    }
                });
            } else {
                ja1.netLog("getRequest:  create request is null");
            }
        } catch (Exception unused) {
            ja1.netLog("downloadImage:  post request is error");
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final void d(Ref$ObjectRef ref$ObjectRef, Request request, IHttpCallback iHttpCallback) {
        y45.j(ref$ObjectRef, "$tempParams");
        CommonOkHttpClient.i((RequestParams) ref$ObjectRef.element, request, iHttpCallback);
    }

    public static final void j(String url, RequestParams params, IHttpCallback callback) {
        if (params == null) {
            try {
                params = new RequestParams();
            } catch (Exception unused) {
                ja1.netLog("postRequest:  post request is error");
                return;
            }
        }
        params.i("isDownload", BooleanUtils.FALSE);
        Request requestB = CommonRequest.b(url, params, callback);
        if (requestB != null) {
            CommonOkHttpClient.n(requestB, callback);
        } else {
            ja1.netLog("postRequest:  create request is null");
        }
    }

    public final void b(LruCleanCallBack lruCleanCallBack) {
        if (lruCleanCallBack == null) {
            return;
        }
        lruCleanCallBacks.add(lruCleanCallBack);
    }

    public final int e() {
        return cacheSize;
    }

    public final int f() {
        return defaultCacheSize;
    }

    public final CopyOnWriteArrayList g() {
        return lruCleanCallBacks;
    }

    public final void h(String url, RequestParams params, IHttpCallback callback) {
        if (params == null) {
            try {
                params = new RequestParams();
            } catch (Exception unused) {
                ja1.netLog("postRequest:  post request is error");
                return;
            }
        }
        params.i("isDownload", BooleanUtils.FALSE);
        Request requestA = CommonRequest.a(url, params, callback);
        if (requestA != null) {
            CommonOkHttpClient.j(requestA, callback);
        } else {
            ja1.netLog("getRequest:  create request is null");
        }
    }

    public final int i() {
        return videoCacheSize;
    }

    public final void k(int i) {
        defaultCacheSize = i;
    }
}
