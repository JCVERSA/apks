package defpackage;

import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import com.google.android.gms.ads.internal.zzv;
import io.appmetrica.analytics.plugins.PluginErrorDetails;
import java.util.UUID;
import org.json.JSONObject;

public final class ocg implements fyi {
    public final qyi a;

    public ocg(qyi qyiVar, qyi qyiVar2) {
        this.a = qyiVar;
    }

    @Override
    public final Object zzb() {
        VersionInfoParcel versionInfoParcelA = ((klf) this.a).a();
        zzv.zzq();
        return new fue(UUID.randomUUID().toString(), versionInfoParcelA, PluginErrorDetails.Platform.NATIVE, new JSONObject(), false, true);
    }
}
