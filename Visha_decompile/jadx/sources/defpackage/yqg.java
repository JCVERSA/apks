package defpackage;

import android.text.TextUtils;
import com.google.android.gms.ads.internal.client.zzbb;
import com.google.android.gms.ads.internal.client.zzbd;
import com.google.android.gms.ads.internal.client.zzc;
import org.json.JSONException;
import org.json.JSONObject;

public final class yqg implements fyi {
    public final qyi a;

    public yqg(qyi qyiVar) {
        this.a = qyiVar;
    }

    /* JADX WARN: Code duplicated, block: B:13:0x004d  */
    /* JADX WARN: Code duplicated, block: B:20:0x003c A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:9:0x0036  */
    @Override
    public final Object zzb() {
        String strValueOf;
        zzc zzcVar;
        enh enhVarA = ((zyf) this.a).a();
        if (((Boolean) zzbd.zzc().b(cye.k7)).booleanValue()) {
            String str = enhVarA.d.zzx;
            if (TextUtils.isEmpty(str)) {
                zzcVar = enhVarA.d.zzs;
                if (zzcVar != null) {
                    strValueOf = new JSONObject(zzcVar.zza).getString("request_id");
                    if (TextUtils.isEmpty(strValueOf)) {
                        strValueOf = String.valueOf(zzbb.zze().nextInt() & Integer.MAX_VALUE);
                    }
                } else {
                    strValueOf = String.valueOf(zzbb.zze().nextInt() & Integer.MAX_VALUE);
                }
            } else {
                try {
                    strValueOf = new JSONObject(str).getString("request_id");
                    if (TextUtils.isEmpty(strValueOf)) {
                        zzcVar = enhVarA.d.zzs;
                        if (zzcVar != null) {
                            try {
                                strValueOf = new JSONObject(zzcVar.zza).getString("request_id");
                                if (TextUtils.isEmpty(strValueOf)) {
                                    strValueOf = String.valueOf(zzbb.zze().nextInt() & Integer.MAX_VALUE);
                                }
                            } catch (JSONException unused) {
                            }
                        } else {
                            strValueOf = String.valueOf(zzbb.zze().nextInt() & Integer.MAX_VALUE);
                        }
                    }
                } catch (JSONException unused2) {
                }
            }
        } else {
            strValueOf = String.valueOf(zzbb.zze().nextInt() & Integer.MAX_VALUE);
        }
        pyi.b(strValueOf);
        return strValueOf;
    }
}
