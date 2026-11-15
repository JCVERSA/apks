package com.google.android.gms.auth.api.proxy;

import android.app.PendingIntent;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.NonNull;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import defpackage.z09;
import defpackage.zve;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

public class ProxyResponse extends AbstractSafeParcelable {

    @NonNull
    public static final Parcelable.Creator<ProxyResponse> CREATOR = new zve();
    public static final int STATUS_CODE_NO_CONNECTION = -1;

    @NonNull
    public final byte[] body;
    public final int googlePlayServicesStatusCode;

    @NonNull
    public final PendingIntent recoveryAction;
    public final int statusCode;
    final int zza;
    final Bundle zzb;

    public ProxyResponse(int i, int i2, PendingIntent pendingIntent, int i3, Bundle bundle, byte[] bArr) {
        this.zza = i;
        this.googlePlayServicesStatusCode = i2;
        this.statusCode = i3;
        this.zzb = bundle;
        this.body = bArr;
        this.recoveryAction = pendingIntent;
    }

    @NonNull
    public static ProxyResponse createErrorProxyResponse(int i, @NonNull PendingIntent pendingIntent, int i2, @NonNull Map<String, String> map, @NonNull byte[] bArr) {
        return new ProxyResponse(1, i, pendingIntent, i2, zza(map), bArr);
    }

    private static Bundle zza(Map map) {
        Bundle bundle = new Bundle();
        if (map == null) {
            return bundle;
        }
        for (Map.Entry entry : map.entrySet()) {
            bundle.putString((String) entry.getKey(), (String) entry.getValue());
        }
        return bundle;
    }

    @NonNull
    public Map<String, String> getHeaders() {
        if (this.zzb == null) {
            return Collections.emptyMap();
        }
        HashMap map = new HashMap();
        for (String str : this.zzb.keySet()) {
            map.put(str, this.zzb.getString(str));
        }
        return map;
    }

    @Override
    public void writeToParcel(@NonNull Parcel parcel, int i) {
        int iA = z09.a(parcel);
        z09.s(parcel, 1, this.googlePlayServicesStatusCode);
        z09.B(parcel, 2, this.recoveryAction, i, false);
        z09.s(parcel, 3, this.statusCode);
        z09.j(parcel, 4, this.zzb, false);
        z09.k(parcel, 5, this.body, false);
        z09.s(parcel, 1000, this.zza);
        z09.b(parcel, iA);
    }

    public ProxyResponse(int i, @NonNull PendingIntent pendingIntent, int i2, @NonNull Bundle bundle, @NonNull byte[] bArr) {
        this(1, i, pendingIntent, i2, bundle, bArr);
    }

    public ProxyResponse(int i, @NonNull Map<String, String> map, @NonNull byte[] bArr) {
        this(1, 0, null, i, zza(map), bArr);
    }
}
