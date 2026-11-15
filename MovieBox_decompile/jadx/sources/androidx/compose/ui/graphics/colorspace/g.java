package androidx.compose.ui.graphics.colorspace;

public final class g {

    public static final g f4044a = new g();

    private static final float[] f4045b;

    private static final float[] f4046c;

    private static final x f4047d;

    private static final x f4048e;

    private static final Rgb f4049f;

    private static final Rgb f4050g;

    private static final Rgb f4051h;

    private static final Rgb f4052i;

    private static final Rgb f4053j;

    private static final Rgb f4054k;

    private static final Rgb f4055l;

    private static final Rgb f4056m;

    private static final Rgb f4057n;

    private static final Rgb f4058o;

    private static final Rgb f4059p;

    private static final Rgb f4060q;

    private static final Rgb f4061r;

    private static final Rgb f4062s;

    private static final c f4063t;

    private static final c f4064u;

    private static final Rgb f4065v;

    private static final c f4066w;

    private static final c[] f4067x;

    static {
        float[] fArr = {0.64f, 0.33f, 0.3f, 0.6f, 0.15f, 0.06f};
        f4045b = fArr;
        float[] fArr2 = {0.67f, 0.33f, 0.21f, 0.71f, 0.14f, 0.08f};
        f4046c = fArr2;
        x xVar = new x(2.4d, 0.9478672985781991d, 0.05213270142180095d, 0.07739938080495357d, 0.04045d, 0.0d, 0.0d, 96, null);
        f4047d = xVar;
        x xVar2 = new x(2.2d, 0.9478672985781991d, 0.05213270142180095d, 0.07739938080495357d, 0.04045d, 0.0d, 0.0d, 96, null);
        f4048e = xVar2;
        k kVar = k.f4079a;
        Rgb rgb = new Rgb("sRGB IEC61966-2.1", fArr, kVar.e(), xVar, 0);
        f4049f = rgb;
        Rgb rgb2 = new Rgb("sRGB IEC61966-2.1 (Linear)", fArr, kVar.e(), 1.0d, 0.0f, 1.0f, 1);
        f4050g = rgb2;
        Rgb rgb3 = new Rgb("scRGB-nl IEC 61966-2-2:2003", fArr, kVar.e(), null, new j() {
            @Override
            public final double a(double d10) {
                return g.c(d10);
            }
        }, new j() {
            @Override
            public final double a(double d10) {
                return g.d(d10);
            }
        }, -0.799f, 2.399f, xVar, 2);
        f4051h = rgb3;
        Rgb rgb4 = new Rgb("scRGB IEC 61966-2-2:2003", fArr, kVar.e(), 1.0d, -0.5f, 7.499f, 3);
        f4052i = rgb4;
        Rgb rgb5 = new Rgb("Rec. ITU-R BT.709-5", new float[]{0.64f, 0.33f, 0.3f, 0.6f, 0.15f, 0.06f}, kVar.e(), new x(2.2222222222222223d, 0.9099181073703367d, 0.09008189262966333d, 0.2222222222222222d, 0.081d, 0.0d, 0.0d, 96, null), 4);
        f4053j = rgb5;
        Rgb rgb6 = new Rgb("Rec. ITU-R BT.2020-1", new float[]{0.708f, 0.292f, 0.17f, 0.797f, 0.131f, 0.046f}, kVar.e(), new x(2.2222222222222223d, 0.9096697898662786d, 0.09033021013372146d, 0.2222222222222222d, 0.08145d, 0.0d, 0.0d, 96, null), 5);
        f4054k = rgb6;
        Rgb rgb7 = new Rgb("SMPTE RP 431-2-2007 DCI (P3)", new float[]{0.68f, 0.32f, 0.265f, 0.69f, 0.15f, 0.06f}, new y(0.314f, 0.351f), 2.6d, 0.0f, 1.0f, 6);
        f4055l = rgb7;
        Rgb rgb8 = new Rgb("Display P3", new float[]{0.68f, 0.32f, 0.265f, 0.69f, 0.15f, 0.06f}, kVar.e(), xVar, 7);
        f4056m = rgb8;
        Rgb rgb9 = new Rgb("NTSC (1953)", fArr2, kVar.a(), new x(2.2222222222222223d, 0.9099181073703367d, 0.09008189262966333d, 0.2222222222222222d, 0.081d, 0.0d, 0.0d, 96, null), 8);
        f4057n = rgb9;
        Rgb rgb10 = new Rgb("SMPTE-C RGB", new float[]{0.63f, 0.34f, 0.31f, 0.595f, 0.155f, 0.07f}, kVar.e(), new x(2.2222222222222223d, 0.9099181073703367d, 0.09008189262966333d, 0.2222222222222222d, 0.081d, 0.0d, 0.0d, 96, null), 9);
        f4058o = rgb10;
        Rgb rgb11 = new Rgb("Adobe RGB (1998)", new float[]{0.64f, 0.33f, 0.21f, 0.71f, 0.15f, 0.06f}, kVar.e(), 2.2d, 0.0f, 1.0f, 10);
        f4059p = rgb11;
        Rgb rgb12 = new Rgb("ROMM RGB ISO 22028-2:2013", new float[]{0.7347f, 0.2653f, 0.1596f, 0.8404f, 0.0366f, 1.0E-4f}, kVar.b(), new x(1.8d, 1.0d, 0.0d, 0.0625d, 0.031248d, 0.0d, 0.0d, 96, null), 11);
        f4060q = rgb12;
        Rgb rgb13 = new Rgb("SMPTE ST 2065-1:2012 ACES", new float[]{0.7347f, 0.2653f, 0.0f, 1.0f, 1.0E-4f, -0.077f}, kVar.d(), 1.0d, -65504.0f, 65504.0f, 12);
        f4061r = rgb13;
        Rgb rgb14 = new Rgb("Academy S-2014-004 ACEScg", new float[]{0.713f, 0.293f, 0.165f, 0.83f, 0.128f, 0.044f}, kVar.d(), 1.0d, -65504.0f, 65504.0f, 13);
        f4062s = rgb14;
        z zVar = new z("Generic XYZ", 14);
        f4063t = zVar;
        l lVar = new l("Generic L*a*b*", 15);
        f4064u = lVar;
        Rgb rgb15 = new Rgb("None", fArr, kVar.e(), xVar2, 16);
        f4065v = rgb15;
        m mVar = new m("Oklab", 17);
        f4066w = mVar;
        f4067x = new c[]{rgb, rgb2, rgb3, rgb4, rgb5, rgb6, rgb7, rgb8, rgb9, rgb10, rgb11, rgb12, rgb13, rgb14, zVar, lVar, rgb15, mVar};
    }

    private g() {
    }

    public static final double c(double d10) {
        return d.a(d10, 0.9478672985781991d, 0.05213270142180095d, 0.07739938080495357d, 0.04045d, 2.4d);
    }

    public static final double d(double d10) {
        return d.b(d10, 0.9478672985781991d, 0.05213270142180095d, 0.07739938080495357d, 0.04045d, 2.4d);
    }

    public final Rgb e() {
        return f4061r;
    }

    public final Rgb f() {
        return f4062s;
    }

    public final Rgb g() {
        return f4059p;
    }

    public final Rgb h() {
        return f4054k;
    }

    public final Rgb i() {
        return f4053j;
    }

    public final c j() {
        return f4064u;
    }

    public final c k() {
        return f4063t;
    }

    public final c[] l() {
        return f4067x;
    }

    public final Rgb m() {
        return f4055l;
    }

    public final Rgb n() {
        return f4056m;
    }

    public final Rgb o() {
        return f4051h;
    }

    public final Rgb p() {
        return f4052i;
    }

    public final Rgb q() {
        return f4050g;
    }

    public final Rgb r() {
        return f4057n;
    }

    public final float[] s() {
        return f4046c;
    }

    public final c t() {
        return f4066w;
    }

    public final Rgb u() {
        return f4060q;
    }

    public final Rgb v() {
        return f4058o;
    }

    public final Rgb w() {
        return f4049f;
    }

    public final float[] x() {
        return f4045b;
    }

    public final Rgb y() {
        return f4065v;
    }
}
