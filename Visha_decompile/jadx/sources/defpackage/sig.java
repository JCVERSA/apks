package defpackage;

import android.os.RemoteException;
import com.google.android.gms.ads.VideoController;
import com.google.android.gms.ads.internal.client.zzea;
import com.google.android.gms.ads.internal.client.zzed;
import com.google.android.gms.ads.internal.util.client.zzo;
import com.google.android.gms.ads.internal.util.zze;

public final class sig extends VideoController.VideoLifecycleCallbacks {
    public final ddg a;

    public sig(ddg ddgVar) {
        this.a = ddgVar;
    }

    public static zzed a(ddg ddgVar) {
        zzea zzeaVarW = ddgVar.W();
        if (zzeaVarW == null) {
            return null;
        }
        try {
            return zzeaVarW.zzi();
        } catch (RemoteException unused) {
            return null;
        }
    }

    @Override
    public final void onVideoEnd() {
        zzed zzedVarA = a(this.a);
        if (zzedVarA == null) {
            return;
        }
        try {
            zzedVarA.zze();
        } catch (RemoteException e) {
            int i = zze.zza;
            zzo.zzk("Unable to call onVideoEnd()", e);
        }
    }

    @Override
    public final void onVideoPause() {
        zzed zzedVarA = a(this.a);
        if (zzedVarA == null) {
            return;
        }
        try {
            zzedVarA.zzg();
        } catch (RemoteException e) {
            int i = zze.zza;
            zzo.zzk("Unable to call onVideoEnd()", e);
        }
    }

    @Override
    public final void onVideoStart() {
        zzed zzedVarA = a(this.a);
        if (zzedVarA == null) {
            return;
        }
        try {
            zzedVarA.zzi();
        } catch (RemoteException e) {
            int i = zze.zza;
            zzo.zzk("Unable to call onVideoEnd()", e);
        }
    }
}
