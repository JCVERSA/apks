package com.transsion.ugcvideodetail.hepler;

import android.app.Application;
import android.app.PendingIntent;
import android.content.Intent;
import android.net.Uri;
import android.os.Build;
import com.blankj.utilcode.util.Utils;
import com.cloud.tmc.kernel.utils.UrlUtils;
import com.therouter.TheRouter;
import com.transsion.baselib.db.AppDatabase;
import com.transsion.baselib.db.video.UGCVideoDetailPlayDao;
import com.transsion.player.mediasession.MediaItem;
import com.transsion.player.p007enum.PlayMimeType;
import com.transsion.ugcvideodetail.api.bean.UGCVideo;
import com.transsion.ugcvideodetail.api.bean.UGCVideoPlayInfo;
import com.transsion.ugcvideodetail.api.bean.UGCVideoPlayStream;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.o0;
import kotlinx.coroutines.y0;
import org.mvel2.ast.ASTNode;

public final class UGCVideoFloatManager extends com.transsion.videofloat.manager.b {

    public static final UGCVideoFloatManager f54217b = new UGCVideoFloatManager();

    private static Map f54218c = new LinkedHashMap();

    private static final Lazy f54219d = LazyKt.b(new Function0() {
        @Override
        public final Object invoke() {
            return UGCVideoFloatManager.w();
        }
    });

    private static final Lazy f54220e = LazyKt.b(new Function0() {
        @Override
        public final Object invoke() {
            return UGCVideoFloatManager.v();
        }
    });

    private UGCVideoFloatManager() {
    }

    private final MediaItem g(ln.a aVar, UGCVideoPlayInfo uGCVideoPlayInfo) {
        return new MediaItem(aVar != null ? aVar.t() : null, "", aVar != null ? aVar.c() : null, null, null, null, h(aVar, uGCVideoPlayInfo), null, aVar != null ? aVar.o() : null, uGCVideoPlayInfo.getUgcVideoId(), null, null, null, null, 15544, null);
    }

    private final PendingIntent h(ln.a aVar, UGCVideoPlayInfo uGCVideoPlayInfo) {
        UGCVideo uGCVideoU;
        UGCVideo uGCVideoU2;
        to.a aVar2 = (to.a) TheRouter.d(to.a.class, new Object[0]);
        StringBuilder sb2 = new StringBuilder("oneroom://com.community.oneroom?type=");
        sb2.append("/ugc_video/detail");
        sb2.append(UrlUtils.AND_MARK);
        sb2.append("extra_resource_id");
        sb2.append(UrlUtils.EQUAL_MARK);
        sb2.append(uGCVideoPlayInfo.getUgcVideoId());
        sb2.append(UrlUtils.AND_MARK);
        sb2.append("ugc_video_type");
        sb2.append(UrlUtils.EQUAL_MARK);
        Intent intent = null;
        sb2.append((aVar == null || (uGCVideoU2 = aVar.u()) == null) ? null : uGCVideoU2.getCategory());
        sb2.append(UrlUtils.AND_MARK);
        sb2.append(UrlUtils.AND_MARK);
        sb2.append("id");
        sb2.append(UrlUtils.EQUAL_MARK);
        sb2.append((aVar == null || (uGCVideoU = aVar.u()) == null) ? null : uGCVideoU.getUgcVideoId());
        sb2.append(UrlUtils.AND_MARK);
        sb2.append(UrlUtils.AND_MARK);
        sb2.append("ops");
        sb2.append(UrlUtils.EQUAL_MARK);
        sb2.append(aVar != null ? aVar.q() : null);
        sb2.append(UrlUtils.AND_MARK);
        sb2.append("extra_page_from");
        sb2.append(UrlUtils.EQUAL_MARK);
        sb2.append("media_notification");
        sb2.append(UrlUtils.AND_MARK);
        if (aVar2 != null) {
            Application applicationA = Utils.a();
            Intrinsics.g(applicationA, "getApp(...)");
            Intent intentA = aVar2.a(applicationA);
            if (intentA != null) {
                intentA.addFlags(603979776);
                intentA.setData(Uri.parse(sb2.toString()));
                intent = intentA;
            }
        }
        return PendingIntent.getActivity(Utils.a(), 0, intent, j());
    }

    private final int j() {
        if (Build.VERSION.SDK_INT >= 31) {
            return 67108864;
        }
        return ASTNode.NOJIT;
    }

    private final void k(String str, Function1 function1) {
        if (str == null || str.length() == 0) {
            function1.invoke(null);
        } else {
            kotlinx.coroutines.k.d(o0.a(y0.b()), null, null, new UGCVideoFloatManager$getPlayInfo$1(str, function1, null), 3, null);
        }
    }

    public final ju.a l() {
        return (ju.a) f54220e.getValue();
    }

    public final UGCVideoDetailPlayDao m() {
        return (UGCVideoDetailPlayDao) f54219d.getValue();
    }

    private final void n(dw.a aVar, ln.a aVar2, UGCVideoPlayInfo uGCVideoPlayInfo) {
        LinkedHashMap linkedHashMap;
        UGCVideoPlayStream uGCVideoPlayStream = (UGCVideoPlayStream) CollectionsKt.k0(uGCVideoPlayInfo.getResources());
        if (uGCVideoPlayStream == null) {
            return;
        }
        if (uGCVideoPlayStream.getSignCookie().length() > 0) {
            linkedHashMap = new LinkedHashMap();
            linkedHashMap.put("cookie", uGCVideoPlayStream.getSignCookie());
        } else {
            linkedHashMap = null;
        }
        wf.a.f74274a.c("VideoFloat", "stream-----getPlayInfoSuccess,开始播放, se:" + uGCVideoPlayInfo.getUgcVideoId(), true);
        gn.e eVar = new gn.e(String.valueOf(uGCVideoPlayStream.getUrl().hashCode()), uGCVideoPlayStream.getUrl(), 0, i(uGCVideoPlayStream.getFormat()), g(aVar2, uGCVideoPlayInfo), 4, null);
        eVar.o(linkedHashMap);
        UGCVideo uGCVideoV = aVar.v();
        if (uGCVideoV != null) {
            uGCVideoV.setUgcVideoId(uGCVideoPlayInfo.getUgcVideoId());
        }
        aVar.K(uGCVideoPlayStream.getIdType());
        aVar.F(0L);
        aVar.f().stop();
        aVar.f().reset();
        aVar.f().clearScreen();
        aVar.f().setDataSource(eVar);
        aVar.f().prepare();
        aVar.f().play();
    }

    public static final Unit r(ln.a aVar, dw.a aVar2, ln.a aVar3, UGCVideoPlayInfo uGCVideoPlayInfo) {
        if (uGCVideoPlayInfo != null) {
            f54217b.n(aVar2, aVar3, uGCVideoPlayInfo);
            return Unit.f64096a;
        }
        wf.a.f74274a.c("VideoFloat", "ugc-----playNext,nextSe:" + aVar.l() + ",nextEp:" + aVar.e() + " 下一集数据为空，无法播放", true);
        return Unit.f64096a;
    }

    private final void t(dw.a aVar) {
        if (aVar != null) {
            String str = aVar.r() + "+" + aVar.q() + "+" + aVar.c();
            wf.a.C0922a.f(wf.a.f74274a, "VideoFloat", "saveHistory--key:" + str + ", value:" + aVar.n(), false, 4, null);
            f54218c.put(str, Long.valueOf(aVar.n()));
        }
        kotlinx.coroutines.k.d(o0.a(y0.b()), null, null, new UGCVideoFloatManager$saveHistoryInner$2(aVar, null), 3, null);
    }

    public static final ju.a v() {
        return (ju.a) kg.c.f63982e.a().h(ju.a.class);
    }

    public static final UGCVideoDetailPlayDao w() {
        AppDatabase.Companion companion = AppDatabase.INSTANCE;
        Application applicationA = Utils.a();
        Intrinsics.g(applicationA, "getApp(...)");
        return companion.b(applicationA).B1();
    }

    public final PlayMimeType i(String format) {
        Intrinsics.h(format, "format");
        String upperCase = format.toUpperCase(Locale.ROOT);
        Intrinsics.g(upperCase, "toUpperCase(...)");
        if (Intrinsics.c(upperCase, "DASH")) {
            return PlayMimeType.DASH;
        }
        return Intrinsics.c(upperCase, "HLS") ? PlayMimeType.HLS : PlayMimeType.DEFAULT;
    }

    public void o() {
        a().clear();
    }

    public void p(dw.a aVar) {
        UGCVideo uGCVideoV;
        wf.a.C0922a.f(wf.a.f74274a, "VideoFloat", "openDetail--1", false, 4, null);
        t(aVar);
        if (aVar == null || (uGCVideoV = aVar.v()) == null) {
            return;
        }
        hu.b.b(uGCVideoV, null, 1, null);
    }

    public boolean q(final dw.a aVar) {
        Object next;
        Iterator it = a().iterator();
        int i10 = 0;
        while (true) {
            if (!it.hasNext()) {
                i10 = -1;
                break;
            }
            ln.a aVar2 = (ln.a) it.next();
            if (aVar != null && aVar2.e() == aVar.c()) {
                break;
            }
            i10++;
        }
        Iterator it2 = a().iterator();
        while (true) {
            if (!it2.hasNext()) {
                next = null;
                break;
            }
            next = it2.next();
            ln.a aVar3 = (ln.a) next;
            if (aVar != null && aVar3.e() == aVar.c()) {
                break;
            }
        }
        final ln.a aVar4 = (ln.a) next;
        int i11 = i10 + 1;
        if (i11 >= a().size()) {
            return false;
        }
        final ln.a aVar5 = (ln.a) a().get(i11);
        wf.a.f74274a.c("VideoFloat", "ugc-----playNext, name:" + aVar5.p() + ",nextSe:" + aVar5.l() + ",nextEp:" + aVar5.e(), true);
        if (aVar == null) {
            return false;
        }
        UGCVideo uGCVideoV = aVar.v();
        k(uGCVideoV != null ? uGCVideoV.getUgcVideoId() : null, new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return UGCVideoFloatManager.r(aVar5, aVar, aVar4, (UGCVideoPlayInfo) obj);
            }
        });
        return true;
    }

    public void s(dw.a aVar) {
        t(aVar);
    }

    public void u(List list) {
        Intrinsics.h(list, "list");
        wf.a.C0922a.f(wf.a.f74274a, "VideoFloat", "stream-----setPlayList:" + list.size(), false, 4, null);
        a().clear();
        a().addAll(list);
    }
}
