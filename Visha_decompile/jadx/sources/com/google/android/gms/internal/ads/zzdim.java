package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.BitmapFactory;
import android.graphics.Shader;
import android.graphics.drawable.BitmapDrawable;
import android.text.TextUtils;
import android.util.Base64;
import android.util.DisplayMetrics;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewTreeObserver;
import android.widget.FrameLayout;
import androidx.annotation.Nullable;
import com.google.android.gms.ads.formats.NativeAd;
import com.google.android.gms.ads.internal.client.zzbd;
import com.google.android.gms.ads.internal.util.client.zzo;
import com.google.android.gms.ads.internal.util.zzbv;
import com.google.android.gms.ads.internal.util.zze;
import com.google.android.gms.ads.internal.zzv;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import defpackage.cye;
import defpackage.dfg;
import defpackage.g8i;
import defpackage.geg;
import defpackage.jue;
import defpackage.mff;
import defpackage.zcg;
import defpackage.zef;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONObject;

public final class zzdim extends zzbfw implements ViewTreeObserver.OnGlobalLayoutListener, ViewTreeObserver.OnScrollChangedListener, dfg {
    public static final zzfww zza = zzfww.zzq("2011", "1009", "3010");
    private final String zzb;
    private FrameLayout zzd;
    private FrameLayout zze;
    private final g8i zzf;
    private View zzg;
    private zcg zzi;
    private jue zzj;
    private zzbfq zzl;
    private boolean zzm;
    private GestureDetector zzo;
    private Map zzc = new HashMap();
    private IObjectWrapper zzk = null;
    private boolean zzn = false;
    private final int zzh = 251410000;

    public zzdim(FrameLayout frameLayout, FrameLayout frameLayout2, int i) {
        String str;
        this.zzd = frameLayout;
        this.zze = frameLayout2;
        String canonicalName = frameLayout.getClass().getCanonicalName();
        if ("com.google.android.gms.ads.formats.NativeContentAdView".equals(canonicalName)) {
            str = "1007";
        } else if ("com.google.android.gms.ads.formats.NativeAppInstallAdView".equals(canonicalName)) {
            str = "2009";
        } else {
            "com.google.android.gms.ads.formats.UnifiedNativeAdView".equals(canonicalName);
            str = "3012";
        }
        this.zzb = str;
        zzv.zzy();
        mff.a(frameLayout, this);
        zzv.zzy();
        mff.b(frameLayout, this);
        this.zzf = zef.f;
        this.zzj = new jue(this.zzd.getContext(), this.zzd);
        frameLayout.setOnTouchListener(this);
        frameLayout.setOnClickListener(this);
    }

    public static void zzs(zzdim zzdimVar) {
        if (zzdimVar.zzg == null) {
            View view = new View(zzdimVar.zzd.getContext());
            zzdimVar.zzg = view;
            view.setLayoutParams(new FrameLayout.LayoutParams(-1, 0));
        }
        if (zzdimVar.zzd != zzdimVar.zzg.getParent()) {
            zzdimVar.zzd.addView(zzdimVar.zzg);
        }
    }

    private final synchronized void zzt(String str) {
        DisplayMetrics displayMetrics;
        try {
            View frameLayout = new FrameLayout(this.zze.getContext());
            frameLayout.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
            Context context = this.zze.getContext();
            frameLayout.setClickable(false);
            frameLayout.setFocusable(false);
            if (!TextUtils.isEmpty(str)) {
                if (context.getApplicationContext() != null) {
                    context = context.getApplicationContext();
                }
                Resources resources = context.getResources();
                if (resources != null && (displayMetrics = resources.getDisplayMetrics()) != null) {
                    try {
                        byte[] bArrDecode = Base64.decode(str, 0);
                        BitmapDrawable bitmapDrawable = new BitmapDrawable(BitmapFactory.decodeByteArray(bArrDecode, 0, bArrDecode.length));
                        bitmapDrawable.setTargetDensity(displayMetrics.densityDpi);
                        Shader.TileMode tileMode = Shader.TileMode.REPEAT;
                        bitmapDrawable.setTileModeXY(tileMode, tileMode);
                        frameLayout.setBackground(bitmapDrawable);
                    } catch (IllegalArgumentException e) {
                        zzo.zzk("Encountered invalid base64 watermark.", e);
                    }
                }
            }
            this.zze.addView(frameLayout);
        } catch (Throwable th) {
            throw th;
        }
    }

    private final synchronized void zzu() {
        this.zzf.execute(new Runnable() {
            @Override
            public final void run() {
                zzdim.zzs(this.zza);
            }
        });
    }

    private final synchronized void zzv() {
        if (!((Boolean) zzbd.zzc().b(cye.Fb)).booleanValue() || this.zzi.I() == 0) {
            return;
        }
        this.zzo = new GestureDetector(this.zzd.getContext(), new geg(this.zzi, this));
    }

    @Override
    public final synchronized void onClick(View view) {
        zcg zcgVar = this.zzi;
        if (zcgVar == null || !zcgVar.D()) {
            return;
        }
        this.zzi.i();
        this.zzi.l(view, this.zzd, zzl(), zzm(), false);
    }

    @Override
    public final synchronized void onGlobalLayout() {
        zcg zcgVar = this.zzi;
        if (zcgVar != null) {
            FrameLayout frameLayout = this.zzd;
            zcgVar.j(frameLayout, zzl(), zzm(), zcg.G(frameLayout));
        }
    }

    @Override
    public final synchronized void onScrollChanged() {
        zcg zcgVar = this.zzi;
        if (zcgVar != null) {
            FrameLayout frameLayout = this.zzd;
            zcgVar.j(frameLayout, zzl(), zzm(), zcg.G(frameLayout));
        }
    }

    @Override
    public final synchronized boolean onTouch(View view, MotionEvent motionEvent) {
        zcg zcgVar = this.zzi;
        if (zcgVar != null) {
            zcgVar.t(view, motionEvent, this.zzd);
            if (((Boolean) zzbd.zzc().b(cye.Fb)).booleanValue() && this.zzo != null && this.zzi.I() != 0) {
                this.zzo.onTouchEvent(motionEvent);
            }
        }
        return false;
    }

    @Override
    public final synchronized IObjectWrapper zzb(String str) {
        return ObjectWrapper.wrap(zzg(str));
    }

    @Override
    public final synchronized void zzc() {
        try {
            if (this.zzn) {
                return;
            }
            zcg zcgVar = this.zzi;
            if (zcgVar != null) {
                zcgVar.B(this);
                this.zzi = null;
            }
            this.zzc.clear();
            this.zzd.removeAllViews();
            this.zze.removeAllViews();
            this.zzc = null;
            this.zzd = null;
            this.zze = null;
            this.zzg = null;
            this.zzj = null;
            this.zzn = true;
        } catch (Throwable th) {
            throw th;
        }
    }

    @Override
    public final void zzd(IObjectWrapper iObjectWrapper) {
        onTouch(this.zzd, (MotionEvent) ObjectWrapper.unwrap(iObjectWrapper));
    }

    @Override
    public final synchronized void zzdt(String str, IObjectWrapper iObjectWrapper) {
        zzq(str, (View) ObjectWrapper.unwrap(iObjectWrapper), true);
    }

    @Override
    public final synchronized void zzdu(IObjectWrapper iObjectWrapper) {
        this.zzi.v((View) ObjectWrapper.unwrap(iObjectWrapper));
    }

    @Override
    public final synchronized void zzdv(zzbfq zzbfqVar) {
        if (!this.zzn) {
            this.zzm = true;
            this.zzl = zzbfqVar;
            zcg zcgVar = this.zzi;
            if (zcgVar != null) {
                zcgVar.P().b(zzbfqVar);
            }
        }
    }

    @Override
    public final synchronized void zzdw(IObjectWrapper iObjectWrapper) {
        if (this.zzn) {
            return;
        }
        this.zzk = iObjectWrapper;
    }

    @Override
    public final synchronized void zzdx(IObjectWrapper iObjectWrapper) {
        if (this.zzn) {
            return;
        }
        Object objUnwrap = ObjectWrapper.unwrap(iObjectWrapper);
        if (!(objUnwrap instanceof zcg)) {
            int i = zze.zza;
            zzo.zzj("Not an instance of native engine. This is most likely a transient error");
            return;
        }
        zcg zcgVar = this.zzi;
        if (zcgVar != null) {
            zcgVar.B(this);
        }
        zzu();
        zcg zcgVar2 = (zcg) objUnwrap;
        this.zzi = zcgVar2;
        zcgVar2.A(this);
        this.zzi.s(this.zzd);
        this.zzi.e0(this.zze);
        if (this.zzm) {
            this.zzi.P().b(this.zzl);
        }
        if (((Boolean) zzbd.zzc().b(cye.f4)).booleanValue() && !TextUtils.isEmpty(this.zzi.T())) {
            zzt(this.zzi.T());
        }
        zzv();
    }

    @Override
    public final synchronized void zze(IObjectWrapper iObjectWrapper, int i) {
    }

    @Override
    public final View zzf() {
        return this.zzd;
    }

    @Override
    @Nullable
    public final synchronized View zzg(String str) {
        WeakReference weakReference;
        if (!this.zzn && (weakReference = (WeakReference) this.zzc.get(str)) != null) {
            return (View) weakReference.get();
        }
        return null;
    }

    @Override
    public final FrameLayout zzh() {
        return this.zze;
    }

    @Override
    public final jue zzi() {
        return this.zzj;
    }

    @Override
    @Nullable
    public final IObjectWrapper zzj() {
        return this.zzk;
    }

    @Override
    public final synchronized String zzk() {
        return this.zzb;
    }

    @Override
    public final synchronized Map zzl() {
        return this.zzc;
    }

    @Override
    public final synchronized Map zzm() {
        return this.zzc;
    }

    @Override
    @Nullable
    public final synchronized Map zzn() {
        return null;
    }

    @Override
    @Nullable
    public final synchronized JSONObject zzo() {
        zcg zcgVar = this.zzi;
        if (zcgVar == null) {
            return null;
        }
        return zcgVar.V(this.zzd, zzl(), zzm());
    }

    @Override
    @Nullable
    public final synchronized JSONObject zzp() {
        zcg zcgVar = this.zzi;
        if (zcgVar == null) {
            return null;
        }
        return zcgVar.W(this.zzd, zzl(), zzm());
    }

    @Override
    public final synchronized void zzq(String str, View view, boolean z) {
        if (!this.zzn) {
            if (view == null) {
                this.zzc.remove(str);
                return;
            }
            this.zzc.put(str, new WeakReference(view));
            if (!NativeAd.ASSET_ADCHOICES_CONTAINER_VIEW.equals(str) && !"3011".equals(str)) {
                if (zzbv.zzi(this.zzh)) {
                    view.setOnTouchListener(this);
                }
                view.setClickable(true);
                view.setOnClickListener(this);
            }
        }
    }

    public final FrameLayout zzr() {
        return this.zzd;
    }
}
