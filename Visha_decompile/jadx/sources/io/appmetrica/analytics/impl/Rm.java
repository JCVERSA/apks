package io.appmetrica.analytics.impl;

import defpackage.y45;
import io.appmetrica.analytics.coreapi.internal.data.TempCacheStorage;
import java.util.Arrays;

public final class Rm implements TempCacheStorage.Entry {
    public final long a;
    public final String b;
    public final long c;
    public final byte[] d;

    public Rm(long j, String str, long j2, byte[] bArr) {
        this.a = j;
        this.b = str;
        this.c = j2;
        this.d = bArr;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!y45.e(Rm.class, obj != null ? obj.getClass() : null)) {
            return false;
        }
        if (obj == null) {
            throw new NullPointerException("null cannot be cast to non-null type io.appmetrica.analytics.impl.db.storage.TempCacheEntry");
        }
        Rm rm = (Rm) obj;
        if (this.a == rm.a && y45.e(this.b, rm.b) && this.c == rm.c) {
            return Arrays.equals(this.d, rm.d);
        }
        return false;
    }

    @Override
    public final byte[] getData() {
        return this.d;
    }

    @Override
    public final long getId() {
        return this.a;
    }

    @Override
    public final String getScope() {
        return this.b;
    }

    @Override
    public final long getTimestamp() {
        return this.c;
    }

    public final int hashCode() {
        return Arrays.hashCode(this.d) + ((Long.hashCode(this.c) + ((this.b.hashCode() + (Long.hashCode(this.a) * 31)) * 31)) * 31);
    }

    public final String toString() {
        return "TempCacheEntry(id=" + this.a + ", scope='" + this.b + "', timestamp=" + this.c + ", data=array[" + this.d.length + "])";
    }
}
