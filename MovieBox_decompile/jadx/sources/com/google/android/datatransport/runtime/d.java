package com.google.android.datatransport.runtime;

import com.google.android.datatransport.Priority;
import java.util.Arrays;

final class d extends o {

    private final String f23718a;

    private final byte[] f23719b;

    private final Priority f23720c;

    static final class b extends o.a {

        private String f23721a;

        private byte[] f23722b;

        private Priority f23723c;

        b() {
        }

        @Override
        public o a() {
            String str = "";
            if (this.f23721a == null) {
                str = " backendName";
            }
            if (this.f23723c == null) {
                str = str + " priority";
            }
            if (str.isEmpty()) {
                return new d(this.f23721a, this.f23722b, this.f23723c);
            }
            throw new IllegalStateException("Missing required properties:" + str);
        }

        @Override
        public o.a b(String str) {
            if (str == null) {
                throw new NullPointerException("Null backendName");
            }
            this.f23721a = str;
            return this;
        }

        @Override
        public o.a c(byte[] bArr) {
            this.f23722b = bArr;
            return this;
        }

        @Override
        public o.a d(Priority priority) {
            if (priority == null) {
                throw new NullPointerException("Null priority");
            }
            this.f23723c = priority;
            return this;
        }
    }

    @Override
    public String b() {
        return this.f23718a;
    }

    @Override
    public byte[] c() {
        return this.f23719b;
    }

    @Override
    public Priority d() {
        return this.f23720c;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof o)) {
            return false;
        }
        o oVar = (o) obj;
        if (this.f23718a.equals(oVar.b())) {
            if (Arrays.equals(this.f23719b, oVar instanceof d ? ((d) oVar).f23719b : oVar.c()) && this.f23720c.equals(oVar.d())) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        return ((((this.f23718a.hashCode() ^ 1000003) * 1000003) ^ Arrays.hashCode(this.f23719b)) * 1000003) ^ this.f23720c.hashCode();
    }

    private d(String str, byte[] bArr, Priority priority) {
        this.f23718a = str;
        this.f23719b = bArr;
        this.f23720c = priority;
    }
}
