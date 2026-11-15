package com.transsion.onlinevideo.tiktok.repository;

import android.util.Log;
import com.transsion.dbdata.beans.onlinevideo.tiktok.ArticleData;
import com.transsion.dbdata.beans.onlinevideo.tiktok.TtPlayUrlRequest;
import com.transsion.dbdata.beans.onlinevideo.tiktok.TtPlayUrlResponse;
import com.transsion.dbdata.beans.onlinevideo.tiktok.VideoInfo;
import com.transsion.onlinevideo.tiktok.repository.a;
import com.transsion.playercommon.utils.CountryInfoUtil;
import com.transsion.playercommon.vishaapis.onlinevideo.OnlineVideoApiManager;
import defpackage.d5;
import defpackage.dna;
import defpackage.e74;
import defpackage.i81;
import defpackage.k29;
import defpackage.lw4;
import defpackage.mc7;
import defpackage.t74;
import defpackage.y45;
import defpackage.zf1;
import defpackage.zfb;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.function.Function;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Ref$BooleanRef;

public final class a {
    public static final C0233a c = new C0233a(null);
    public final lw4 a;
    public final ConcurrentHashMap b;

    public static final class C0233a {

        public static final class C0234a {
            public static final C0234a a = new C0234a();
            public static final a b = new a();

            public final a a() {
                return b;
            }
        }

        public C0233a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final a a() {
            return C0234a.a.a();
        }

        public final long b() {
            return System.currentTimeMillis() / 1000;
        }

        public C0233a() {
        }
    }

    public static final class b {
        public final Map a;
        public final String b;

        public b(Map map, String str) {
            y45.j(map, "data");
            this.a = map;
            this.b = str;
        }

        public final Map a() {
            return this.a;
        }

        public final String b() {
            return this.b;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof b)) {
                return false;
            }
            b bVar = (b) obj;
            return y45.e(this.a, bVar.a) && y45.e(this.b, bVar.b);
        }

        public int hashCode() {
            int iHashCode = this.a.hashCode() * 31;
            String str = this.b;
            return iHashCode + (str == null ? 0 : str.hashCode());
        }

        public String toString() {
            return "PlayUrlRefreshResult(data=" + this.a + ", reqId=" + this.b + ")";
        }
    }

    public a(lw4 lw4Var) {
        this.a = lw4Var;
        this.b = new ConcurrentHashMap();
    }

    public static final mc7 D(Ref$BooleanRef ref$BooleanRef, final String str, final List list, final String str2, final a aVar, final List list2, String str3) {
        y45.j(str3, "it");
        ref$BooleanRef.element = true;
        Log.d("TiktokPlayUrlRepository", "refreshBatch start reqKey=" + str + " docIds=" + list + " batchReqId=" + str2);
        mc7 mc7VarK = aVar.K(list);
        final e74 e74Var = new e74() {
            @Override
            public final Object invoke(Object obj) {
                return a.G(str, aVar, list2, str2, list, (a.b) obj);
            }
        };
        mc7 mc7VarP = mc7VarK.p(new zf1() {
            @Override
            public final void accept(Object obj) {
                a.H(e74Var, obj);
            }
        });
        final e74 e74Var2 = new e74() {
            @Override
            public final Object invoke(Object obj) {
                return a.I(str, (Throwable) obj);
            }
        };
        return mc7VarP.o(new zf1() {
            @Override
            public final void accept(Object obj) {
                a.E(e74Var2, obj);
            }
        }).m(new d5() {
            @Override
            public final void run() {
                a.F(this.a, str);
            }
        }).U();
    }

    public static final void E(e74 e74Var, Object obj) {
        e74Var.invoke(obj);
    }

    public static final void F(a aVar, String str) {
        aVar.b.remove(str);
        Log.d("TiktokPlayUrlRepository", "refreshBatch finish reqKey=" + str);
    }

    public static final zfb G(String str, a aVar, List list, String str2, List list2, b bVar) {
        Log.i("TiktokPlayUrlRepository", "refreshBatch success reqKey=" + str + " updatedCount=" + bVar.a().size() + " newReqId=" + bVar.b());
        aVar.q(list, bVar.a());
        aVar.p(list, str2, list2, bVar.b());
        return zfb.a;
    }

    public static final void H(e74 e74Var, Object obj) {
        e74Var.invoke(obj);
    }

    public static final zfb I(String str, Throwable th) {
        Log.w("TiktokPlayUrlRepository", "refreshBatch failed reqKey=" + str + ": " + th.getMessage());
        return zfb.a;
    }

    public static final mc7 J(e74 e74Var, Object obj) {
        return (mc7) e74Var.invoke(obj);
    }

    public static final b L(a aVar, TtPlayUrlResponse ttPlayUrlResponse) {
        y45.j(ttPlayUrlResponse, "response");
        return aVar.B(ttPlayUrlResponse);
    }

    public static final b M(e74 e74Var, Object obj) {
        y45.j(obj, "p0");
        return (b) e74Var.invoke(obj);
    }

    public static final ArticleData s(a aVar, List list, ArticleData articleData, b bVar) {
        y45.j(bVar, "it");
        ArticleData articleDataY = aVar.y(list, articleData.getDocId());
        return articleDataY == null ? articleData : articleDataY;
    }

    public static final ArticleData t(e74 e74Var, Object obj) {
        y45.j(obj, "p0");
        return (ArticleData) e74Var.invoke(obj);
    }

    public static final zfb u(ArticleData articleData) {
        Log.d("TiktokPlayUrlRepository", "ensurePlayable done docId=" + articleData.getDocId() + " reqId=" + articleData.getReqId());
        return zfb.a;
    }

    public static final void v(e74 e74Var, Object obj) {
        e74Var.invoke(obj);
    }

    public static final zfb w(ArticleData articleData, String str, Throwable th) {
        Log.w("TiktokPlayUrlRepository", "ensurePlayable failed docId=" + articleData.getDocId() + " reqKey=" + str + ": " + th.getMessage());
        return zfb.a;
    }

    public static final void x(e74 e74Var, Object obj) {
        e74Var.invoke(obj);
    }

    public final boolean A(ArticleData articleData, List list) {
        y45.j(articleData, "article");
        y45.j(list, "allArticles");
        long jB = c.b();
        if (!dna.f(articleData.getVideoInfo(), jB)) {
            Log.d("TiktokPlayUrlRepository", "needsRefreshBeforePlay=false docId=" + articleData.getDocId() + " url not expired");
            return false;
        }
        List listC = dna.c(articleData.getReqId(), list, jB);
        boolean z = !listC.isEmpty();
        String docId = articleData.getDocId();
        String reqId = articleData.getReqId();
        int size = listC.size();
        VideoInfo videoInfo = articleData.getVideoInfo();
        Log.d("TiktokPlayUrlRepository", "needsRefreshBeforePlay=" + z + " docId=" + docId + " reqId=" + reqId + " expiredCount=" + size + " urlExpire=" + (videoInfo != null ? Long.valueOf(videoInfo.getUrlExpire()) : null) + " now=" + jB);
        return z;
    }

    public final b B(TtPlayUrlResponse ttPlayUrlResponse) {
        if (ttPlayUrlResponse.getRet() == 0) {
            Map<String, VideoInfo> data = ttPlayUrlResponse.getData();
            int size = data != null ? data.size() : 0;
            Log.d("TiktokPlayUrlRepository", "parseVideoUrlResponse ok dataCount=" + size + " reqId=" + ttPlayUrlResponse.getReqId());
            Map<String, VideoInfo> data2 = ttPlayUrlResponse.getData();
            if (data2 == null) {
                data2 = kotlin.collections.a.l();
            }
            return new b(data2, ttPlayUrlResponse.getReqId());
        }
        Log.w("TiktokPlayUrlRepository", "parseVideoUrlResponse failed ret=" + ttPlayUrlResponse.getRet() + " msg=" + ttPlayUrlResponse.getMsg());
        throw new IllegalStateException("postVideoUrl ret=" + ttPlayUrlResponse.getRet() + " msg=" + ttPlayUrlResponse.getMsg());
    }

    public final mc7 C(final String str, final List list, final List list2, final String str2) {
        final Ref$BooleanRef ref$BooleanRef = new Ref$BooleanRef();
        ConcurrentHashMap concurrentHashMap = this.b;
        final e74 e74Var = new e74() {
            @Override
            public final Object invoke(Object obj) {
                return a.D(ref$BooleanRef, str, list, str2, this, list2, (String) obj);
            }
        };
        Object objComputeIfAbsent = concurrentHashMap.computeIfAbsent(str, new Function() {
            @Override
            public final Object apply(Object obj) {
                return a.J(e74Var, obj);
            }
        });
        y45.i(objComputeIfAbsent, "computeIfAbsent(...)");
        mc7 mc7Var = (mc7) objComputeIfAbsent;
        if (!ref$BooleanRef.element) {
            Log.d("TiktokPlayUrlRepository", "refreshBatch reuse inflight reqKey=" + str + " docIds=" + list);
        }
        return mc7Var;
    }

    public final mc7 K(List list) {
        if (this.a == null || list.isEmpty()) {
            Log.w("TiktokPlayUrlRepository", "requestVideoUrl unavailable apiService=" + (this.a != null) + " docIds=" + list);
            mc7 mc7VarS = mc7.s(new IllegalStateException("postVideoUrl unavailable"));
            y45.i(mc7VarS, "error(...)");
            return mc7VarS;
        }
        Log.d("TiktokPlayUrlRepository", "requestVideoUrl docIds=" + list);
        TtPlayUrlRequest ttPlayUrlRequest = new TtPlayUrlRequest();
        ttPlayUrlRequest.setDocIds(list);
        TiktokFeedRepository.Companion companion = TiktokFeedRepository.e;
        ttPlayUrlRequest.setAc(companion.a());
        ttPlayUrlRequest.setOs("Android");
        com.transsion.utils.deviceinfo.a.C0257a c0257a = com.transsion.utils.deviceinfo.a.d;
        ttPlayUrlRequest.setOsVersion(companion.c(c0257a.b().e()));
        ttPlayUrlRequest.setDt(companion.c(c0257a.b().m()));
        ttPlayUrlRequest.setCountry(companion.c(CountryInfoUtil.i()));
        mc7 mc7VarD0 = this.a.c(ttPlayUrlRequest).d0(k29.c());
        final e74 e74Var = new e74() {
            @Override
            public final Object invoke(Object obj) {
                return a.L(this.b, (TtPlayUrlResponse) obj);
            }
        };
        mc7 mc7VarL = mc7VarD0.L(new t74() {
            @Override
            public final Object apply(Object obj) {
                return a.M(e74Var, obj);
            }
        });
        y45.i(mc7VarL, "map(...)");
        return mc7VarL;
    }

    public final void p(List list, String str, List list2, String str2) {
        if (str2 != null) {
            if (str2.length() <= 0) {
                str2 = null;
            }
            if (str2 == null) {
                return;
            }
            int i = 0;
            if (str != null && str.length() != 0) {
                Iterator it = list.iterator();
                while (it.hasNext()) {
                    ArticleData articleData = (ArticleData) it.next();
                    if (y45.e(articleData.getReqId(), str)) {
                        articleData.setReqId(str2);
                        i++;
                    }
                }
                Log.d("TiktokPlayUrlRepository", "applyReqIdUpdates batch previousReqId=" + str + " newReqId=" + str2 + " count=" + i);
                return;
            }
            Set setG1 = i81.g1(list2);
            Iterator it2 = list.iterator();
            while (it2.hasNext()) {
                ArticleData articleData2 = (ArticleData) it2.next();
                String docId = articleData2.getDocId();
                if (docId != null && setG1.contains(docId)) {
                    articleData2.setReqId(str2);
                    i++;
                }
            }
            Log.d("TiktokPlayUrlRepository", "applyReqIdUpdates docIds=" + list2 + " newReqId=" + str2 + " count=" + i);
        }
    }

    public final void q(List list, Map map) {
        VideoInfo videoInfo;
        if (map.isEmpty()) {
            Log.w("TiktokPlayUrlRepository", "applyVideoInfoUpdates empty updates");
            return;
        }
        Iterator it = list.iterator();
        int i = 0;
        while (it.hasNext()) {
            ArticleData articleData = (ArticleData) it.next();
            String docId = articleData.getDocId();
            if (docId != null && (videoInfo = (VideoInfo) map.get(docId)) != null) {
                z(articleData, videoInfo);
                i++;
            }
        }
        Log.d("TiktokPlayUrlRepository", "applyVideoInfoUpdates merged=" + i + "/" + map.size() + " docIds=" + map.keySet());
    }

    public final mc7 r(final ArticleData articleData, final List list) {
        y45.j(articleData, "article");
        y45.j(list, "allArticles");
        long jB = c.b();
        if (!dna.f(articleData.getVideoInfo(), jB)) {
            Log.d("TiktokPlayUrlRepository", "ensurePlayable skip docId=" + articleData.getDocId() + " url not expired");
            mc7 mc7VarK = mc7.K(articleData);
            y45.i(mc7VarK, "just(...)");
            return mc7VarK;
        }
        List listC = dna.c(articleData.getReqId(), list, jB);
        if (listC.isEmpty()) {
            Log.d("TiktokPlayUrlRepository", "ensurePlayable skip docId=" + articleData.getDocId() + " no expired docIds in batch");
            mc7 mc7VarK2 = mc7.K(articleData);
            y45.i(mc7VarK2, "just(...)");
            return mc7VarK2;
        }
        String reqId = articleData.getReqId();
        if (reqId == null || reqId.length() <= 0) {
            reqId = null;
        }
        final String strY0 = reqId == null ? i81.y0(i81.R0(listC), StringUtils.COMMA, null, null, 0, null, null, 62, null) : reqId;
        Log.d("TiktokPlayUrlRepository", "ensurePlayable refresh docId=" + articleData.getDocId() + " reqKey=" + strY0 + " batchReqId=" + reqId + " expiredDocIds=" + listC);
        mc7 mc7VarC = C(strY0, listC, list, reqId);
        final e74 e74Var = new e74() {
            @Override
            public final Object invoke(Object obj) {
                return a.s(this.b, list, articleData, (a.b) obj);
            }
        };
        mc7 mc7VarL = mc7VarC.L(new t74() {
            @Override
            public final Object apply(Object obj) {
                return a.t(e74Var, obj);
            }
        });
        final e74 e74Var2 = new e74() {
            @Override
            public final Object invoke(Object obj) {
                return a.u((ArticleData) obj);
            }
        };
        mc7 mc7VarP = mc7VarL.p(new zf1() {
            @Override
            public final void accept(Object obj) {
                a.v(e74Var2, obj);
            }
        });
        final e74 e74Var3 = new e74() {
            @Override
            public final Object invoke(Object obj) {
                return a.w(articleData, strY0, (Throwable) obj);
            }
        };
        mc7 mc7VarO = mc7VarP.o(new zf1() {
            @Override
            public final void accept(Object obj) {
                a.x(e74Var3, obj);
            }
        });
        y45.i(mc7VarO, "doOnError(...)");
        return mc7VarO;
    }

    public final ArticleData y(List list, String str) {
        Object obj = null;
        if (str == null || str.length() == 0) {
            return null;
        }
        for (Object obj2 : list) {
            if (y45.e(((ArticleData) obj2).getDocId(), str)) {
                obj = obj2;
                break;
            }
        }
        return (ArticleData) obj;
    }

    public final void z(ArticleData articleData, VideoInfo videoInfo) {
        VideoInfo videoInfo2 = articleData.getVideoInfo();
        if (videoInfo2 == null) {
            videoInfo2 = new VideoInfo();
            articleData.setVideoInfo(videoInfo2);
        }
        String url = videoInfo.getUrl();
        if (url != null) {
            if (url.length() <= 0) {
                url = null;
            }
            if (url != null) {
                videoInfo2.setUrl(url);
            }
        }
        if (videoInfo.getUrlExpire() > 0) {
            videoInfo2.setUrlExpire(videoInfo.getUrlExpire());
        }
        if (videoInfo.getVideoDuration() > 0.0d) {
            videoInfo2.setVideoDuration(videoInfo.getVideoDuration());
        }
    }

    public a() {
        this((lw4) OnlineVideoApiManager.getInstance().getApi(lw4.class));
    }
}
