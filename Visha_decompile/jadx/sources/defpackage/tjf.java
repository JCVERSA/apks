package defpackage;

import android.net.Uri;
import android.text.TextUtils;
import android.webkit.JavascriptInterface;
import com.google.android.gms.ads.internal.util.client.zzo;
import com.google.android.gms.ads.internal.util.zze;
import com.google.android.gms.ads.internal.util.zzs;
import com.google.android.gms.internal.ads.c4;
import defpackage.tjf;

public final class tjf {
    public final ujf a;
    public final sjf b;

    public tjf(ujf ujfVar, sjf sjfVar) {
        this.b = sjfVar;
        this.a = ujfVar;
    }

    public static void a(tjf tjfVar, String str) {
        Uri uri = Uri.parse(str);
        ijf ijfVarK = ((c4) tjfVar.b.a).k();
        if (ijfVarK != null) {
            ijfVarK.j(uri);
        } else {
            int i = zze.zza;
            zzo.zzg("Unable to pass GMSG, no AdWebViewClient for AdWebView!");
        }
    }

    @JavascriptInterface
    public String getClickSignals(String str) {
        if (TextUtils.isEmpty(str)) {
            zze.zza("Click string is empty, not proceeding.");
            return "";
        }
        ujf ujfVar = this.a;
        fre freVarZzI = ((akf) ujfVar).zzI();
        if (freVarZzI == null) {
            zze.zza("Signal utils is empty, ignoring.");
            return "";
        }
        are areVarC = freVarZzI.c();
        if (areVarC == null) {
            zze.zza("Signals object is empty, ignoring.");
            return "";
        }
        if (ujfVar.getContext() != null) {
            return areVarC.zze(ujfVar.getContext(), str, ((fkf) ujfVar).zzF(), ujfVar.zzi());
        }
        zze.zza("Context is null, ignoring.");
        return "";
    }

    @JavascriptInterface
    public String getViewSignals() {
        ujf ujfVar = this.a;
        fre freVarZzI = ((akf) ujfVar).zzI();
        if (freVarZzI == null) {
            zze.zza("Signal utils is empty, ignoring.");
            return "";
        }
        are areVarC = freVarZzI.c();
        if (areVarC == null) {
            zze.zza("Signals object is empty, ignoring.");
            return "";
        }
        if (ujfVar.getContext() != null) {
            return areVarC.zzh(ujfVar.getContext(), ((fkf) ujfVar).zzF(), ujfVar.zzi());
        }
        zze.zza("Context is null, ignoring.");
        return "";
    }

    @JavascriptInterface
    public void notify(final String str) {
        if (!TextUtils.isEmpty(str)) {
            zzs.zza.post(new Runnable() {
                @Override
                public final void run() {
                    tjf.a(this.zza, str);
                }
            });
        } else {
            int i = zze.zza;
            zzo.zzj("URL is empty, ignoring message");
        }
    }
}
