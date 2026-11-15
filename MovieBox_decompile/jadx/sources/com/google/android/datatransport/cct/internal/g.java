package com.google.android.datatransport.cct.internal;

import java.util.Arrays;

final class g extends n {

    private final byte[] f23619a;

    private final byte[] f23620b;

    static final class b extends n.a {

        private byte[] f23621a;

        private byte[] f23622b;

        b() {
        }

        @Override
        public n a() {
            return new g(this.f23621a, this.f23622b);
        }

        @Override
        public n.a b(byte[] bArr) {
            this.f23621a = bArr;
            return this;
        }

        @Override
        public n.a c(byte[] bArr) {
            this.f23622b = bArr;
            return this;
        }
    }

    @Override
    public byte[] b() {
        return this.f23619a;
    }

    @Override
    public byte[] c() {
        return this.f23620b;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof n)) {
            return false;
        }
        n nVar = (n) obj;
        boolean z10 = nVar instanceof g;
        if (Arrays.equals(this.f23619a, z10 ? ((g) nVar).f23619a : nVar.b())) {
            if (Arrays.equals(this.f23620b, z10 ? ((g) nVar).f23620b : nVar.c())) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        return ((Arrays.hashCode(this.f23619a) ^ 1000003) * 1000003) ^ Arrays.hashCode(this.f23620b);
    }

    public String toString() {
        return "ExperimentIds{clearBlob=" + Arrays.toString(this.f23619a) + ", encryptedBlob=" + Arrays.toString(this.f23620b) + "}";
    }

    private g(byte[] bArr, byte[] bArr2) {
        this.f23619a = bArr;
        this.f23620b = bArr2;
    }
}
