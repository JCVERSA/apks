package lu;

import android.widget.FrameLayout;
import androidx.fragment.app.FragmentActivity;
import com.avery.subtitle.widget.SimpleSubtitleView;
import com.blankj.utilcode.util.ThreadUtils;
import com.transsion.subtitle.R$string;
import com.transsion.subtitle_download.db.SubtitleDownloadTable;
import com.transsion.ugcvideodetail.api.bean.UGCImmVideo;
import com.transsion.ugcvideodetail.api.bean.UGCVideoPlayStream;
import com.transsion.ugcvideodetail.fragment.UGCImmVideoDetailFragment;
import iu.r;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

public final class n implements com.transsion.subtitle_download.a {

    private final a f66147a;

    private com.transsion.ugcvideodetail.hepler.subtitle.b f66148b;

    private boolean f66149c;

    private String f66150d;

    private ht.a f66151e;

    private boolean f66152f;

    public interface a {
        r a();

        com.transsion.ugcvideodetail.hepler.subtitle.a b();

        UGCImmVideoDetailFragment c();

        UGCImmVideo getData();

        String getLogTag();
    }

    public n(a host) {
        Intrinsics.h(host, "host");
        this.f66147a = host;
    }

    private final void h(ht.a aVar) {
        if (this.f66152f) {
            fh.b.f60176a.d(R$string.subtitle_is_downloading);
            return;
        }
        if (!yg.l.f76264a.e()) {
            fh.b.f60176a.d(com.tn.lib.widget.R$string.no_network_toast);
            return;
        }
        com.transsion.ugcvideodetail.hepler.subtitle.manager.b.a aVar2 = com.transsion.ugcvideodetail.hepler.subtitle.manager.b.f54329a;
        aVar2.b().b(this);
        aVar.b().setStatus(2);
        this.f66152f = true;
        wf.a.C0922a.f(wf.a.f74274a, this.f66147a.getLogTag(), n.class.getSimpleName() + " --> downloadSubtitle() --> 内置字幕列表，下载字幕，name = " + aVar.b().getName() + ", subtype = " + aVar.b().getType() + ",download subtitleName = " + aVar.b().getSubtitleName() + ", subResourceId = " + aVar.b().getResourceId() + "~", false, 4, null);
        aVar.b().setAutoDownload(false);
        this.f66151e = aVar;
        aVar2.b().h(aVar);
    }

    public static final Unit j(n nVar, boolean z10) {
        nVar.f66149c = z10;
        return Unit.f64096a;
    }

    public static final Unit k(n nVar, ht.a aVar) {
        SubtitleDownloadTable subtitleDownloadTableB;
        SubtitleDownloadTable subtitleDownloadTableB2;
        String lanName = null;
        String lanName2 = (aVar == null || (subtitleDownloadTableB2 = aVar.b()) == null) ? null : subtitleDownloadTableB2.getLanName();
        nVar.f66149c = !(lanName2 == null || lanName2.length() == 0);
        if (aVar != null && (subtitleDownloadTableB = aVar.b()) != null) {
            lanName = subtitleDownloadTableB.getLanName();
        }
        nVar.f66150d = lanName;
        return Unit.f64096a;
    }

    public static final void l(n nVar, SubtitleDownloadTable subtitleDownloadTable) {
        SubtitleDownloadTable subtitleDownloadTableB;
        ht.a aVar = nVar.f66151e;
        if (aVar != null) {
            if (Intrinsics.c((aVar == null || (subtitleDownloadTableB = aVar.b()) == null) ? null : subtitleDownloadTableB.getLan(), subtitleDownloadTable.getLan())) {
                wf.a.C0922a.f(wf.a.f74274a, nVar.f66147a.getLogTag(), "内置字幕点击下载成功，name = " + subtitleDownloadTable.getName() + ", videoResourceId = " + subtitleDownloadTable.getResourceId() + ", download subtitleName = " + subtitleDownloadTable.getName() + ", lan = " + subtitleDownloadTable.getLan() + "， status:" + subtitleDownloadTable.getStatus() + "~", false, 4, null);
                ht.a aVar2 = nVar.f66151e;
                Intrinsics.e(aVar2);
                nVar.o(aVar2);
            }
        }
    }

    public static final void m(n nVar, SubtitleDownloadTable subtitleDownloadTable) {
        ht.a aVar = nVar.f66151e;
        if (aVar != null) {
            aVar.h(subtitleDownloadTable);
        }
        wf.a.C0922a.f(wf.a.f74274a, nVar.f66147a.getLogTag(), n.class.getSimpleName() + " --> onFail() --> 内置字幕点击下载失败TnT，name = " + subtitleDownloadTable.getName() + ", videoResourceId = " + subtitleDownloadTable.getResourceId() + ", download subtitleName = " + subtitleDownloadTable.getName() + ", lan = " + subtitleDownloadTable.getLan() + "， status:" + subtitleDownloadTable.getStatus() + "~", false, 4, null);
    }

    public final void e() {
        com.transsion.ugcvideodetail.hepler.subtitle.manager.b.f54329a.b().b(this);
    }

    public final void f() {
        com.transsion.ugcvideodetail.hepler.subtitle.b bVar = this.f66148b;
        if (bVar != null) {
            bVar.e();
        }
    }

    public final void g() {
        com.transsion.ugcvideodetail.hepler.subtitle.manager.b.f54329a.b().c(this);
    }

    public final void i(UGCVideoPlayStream uGCVideoPlayStream) {
        FragmentActivity activity;
        wf.a.C0922a.f(wf.a.f74274a, this.f66147a.getLogTag(), ">>>>>>>--------------------initLanguage subtitle, position:", false, 4, null);
        UGCImmVideoDetailFragment uGCImmVideoDetailFragmentC = this.f66147a.c();
        if (uGCImmVideoDetailFragmentC == null || (activity = uGCImmVideoDetailFragmentC.getActivity()) == null || activity.isDestroyed() || activity.isFinishing() || this.f66147a.getData() == null) {
            return;
        }
        com.transsion.ugcvideodetail.hepler.subtitle.b.a aVar = com.transsion.ugcvideodetail.hepler.subtitle.b.f54319g1;
        FrameLayout flUgcImmSubtitle = this.f66147a.a().f62779g;
        Intrinsics.g(flUgcImmSubtitle, "flUgcImmSubtitle");
        SimpleSubtitleView vUgcImmSubtitle = this.f66147a.a().M;
        Intrinsics.g(vUgcImmSubtitle, "vUgcImmSubtitle");
        com.transsion.ugcvideodetail.hepler.subtitle.b bVarA = aVar.a(activity, "/ugc_video/immersive_detail", flUgcImmSubtitle, vUgcImmSubtitle, this.f66147a.b(), this.f66147a.getData(), uGCVideoPlayStream);
        bVarA.e();
        bVarA.a(new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return n.j(this.f66141a, ((Boolean) obj).booleanValue());
            }
        });
        bVarA.b(new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return n.k(this.f66142a, (ht.a) obj);
            }
        });
        this.f66148b = bVarA;
    }

    public final void n() {
        com.transsion.ugcvideodetail.hepler.subtitle.b bVar = this.f66148b;
        if (bVar != null) {
            bVar.onDestroy();
        }
        this.f66148b = null;
    }

    public final void o(ht.a item) {
        Intrinsics.h(item, "item");
        wf.a.C0922a.f(wf.a.f74274a, this.f66147a.getLogTag(), "onSubtitleSelect", false, 4, null);
        if (!item.d()) {
            h(item);
            return;
        }
        com.transsion.ugcvideodetail.hepler.subtitle.b bVar = this.f66148b;
        if (bVar != null) {
            bVar.f(item);
        }
        this.f66151e = null;
    }

    @Override
    public void onComplete(final SubtitleDownloadTable stDownloadTable) {
        Intrinsics.h(stDownloadTable, "stDownloadTable");
        this.f66152f = false;
        ThreadUtils.j(new Runnable() {
            @Override
            public final void run() {
                n.l(this.f66143a, stDownloadTable);
            }
        });
    }

    @Override
    public void onDownloading(int i10, SubtitleDownloadTable stDownloadTable) {
        Intrinsics.h(stDownloadTable, "stDownloadTable");
    }

    @Override
    public void onFail(Exception e10, final SubtitleDownloadTable dbBean) {
        Intrinsics.h(e10, "e");
        Intrinsics.h(dbBean, "dbBean");
        this.f66152f = false;
        ThreadUtils.j(new Runnable() {
            @Override
            public final void run() {
                n.m(this.f66145a, dbBean);
            }
        });
    }

    @Override
    public void onSaveDownload(SubtitleDownloadTable subtitleDownloadTable) {
        com.transsion.subtitle_download.a.C0644a.a(this, subtitleDownloadTable);
    }

    @Override
    public void onUnGzZip(SubtitleDownloadTable subtitleDownloadTable) {
        com.transsion.subtitle_download.a.C0644a.b(this, subtitleDownloadTable);
    }

    public final void p(boolean z10) {
        com.transsion.ugcvideodetail.hepler.subtitle.b bVar = this.f66148b;
        if (bVar != null) {
            bVar.c(z10);
        }
    }

    public final void q(long j10) {
        com.transsion.ugcvideodetail.hepler.subtitle.b bVar = this.f66148b;
        if (bVar != null) {
            bVar.d(j10);
        }
    }
}
