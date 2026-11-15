package com.transsion.postdetail.util;

import android.app.Application;
import android.content.Intent;
import android.net.Uri;
import com.blankj.utilcode.util.Utils;
import com.transsion.baselib.db.AppDatabase;
import com.transsion.baselib.db.video.ShortTVPlayDao;
import com.transsion.shorttv.bean.ShortTVItem;
import com.transsion.shorttv.bean.ShortTvInfoEpisodeList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.o0;
import kotlinx.coroutines.y0;
import org.mvel2.ast.ASTNode;

public final class ShortTVFloatManager extends com.transsion.videofloat.manager.b {

    public static final ShortTVFloatManager f48058b = new ShortTVFloatManager();

    private static final sr.a f48059c = (sr.a) kg.c.f63982e.a().h(sr.a.class);

    private static final Lazy f48060d = LazyKt.b(new Function0() {
        @Override
        public final Object invoke() {
            return ShortTVFloatManager.i();
        }
    });

    private static final Lazy f48061e = LazyKt.b(new Function0() {
        @Override
        public final Object invoke() {
            return ShortTVFloatManager.x();
        }
    });

    private ShortTVFloatManager() {
    }

    public static final com.transsnet.downloader.manager.g i() {
        return com.transsnet.downloader.manager.p.f57282a.a(Utils.a());
    }

    public final com.transsnet.downloader.manager.g j() {
        return (com.transsnet.downloader.manager.g) f48060d.getValue();
    }

    public final ShortTVPlayDao l() {
        return (ShortTVPlayDao) f48061e.getValue();
    }

    private final void m(String str, int i10, Function1 function1) {
        kotlinx.coroutines.k.d(o0.a(y0.b()), null, null, new ShortTVFloatManager$getShortTvEpisodeList$1(i10, str, function1, null), 3, null);
    }

    private final void n(dw.a aVar, List list) {
        Object next;
        Map mapB;
        if (list != null) {
            Iterator it = list.iterator();
            while (it.hasNext()) {
                ShortTVItem shortTVItem = (ShortTVItem) it.next();
                Iterator it2 = f48058b.a().iterator();
                while (true) {
                    if (!it2.hasNext()) {
                        next = null;
                        break;
                    }
                    next = it2.next();
                    nr.k kVar = (nr.k) next;
                    if ((kVar instanceof nr.e) && ((nr.e) kVar).c() == shortTVItem.getEp()) {
                        break;
                    }
                }
                nr.k kVar2 = (nr.k) next;
                if (kVar2 != null && (kVar2 instanceof nr.e)) {
                    nr.e eVar = (nr.e) kVar2;
                    ShortTVItem shortTVItemD = eVar.d();
                    String id2 = shortTVItemD != null ? shortTVItemD.getId() : null;
                    if (id2 != null && id2.length() != 0) {
                        shortTVItem.setId(id2);
                    }
                    wf.a.C0922a.f(wf.a.f74274a, "VideoFloat", "handleNewData----设置播放数据  ep:" + shortTVItem.getEp(), false, 4, null);
                    eVar.h(shortTVItem);
                }
                gn.e mediaSource = shortTVItem.toMediaSource();
                if (mediaSource != null) {
                    com.transsion.player.orplayer.f fVarF = aVar.f();
                    pn.f fVar = fVarF instanceof pn.f ? (pn.f) fVarF : null;
                    boolean zContainsKey = (fVar == null || (mapB = fVar.b()) == null) ? false : mapB.containsKey(mediaSource.e());
                    wf.a.C0922a.f(wf.a.f74274a, "VideoFloat", "addDataSource----updateShortTvInfoList  ep:" + shortTVItem.getEp() + ",inPlayerList:" + zContainsKey, false, 4, null);
                    if (!zContainsKey) {
                        aVar.f().addDataSource(mediaSource);
                    }
                }
            }
        }
    }

    public static final Unit q(dw.a aVar) {
        f48058b.o();
        Intent intent = new Intent("android.intent.action.VIEW");
        intent.setData(Uri.parse("oneroom://com.community.oneroom?type=/shorts/detail&id=" + (aVar != null ? aVar.r() : null) + "&ep=" + (aVar != null ? Integer.valueOf(aVar.c()) : null) + "&ms=" + (aVar != null ? Long.valueOf(aVar.n()) : null)));
        intent.setFlags(ASTNode.DEOP);
        Utils.a().startActivity(intent);
        return Unit.f64096a;
    }

    public static final Unit s(dw.a aVar, ShortTvInfoEpisodeList shortTvInfoEpisodeList) {
        if (shortTvInfoEpisodeList != null) {
            f48058b.n(aVar, shortTvInfoEpisodeList.getItems());
        }
        return Unit.f64096a;
    }

    private final void u(dw.a aVar, Function0 function0) {
        kotlinx.coroutines.k.d(o0.a(y0.b()), null, null, new ShortTVFloatManager$saveHistoryInner$1(aVar, function0, null), 3, null);
    }

    static void v(ShortTVFloatManager shortTVFloatManager, dw.a aVar, Function0 function0, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            function0 = null;
        }
        shortTVFloatManager.u(aVar, function0);
    }

    public static final ShortTVPlayDao x() {
        AppDatabase.Companion companion = AppDatabase.INSTANCE;
        Application applicationA = Utils.a();
        Intrinsics.g(applicationA, "getApp(...)");
        return companion.b(applicationA).w1();
    }

    public final String k(String subjectId) {
        Intrinsics.h(subjectId, "subjectId");
        return "SHORT_TV" + subjectId;
    }

    public void o() {
        a().clear();
    }

    public void p(final dw.a aVar) {
        u(aVar, new Function0() {
            @Override
            public final Object invoke() {
                return ShortTVFloatManager.q(aVar);
            }
        });
    }

    public boolean r(final dw.a aVar) {
        nr.k kVar;
        String id2;
        Iterator it = a().iterator();
        int i10 = 0;
        while (true) {
            if (!it.hasNext()) {
                i10 = -1;
                break;
            }
            nr.k kVar2 = (nr.k) it.next();
            nr.e eVar = kVar2 instanceof nr.e ? (nr.e) kVar2 : null;
            if (Intrinsics.c(eVar != null ? Integer.valueOf(eVar.c()) : null, aVar != null ? Integer.valueOf(aVar.c()) : null)) {
                break;
            }
            i10++;
        }
        int size = a().size();
        int i11 = 0;
        while (true) {
            if (i11 >= size) {
                i11 = 0;
                kVar = null;
                break;
            }
            kVar = (nr.k) a().get(i11);
            if (i11 > i10 && (kVar instanceof nr.e)) {
                break;
            }
            i11++;
        }
        nr.e eVar2 = (nr.e) kVar;
        wf.a.f74274a.c("VideoFloat", "shorttv-----playNext, size:" + a().size() + ", ep:" + (aVar != null ? Integer.valueOf(aVar.c()) : null) + " nextEp:" + (eVar2 != null ? Integer.valueOf(eVar2.c()) : null), true);
        if (kVar == null) {
            return false;
        }
        int i12 = i11 + 5;
        if (a().size() > i12) {
            nr.k kVar3 = (nr.k) a().get(i12);
            if (kVar3 instanceof nr.e) {
                nr.e eVar3 = (nr.e) kVar3;
                if (nr.l.b(eVar3) && aVar != null) {
                    f48058b.m(aVar.r(), eVar3.c(), new Function1() {
                        @Override
                        public final Object invoke(Object obj) {
                            return ShortTVFloatManager.s(aVar, (ShortTvInfoEpisodeList) obj);
                        }
                    });
                }
            }
        }
        if (aVar != null) {
            nr.e eVar4 = (nr.e) kVar;
            aVar.z(eVar4.c());
            aVar.F(0L);
            com.transsion.player.orplayer.f fVarF = aVar.f();
            ShortTVItem shortTVItemD = eVar4.d();
            if (shortTVItemD == null || (id2 = shortTVItemD.getId()) == null) {
                id2 = "";
            }
            fVarF.seekTo(id2, 0L);
            aVar.f().play();
        }
        return true;
    }

    public void t(dw.a aVar) {
        v(this, aVar, null, 2, null);
    }

    public void w(List list) {
        Intrinsics.h(list, "list");
        wf.a.C0922a.f(wf.a.f74274a, "VideoFloat", "shorttv-----setPlayList:" + list.size(), false, 4, null);
        a().clear();
        a().addAll(list);
    }
}
