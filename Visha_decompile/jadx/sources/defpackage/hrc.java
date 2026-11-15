package defpackage;

public final class hrc extends brc implements y93 {
    public final drc d;
    public final int e;
    public final byte[] f;
    public final byte[] g;

    public static class b {
        public final drc a;
        public byte[] b = null;
        public byte[] c = null;
        public byte[] d = null;

        public b(drc drcVar) {
            this.a = drcVar;
        }

        public hrc e() {
            return new hrc(this);
        }

        public b f(byte[] bArr) {
            this.d = nrc.c(bArr);
            return this;
        }

        public b g(byte[] bArr) {
            this.c = nrc.c(bArr);
            return this;
        }

        public b h(byte[] bArr) {
            this.b = nrc.c(bArr);
            return this;
        }
    }

    public hrc(b bVar) {
        super(false, bVar.a.e());
        drc drcVar = bVar.a;
        this.d = drcVar;
        if (drcVar == null) {
            throw new NullPointerException("params == null");
        }
        int iF = drcVar.f();
        byte[] bArr = bVar.d;
        if (bArr != null) {
            if (bArr.length == iF + iF) {
                this.e = 0;
                this.f = nrc.g(bArr, 0, iF);
                this.g = nrc.g(bArr, iF, iF);
                return;
            } else {
                if (bArr.length != iF + 4 + iF) {
                    throw new IllegalArgumentException("public key has wrong size");
                }
                this.e = cv7.a(bArr, 0);
                this.f = nrc.g(bArr, 4, iF);
                this.g = nrc.g(bArr, 4 + iF, iF);
                return;
            }
        }
        if (drcVar.d() != null) {
            this.e = drcVar.d().a();
        } else {
            this.e = 0;
        }
        byte[] bArr2 = bVar.b;
        if (bArr2 == null) {
            this.f = new byte[iF];
        } else {
            if (bArr2.length != iF) {
                throw new IllegalArgumentException("length of root must be equal to length of digest");
            }
            this.f = bArr2;
        }
        byte[] bArr3 = bVar.c;
        if (bArr3 == null) {
            this.g = new byte[iF];
        } else {
            if (bArr3.length != iF) {
                throw new IllegalArgumentException("length of publicSeed must be equal to length of digest");
            }
            this.g = bArr3;
        }
    }

    public drc c() {
        return this.d;
    }

    public byte[] d() {
        return nrc.c(this.g);
    }

    public byte[] e() {
        return nrc.c(this.f);
    }

    public byte[] f() {
        byte[] bArr;
        int iF = this.d.f();
        int i = this.e;
        int i2 = 0;
        if (i != 0) {
            bArr = new byte[iF + 4 + iF];
            cv7.c(i, bArr, 0);
            i2 = 4;
        } else {
            bArr = new byte[iF + iF];
        }
        nrc.e(bArr, this.f, i2);
        nrc.e(bArr, this.g, i2 + iF);
        return bArr;
    }

    @Override
    public byte[] getEncoded() {
        return f();
    }
}
