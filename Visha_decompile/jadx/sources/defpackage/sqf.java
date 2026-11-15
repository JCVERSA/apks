package defpackage;

import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import com.google.android.gms.ads.internal.zzv;
import io.appmetrica.analytics.plugins.PluginErrorDetails;
import java.util.UUID;
import org.json.JSONObject;

public final class sqf implements fyi {
    public final qyi a;
    public final qyi b;
    public final qyi c;

    public sqf(qyi qyiVar, qyi qyiVar2, qyi qyiVar3) {
        this.a = qyiVar;
        this.b = qyiVar2;
        this.c = qyiVar3;
    }

    @Override
    public final Object zzb() {
        VersionInfoParcel versionInfoParcelA = ((klf) this.a).a();
        JSONObject jSONObject = (JSONObject) this.b.zzb();
        String str = (String) this.c.zzb();
        boolean zEquals = PluginErrorDetails.Platform.NATIVE.equals(str);
        zzv.zzq();
        return new fue(UUID.randomUUID().toString(), versionInfoParcelA, str, jSONObject, false, zEquals);
    }
}
