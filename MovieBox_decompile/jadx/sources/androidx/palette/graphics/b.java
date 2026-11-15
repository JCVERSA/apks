package androidx.palette.graphics;

public final class b {

    public static final b f13696e;

    public static final b f13697f;

    public static final b f13698g;

    public static final b f13699h;

    public static final b f13700i;

    public static final b f13701j;

    final float[] f13702a;

    final float[] f13703b;

    final float[] f13704c = new float[3];

    boolean f13705d = true;

    static {
        b bVar = new b();
        f13696e = bVar;
        m(bVar);
        p(bVar);
        b bVar2 = new b();
        f13697f = bVar2;
        o(bVar2);
        p(bVar2);
        b bVar3 = new b();
        f13698g = bVar3;
        l(bVar3);
        p(bVar3);
        b bVar4 = new b();
        f13699h = bVar4;
        m(bVar4);
        n(bVar4);
        b bVar5 = new b();
        f13700i = bVar5;
        o(bVar5);
        n(bVar5);
        b bVar6 = new b();
        f13701j = bVar6;
        l(bVar6);
        n(bVar6);
    }

    b() {
        float[] fArr = new float[3];
        this.f13702a = fArr;
        float[] fArr2 = new float[3];
        this.f13703b = fArr2;
        r(fArr);
        r(fArr2);
        q();
    }

    private static void l(b bVar) {
        float[] fArr = bVar.f13703b;
        fArr[1] = 0.26f;
        fArr[2] = 0.45f;
    }

    private static void m(b bVar) {
        float[] fArr = bVar.f13703b;
        fArr[0] = 0.55f;
        fArr[1] = 0.74f;
    }

    private static void n(b bVar) {
        float[] fArr = bVar.f13702a;
        fArr[1] = 0.3f;
        fArr[2] = 0.4f;
    }

    private static void o(b bVar) {
        float[] fArr = bVar.f13703b;
        fArr[0] = 0.3f;
        fArr[1] = 0.5f;
        fArr[2] = 0.7f;
    }

    private static void p(b bVar) {
        float[] fArr = bVar.f13702a;
        fArr[0] = 0.35f;
        fArr[1] = 1.0f;
    }

    private void q() {
        float[] fArr = this.f13704c;
        fArr[0] = 0.24f;
        fArr[1] = 0.52f;
        fArr[2] = 0.24f;
    }

    private static void r(float[] fArr) {
        fArr[0] = 0.0f;
        fArr[1] = 0.5f;
        fArr[2] = 1.0f;
    }

    public float a() {
        return this.f13704c[1];
    }

    public float b() {
        return this.f13703b[2];
    }

    public float c() {
        return this.f13702a[2];
    }

    public float d() {
        return this.f13703b[0];
    }

    public float e() {
        return this.f13702a[0];
    }

    public float f() {
        return this.f13704c[2];
    }

    public float g() {
        return this.f13704c[0];
    }

    public float h() {
        return this.f13703b[1];
    }

    public float i() {
        return this.f13702a[1];
    }

    public boolean j() {
        return this.f13705d;
    }

    void k() {
        int length = this.f13704c.length;
        float f10 = 0.0f;
        for (int i10 = 0; i10 < length; i10++) {
            float f11 = this.f13704c[i10];
            if (f11 > 0.0f) {
                f10 += f11;
            }
        }
        if (f10 != 0.0f) {
            int length2 = this.f13704c.length;
            for (int i11 = 0; i11 < length2; i11++) {
                float[] fArr = this.f13704c;
                float f12 = fArr[i11];
                if (f12 > 0.0f) {
                    fArr[i11] = f12 / f10;
                }
            }
        }
    }
}
