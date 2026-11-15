package com.google.android.gms.common.api.internal;

import android.os.Bundle;
import androidx.annotation.Nullable;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.Api;
import java.util.Collections;
import java.util.Iterator;

public final class zaax implements zabf {
    private final zabi zaa;

    public zaax(zabi zabiVar) {
        this.zaa = zabiVar;
    }

    @Override
    public final BaseImplementation.ApiMethodImpl zaa(BaseImplementation.ApiMethodImpl apiMethodImpl) {
        this.zaa.zag.zaa.add(apiMethodImpl);
        return apiMethodImpl;
    }

    @Override
    public final BaseImplementation.ApiMethodImpl zab(BaseImplementation.ApiMethodImpl apiMethodImpl) {
        throw new IllegalStateException("GoogleApiClient is not connected yet.");
    }

    @Override
    public final void zad() {
        Iterator it = this.zaa.zaa.values().iterator();
        while (it.hasNext()) {
            ((Api.Client) it.next()).disconnect();
        }
        this.zaa.zag.zad = Collections.emptySet();
    }

    @Override
    public final void zae() {
        this.zaa.zaj();
    }

    @Override
    public final boolean zaj() {
        return true;
    }

    @Override
    public final void zag(@Nullable Bundle bundle) {
    }

    @Override
    public final void zai(int i10) {
    }

    @Override
    public final void zah(ConnectionResult connectionResult, Api api, boolean z10) {
    }
}
