package io.appmetrica.analytics.impl;

import android.content.Context;
import io.appmetrica.analytics.coreapi.internal.data.TempCacheStorage;
import java.util.Collection;

public final class Qm implements TempCacheStorage {
    public final TempCacheStorage a;

    public Qm(Context context, EnumC2922um enumC2922um, TempCacheStorage tempCacheStorage) {
        this.a = tempCacheStorage;
    }

    @Override
    public final TempCacheStorage.Entry get(String str) {
        return this.a.get(str);
    }

    @Override
    public final long put(String str, long j, byte[] bArr) {
        return this.a.put(str, j, bArr);
    }

    @Override
    public final void remove(long j) {
        this.a.remove(j);
    }

    @Override
    public final void removeOlderThan(String str, long j) {
        this.a.removeOlderThan(str, j);
    }

    @Override
    public final Collection<TempCacheStorage.Entry> get(String str, int i) {
        return this.a.get(str, i);
    }
}
