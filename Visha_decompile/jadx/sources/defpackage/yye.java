package defpackage;

import com.google.android.gms.ads.internal.util.client.zzo;
import com.google.android.gms.ads.internal.util.zze;
import com.google.android.gms.ads.query.QueryInfo;
import com.google.android.gms.ads.query.QueryInfoGenerationCallback;
import org.json.JSONException;

public final class yye extends QueryInfoGenerationCallback {
    public final String a;
    public final zye b;

    public yye(zye zyeVar, String str) {
        this.a = str;
        this.b = zyeVar;
    }

    @Override
    public final void onFailure(String str) {
        int i = zze.zza;
        zzo.zzj("Failed to generate query info for Custom Tab error: ".concat(String.valueOf(str)));
        try {
            zye zyeVar = this.b;
            zyeVar.g.postMessage(zyeVar.c(this.a, str).toString(), null);
        } catch (JSONException e) {
            zzo.zzh("Error creating PACT Error Response JSON: ", e);
        }
    }

    @Override
    public final void onSuccess(QueryInfo queryInfo) {
        String query = queryInfo.getQuery();
        try {
            zye zyeVar = this.b;
            zyeVar.g.postMessage(zyeVar.d(this.a, query).toString(), null);
        } catch (JSONException e) {
            int i = zze.zza;
            zzo.zzh("Error creating PACT Signal Response JSON: ", e);
        }
    }
}
