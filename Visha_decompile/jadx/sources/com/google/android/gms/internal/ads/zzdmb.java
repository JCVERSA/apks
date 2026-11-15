package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.RemoteException;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import androidx.collection.ArrayMap;
import androidx.collection.SimpleArrayMap;
import com.google.android.gms.ads.internal.client.zzea;
import com.google.android.gms.ads.internal.util.client.zzo;
import com.google.android.gms.ads.internal.util.zze;
import com.google.android.gms.ads.internal.zzv;
import com.google.android.gms.ads.nativead.NativeCustomFormatAd;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import defpackage.ceg;
import defpackage.ddg;
import defpackage.fxg;
import defpackage.qhg;
import defpackage.zcg;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Objects;

public final class zzdmb extends zzbgm {
    private final Context zza;
    private final ddg zzb;
    private ceg zzc;
    private zcg zzd;

    public zzdmb(Context context, ddg ddgVar, ceg cegVar, zcg zcgVar) {
        this.zza = context;
        this.zzb = ddgVar;
        this.zzc = cegVar;
        this.zzd = zcgVar;
    }

    @Override
    public final zzea zze() {
        return this.zzb.W();
    }

    @Override
    public final zzbfq zzf() throws RemoteException {
        try {
            return this.zzd.P().a();
        } catch (NullPointerException e) {
            zzv.zzp().x(e, "InternalNativeCustomTemplateAdShim.getMediaContent");
            return null;
        }
    }

    @Override
    public final zzbft zzg(String str) {
        return (zzbft) this.zzb.U().get(str);
    }

    @Override
    public final IObjectWrapper zzh() {
        return ObjectWrapper.wrap(this.zza);
    }

    @Override
    public final String zzi() {
        return this.zzb.a();
    }

    @Override
    public final String zzj(String str) {
        return (String) this.zzb.V().get(str);
    }

    @Override
    public final List zzk() {
        try {
            ddg ddgVar = this.zzb;
            SimpleArrayMap simpleArrayMapU = ddgVar.U();
            SimpleArrayMap simpleArrayMapV = ddgVar.V();
            String[] strArr = new String[simpleArrayMapU.getSize() + simpleArrayMapV.getSize()];
            int i = 0;
            for (int i2 = 0; i2 < simpleArrayMapU.getSize(); i2++) {
                strArr[i] = (String) simpleArrayMapU.keyAt(i2);
                i++;
            }
            for (int i3 = 0; i3 < simpleArrayMapV.getSize(); i3++) {
                strArr[i] = (String) simpleArrayMapV.keyAt(i3);
                i++;
            }
            return Arrays.asList(strArr);
        } catch (NullPointerException e) {
            zzv.zzp().x(e, "InternalNativeCustomTemplateAdShim.getAvailableAssetNames");
            return new ArrayList();
        }
    }

    @Override
    public final void zzl() {
        zcg zcgVar = this.zzd;
        if (zcgVar != null) {
            zcgVar.a();
        }
        this.zzd = null;
        this.zzc = null;
    }

    @Override
    public final void zzm() {
        try {
            String strC = this.zzb.c();
            if (Objects.equals(strC, "Google")) {
                int i = zze.zza;
                zzo.zzj("Illegal argument specified for omid partner name.");
            } else if (TextUtils.isEmpty(strC)) {
                int i2 = zze.zza;
                zzo.zzj("Not starting OMID session. OM partner name has not been configured.");
            } else {
                zcg zcgVar = this.zzd;
                if (zcgVar != null) {
                    zcgVar.S(strC, false);
                }
            }
        } catch (NullPointerException e) {
            zzv.zzp().x(e, "InternalNativeCustomTemplateAdShim.initializeDisplayOpenMeasurement");
        }
    }

    @Override
    public final void zzn(String str) {
        zcg zcgVar = this.zzd;
        if (zcgVar != null) {
            zcgVar.n(str);
        }
    }

    @Override
    public final void zzo() {
        zcg zcgVar = this.zzd;
        if (zcgVar != null) {
            zcgVar.r();
        }
    }

    @Override
    public final void zzp(IObjectWrapper iObjectWrapper) {
        zcg zcgVar;
        Object objUnwrap = ObjectWrapper.unwrap(iObjectWrapper);
        if (!(objUnwrap instanceof View) || this.zzb.h0() == null || (zcgVar = this.zzd) == null) {
            return;
        }
        zcgVar.s((View) objUnwrap);
    }

    @Override
    public final boolean zzq() {
        zcg zcgVar = this.zzd;
        if (zcgVar != null && !zcgVar.F()) {
            return false;
        }
        ddg ddgVar = this.zzb;
        return ddgVar.e0() != null && ddgVar.f0() == null;
    }

    @Override
    public final boolean zzr(IObjectWrapper iObjectWrapper) {
        ceg cegVar;
        Object objUnwrap = ObjectWrapper.unwrap(iObjectWrapper);
        if (!(objUnwrap instanceof ViewGroup) || (cegVar = this.zzc) == null || !cegVar.f((ViewGroup) objUnwrap)) {
            return false;
        }
        this.zzb.d0().zzar(new qhg(this, NativeCustomFormatAd.ASSET_NAME_VIDEO));
        return true;
    }

    @Override
    public final boolean zzs(IObjectWrapper iObjectWrapper) {
        ceg cegVar;
        Object objUnwrap = ObjectWrapper.unwrap(iObjectWrapper);
        if (!(objUnwrap instanceof ViewGroup) || (cegVar = this.zzc) == null || !cegVar.g((ViewGroup) objUnwrap)) {
            return false;
        }
        this.zzb.f0().zzar(new qhg(this, NativeCustomFormatAd.ASSET_NAME_VIDEO));
        return true;
    }

    @Override
    public final boolean zzt() {
        ddg ddgVar = this.zzb;
        fxg fxgVarH0 = ddgVar.h0();
        if (fxgVarH0 == null) {
            int i = zze.zza;
            zzo.zzj("Trying to start OMID session before creation.");
            return false;
        }
        zzv.zzB().h(fxgVarH0.a());
        if (ddgVar.e0() == null) {
            return true;
        }
        ddgVar.e0().zzd("onSdkLoaded", new ArrayMap());
        return true;
    }
}
