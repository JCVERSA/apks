package b;

import java.util.Arrays;

public final class a {

    public final b f226b;

    public final c f227c;

    public int f225a = 0;

    public int f228d = 8;

    public int[] f229e = new int[8];

    public int[] f230f = new int[8];

    public float[] f231g = new float[8];

    public int f232h = -1;

    public int f233i = -1;

    public boolean f234j = false;

    public a(b bVar, c cVar) {
        this.f226b = bVar;
        this.f227c = cVar;
    }

    public final void a(f fVar, float f2) {
        if (f2 == 0.0f) {
            return;
        }
        int i2 = this.f232h;
        if (i2 == -1) {
            this.f232h = 0;
            this.f231g[0] = f2;
            this.f229e[0] = fVar.f259a;
            this.f230f[0] = -1;
            this.f225a++;
            if (this.f234j) {
                return;
            }
            this.f233i++;
            return;
        }
        int i3 = -1;
        for (int i4 = 0; i2 != -1 && i4 < this.f225a; i4++) {
            int i5 = this.f229e[i2];
            int i6 = fVar.f259a;
            if (i5 == i6) {
                float[] fArr = this.f231g;
                float f3 = fArr[i2] + f2;
                fArr[i2] = f3;
                if (f3 == 0.0f) {
                    if (i2 == this.f232h) {
                        this.f232h = this.f230f[i2];
                    } else {
                        int[] iArr = this.f230f;
                        iArr[i3] = iArr[i2];
                    }
                    ((f[]) this.f227c.f243e)[i5].a(this.f226b);
                    if (this.f234j) {
                        this.f233i = i2;
                    }
                    this.f225a--;
                    return;
                }
                return;
            }
            if (i5 < i6) {
                i3 = i2;
            }
            i2 = this.f230f[i2];
        }
        int length = this.f233i;
        int i7 = length + 1;
        if (this.f234j) {
            int[] iArr2 = this.f229e;
            if (iArr2[length] != -1) {
                length = iArr2.length;
            }
        } else {
            length = i7;
        }
        int[] iArr3 = this.f229e;
        if (length >= iArr3.length && this.f225a < iArr3.length) {
            int i8 = 0;
            while (true) {
                int[] iArr4 = this.f229e;
                if (i8 >= iArr4.length) {
                    break;
                }
                if (iArr4[i8] == -1) {
                    length = i8;
                    break;
                }
                i8++;
            }
        }
        int[] iArr5 = this.f229e;
        if (length >= iArr5.length) {
            length = iArr5.length;
            int i9 = this.f228d * 2;
            this.f228d = i9;
            this.f234j = false;
            this.f233i = length - 1;
            this.f231g = Arrays.copyOf(this.f231g, i9);
            this.f229e = Arrays.copyOf(this.f229e, this.f228d);
            this.f230f = Arrays.copyOf(this.f230f, this.f228d);
        }
        int[] iArr6 = this.f229e;
        iArr6[length] = fVar.f259a;
        this.f231g[length] = f2;
        if (i3 != -1) {
            int[] iArr7 = this.f230f;
            iArr7[length] = iArr7[i3];
            iArr7[i3] = length;
        } else {
            this.f230f[length] = this.f232h;
            this.f232h = length;
        }
        this.f225a++;
        if (!this.f234j) {
            this.f233i++;
        }
        if (this.f233i >= iArr6.length) {
            this.f234j = true;
            this.f233i = iArr6.length - 1;
        }
    }

    public final float b(f fVar) {
        int i2 = this.f232h;
        for (int i3 = 0; i2 != -1 && i3 < this.f225a; i3++) {
            if (this.f229e[i2] == fVar.f259a) {
                return this.f231g[i2];
            }
            i2 = this.f230f[i2];
        }
        return 0.0f;
    }

    public final void c(f fVar, float f2) {
        if (f2 == 0.0f) {
            d(fVar);
            return;
        }
        int i2 = this.f232h;
        if (i2 == -1) {
            this.f232h = 0;
            this.f231g[0] = f2;
            this.f229e[0] = fVar.f259a;
            this.f230f[0] = -1;
            this.f225a++;
            if (this.f234j) {
                return;
            }
            this.f233i++;
            return;
        }
        int i3 = -1;
        for (int i4 = 0; i2 != -1 && i4 < this.f225a; i4++) {
            int i5 = this.f229e[i2];
            int i6 = fVar.f259a;
            if (i5 == i6) {
                this.f231g[i2] = f2;
                return;
            }
            if (i5 < i6) {
                i3 = i2;
            }
            i2 = this.f230f[i2];
        }
        int length = this.f233i;
        int i7 = length + 1;
        if (this.f234j) {
            int[] iArr = this.f229e;
            if (iArr[length] != -1) {
                length = iArr.length;
            }
        } else {
            length = i7;
        }
        int[] iArr2 = this.f229e;
        if (length >= iArr2.length && this.f225a < iArr2.length) {
            int i8 = 0;
            while (true) {
                int[] iArr3 = this.f229e;
                if (i8 >= iArr3.length) {
                    break;
                }
                if (iArr3[i8] == -1) {
                    length = i8;
                    break;
                }
                i8++;
            }
        }
        int[] iArr4 = this.f229e;
        if (length >= iArr4.length) {
            length = iArr4.length;
            int i9 = this.f228d * 2;
            this.f228d = i9;
            this.f234j = false;
            this.f233i = length - 1;
            this.f231g = Arrays.copyOf(this.f231g, i9);
            this.f229e = Arrays.copyOf(this.f229e, this.f228d);
            this.f230f = Arrays.copyOf(this.f230f, this.f228d);
        }
        int[] iArr5 = this.f229e;
        iArr5[length] = fVar.f259a;
        this.f231g[length] = f2;
        if (i3 != -1) {
            int[] iArr6 = this.f230f;
            iArr6[length] = iArr6[i3];
            iArr6[i3] = length;
        } else {
            this.f230f[length] = this.f232h;
            this.f232h = length;
        }
        int i10 = this.f225a + 1;
        this.f225a = i10;
        if (!this.f234j) {
            this.f233i++;
        }
        if (i10 >= iArr5.length) {
            this.f234j = true;
        }
    }

    public final float d(f fVar) {
        int i2 = this.f232h;
        if (i2 == -1) {
            return 0.0f;
        }
        int i3 = 0;
        int i4 = -1;
        while (i2 != -1 && i3 < this.f225a) {
            int i5 = this.f229e[i2];
            if (i5 == fVar.f259a) {
                if (i2 == this.f232h) {
                    this.f232h = this.f230f[i2];
                } else {
                    int[] iArr = this.f230f;
                    iArr[i4] = iArr[i2];
                }
                ((f[]) this.f227c.f243e)[i5].a(this.f226b);
                this.f225a--;
                this.f229e[i2] = -1;
                if (this.f234j) {
                    this.f233i = i2;
                }
                return this.f231g[i2];
            }
            i3++;
            i4 = i2;
            i2 = this.f230f[i2];
        }
        return 0.0f;
    }

    public final void e(b bVar, b bVar2) {
        int i2 = this.f232h;
        while (true) {
            for (int i3 = 0; i2 != -1 && i3 < this.f225a; i3++) {
                int i4 = this.f229e[i2];
                f fVar = bVar2.f235a;
                if (i4 == fVar.f259a) {
                    float f2 = this.f231g[i2];
                    d(fVar);
                    a aVar = bVar2.f237c;
                    int i5 = aVar.f232h;
                    for (int i6 = 0; i5 != -1 && i6 < aVar.f225a; i6++) {
                        a(((f[]) this.f227c.f243e)[aVar.f229e[i5]], aVar.f231g[i5] * f2);
                        i5 = aVar.f230f[i5];
                    }
                    bVar.f236b = (bVar2.f236b * f2) + bVar.f236b;
                    bVar2.f235a.a(bVar);
                    i2 = this.f232h;
                } else {
                    i2 = this.f230f[i2];
                }
            }
            return;
        }
    }

    public final void f(b bVar, b[] bVarArr) {
        int i2 = this.f232h;
        while (true) {
            for (int i3 = 0; i2 != -1 && i3 < this.f225a; i3++) {
                c cVar = this.f227c;
                f fVar = ((f[]) cVar.f243e)[this.f229e[i2]];
                if (fVar.f260b != -1) {
                    float f2 = this.f231g[i2];
                    d(fVar);
                    b bVar2 = bVarArr[fVar.f260b];
                    if (!bVar2.f238d) {
                        a aVar = bVar2.f237c;
                        int i4 = aVar.f232h;
                        for (int i5 = 0; i4 != -1 && i5 < aVar.f225a; i5++) {
                            a(((f[]) cVar.f243e)[aVar.f229e[i4]], aVar.f231g[i4] * f2);
                            i4 = aVar.f230f[i4];
                        }
                    }
                    bVar.f236b = (bVar2.f236b * f2) + bVar.f236b;
                    bVar2.f235a.a(bVar);
                    i2 = this.f232h;
                } else {
                    i2 = this.f230f[i2];
                }
            }
            return;
        }
    }

    public final String toString() {
        int i2 = this.f232h;
        String str = "";
        for (int i3 = 0; i2 != -1 && i3 < this.f225a; i3++) {
            str = ((str + " -> ") + this.f231g[i2] + " : ") + ((f[]) this.f227c.f243e)[this.f229e[i2]];
            i2 = this.f230f[i2];
        }
        return str;
    }
}
