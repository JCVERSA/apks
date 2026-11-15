package uz;

public class k {

    int f73343a = 0;

    int f73344b = 200;

    int f73345c = 0;

    public int[] f73346d = new int[94];

    public int[] f73347e = new int[94];

    public float[] f73348f = new float[94];

    public float[] f73349g = new float[94];

    public k() {
        f();
    }

    void a() {
        for (int i10 = 0; i10 < 94; i10++) {
            float[] fArr = this.f73348f;
            float f10 = this.f73346d[i10];
            int i11 = this.f73343a;
            fArr[i10] = f10 / i11;
            this.f73349g[i10] = this.f73347e[i10] / i11;
        }
    }

    boolean b() {
        return this.f73343a > this.f73344b;
    }

    float c(float[] fArr, float f10, float[] fArr2, float f11) {
        return (f10 * d(fArr, this.f73348f)) + (f11 * d(fArr2, this.f73349g));
    }

    float d(float[] fArr, float[] fArr2) {
        float f10 = 0.0f;
        for (int i10 = 0; i10 < 94; i10++) {
            float f11 = fArr[i10] - fArr2[i10];
            f10 += f11 * f11;
        }
        return ((float) Math.sqrt(f10)) / 94.0f;
    }

    boolean e() {
        return this.f73343a > 1;
    }

    public void f() {
        this.f73343a = 0;
        this.f73345c = 0;
        for (int i10 = 0; i10 < 94; i10++) {
            int[] iArr = this.f73346d;
            this.f73347e[i10] = 0;
            iArr[i10] = 0;
        }
    }

    /* JADX WARN: Code duplicated, block: B:14:0x001b  */
    boolean g(byte[] bArr, int i10) {
        if (this.f73345c == 1) {
            return false;
        }
        int i11 = 0;
        int i12 = 0;
        while (i11 < i10) {
            int i13 = this.f73345c;
            if (1 == i13) {
                break;
            }
            if (i13 == 0) {
                byte b10 = bArr[i12];
                if ((b10 & 128) != 0) {
                    if (255 == (b10 & 255) || 161 > (b10 & 255)) {
                        this.f73345c = 1;
                    } else {
                        this.f73343a++;
                        int[] iArr = this.f73346d;
                        int i14 = (b10 & 255) - 161;
                        iArr[i14] = iArr[i14] + 1;
                        this.f73345c = 2;
                    }
                }
            } else if (i13 != 1) {
                if (i13 != 2) {
                    this.f73345c = 1;
                } else {
                    byte b11 = bArr[i12];
                    if ((b11 & 128) == 0 || 255 == (b11 & 255) || 161 > (b11 & 255)) {
                        this.f73345c = 1;
                    } else {
                        this.f73343a++;
                        int[] iArr2 = this.f73347e;
                        int i15 = (b11 & 255) - 161;
                        iArr2[i15] = iArr2[i15] + 1;
                        this.f73345c = 0;
                    }
                }
            }
            i11++;
            i12++;
        }
        return 1 != this.f73345c;
    }
}
