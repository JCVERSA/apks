package ih;

import android.app.Application;
import com.tn.lib.widget.R$layout;
import com.tn.lib.widget.toast.core.h;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

public final class b implements fh.a {

    public static final a f62091a = new a(null);

    private static final Lazy f62092b = LazyKt.a(LazyThreadSafetyMode.SYNCHRONIZED, new Function0() {
        @Override
        public final Object invoke() {
            return b.h();
        }
    });

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final b a() {
            return (b) b.f62092b.getValue();
        }

        public final void b(Application application) {
            Intrinsics.h(application, "application");
            h.c(h.f40484a, application, null, 2, null);
        }

        private a() {
        }
    }

    private final void g(CharSequence charSequence, int i10, int i11, int i12, int i13, int i14) {
        if (i14 != 0) {
            h.f40484a.j(i14);
        } else {
            h.f40484a.j(R$layout.libui_common_toast_layout);
        }
        if (i11 != 0 || i12 != 0 || i13 != 0) {
            h.f40484a.f(i11, i12, i13);
        }
        if (i10 != 0) {
            h.f40484a.k(i10);
        } else {
            h.f40484a.l(charSequence);
        }
    }

    public static final b h() {
        return new b();
    }

    @Override
    public void a(int i10) {
        g("", i10, 0, 0, 0, 0);
    }

    @Override
    public void b(CharSequence charSequence) {
        g(charSequence, 0, 0, 0, 0, 0);
    }

    @Override
    public void c(int i10, CharSequence text, int i11, int i12, int i13) {
        Intrinsics.h(text, "text");
        g(text, 0, i11, i12, i13, i10);
    }

    @Override
    public void d(CharSequence charSequence, int i10) {
        g(charSequence, 0, i10, 0, 0, 0);
    }
}
