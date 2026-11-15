package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.coreapi.internal.data.IBinaryDataHelper;

public final class C2729n3 implements IBinaryDataHelper {
    public final IBinaryDataHelper a;

    public C2729n3(IBinaryDataHelper iBinaryDataHelper) {
        this.a = iBinaryDataHelper;
    }

    @Override
    public final byte[] get(String str) {
        return this.a.get(str);
    }

    @Override
    public final void insert(String str, byte[] bArr) {
        this.a.insert(str, bArr);
    }

    @Override
    public final void remove(String str) {
        this.a.remove(str);
    }
}
