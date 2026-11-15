package com.transsion.ugcvideodetail.hepler.subtitle.manager;

import com.transsion.baselib.db.download.DownloadBean;
import java.util.Iterator;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.k;
import kotlinx.coroutines.o0;
import kotlinx.coroutines.y0;
import ui.s0;

public final class UGCVideoSubtitleManagerImp$resDownloadListener$1 implements s0 {

    final UGCVideoSubtitleManagerImp f54328a;

    UGCVideoSubtitleManagerImp$resDownloadListener$1(UGCVideoSubtitleManagerImp uGCVideoSubtitleManagerImp) {
        this.f54328a = uGCVideoSubtitleManagerImp;
    }

    private final void e(DownloadBean downloadBean, boolean z10) {
        k.d(o0.a(y0.a()), null, null, new UGCVideoSubtitleManagerImp$resDownloadListener$1$downloadCheck$1(this.f54328a, downloadBean, z10, this, null), 3, null);
    }

    public final boolean f(List list) {
        Iterator it = list.iterator();
        while (it.hasNext()) {
            ht.a aVar = (ht.a) it.next();
            if (aVar.d() && aVar.b().getStatus() == 6) {
                return true;
            }
        }
        return false;
    }

    @Override
    public void a(String subtitleResId) {
        Intrinsics.h(subtitleResId, "subtitleResId");
        k.d(o0.a(y0.a()), null, null, new UGCVideoSubtitleManagerImp$resDownloadListener$1$deleteSubtitle$1(subtitleResId, null), 3, null);
    }

    @Override
    public void b(DownloadBean bean) {
        Intrinsics.h(bean, "bean");
        e(bean, true);
    }

    @Override
    public void c(DownloadBean bean, boolean z10) {
        Intrinsics.h(bean, "bean");
        wf.a.f74274a.c(com.transsion.baselib.report.a.f42192a.a(), this.f54328a.f54325c + " 开始下载，检测字幕 firstDownload:" + z10 + "，titleName:" + bean.getTitleName() + ", ep:" + bean.getEp() + " se:" + bean.getSe(), true);
        if (z10) {
            UGCVideoSubtitleManagerImp.l(this.f54328a, bean, null, 2, null);
        } else {
            e(bean, false);
        }
    }
}
