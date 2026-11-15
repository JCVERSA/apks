package androidx.compose.ui.platform;

import kotlin.jvm.internal.DefaultConstructorMarker;

public final class w2 implements v2 {

    public static final a f5564b = new a(null);

    private static final androidx.compose.runtime.i1 f5565c = androidx.compose.runtime.u2.c(androidx.compose.ui.input.pointer.g0.a(androidx.compose.ui.input.pointer.r.a()), null, 2, null);

    private final androidx.compose.runtime.i1 f5566a = androidx.compose.runtime.u2.c(Boolean.FALSE, null, 2, null);

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    public void a(int i10) {
        f5565c.setValue(androidx.compose.ui.input.pointer.g0.a(i10));
    }

    public void b(boolean z10) {
        this.f5566a.setValue(Boolean.valueOf(z10));
    }
}
