package com.google.android.gms.common.api;

import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.collection.ArrayMap;
import com.google.android.gms.common.ConnectionResult;
import defpackage.wd8;
import defpackage.xd;
import java.util.ArrayList;

public class AvailabilityException extends Exception {
    private final ArrayMap zaa;

    public AvailabilityException(@NonNull ArrayMap arrayMap) {
        this.zaa = arrayMap;
    }

    @NonNull
    public ConnectionResult getConnectionResult(@NonNull b bVar) {
        ArrayMap arrayMap = this.zaa;
        xd xdVarC = bVar.c();
        wd8.b(arrayMap.get(xdVarC) != null, "The given API (" + xdVarC.b() + ") was not part of the availability request.");
        return (ConnectionResult) wd8.l((ConnectionResult) this.zaa.get(xdVarC));
    }

    @Override
    @NonNull
    public String getMessage() {
        ArrayList arrayList = new ArrayList();
        boolean z = true;
        for (xd xdVar : this.zaa.keySet()) {
            ConnectionResult connectionResult = (ConnectionResult) wd8.l((ConnectionResult) this.zaa.get(xdVar));
            z &= !connectionResult.isSuccess();
            arrayList.add(xdVar.b() + ": " + String.valueOf(connectionResult));
        }
        StringBuilder sb = new StringBuilder();
        if (z) {
            sb.append("None of the queried APIs are available. ");
        } else {
            sb.append("Some of the queried APIs are unavailable. ");
        }
        sb.append(TextUtils.join("; ", arrayList));
        return sb.toString();
    }

    @NonNull
    public ConnectionResult getConnectionResult(@NonNull d dVar) {
        ArrayMap arrayMap = this.zaa;
        xd xdVarC = dVar.c();
        wd8.b(arrayMap.get(xdVarC) != null, "The given API (" + xdVarC.b() + ") was not part of the availability request.");
        return (ConnectionResult) wd8.l((ConnectionResult) this.zaa.get(xdVarC));
    }
}
