package androidx.compose.ui.input.nestedscroll;

import kotlin.jvm.internal.DefaultConstructorMarker;

public abstract class e {

    public static final a f4630a = new a(null);

    private static final int f4631b;

    private static final int f4632c;

    private static final int f4633d;

    private static final int f4634e;

    private static final int f4635f;

    private static final int f4636g;

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final int a() {
            return e.f4632c;
        }

        public final int b() {
            return e.f4631b;
        }

        private a() {
        }
    }

    static {
        int iC = c(1);
        f4631b = iC;
        int iC2 = c(2);
        f4632c = iC2;
        f4633d = iC;
        f4634e = iC2;
        f4635f = c(3);
        f4636g = iC;
    }

    public static final boolean d(int i10, int i11) {
        return i10 == i11;
    }

    public static int c(int i10) {
        return i10;
    }
}
