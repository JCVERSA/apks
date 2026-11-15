package defpackage;

import com.yandex.div.core.view2.divs.pager.DivPagerAdapter;
import com.yandex.div2.DivPager;

public final class tn2 {
    public final int a;
    public final float b;
    public final un2 c;
    public final sn2 d;
    public final boolean e;
    public final DivPagerAdapter f;
    public final DivPager.ItemAlignment g;

    public tn2(int i, float f, un2 un2Var, sn2 sn2Var, boolean z, DivPagerAdapter divPagerAdapter, DivPager.ItemAlignment itemAlignment) {
        y45.j(un2Var, "pageSizeProvider");
        y45.j(sn2Var, "paddings");
        y45.j(divPagerAdapter, "adapter");
        y45.j(itemAlignment, "alignment");
        this.a = i;
        this.b = f;
        this.c = un2Var;
        this.d = sn2Var;
        this.e = z;
        this.f = divPagerAdapter;
        this.g = itemAlignment;
    }

    public final boolean a(float f, float f2) {
        return f >= Math.abs(f2);
    }

    public final boolean b(int i, int i2) {
        float fI = (this.a - this.d.i()) - this.d.f();
        Float fE = this.c.e(i);
        if (fE != null) {
            float fFloatValue = fE.floatValue();
            if (fFloatValue >= fI) {
                return false;
            }
            if (i != i2) {
                float f = this.b;
                Float fE2 = this.c.e(i2);
                if (fE2 == null) {
                    return true;
                }
                fFloatValue += f + fE2.floatValue();
                if (fFloatValue >= fI) {
                    return false;
                }
            }
            for (int i3 = i - 1; -1 < i3; i3--) {
                float f2 = this.b;
                Float fE3 = this.c.e(i3);
                if (fE3 == null) {
                    break;
                }
                fFloatValue += f2 + fE3.floatValue();
                if (fFloatValue >= fI) {
                    return false;
                }
            }
            int itemCount = this.f.getItemCount();
            for (int i4 = i2 + 1; i4 < itemCount; i4++) {
                float f3 = this.b;
                Float fE4 = this.c.e(i4);
                if (fE4 == null) {
                    break;
                }
                fFloatValue += f3 + fE4.floatValue();
                if (fFloatValue >= fI) {
                    return false;
                }
            }
        }
        return true;
    }

    public final float c(float f, int i, int i2) {
        Float f2;
        Float fE;
        if (this.g != DivPager.ItemAlignment.END && (f2 = this.c.f(i)) != null) {
            float fFloatValue = f2.floatValue();
            Float f3 = this.c.f(i2);
            if (f3 != null) {
                float fFloatValue2 = f3.floatValue();
                float fD = f > 0.0f ? d(f) : e(f);
                float f4 = ((fFloatValue * fD) + (fFloatValue2 * (1 - fD))) - this.d.f();
                if (f4 != 0.0f && (fE = this.c.e(i2)) != null) {
                    float fFloatValue3 = fE.floatValue() * fD;
                    if (a(fFloatValue3, f4)) {
                        return 0.0f;
                    }
                    int itemCount = this.f.getItemCount();
                    for (int i3 = i2 + 1; i3 < itemCount; i3++) {
                        Float fE2 = this.c.e(i3);
                        if (fE2 == null) {
                            return 0.0f;
                        }
                        fFloatValue3 += fE2.floatValue() + this.b;
                        if (a(fFloatValue3, f4)) {
                            return 0.0f;
                        }
                    }
                    return f4 - fFloatValue3;
                }
            }
        }
        return 0.0f;
    }

    public final float d(float f) {
        float fAbs = Math.abs(f);
        return fAbs - ((float) Math.floor(fAbs));
    }

    public final float e(float f) {
        float fD = d(f);
        if (fD > 0.0f) {
            return 1 - fD;
        }
        return 0.0f;
    }

    public final float f(float f, int i, boolean z) {
        if (z) {
            return 0.0f;
        }
        double d = f;
        int iCeil = i - ((int) Math.ceil(d));
        int iFloor = i - ((int) Math.floor(d));
        if (b(iCeil, iFloor)) {
            return i(f, iCeil, iFloor);
        }
        if (this.e) {
            return 0.0f;
        }
        float fL = l(f, iCeil, iFloor);
        if (fL != 0.0f) {
            return fL;
        }
        float fC = c(f, iCeil, iFloor);
        if (fC == 0.0f) {
            return 0.0f;
        }
        return fC;
    }

    public final float g(int i, int i2, float f) {
        Float fG = this.c.g(i);
        if (fG != null) {
            float fFloatValue = fG.floatValue();
            Float fG2 = this.c.g(i2);
            if (fG2 != null) {
                return ((fFloatValue * (1 - f)) + (fG2.floatValue() * f)) - this.d.i();
            }
        }
        return 0.0f;
    }

    public final float h(float f, int i) {
        if (f == 0.0f) {
            return 0.0f;
        }
        int iSignum = (int) Math.signum(f);
        int iAbs = (int) Math.abs(f);
        int i2 = 1;
        float fJ = 0.0f;
        if (1 <= iAbs) {
            while (true) {
                fJ += j(i, iSignum);
                i -= iSignum;
                if (i2 == iAbs) {
                    break;
                }
                i2++;
            }
        }
        float fD = d(f);
        return fJ + (fD > 0.0f ? fD * j(i, iSignum) : 0.0f);
    }

    public final float i(float f, int i, int i2) {
        float fD = f <= 0.0f ? d(f) : e(f);
        Float fE = this.c.e(i);
        if (fE == null) {
            return 0.0f;
        }
        float fFloatValue = fE.floatValue() * fD;
        for (int i3 = i - 1; -1 < i3; i3--) {
            Float fE2 = this.c.e(i3);
            if (fE2 == null) {
                return 0.0f;
            }
            fFloatValue += fE2.floatValue() + this.b;
        }
        return fFloatValue - g(i, i2, fD);
    }

    public final float j(int i, int i2) {
        Float fG = this.c.g(i2 > 0 ? i : i + 1);
        if (fG != null) {
            float fFloatValue = fG.floatValue();
            un2 un2Var = this.c;
            if (i2 > 0) {
                i--;
            }
            Float f = un2Var.f(i);
            if (f != null) {
                return ((fFloatValue + f.floatValue()) - this.b) * i2;
            }
        }
        return 0.0f;
    }

    public final float k(float f, int i, boolean z) {
        return h(f, i) - f(f, i, z);
    }

    public final float l(float f, int i, int i2) {
        Float fE;
        if (this.g == DivPager.ItemAlignment.START) {
            return 0.0f;
        }
        float fD = f <= 0.0f ? d(f) : e(f);
        float fG = g(i, i2, fD);
        if (fG == 0.0f || (fE = this.c.e(i)) == null) {
            return 0.0f;
        }
        float fFloatValue = fE.floatValue() * fD;
        if (a(fFloatValue, fG)) {
            return 0.0f;
        }
        do {
            i--;
            if (-1 >= i) {
                return fFloatValue - fG;
            }
            Float fE2 = this.c.e(i);
            if (fE2 == null) {
                return 0.0f;
            }
            fFloatValue += fE2.floatValue() + this.b;
        } while (!a(fFloatValue, fG));
        return 0.0f;
    }
}
