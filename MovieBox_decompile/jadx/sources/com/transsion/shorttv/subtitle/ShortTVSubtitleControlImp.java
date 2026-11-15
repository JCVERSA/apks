package com.transsion.shorttv.subtitle;

import android.widget.FrameLayout;
import androidx.fragment.app.FragmentActivity;
import androidx.p009lifecycle.c0;
import androidx.p009lifecycle.v;
import androidx.p009lifecycle.v0;
import com.avery.subtitle.widget.SimpleSubtitleView;
import com.blankj.utilcode.util.Utils;
import com.transsion.shorttv.R$color;
import com.transsion.shorttv.R$string;
import com.transsion.shorttv.bean.ShortTVItem;
import com.transsion.shorttv.viewmodel.ShortTvViewModel;
import com.transsion.subtitle_download.db.SubtitleDownloadTable;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import kotlin.Function;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.FunctionAdapter;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.k;
import nr.e;
import qi.h;
import qr.k0;

public final class ShortTVSubtitleControlImp implements com.transsion.shorttv.subtitle.a, zr.a {

    private final FragmentActivity f51050b;

    private final k0 f51051c;

    private final ShortTvViewModel f51052d;

    private final e f51053e;

    private final String f51054f;

    private final String f51055g;

    private final as.a f51056h;

    private Function1 f51057i;

    private Function1 f51058j;

    private boolean f51059k;

    private long f51060l;

    private float f51061m;

    private final ShortTVSubtitleControlImp$downloadListener$1 f51062n;

    public static final class a implements k5.a {
        a() {
        }

        @Override
        public long getCurrentPosition() {
            return ShortTVSubtitleControlImp.this.f51060l;
        }

        @Override
        public Float getSpeed() {
            return Float.valueOf(ShortTVSubtitleControlImp.this.f51061m);
        }

        @Override
        public boolean isPlaying() {
            return ShortTVSubtitleControlImp.this.f51059k;
        }
    }

    static final class b implements c0, FunctionAdapter {

        private final Function1 f51064a;

        b(Function1 function) {
            Intrinsics.h(function, "function");
            this.f51064a = function;
        }

        @Override
        public final Function a() {
            return this.f51064a;
        }

        public final boolean equals(Object obj) {
            if ((obj instanceof c0) && (obj instanceof FunctionAdapter)) {
                return Intrinsics.c(a(), ((FunctionAdapter) obj).a());
            }
            return false;
        }

        public final int hashCode() {
            return a().hashCode();
        }

        @Override
        public final void onChanged(Object obj) {
            this.f51064a.invoke(obj);
        }
    }

    public ShortTVSubtitleControlImp(FragmentActivity activity, k0 viewBinding, ShortTvViewModel shortTvViewModel, e epItem, String str) {
        Intrinsics.h(activity, "activity");
        Intrinsics.h(viewBinding, "viewBinding");
        Intrinsics.h(epItem, "epItem");
        this.f51050b = activity;
        this.f51051c = viewBinding;
        this.f51052d = shortTvViewModel;
        this.f51053e = epItem;
        this.f51054f = str;
        this.f51055g = "ShortTVSubtitleCtr";
        as.a aVar = (as.a) new v0(activity).a(as.a.class);
        this.f51056h = aVar;
        this.f51059k = true;
        this.f51061m = 1.0f;
        ShortTVSubtitleControlImp$downloadListener$1 shortTVSubtitleControlImp$downloadListener$1 = new ShortTVSubtitleControlImp$downloadListener$1(this);
        this.f51062n = shortTVSubtitleControlImp$downloadListener$1;
        aVar.b();
        aVar.e().j(activity, new b(new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return ShortTVSubtitleControlImp.k(this.f51068a, (xr.b) obj);
            }
        }));
        com.transsion.shorttv.subtitle.manager.b.a aVar2 = com.transsion.shorttv.subtitle.manager.b.f51081a;
        aVar2.b().b(shortTVSubtitleControlImp$downloadListener$1);
        aVar2.b().f(this);
        z(viewBinding.K);
    }

    private final void A(boolean z10) {
        wf.a.C0922a.g(wf.a.f74274a, this.f51055g + " --> onSubtitleSwitchClick() --> turnOn = " + z10 + " --> 字幕开关状态变化", false, 2, null);
        if (z10) {
            E();
        } else {
            x();
        }
        this.f51056h.f().q(Boolean.valueOf(!z10));
    }

    private final void B(xr.b bVar) {
        String id2;
        String videoId;
        HashMap map = new HashMap();
        map.put("subject_id", this.f51053e.e());
        ShortTVItem shortTVItemD = this.f51053e.d();
        if (shortTVItemD == null || (id2 = shortTVItemD.getId()) == null) {
            id2 = "";
        }
        map.put("mini_id", id2);
        ShortTVItem shortTVItemD2 = this.f51053e.d();
        map.put("se", String.valueOf(shortTVItemD2 != null ? Integer.valueOf(shortTVItemD2.getSe()) : null));
        map.put("ep", String.valueOf(this.f51053e.c()));
        ShortTVItem shortTVItemD3 = this.f51053e.d();
        if (shortTVItemD3 == null || (videoId = shortTVItemD3.getVideoId()) == null) {
            videoId = "";
        }
        map.put("video_id", videoId);
        map.put("opt_type", "subtitle_select");
        String ops = bVar.a().getOps();
        if (ops != null) {
            map.put("ops", ops);
        }
        map.put("name", bVar.a().getName());
        String lan = bVar.a().getLan();
        if (lan == null) {
            lan = "";
        }
        map.put("lan", lan);
        String lanName = bVar.a().getLanName();
        map.put("lan_name", lanName != null ? lanName : "");
        h.f69682a.o("minitv_play", map);
    }

    private final void C() {
        this.f51056h.d().q(null);
        this.f51056h.e().q(null);
        this.f51051c.K.reset();
        wf.a.C0922a.g(wf.a.f74274a, this.f51055g + " --> reset() --> 重置资源", false, 2, null);
    }

    public static final void D(boolean z10) {
    }

    private final void E() {
        this.f51051c.K.turnOff(false);
        FrameLayout flSubtitle = this.f51051c.f70084f;
        Intrinsics.g(flSubtitle, "flSubtitle");
        cr.b.e(flSubtitle);
    }

    public static final Unit k(ShortTVSubtitleControlImp shortTVSubtitleControlImp, xr.b bVar) {
        if (bVar == null) {
            return Unit.f64096a;
        }
        if (bVar.c()) {
            jr.b.f63248a.d(R$string.short_tv_subtitle_turn_off_toast);
        }
        shortTVSubtitleControlImp.A(!bVar.c());
        if (!bVar.c()) {
            shortTVSubtitleControlImp.h(bVar);
        }
        return Unit.f64096a;
    }

    private final void x() {
        this.f51051c.K.turnOff(true);
        FrameLayout flSubtitle = this.f51051c.f70084f;
        Intrinsics.g(flSubtitle, "flSubtitle");
        cr.b.b(flSubtitle);
    }

    /* JADX WARN: Code duplicated, block: B:40:0x018c  */
    /* JADX WARN: Code duplicated, block: B:60:0x020d  */
    public final void y(List list, String str) {
        Object next;
        Locale localeA = yr.a.a();
        wf.a.C0922a c0922a = wf.a.f74274a;
        Object obj = null;
        wf.a.C0922a.g(c0922a, this.f51055g + " --> initDefaultSubtitle() --> cur language = " + localeA.getLanguage() + " -- country = " + localeA.getCountry(), false, 2, null);
        String id2 = "";
        String string = com.transsion.shorttv.utils.h.f51644a.d().getString("k_subtitle_language", "");
        com.transsion.subtitle_download.utils.d.f53010a.b().getString("k_subtitle_select_lan", "");
        if (Intrinsics.c(string, "off")) {
            Function1 function1 = this.f51057i;
            if (function1 != null) {
                function1.invoke(Boolean.TRUE);
            }
            this.f51056h.f().q(Boolean.TRUE);
            this.f51056h.g("OFF");
            return;
        }
        wf.a.C0922a.g(c0922a, this.f51055g + " --> initDefaultSubtitle() --> savedDiffId = " + str + " -- savedLan = " + string + ", subListSize:" + list.size(), false, 2, null);
        Iterator it = list.iterator();
        xr.b bVar = null;
        xr.b bVar2 = null;
        xr.b bVar3 = null;
        xr.b bVar4 = null;
        while (it.hasNext()) {
            xr.b bVar5 = (xr.b) it.next();
            if (bVar == null && string != null && string.length() != 0 && Intrinsics.c(bVar5.a().getLanName(), string)) {
                bVar = bVar5;
            }
            if (bVar2 == null && Intrinsics.c(bVar5.a().getLanAbbr(), localeA.getLanguage())) {
                bVar2 = bVar5;
            }
            if (bVar5.b()) {
                if (Intrinsics.c(bVar5.a().getLan(), "en")) {
                    bVar3 = bVar5;
                }
                if (Intrinsics.c(bVar5.a().getId(), str)) {
                    id2 = bVar5.a().getId();
                    wf.a.C0922a.g(wf.a.f74274a, this.f51055g + " --> initDefaultSubtitle() --> 使用之前选择的字幕 saved flag = " + id2, false, 2, null);
                    bVar4 = bVar5;
                }
            }
        }
        if (id2.length() != 0) {
            bVar = bVar4;
        } else if (bVar != null) {
            id2 = bVar.a().getId();
            wf.a.C0922a.g(wf.a.f74274a, this.f51055g + " --> initDefaultSubtitle() --> 使用之前选择的语言 local set savedLan = " + string, false, 2, null);
        } else if (bVar2 != null) {
            id2 = bVar2.a().getId();
            wf.a.C0922a.g(wf.a.f74274a, this.f51055g + " --> initDefaultSubtitle() --> 没有自己选择的默认语言，使用手机语言 -- phone set def language = " + id2, false, 2, null);
            bVar = bVar2;
        } else {
            bVar = bVar4;
        }
        if (id2.length() != 0) {
            bVar3 = bVar;
        } else if (bVar3 != null && bVar3.b()) {
            String id3 = bVar3.a().getId();
            wf.a.C0922a.g(wf.a.f74274a, this.f51055g + " --> initDefaultSubtitle() --> 没有设置默认语言 --> english set def language = " + id3, false, 2, null);
        } else if (list.isEmpty()) {
            bVar3 = bVar;
        } else {
            Iterator it2 = list.iterator();
            while (true) {
                if (!it2.hasNext()) {
                    bVar3 = bVar;
                    break;
                }
                xr.b bVar6 = (xr.b) it2.next();
                if (bVar6.b()) {
                    id2 = bVar6.a().getId();
                    bVar3 = bVar6;
                    break;
                }
            }
            if (id2.length() == 0) {
                wf.a.C0922a.g(wf.a.f74274a, this.f51055g + " --> initDefaultSubtitle() --> 可能外部只读取到了数据库前面没下载的字幕 --> 没有对应的语言，不设置，需要用户手动设置或当前下载后自动设置上", false, 2, null);
                return;
            }
        }
        List<xr.b> list2 = list;
        for (xr.b bVar7 : list2) {
            this.f51051c.K.setSubtitlePath(bVar7.a().getPath(), yr.a.b(bVar7));
        }
        if (bVar3 == null || bVar3.b()) {
            h(bVar3);
            if (bVar3 != null) {
                bVar3.f(true);
            }
            this.f51056h.f().q(Boolean.FALSE);
            if (bVar3 != null) {
                this.f51056h.g(bVar3.a().getId());
                return;
            } else {
                this.f51056h.g("OFF");
                return;
            }
        }
        bVar3.a().setAutoDownload(false);
        bVar3.a().setSetImmediately(true);
        com.transsion.shorttv.subtitle.manager.b.f51081a.b().d(bVar3);
        Iterator it3 = list2.iterator();
        while (true) {
            if (!it3.hasNext()) {
                next = null;
                break;
            }
            next = it3.next();
            xr.b bVar8 = (xr.b) next;
            if (bVar8.b() && Intrinsics.c(bVar8.a().getLan(), "en")) {
                break;
            }
        }
        xr.b bVar9 = (xr.b) next;
        if (bVar9 == null) {
            for (Object obj2 : list2) {
                if (((xr.b) obj2).b()) {
                    obj = obj2;
                    break;
                }
            }
            bVar9 = (xr.b) obj;
        }
        if (bVar9 != null) {
            h(bVar9);
            bVar9.f(true);
            this.f51056h.f().q(Boolean.FALSE);
            if (bVar9.a().getId().length() > 0) {
                this.f51056h.g(bVar9.a().getId());
            }
        }
    }

    private final void z(SimpleSubtitleView simpleSubtitleView) {
        if (simpleSubtitleView != null) {
            simpleSubtitleView.setBgColor(Utils.a().getResources().getColor(R$color.short_tv_black_80));
        }
        if (simpleSubtitleView != null) {
            simpleSubtitleView.setBgdRadius(cr.a.a(8));
        }
        if (simpleSubtitleView != null) {
            simpleSubtitleView.initSubtitle(new a(), false);
            return;
        }
        wf.a.C0922a.g(wf.a.f74274a, this.f51055g + " --> vdSubtitle --> initSubtitle() --> null", false, 2, null);
    }

    @Override
    public void a(Function1 function1) {
        this.f51057i = function1;
    }

    @Override
    public void b(Function1 function1) {
        this.f51058j = function1;
    }

    @Override
    public void c(boolean z10) {
        this.f51059k = z10;
        if (z10) {
            this.f51051c.K.resume();
        } else {
            this.f51051c.K.pause();
        }
    }

    @Override
    public void d(long j10) {
        this.f51060l = j10;
    }

    @Override
    public void e() {
        k.d(v.a(this.f51050b), null, null, new ShortTVSubtitleControlImp$checkSubtitle$1(this, null), 3, null);
    }

    @Override
    public void f() {
        x();
        List list = (List) this.f51056h.d().f();
        if (list != null) {
            Iterator it = list.iterator();
            while (it.hasNext()) {
                ((xr.b) it.next()).f(false);
            }
        }
        this.f51056h.f().q(Boolean.TRUE);
        com.transsion.shorttv.utils.h.f51644a.d().putString("k_subtitle_language", "off");
        com.transsion.subtitle_download.utils.d.f53010a.b().putString("k_subtitle_select_lan", "off");
        if (pq.a.f69238a.c()) {
            return;
        }
        jr.b.f63248a.e(Utils.a().getString(R$string.short_tv_subtitles_off));
    }

    @Override
    public void g(boolean z10) {
        wf.a.C0922a.g(wf.a.f74274a, this.f51055g + " --> checkResult --> " + z10, false, 2, null);
        Function1 function1 = this.f51057i;
        if (function1 != null) {
            function1.invoke(Boolean.valueOf(z10));
        }
    }

    @Override
    public void h(xr.b bVar) {
        SubtitleDownloadTable subtitleDownloadTableA;
        SubtitleDownloadTable subtitleDownloadTableA2;
        Long delay;
        SubtitleDownloadTable subtitleDownloadTableA3;
        SubtitleDownloadTable subtitleDownloadTableA4;
        SubtitleDownloadTable subtitleDownloadTableA5;
        SubtitleDownloadTable subtitleDownloadTableA6;
        String path;
        SubtitleDownloadTable subtitleDownloadTableA7;
        List<xr.b> list = (List) this.f51056h.d().f();
        if (list != null) {
            for (xr.b bVar2 : list) {
                bVar2.f(Intrinsics.c(bVar2.a().getId(), (bVar == null || (subtitleDownloadTableA7 = bVar.a()) == null) ? null : subtitleDownloadTableA7.getId()));
            }
        }
        Function1 function1 = this.f51058j;
        if (function1 != null) {
            function1.invoke(bVar);
        }
        if (bVar != null && (subtitleDownloadTableA6 = bVar.a()) != null && (path = subtitleDownloadTableA6.getPath()) != null) {
            E();
            this.f51051c.K.selectSubtitle(path, yr.a.b(bVar), new k5.b() {
                @Override
                public final void a(boolean z10) {
                    ShortTVSubtitleControlImp.D(z10);
                }
            });
        }
        wf.a.f74274a.c("short_tv_subtitle", "selectSubtitle delayDuration:" + ((bVar == null || (subtitleDownloadTableA5 = bVar.a()) == null) ? null : subtitleDownloadTableA5.getDelay()) + ", name:" + ((bVar == null || (subtitleDownloadTableA4 = bVar.a()) == null) ? null : subtitleDownloadTableA4.getLanName()) + ", isAutoDownload:" + ((bVar == null || (subtitleDownloadTableA3 = bVar.a()) == null) ? null : Boolean.valueOf(subtitleDownloadTableA3.getIsAutoDownload())), true);
        if (bVar != null && (subtitleDownloadTableA2 = bVar.a()) != null && (delay = subtitleDownloadTableA2.getDelay()) != null) {
            this.f51051c.K.subtitleDelay(delay.longValue());
        }
        if (bVar != null && (subtitleDownloadTableA = bVar.a()) != null) {
            if (!subtitleDownloadTableA.getIsAutoDownload()) {
                com.transsion.shorttv.utils.h.f51644a.d().putString("k_subtitle_language", subtitleDownloadTableA.getLanName());
                com.transsion.subtitle_download.utils.d.f53010a.b().putString("k_subtitle_select_lan", subtitleDownloadTableA.getLan());
            }
            if (!pq.a.f69238a.c()) {
                jr.b.f63248a.e(Utils.a().getString(R$string.short_tv_subtitle_enable_toast, subtitleDownloadTableA.getName()));
            }
        }
        if (bVar != null) {
            B(bVar);
        }
        k.d(v.a(this.f51050b), null, null, new ShortTVSubtitleControlImp$selectSubtitle$6(bVar, this, null), 3, null);
    }

    @Override
    public void onDestroy() {
        C();
        FrameLayout flSubtitle = this.f51051c.f70084f;
        Intrinsics.g(flSubtitle, "flSubtitle");
        cr.b.b(flSubtitle);
        this.f51051c.K.stop();
        this.f51051c.K.destroy();
        com.transsion.shorttv.subtitle.manager.b.a aVar = com.transsion.shorttv.subtitle.manager.b.f51081a;
        aVar.b().g(this);
        aVar.b().c(this.f51062n);
        wf.a.C0922a.g(wf.a.f74274a, this.f51055g + " --> onDestroy()", false, 2, null);
    }
}
