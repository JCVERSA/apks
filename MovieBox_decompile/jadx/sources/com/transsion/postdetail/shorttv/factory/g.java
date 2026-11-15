package com.transsion.postdetail.shorttv.factory;

import android.os.Build;
import android.view.ViewGroup;
import androidx.fragment.app.FragmentActivity;
import com.transsion.moviedetailapi.SubjectType;
import com.transsion.postdetail.util.ShortTVFloatManager;
import com.transsion.videofloat.bean.FloatActionType;
import com.transsion.videofloat.bean.FloatPlayType;
import com.transsion.videofloat.manager.a0;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

public final class g implements ur.g {

    public static final class a implements gw.a {
        a() {
        }

        @Override
        public boolean a(dw.a aVar) {
            return ShortTVFloatManager.f48058b.r(aVar);
        }

        @Override
        public void b(dw.a aVar) {
            ShortTVFloatManager shortTVFloatManager = ShortTVFloatManager.f48058b;
            shortTVFloatManager.o();
            shortTVFloatManager.t(aVar);
        }

        @Override
        public void c(dw.a aVar) {
            gw.a.C0742a.a(this, aVar);
            ShortTVFloatManager.f48058b.p(aVar);
        }
    }

    private final dw.a j(nr.j jVar) {
        dw.a aVar = new dw.a(jVar.g(), jVar.c(), null, FloatPlayType.SHORT_TV, jVar.i(), jVar.h(), jVar.a(), "", jVar.e());
        aVar.J(Integer.valueOf(SubjectType.SHORT_TV.getValue()));
        aVar.A(jVar.b());
        aVar.B(jVar.d());
        return aVar;
    }

    public static final Unit k(FragmentActivity fragmentActivity, boolean z10) {
        if (z10) {
            fragmentActivity.finish();
        }
        return Unit.f64096a;
    }

    @Override
    public void a(FragmentActivity activity, boolean z10, boolean z11, ViewGroup viewGroup) {
        Intrinsics.h(activity, "activity");
        cw.e.a aVar = cw.e.f58665a;
        if (aVar.b().c() && com.transsion.baselib.report.launch.b.f42221a.b().getBoolean("k_pip_enable", true)) {
            aVar.b().a(activity, true, z11, viewGroup);
        }
    }

    @Override
    public void b(FragmentActivity activity, String subjectId, String pageName, String str) {
        Intrinsics.h(activity, "activity");
        Intrinsics.h(subjectId, "subjectId");
        Intrinsics.h(pageName, "pageName");
        cw.b.f58659a.c().f(activity, subjectId, null, pageName, str);
    }

    @Override
    public void c() {
        cw.b.C0694b.a(cw.b.f58659a.c(), false, 1, null);
    }

    @Override
    public com.transsion.player.orplayer.f d(String str) {
        if (str == null || str.length() == 0) {
            return null;
        }
        return a0.f55763a.b(ShortTVFloatManager.f48058b.k(str));
    }

    @Override
    public boolean e(com.transsion.player.orplayer.f fVar) {
        return a0.f55763a.c(fVar);
    }

    @Override
    public boolean f(com.transsion.player.orplayer.f fVar) {
        return cw.c.f58664a.c(fVar);
    }

    @Override
    public void g(boolean z10, FragmentActivity fragmentActivity, nr.j bean) {
        Intrinsics.h(bean, "bean");
        if (z10) {
            if (fragmentActivity == null || fragmentActivity.isDestroyed() || fragmentActivity.isFinishing()) {
                return;
            }
            dw.a aVarJ = j(bean);
            if (Build.VERSION.SDK_INT >= 31) {
                cw.e.f58665a.b().h(fragmentActivity, aVarJ);
            }
        }
        cw.e.f58665a.b().onPipModeChanged(z10);
    }

    @Override
    public void h(final FragmentActivity activity, nr.j bean) {
        Intrinsics.h(activity, "activity");
        Intrinsics.h(bean, "bean");
        dw.a aVarJ = j(bean);
        if (!com.transsion.baselib.report.launch.b.f42221a.b().getBoolean("k_pip_enable", true)) {
            wf.a.f74274a.c("VideoFloat", "shottv 设置页pip开关被关闭了", true);
            return;
        }
        cw.e.a aVar = cw.e.f58665a;
        if (aVar.b().c()) {
            wf.a.f74274a.c("VideoFloat-pip", "shottv 当前可用画中画，使用画中画播放", true);
            aVar.b().d(activity, aVarJ, FloatActionType.HOME, false);
        } else {
            ShortTVFloatManager.f48058b.w(bean.f());
            cw.b.f58659a.c().e(activity, aVarJ, false, false, new Function1() {
                @Override
                public final Object invoke(Object obj) {
                    return g.k(activity, ((Boolean) obj).booleanValue());
                }
            }, new a());
        }
    }
}
