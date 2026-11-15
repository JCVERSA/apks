package com.google.firebase.crashlytics.internal.model;

import java.util.Arrays;

final class g extends CrashlyticsReport.d.b {

    private final String f30693a;

    private final byte[] f30694b;

    static final class b extends CrashlyticsReport.d.b.a {

        private String f30695a;

        private byte[] f30696b;

        b() {
        }

        @Override
        public CrashlyticsReport.d.b a() {
            byte[] bArr;
            String str = this.f30695a;
            if (str != null && (bArr = this.f30696b) != null) {
                return new g(str, bArr);
            }
            StringBuilder sb2 = new StringBuilder();
            if (this.f30695a == null) {
                sb2.append(" filename");
            }
            if (this.f30696b == null) {
                sb2.append(" contents");
            }
            throw new IllegalStateException("Missing required properties:" + ((Object) sb2));
        }

        @Override
        public CrashlyticsReport.d.b.a b(byte[] bArr) {
            if (bArr == null) {
                throw new NullPointerException("Null contents");
            }
            this.f30696b = bArr;
            return this;
        }

        @Override
        public CrashlyticsReport.d.b.a c(String str) {
            if (str == null) {
                throw new NullPointerException("Null filename");
            }
            this.f30695a = str;
            return this;
        }
    }

    @Override
    public byte[] b() {
        return this.f30694b;
    }

    @Override
    public String c() {
        return this.f30693a;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof CrashlyticsReport.d.b)) {
            return false;
        }
        CrashlyticsReport.d.b bVar = (CrashlyticsReport.d.b) obj;
        if (this.f30693a.equals(bVar.c())) {
            if (Arrays.equals(this.f30694b, bVar instanceof g ? ((g) bVar).f30694b : bVar.b())) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        return ((this.f30693a.hashCode() ^ 1000003) * 1000003) ^ Arrays.hashCode(this.f30694b);
    }

    public String toString() {
        return "File{filename=" + this.f30693a + ", contents=" + Arrays.toString(this.f30694b) + "}";
    }

    private g(String str, byte[] bArr) {
        this.f30693a = str;
        this.f30694b = bArr;
    }
}
