package androidx.compose.ui.text.input;

import kotlin.jvm.internal.DefaultConstructorMarker;

public abstract class t {

    public static final a f5951a = new a(null);

    private static final int f5952b = e(-1);

    private static final int f5953c = e(0);

    private static final int f5954d = e(1);

    private static final int f5955e = e(2);

    private static final int f5956f = e(3);

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final int a() {
            return t.f5954d;
        }

        public final int b() {
            return t.f5953c;
        }

        public final int c() {
            return t.f5956f;
        }

        public final int d() {
            return t.f5955e;
        }

        private a() {
        }
    }

    public static final boolean f(int i10, int i11) {
        return i10 == i11;
    }

    public static String h(int i10) {
        if (f(i10, f5952b)) {
            return "Unspecified";
        }
        if (f(i10, f5953c)) {
            return "None";
        }
        if (f(i10, f5954d)) {
            return "Characters";
        }
        if (f(i10, f5955e)) {
            return "Words";
        }
        return f(i10, f5956f) ? "Sentences" : "Invalid";
    }

    private static int e(int i10) {
        return i10;
    }

    public static int g(int i10) {
        return i10;
    }
}
