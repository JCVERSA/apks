package mr;

import android.app.Application;
import com.transsion.shorttv.R$layout;
import com.transsion.shorttv.base.widget.toast.core.h;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

public final class b implements jr.a {

    public static final a f66686a = new a(null);

    private static final Lazy f66687b = LazyKt.a(LazyThreadSafetyMode.SYNCHRONIZED, new Function0() {
        @Override
        public final Object invoke() {
            return b.f();
        }
    });

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final b a() {
            return (b) b.f66687b.getValue();
        }

        public final void b(Application application) {
            Intrinsics.h(application, "application");
            h.b(h.f50980a, application, null, 2, null);
        }

        private a() {
        }
    }

    private final void e(CharSequence charSequence, int i10, int i11, int i12, int i13, int i14) {
        if (i14 != 0) {
            h.f50980a.g(i14);
        } else {
            h.f50980a.g(R$layout.short_tv_base_common_toast_layout);
        }
        if (i11 != 0 || i12 != 0 || i13 != 0) {
            h.f50980a.c(i11, i12, i13);
        }
        if (i10 != 0) {
            h.f50980a.h(i10);
        } else {
            h.f50980a.i(charSequence);
        }
    }

    public static final b f() {
        return new b();
    }

    @Override
    public void a(int i10) {
        e("", i10, 0, 0, 0, 0);
    }

    @Override
    public void b(CharSequence charSequence) {
        e(charSequence, 0, 0, 0, 0, 0);
    }
}
