package defpackage;

public final class mrc extends yqc implements y93 {
    public final jrc d;
    public final int e;
    public final byte[] f;
    public final byte[] g;

    public static class b {
        public final jrc a;
        public byte[] b = null;
        public byte[] c = null;
        public byte[] d = null;

        public b(jrc jrcVar) {
            this.a = jrcVar;
        }

        public mrc e() {
            return new mrc(this);
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

    public mrc(b bVar) {
        super(false, bVar.a.f());
        jrc jrcVar = bVar.a;
        this.d = jrcVar;
        if (jrcVar == null) {
            throw new NullPointerException("params == null");
        }
        int iH = jrcVar.h();
        byte[] bArr = bVar.d;
        if (bArr != null) {
            if (bArr.length == iH + iH) {
                this.e = 0;
                this.f = nrc.g(bArr, 0, iH);
                this.g = nrc.g(bArr, iH, iH);
                return;
            } else {
                if (bArr.length != iH + 4 + iH) {
                    throw new IllegalArgumentException("public key has wrong size");
                }
                this.e = cv7.a(bArr, 0);
                this.f = nrc.g(bArr, 4, iH);
                this.g = nrc.g(bArr, 4 + iH, iH);
                return;
            }
        }
        if (jrcVar.e() != null) {
            this.e = jrcVar.e().a();
        } else {
            this.e = 0;
        }
        byte[] bArr2 = bVar.b;
        if (bArr2 == null) {
            this.f = new byte[iH];
        } else {
            if (bArr2.length != iH) {
                throw new IllegalArgumentException("length of root must be equal to length of digest");
            }
            this.f = bArr2;
        }
        byte[] bArr3 = bVar.c;
        if (bArr3 == null) {
            this.g = new byte[iH];
        } else {
            if (bArr3.length != iH) {
                throw new IllegalArgumentException("length of publicSeed must be equal to length of digest");
            }
            this.g = bArr3;
        }
    }

    public jrc c() {
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
        int iH = this.d.h();
        int i = this.e;
        int i2 = 0;
        if (i != 0) {
            bArr = new byte[iH + 4 + iH];
            cv7.c(i, bArr, 0);
            i2 = 4;
        } else {
            bArr = new byte[iH + iH];
        }
        nrc.e(bArr, this.f, i2);
        nrc.e(bArr, this.g, i2 + iH);
        return bArr;
    }

    @Override
    public byte[] getEncoded() {
        return f();
    }
}
