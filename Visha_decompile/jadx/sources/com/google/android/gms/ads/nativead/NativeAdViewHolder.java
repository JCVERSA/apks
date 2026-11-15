package com.google.android.gms.ads.nativead;

import android.os.RemoteException;
import android.view.View;
import androidx.annotation.NonNull;
import com.google.android.gms.ads.internal.client.zzbb;
import com.google.android.gms.ads.internal.util.client.zzo;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.android.gms.internal.ads.zzbgd;
import defpackage.wd8;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.Map;
import java.util.WeakHashMap;

public final class NativeAdViewHolder {

    @NonNull
    public static final WeakHashMap zza = new WeakHashMap();
    public zzbgd a;
    public WeakReference b;

    public NativeAdViewHolder(@NonNull View view, @NonNull Map<String, View> map, @NonNull Map<String, View> map2) {
        wd8.m(view, "ContainerView must not be null");
        if (view instanceof NativeAdView) {
            zzo.zzg("The provided containerView is of type of NativeAdView, which cannot be usedwith NativeAdViewHolder.");
            return;
        }
        WeakHashMap weakHashMap = zza;
        if (weakHashMap.get(view) != null) {
            zzo.zzg("The provided containerView is already in use with another NativeAdViewHolder.");
            return;
        }
        weakHashMap.put(view, this);
        this.b = new WeakReference(view);
        this.a = zzbb.zza().zzk(view, a(map), a(map2));
    }

    public static final HashMap a(Map map) {
        return map == null ? new HashMap() : new HashMap(map);
    }

    public final void setClickConfirmingView(@NonNull View view) {
        try {
            this.a.zzb(ObjectWrapper.wrap(view));
        } catch (RemoteException e) {
            zzo.zzh("Unable to call setClickConfirmingView on delegate", e);
        }
    }

    public void setNativeAd(@NonNull NativeAd nativeAd) {
        IObjectWrapper iObjectWrapper = (IObjectWrapper) nativeAd.a();
        WeakReference weakReference = this.b;
        View view = weakReference != null ? (View) weakReference.get() : null;
        if (view == null) {
            zzo.zzj("NativeAdViewHolder.setNativeAd containerView doesn't exist, returning");
            return;
        }
        WeakHashMap weakHashMap = zza;
        if (!weakHashMap.containsKey(view)) {
            weakHashMap.put(view, this);
        }
        zzbgd zzbgdVar = this.a;
        if (zzbgdVar != null) {
            try {
                zzbgdVar.zzc(iObjectWrapper);
            } catch (RemoteException e) {
                zzo.zzh("Unable to call setNativeAd on delegate", e);
            }
        }
    }

    public void unregisterNativeAd() {
        zzbgd zzbgdVar = this.a;
        if (zzbgdVar != null) {
            try {
                zzbgdVar.zzd();
            } catch (RemoteException e) {
                zzo.zzh("Unable to call unregisterNativeAd on delegate", e);
            }
        }
        WeakReference weakReference = this.b;
        View view = weakReference != null ? (View) weakReference.get() : null;
        if (view != null) {
            zza.remove(view);
        }
    }
}
