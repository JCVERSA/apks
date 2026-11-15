package com.transsion.ugcvideodetail.hepler.subtitle;

import android.view.ViewGroup;
import androidx.fragment.app.FragmentActivity;
import androidx.p009lifecycle.b0;
import androidx.p009lifecycle.v;
import com.avery.subtitle.widget.SimpleSubtitleView;
import com.blankj.utilcode.util.Utils;
import com.tn.lib.widget.R$color;
import com.transsion.baselib.db.download.DownloadBean;
import com.transsion.subtitle_download.db.SubtitleDownloadTable;
import com.transsion.ugcvideodetail.R$string;
import com.transsion.ugcvideodetail.api.bean.UGCImmVideo;
import com.transsion.ugcvideodetail.api.bean.UGCVideo;
import com.transsion.ugcvideodetail.api.bean.UGCVideoPlayStream;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.k;

public final class UGCImmVideoSubtitleControlImp implements b, lt.c {

    private final FragmentActivity f54298a;

    private final String f54299b;

    private final ViewGroup f54300c;

    private final SimpleSubtitleView f54301d;

    private final com.transsion.ugcvideodetail.hepler.subtitle.a f54302e;

    private final UGCImmVideo f54303f;

    private final UGCVideoPlayStream f54304g;

    private final String f54305h;

    private Function1 f54306i;

    private Function1 f54307j;

    private boolean f54308k;

    private long f54309l;

    private float f54310m;

    private final String f54311n;

    private final UGCImmVideoSubtitleControlImp$downloadListener$1 f54312o;

    public static final class a implements k5.a {
        a() {
        }

        @Override
        public long getCurrentPosition() {
            return UGCImmVideoSubtitleControlImp.this.f54309l;
        }

        @Override
        public Float getSpeed() {
            return Float.valueOf(UGCImmVideoSubtitleControlImp.this.f54310m);
        }

        @Override
        public boolean isPlaying() {
            return UGCImmVideoSubtitleControlImp.this.f54308k;
        }
    }

    public UGCImmVideoSubtitleControlImp(FragmentActivity activity, String pageName, ViewGroup subtitleLayout, SimpleSubtitleView subtitleView, com.transsion.ugcvideodetail.hepler.subtitle.a aVar, UGCImmVideo uGCImmVideo, UGCVideoPlayStream uGCVideoPlayStream) {
        UGCVideo ugcVideo;
        Intrinsics.h(activity, "activity");
        Intrinsics.h(pageName, "pageName");
        Intrinsics.h(subtitleLayout, "subtitleLayout");
        Intrinsics.h(subtitleView, "subtitleView");
        this.f54298a = activity;
        this.f54299b = pageName;
        this.f54300c = subtitleLayout;
        this.f54301d = subtitleView;
        this.f54302e = aVar;
        this.f54303f = uGCImmVideo;
        this.f54304g = uGCVideoPlayStream;
        this.f54305h = "UGCVideoSubtitleCtr";
        this.f54308k = true;
        this.f54310m = 1.0f;
        this.f54311n = ((uGCImmVideo == null || (ugcVideo = uGCImmVideo.getUgcVideo()) == null) ? null : ugcVideo.getUgcVideoId()) + "_" + (uGCVideoPlayStream != null ? uGCVideoPlayStream.getIdType() : null);
        UGCImmVideoSubtitleControlImp$downloadListener$1 uGCImmVideoSubtitleControlImp$downloadListener$1 = new UGCImmVideoSubtitleControlImp$downloadListener$1(this);
        this.f54312o = uGCImmVideoSubtitleControlImp$downloadListener$1;
        if (aVar != null) {
            aVar.b();
        }
        com.transsion.ugcvideodetail.hepler.subtitle.manager.b.a aVar2 = com.transsion.ugcvideodetail.hepler.subtitle.manager.b.f54329a;
        aVar2.b().b(uGCImmVideoSubtitleControlImp$downloadListener$1);
        aVar2.b().d(this);
        w(subtitleView);
    }

    private final void A() {
        this.f54301d.turnOff(false);
        uf.c.k(this.f54300c);
    }

    /* JADX WARN: Code duplicated, block: B:46:0x01b9  */
    public final void v(List list, String str) {
        b0 b0VarF;
        Locale localeA = com.transsion.subtitle.helper.c.a();
        wf.a.C0922a c0922a = wf.a.f74274a;
        wf.a.C0922a.f(c0922a, this.f54305h, " initDefaultSubtitle() --> cur language = " + localeA.getLanguage() + " -- country = " + localeA.getCountry(), false, 4, null);
        String id2 = "";
        String string = com.transsion.baselib.report.launch.b.f42221a.b().getString("k_subtitle_language", "");
        wf.a.C0922a.f(c0922a, this.f54305h, " initDefaultSubtitle() --> savedDiffId = " + str + " -- savedLan = " + string + ", subListSize:" + list.size(), false, 4, null);
        Iterator it = list.iterator();
        ht.a aVar = null;
        ht.a aVar2 = null;
        while (it.hasNext()) {
            ht.a aVar3 = (ht.a) it.next();
            if (aVar3.d()) {
                if (Intrinsics.c(aVar3.b().getLan(), "en")) {
                    aVar = aVar3;
                }
                if ((str == null || str.length() == 0) && Intrinsics.c(aVar3.b().getLanName(), string)) {
                    id2 = aVar3.b().getId();
                    wf.a.C0922a.f(wf.a.f74274a, this.f54305h, " initDefaultSubtitle() --> 使用之前选择的语言 local set savedLan = " + string, false, 4, null);
                } else if ((str == null || str.length() == 0) && Intrinsics.c(aVar3.b().getLanAbbr(), localeA.getLanguage())) {
                    id2 = aVar3.b().getId();
                    wf.a.C0922a.f(wf.a.f74274a, this.f54305h, " initDefaultSubtitle() --> 没有自己选择的默认语言，使用手机语言 -- phone set def language = " + id2, false, 4, null);
                } else if (Intrinsics.c(aVar3.b().getId(), str)) {
                    id2 = aVar3.b().getId();
                    wf.a.C0922a.f(wf.a.f74274a, this.f54305h, " initDefaultSubtitle() --> 使用之前选择的字幕 saved flag = " + id2, false, 4, null);
                }
                aVar2 = aVar3;
            }
        }
        if (id2.length() != 0) {
            aVar = aVar2;
        } else if (aVar != null && aVar.d()) {
            String id3 = aVar.b().getId();
            wf.a.C0922a.f(wf.a.f74274a, this.f54305h, " initDefaultSubtitle() --> 没有设置默认语言 --> english set def language = " + id3, false, 4, null);
        } else if (list.isEmpty()) {
            aVar = aVar2;
        } else {
            Iterator it2 = list.iterator();
            while (true) {
                if (!it2.hasNext()) {
                    aVar = aVar2;
                    break;
                }
                ht.a aVar4 = (ht.a) it2.next();
                if (aVar4.d()) {
                    id2 = aVar4.b().getId();
                    aVar = aVar4;
                    break;
                }
            }
            if (id2.length() == 0) {
                wf.a.C0922a.f(wf.a.f74274a, this.f54305h, " initDefaultSubtitle() --> 可能外部只读取到了数据库前面没下载的字幕 --> 没有对应的语言，不设置，需要用户手动设置或当前下载后自动设置上", false, 4, null);
                return;
            }
        }
        Iterator it3 = list.iterator();
        while (it3.hasNext()) {
            ht.a aVar5 = (ht.a) it3.next();
            this.f54301d.setSubtitlePath(aVar5.b().getPath(), com.transsion.subtitle.helper.c.b(aVar5));
        }
        f(aVar);
        if (aVar != null) {
            aVar.l(true);
        }
        com.transsion.ugcvideodetail.hepler.subtitle.a aVar6 = this.f54302e;
        if (aVar6 == null || (b0VarF = aVar6.f()) == null) {
            return;
        }
        b0VarF.q(Boolean.FALSE);
    }

    private final void w(SimpleSubtitleView simpleSubtitleView) {
        if (simpleSubtitleView != null) {
            simpleSubtitleView.setBgColor(Utils.a().getResources().getColor(R$color.black_80));
        }
        if (simpleSubtitleView != null) {
            simpleSubtitleView.setBgdRadius(lj.a.b(8));
        }
        if (simpleSubtitleView != null) {
            simpleSubtitleView.initSubtitle(new a(), false);
        } else {
            wf.a.C0922a.f(wf.a.f74274a, this.f54305h, " vdSubtitle --> initSubtitle() --> null", false, 4, null);
        }
    }

    private final void x(ht.a aVar) {
    }

    private final void y() {
        b0 b0VarE;
        b0 b0VarD;
        com.transsion.ugcvideodetail.hepler.subtitle.a aVar = this.f54302e;
        if (aVar != null && (b0VarD = aVar.d()) != null) {
            b0VarD.q(null);
        }
        com.transsion.ugcvideodetail.hepler.subtitle.a aVar2 = this.f54302e;
        if (aVar2 != null && (b0VarE = aVar2.e()) != null) {
            b0VarE.q(null);
        }
        this.f54301d.reset();
        wf.a.C0922a.f(wf.a.f74274a, this.f54305h, " reset() --> 重置资源", false, 4, null);
    }

    public static final void z(boolean z10) {
    }

    @Override
    public void K(boolean z10, DownloadBean bean) {
        Intrinsics.h(bean, "bean");
        wf.a.C0922a.f(wf.a.f74274a, this.f54305h, " checkResult --> " + z10, false, 4, null);
        Function1 function1 = this.f54306i;
        if (function1 != null) {
            function1.invoke(Boolean.valueOf(z10));
        }
    }

    @Override
    public void a(Function1 function1) {
        this.f54306i = function1;
    }

    @Override
    public void b(Function1 function1) {
        this.f54307j = function1;
    }

    @Override
    public void c(boolean z10) {
        this.f54308k = z10;
        if (z10) {
            this.f54301d.resume();
        } else {
            this.f54301d.pause();
        }
    }

    @Override
    public void d(long j10) {
        this.f54309l = j10;
    }

    @Override
    public void e() {
        k.d(v.a(this.f54298a), null, null, new UGCImmVideoSubtitleControlImp$checkSubtitle$1(this, null), 3, null);
    }

    @Override
    public void f(ht.a aVar) {
        SubtitleDownloadTable subtitleDownloadTableB;
        SubtitleDownloadTable subtitleDownloadTableB2;
        Long delay;
        SubtitleDownloadTable subtitleDownloadTableB3;
        SubtitleDownloadTable subtitleDownloadTableB4;
        SubtitleDownloadTable subtitleDownloadTableB5;
        SubtitleDownloadTable subtitleDownloadTableB6;
        String path;
        b0 b0VarC;
        b0 b0VarD;
        List<ht.a> list;
        SubtitleDownloadTable subtitleDownloadTableB7;
        com.transsion.ugcvideodetail.hepler.subtitle.a aVar2 = this.f54302e;
        if (aVar2 != null && (b0VarD = aVar2.d()) != null && (list = (List) b0VarD.f()) != null) {
            for (ht.a aVar3 : list) {
                aVar3.l(Intrinsics.c(aVar3.b().getId(), (aVar == null || (subtitleDownloadTableB7 = aVar.b()) == null) ? null : subtitleDownloadTableB7.getId()));
            }
        }
        Function1 function1 = this.f54307j;
        if (function1 != null) {
            function1.invoke(aVar);
        }
        com.transsion.ugcvideodetail.hepler.subtitle.a aVar4 = this.f54302e;
        if (aVar4 != null && (b0VarC = aVar4.c()) != null) {
            b0VarC.q(aVar);
        }
        if (aVar != null && (subtitleDownloadTableB6 = aVar.b()) != null && (path = subtitleDownloadTableB6.getPath()) != null) {
            A();
            this.f54301d.selectSubtitle(path, com.transsion.subtitle.helper.c.b(aVar), new k5.b() {
                @Override
                public final void a(boolean z10) {
                    UGCImmVideoSubtitleControlImp.z(z10);
                }
            });
        }
        wf.a.f74274a.c(this.f54305h, "selectSubtitle delayDuration:" + ((aVar == null || (subtitleDownloadTableB5 = aVar.b()) == null) ? null : subtitleDownloadTableB5.getDelay()) + ", name:" + ((aVar == null || (subtitleDownloadTableB4 = aVar.b()) == null) ? null : subtitleDownloadTableB4.getLanName()) + ", isAutoDownload:" + ((aVar == null || (subtitleDownloadTableB3 = aVar.b()) == null) ? null : Boolean.valueOf(subtitleDownloadTableB3.getIsAutoDownload())), true);
        if (aVar != null && (subtitleDownloadTableB2 = aVar.b()) != null && (delay = subtitleDownloadTableB2.getDelay()) != null) {
            this.f54301d.subtitleDelay(delay.longValue());
        }
        if (aVar != null && (subtitleDownloadTableB = aVar.b()) != null) {
            if (!subtitleDownloadTableB.getIsAutoDownload()) {
                com.transsion.baselib.report.launch.b.f42221a.b().putString("k_subtitle_language", subtitleDownloadTableB.getLanName());
                com.transsion.subtitle_download.utils.d.f53010a.b().putString("k_subtitle_select_lan", subtitleDownloadTableB.getLan());
            }
            fh.b.f60176a.e(Utils.a().getString(R$string.ugc_imm_video_enable_toast, subtitleDownloadTableB.getName()));
        }
        if (aVar != null) {
            x(aVar);
        }
        k.d(v.a(this.f54298a), null, null, new UGCImmVideoSubtitleControlImp$selectSubtitle$6(aVar, this, null), 3, null);
    }

    @Override
    public void g(ht.a aVar) {
        lt.c.a.b(this, aVar);
    }

    @Override
    public void onDestroy() {
        y();
        uf.c.g(this.f54300c);
        this.f54301d.stop();
        this.f54301d.destroy();
        com.transsion.ugcvideodetail.hepler.subtitle.manager.b.a aVar = com.transsion.ugcvideodetail.hepler.subtitle.manager.b.f54329a;
        aVar.b().f(this);
        aVar.b().c(this.f54312o);
        wf.a.C0922a.f(wf.a.f74274a, this.f54305h, " onDestroy()", false, 4, null);
    }

    public final String u() {
        return this.f54311n;
    }
}
