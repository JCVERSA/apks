package com.google.android.gms.ads.internal.client;

import android.graphics.drawable.Drawable;
import android.os.RemoteException;
import androidx.annotation.Nullable;
import com.google.android.gms.ads.MediaContent;
import com.google.android.gms.ads.VideoController;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.android.gms.internal.ads.zzbfq;
import com.google.android.gms.internal.ads.zzbgn;

public final class zzez implements MediaContent {
    public final zzbfq a;
    public final VideoController b = new VideoController();
    public final zzbgn c;

    public zzez(zzbfq zzbfqVar, @Nullable zzbgn zzbgnVar) {
        this.a = zzbfqVar;
        this.c = zzbgnVar;
    }

    @Override
    public final float getAspectRatio() {
        try {
            return this.a.zze();
        } catch (RemoteException e) {
            com.google.android.gms.ads.internal.util.client.zzo.zzh("", e);
            return 0.0f;
        }
    }

    @Override
    public final float getCurrentTime() {
        try {
            return this.a.zzf();
        } catch (RemoteException e) {
            com.google.android.gms.ads.internal.util.client.zzo.zzh("", e);
            return 0.0f;
        }
    }

    @Override
    public final float getDuration() {
        try {
            return this.a.zzg();
        } catch (RemoteException e) {
            com.google.android.gms.ads.internal.util.client.zzo.zzh("", e);
            return 0.0f;
        }
    }

    @Override
    @Nullable
    public final Drawable getMainImage() {
        try {
            IObjectWrapper iObjectWrapperZzi = this.a.zzi();
            if (iObjectWrapperZzi != null) {
                return (Drawable) ObjectWrapper.unwrap(iObjectWrapperZzi);
            }
            return null;
        } catch (RemoteException e) {
            com.google.android.gms.ads.internal.util.client.zzo.zzh("", e);
            return null;
        }
    }

    @Override
    public final VideoController getVideoController() {
        try {
            zzbfq zzbfqVar = this.a;
            if (zzbfqVar.zzh() != null) {
                this.b.zzb(zzbfqVar.zzh());
            }
        } catch (RemoteException e) {
            com.google.android.gms.ads.internal.util.client.zzo.zzh("Exception occurred while getting video controller", e);
        }
        return this.b;
    }

    @Override
    public final boolean hasVideoContent() {
        try {
            return this.a.zzl();
        } catch (RemoteException e) {
            com.google.android.gms.ads.internal.util.client.zzo.zzh("", e);
            return false;
        }
    }

    @Override
    public final void setMainImage(@Nullable Drawable drawable) {
        try {
            this.a.zzj(ObjectWrapper.wrap(drawable));
        } catch (RemoteException e) {
            com.google.android.gms.ads.internal.util.client.zzo.zzh("", e);
        }
    }

    @Override
    @Nullable
    public final zzbgn zza() {
        return this.c;
    }

    @Override
    public final boolean zzb() {
        try {
            return this.a.zzk();
        } catch (RemoteException e) {
            com.google.android.gms.ads.internal.util.client.zzo.zzh("", e);
            return false;
        }
    }

    public final zzbfq zzc() {
        return this.a;
    }
}
