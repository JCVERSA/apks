package defpackage;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import androidx.browser.customtabs.CustomTabsIntent;
import com.google.android.gms.ads.internal.util.zzs;

public final class udj implements wye {
    public final xye a;
    public final Context b;
    public final Uri c;

    public udj(zzs zzsVar, xye xyeVar, Context context, Uri uri) {
        this.a = xyeVar;
        this.b = context;
        this.c = uri;
    }

    @Override
    public final void zza() {
        xye xyeVar = this.a;
        CustomTabsIntent customTabsIntentBuild = new CustomTabsIntent.Builder(xyeVar.a()).build();
        Intent intent = customTabsIntentBuild.intent;
        Context context = this.b;
        intent.setPackage(wyi.a(context));
        customTabsIntentBuild.launchUrl(context, this.c);
        xyeVar.f((Activity) context);
    }
}
