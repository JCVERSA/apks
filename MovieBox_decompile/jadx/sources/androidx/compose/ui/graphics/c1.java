package androidx.compose.ui.graphics;

import kotlin.jvm.internal.DefaultConstructorMarker;

public abstract class c1 {

    public static final a f3983a = new a(null);

    private static final int f3984b = D(0);

    private static final int f3985c = D(1);

    private static final int f3986d = D(2);

    private static final int f3987e = D(3);

    private static final int f3988f = D(4);

    private static final int f3989g = D(5);

    private static final int f3990h = D(6);

    private static final int f3991i = D(7);

    private static final int f3992j = D(8);

    private static final int f3993k = D(9);

    private static final int f3994l = D(10);

    private static final int f3995m = D(11);

    private static final int f3996n = D(12);

    private static final int f3997o = D(13);

    private static final int f3998p = D(14);

    private static final int f3999q = D(15);

    private static final int f4000r = D(16);

    private static final int f4001s = D(17);

    private static final int f4002t = D(18);

    private static final int f4003u = D(19);

    private static final int f4004v = D(20);

    private static final int f4005w = D(21);

    private static final int f4006x = D(22);

    private static final int f4007y = D(23);

    private static final int f4008z = D(24);
    private static final int A = D(25);
    private static final int B = D(26);
    private static final int C = D(27);
    private static final int D = D(28);

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final int A() {
            return c1.f3991i;
        }

        public final int B() {
            return c1.f3987e;
        }

        public final int C() {
            return c1.f3995m;
        }

        public final int a() {
            return c1.f3984b;
        }

        public final int b() {
            return c1.C;
        }

        public final int c() {
            return c1.f4003u;
        }

        public final int d() {
            return c1.f4002t;
        }

        public final int e() {
            return c1.f4000r;
        }

        public final int f() {
            return c1.f4006x;
        }

        public final int g() {
            return c1.f3986d;
        }

        public final int h() {
            return c1.f3994l;
        }

        public final int i() {
            return c1.f3990h;
        }

        public final int j() {
            return c1.f3992j;
        }

        public final int k() {
            return c1.f3988f;
        }

        public final int l() {
            return c1.f4007y;
        }

        public final int m() {
            return c1.f4004v;
        }

        public final int n() {
            return c1.A;
        }

        public final int o() {
            return c1.f4001s;
        }

        public final int p() {
            return c1.D;
        }

        public final int q() {
            return c1.f3997o;
        }

        public final int r() {
            return c1.f4008z;
        }

        public final int s() {
            return c1.f3999q;
        }

        public final int t() {
            return c1.f3996n;
        }

        public final int u() {
            return c1.B;
        }

        public final int v() {
            return c1.f3998p;
        }

        public final int w() {
            return c1.f4005w;
        }

        public final int x() {
            return c1.f3985c;
        }

        public final int y() {
            return c1.f3993k;
        }

        public final int z() {
            return c1.f3989g;
        }

        private a() {
        }
    }

    public static final boolean E(int i10, int i11) {
        return i10 == i11;
    }

    public static String G(int i10) {
        if (E(i10, f3984b)) {
            return "Clear";
        }
        if (E(i10, f3985c)) {
            return "Src";
        }
        if (E(i10, f3986d)) {
            return "Dst";
        }
        if (E(i10, f3987e)) {
            return "SrcOver";
        }
        if (E(i10, f3988f)) {
            return "DstOver";
        }
        if (E(i10, f3989g)) {
            return "SrcIn";
        }
        if (E(i10, f3990h)) {
            return "DstIn";
        }
        if (E(i10, f3991i)) {
            return "SrcOut";
        }
        if (E(i10, f3992j)) {
            return "DstOut";
        }
        if (E(i10, f3993k)) {
            return "SrcAtop";
        }
        if (E(i10, f3994l)) {
            return "DstAtop";
        }
        if (E(i10, f3995m)) {
            return "Xor";
        }
        if (E(i10, f3996n)) {
            return "Plus";
        }
        if (E(i10, f3997o)) {
            return "Modulate";
        }
        if (E(i10, f3998p)) {
            return "Screen";
        }
        if (E(i10, f3999q)) {
            return "Overlay";
        }
        if (E(i10, f4000r)) {
            return "Darken";
        }
        if (E(i10, f4001s)) {
            return "Lighten";
        }
        if (E(i10, f4002t)) {
            return "ColorDodge";
        }
        if (E(i10, f4003u)) {
            return "ColorBurn";
        }
        if (E(i10, f4004v)) {
            return "HardLight";
        }
        if (E(i10, f4005w)) {
            return "Softlight";
        }
        if (E(i10, f4006x)) {
            return "Difference";
        }
        if (E(i10, f4007y)) {
            return "Exclusion";
        }
        if (E(i10, f4008z)) {
            return "Multiply";
        }
        if (E(i10, A)) {
            return "Hue";
        }
        if (E(i10, B)) {
            return "Saturation";
        }
        if (E(i10, C)) {
            return "Color";
        }
        return E(i10, D) ? "Luminosity" : "Unknown";
    }

    public static int D(int i10) {
        return i10;
    }

    public static int F(int i10) {
        return i10;
    }
}
