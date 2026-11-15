package androidx.compose.foundation.layout;

import androidx.compose.ui.unit.LayoutDirection;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

public abstract class m {

    public static final b f2552a = new b(null);

    private static final m f2553b = a.f2556e;

    private static final m f2554c = e.f2559e;

    private static final m f2555d = c.f2557e;

    private static final class a extends m {

        public static final a f2556e = new a();

        private a() {
            super(null);
        }

        @Override
        public int a(int i10, LayoutDirection layoutDirection, androidx.compose.ui.layout.g0 g0Var, int i11) {
            return i10 / 2;
        }
    }

    public static final class b {
        public b(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final m a(androidx.compose.ui.b.InterfaceC0036b interfaceC0036b) {
            return new d(interfaceC0036b);
        }

        private b() {
        }
    }

    private static final class c extends m {

        public static final c f2557e = new c();

        private c() {
            super(null);
        }

        @Override
        public int a(int i10, LayoutDirection layoutDirection, androidx.compose.ui.layout.g0 g0Var, int i11) {
            if (layoutDirection == LayoutDirection.Ltr) {
                return i10;
            }
            return 0;
        }
    }

    private static final class d extends m {

        private final androidx.compose.ui.b.InterfaceC0036b f2558e;

        public d(androidx.compose.ui.b.InterfaceC0036b interfaceC0036b) {
            super(null);
            this.f2558e = interfaceC0036b;
        }

        @Override
        public int a(int i10, LayoutDirection layoutDirection, androidx.compose.ui.layout.g0 g0Var, int i11) {
            return this.f2558e.a(0, i10, layoutDirection);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof d) && Intrinsics.c(this.f2558e, ((d) obj).f2558e);
        }

        public int hashCode() {
            return this.f2558e.hashCode();
        }

        public String toString() {
            return "HorizontalCrossAxisAlignment(horizontal=" + this.f2558e + ')';
        }
    }

    private static final class e extends m {

        public static final e f2559e = new e();

        private e() {
            super(null);
        }

        @Override
        public int a(int i10, LayoutDirection layoutDirection, androidx.compose.ui.layout.g0 g0Var, int i11) {
            if (layoutDirection == LayoutDirection.Ltr) {
                return 0;
            }
            return i10;
        }
    }

    public m(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    public abstract int a(int i10, LayoutDirection layoutDirection, androidx.compose.ui.layout.g0 g0Var, int i11);

    public Integer b(androidx.compose.ui.layout.g0 g0Var) {
        return null;
    }

    public boolean c() {
        return false;
    }

    private m() {
    }
}
