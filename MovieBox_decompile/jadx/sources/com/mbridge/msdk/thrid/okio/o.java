package com.mbridge.msdk.thrid.okio;

import androidx.annotation.Nullable;

final class o {

    final byte[] f37632a;

    int f37633b;

    int f37634c;

    boolean f37635d;

    boolean f37636e;

    o f37637f;

    o f37638g;

    o() {
        this.f37632a = new byte[8192];
        this.f37636e = true;
        this.f37635d = false;
    }

    public final o a(o oVar) {
        oVar.f37638g = this;
        oVar.f37637f = this.f37637f;
        this.f37637f.f37638g = oVar;
        this.f37637f = oVar;
        return oVar;
    }

    @Nullable
    public final o b() {
        o oVar = this.f37637f;
        o oVar2 = oVar != this ? oVar : null;
        o oVar3 = this.f37638g;
        oVar3.f37637f = oVar;
        this.f37637f.f37638g = oVar3;
        this.f37637f = null;
        this.f37638g = null;
        return oVar2;
    }

    final o c() {
        this.f37635d = true;
        return new o(this.f37632a, this.f37633b, this.f37634c, true, false);
    }

    o(byte[] bArr, int i10, int i11, boolean z10, boolean z11) {
        this.f37632a = bArr;
        this.f37633b = i10;
        this.f37634c = i11;
        this.f37635d = z10;
        this.f37636e = z11;
    }

    public final o a(int i10) {
        o oVarA;
        if (i10 > 0 && i10 <= this.f37634c - this.f37633b) {
            if (i10 >= 1024) {
                oVarA = c();
            } else {
                oVarA = p.a();
                System.arraycopy(this.f37632a, this.f37633b, oVarA.f37632a, 0, i10);
            }
            oVarA.f37634c = oVarA.f37633b + i10;
            this.f37633b += i10;
            this.f37638g.a(oVarA);
            return oVarA;
        }
        throw new IllegalArgumentException();
    }

    public final void a() {
        o oVar = this.f37638g;
        if (oVar != this) {
            if (oVar.f37636e) {
                int i10 = this.f37634c - this.f37633b;
                if (i10 > (8192 - oVar.f37634c) + (oVar.f37635d ? 0 : oVar.f37633b)) {
                    return;
                }
                a(oVar, i10);
                b();
                p.a(this);
                return;
            }
            return;
        }
        throw new IllegalStateException();
    }

    public final void a(o oVar, int i10) {
        if (oVar.f37636e) {
            int i11 = oVar.f37634c;
            int i12 = i11 + i10;
            if (i12 > 8192) {
                if (!oVar.f37635d) {
                    int i13 = oVar.f37633b;
                    if (i12 - i13 <= 8192) {
                        byte[] bArr = oVar.f37632a;
                        System.arraycopy(bArr, i13, bArr, 0, i11 - i13);
                        oVar.f37634c -= oVar.f37633b;
                        oVar.f37633b = 0;
                    } else {
                        throw new IllegalArgumentException();
                    }
                } else {
                    throw new IllegalArgumentException();
                }
            }
            System.arraycopy(this.f37632a, this.f37633b, oVar.f37632a, oVar.f37634c, i10);
            oVar.f37634c += i10;
            this.f37633b += i10;
            return;
        }
        throw new IllegalArgumentException();
    }
}
