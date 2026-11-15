package defpackage;

import android.app.Activity;
import android.os.RemoteException;
import androidx.annotation.Nullable;
import com.google.android.gms.ads.FullScreenContentCallback;
import com.google.android.gms.ads.OnPaidEventListener;
import com.google.android.gms.ads.ResponseInfo;
import com.google.android.gms.ads.appopen.AppOpenAd;
import com.google.android.gms.ads.internal.client.zzdx;
import com.google.android.gms.ads.internal.client.zzfo;
import com.google.android.gms.ads.internal.util.client.zzo;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.android.gms.internal.ads.zzazx;
import com.google.android.gms.internal.ads.zzbaa;

public final class nve extends AppOpenAd {
    public final zzbaa a;
    public final String b;
    public final zzazx c = new zzazx();
    public FullScreenContentCallback d;
    public OnPaidEventListener e;

    public nve(zzbaa zzbaaVar, String str) {
        this.a = zzbaaVar;
        this.b = str;
    }

    @Override
    public final String getAdUnitId() {
        return this.b;
    }

    @Override
    public final FullScreenContentCallback getFullScreenContentCallback() {
        return this.d;
    }

    @Override
    public final OnPaidEventListener getOnPaidEventListener() {
        return this.e;
    }

    @Override
    public final ResponseInfo getResponseInfo() {
        zzdx zzdxVarZzf;
        try {
            zzdxVarZzf = this.a.zzf();
        } catch (RemoteException e) {
            zzo.zzl("#007 Could not call remote method.", e);
            zzdxVarZzf = null;
        }
        return ResponseInfo.zzb(zzdxVarZzf);
    }

    @Override
    public final void setFullScreenContentCallback(FullScreenContentCallback fullScreenContentCallback) {
        this.d = fullScreenContentCallback;
        this.c.zzg(fullScreenContentCallback);
    }

    @Override
    public final void setImmersiveMode(boolean z) {
        try {
            this.a.zzg(z);
        } catch (RemoteException e) {
            zzo.zzl("#007 Could not call remote method.", e);
        }
    }

    @Override
    public final void setOnPaidEventListener(@Nullable OnPaidEventListener onPaidEventListener) {
        this.e = onPaidEventListener;
        try {
            this.a.zzh(new zzfo(onPaidEventListener));
        } catch (RemoteException e) {
            zzo.zzl("#007 Could not call remote method.", e);
        }
    }

    @Override
    public final void show(Activity activity) {
        try {
            this.a.zzi(ObjectWrapper.wrap(activity), this.c);
        } catch (RemoteException e) {
            zzo.zzl("#007 Could not call remote method.", e);
        }
    }
}
