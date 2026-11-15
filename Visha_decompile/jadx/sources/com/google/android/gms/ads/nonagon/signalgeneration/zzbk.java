package com.google.android.gms.ads.nonagon.signalgeneration;

import android.os.Bundle;
import android.util.JsonReader;
import androidx.annotation.Nullable;
import com.google.android.gms.internal.ads.zzbuy;
import com.google.android.gms.internal.ads.zzdqm;
import defpackage.cye;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

public final class zzbk {
    public long a;
    public long b;
    public final String zza;
    public String zzb;

    @Nullable
    public zzbuy zzd;

    @Nullable
    public Bundle zze;

    @Nullable
    public String zzc = null;
    public Bundle zzf = new Bundle();

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:23:0x0060  */
    public zzbk(JsonReader jsonReader, @Nullable zzbuy zzbuyVar) throws IOException {
        Bundle bundle;
        byte b;
        this.a = -1L;
        this.b = -1L;
        this.zzd = zzbuyVar;
        HashMap map = new HashMap();
        jsonReader.beginObject();
        String strNextString = "";
        while (jsonReader.hasNext()) {
            String strNextName = jsonReader.nextName();
            switch (strNextName == null ? "" : strNextName) {
                case "start_time":
                    b = 2;
                    break;
                case "params":
                    b = 0;
                    break;
                case "signal_dictionary":
                    b = 1;
                    break;
                case "end_time":
                    b = 3;
                    break;
                default:
                    b = -1;
                    break;
            }
            if (b == 0) {
                strNextString = jsonReader.nextString();
            } else if (b == 1) {
                map = new HashMap();
                jsonReader.beginObject();
                while (jsonReader.hasNext()) {
                    map.put(jsonReader.nextName(), jsonReader.nextString());
                }
                jsonReader.endObject();
            } else if (b == 2) {
                this.a = jsonReader.nextLong();
            } else if (b != 3) {
                jsonReader.skipValue();
            } else {
                this.b = jsonReader.nextLong();
            }
        }
        this.zza = strNextString;
        jsonReader.endObject();
        for (Map.Entry entry : map.entrySet()) {
            if (entry.getKey() != null && entry.getValue() != null) {
                this.zzf.putString((String) entry.getKey(), (String) entry.getValue());
            }
        }
        if (!((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().b(cye.q2)).booleanValue() || zzbuyVar == null || (bundle = zzbuyVar.zzm) == null) {
            return;
        }
        bundle.putLong(zzdqm.GET_SIGNALS_SDKCORE_START.zza(), this.a);
        zzbuyVar.zzm.putLong(zzdqm.GET_SIGNALS_SDKCORE_END.zza(), this.b);
    }
}
