package com.transsion.shorttv.subtitle.manager;

import java.util.Iterator;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.k;
import kotlinx.coroutines.o0;
import kotlinx.coroutines.y0;
import ur.n;

public final class ShortTvVideoSubtitleManagerImp$resDownloadListener$1 implements n {

    final ShortTvVideoSubtitleManagerImp f51080a;

    ShortTvVideoSubtitleManagerImp$resDownloadListener$1(ShortTvVideoSubtitleManagerImp shortTvVideoSubtitleManagerImp) {
        this.f51080a = shortTvVideoSubtitleManagerImp;
    }

    private final void e(xr.a aVar, boolean z10) {
        k.d(o0.a(y0.a()), null, null, new ShortTvVideoSubtitleManagerImp$resDownloadListener$1$downloadCheck$1(this.f51080a, aVar, z10, this, null), 3, null);
    }

    public final boolean f(List list) {
        Iterator it = list.iterator();
        while (it.hasNext()) {
            xr.b bVar = (xr.b) it.next();
            if (bVar.b() && bVar.a().getStatus() == 6) {
                return true;
            }
        }
        return false;
    }

    @Override
    public void a(String subtitleResId) {
        Intrinsics.h(subtitleResId, "subtitleResId");
        k.d(o0.a(y0.a()), null, null, new ShortTvVideoSubtitleManagerImp$resDownloadListener$1$deleteSubtitle$1(subtitleResId, null), 3, null);
    }

    @Override
    public void b(xr.a bean) {
        Intrinsics.h(bean, "bean");
        e(bean, true);
    }

    @Override
    public void c(xr.a bean, boolean z10) {
        Intrinsics.h(bean, "bean");
        wf.a.f74274a.c("short_tv_subtitle", this.f51080a.f51076c + " 开始下载，检测字幕 firstDownload:" + z10 + "，titleName:" + bean.h() + ", ep:" + bean.a() + " se:" + bean.c(), true);
        if (z10) {
            ShortTvVideoSubtitleManagerImp.n(this.f51080a, bean, null, 2, null);
        } else {
            e(bean, false);
        }
    }
}
