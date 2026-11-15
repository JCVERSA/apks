package com.transsion.videodetail.util;

import android.app.Application;
import android.app.PendingIntent;
import android.content.Intent;
import android.net.Uri;
import android.os.Build;
import com.blankj.utilcode.util.Utils;
import com.cloud.tmc.kernel.utils.UrlUtils;
import com.therouter.TheRouter;
import com.transsion.baselib.db.AppDatabase;
import com.transsion.baselib.db.video.VideoDetailPlayDao;
import com.transsion.player.mediasession.MediaItem;
import com.transsion.player.p007enum.PlayMimeType;
import com.transsion.videodetail.bean.VideoDetailStream;
import com.transsion.videodetail.bean.VideoDetailStreamList;
import gn.e;
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
import kotlinx.coroutines.k;
import kotlinx.coroutines.o0;
import kotlinx.coroutines.y0;
import org.mvel2.ast.ASTNode;

public final class StreamFloatManager extends com.transsion.videofloat.manager.b {

    public static final StreamFloatManager f55703b = new StreamFloatManager();

    private static Map f55704c = new LinkedHashMap();

    private static final Lazy f55705d = LazyKt.b(new Function0() {
        @Override
        public final Object invoke() {
            return StreamFloatManager.x();
        }
    });

    private static final Lazy f55706e = LazyKt.b(new Function0() {
        @Override
        public final Object invoke() {
            return StreamFloatManager.w();
        }
    });

    private StreamFloatManager() {
    }

    private final MediaItem h(ln.a aVar, VideoDetailStream videoDetailStream, int i10, int i11) {
        return new MediaItem(aVar != null ? aVar.t() : null, "", aVar != null ? aVar.c() : null, null, null, null, i(aVar, videoDetailStream.getId(), i10, i11), null, aVar != null ? aVar.o() : null, videoDetailStream.getId(), null, null, null, null, 15544, null);
    }

    private final PendingIntent i(ln.a aVar, String str, int i10, int i11) {
        to.a aVar2 = (to.a) TheRouter.d(to.a.class, new Object[0]);
        StringBuilder sb2 = new StringBuilder("oneroom://com.community.oneroom?type=");
        sb2.append("/playvideo/detail");
        sb2.append(UrlUtils.AND_MARK);
        sb2.append("extra_resource_id");
        sb2.append(UrlUtils.EQUAL_MARK);
        sb2.append(str);
        sb2.append(UrlUtils.AND_MARK);
        sb2.append("subject_type");
        sb2.append(UrlUtils.EQUAL_MARK);
        Intent intent = null;
        sb2.append(aVar != null ? aVar.r() : null);
        sb2.append(UrlUtils.AND_MARK);
        sb2.append(UrlUtils.AND_MARK);
        sb2.append("season");
        sb2.append(UrlUtils.EQUAL_MARK);
        sb2.append(i10);
        sb2.append(UrlUtils.AND_MARK);
        sb2.append(UrlUtils.AND_MARK);
        sb2.append("episode");
        sb2.append(UrlUtils.EQUAL_MARK);
        sb2.append(i11);
        sb2.append(UrlUtils.AND_MARK);
        sb2.append(UrlUtils.AND_MARK);
        sb2.append("id");
        sb2.append(UrlUtils.EQUAL_MARK);
        sb2.append(aVar != null ? aVar.o() : null);
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
        return PendingIntent.getActivity(Utils.a(), 0, intent, k());
    }

    private final PlayMimeType j(String str) {
        String upperCase = str.toUpperCase(Locale.ROOT);
        Intrinsics.g(upperCase, "toUpperCase(...)");
        if (Intrinsics.c(upperCase, "DASH")) {
            return PlayMimeType.DASH;
        }
        return Intrinsics.c(upperCase, "HLS") ? PlayMimeType.HLS : PlayMimeType.DEFAULT;
    }

    private final int k() {
        if (Build.VERSION.SDK_INT >= 31) {
            return 67108864;
        }
        return ASTNode.NOJIT;
    }

    private final void l(String str, int i10, int i11, Function1 function1) {
        k.d(o0.a(y0.b()), null, null, new StreamFloatManager$getPlayInfo$1(str, i10, i11, function1, null), 3, null);
    }

    public final com.transsion.videodetail.b m() {
        return (com.transsion.videodetail.b) f55706e.getValue();
    }

    public final VideoDetailPlayDao n() {
        return (VideoDetailPlayDao) f55705d.getValue();
    }

    private final void o(dw.a aVar, ln.a aVar2, int i10, int i11, VideoDetailStreamList videoDetailStreamList) {
        Object next;
        VideoDetailStream videoDetailStream = (VideoDetailStream) CollectionsKt.k0(videoDetailStreamList.getStreams());
        if (videoDetailStream == null) {
            return;
        }
        LinkedHashMap linkedHashMap = null;
        if (Intrinsics.c(videoDetailStream.getFormat(), "DEFAULT") || (Intrinsics.c(videoDetailStream.getFormat(), "HLS") && videoDetailStreamList.getStreams().size() > 1)) {
            Iterator<T> it = videoDetailStreamList.getStreams().iterator();
            do {
                if (!it.hasNext()) {
                    next = null;
                    break;
                }
                next = it.next();
            } while (!Intrinsics.c(((VideoDetailStream) next).getResolutions(), aVar.o()));
            VideoDetailStream videoDetailStream2 = (VideoDetailStream) next;
            if (videoDetailStream2 != null) {
                videoDetailStream = videoDetailStream2;
            }
        }
        if (videoDetailStream.getSignCookie().length() > 0) {
            linkedHashMap = new LinkedHashMap();
            linkedHashMap.put("cookie", videoDetailStream.getSignCookie());
        }
        wf.a.f74274a.c("VideoFloat", "stream-----getPlayInfoSuccess,开始播放, se:" + i10 + ",ep:" + i11, true);
        e eVar = new e(String.valueOf(videoDetailStream.getUrl().hashCode()), videoDetailStream.getUrl(), 0, j(videoDetailStream.getFormat()), h(aVar2, videoDetailStream, i10, i11), 4, null);
        eVar.o(linkedHashMap);
        aVar.z(i11);
        aVar.H(i10);
        aVar.F(0L);
        aVar.f().stop();
        aVar.f().reset();
        aVar.f().clearScreen();
        aVar.f().setDataSource(eVar);
        aVar.f().prepare();
        aVar.f().play();
    }

    public static final Unit s(ln.a aVar, dw.a aVar2, ln.a aVar3, VideoDetailStreamList videoDetailStreamList) {
        if (videoDetailStreamList != null) {
            f55703b.o(aVar2, aVar3, aVar.l(), aVar.e(), videoDetailStreamList);
            return Unit.f64096a;
        }
        wf.a.f74274a.c("VideoFloat", "stream-----playNext,nextSe:" + aVar.l() + ",nextEp:" + aVar.e() + " 下一集数据为空，无法播放", true);
        return Unit.f64096a;
    }

    private final void u(dw.a aVar) {
        if (aVar != null) {
            String str = aVar.r() + "+" + aVar.q() + "+" + aVar.c();
            wf.a.C0922a.f(wf.a.f74274a, "VideoFloat", "saveHistory--key:" + str + ", value:" + aVar.n(), false, 4, null);
            f55704c.put(str, Long.valueOf(aVar.n()));
        }
        k.d(o0.a(y0.b()), null, null, new StreamFloatManager$saveHistoryInner$2(aVar, null), 3, null);
    }

    public static final com.transsion.videodetail.b w() {
        return (com.transsion.videodetail.b) kg.c.f63982e.a().h(com.transsion.videodetail.b.class);
    }

    public static final VideoDetailPlayDao x() {
        AppDatabase.Companion companion = AppDatabase.INSTANCE;
        Application applicationA = Utils.a();
        Intrinsics.g(applicationA, "getApp(...)");
        return companion.b(applicationA).C1();
    }

    public final Long g(String key) {
        Intrinsics.h(key, "key");
        return (Long) f55704c.remove(key);
    }

    public void p() {
        a().clear();
    }

    public void q(dw.a aVar) {
        wf.a.C0922a c0922a = wf.a.f74274a;
        wf.a.C0922a.f(c0922a, "VideoFloat", "openDetail--1", false, 4, null);
        u(aVar);
        StringBuilder sb2 = new StringBuilder("oneroom://com.community.oneroom?type=/playvideo/detail");
        sb2.append(UrlUtils.AND_MARK);
        sb2.append("id");
        sb2.append(UrlUtils.EQUAL_MARK);
        sb2.append(aVar != null ? aVar.r() : null);
        sb2.append(UrlUtils.AND_MARK);
        sb2.append("season");
        sb2.append(UrlUtils.EQUAL_MARK);
        sb2.append(aVar != null ? aVar.q() : 0);
        sb2.append(UrlUtils.AND_MARK);
        sb2.append(UrlUtils.AND_MARK);
        sb2.append("episode");
        sb2.append(UrlUtils.EQUAL_MARK);
        sb2.append(aVar != null ? aVar.c() : 0);
        sb2.append(UrlUtils.AND_MARK);
        wf.a.C0922a.f(c0922a, "VideoFloat", "openDetail--end", false, 4, null);
        Intent intent = new Intent("android.intent.action.VIEW");
        intent.setData(Uri.parse(sb2.toString()));
        intent.setFlags(ASTNode.DEOP);
        Utils.a().startActivity(intent);
    }

    public boolean r(final dw.a aVar) {
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
        wf.a.f74274a.c("VideoFloat", "stream-----playNext, name:" + aVar5.p() + ",nextSe:" + aVar5.l() + ",nextEp:" + aVar5.e(), true);
        if (aVar == null) {
            return false;
        }
        l(aVar.r(), aVar5.l(), aVar5.e(), new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return StreamFloatManager.s(aVar5, aVar, aVar4, (VideoDetailStreamList) obj);
            }
        });
        return true;
    }

    public void t(dw.a aVar) {
        u(aVar);
    }

    public void v(List list) {
        Intrinsics.h(list, "list");
        wf.a.C0922a.f(wf.a.f74274a, "VideoFloat", "stream-----setPlayList:" + list.size(), false, 4, null);
        a().clear();
        a().addAll(list);
    }
}
