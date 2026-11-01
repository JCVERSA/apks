package b;

public final class f {

    public float f262d;

    public int f263e;

    public int f259a = -1;

    public int f260b = -1;

    public int f261c = 0;

    public b[] f264f = new b[8];

    public int f265g = 0;

    public f(int i2) {
        this.f263e = i2;
    }

    public final void a(b bVar) {
        int i2 = 0;
        for (int i3 = 0; i3 < this.f265g; i3++) {
            if (this.f264f[i3] == bVar) {
                while (true) {
                    int i4 = this.f265g;
                    if (i2 >= (i4 - i3) - 1) {
                        this.f265g = i4 - 1;
                        return;
                    }
                    b[] bVarArr = this.f264f;
                    int i5 = i3 + i2;
                    bVarArr[i5] = bVarArr[i5 + 1];
                    i2++;
                }
            }
        }
    }

    public final void b() {
        this.f263e = 5;
        this.f261c = 0;
        this.f259a = -1;
        this.f260b = -1;
        this.f262d = 0.0f;
        this.f265g = 0;
    }

    public final String toString() {
        return "null";
    }
}
