package androidx.compose.ui.text.style;

import kotlin.jvm.internal.DefaultConstructorMarker;

public abstract class e {

    public static final a f6057a = new a(null);

    private static final int f6058b;

    private static final int f6059c;

    private static final int f6060d;

    private static final int f6061e;

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final int a() {
            return e.f6058b;
        }

        public final int b() {
            return e.f6061e;
        }

        private a() {
        }
    }

    static {
        b.a aVar = b.f6062a;
        int iC = aVar.c();
        c.a aVar2 = c.f6067a;
        int iC2 = aVar2.c();
        d.a aVar3 = d.f6073a;
        f6058b = c(f.e(iC, iC2, aVar3.a()));
        f6059c = c(f.e(aVar.a(), aVar2.b(), aVar3.b()));
        f6060d = c(f.e(aVar.b(), aVar2.d(), aVar3.a()));
        f6061e = c(0);
    }

    public static final boolean d(int i10, int i11) {
        return i10 == i11;
    }

    public static final int e(int i10) {
        return b.d(f.f(i10));
    }

    public static final int f(int i10) {
        return c.e(f.g(i10));
    }

    public static final int g(int i10) {
        return d.c(f.h(i10));
    }

    public static String i(int i10) {
        return "LineBreak(strategy=" + ((Object) b.f(e(i10))) + ", strictness=" + ((Object) c.g(f(i10))) + ", wordBreak=" + ((Object) d.e(g(i10))) + ')';
    }

    public static final class b {

        public static final a f6062a = new a(null);

        private static final int f6063b = d(1);

        private static final int f6064c = d(2);

        private static final int f6065d = d(3);

        private static final int f6066e = d(0);

        public static final class a {
            public a(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            public final int a() {
                return b.f6065d;
            }

            public final int b() {
                return b.f6064c;
            }

            public final int c() {
                return b.f6063b;
            }

            private a() {
            }
        }

        public static final boolean e(int i10, int i11) {
            return i10 == i11;
        }

        public static String f(int i10) {
            if (e(i10, f6063b)) {
                return "Strategy.Simple";
            }
            if (e(i10, f6064c)) {
                return "Strategy.HighQuality";
            }
            if (e(i10, f6065d)) {
                return "Strategy.Balanced";
            }
            return e(i10, f6066e) ? "Strategy.Unspecified" : "Invalid";
        }

        public static int d(int i10) {
            return i10;
        }
    }

    public static final class c {

        public static final a f6067a = new a(null);

        private static final int f6068b = e(1);

        private static final int f6069c = e(2);

        private static final int f6070d = e(3);

        private static final int f6071e = e(4);

        private static final int f6072f = e(0);

        public static final class a {
            public a(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            public final int a() {
                return c.f6068b;
            }

            public final int b() {
                return c.f6069c;
            }

            public final int c() {
                return c.f6070d;
            }

            public final int d() {
                return c.f6071e;
            }

            private a() {
            }
        }

        public static final boolean f(int i10, int i11) {
            return i10 == i11;
        }

        public static String g(int i10) {
            if (f(i10, f6068b)) {
                return "Strictness.None";
            }
            if (f(i10, f6069c)) {
                return "Strictness.Loose";
            }
            if (f(i10, f6070d)) {
                return "Strictness.Normal";
            }
            if (f(i10, f6071e)) {
                return "Strictness.Strict";
            }
            return f(i10, f6072f) ? "Strictness.Unspecified" : "Invalid";
        }

        public static int e(int i10) {
            return i10;
        }
    }

    public static final class d {

        public static final a f6073a = new a(null);

        private static final int f6074b = c(1);

        private static final int f6075c = c(2);

        private static final int f6076d = c(0);

        public static final class a {
            public a(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            public final int a() {
                return d.f6074b;
            }

            public final int b() {
                return d.f6075c;
            }

            private a() {
            }
        }

        public static final boolean d(int i10, int i11) {
            return i10 == i11;
        }

        public static String e(int i10) {
            if (d(i10, f6074b)) {
                return "WordBreak.None";
            }
            if (d(i10, f6075c)) {
                return "WordBreak.Phrase";
            }
            return d(i10, f6076d) ? "WordBreak.Unspecified" : "Invalid";
        }

        public static int c(int i10) {
            return i10;
        }
    }

    private static int c(int i10) {
        return i10;
    }

    public static int h(int i10) {
        return i10;
    }
}
