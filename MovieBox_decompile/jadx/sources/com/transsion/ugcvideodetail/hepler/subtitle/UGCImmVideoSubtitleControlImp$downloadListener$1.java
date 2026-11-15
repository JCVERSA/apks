package com.transsion.ugcvideodetail.hepler.subtitle;

import androidx.fragment.app.FragmentActivity;
import androidx.p009lifecycle.v;
import com.transsion.subtitle.R$string;
import com.transsion.subtitle_download.db.SubtitleDownloadTable;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.k;

public final class UGCImmVideoSubtitleControlImp$downloadListener$1 implements com.transsion.subtitle_download.a {

    final UGCImmVideoSubtitleControlImp f54314a;

    UGCImmVideoSubtitleControlImp$downloadListener$1(UGCImmVideoSubtitleControlImp uGCImmVideoSubtitleControlImp) {
        this.f54314a = uGCImmVideoSubtitleControlImp;
    }

    public static final void b(SubtitleDownloadTable subtitleDownloadTable, UGCImmVideoSubtitleControlImp uGCImmVideoSubtitleControlImp) {
        if (subtitleDownloadTable.getIsSetImmediately() && Intrinsics.c(uGCImmVideoSubtitleControlImp.u(), subtitleDownloadTable.getResourceId())) {
            fh.b.f60176a.d(R$string.subtitle_download_failed);
        }
    }

    @Override
    public void onComplete(SubtitleDownloadTable stDownloadTable) {
        Intrinsics.h(stDownloadTable, "stDownloadTable");
        k.d(v.a(this.f54314a.f54298a), null, null, new UGCImmVideoSubtitleControlImp$downloadListener$1$onComplete$1(this.f54314a, stDownloadTable, null), 3, null);
    }

    @Override
    public void onDownloading(int i10, SubtitleDownloadTable stDownloadTable) {
        Intrinsics.h(stDownloadTable, "stDownloadTable");
    }

    @Override
    public void onFail(Exception e10, final SubtitleDownloadTable dbBean) {
        Intrinsics.h(e10, "e");
        Intrinsics.h(dbBean, "dbBean");
        FragmentActivity fragmentActivity = this.f54314a.f54298a;
        final UGCImmVideoSubtitleControlImp uGCImmVideoSubtitleControlImp = this.f54314a;
        fragmentActivity.runOnUiThread(new Runnable() {
            @Override
            public final void run() {
                UGCImmVideoSubtitleControlImp$downloadListener$1.b(dbBean, uGCImmVideoSubtitleControlImp);
            }
        });
    }

    @Override
    public void onSaveDownload(SubtitleDownloadTable bean) {
        Intrinsics.h(bean, "bean");
        if (Intrinsics.c(bean.getResourceId(), this.f54314a.u())) {
            k.d(v.a(this.f54314a.f54298a), null, null, new UGCImmVideoSubtitleControlImp$downloadListener$1$onSaveDownload$1(this.f54314a, bean, null), 3, null);
        } else {
            wf.a.C0922a.f(wf.a.f74274a, this.f54314a.f54305h, " -------- onSaveDownload，不是当前视频，不做处理", false, 4, null);
        }
    }

    @Override
    public void onUnGzZip(SubtitleDownloadTable subtitleDownloadTable) {
        com.transsion.subtitle_download.a.C0644a.b(this, subtitleDownloadTable);
    }
}
