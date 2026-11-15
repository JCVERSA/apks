package defpackage;

public class kx8 implements cw0 {
    public static final kx8 f = new kx8("lightsaberkem128r3", 2, 128, false, false);
    public static final kx8 g = new kx8("saberkem128r3", 3, 128, false, false);
    public static final kx8 h = new kx8("firesaberkem128r3", 4, 128, false, false);
    public static final kx8 i = new kx8("lightsaberkem192r3", 2, 192, false, false);
    public static final kx8 j = new kx8("saberkem192r3", 3, 192, false, false);
    public static final kx8 k = new kx8("firesaberkem192r3", 4, 192, false, false);
    public static final kx8 l = new kx8("lightsaberkem256r3", 2, 256, false, false);
    public static final kx8 m = new kx8("saberkem256r3", 3, 256, false, false);
    public static final kx8 n = new kx8("firesaberkem256r3", 4, 256, false, false);
    public static final kx8 o = new kx8("lightsaberkem90sr3", 2, 256, true, false);
    public static final kx8 p = new kx8("saberkem90sr3", 3, 256, true, false);
    public static final kx8 q = new kx8("firesaberkem90sr3", 4, 256, true, false);
    public static final kx8 r = new kx8("ulightsaberkemr3", 2, 256, false, true);
    public static final kx8 s = new kx8("usaberkemr3", 3, 256, false, true);
    public static final kx8 t = new kx8("ufiresaberkemr3", 4, 256, false, true);
    public static final kx8 u = new kx8("ulightsaberkem90sr3", 2, 256, true, true);
    public static final kx8 v = new kx8("usaberkem90sr3", 3, 256, true, true);
    public static final kx8 w = new kx8("ufiresaberkem90sr3", 4, 256, true, true);
    public final String b;
    public final int c;
    public final int d;
    public final hx8 e;

    public kx8(String str, int i2, int i3, boolean z, boolean z2) {
        this.b = str;
        this.c = i2;
        this.d = i3;
        this.e = new hx8(i2, i3, z, z2);
    }

    public String a() {
        return this.b;
    }
}
