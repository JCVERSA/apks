package defpackage;

import android.text.TextUtils;
import android.util.Log;
import androidx.webkit.ProxyConfig;
import com.google.gson.JsonParseException;
import com.google.gson.JsonSyntaxException;
import com.transsion.dbdata.beans.onlinevideo.tiktok.ArticleData;
import com.transsion.dbdata.beans.onlinevideo.tiktok.TtLogEvent;
import com.transsion.dbdata.beans.onlinevideo.tiktok.VideoInfo;
import com.transsion.playercommon.utils.CountryInfoUtil;
import com.transsion.playercommon.vishaapis.onlinevideo.OnlineVideoApiManager;
import com.transsion.retrofit.reponse.BaseResponse;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.net.ConnectException;
import java.net.NoRouteToHostException;
import java.net.SocketTimeoutException;
import java.net.UnknownHostException;
import java.util.Collections;
import java.util.List;
import java.util.concurrent.CancellationException;
import javax.net.ssl.SSLException;
import kotlin.jvm.internal.DefaultConstructorMarker;
import retrofit2.HttpException;

public final class ela {
    public static final a b = new a(null);
    public final lw4 a;

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final ela b() {
            return b.a.a();
        }

        public final String c(String str) {
            return str == null ? "" : str;
        }

        public a() {
        }
    }

    public static final class b {
        public static final b a = new b();
        public static final ela b = new ela((lw4) OnlineVideoApiManager.getInstance().getApi(lw4.class), null);

        public final ela a() {
            return b;
        }
    }

    public ela(lw4 lw4Var, DefaultConstructorMarker defaultConstructorMarker) {
        this(lw4Var);
    }

    public static final zfb A(String str, String str2, String str3, String str4, long j, int i) {
        y45.j(str3, "dt");
        y45.j(str4, "country");
        i16.i(str, str2, str3, str4, j, i);
        return zfb.a;
    }

    public static final zfb C(String str, String str2, String str3, String str4) {
        y45.j(str3, "dt");
        y45.j(str4, "country");
        i16.j(str, str2, str3, str4);
        return zfb.a;
    }

    public static final zfb E(String str, String str2, String str3, String str4) {
        y45.j(str3, "dt");
        y45.j(str4, "country");
        i16.k(str, str2, str3, str4);
        return zfb.a;
    }

    public static final zfb q(String str, ela elaVar, BaseResponse baseResponse) {
        Log.d("TiktokTracker", "post log success: " + str);
        elaVar.o(str, baseResponse, null);
        return zfb.a;
    }

    public static final void r(e74 e74Var, Object obj) {
        e74Var.invoke(obj);
    }

    public static final zfb s(String str, ela elaVar, Throwable th) {
        Log.w("TiktokTracker", "post log failed: " + str + " " + th.getMessage());
        elaVar.o(str, null, th);
        return zfb.a;
    }

    public static final void t(e74 e74Var, Object obj) {
        e74Var.invoke(obj);
    }

    public static final zfb w(String str, String str2, String str3, String str4) {
        y45.j(str3, "dt");
        y45.j(str4, "country");
        i16.g(str, str2, str3, str4);
        return zfb.a;
    }

    public static final zfb y(String str, String str2, String str3, String str4, long j, int i) {
        y45.j(str3, "dt");
        y45.j(str4, "country");
        i16.h(str, str2, str3, str4, j, i);
        return zfb.a;
    }

    public final void B(ArticleData articleData) {
        m(articleData, new w74() {
            @Override
            public final Object invoke(Object obj, Object obj2, Object obj3, Object obj4) {
                return ela.C((String) obj, (String) obj2, (String) obj3, (String) obj4);
            }
        });
        p("video_play_auto", articleData, null, null);
    }

    public final void D(ArticleData articleData) {
        m(articleData, new w74() {
            @Override
            public final Object invoke(Object obj, Object obj2, Object obj3, Object obj4) {
                return ela.E((String) obj, (String) obj2, (String) obj3, (String) obj4);
            }
        });
        p("video_play_draw", articleData, null, null);
    }

    public final void F(ArticleData articleData, long j) {
        VideoInfo videoInfo;
        long j2 = j / 1000;
        if (j2 <= 1) {
            return;
        }
        i16.l(articleData != null ? articleData.getDocId() : null, articleData != null ? articleData.getArticleClass() : null, (articleData == null || (videoInfo = articleData.getVideoInfo()) == null) ? 0L : (long) videoInfo.getVideoDuration(), j2);
    }

    public final TtLogEvent j(ArticleData articleData, Long l, Integer num) {
        TtLogEvent ttLogEvent = new TtLogEvent();
        if (articleData != null) {
            ttLogEvent.setDocId(articleData.getDocId());
            ttLogEvent.setArticleClass(articleData.getArticleClass());
            ttLogEvent.setReqId(articleData.getReqId());
        }
        ttLogEvent.setDt(l());
        ttLogEvent.setAppVersion(b.c(ydc.b()));
        ttLogEvent.setCountry(k());
        if (l != null) {
            ttLogEvent.setDuration(Long.valueOf(l.longValue()));
        }
        if (num != null) {
            ttLogEvent.setPercent(Integer.valueOf(num.intValue()));
        }
        return ttLogEvent;
    }

    public final String k() {
        return b.c(CountryInfoUtil.i());
    }

    public final String l() {
        return b.c(com.transsion.utils.deviceinfo.a.d.b().m());
    }

    public final void m(ArticleData articleData, w74 w74Var) {
        String docId;
        if (articleData != null) {
            try {
                docId = articleData.getDocId();
            } catch (Throwable th) {
                Log.w("TiktokTracker", "athena common mark error: " + th.getMessage());
                return;
            }
        } else {
            docId = null;
        }
        w74Var.invoke(docId, articleData != null ? articleData.getReqId() : null, l(), k());
    }

    public final void n(ArticleData articleData, long j, int i, z74 z74Var) {
        String docId;
        if (articleData != null) {
            try {
                docId = articleData.getDocId();
            } catch (Throwable th) {
                Log.w("TiktokTracker", "athena over mark error: " + th.getMessage());
                return;
            }
        } else {
            docId = null;
        }
        z74Var.invoke(docId, articleData != null ? articleData.getReqId() : null, l(), k(), Long.valueOf(j), Integer.valueOf(i));
    }

    public final void o(String str, BaseResponse baseResponse, Throwable th) {
        try {
            if (th != null) {
                i16.f(str, "fail", u(th));
            } else if (baseResponse == null || !(baseResponse.getCode() == 0 || baseResponse.isSuccess())) {
                i16.f(str, "fail", "unknown");
            } else {
                i16.f(str, "success", null);
            }
        } catch (Throwable th2) {
            Log.w("TiktokTracker", "mark post result error: " + th2.getMessage());
        }
    }

    public final void p(final String str, ArticleData articleData, Long l, Integer num) {
        rc2 rc2VarA0;
        if (this.a == null || TextUtils.isEmpty(str)) {
            return;
        }
        try {
            TtLogEvent ttLogEventJ = j(articleData, l, num);
            Log.d("TiktokTracker", "post eventType: " + str + ", " + ttLogEventJ);
            lw4 lw4Var = this.a;
            List<TtLogEvent> listSingletonList = Collections.singletonList(ttLogEventJ);
            y45.i(listSingletonList, "singletonList(...)");
            mc7 mc7VarD0 = lw4Var.b(str, listSingletonList).d0(k29.c());
            if (mc7VarD0 != null) {
                final e74 e74Var = new e74() {
                    @Override
                    public final Object invoke(Object obj) {
                        return ela.q(str, this, (BaseResponse) obj);
                    }
                };
                zf1 zf1Var = new zf1() {
                    @Override
                    public final void accept(Object obj) {
                        ela.r(e74Var, obj);
                    }
                };
                final e74 e74Var2 = new e74() {
                    @Override
                    public final Object invoke(Object obj) {
                        return ela.s(str, this, (Throwable) obj);
                    }
                };
                rc2VarA0 = mc7VarD0.a0(zf1Var, new zf1() {
                    @Override
                    public final void accept(Object obj) {
                        ela.t(e74Var2, obj);
                    }
                });
            } else {
                rc2VarA0 = null;
            }
            if (rc2VarA0 != null) {
                rc2VarA0.hashCode();
            }
        } catch (Throwable th) {
            Log.w("TiktokTracker", "post error: " + th.getMessage());
            o(str, null, th);
        }
    }

    public final String u(Throwable th) {
        for (int i = 0; th != null && i < 6; i++) {
            if ((th instanceof SocketTimeoutException) || (th instanceof InterruptedIOException)) {
                return "timeout";
            }
            if ((th instanceof HttpException) || (th instanceof JsonSyntaxException) || (th instanceof JsonParseException)) {
                return ProxyConfig.MATCH_HTTP;
            }
            if (th instanceof CancellationException) {
                return "unknown";
            }
            if ((th instanceof UnknownHostException) || (th instanceof ConnectException) || (th instanceof NoRouteToHostException) || (th instanceof SSLException) || (th instanceof IOException)) {
                return "network";
            }
            th = th.getCause();
        }
        return "unknown";
    }

    public final void v(ArticleData articleData) {
        m(articleData, new w74() {
            @Override
            public final Object invoke(Object obj, Object obj2, Object obj3, Object obj4) {
                return ela.w((String) obj, (String) obj2, (String) obj3, (String) obj4);
            }
        });
        p("client_show", articleData, null, null);
    }

    public final void x(ArticleData articleData, long j, int i) {
        n(articleData, j, i, new z74() {
            @Override
            public final Object invoke(Object obj, Object obj2, Object obj3, Object obj4, Object obj5, Object obj6) {
                return ela.y((String) obj, (String) obj2, (String) obj3, (String) obj4, ((Long) obj5).longValue(), ((Integer) obj6).intValue());
            }
        });
        p("video_over_auto", articleData, Long.valueOf(j), Integer.valueOf(i));
    }

    public final void z(ArticleData articleData, long j, int i) {
        n(articleData, j, i, new z74() {
            @Override
            public final Object invoke(Object obj, Object obj2, Object obj3, Object obj4, Object obj5, Object obj6) {
                return ela.A((String) obj, (String) obj2, (String) obj3, (String) obj4, ((Long) obj5).longValue(), ((Integer) obj6).intValue());
            }
        });
        p("video_over_draw", articleData, Long.valueOf(j), Integer.valueOf(i));
    }

    public ela(lw4 lw4Var) {
        this.a = lw4Var;
    }
}
