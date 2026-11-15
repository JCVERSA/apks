package com.transsion.subtitle;

import android.text.TextUtils;
import androidx.fragment.app.FragmentActivity;
import com.avery.subtitle.widget.SimpleSubtitleView;
import com.blankj.utilcode.util.Utils;
import com.cloud.tmc.integration.constants.IntegrationConstants;
import com.transsion.baselib.db.download.DownloadBean;
import com.transsion.subtitle_download.db.SubtitleDownloadTable;
import java.util.Iterator;
import java.util.List;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

public final class VideoSubtitleControl$downloadListener$1 implements com.transsion.subtitle_download.a {

    final VideoSubtitleControl f52700a;

    VideoSubtitleControl$downloadListener$1(VideoSubtitleControl videoSubtitleControl) {
        this.f52700a = videoSubtitleControl;
    }

    public final void e(ht.a aVar) {
        String str;
        SimpleSubtitleView simpleSubtitleView;
        Iterator it = this.f52700a.f52682l.iterator();
        boolean z10 = false;
        boolean z11 = false;
        boolean z12 = false;
        while (true) {
            str = "1st";
            if (!it.hasNext()) {
                break;
            }
            ht.a aVar2 = (ht.a) it.next();
            if (TextUtils.equals(aVar2.a(), "1st")) {
                z11 = true;
            }
            if (TextUtils.equals(aVar2.a(), "2nd")) {
                z12 = true;
            }
        }
        if (z11) {
            if (z12) {
                str = "";
                if (z12) {
                    List<ht.a> list = this.f52700a.f52682l;
                    VideoSubtitleControl videoSubtitleControl = this.f52700a;
                    for (ht.a aVar3 : list) {
                        if (aVar3.f() && TextUtils.equals(aVar3.a(), "2nd")) {
                            aVar3.l(false);
                            aVar3.g("");
                            videoSubtitleControl.F.remove(aVar3);
                        }
                    }
                    a.f52708a.a(this.f52700a.getClass().getSimpleName() + " --> subtitleSelectFromSearch() --> 有第二个 --> 替换");
                    simpleSubtitleView = (SimpleSubtitleView) this.f52700a.f52690t.get(IntegrationConstants.TAB_BAR_POSITION_DEFAULT);
                } else {
                    simpleSubtitleView = null;
                }
            } else {
                a.f52708a.a(this.f52700a.getClass().getSimpleName() + " --> subtitleSelectFromSearch() --> 没有第二个 --> 直接添加到第二个");
                simpleSubtitleView = (SimpleSubtitleView) this.f52700a.f52690t.get(IntegrationConstants.TAB_BAR_POSITION_DEFAULT);
            }
            str = "2nd";
        } else {
            a.f52708a.a(this.f52700a.getClass().getSimpleName() + " --> subtitleSelectFromSearch() --> 一个都没有 --> 直接添加到第一个");
            this.f52700a.F.clear();
            simpleSubtitleView = (SimpleSubtitleView) this.f52700a.f52690t.get(IntegrationConstants.TAB_BAR_POSITION_TOP);
            z10 = true;
        }
        aVar.l(true);
        aVar.g(str);
        this.f52700a.F.add(aVar);
        List<ht.a> list2 = this.f52700a.f52682l;
        VideoSubtitleControl videoSubtitleControl2 = this.f52700a;
        for (ht.a aVar4 : list2) {
            if (TextUtils.equals(aVar4.b().getId(), aVar.b().getId())) {
                aVar4.l(true);
                aVar4.b().setStatus(aVar.b().getStatus());
                aVar4.g(aVar.a());
                a.f52708a.a(videoSubtitleControl2.getClass().getSimpleName() + " --> handleSetImmediately() --> 双语字幕模式 --> 列表字幕下载处理 -- 下载状态处理");
            }
        }
        this.f52700a.d0(aVar, simpleSubtitleView, z10);
    }

    public static final void f(SubtitleDownloadTable subtitleDownloadTable, VideoSubtitleControl videoSubtitleControl) {
        Function1 function1;
        if (subtitleDownloadTable.getIsSetImmediately()) {
            DownloadBean downloadBean = videoSubtitleControl.f52686p;
            if (!TextUtils.equals(downloadBean != null ? downloadBean.getResourceId() : null, subtitleDownloadTable.getResourceId()) || (function1 = videoSubtitleControl.f52680j) == null) {
                return;
            }
            function1.invoke(Utils.a().getString(R$string.subtitle_download_failed));
        }
    }

    public final void g() {
        String lan = "";
        String lan2 = lan;
        for (ht.a aVar : this.f52700a.F) {
            if (TextUtils.equals(aVar.a(), "1st")) {
                lan = aVar.b().getLan();
                if (lan == null) {
                    lan = "";
                }
            } else if (TextUtils.equals(aVar.a(), "2nd") && (lan2 = aVar.b().getLan()) == null) {
                lan2 = "";
            }
        }
        this.f52700a.f52681k.invoke(lan, lan2);
    }

    public final void h(ht.a aVar) {
        List<ht.a> list = this.f52700a.f52682l;
        VideoSubtitleControl videoSubtitleControl = this.f52700a;
        for (ht.a aVar2 : list) {
            aVar2.l(false);
            if (TextUtils.equals(aVar2.b().getId(), aVar.b().getId())) {
                aVar2.l(true);
                aVar2.b().setStatus(5);
                a.f52708a.a(videoSubtitleControl.getClass().getSimpleName() + " --> handleSetImmediately() --> 单字幕模式 --> 如果是单语字幕仅需要将之前设置的全部置空 当前设置选中");
            }
        }
        this.f52700a.F.clear();
        this.f52700a.F.add(aVar);
        VideoSubtitleControl videoSubtitleControl2 = this.f52700a;
        videoSubtitleControl2.d0(aVar, (SimpleSubtitleView) videoSubtitleControl2.f52690t.get(IntegrationConstants.TAB_BAR_POSITION_TOP), true);
    }

    @Override
    public void onComplete(SubtitleDownloadTable stDownloadTable) {
        Intrinsics.h(stDownloadTable, "stDownloadTable");
        kotlinx.coroutines.k.d(this.f52700a.f52689s, null, null, new VideoSubtitleControl$downloadListener$1$onComplete$1(stDownloadTable, this.f52700a, this, null), 3, null);
    }

    @Override
    public void onDownloading(int i10, SubtitleDownloadTable stDownloadTable) {
        Intrinsics.h(stDownloadTable, "stDownloadTable");
    }

    @Override
    public void onFail(Exception e10, final SubtitleDownloadTable dbBean) {
        Intrinsics.h(e10, "e");
        Intrinsics.h(dbBean, "dbBean");
        FragmentActivity fragmentActivity = this.f52700a.f52671a;
        final VideoSubtitleControl videoSubtitleControl = this.f52700a;
        fragmentActivity.runOnUiThread(new Runnable() {
            @Override
            public final void run() {
                VideoSubtitleControl$downloadListener$1.f(dbBean, videoSubtitleControl);
            }
        });
    }

    @Override
    public void onSaveDownload(SubtitleDownloadTable bean) {
        Intrinsics.h(bean, "bean");
        String resourceId = bean.getResourceId();
        DownloadBean downloadBean = this.f52700a.f52686p;
        if (Intrinsics.c(resourceId, downloadBean != null ? downloadBean.getSubtitleResId() : null)) {
            kotlinx.coroutines.k.d(this.f52700a.f52689s, null, null, new VideoSubtitleControl$downloadListener$1$onSaveDownload$1(this.f52700a, bean, null), 3, null);
            return;
        }
        a.f52708a.a(this.f52700a.getClass().getSimpleName() + " --> -------- onSaveDownload，不是当前视频，不做处理");
    }

    @Override
    public void onUnGzZip(SubtitleDownloadTable subtitleDownloadTable) {
        com.transsion.subtitle_download.a.C0644a.b(this, subtitleDownloadTable);
    }
}
