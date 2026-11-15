package defpackage;

import android.app.Activity;
import android.content.Context;
import android.net.Uri;
import android.text.TextUtils;
import androidx.browser.customtabs.CustomTabsIntent;
import com.google.android.gms.ads.internal.client.zzbd;
import com.google.android.gms.ads.internal.overlay.AdOverlayInfoParcel;
import com.google.android.gms.ads.internal.overlay.zzc;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import com.google.android.gms.ads.internal.util.client.zzo;
import com.google.android.gms.ads.internal.util.zze;
import com.google.android.gms.internal.ads.j8;
import java.util.concurrent.Executor;

public final class tyg implements kxg {
    public final Context a;
    public final yag b;
    public final Executor c;
    public final gmh d;
    public final smg e;

    public tyg(Context context, Executor executor, yag yagVar, gmh gmhVar, smg smgVar) {
        this.a = context;
        this.b = yagVar;
        this.c = executor;
        this.d = gmhVar;
        this.e = smgVar;
    }

    public static im5 d(tyg tygVar, Uri uri, vmh vmhVar, hmh hmhVar, kmh kmhVar, Object obj) {
        try {
            CustomTabsIntent customTabsIntentBuild = new CustomTabsIntent.Builder().build();
            customTabsIntentBuild.intent.setData(uri);
            zzc zzcVar = new zzc(customTabsIntentBuild.intent, null);
            eff effVar = new eff();
            t9g t9gVarC = tygVar.b.c(new puf(vmhVar, hmhVar, null), new w9g(new syg(tygVar, effVar, hmhVar), null));
            effVar.c(new AdOverlayInfoParcel(zzcVar, null, t9gVarC.h(), null, new VersionInfoParcel(0, 0, false), null, null, kmhVar.b));
            tygVar.d.a();
            return j8.h(t9gVarC.i());
        } catch (Throwable th) {
            int i = zze.zza;
            zzo.zzh("Error in CustomTabsAdRenderer", th);
            throw th;
        }
    }

    public static String e(hmh hmhVar) {
        try {
            return hmhVar.v.getString("tab_url");
        } catch (Exception unused) {
            return null;
        }
    }

    @Override
    public final im5 a(final vmh vmhVar, final hmh hmhVar) {
        if (((Boolean) zzbd.zzc().b(cye.ed)).booleanValue()) {
            rmg rmgVarA = this.e.a();
            rmgVarA.b("action", "cstm_tbs_rndr");
            rmgVarA.j();
        }
        String strE = e(hmhVar);
        final Uri uri = strE != null ? Uri.parse(strE) : null;
        final kmh kmhVar = vmhVar.b.b;
        return j8.n(j8.h(null), new k7i() {
            @Override
            public final im5 zza(Object obj) {
                return tyg.d(this.a, uri, vmhVar, hmhVar, kmhVar, obj);
            }
        }, this.c);
    }

    @Override
    public final boolean b(vmh vmhVar, hmh hmhVar) {
        Context context = this.a;
        return (context instanceof Activity) && xye.g(context) && !TextUtils.isEmpty(e(hmhVar));
    }
}
