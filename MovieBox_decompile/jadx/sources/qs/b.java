package qs;

import android.app.Application;
import com.transsion.shorttv.R$layout;
import com.transsion.shorttv_pugc.base.widget.toast.core.h;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

public final class b implements ns.a {

    public static final a f70230a = new a(null);

    private static final Lazy f70231b = LazyKt.a(LazyThreadSafetyMode.SYNCHRONIZED, new Function0() {
        @Override
        public final Object invoke() {
            return b.g();
        }
    });

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final b a() {
            return (b) b.f70231b.getValue();
        }

        public final void b(Application application) {
            Intrinsics.h(application, "application");
            h.b(h.f51960a, application, null, 2, null);
        }

        private a() {
        }
    }

    private final void f(CharSequence charSequence, int i10, int i11, int i12, int i13, int i14) {
        if (i14 != 0) {
            h.f51960a.g(i14);
        } else {
            h.f51960a.g(R$layout.short_tv_base_common_toast_layout);
        }
        if (i11 != 0 || i12 != 0 || i13 != 0) {
            h.f51960a.c(i11, i12, i13);
        }
        if (i10 != 0) {
            h.f51960a.h(i10);
        } else {
            h.f51960a.i(charSequence);
        }
    }

    public static final b g() {
        return new b();
    }

    @Override
    public void a(int i10) {
        f("", i10, 0, 0, 0, 0);
    }

    @Override
    public void b(CharSequence charSequence) {
        f(charSequence, 0, 0, 0, 0, 0);
    }

    @Override
    public void c(int i10, CharSequence text, int i11, int i12, int i13) {
        Intrinsics.h(text, "text");
        f(text, 0, i11, i12, i13, i10);
    }
}
