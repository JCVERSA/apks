package com.google.android.gms.internal.ads;

import android.content.ComponentName;
import android.content.Context;
import androidx.browser.customtabs.CustomTabsClient;
import androidx.browser.customtabs.CustomTabsServiceConnection;
import androidx.browser.customtabs.CustomTabsSession;
import com.google.android.gms.ads.internal.client.zzbd;
import defpackage.cye;
import defpackage.rmg;
import defpackage.smg;
import defpackage.vye;
import defpackage.zef;
import java.util.concurrent.atomic.AtomicBoolean;

public final class zzbdh extends CustomTabsServiceConnection {
    public final AtomicBoolean b = new AtomicBoolean(false);
    public Context c;
    public smg d;
    public CustomTabsSession e;
    public CustomTabsClient f;

    public static void b(zzbdh zzbdhVar, int i) {
        smg smgVar = zzbdhVar.d;
        if (smgVar != null) {
            rmg rmgVarA = smgVar.a();
            rmgVarA.b("action", "cct_nav");
            rmgVarA.b("cct_navs", String.valueOf(i));
            rmgVarA.j();
        }
    }

    public final CustomTabsSession a() {
        if (this.e == null) {
            zef.a.execute(new Runnable() {
                @Override
                public final void run() {
                    zzbdh zzbdhVar = this.zza;
                    zzbdhVar.f(zzbdhVar.c);
                }
            });
        }
        return this.e;
    }

    public final void d(Context context, smg smgVar) {
        if (this.b.getAndSet(true)) {
            return;
        }
        this.c = context;
        this.d = smgVar;
        f(context);
    }

    public final void e(final int i) {
        if (!((Boolean) zzbd.zzc().b(cye.M4)).booleanValue() || this.d == null) {
            return;
        }
        zef.a.execute(new Runnable() {
            @Override
            public final void run() {
                zzbdh.b(this.zza, i);
            }
        });
    }

    public final void f(Context context) {
        String packageName;
        if (this.f != null || context == null || (packageName = CustomTabsClient.getPackageName(context, null)) == null) {
            return;
        }
        CustomTabsClient.bindCustomTabsService(context, packageName, this);
    }

    @Override
    public final void onCustomTabsServiceConnected(ComponentName componentName, CustomTabsClient customTabsClient) {
        this.f = customTabsClient;
        customTabsClient.warmup(0L);
        this.e = customTabsClient.newSession(new vye(this));
    }

    @Override
    public final void onServiceDisconnected(ComponentName componentName) {
        this.f = null;
        this.e = null;
    }
}
