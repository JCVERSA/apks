package com.transsion.videofloat.manager;

import android.app.Application;
import com.avery.subtitle.widget.SimpleSubtitleView;
import com.blankj.utilcode.util.Utils;
import com.transsion.baselib.db.AppDatabase;
import com.transsion.baselib.db.video.VideoDetailPlayDao;
import com.transsion.subtitle_download.db.SubtitleDownloadTable;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.o0;
import kotlinx.coroutines.y0;

public final class VideoFloatSubtitleControl {

    private final SimpleSubtitleView f55728a;

    private final dw.a f55729b;

    private final String f55730c;

    private boolean f55731d;

    private long f55732e;

    private float f55733f;

    private final Lazy f55734g;

    private final Lazy f55735h;

    public static final class a implements k5.a {
        a() {
        }

        @Override
        public long getCurrentPosition() {
            return VideoFloatSubtitleControl.this.k();
        }

        @Override
        public Float getSpeed() {
            return Float.valueOf(VideoFloatSubtitleControl.this.m());
        }

        @Override
        public boolean isPlaying() {
            return VideoFloatSubtitleControl.this.p();
        }
    }

    public VideoFloatSubtitleControl(SimpleSubtitleView subtitleView, dw.a floatBean) {
        Intrinsics.h(subtitleView, "subtitleView");
        Intrinsics.h(floatBean, "floatBean");
        this.f55728a = subtitleView;
        this.f55729b = floatBean;
        this.f55730c = "VideoFloatSubtitle";
        this.f55731d = true;
        this.f55733f = 1.0f;
        this.f55734g = LazyKt.b(new Function0() {
            @Override
            public final Object invoke() {
                return VideoFloatSubtitleControl.x();
            }
        });
        this.f55735h = LazyKt.b(new Function0() {
            @Override
            public final Object invoke() {
                return VideoFloatSubtitleControl.i();
            }
        });
        o();
    }

    public static final ui.c i() {
        AppDatabase.Companion companion = AppDatabase.INSTANCE;
        Application applicationA = Utils.a();
        Intrinsics.g(applicationA, "getApp(...)");
        return companion.b(applicationA).o1();
    }

    public final ui.c j() {
        return (ui.c) this.f55735h.getValue();
    }

    public final VideoDetailPlayDao l() {
        return (VideoDetailPlayDao) this.f55734g.getValue();
    }

    /* JADX WARN: Code duplicated, block: B:46:0x0192  */
    public final void n(String str, List list) {
        SubtitleDownloadTable subtitleDownloadTableB;
        SubtitleDownloadTable subtitleDownloadTableB2;
        SubtitleDownloadTable subtitleDownloadTableB3;
        Long delay;
        SubtitleDownloadTable subtitleDownloadTableB4;
        String path;
        Locale localeA = com.transsion.subtitle.helper.c.a();
        wf.a.C0922a c0922a = wf.a.f74274a;
        c0922a.u(this.f55730c, "------------------cur  language = " + localeA.getLanguage() + "， country = " + localeA.getCountry(), true);
        String id2 = "";
        String string = com.transsion.baselib.report.launch.b.f42221a.b().getString("k_subtitle_language", "");
        wf.a.C0922a.f(c0922a, this.f55730c, "initDefaultSubtitle savedDiffId = " + str + "， savedLan = " + string, false, 4, null);
        Iterator it = list.iterator();
        String path2 = null;
        ht.a aVar = null;
        ht.a aVar2 = null;
        while (it.hasNext()) {
            ht.a aVar3 = (ht.a) it.next();
            if (aVar3.d()) {
                if (Intrinsics.c(aVar3.b().getLan(), "en")) {
                    aVar = aVar3;
                }
                if ((str == null || str.length() == 0) && Intrinsics.c(aVar3.b().getLanAbbr(), localeA.getLanguage())) {
                    id2 = aVar3.b().getId();
                    wf.a.f74274a.c(this.f55730c, "111 phone set def language = " + id2, true);
                } else if (Intrinsics.c(aVar3.b().getId(), str)) {
                    id2 = aVar3.b().getId();
                    wf.a.f74274a.c(this.f55730c, "222 saved flag = " + id2, true);
                } else if (str == null || str.length() == 0) {
                    if (Intrinsics.c(aVar3.b().getLanName(), string)) {
                        id2 = aVar3.b().getId();
                        wf.a.f74274a.c(this.f55730c, "555 local set savedLan = " + string, true);
                    }
                }
                aVar2 = aVar3;
            }
        }
        if (id2.length() != 0) {
            aVar = aVar2;
        } else if (aVar != null && aVar.d()) {
            id2 = aVar.b().getId();
            wf.a.f74274a.c(this.f55730c, "333 english set def language = " + id2, true);
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
                wf.a.f74274a.c(this.f55730c, "没有对应的语言，不设置，需要用户手动设置或当前下载后自动设置上", true);
                return;
            }
        }
        if (aVar != null && (subtitleDownloadTableB4 = aVar.b()) != null && (path = subtitleDownloadTableB4.getPath()) != null) {
            this.f55728a.setDefaultSubtitle(path);
        }
        if (aVar != null && (subtitleDownloadTableB3 = aVar.b()) != null && (delay = subtitleDownloadTableB3.getDelay()) != null) {
            long jLongValue = delay.longValue();
            wf.a.f74274a.c(this.f55730c, "default delayDuration = " + jLongValue, true);
            this.f55728a.subtitleDelay(jLongValue);
        }
        wf.a.C0922a c0922a2 = wf.a.f74274a;
        String str2 = this.f55730c;
        String name = (aVar == null || (subtitleDownloadTableB2 = aVar.b()) == null) ? null : subtitleDownloadTableB2.getName();
        if (aVar != null && (subtitleDownloadTableB = aVar.b()) != null) {
            path2 = subtitleDownloadTableB.getPath();
        }
        c0922a2.c(str2, "default select subtitle defDiffId = " + id2 + ", name= " + name + "，path:" + path2, true);
    }

    private final void o() {
        if (this.f55729b.x()) {
            this.f55728a.initSubtitle(new a(), false);
            kotlinx.coroutines.k.d(o0.a(y0.b()), null, null, new VideoFloatSubtitleControl$initSubtitle$2(this, null), 3, null);
            return;
        }
        wf.a.f74274a.c(this.f55730c, "float subtitle----intercept， " + this.f55729b.i(), true);
    }

    public final void t(List list) {
        String path;
        Iterator it = list.iterator();
        while (it.hasNext()) {
            ht.a aVar = (ht.a) it.next();
            if (aVar.d() && (path = aVar.b().getPath()) != null) {
                this.f55728a.setSubtitlePath(path, com.transsion.subtitle.helper.c.b(aVar));
            }
        }
    }

    public static final VideoDetailPlayDao x() {
        AppDatabase.Companion companion = AppDatabase.INSTANCE;
        Application applicationA = Utils.a();
        Intrinsics.g(applicationA, "getApp(...)");
        return companion.b(applicationA).C1();
    }

    public final long k() {
        return this.f55732e;
    }

    public final float m() {
        return this.f55733f;
    }

    public final boolean p() {
        return this.f55731d;
    }

    public final void q() {
        if (this.f55729b.x()) {
            this.f55728a.pause();
        }
    }

    public final void r() {
        if (this.f55729b.x()) {
            this.f55728a.stop();
            this.f55728a.destroy();
        }
    }

    public final void s() {
        if (this.f55729b.x()) {
            this.f55728a.resume();
        }
    }

    public final void u(long j10) {
        this.f55732e = j10;
    }

    public final void v(boolean z10) {
        this.f55731d = z10;
    }

    public final void w(float f10) {
        this.f55733f = f10;
    }
}
