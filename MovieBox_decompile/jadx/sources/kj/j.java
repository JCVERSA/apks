package kj;

import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

public abstract class j extends Dialog implements qi.a {

    private final Lazy f64033a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public j(Context context, int i10) {
        super(context, i10);
        Intrinsics.h(context, "context");
        this.f64033a = LazyKt.b(new Function0() {
            @Override
            public final Object invoke() {
                return j.c(this.f64032a);
            }
        });
    }

    public static final qi.b c(j jVar) {
        return jVar.d();
    }

    public abstract boolean b();

    public qi.b d() {
        return qi.a.C0863a.a(this);
    }

    public final void e() {
    }

    public void f() {
    }

    public final void g(Activity activity) {
        if (activity == null || activity.isFinishing() || activity.isDestroyed()) {
            return;
        }
        try {
            show();
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    @Override
    public qi.b getLogViewConfig() {
        return (qi.b) this.f64033a.getValue();
    }

    @Override
    protected void onStart() {
        super.onStart();
    }

    @Override
    protected void onStop() {
        super.onStop();
    }

    @Override
    public void show() {
        try {
            if (isShowing()) {
                return;
            }
            wf.a.C0922a c0922a = wf.a.f74274a;
            StringBuilder sb2 = new StringBuilder();
            sb2.append("show dialog hasShownAnyDialogInSession ");
            sb2.append(this);
            sb2.append(" :");
            k kVar = k.f64034a;
            sb2.append(kVar.b());
            wf.a.C0922a.g(c0922a, sb2.toString(), false, 2, null);
            if (!kVar.b() || b()) {
                f();
                super.show();
                kVar.c(true);
            }
        } catch (IllegalStateException e10) {
            e10.printStackTrace();
        } catch (Exception e11) {
            e11.printStackTrace();
        }
    }
}
