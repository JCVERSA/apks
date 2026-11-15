package defpackage;

import com.google.android.gms.ads.internal.util.client.zzo;
import com.google.android.gms.ads.internal.util.zze;
import com.google.android.gms.ads.internal.zzv;
import com.google.android.gms.ads.nonagon.signalgeneration.TaggingLibraryJsInterface;
import com.google.android.gms.ads.query.QueryInfo;
import com.google.android.gms.ads.query.QueryInfoGenerationCallback;
import java.util.Locale;
import org.json.JSONException;
import org.json.JSONObject;

public final class fbf extends QueryInfoGenerationCallback {
    public final String a;
    public final TaggingLibraryJsInterface b;

    public fbf(TaggingLibraryJsInterface taggingLibraryJsInterface, String str) {
        this.a = str;
        this.b = taggingLibraryJsInterface;
    }

    @Override
    public final void onFailure(String str) {
        int i = zze.zza;
        zzo.zzj("Failed to generate query info for the tagging library, error: ".concat(String.valueOf(str)));
        String strConcat = ((Boolean) e0f.c.e()).booleanValue() ? ",\"as\":".concat(this.b.k.zza().toString()) : "";
        String str2 = this.a;
        Locale locale = Locale.getDefault();
        eze ezeVar = e0f.e;
        final String str3 = String.format(locale, "window.postMessage({\"paw_id\":\"%1$s\",\"error\":\"%2$s\",\"sdk_ttl_ms\":%3$d%4$s}, '*');", str2, str, Long.valueOf(((Boolean) ezeVar.e()).booleanValue() ? ((Long) e0f.h.e()).longValue() : 0L), strConcat);
        if (((Boolean) ezeVar.e()).booleanValue()) {
            try {
                this.b.h.execute(new Runnable() {
                    @Override
                    public final void run() {
                        this.zza.b.b.evaluateJavascript(str3, null);
                    }
                });
            } catch (RuntimeException e) {
                zzv.zzp().w(e, "TaggingLibraryJsInterface.getQueryInfo.onFailure");
            }
        } else {
            this.b.b.evaluateJavascript(str3, null);
        }
        if (((Boolean) e0f.c.e()).booleanValue() && ((Boolean) e0f.d.e()).booleanValue()) {
            this.b.l.zzb();
        }
    }

    @Override
    public final void onSuccess(QueryInfo queryInfo) {
        final String str;
        String query = queryInfo.getQuery();
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("paw_id", this.a);
            jSONObject.put("signal", query);
            jSONObject.put("sdk_ttl_ms", ((Boolean) e0f.e.e()).booleanValue() ? ((Long) e0f.h.e()).longValue() : 0L);
            if (((Boolean) e0f.c.e()).booleanValue()) {
                jSONObject.put("as", this.b.k.zza());
            }
            str = String.format(Locale.getDefault(), "window.postMessage(%1$s, '*');", jSONObject);
        } catch (JSONException unused) {
            String strConcat = ((Boolean) e0f.c.e()).booleanValue() ? ",\"as\":".concat(this.b.k.zza().toString()) : "";
            str = String.format(Locale.getDefault(), "window.postMessage({\"paw_id\":\"%1$s\",\"signal\":\"%2$s\",\"sdk_ttl_ms\":%3$d%4$s}, '*');", this.a, queryInfo.getQuery(), Long.valueOf(((Boolean) e0f.e.e()).booleanValue() ? ((Long) e0f.h.e()).longValue() : 0L), strConcat);
        }
        if (((Boolean) e0f.e.e()).booleanValue()) {
            try {
                this.b.h.execute(new Runnable() {
                    @Override
                    public final void run() {
                        this.zza.b.b.evaluateJavascript(str, null);
                    }
                });
            } catch (RuntimeException e) {
                zzv.zzp().w(e, "TaggingLibraryJsInterface.getQueryInfo.onSuccess");
            }
        } else {
            this.b.b.evaluateJavascript(str, null);
        }
        if (((Boolean) e0f.c.e()).booleanValue() && ((Boolean) e0f.d.e()).booleanValue()) {
            this.b.l.zzb();
        }
    }
}
