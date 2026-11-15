package com.google.android.gms.ads;

import android.os.Bundle;
import android.os.RemoteException;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import com.google.android.gms.ads.internal.client.zzbb;
import com.google.android.gms.ads.internal.client.zzdx;
import com.google.android.gms.ads.internal.client.zzv;
import com.google.android.gms.ads.internal.util.client.zzo;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public final class ResponseInfo {
    public final zzdx a;
    public final List b = new ArrayList();
    public AdapterResponseInfo c;

    public ResponseInfo(zzdx zzdxVar) {
        this.a = zzdxVar;
        if (zzdxVar != null) {
            try {
                List listZzj = zzdxVar.zzj();
                if (listZzj != null) {
                    Iterator it = listZzj.iterator();
                    while (it.hasNext()) {
                        AdapterResponseInfo adapterResponseInfoZza = AdapterResponseInfo.zza((zzv) it.next());
                        if (adapterResponseInfoZza != null) {
                            this.b.add(adapterResponseInfoZza);
                        }
                    }
                }
            } catch (RemoteException e) {
                zzo.zzh("Could not forward getAdapterResponseInfo to ResponseInfo.", e);
            }
        }
        zzdx zzdxVar2 = this.a;
        if (zzdxVar2 == null) {
            return;
        }
        try {
            zzv zzvVarZzf = zzdxVar2.zzf();
            if (zzvVarZzf != null) {
                this.c = AdapterResponseInfo.zza(zzvVarZzf);
            }
        } catch (RemoteException e2) {
            zzo.zzh("Could not forward getLoadedAdapterResponse to ResponseInfo.", e2);
        }
    }

    @Nullable
    public static ResponseInfo zza(@Nullable zzdx zzdxVar) {
        if (zzdxVar != null) {
            return new ResponseInfo(zzdxVar);
        }
        return null;
    }

    @NonNull
    public static ResponseInfo zzb(@Nullable zzdx zzdxVar) {
        return new ResponseInfo(zzdxVar);
    }

    @NonNull
    public List<AdapterResponseInfo> getAdapterResponses() {
        return this.b;
    }

    @Nullable
    public AdapterResponseInfo getLoadedAdapterResponseInfo() {
        return this.c;
    }

    @Nullable
    public String getMediationAdapterClassName() {
        try {
            zzdx zzdxVar = this.a;
            if (zzdxVar != null) {
                return zzdxVar.zzg();
            }
            return null;
        } catch (RemoteException e) {
            zzo.zzh("Could not forward getMediationAdapterClassName to ResponseInfo.", e);
            return null;
        }
    }

    @NonNull
    public Bundle getResponseExtras() {
        try {
            zzdx zzdxVar = this.a;
            if (zzdxVar != null) {
                return zzdxVar.zze();
            }
        } catch (RemoteException e) {
            zzo.zzh("Could not forward getResponseExtras to ResponseInfo.", e);
        }
        return new Bundle();
    }

    @Nullable
    public String getResponseId() {
        try {
            zzdx zzdxVar = this.a;
            if (zzdxVar != null) {
                return zzdxVar.zzi();
            }
            return null;
        } catch (RemoteException e) {
            zzo.zzh("Could not forward getResponseId to ResponseInfo.", e);
            return null;
        }
    }

    @NonNull
    public String toString() {
        try {
            return zzd().toString(2);
        } catch (JSONException unused) {
            return "Error forming toString output.";
        }
    }

    @Nullable
    @VisibleForTesting
    public final zzdx zzc() {
        return this.a;
    }

    @NonNull
    public final JSONObject zzd() throws JSONException {
        JSONObject jSONObject = new JSONObject();
        String responseId = getResponseId();
        if (responseId == null) {
            jSONObject.put("Response ID", "null");
        } else {
            jSONObject.put("Response ID", responseId);
        }
        String mediationAdapterClassName = getMediationAdapterClassName();
        if (mediationAdapterClassName == null) {
            jSONObject.put("Mediation Adapter Class Name", "null");
        } else {
            jSONObject.put("Mediation Adapter Class Name", mediationAdapterClassName);
        }
        JSONArray jSONArray = new JSONArray();
        Iterator it = this.b.iterator();
        while (it.hasNext()) {
            jSONArray.put(((AdapterResponseInfo) it.next()).zzb());
        }
        jSONObject.put("Adapter Responses", jSONArray);
        AdapterResponseInfo adapterResponseInfo = this.c;
        if (adapterResponseInfo != null) {
            jSONObject.put("Loaded Adapter Response", adapterResponseInfo.zzb());
        }
        Bundle responseExtras = getResponseExtras();
        if (responseExtras != null) {
            jSONObject.put("Response Extras", zzbb.zzb().zzj(responseExtras));
        }
        return jSONObject;
    }
}
