package b;

import java.util.Arrays;

public final class b {

    public final a f237c;

    public f f235a = null;

    public float f236b = 0.0f;

    public boolean f238d = false;

    public b(c cVar) {
        this.f237c = new a(this, cVar);
    }

    public final void a(f fVar, f fVar2, int i2, float f2, f fVar3, f fVar4, int i3) {
        a aVar = this.f237c;
        if (fVar2 == fVar3) {
            aVar.c(fVar, 1.0f);
            aVar.c(fVar4, 1.0f);
            aVar.c(fVar2, -2.0f);
            return;
        }
        if (f2 == 0.5f) {
            aVar.c(fVar, 1.0f);
            aVar.c(fVar2, -1.0f);
            aVar.c(fVar3, -1.0f);
            aVar.c(fVar4, 1.0f);
            if (i2 > 0 || i3 > 0) {
                this.f236b = (-i2) + i3;
                return;
            }
            return;
        }
        float f3 = 1.0f - f2;
        aVar.c(fVar, f3 * 1.0f);
        aVar.c(fVar2, f3 * (-1.0f));
        aVar.c(fVar3, (-1.0f) * f2);
        aVar.c(fVar4, 1.0f * f2);
        if (i2 > 0 || i3 > 0) {
            this.f236b = (i3 * f2) + ((-i2) * f3);
        }
    }

    public final void b(float f2, float f3, float f4, f fVar, int i2, f fVar2, int i3, f fVar3, int i4, f fVar4, int i5) {
        a aVar = this.f237c;
        if (f3 == 0.0f || f2 == f4) {
            this.f236b = ((-i2) - i3) + i4 + i5;
            aVar.c(fVar, 1.0f);
            aVar.c(fVar2, -1.0f);
            aVar.c(fVar4, 1.0f);
            aVar.c(fVar3, -1.0f);
            return;
        }
        float f5 = (f2 / f3) / (f4 / f3);
        this.f236b = (i5 * f5) + (i4 * f5) + ((-i2) - i3);
        aVar.c(fVar, 1.0f);
        aVar.c(fVar2, -1.0f);
        aVar.c(fVar4, f5);
        aVar.c(fVar3, -f5);
    }

    public final void c(f fVar, int i2) {
        a aVar = this.f237c;
        if (i2 < 0) {
            this.f236b = i2 * (-1);
            aVar.c(fVar, 1.0f);
        } else {
            this.f236b = i2;
            aVar.c(fVar, -1.0f);
        }
    }

    public final void d(f fVar, f fVar2, int i2) {
        boolean z2 = false;
        if (i2 != 0) {
            if (i2 < 0) {
                i2 *= -1;
                z2 = true;
            }
            this.f236b = i2;
        }
        a aVar = this.f237c;
        if (z2) {
            aVar.c(fVar, 1.0f);
            aVar.c(fVar2, -1.0f);
        } else {
            aVar.c(fVar, -1.0f);
            aVar.c(fVar2, 1.0f);
        }
    }

    public final void e(f fVar, f fVar2, f fVar3, int i2) {
        boolean z2 = false;
        if (i2 != 0) {
            if (i2 < 0) {
                i2 *= -1;
                z2 = true;
            }
            this.f236b = i2;
        }
        a aVar = this.f237c;
        if (z2) {
            aVar.c(fVar, 1.0f);
            aVar.c(fVar2, -1.0f);
            aVar.c(fVar3, -1.0f);
        } else {
            aVar.c(fVar, -1.0f);
            aVar.c(fVar2, 1.0f);
            aVar.c(fVar3, 1.0f);
        }
    }

    public final void f(f fVar, f fVar2, f fVar3, int i2) {
        boolean z2 = false;
        if (i2 != 0) {
            if (i2 < 0) {
                i2 *= -1;
                z2 = true;
            }
            this.f236b = i2;
        }
        a aVar = this.f237c;
        if (z2) {
            aVar.c(fVar, 1.0f);
            aVar.c(fVar2, -1.0f);
            aVar.c(fVar3, 1.0f);
        } else {
            aVar.c(fVar, -1.0f);
            aVar.c(fVar2, 1.0f);
            aVar.c(fVar3, -1.0f);
        }
    }

    public final void g(f fVar) {
        f fVar2 = this.f235a;
        a aVar = this.f237c;
        if (fVar2 != null) {
            aVar.c(fVar2, -1.0f);
            this.f235a = null;
        }
        float fD = aVar.d(fVar) * (-1.0f);
        this.f235a = fVar;
        if (fD == 1.0f) {
            return;
        }
        this.f236b /= fD;
        int i2 = aVar.f232h;
        for (int i3 = 0; i2 != -1 && i3 < aVar.f225a; i3++) {
            float[] fArr = aVar.f231g;
            fArr[i2] = fArr[i2] / fD;
            i2 = aVar.f230f[i2];
        }
    }

    public final void h() {
        a aVar = this.f237c;
        int i2 = aVar.f232h;
        for (int i3 = 0; i2 != -1 && i3 < aVar.f225a; i3++) {
            f fVar = ((f[]) aVar.f227c.f243e)[aVar.f229e[i2]];
            int i4 = 0;
            while (true) {
                int i5 = fVar.f265g;
                if (i4 >= i5) {
                    b[] bVarArr = fVar.f264f;
                    if (i5 >= bVarArr.length) {
                        fVar.f264f = (b[]) Arrays.copyOf(bVarArr, bVarArr.length * 2);
                    }
                    b[] bVarArr2 = fVar.f264f;
                    int i6 = fVar.f265g;
                    bVarArr2[i6] = this;
                    fVar.f265g = i6 + 1;
                    break;
                }
                if (fVar.f264f[i4] == this) {
                    break;
                } else {
                    i4++;
                }
            }
            i2 = aVar.f230f[i2];
        }
    }

    public final String toString() {
        boolean z2;
        f fVar;
        float f2;
        String str = (this.f235a == null ? "0" : "" + this.f235a) + " = ";
        if (this.f236b != 0.0f) {
            str = str + this.f236b;
            z2 = true;
        } else {
            z2 = false;
        }
        a aVar = this.f237c;
        int i2 = aVar.f225a;
        for (int i3 = 0; i3 < i2; i3++) {
            int i4 = aVar.f232h;
            int i5 = 0;
            while (true) {
                if (i4 == -1 || i5 >= aVar.f225a) {
                    fVar = null;
                    break;
                }
                if (i5 == i3) {
                    fVar = ((f[]) aVar.f227c.f243e)[aVar.f229e[i4]];
                    break;
                }
                i4 = aVar.f230f[i4];
                i5++;
            }
            if (fVar != null) {
                int i6 = aVar.f232h;
                int i7 = 0;
                while (true) {
                    if (i6 == -1 || i7 >= aVar.f225a) {
                        f2 = 0.0f;
                        break;
                    }
                    if (i7 == i3) {
                        f2 = aVar.f231g[i6];
                        break;
                    }
                    i6 = aVar.f230f[i6];
                    i7++;
                }
                if (z2) {
                    if (f2 > 0.0f) {
                        str = str + " + ";
                    } else {
                        str = str + " - ";
                        f2 *= -1.0f;
                    }
                } else if (f2 < 0.0f) {
                    str = str + "- ";
                    f2 *= -1.0f;
                }
                str = f2 == 1.0f ? str + "null" : str + f2 + " null";
                z2 = true;
            }
        }
        if (z2) {
            return str;
        }
        return str + "0.0";
    }
}
