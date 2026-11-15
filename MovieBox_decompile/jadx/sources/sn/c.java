package sn;

import android.app.Activity;
import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

public final class c {

    private final View f72349a;

    private final View f72350b;

    private boolean f72351c;

    private final Lazy f72352d;

    public c(View startView, View endView) {
        Intrinsics.h(startView, "startView");
        Intrinsics.h(endView, "endView");
        this.f72349a = startView;
        this.f72350b = endView;
        this.f72352d = LazyKt.b(new Function0() {
            @Override
            public final Object invoke() {
                return c.g(this.f72347a);
            }
        });
    }

    private final g e() {
        return (g) this.f72352d.getValue();
    }

    public static final g g(final c cVar) {
        Context context = cVar.f72349a.getContext();
        Intrinsics.f(context, "null cannot be cast to non-null type android.app.Activity");
        return new g((Activity) context, new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return c.h(this.f72348a, ((Integer) obj).intValue());
            }
        });
    }

    public static final Unit h(c cVar, int i10) {
        if (i10 == 0 || i10 == 1 || i10 == 3) {
            cVar.i(cVar.f72351c, i10);
        }
        return Unit.f64096a;
    }

    private final void i(boolean z10, int i10) {
        int iC = com.blankj.utilcode.util.d.c();
        int i11 = (z10 && i10 == 1) ? iC : 0;
        if (!z10 || i10 != 3) {
            iC = 0;
        }
        ViewGroup.LayoutParams layoutParams = this.f72349a.getLayoutParams();
        layoutParams.width = i11;
        this.f72349a.setLayoutParams(layoutParams);
        ViewGroup.LayoutParams layoutParams2 = this.f72350b.getLayoutParams();
        layoutParams2.width = iC;
        this.f72350b.setLayoutParams(layoutParams2);
    }

    public final void c() {
        g gVarE = e();
        if (gVarE != null) {
            gVarE.disable();
        }
    }

    public final void d() {
        g gVarE = e();
        if (gVarE != null) {
            gVarE.enable();
        }
    }

    public final void f(boolean z10) {
        this.f72351c = z10;
        i(z10, z10 ? 1 : 0);
    }
}
