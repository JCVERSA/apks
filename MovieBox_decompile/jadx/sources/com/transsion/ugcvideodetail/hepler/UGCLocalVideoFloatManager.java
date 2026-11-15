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
import com.transsion.baselib.db.download.DownloadBean;
import com.transsion.baselib.db.video.UGCVideoDetailPlayDao;
import com.transsion.player.mediasession.MediaItem;
import com.transsion.player.p007enum.PlayMimeType;
import com.transsnet.downloader.manager.p;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.o0;
import kotlinx.coroutines.y0;
import org.mvel2.ast.ASTNode;

public final class UGCLocalVideoFloatManager extends com.transsion.videofloat.manager.b {

    public static final UGCLocalVideoFloatManager f54214b = new UGCLocalVideoFloatManager();

    private static Map f54215c = new LinkedHashMap();

    private static final Lazy f54216d = LazyKt.b(new Function0() {
        @Override
        public final Object invoke() {
            return UGCLocalVideoFloatManager.o();
        }
    });

    private UGCLocalVideoFloatManager() {
    }

    private final MediaItem d(DownloadBean downloadBean) {
        String ugcVideoName = downloadBean.getUgcVideoName();
        if (ugcVideoName == null) {
            ugcVideoName = downloadBean.getTitleName();
        }
        String str = ugcVideoName;
        String subjectId = downloadBean.getSubjectId();
        if (subjectId == null) {
            subjectId = "";
        }
        String str2 = subjectId;
        String cover = downloadBean.getCover();
        String ugcVideoId = downloadBean.getUgcVideoId();
        if (ugcVideoId == null) {
            ugcVideoId = downloadBean.getResourceId();
        }
        return new MediaItem(str, "", cover, null, null, null, e(downloadBean), null, str2, ugcVideoId, null, null, null, null, 15544, null);
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0095  */
    private final PendingIntent e(DownloadBean downloadBean) {
        Intent intentA;
        to.a aVar = (to.a) TheRouter.d(to.a.class, new Object[0]);
        if (aVar != null) {
            Application applicationA = Utils.a();
            Intrinsics.g(applicationA, "getApp(...)");
            intentA = aVar.a(applicationA);
            if (intentA != null) {
                intentA.addFlags(603979776);
                intentA.setData(Uri.parse("oneroom://com.community.oneroom?type=/ugc_video/local_detail" + UrlUtils.AND_MARK + "id" + UrlUtils.EQUAL_MARK + downloadBean.getUgcVideoId() + UrlUtils.AND_MARK + "resource_id" + UrlUtils.EQUAL_MARK + downloadBean.getResourceId() + UrlUtils.AND_MARK + "ugcCategory" + UrlUtils.EQUAL_MARK + downloadBean.getUgcVideoType() + UrlUtils.AND_MARK + "ops" + UrlUtils.EQUAL_MARK + downloadBean.getOps() + UrlUtils.AND_MARK + "extra_page_from" + UrlUtils.EQUAL_MARK + "media_notification"));
            } else {
                intentA = null;
            }
        } else {
            intentA = null;
        }
        return PendingIntent.getActivity(Utils.a(), 0, intentA, f());
    }

    private final int f() {
        if (Build.VERSION.SDK_INT >= 31) {
            return 67108864;
        }
        return ASTNode.NOJIT;
    }

    public final UGCVideoDetailPlayDao g() {
        return (UGCVideoDetailPlayDao) f54216d.getValue();
    }

    private final void k(dw.a aVar, DownloadBean downloadBean) {
        String strH;
        String path;
        if (!downloadBean.isCompleted() || (path = downloadBean.getPath()) == null || path.length() == 0) {
            strH = p.f57282a.a(Utils.a()).h(downloadBean);
        } else {
            strH = downloadBean.getPath();
            Intrinsics.e(strH);
        }
        String str = strH;
        wf.a.f74274a.c("VideoFloat", "local-----playNextWithLocalData, 开始播放, url:" + str, true);
        String path2 = downloadBean.getPath();
        if (path2 == null) {
            path2 = str;
        }
        gn.e eVar = new gn.e(String.valueOf(path2.hashCode()), str, 0, PlayMimeType.DEFAULT, d(downloadBean), 4, null);
        aVar.y(downloadBean);
        aVar.z(downloadBean.getEp());
        aVar.H(downloadBean.getSe());
        aVar.G(downloadBean.getResourceId());
        aVar.F(0L);
        aVar.f().stop();
        aVar.f().reset();
        aVar.f().clearScreen();
        aVar.f().setDataSource(eVar);
        aVar.f().prepare();
        aVar.f().play();
    }

    private final void m(dw.a aVar) {
        if (aVar != null) {
            String str = aVar.r() + "+" + aVar.q() + "+" + aVar.c();
            wf.a.C0922a.f(wf.a.f74274a, "VideoFloat", "saveHistory--key:" + str + ", value:" + aVar.n(), false, 4, null);
            f54215c.put(str, Long.valueOf(aVar.n()));
        }
        kotlinx.coroutines.k.d(o0.a(y0.b()), null, null, new UGCLocalVideoFloatManager$saveHistoryInner$2(aVar, null), 3, null);
    }

    public static final UGCVideoDetailPlayDao o() {
        AppDatabase.Companion companion = AppDatabase.INSTANCE;
        Application applicationA = Utils.a();
        Intrinsics.g(applicationA, "getApp(...)");
        return companion.b(applicationA).B1();
    }

    public void h() {
        a().clear();
    }

    public void i(dw.a aVar) {
        DownloadBean downloadBeanB;
        wf.a.C0922a.f(wf.a.f74274a, "VideoFloat", "openDetail--1", false, 4, null);
        m(aVar);
        if (aVar == null || (downloadBeanB = aVar.b()) == null) {
            return;
        }
        ij.k.p(TheRouter.c("/ugc_video/local_detail").K("id", downloadBeanB.getUgcVideoId()).K("resource_id", downloadBeanB.getResourceId()).K("ugcCategory", downloadBeanB.getUgcVideoType()).K("ops", downloadBeanB.getOps()));
    }

    public boolean j(dw.a aVar) {
        DownloadBean downloadBeanB;
        List<DownloadBean> seriesList;
        int i10;
        String path;
        if (aVar == null || (downloadBeanB = aVar.b()) == null || (seriesList = downloadBeanB.getSeriesList()) == null || seriesList.isEmpty()) {
            return false;
        }
        DownloadBean downloadBeanB2 = aVar.b();
        Iterator<DownloadBean> it = seriesList.iterator();
        int i11 = 0;
        while (true) {
            if (!it.hasNext()) {
                i11 = -1;
                break;
            }
            DownloadBean next = it.next();
            if (Intrinsics.c(next.getUgcVideoId(), downloadBeanB2 != null ? downloadBeanB2.getUgcVideoId() : null)) {
                break;
            }
            if (Intrinsics.c(next.getResourceId(), downloadBeanB2 != null ? downloadBeanB2.getResourceId() : null)) {
                break;
            }
            i11++;
        }
        if (i11 < 0 || (i10 = i11 + 1) >= seriesList.size()) {
            wf.a.f74274a.c("VideoFloat", "local-----playNext, 没有下一集", true);
            return false;
        }
        DownloadBean downloadBean = seriesList.get(i10);
        if (downloadBean.isCompleted() && ((path = downloadBean.getPath()) == null || path.length() == 0)) {
            wf.a.f74274a.c("VideoFloat", "local-----playNext, 下一集文件不存在，无法播放", true);
            return false;
        }
        wf.a.f74274a.c("VideoFloat", "local-----playNext, name:" + downloadBean.getUgcVideoName() + ",nextEp:" + downloadBean.getEp(), true);
        k(aVar, downloadBean);
        return true;
    }

    public void l(dw.a aVar) {
        m(aVar);
    }

    public void n(List list) {
        Intrinsics.h(list, "list");
        wf.a.C0922a.f(wf.a.f74274a, "VideoFloat", "stream-----setPlayList:" + list.size(), false, 4, null);
        a().clear();
        a().addAll(list);
    }
}
