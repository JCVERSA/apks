package com.google.android.datatransport.runtime;

import java.util.Arrays;

public final class h {

    private final t8.c f23744a;

    private final byte[] f23745b;

    public h(t8.c cVar, byte[] bArr) {
        if (cVar == null) {
            throw new NullPointerException("encoding is null");
        }
        if (bArr == null) {
            throw new NullPointerException("bytes is null");
        }
        this.f23744a = cVar;
        this.f23745b = bArr;
    }

    public byte[] a() {
        return this.f23745b;
    }

    public t8.c b() {
        return this.f23744a;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof h)) {
            return false;
        }
        h hVar = (h) obj;
        if (this.f23744a.equals(hVar.f23744a)) {
            return Arrays.equals(this.f23745b, hVar.f23745b);
        }
        return false;
    }

    public int hashCode() {
        return ((this.f23744a.hashCode() ^ 1000003) * 1000003) ^ Arrays.hashCode(this.f23745b);
    }

    public String toString() {
        return "EncodedPayload{encoding=" + this.f23744a + ", bytes=[...]}";
    }
}
