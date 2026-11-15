package com.transsion.shorttv.subtitle.manager;

import com.transsion.shorttv.utils.h;
import com.transsion.subtitle_download.SubtitleDownloadManager;
import com.transsion.subtitle_download.bean.SubtitleAppType;
import com.transsion.subtitle_download.db.SubtitleDownloadTable;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.concurrent.CopyOnWriteArraySet;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import kotlinx.coroutines.k;
import kotlinx.coroutines.n0;
import kotlinx.coroutines.o0;
import kotlinx.coroutines.y0;
import yg.l;

public final class ShortTvVideoSubtitleManagerImp implements b {

    public static final a f51074g = new a(null);

    private Set f51075b = new CopyOnWriteArraySet();

    private final String f51076c = ShortTvVideoSubtitleManagerImp.class.getSimpleName();

    private final n0 f51077d = o0.a(y0.c());

    private final Lazy f51078e = LazyKt.b(new Function0() {
        @Override
        public final Object invoke() {
            return ShortTvVideoSubtitleManagerImp.r();
        }
    });

    private final ShortTvVideoSubtitleManagerImp$resDownloadListener$1 f51079f = new ShortTvVideoSubtitleManagerImp$resDownloadListener$1(this);

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    private final void m(xr.a aVar, final Function1 function1) {
        String strD = aVar.d();
        if (strD == null || strD.length() == 0) {
            wf.a.C0922a.f(wf.a.f74274a, "short_tv_subtitle", this.f51076c + " checkDownloadSubtitle fail， has no shorTvId", false, 4, null);
            if (function1 != null) {
                function1.invoke(Boolean.FALSE);
                return;
            }
            return;
        }
        if (StringsKt.x(aVar.d()) == null) {
            wf.a.C0922a.z(wf.a.f74274a, "short_tv_subtitle", this.f51076c + " checkDownloadSubtitle ,shorTvId is abnormal", false, 4, null);
            if (function1 != null) {
                function1.invoke(Boolean.FALSE);
                return;
            }
            return;
        }
        if (!l.f76264a.e()) {
            wf.a.f74274a.x("short_tv_subtitle", this.f51076c + " checkDownloadSubtitle ,无网络不做检测", true);
            return;
        }
        wf.a.f74274a.c("short_tv_subtitle", this.f51076c + " checkDownloadSubtitle, name = " + aVar.h() + " subjectId:" + aVar.e() + " subtitleResId:" + aVar.g(), true);
        SubtitleDownloadManager.f52963a.e(aVar.e(), aVar.g(), null, aVar.d(), aVar.f(), 3, 0, aVar.a(), aVar.c(), aVar.b(), new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return ShortTvVideoSubtitleManagerImp.o(this.f51084a, function1, ((Boolean) obj).booleanValue());
            }
        });
    }

    static void n(ShortTvVideoSubtitleManagerImp shortTvVideoSubtitleManagerImp, xr.a aVar, Function1 function1, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            function1 = null;
        }
        shortTvVideoSubtitleManagerImp.m(aVar, function1);
    }

    public static final Unit o(ShortTvVideoSubtitleManagerImp shortTvVideoSubtitleManagerImp, Function1 function1, boolean z10) {
        k.d(shortTvVideoSubtitleManagerImp.f51077d, null, null, new ShortTvVideoSubtitleManagerImp$checkDownloadSubtitle$1$1(function1, z10, shortTvVideoSubtitleManagerImp, null), 3, null);
        return Unit.f64096a;
    }

    private final ur.d p() {
        return (ur.d) this.f51078e.getValue();
    }

    public static final String q() {
        return h.f51644a.e().getString("k_language_short_name", null);
    }

    public static final ur.d r() {
        vr.a aVarC = pq.c.f69249a.c();
        if (aVarC != null) {
            return aVarC.b();
        }
        return null;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override
    public Object a(String str, Continuation continuation) {
        ShortTvVideoSubtitleManagerImp$getSubtitleList$1 shortTvVideoSubtitleManagerImp$getSubtitleList$1;
        List list;
        if (continuation instanceof ShortTvVideoSubtitleManagerImp$getSubtitleList$1) {
            shortTvVideoSubtitleManagerImp$getSubtitleList$1 = (ShortTvVideoSubtitleManagerImp$getSubtitleList$1) continuation;
            int i10 = shortTvVideoSubtitleManagerImp$getSubtitleList$1.label;
            if ((i10 & Integer.MIN_VALUE) != 0) {
                shortTvVideoSubtitleManagerImp$getSubtitleList$1.label = i10 - Integer.MIN_VALUE;
            } else {
                shortTvVideoSubtitleManagerImp$getSubtitleList$1 = new ShortTvVideoSubtitleManagerImp$getSubtitleList$1(this, continuation);
            }
        } else {
            shortTvVideoSubtitleManagerImp$getSubtitleList$1 = new ShortTvVideoSubtitleManagerImp$getSubtitleList$1(this, continuation);
        }
        Object obj = shortTvVideoSubtitleManagerImp$getSubtitleList$1.result;
        Object objF = IntrinsicsKt.f();
        int i11 = shortTvVideoSubtitleManagerImp$getSubtitleList$1.label;
        if (i11 == 0) {
            ResultKt.b(obj);
            ArrayList arrayList = new ArrayList();
            SubtitleDownloadManager subtitleDownloadManager = SubtitleDownloadManager.f52963a;
            shortTvVideoSubtitleManagerImp$getSubtitleList$1.L$0 = arrayList;
            shortTvVideoSubtitleManagerImp$getSubtitleList$1.label = 1;
            Object objJ = subtitleDownloadManager.j(str, shortTvVideoSubtitleManagerImp$getSubtitleList$1);
            if (objJ == objF) {
                return objF;
            }
            obj = objJ;
            list = arrayList;
        } else {
            if (i11 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            list = (List) shortTvVideoSubtitleManagerImp$getSubtitleList$1.L$0;
            ResultKt.b(obj);
        }
        List list2 = (List) obj;
        if (list2 != null) {
            Iterator it = list2.iterator();
            while (it.hasNext()) {
                list.add(new xr.b((SubtitleDownloadTable) it.next()));
            }
        }
        return list;
    }

    @Override
    public void b(com.transsion.subtitle_download.a listener) {
        Intrinsics.h(listener, "listener");
        SubtitleDownloadManager.f52963a.b(listener);
    }

    @Override
    public void c(com.transsion.subtitle_download.a listener) {
        Intrinsics.h(listener, "listener");
        SubtitleDownloadManager.f52963a.s(listener);
    }

    @Override
    public void d(xr.b bean) {
        Intrinsics.h(bean, "bean");
        SubtitleDownloadManager.f52963a.d(bean.a());
    }

    @Override
    public void e(xr.a bean, Function1 function1) {
        Intrinsics.h(bean, "bean");
        m(bean, function1);
    }

    @Override
    public void f(zr.a listener) {
        Intrinsics.h(listener, "listener");
        this.f51075b.add(listener);
    }

    @Override
    public void g(zr.a listener) {
        Intrinsics.h(listener, "listener");
        this.f51075b.remove(listener);
    }

    @Override
    public void init() {
        SubtitleAppType subtitleAppType = SubtitleAppType.NOVEL;
        if (!Intrinsics.c("mb", subtitleAppType.getValue())) {
            subtitleAppType = SubtitleAppType.MB;
        }
        SubtitleDownloadManager subtitleDownloadManager = SubtitleDownloadManager.f52963a;
        subtitleDownloadManager.k(subtitleAppType);
        subtitleDownloadManager.l(new Function0() {
            @Override
            public final Object invoke() {
                return ShortTvVideoSubtitleManagerImp.q();
            }
        });
        ur.d dVarP = p();
        if (dVarP != null) {
            dVarP.l(this.f51079f);
        }
    }
}
