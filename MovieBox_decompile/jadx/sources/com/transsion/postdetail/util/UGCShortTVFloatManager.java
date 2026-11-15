package com.transsion.postdetail.util;

import android.app.Application;
import com.blankj.utilcode.util.Utils;
import com.transsion.baselib.db.AppDatabase;
import com.transsion.baselib.db.video.ShortTVPlayDao;
import com.transsion.baselib.db.video.UGCVideoDetailPlayDao;
import com.transsion.shorttv_pugc.ShorttvModel;
import com.transsion.ugcvideodetail.api.bean.UGCVideo;
import java.util.Iterator;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.o0;
import kotlinx.coroutines.y0;

public final class UGCShortTVFloatManager extends com.transsion.videofloat.manager.b {

    public static final UGCShortTVFloatManager f48062b = new UGCShortTVFloatManager();

    private static final sr.a f48063c = (sr.a) kg.c.f63982e.a().h(sr.a.class);

    private static final Lazy f48064d = LazyKt.b(new Function0() {
        @Override
        public final Object invoke() {
            return UGCShortTVFloatManager.g();
        }
    });

    private static final Lazy f48065e = LazyKt.b(new Function0() {
        @Override
        public final Object invoke() {
            return UGCShortTVFloatManager.s();
        }
    });

    private static final Lazy f48066f = LazyKt.b(new Function0() {
        @Override
        public final Object invoke() {
            return UGCShortTVFloatManager.r();
        }
    });

    private UGCShortTVFloatManager() {
    }

    public static final com.transsnet.downloader.manager.g g() {
        return com.transsnet.downloader.manager.p.f57282a.a(Utils.a());
    }

    public final UGCVideoDetailPlayDao i() {
        return (UGCVideoDetailPlayDao) f48065e.getValue();
    }

    public static final Unit l(dw.a aVar) {
        UGCVideo uGCVideoV;
        f48062b.j();
        if (aVar != null && (uGCVideoV = aVar.v()) != null) {
            hu.b.b(uGCVideoV, null, 1, null);
        }
        return Unit.f64096a;
    }

    private final void o(dw.a aVar, Function0 function0) {
        kotlinx.coroutines.k.d(o0.a(y0.b()), null, null, new UGCShortTVFloatManager$saveHistoryInner$1(aVar, function0, null), 3, null);
    }

    static void p(UGCShortTVFloatManager uGCShortTVFloatManager, dw.a aVar, Function0 function0, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            function0 = null;
        }
        uGCShortTVFloatManager.o(aVar, function0);
    }

    public static final ShortTVPlayDao r() {
        AppDatabase.Companion companion = AppDatabase.INSTANCE;
        Application applicationA = Utils.a();
        Intrinsics.g(applicationA, "getApp(...)");
        return companion.b(applicationA).w1();
    }

    public static final UGCVideoDetailPlayDao s() {
        AppDatabase.Companion companion = AppDatabase.INSTANCE;
        Application applicationA = Utils.a();
        Intrinsics.g(applicationA, "getApp(...)");
        return companion.b(applicationA).B1();
    }

    public final String h(String ugcVideoId) {
        Intrinsics.h(ugcVideoId, "ugcVideoId");
        return "SHORT_TV" + ugcVideoId;
    }

    public void j() {
        a().clear();
    }

    public void k(final dw.a aVar) {
        o(aVar, new Function0() {
            @Override
            public final Object invoke() {
                return UGCShortTVFloatManager.l(aVar);
            }
        });
    }

    public boolean m(dw.a aVar) {
        ShorttvModel.UGCVideo uGCVideo;
        Iterator it = a().iterator();
        int i10 = 0;
        while (true) {
            if (!it.hasNext()) {
                i10 = -1;
                break;
            }
            ShorttvModel.UGCVideo uGCVideo2 = (ShorttvModel.UGCVideo) it.next();
            if (!(uGCVideo2 instanceof ShorttvModel.UGCVideo)) {
                uGCVideo2 = null;
            }
            if (Intrinsics.c(uGCVideo2 != null ? Integer.valueOf(uGCVideo2.getEp()) : null, aVar != null ? Integer.valueOf(aVar.c()) : null)) {
                break;
            }
            i10++;
        }
        int size = a().size();
        int i11 = 0;
        while (true) {
            if (i11 >= size) {
                i11 = 0;
                uGCVideo = null;
                break;
            }
            uGCVideo = (ShorttvModel.UGCVideo) a().get(i11);
            if (i11 > i10 && (uGCVideo instanceof ShorttvModel.UGCVideo)) {
                break;
            }
            i11++;
        }
        wf.a.f74274a.c("VideoFloat", "shorttv-----playNext, size:" + a().size() + ", ep:" + (aVar != null ? Integer.valueOf(aVar.c()) : null) + " nextEp:" + (uGCVideo != null ? Integer.valueOf(uGCVideo.getEp()) : null), true);
        if (uGCVideo == null) {
            return false;
        }
        int i12 = i11 + 5;
        if (a().size() > i12) {
            ShorttvModel.UGCVideo uGCVideo3 = (ShorttvModel.UGCVideo) a().get(i12);
            if (uGCVideo3 instanceof ShorttvModel.UGCVideo) {
                uGCVideo3.isDataNotComplete();
            }
        }
        if (aVar != null) {
            aVar.z(uGCVideo.getEp());
            aVar.F(0L);
            com.transsion.player.orplayer.f fVarF = aVar.f();
            String playUrl = uGCVideo.getPlayUrl();
            if (playUrl == null) {
                playUrl = "";
            }
            fVarF.seekTo(playUrl, 0L);
            aVar.f().play();
        }
        return true;
    }

    public void n(dw.a aVar) {
        p(this, aVar, null, 2, null);
    }

    public void q(List list) {
        Intrinsics.h(list, "list");
        wf.a.C0922a.f(wf.a.f74274a, "VideoFloat", "shorttv-----setPlayList:" + list.size(), false, 4, null);
        a().clear();
        a().addAll(list);
    }
}
