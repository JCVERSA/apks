package defpackage;

import androidx.core.view.InputDeviceCompat;

public final class qke implements dle {
    public final pke a;
    public final u4h b = new u4h(32);
    public int c;
    public int d;
    public boolean e;
    public boolean f;

    public qke(pke pkeVar) {
        this.a = pkeVar;
    }

    @Override
    public final void a(u4h u4hVar, int i) {
        int iW;
        int i2 = i & 1;
        if (i2 != 0) {
            iW = u4hVar.w() + u4hVar.G();
        } else {
            iW = -1;
        }
        if (this.f) {
            if (i2 == 0) {
                return;
            }
            this.f = false;
            u4hVar.l(iW);
            this.d = 0;
        }
        while (u4hVar.u() > 0) {
            int i3 = this.d;
            if (i3 < 3) {
                if (i3 == 0) {
                    int iG = u4hVar.G();
                    u4hVar.l(u4hVar.w() - 1);
                    if (iG == 255) {
                        this.f = true;
                        return;
                    }
                }
                int iMin = Math.min(u4hVar.u(), 3 - this.d);
                u4h u4hVar2 = this.b;
                u4hVar.h(u4hVar2.n(), this.d, iMin);
                int i4 = this.d + iMin;
                this.d = i4;
                if (i4 == 3) {
                    u4hVar2.l(0);
                    u4hVar2.k(3);
                    u4hVar2.m(1);
                    int iG2 = u4hVar2.G();
                    boolean z = (iG2 & 128) != 0;
                    int iG3 = u4hVar2.G();
                    this.e = z;
                    this.c = (((iG2 & 15) << 8) | iG3) + 3;
                    int iV = u4hVar2.v();
                    int i5 = this.c;
                    if (iV < i5) {
                        int iV2 = u4hVar2.v();
                        u4hVar2.f(Math.min(InputDeviceCompat.SOURCE_TOUCHSCREEN, Math.max(i5, iV2 + iV2)));
                    }
                }
            } else {
                int iMin2 = Math.min(u4hVar.u(), this.c - this.d);
                u4h u4hVar3 = this.b;
                u4hVar.h(u4hVar3.n(), this.d, iMin2);
                int i6 = this.d + iMin2;
                this.d = i6;
                int i7 = this.c;
                if (i6 != i7) {
                    continue;
                } else {
                    if (!this.e) {
                        u4hVar3.k(i7);
                    } else {
                        if (kfh.A(u4hVar3.n(), 0, i7, -1) != 0) {
                            this.f = true;
                            return;
                        }
                        u4hVar3.k(this.c - 4);
                    }
                    u4hVar3.l(0);
                    this.a.a(u4hVar3);
                    this.d = 0;
                }
            }
        }
    }

    @Override
    public final void b(fch fchVar, f9e f9eVar, cle cleVar) {
        this.a.b(fchVar, f9eVar, cleVar);
        this.f = true;
    }

    @Override
    public final void zzc() {
        this.f = true;
    }
}
