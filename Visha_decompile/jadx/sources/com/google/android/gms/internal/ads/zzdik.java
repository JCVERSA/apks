package com.google.android.gms.internal.ads;

import android.view.MotionEvent;
import android.view.View;
import android.view.ViewTreeObserver;
import android.widget.FrameLayout;
import androidx.annotation.Nullable;
import com.google.android.gms.ads.formats.NativeAd;
import com.google.android.gms.ads.internal.util.client.zzo;
import com.google.android.gms.ads.internal.util.zze;
import com.google.android.gms.ads.internal.zzv;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import defpackage.dfg;
import defpackage.jue;
import defpackage.mff;
import defpackage.zcg;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONObject;

public final class zzdik extends zzbgc implements ViewTreeObserver.OnGlobalLayoutListener, ViewTreeObserver.OnScrollChangedListener, dfg {
    private final WeakReference zza;
    private final Map zzb = new HashMap();
    private final Map zzc = new HashMap();
    private final Map zzd = new HashMap();
    private zcg zze;
    private jue zzf;

    public zzdik(View view, HashMap map, HashMap map2) {
        view.setOnTouchListener(this);
        view.setOnClickListener(this);
        zzv.zzy();
        mff.a(view, this);
        zzv.zzy();
        mff.b(view, this);
        this.zza = new WeakReference(view);
        for (Map.Entry entry : map.entrySet()) {
            String str = (String) entry.getKey();
            View view2 = (View) entry.getValue();
            if (view2 != null) {
                this.zzb.put(str, new WeakReference(view2));
                if (!NativeAd.ASSET_ADCHOICES_CONTAINER_VIEW.equals(str) && !"3011".equals(str)) {
                    view2.setOnTouchListener(this);
                    view2.setClickable(true);
                    view2.setOnClickListener(this);
                }
            }
        }
        this.zzd.putAll(this.zzb);
        for (Map.Entry entry2 : map2.entrySet()) {
            View view3 = (View) entry2.getValue();
            if (view3 != null) {
                this.zzc.put((String) entry2.getKey(), new WeakReference(view3));
                view3.setOnTouchListener(this);
                view3.setClickable(false);
            }
        }
        this.zzd.putAll(this.zzc);
        this.zzf = new jue(view.getContext(), view);
    }

    @Override
    public final synchronized void onClick(View view) {
        zcg zcgVar = this.zze;
        if (zcgVar != null) {
            zcgVar.l(view, zzf(), zzl(), zzm(), true);
        }
    }

    @Override
    public final synchronized void onGlobalLayout() {
        zcg zcgVar = this.zze;
        if (zcgVar != null) {
            zcgVar.j(zzf(), zzl(), zzm(), zcg.G(zzf()));
        }
    }

    @Override
    public final synchronized void onScrollChanged() {
        zcg zcgVar = this.zze;
        if (zcgVar != null) {
            zcgVar.j(zzf(), zzl(), zzm(), zcg.G(zzf()));
        }
    }

    @Override
    public final synchronized boolean onTouch(View view, MotionEvent motionEvent) {
        zcg zcgVar = this.zze;
        if (zcgVar != null) {
            zcgVar.t(view, motionEvent, zzf());
        }
        return false;
    }

    @Override
    public final synchronized void zzb(IObjectWrapper iObjectWrapper) {
        try {
            if (this.zze != null) {
                Object objUnwrap = ObjectWrapper.unwrap(iObjectWrapper);
                if (!(objUnwrap instanceof View)) {
                    int i = zze.zza;
                    zzo.zzj("Calling NativeAdViewHolderNonagonDelegate.setClickConfirmingView with wrong wrapped object");
                }
                this.zze.v((View) objUnwrap);
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    @Override
    public final synchronized void zzc(IObjectWrapper iObjectWrapper) {
        Object objUnwrap = ObjectWrapper.unwrap(iObjectWrapper);
        if (!(objUnwrap instanceof zcg)) {
            int i = zze.zza;
            zzo.zzj("Not an instance of InternalNativeAd. This is most likely a transient error");
            return;
        }
        zcg zcgVar = this.zze;
        if (zcgVar != null) {
            zcgVar.B(this);
        }
        zcg zcgVar2 = (zcg) objUnwrap;
        if (!zcgVar2.C()) {
            int i2 = zze.zza;
            zzo.zzg("Your account must be enabled to use this feature. Talk to your account manager to request this feature for your account.");
        } else {
            this.zze = zcgVar2;
            zcgVar2.A(this);
            this.zze.s(zzf());
        }
    }

    @Override
    public final synchronized void zzd() {
        zcg zcgVar = this.zze;
        if (zcgVar != null) {
            zcgVar.B(this);
            this.zze = null;
        }
    }

    @Override
    @Nullable
    public final View zzf() {
        return (View) this.zza.get();
    }

    @Override
    @Nullable
    public final synchronized View zzg(String str) {
        WeakReference weakReference = (WeakReference) this.zzd.get(str);
        if (weakReference == null) {
            return null;
        }
        return (View) weakReference.get();
    }

    @Override
    @Nullable
    public final FrameLayout zzh() {
        return null;
    }

    @Override
    public final jue zzi() {
        return this.zzf;
    }

    @Override
    @Nullable
    public final synchronized IObjectWrapper zzj() {
        return null;
    }

    /* JADX WARN: Unreachable blocks removed: 2, instructions: 2 */
    @Override
    public final synchronized String zzk() {
        return "1007";
    }

    @Override
    public final synchronized Map zzl() {
        return this.zzd;
    }

    @Override
    public final synchronized Map zzm() {
        return this.zzb;
    }

    @Override
    @Nullable
    public final synchronized Map zzn() {
        return this.zzc;
    }

    @Override
    @Nullable
    public final synchronized JSONObject zzo() {
        return null;
    }

    @Override
    @Nullable
    public final synchronized JSONObject zzp() {
        zcg zcgVar = this.zze;
        if (zcgVar == null) {
            return null;
        }
        return zcgVar.W(zzf(), zzl(), zzm());
    }

    @Override
    public final synchronized void zzq(String str, View view, boolean z) {
        this.zzd.put(str, new WeakReference(view));
        if (!NativeAd.ASSET_ADCHOICES_CONTAINER_VIEW.equals(str) && !"3011".equals(str)) {
            this.zzb.put(str, new WeakReference(view));
            view.setClickable(true);
            view.setOnClickListener(this);
            view.setOnTouchListener(this);
        }
    }
}
