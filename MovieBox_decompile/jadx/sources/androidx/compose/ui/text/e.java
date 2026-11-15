package androidx.compose.ui.text;

import kotlin.jvm.internal.DefaultConstructorMarker;

public final class e {

    public static final a f5783b = new a(null);

    private static final int f5784c = e(0);

    private static final int f5785d = e(1);

    private static final int f5786e = e(2);

    private final int f5787a;

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final int a() {
            return e.f5786e;
        }

        public final int b() {
            return e.f5784c;
        }

        public final int c() {
            return e.f5785d;
        }

        private a() {
        }
    }

    private e(int i10) {
        this.f5787a = i10;
    }

    public static final e d(int i10) {
        return new e(i10);
    }

    public static boolean f(int i10, Object obj) {
        return (obj instanceof e) && i10 == ((e) obj).j();
    }

    public static final boolean g(int i10, int i11) {
        return i10 == i11;
    }

    public static String i(int i10) {
        if (i10 == f5784c) {
            return "EmojiSupportMatch.Default";
        }
        if (i10 == f5785d) {
            return "EmojiSupportMatch.None";
        }
        if (i10 == f5786e) {
            return "EmojiSupportMatch.All";
        }
        return "Invalid(value=" + i10 + ')';
    }

    public boolean equals(Object obj) {
        return f(this.f5787a, obj);
    }

    public int hashCode() {
        return h(this.f5787a);
    }

    public final int j() {
        return this.f5787a;
    }

    public String toString() {
        return i(this.f5787a);
    }

    private static int e(int i10) {
        return i10;
    }

    public static int h(int i10) {
        return i10;
    }
}
