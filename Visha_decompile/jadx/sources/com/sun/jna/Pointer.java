package com.sun.jna;

import androidx.media3.muxer.MuxerUtil;

public class Pointer {
    public long b;

    public Pointer() {
    }

    public void a(long j) {
        d(0L, j, (byte) 0);
    }

    public void b(long j, byte[] bArr, int i, int i2) {
        Native.read(this, this.b, j, bArr, i, i2);
    }

    public void d(long j, long j2, byte b) {
        Native.setMemory(this, this.b, j, j2, b);
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null) {
            return false;
        }
        return (obj instanceof Pointer) && ((Pointer) obj).b == this.b;
    }

    public int hashCode() {
        long j = this.b;
        return (int) ((j >>> 32) + (j & MuxerUtil.UNSIGNED_INT_MAX_VALUE));
    }

    public String toString() {
        return "native@0x" + Long.toHexString(this.b);
    }

    public Pointer(long j) {
        this.b = j;
    }
}
