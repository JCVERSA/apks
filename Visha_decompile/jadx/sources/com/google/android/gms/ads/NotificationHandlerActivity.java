package com.google.android.gms.ads;

import android.app.Activity;
import android.os.Bundle;
import android.os.RemoteException;
import androidx.annotation.NonNull;
import com.google.android.gms.ads.internal.client.zzbb;
import com.google.android.gms.ads.internal.util.client.zzo;
import com.google.android.gms.internal.ads.zzbou;
import com.google.android.gms.internal.ads.zzbsr;

public final class NotificationHandlerActivity extends Activity {

    @NonNull
    public static final String CLASS_NAME = "com.google.android.gms.ads.NotificationHandlerActivity";

    @Override
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        try {
            zzbsr zzbsrVarZzo = zzbb.zza().zzo(this, new zzbou());
            if (zzbsrVarZzo == null) {
                zzo.zzg("OfflineUtils is null");
            } else {
                zzbsrVarZzo.zze(getIntent());
            }
        } catch (RemoteException e) {
            zzo.zzg("RemoteException calling handleNotificationIntent: ".concat(e.toString()));
        }
    }

    @Override
    public final void onResume() {
        super.onResume();
        finish();
    }
}
