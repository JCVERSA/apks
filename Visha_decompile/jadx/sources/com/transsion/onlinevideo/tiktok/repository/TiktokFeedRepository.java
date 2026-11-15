package com.transsion.onlinevideo.tiktok.repository;

import android.util.Log;
import com.blankj.utilcode.util.LanguageUtils;
import com.google.gson.Gson;
import com.google.gson.reflect.TypeToken;
import com.transsion.dbdata.beans.onlinevideo.tiktok.ArticleData;
import com.transsion.dbdata.beans.onlinevideo.tiktok.TtFeedCache;
import com.transsion.dbdata.beans.onlinevideo.tiktok.TtStreamResponse;
import com.transsion.onlinevideo.tiktok.repository.TiktokFeedRepository;
import com.transsion.playercommon.core.MainApp;
import com.transsion.playercommon.utils.CountryInfoUtil;
import com.transsion.playercommon.vishaapis.onlinevideo.OnlineVideoApiManager;
import com.transsion.retrofit.cache.CacheManager;
import defpackage.e74;
import defpackage.fi1;
import defpackage.g1a;
import defpackage.j1a;
import defpackage.k29;
import defpackage.lw4;
import defpackage.mc7;
import defpackage.t74;
import defpackage.vb;
import defpackage.y45;
import defpackage.y71;
import defpackage.ydc;
import defpackage.zf1;
import defpackage.zfb;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.jvm.internal.DefaultConstructorMarker;

public final class TiktokFeedRepository {
    public static final Companion e = new Companion(null);
    public static final Gson f = new Gson();
    public static final String[] g = {"https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/BigBuckBunny.mp4", "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ElephantsDream.mp4", "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerBlazes.mp4", "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerEscapes.mp4", "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerFun.mp4"};
    public static final String[] h = {"[测试] Big Buck Bunny", "[测试] Elephants Dream", "[测试] For Bigger Blazes", "[测试] For Bigger Escapes", "[测试] For Bigger Fun"};
    public final lw4 a;
    public volatile boolean b;
    public volatile boolean c;
    public volatile String d;

    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final String a() {
            int i = MainApp.w;
            if (i == 0) {
                return "none";
            }
            if (i == 1) {
                return "wifi";
            }
            if (i == 2) {
                return "2g";
            }
            if (i == 3) {
                return "3g";
            }
            if (i != 4) {
                return i != 5 ? "unknown" : "5g";
            }
            return "4g";
        }

        public final a b(String str) {
            y45.j(str, "json");
            String string = j1a.i1(str).toString();
            if (string.length() == 0) {
                return null;
            }
            try {
                if (!g1a.R(string, "{", false, 2, null)) {
                    if (!g1a.R(string, "[", false, 2, null)) {
                        return null;
                    }
                    List list = (List) TiktokFeedRepository.f.fromJson(string, new TypeToken<List<? extends ArticleData>>() {
                    }.getType());
                    List list2 = list;
                    if (list2 != null && !list2.isEmpty()) {
                        return new a(null, list);
                    }
                    return null;
                }
                TtFeedCache ttFeedCache = (TtFeedCache) TiktokFeedRepository.f.fromJson(string, TtFeedCache.class);
                List<ArticleData> data = ttFeedCache != null ? ttFeedCache.getData() : null;
                List<ArticleData> list3 = data;
                if (list3 != null && !list3.isEmpty()) {
                    Iterator<T> it = data.iterator();
                    while (it.hasNext()) {
                        ((ArticleData) it.next()).setReqId(ttFeedCache.getReqId());
                    }
                    return new a(ttFeedCache.getReqId(), data);
                }
                return null;
            } catch (Throwable th) {
                Log.w("TiktokFeedRepository", "parseFeedCacheJson failed: " + th.getMessage());
                return null;
            }
        }

        public final String c(String str) {
            return str == null ? "" : str;
        }

        public Companion() {
        }
    }

    public static final class a {
        public final String a;
        public final List b;

        public a(String str, List list) {
            y45.j(list, "articles");
            this.a = str;
            this.b = list;
        }

        public final List a() {
            return this.b;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof a)) {
                return false;
            }
            a aVar = (a) obj;
            return y45.e(this.a, aVar.a) && y45.e(this.b, aVar.b);
        }

        public int hashCode() {
            String str = this.a;
            return ((str == null ? 0 : str.hashCode()) * 31) + this.b.hashCode();
        }

        public String toString() {
            return "TtFeedPage(reqId=" + this.a + ", articles=" + this.b + ")";
        }
    }

    public TiktokFeedRepository(lw4 lw4Var) {
        this.a = lw4Var;
        this.b = true;
    }

    public static final zfb h(TiktokFeedRepository tiktokFeedRepository, List list) {
        tiktokFeedRepository.f(list);
        return zfb.a;
    }

    public static final void i(e74 e74Var, Object obj) {
        e74Var.invoke(obj);
    }

    public static final List m(TiktokFeedRepository tiktokFeedRepository, TtStreamResponse ttStreamResponse) {
        y45.j(ttStreamResponse, "response");
        tiktokFeedRepository.b = ttStreamResponse.getHasMore();
        tiktokFeedRepository.d = ttStreamResponse.getReqId();
        List<ArticleData> data = ttStreamResponse.getData();
        if (data == null) {
            data = new ArrayList<>();
        }
        Iterator<T> it = data.iterator();
        while (it.hasNext()) {
            ((ArticleData) it.next()).setReqId(ttStreamResponse.getReqId());
        }
        Log.d("TiktokFeedRepository", ttStreamResponse + "\n " + data.size() + StringUtils.COMMA + data);
        return data;
    }

    public static final List n(e74 e74Var, Object obj) {
        y45.j(obj, "p0");
        return (List) e74Var.invoke(obj);
    }

    public final void f(List list) {
        List list2 = list;
        if (list2 == null || list2.isEmpty()) {
            return;
        }
        try {
            TtFeedCache ttFeedCache = new TtFeedCache();
            ttFeedCache.setReqId(this.d);
            ttFeedCache.setData(list);
            CacheManager.getInstance().setCache("tiktok_feed_first_page_cache", fi1.e(ttFeedCache));
        } catch (Throwable th) {
            Log.w("TiktokFeedRepository", "cacheFirstPage failed: " + th.getMessage());
        }
    }

    public final mc7 g() {
        this.c = true;
        mc7 mc7VarL = l();
        final e74 e74Var = new e74() {
            @Override
            public final Object invoke(Object obj) {
                return TiktokFeedRepository.h(this.b, (List) obj);
            }
        };
        mc7 mc7VarP = mc7VarL.p(new zf1() {
            @Override
            public final void accept(Object obj) {
                TiktokFeedRepository.i(e74Var, obj);
            }
        });
        y45.i(mc7VarP, "doOnNext(...)");
        return mc7VarP;
    }

    public final mc7 j() {
        if (this.b) {
            return l();
        }
        mc7 mc7VarK = mc7.K(y71.k());
        y45.i(mc7VarK, "just(...)");
        return mc7VarK;
    }

    public final List k() {
        a aVarB;
        try {
            String cache = CacheManager.getInstance().getCache("tiktok_feed_first_page_cache");
            if (cache == null || cache.length() == 0 || (aVarB = e.b(cache)) == null) {
                return null;
            }
            return aVarB.a();
        } catch (Throwable th) {
            Log.w("TiktokFeedRepository", "readCache failed: " + th.getMessage());
            return null;
        }
    }

    public final mc7 l() {
        Companion companion = e;
        com.transsion.utils.deviceinfo.a.C0257a c0257a = com.transsion.utils.deviceinfo.a.d;
        String strC = companion.c(c0257a.b().m());
        String strC2 = companion.c(c0257a.b().f());
        String strC3 = companion.c(c0257a.b().e());
        String strC4 = companion.c(ydc.b());
        String strA = companion.a();
        String strC5 = companion.c(CountryInfoUtil.i());
        String language = LanguageUtils.b().getLanguage();
        Log.d("TiktokFeedRepository", "getStream params: dt=" + strC + ", device_brand=" + strC2 + ", os=Android, os_version=" + strC3 + ", client_version=" + strC4 + ", ac=" + strA + ", country=" + strC5 + ", os_language=" + language);
        lw4 lw4Var = this.a;
        y45.g(lw4Var);
        mc7 mc7VarM = lw4Var.a(strC, strC2, "Android", strC3, strC4, strA, strC5, language).d0(k29.c()).M(vb.a());
        final e74 e74Var = new e74() {
            @Override
            public final Object invoke(Object obj) {
                return TiktokFeedRepository.m(this.b, (TtStreamResponse) obj);
            }
        };
        mc7 mc7VarL = mc7VarM.L(new t74() {
            @Override
            public final Object apply(Object obj) {
                return TiktokFeedRepository.n(e74Var, obj);
            }
        });
        y45.i(mc7VarL, "map(...)");
        return mc7VarL;
    }

    public TiktokFeedRepository() {
        this((lw4) OnlineVideoApiManager.getInstance().getApi(lw4.class));
    }
}
