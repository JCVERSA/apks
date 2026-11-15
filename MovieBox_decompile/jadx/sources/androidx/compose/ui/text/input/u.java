package androidx.compose.ui.text.input;

import kotlin.jvm.internal.DefaultConstructorMarker;

public abstract class u {

    public static final a f5957a = new a(null);

    private static final int f5958b = j(0);

    private static final int f5959c = j(1);

    private static final int f5960d = j(2);

    private static final int f5961e = j(3);

    private static final int f5962f = j(4);

    private static final int f5963g = j(5);

    private static final int f5964h = j(6);

    private static final int f5965i = j(7);

    private static final int f5966j = j(8);

    private static final int f5967k = j(9);

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final int a() {
            return u.f5960d;
        }

        public final int b() {
            return u.f5967k;
        }

        public final int c() {
            return u.f5964h;
        }

        public final int d() {
            return u.f5961e;
        }

        public final int e() {
            return u.f5966j;
        }

        public final int f() {
            return u.f5965i;
        }

        public final int g() {
            return u.f5962f;
        }

        public final int h() {
            return u.f5959c;
        }

        public final int i() {
            return u.f5963g;
        }

        private a() {
        }
    }

    public static final boolean k(int i10, int i11) {
        return i10 == i11;
    }

    public static String m(int i10) {
        if (k(i10, f5958b)) {
            return "Unspecified";
        }
        if (k(i10, f5959c)) {
            return "Text";
        }
        if (k(i10, f5960d)) {
            return "Ascii";
        }
        if (k(i10, f5961e)) {
            return "Number";
        }
        if (k(i10, f5962f)) {
            return "Phone";
        }
        if (k(i10, f5963g)) {
            return "Uri";
        }
        if (k(i10, f5964h)) {
            return "Email";
        }
        if (k(i10, f5965i)) {
            return "Password";
        }
        if (k(i10, f5966j)) {
            return "NumberPassword";
        }
        return k(i10, f5967k) ? "Decimal" : "Invalid";
    }

    private static int j(int i10) {
        return i10;
    }

    public static int l(int i10) {
        return i10;
    }
}
