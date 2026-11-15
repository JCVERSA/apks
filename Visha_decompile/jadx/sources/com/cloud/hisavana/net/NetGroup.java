package com.cloud.hisavana.net;

import android.content.Context;
import androidx.media3.exoplayer.upstream.CmcdData;
import com.cloud.hisavana.protocol.intercept.CronetRetryInterceptor;
import com.transsion.hubsdk.api.lighting.TranSceneConfig;
import com.transsion.livecaption.constant.ICode;
import defpackage.j1a;
import defpackage.ja1;
import defpackage.ky5;
import defpackage.ll1;
import defpackage.ml1;
import defpackage.o9;
import defpackage.ul4;
import defpackage.uw2;
import defpackage.wq6;
import defpackage.y45;
import defpackage.zx2;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.Result;
import kotlin.c;
import okhttp3.Interceptor;
import okhttp3.OkHttpClient;
import org.chromium.net.CronetEngine;
import org.chromium.net.RequestFinishedInfo;

@Metadata(d1 = {"\u0000H\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010\t\n\u0002\b\b\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u000f\u0010\u0005\u001a\u00020\u0004H\u0007¢\u0006\u0004\b\u0005\u0010\u0006J-\u0010\f\u001a\u0004\u0018\u00010\u00072\b\u0010\b\u001a\u0004\u0018\u00010\u00072\b\u0010\n\u001a\u0004\u0018\u00010\t2\u0006\u0010\u000b\u001a\u00020\u0004H\u0007¢\u0006\u0004\b\f\u0010\rJ\u0019\u0010\u0011\u001a\u00020\u00102\b\u0010\u000f\u001a\u0004\u0018\u00010\u000eH\u0007¢\u0006\u0004\b\u0011\u0010\u0012J!\u0010\u0017\u001a\u0004\u0018\u00010\u00162\u0006\u0010\u0014\u001a\u00020\u00132\u0006\u0010\u0015\u001a\u00020\u000eH\u0002¢\u0006\u0004\b\u0017\u0010\u0018R(\u0010\u001e\u001a\u00020\u00048\u0006@\u0006X\u0087\u000e¢\u0006\u0018\n\u0004\b\u0017\u0010\u0019\u0012\u0004\b\u001d\u0010\u0003\u001a\u0004\b\u001a\u0010\u0006\"\u0004\b\u001b\u0010\u001cR(\u0010&\u001a\u00020\u001f8\u0006@\u0006X\u0087\u000e¢\u0006\u0018\n\u0004\b \u0010!\u0012\u0004\b%\u0010\u0003\u001a\u0004\b \u0010\"\"\u0004\b#\u0010$¨\u0006'"}, d2 = {"Lcom/cloud/hisavana/net/NetGroup;", "", MethodDecl.initName, "()V", "", "e", "()I", "Lokhttp3/OkHttpClient$Builder;", "builder", "Lwq6;", "factory", "testChannel", "f", "(Lokhttp3/OkHttpClient$Builder;Lwq6;I)Lokhttp3/OkHttpClient$Builder;", "", "url", "", CmcdData.OBJECT_TYPE_AUDIO_ONLY, "(Ljava/lang/String;)Z", "Landroid/content/Context;", "context", "group", "Lorg/chromium/net/CronetEngine;", "b", "(Landroid/content/Context;Ljava/lang/String;)Lorg/chromium/net/CronetEngine;", "I", "d", "setGroupBucketId", "(I)V", "getGroupBucketId$annotations", "groupBucketId", "", "c", "J", "()J", "setAbtestVarId", "(J)V", "getAbtestVarId$annotations", "abtestVarId", "adnetwork_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class NetGroup {
    public static final NetGroup a = new NetGroup();

    public static int groupBucketId;

    public static long abtestVarId;

    private NetGroup() {
    }

    public static final boolean a(String url) {
        if (url == null || j1a.o0(url)) {
            return false;
        }
        return CommonOkHttpClient.a || j1a.V(url, "api.hisavana.com", true) || j1a.V(url, "fra-api.hisavana.com", true) || j1a.V(url, "ind-api.hisavana.com", true) || j1a.V(url, "fast-api.hisavana.com", true);
    }

    public static final long c() {
        return abtestVarId;
    }

    public static final int d() {
        return groupBucketId;
    }

    public static final int e() {
        try {
            groupBucketId = o9.e().f("bucketV2");
            abtestVarId = o9.e().h("bucketVarId");
            ja1.netLog("NetGroup Net Init：groupBucketId = " + groupBucketId);
            return groupBucketId;
        } catch (Throwable unused) {
            return 0;
        }
    }

    public static final OkHttpClient.Builder f(OkHttpClient.Builder builder, wq6 factory, int testChannel) {
        if (factory != null) {
            factory.a("2013");
        }
        switch (testChannel) {
            case 2014:
                if (factory != null) {
                    factory.a("2014");
                }
                if (builder != null) {
                    return builder.addInterceptor(new uw2(ky5.h(new Pair("api.hisavana.com", "api.hisavana.com"))));
                }
                break;
            case ICode.Function.EVENT_CODE_AI_ENGINE_STOPPED:
                NetGroup netGroup = a;
                Context contextA = ul4.a();
                y45.i(contextA, "getContext(...)");
                CronetEngine cronetEngineB = netGroup.b(contextA, "2015");
                if (cronetEngineB == null) {
                    return builder;
                }
                if (factory != null) {
                    factory.a("2015");
                }
                if (factory != null) {
                    factory.b(true);
                }
                if (builder != null) {
                    return builder.addInterceptor((Interceptor) ll1.e(cronetEngineB).a());
                }
                break;
            case 2016:
                NetGroup netGroup2 = a;
                Context contextA2 = ul4.a();
                y45.i(contextA2, "getContext(...)");
                CronetEngine cronetEngineB2 = netGroup2.b(contextA2, "2016");
                if (cronetEngineB2 == null) {
                    return builder;
                }
                if (factory != null) {
                    factory.a("2016");
                }
                if (builder != null) {
                    return builder.addInterceptor(new CronetRetryInterceptor.a(cronetEngineB2).i(ky5.h(new Pair("api.hisavana.com", "api.hisavana.com"))).h(new zx2() {
                        @Override
                        public boolean a(int code) {
                            return code == 1005;
                        }
                    }).b(factory).a());
                }
                break;
            default:
                return builder;
        }
        return null;
    }

    public final CronetEngine b(Context context, final String group) {
        Object objM279constructorimpl;
        try {
            Result.Companion companion = Result.INSTANCE;
            CronetEngine cronetEngineBuild = new CronetEngine.Builder(context).enableHttp2(true).enableQuic(true).addQuicHint("api.hisavana.com", TranSceneConfig.SCENE_TYPE_GAME_FF_KILL, TranSceneConfig.SCENE_TYPE_GAME_FF_KILL).addQuicHint("creative.eagllwin.com", TranSceneConfig.SCENE_TYPE_GAME_FF_KILL, TranSceneConfig.SCENE_TYPE_GAME_FF_KILL).addQuicHint("hisavana-adx.transacme.com", TranSceneConfig.SCENE_TYPE_GAME_FF_KILL, TranSceneConfig.SCENE_TYPE_GAME_FF_KILL).build();
            final ExecutorService executorServiceNewSingleThreadExecutor = Executors.newSingleThreadExecutor();
            cronetEngineBuild.addRequestFinishedListener(new RequestFinishedInfo.Listener(executorServiceNewSingleThreadExecutor) {
                @Override
                public void onRequestFinished(RequestFinishedInfo requestInfo) {
                    if (requestInfo == null) {
                        return;
                    }
                    ml1.a.b(requestInfo, 0, "All", group, CommonOkHttpClient.a, (96 & 32) != 0 ? false : false, (96 & 64) != 0 ? false : false);
                }
            });
            objM279constructorimpl = Result.m279constructorimpl(cronetEngineBuild);
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            objM279constructorimpl = Result.m279constructorimpl(c.a(th));
        }
        if (Result.m285isFailureimpl(objM279constructorimpl)) {
            objM279constructorimpl = null;
        }
        return (CronetEngine) objM279constructorimpl;
    }
}
