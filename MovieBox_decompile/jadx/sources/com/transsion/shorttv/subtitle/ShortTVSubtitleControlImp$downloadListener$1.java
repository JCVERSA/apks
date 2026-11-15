package com.transsion.shorttv.subtitle;

import androidx.fragment.app.FragmentActivity;
import androidx.p009lifecycle.v;
import com.transsion.shorttv.R$string;
import com.transsion.subtitle_download.db.SubtitleDownloadTable;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.k;

public final class ShortTVSubtitleControlImp$downloadListener$1 implements com.transsion.subtitle_download.a {

    final ShortTVSubtitleControlImp f51065a;

    ShortTVSubtitleControlImp$downloadListener$1(ShortTVSubtitleControlImp shortTVSubtitleControlImp) {
        this.f51065a = shortTVSubtitleControlImp;
    }

    public static final void b(SubtitleDownloadTable subtitleDownloadTable, ShortTVSubtitleControlImp shortTVSubtitleControlImp) {
        if (subtitleDownloadTable.getIsSetImmediately() && Intrinsics.c(shortTVSubtitleControlImp.f51053e.f(), subtitleDownloadTable.getResourceId())) {
            jr.b.f63248a.d(R$string.short_tv_subtitle_download_failed);
        }
    }

    @Override
    public void onComplete(SubtitleDownloadTable stDownloadTable) {
        Intrinsics.h(stDownloadTable, "stDownloadTable");
        k.d(v.a(this.f51065a.f51050b), null, null, new ShortTVSubtitleControlImp$downloadListener$1$onComplete$1(this.f51065a, stDownloadTable, null), 3, null);
    }

    @Override
    public void onDownloading(int i10, SubtitleDownloadTable stDownloadTable) {
        Intrinsics.h(stDownloadTable, "stDownloadTable");
    }

    @Override
    public void onFail(Exception e10, final SubtitleDownloadTable dbBean) {
        Intrinsics.h(e10, "e");
        Intrinsics.h(dbBean, "dbBean");
        FragmentActivity fragmentActivity = this.f51065a.f51050b;
        final ShortTVSubtitleControlImp shortTVSubtitleControlImp = this.f51065a;
        fragmentActivity.runOnUiThread(new Runnable() {
            @Override
            public final void run() {
                ShortTVSubtitleControlImp$downloadListener$1.b(dbBean, shortTVSubtitleControlImp);
            }
        });
    }

    @Override
    public void onSaveDownload(SubtitleDownloadTable bean) {
        Intrinsics.h(bean, "bean");
        if (Intrinsics.c(bean.getResourceId(), this.f51065a.f51053e.f())) {
            k.d(v.a(this.f51065a.f51050b), null, null, new ShortTVSubtitleControlImp$downloadListener$1$onSaveDownload$1(this.f51065a, bean, null), 3, null);
            return;
        }
        wf.a.C0922a.g(wf.a.f74274a, this.f51065a.f51055g + " --> -------- onSaveDownload，不是当前视频，不做处理", false, 2, null);
    }

    @Override
    public void onUnGzZip(SubtitleDownloadTable subtitleDownloadTable) {
        com.transsion.subtitle_download.a.C0644a.b(this, subtitleDownloadTable);
    }
}
