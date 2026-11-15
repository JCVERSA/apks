package com.google.android.gms.internal.ads;

import android.content.ComponentName;
import androidx.browser.customtabs.CustomTabsClient;
import androidx.browser.customtabs.CustomTabsServiceConnection;
import defpackage.xye;
import java.lang.ref.WeakReference;

public final class zzhfp extends CustomTabsServiceConnection {
    public final WeakReference b;

    public zzhfp(xye xyeVar) {
        this.b = new WeakReference(xyeVar);
    }

    @Override
    public final void onCustomTabsServiceConnected(ComponentName componentName, CustomTabsClient customTabsClient) {
        xye xyeVar = (xye) this.b.get();
        if (xyeVar != null) {
            xyeVar.c(customTabsClient);
        }
    }

    @Override
    public final void onServiceDisconnected(ComponentName componentName) {
        xye xyeVar = (xye) this.b.get();
        if (xyeVar != null) {
            xyeVar.d();
        }
    }
}
