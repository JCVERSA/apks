package com.transsion.playercommon.vishaapis.cloud;

import android.util.Log;
import com.google.gson.reflect.TypeToken;
import com.tencent.mmkv.MMKV;
import com.transsion.audiotagger.tag.id3.AbstractID3v1Tag;
import com.transsion.playercommon.vishaapis.gslb.GslbInterceptor;
import defpackage.el0;
import defpackage.fi1;
import defpackage.hk1;
import defpackage.j1a;
import defpackage.mc2;
import defpackage.mk0;
import defpackage.nk1;
import defpackage.nt1;
import defpackage.s74;
import defpackage.v6a;
import defpackage.wh1;
import defpackage.y45;
import defpackage.z45;
import defpackage.zfb;
import java.net.ConnectException;
import java.net.UnknownHostException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;
import kotlin.c;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlinx.coroutines.d;
import okhttp3.HttpUrl;
import okhttp3.Interceptor;
import okhttp3.Request;
import okhttp3.Response;

@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u0000 \u000f2\u00020\u0001:\u0001\u000fB\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u0017\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\u0007\u0010\bR\u0014\u0010\n\u001a\u00020\t8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\n\u0010\u000bR\u0014\u0010\r\u001a\u00020\f8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\r\u0010\u000e¨\u0006\u0010"}, d2 = {"Lcom/transsion/playercommon/vishaapis/cloud/RegionHostCacheInterceptor;", "Lokhttp3/Interceptor;", MethodDecl.initName, "()V", "Lokhttp3/Interceptor$Chain;", "chain", "Lokhttp3/Response;", "intercept", "(Lokhttp3/Interceptor$Chain;)Lokhttp3/Response;", "Lhk1;", "coroutineExceptionHandler", "Lhk1;", "Lnk1;", "scope", "Lnk1;", "Companion", "playercommon_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class RegionHostCacheInterceptor implements Interceptor {

    public static final Companion INSTANCE = new Companion(null);
    private static final String HEADER_REGION_HOST = "Region-Host";
    private static final String TAG = "RegionHostInterceptor";
    private static volatile boolean isCacheLoaded;
    private static final List<RegionHostModel> sRegionCache;
    private final hk1 coroutineExceptionHandler;
    private final nk1 scope;

    @Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\r\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0005\u0010\u0003R\u001d\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00070\u00068\u0006¢\u0006\f\n\u0004\b\b\u0010\t\u001a\u0004\b\n\u0010\u000bR\u0014\u0010\r\u001a\u00020\f8\u0002X\u0082T¢\u0006\u0006\n\u0004\b\r\u0010\u000eR\u0014\u0010\u000f\u001a\u00020\f8\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u000f\u0010\u000eR\u0016\u0010\u0011\u001a\u00020\u00108\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0011\u0010\u0012¨\u0006\u0013"}, d2 = {"Lcom/transsion/playercommon/vishaapis/cloud/RegionHostCacheInterceptor$Companion;", "", MethodDecl.initName, "()V", "Lzfb;", "ensureCacheLoaded", "", "Lcom/transsion/playercommon/vishaapis/cloud/RegionHostModel;", "sRegionCache", "Ljava/util/List;", "getSRegionCache", "()Ljava/util/List;", "", AbstractID3v1Tag.TAG, "Ljava/lang/String;", "HEADER_REGION_HOST", "", "isCacheLoaded", "Z", "playercommon_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final void ensureCacheLoaded() {
            if (RegionHostCacheInterceptor.isCacheLoaded) {
                return;
            }
            MMKV mmkvP = MMKV.p();
            String strM = mmkvP != null ? mmkvP.m("cloud_url_host_cache", "") : null;
            if (strM != null && strM.length() != 0) {
                try {
                    List list = (List) fi1.c(strM, new TypeToken<List<? extends RegionHostModel>>() {
                    }.getType());
                    List list2 = list;
                    if (list2 != null && !list2.isEmpty()) {
                        getSRegionCache().addAll(list);
                    }
                } catch (Exception e) {
                    Log.e(RegionHostCacheInterceptor.TAG, "json parse error", e);
                }
            }
            RegionHostCacheInterceptor.isCacheLoaded = true;
        }

        public final List<RegionHostModel> getSRegionCache() {
            return RegionHostCacheInterceptor.sRegionCache;
        }

        private Companion() {
        }
    }

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lnk1;", "Lzfb;", "<anonymous>", "(Lnk1;)V"}, k = 3, mv = {2, 1, 0})
    @nt1(c = "com.transsion.playercommon.vishaapis.cloud.RegionHostCacheInterceptor$intercept$2", f = "RegionHostCacheInterceptor.kt", l = {}, m = "invokeSuspend")
    public static final class AnonymousClass2 extends SuspendLambda implements s74 {
        final String $host;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass2(String str, wh1<? super AnonymousClass2> wh1Var) {
            super(2, wh1Var);
            this.$host = str;
        }

        @Override
        public final wh1<zfb> create(Object obj, wh1<?> wh1Var) {
            return new AnonymousClass2(this.$host, wh1Var);
        }

        @Override
        public final Object invoke(nk1 nk1Var, wh1<? super zfb> wh1Var) {
            return ((AnonymousClass2) create(nk1Var, wh1Var)).invokeSuspend(zfb.a);
        }

        @Override
        public final Object invokeSuspend(Object obj) {
            Object next;
            z45.f();
            if (this.label != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            c.b(obj);
            Companion companion = RegionHostCacheInterceptor.INSTANCE;
            List<RegionHostModel> sRegionCache = companion.getSRegionCache();
            String str = this.$host;
            synchronized (sRegionCache) {
                try {
                    Iterator<T> it = companion.getSRegionCache().iterator();
                    do {
                        if (!it.hasNext()) {
                            next = null;
                            break;
                        }
                        next = it.next();
                    } while (!y45.e(((RegionHostModel) next).getOriginUrl(), str));
                    RegionHostModel regionHostModel = (RegionHostModel) next;
                    if (regionHostModel != null) {
                        Companion companion2 = RegionHostCacheInterceptor.INSTANCE;
                        companion2.getSRegionCache().remove(regionHostModel);
                        String strE = fi1.e(companion2.getSRegionCache());
                        MMKV mmkvP = MMKV.p();
                        if (mmkvP != null) {
                            mk0.a(mmkvP.w("cloud_url_host_cache", strE));
                        }
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
            return zfb.a;
        }
    }

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lnk1;", "Lzfb;", "<anonymous>", "(Lnk1;)V"}, k = 3, mv = {2, 1, 0})
    @nt1(c = "com.transsion.playercommon.vishaapis.cloud.RegionHostCacheInterceptor$intercept$3", f = "RegionHostCacheInterceptor.kt", l = {}, m = "invokeSuspend")
    public static final class AnonymousClass3 extends SuspendLambda implements s74 {
        final String $host;
        final String $regionHost;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass3(String str, String str2, wh1<? super AnonymousClass3> wh1Var) {
            super(2, wh1Var);
            this.$regionHost = str;
            this.$host = str2;
        }

        @Override
        public final wh1<zfb> create(Object obj, wh1<?> wh1Var) {
            return new AnonymousClass3(this.$regionHost, this.$host, wh1Var);
        }

        @Override
        public final Object invoke(nk1 nk1Var, wh1<? super zfb> wh1Var) {
            return ((AnonymousClass3) create(nk1Var, wh1Var)).invokeSuspend(zfb.a);
        }

        @Override
        public final Object invokeSuspend(Object obj) {
            Object next;
            z45.f();
            if (this.label != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            c.b(obj);
            Companion companion = RegionHostCacheInterceptor.INSTANCE;
            List<RegionHostModel> sRegionCache = companion.getSRegionCache();
            String str = this.$regionHost;
            String str2 = this.$host;
            synchronized (sRegionCache) {
                try {
                    companion.ensureCacheLoaded();
                    Iterator<T> it = companion.getSRegionCache().iterator();
                    do {
                        if (!it.hasNext()) {
                            next = null;
                            break;
                        }
                        next = it.next();
                    } while (!y45.e(((RegionHostModel) next).getOriginUrl(), str2));
                    RegionHostModel regionHostModel = (RegionHostModel) next;
                    if (regionHostModel == null) {
                        RegionHostCacheInterceptor.INSTANCE.getSRegionCache().add(new RegionHostModel(str2, str));
                    } else if (!y45.e(regionHostModel.getRegionHost(), str)) {
                        regionHostModel.setRegionHost(str);
                    }
                    String strE = fi1.e(RegionHostCacheInterceptor.INSTANCE.getSRegionCache());
                    MMKV mmkvP = MMKV.p();
                    if (mmkvP != null) {
                        mk0.a(mmkvP.w("cloud_url_host_cache", strE));
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
            return zfb.a;
        }
    }

    static {
        List<RegionHostModel> listSynchronizedList = Collections.synchronizedList(new ArrayList());
        y45.i(listSynchronizedList, "synchronizedList(...)");
        sRegionCache = listSynchronizedList;
    }

    public RegionHostCacheInterceptor() {
        RegionHostCacheInterceptor$special$$inlined$CoroutineExceptionHandler$1 regionHostCacheInterceptor$special$$inlined$CoroutineExceptionHandler$1 = new RegionHostCacheInterceptor$special$$inlined$CoroutineExceptionHandler$1(hk1.w1);
        this.coroutineExceptionHandler = regionHostCacheInterceptor$special$$inlined$CoroutineExceptionHandler$1;
        this.scope = d.a(mc2.b().plus(v6a.b(null, 1, null)).plus(regionHostCacheInterceptor$special$$inlined$CoroutineExceptionHandler$1));
    }

    /* JADX WARN: Code duplicated, block: B:27:0x009f  */
    @Override
    public Response intercept(Interceptor.Chain chain) throws Exception {
        Request requestBuild;
        boolean z;
        Response responseProceed;
        String strHeader$default;
        Object next;
        y45.j(chain, "chain");
        Request request = chain.request();
        String url = request.url().getUrl();
        String strHost = request.url().host();
        try {
            if (j1a.X(url, "/visha/api/cloud-storage", false, 2, null)) {
                Iterator<T> it = sRegionCache.iterator();
                do {
                    if (!it.hasNext()) {
                        next = null;
                        break;
                    }
                    next = it.next();
                } while (!y45.e(((RegionHostModel) next).getOriginUrl(), strHost));
                RegionHostModel regionHostModel = (RegionHostModel) next;
                String regionHost = regionHostModel != null ? regionHostModel.getRegionHost() : null;
                if (regionHost == null || regionHost.length() == 0) {
                    requestBuild = request;
                    z = false;
                } else {
                    HttpUrl.Companion companion = HttpUrl.INSTANCE;
                    y45.g(regionHostModel);
                    String regionHost2 = regionHostModel.getRegionHost();
                    y45.g(regionHost2);
                    HttpUrl httpUrl = companion.parse(regionHost2);
                    if (httpUrl != null) {
                        requestBuild = request.newBuilder().removeHeader(GslbInterceptor.HEADER_KEY_GSLB).url(request.url().newBuilder().host(httpUrl.host()).build()).build();
                        z = true;
                    } else {
                        requestBuild = request;
                        z = false;
                    }
                }
            } else {
                requestBuild = request;
                z = false;
            }
        } catch (Exception e) {
            Log.e(TAG, "error in request logic", e);
        }
        try {
            responseProceed = chain.proceed(requestBuild);
        } catch (Exception e2) {
            if (!z) {
                throw e2;
            }
            if (!(e2 instanceof UnknownHostException) && !(e2 instanceof ConnectException)) {
                throw e2;
            }
            Log.e(TAG, "Region host failed, fallback to original host", e2);
            el0.d(this.scope, null, null, new AnonymousClass2(strHost, null), 3, null);
            responseProceed = chain.proceed(request);
        }
        Response response = responseProceed;
        try {
            if (j1a.X(url, "/visha/api/cloud-storage", false, 2, null) && (strHeader$default = Response.header$default(response, HEADER_REGION_HOST, null, 2, null)) != null && strHeader$default.length() != 0) {
                el0.d(this.scope, null, null, new AnonymousClass3(strHeader$default, strHost, null), 3, null);
            }
        } catch (Exception e3) {
            Log.e(TAG, "error in intercept logic", e3);
        }
        return response;
    }
}
