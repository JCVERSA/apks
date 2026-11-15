package com.transsion.postdetail.util;

import android.app.Application;
import android.app.PendingIntent;
import android.content.Intent;
import android.net.Uri;
import android.os.Build;
import com.blankj.utilcode.util.Utils;
import com.cloud.tmc.kernel.utils.UrlUtils;
import com.therouter.TheRouter;
import com.transsion.baselib.db.download.DownloadBean;
import com.transsion.player.mediasession.MediaItem;
import com.transsion.player.p007enum.PlayMimeType;
import com.transsnet.downloader.manager.DownloadEsHelper;
import java.util.Iterator;
import java.util.List;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.o0;
import kotlinx.coroutines.y0;
import org.mvel2.ast.ASTNode;

public final class LocalFloatManager extends com.transsion.videofloat.manager.b {

    public static final LocalFloatManager f48051b = new LocalFloatManager();

    private LocalFloatManager() {
    }

    private final DownloadBean c(dw.a aVar) {
        Object next;
        String strP;
        Iterator it = a().iterator();
        do {
            if (!it.hasNext()) {
                next = null;
                break;
            }
            next = it.next();
        } while (!Intrinsics.c(((DownloadBean) next).getResourceId(), aVar != null ? aVar.p() : null));
        DownloadBean downloadBean = (DownloadBean) next;
        if (downloadBean != null) {
            return downloadBean;
        }
        if (aVar == null || (strP = aVar.p()) == null) {
            return null;
        }
        return DownloadEsHelper.f57201m.a().q(strP);
    }

    private final StringBuilder d(DownloadBean downloadBean) {
        StringBuilder sb2 = new StringBuilder("oneroom://com.community.oneroom?type=");
        sb2.append("/video/detail");
        sb2.append(UrlUtils.AND_MARK);
        sb2.append("extra_resource_id");
        sb2.append(UrlUtils.EQUAL_MARK);
        sb2.append(downloadBean.getResourceId());
        sb2.append(UrlUtils.AND_MARK);
        sb2.append("extra_local_path");
        sb2.append(UrlUtils.EQUAL_MARK);
        sb2.append(downloadBean.getPath());
        sb2.append(UrlUtils.AND_MARK);
        sb2.append("extra_url");
        sb2.append(UrlUtils.EQUAL_MARK);
        sb2.append(downloadBean.getUrl());
        sb2.append(UrlUtils.AND_MARK);
        sb2.append("extra_page_from");
        sb2.append(UrlUtils.EQUAL_MARK);
        sb2.append("media_notification");
        sb2.append(UrlUtils.AND_MARK);
        sb2.append("extra_completed");
        sb2.append(UrlUtils.EQUAL_MARK);
        sb2.append(downloadBean.isCompleted());
        Intrinsics.g(sb2, "append(...)");
        return sb2;
    }

    private final MediaItem e(DownloadBean downloadBean) {
        String titleName = downloadBean.getTitleName();
        String subjectId = downloadBean.getSubjectId();
        return new MediaItem(titleName, "", downloadBean.getCover(), null, null, null, f(downloadBean), null, subjectId, downloadBean.getResourceId(), Boolean.FALSE, null, null, null, 14520, null);
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0031  */
    private final PendingIntent f(DownloadBean downloadBean) {
        Intent intentA;
        to.a aVar = (to.a) TheRouter.d(to.a.class, new Object[0]);
        StringBuilder sbD = d(downloadBean);
        if (aVar != null) {
            Application applicationA = Utils.a();
            Intrinsics.g(applicationA, "getApp(...)");
            intentA = aVar.a(applicationA);
            if (intentA != null) {
                intentA.addFlags(603979776);
                intentA.setData(Uri.parse(sbD.toString()));
            } else {
                intentA = null;
            }
        } else {
            intentA = null;
        }
        return PendingIntent.getActivity(Utils.a(), 0, intentA, g());
    }

    private final int g() {
        if (Build.VERSION.SDK_INT >= 31) {
            return 67108864;
        }
        return ASTNode.NOJIT;
    }

    public static final Unit k(dw.a aVar) {
        LocalFloatManager localFloatManager = f48051b;
        DownloadBean downloadBeanC = localFloatManager.c(aVar);
        if (downloadBeanC != null) {
            localFloatManager.i();
            StringBuilder sbD = localFloatManager.d(downloadBeanC);
            wf.a.f74274a.i("VideoFloat", localFloatManager.getClass().getSimpleName() + " open page deeplink:" + ((Object) sbD), true);
            Intent intent = new Intent("android.intent.action.VIEW");
            intent.setData(Uri.parse(sbD.toString()));
            intent.setFlags(ASTNode.DEOP);
            Utils.a().startActivity(intent);
        } else {
            wf.a.C0922a.l(wf.a.f74274a, "video_float", localFloatManager.getClass().getSimpleName() + " getCurPlayingBean null", false, 4, null);
        }
        return Unit.f64096a;
    }

    private final void n(dw.a aVar, Function0 function0) {
        kotlinx.coroutines.k.d(o0.a(y0.b()), null, null, new LocalFloatManager$saveHistoryInner$1(aVar, function0, null), 3, null);
    }

    static void o(LocalFloatManager localFloatManager, dw.a aVar, Function0 function0, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            function0 = null;
        }
        localFloatManager.n(aVar, function0);
    }

    public final String h(String tag) {
        Intrinsics.h(tag, "tag");
        return "LOCAL" + tag;
    }

    public void i() {
        a().clear();
    }

    public void j(final dw.a aVar) {
        wf.a.f74274a.c("VideoFloat", LocalFloatManager.class.getSimpleName() + " --- openDetail", true);
        n(aVar, new Function0() {
            @Override
            public final Object invoke() {
                return LocalFloatManager.k(aVar);
            }
        });
    }

    /* JADX WARN: Code duplicated, block: B:36:0x007f  */
    /* JADX WARN: Code duplicated, block: B:40:0x00b3  */
    /* JADX WARN: Code duplicated, block: B:43:0x00cb  */
    public boolean l(dw.a aVar) {
        DownloadBean downloadBean;
        String strH;
        String str;
        gn.e eVar;
        Iterator it = a().iterator();
        int i10 = 0;
        while (true) {
            if (!it.hasNext()) {
                i10 = -1;
                break;
            }
            DownloadBean downloadBean2 = (DownloadBean) it.next();
            if (aVar != null && downloadBean2.getEp() == aVar.c()) {
                break;
            }
            i10++;
        }
        int size = a().size();
        int i11 = 0;
        while (true) {
            if (i11 >= size) {
                downloadBean = null;
                break;
            }
            downloadBean = (DownloadBean) a().get(i11);
            if (i11 > i10 && downloadBean.getCanPlay() && (!downloadBean.isCompleted() || downloadBean.isFileExist())) {
                break;
            }
            i11++;
        }
        if (downloadBean == null) {
            return false;
        }
        if (downloadBean.isCompleted()) {
            strH = downloadBean.getPath();
            if (strH == null) {
                str = "";
            }
            wf.a.C0922a c0922a = wf.a.f74274a;
            Integer numValueOf = aVar != null ? Integer.valueOf(aVar.c()) : null;
            c0922a.c("VideoFloat", "local----playNext , ep:" + numValueOf + ", nextEp:" + downloadBean.getEp(), true);
            String path = downloadBean.getPath();
            eVar = new gn.e(String.valueOf((path != null ? path : "").hashCode()), str, 0, PlayMimeType.DEFAULT, e(downloadBean), 4, null);
            if (aVar != null) {
                aVar.z(downloadBean.getEp());
                aVar.H(downloadBean.getSe());
                aVar.G(downloadBean.getResourceId());
                aVar.F(0L);
                aVar.f().clearScreen();
                aVar.f().stop();
                aVar.f().reset();
                aVar.f().setDataSource(eVar);
                aVar.f().prepare();
                aVar.f().play();
            }
            return true;
        }
        strH = com.transsnet.downloader.manager.p.f57282a.a(Utils.a()).h(downloadBean);
        str = strH;
        wf.a.C0922a c0922a2 = wf.a.f74274a;
        if (aVar != null) {
        }
        c0922a2.c("VideoFloat", "local----playNext , ep:" + numValueOf + ", nextEp:" + downloadBean.getEp(), true);
        String path2 = downloadBean.getPath();
        eVar = new gn.e(String.valueOf((path2 != null ? path2 : "").hashCode()), str, 0, PlayMimeType.DEFAULT, e(downloadBean), 4, null);
        if (aVar != null) {
            aVar.z(downloadBean.getEp());
            aVar.H(downloadBean.getSe());
            aVar.G(downloadBean.getResourceId());
            aVar.F(0L);
            aVar.f().clearScreen();
            aVar.f().stop();
            aVar.f().reset();
            aVar.f().setDataSource(eVar);
            aVar.f().prepare();
            aVar.f().play();
        }
        return true;
    }

    public void m(dw.a aVar) {
        o(this, aVar, null, 2, null);
    }

    public void p(List list) {
        Intrinsics.h(list, "list");
        a().clear();
        a().addAll(list);
    }
}
