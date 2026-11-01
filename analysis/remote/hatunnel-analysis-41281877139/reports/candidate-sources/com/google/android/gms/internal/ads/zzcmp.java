package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.graphics.Canvas;
import android.net.Uri;
import android.os.Looper;
import android.util.DisplayMetrics;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewTreeObserver;
import android.view.WindowManager;
import android.webkit.DownloadListener;
import android.webkit.ValueCallback;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import androidx.webkit.WebViewCompat;
import androidx.webkit.WebViewFeature;
import app.fast.ssh.ProtectedFastSSH;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import com.google.android.gms.common.util.Predicate;
import com.google.common.util.concurrent.ListenableFuture;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import javax.annotation.ParametersAreNonnullByDefault;
import org.json.JSONException;
import org.json.JSONObject;

@ParametersAreNonnullByDefault
final class zzcmp extends WebView implements DownloadListener, ViewTreeObserver.OnGlobalLayoutListener, zzclm {
    public static final int zza = 0;
    private final String zzA;
    private zzcms zzB;
    private boolean zzC;
    private boolean zzD;
    private zzbmi zzE;
    private zzbmf zzF;
    private zzbgt zzG;
    private int zzH;
    private int zzI;
    private zzbjs zzJ;
    private final zzbjs zzK;
    private zzbjs zzL;
    private final zzbjt zzM;
    private int zzN;
    private com.google.android.gms.ads.internal.overlay.zzm zzO;
    private boolean zzP;
    private final com.google.android.gms.ads.internal.util.zzci zzQ;
    private int zzR;
    private int zzS;
    private int zzT;
    private int zzU;
    private int zzV;
    private Map zzW;
    private final WindowManager zzX;
    private final zzbif zzY;
    private boolean zzZ;
    private final zzcno zzb;
    private final zzbbd zzc;
    private final zzfma zzd;
    private final zzbkn zze;
    private final VersionInfoParcel zzf;
    private com.google.android.gms.ads.internal.zzn zzg;
    private final com.google.android.gms.ads.internal.zza zzh;
    private final DisplayMetrics zzi;
    private final float zzj;
    private zzfld zzk;
    private zzflg zzl;
    private boolean zzm;
    private boolean zzn;
    private zzclx zzo;
    private com.google.android.gms.ads.internal.overlay.zzm zzp;
    private zzeml zzq;
    private zzemj zzr;
    private zzcnw zzs;
    private final String zzt;
    private boolean zzu;
    private boolean zzv;
    private boolean zzw;
    private boolean zzx;
    private Boolean zzy;
    private boolean zzz;

    protected zzcmp(zzcno zzcnoVar, zzcnw zzcnwVar, String str, boolean z, boolean z2, zzbbd zzbbdVar, zzbkn zzbknVar, VersionInfoParcel versionInfoParcel, zzbjv zzbjvVar, com.google.android.gms.ads.internal.zzn zznVar, com.google.android.gms.ads.internal.zza zzaVar, zzbif zzbifVar, zzfld zzfldVar, zzflg zzflgVar, zzfma zzfmaVar) {
        zzflg zzflgVar2;
        super(zzcnoVar);
        this.zzm = false;
        this.zzn = false;
        this.zzz = true;
        this.zzA = "";
        this.zzR = -1;
        this.zzS = -1;
        this.zzT = -1;
        this.zzU = -1;
        this.zzV = -1;
        this.zzb = zzcnoVar;
        this.zzs = zzcnwVar;
        this.zzt = str;
        this.zzw = z;
        this.zzc = zzbbdVar;
        this.zzd = zzfmaVar;
        this.zze = zzbknVar;
        this.zzf = versionInfoParcel;
        this.zzg = zznVar;
        this.zzh = zzaVar;
        WindowManager windowManager = (WindowManager) getContext().getSystemService(ProtectedFastSSH.s("惔"));
        this.zzX = windowManager;
        com.google.android.gms.ads.internal.zzt.zzc();
        DisplayMetrics displayMetricsZzv = com.google.android.gms.ads.internal.util.zzs.zzv(windowManager);
        this.zzi = displayMetricsZzv;
        this.zzj = displayMetricsZzv.density;
        this.zzY = zzbifVar;
        this.zzk = zzfldVar;
        this.zzl = zzflgVar;
        this.zzQ = new com.google.android.gms.ads.internal.util.zzci(zzcnoVar.zzb(), this, this, null);
        this.zzZ = false;
        setBackgroundColor(0);
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zzd(zzbjg.zznm)).booleanValue()) {
            setSoundEffectsEnabled(false);
        }
        WebSettings settings = getSettings();
        settings.setAllowFileAccess(false);
        try {
            settings.setJavaScriptEnabled(true);
        } catch (NullPointerException e) {
            int i = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzg(ProtectedFastSSH.s("惕"), e);
        }
        settings.setSavePassword(false);
        settings.setSupportMultipleWindows(true);
        settings.setJavaScriptCanOpenWindowsAutomatically(true);
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zzd(zzbjg.zznl)).booleanValue()) {
            settings.setMixedContentMode(1);
        } else {
            settings.setMixedContentMode(2);
        }
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zzd(zzbjg.zzoY)).booleanValue()) {
            settings.setGeolocationEnabled(false);
        }
        settings.setUserAgentString(com.google.android.gms.ads.internal.zzt.zzc().zze(zzcnoVar, versionInfoParcel.afmaVersion));
        com.google.android.gms.ads.internal.zzt.zzc();
        com.google.android.gms.ads.internal.util.zzs.zzp(getContext(), settings);
        setDownloadListener(this);
        zzbc();
        addJavascriptInterface(new zzcmx(this, new zzcmv(this)), ProtectedFastSSH.s("惖"));
        removeJavascriptInterface(ProtectedFastSSH.s("惗"));
        removeJavascriptInterface(ProtectedFastSSH.s("惘"));
        zzbh();
        zzbjt zzbjtVar = new zzbjt(new zzbjv(true, ProtectedFastSSH.s("惙"), this.zzt));
        this.zzM = zzbjtVar;
        zzbjtVar.zzc().zza(null);
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zzd(zzbjg.zzcG)).booleanValue() && (zzflgVar2 = this.zzl) != null && zzflgVar2.zzb != null) {
            zzbjtVar.zzc().zzd(ProtectedFastSSH.s("惚"), this.zzl.zzb);
        }
        zzbjtVar.zzc();
        zzbjs zzbjsVarZzf = zzbjv.zzf();
        this.zzK = zzbjsVarZzf;
        zzbjtVar.zza(ProtectedFastSSH.s("惛"), zzbjsVarZzf);
        this.zzL = null;
        this.zzJ = null;
        com.google.android.gms.ads.internal.util.zzce.zza().zzb(zzcnoVar);
        com.google.android.gms.ads.internal.zzt.zzh().zzk();
    }

    static void zzaT(zzcmp zzcmpVar) {
        super.destroy();
    }

    private final synchronized void zzaZ(String str) {
        try {
            com.google.android.gms.ads.internal.util.zzs.zza.post(new zzcmm(this, ProtectedFastSSH.s("惜")));
        } catch (Throwable th) {
            com.google.android.gms.ads.internal.zzt.zzh().zzh(th, ProtectedFastSSH.s("惝"));
            int i = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzj(ProtectedFastSSH.s("惞"), th);
        }
    }

    private final synchronized void zzba() {
        Boolean boolZzc = com.google.android.gms.ads.internal.zzt.zzh().zzc();
        this.zzy = boolZzc;
        if (boolZzc == null) {
            try {
                evaluateJavascript(ProtectedFastSSH.s("惟"), null);
                zzaQ(true);
            } catch (IllegalStateException unused) {
                zzaQ(false);
            }
        }
    }

    private final void zzbb() {
        zzbjn.zza(this.zzM.zzc(), this.zzK, ProtectedFastSSH.s("惠"));
    }

    private final synchronized void zzbc() {
        zzfld zzfldVar = this.zzk;
        if (zzfldVar != null && zzfldVar.zzam) {
            int i = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzd(ProtectedFastSSH.s("惡"));
            zzbd();
            return;
        }
        if (!this.zzw && !this.zzs.zzg()) {
            int i2 = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzd(ProtectedFastSSH.s("惢"));
            zzbe();
            return;
        }
        int i3 = com.google.android.gms.ads.internal.util.zze.zza;
        com.google.android.gms.ads.internal.util.client.zzo.zzd(ProtectedFastSSH.s("惣"));
        zzbe();
    }

    private final synchronized void zzbd() {
        if (!this.zzx) {
            setLayerType(1, null);
        }
        this.zzx = true;
    }

    private final synchronized void zzbe() {
        if (this.zzx) {
            setLayerType(0, null);
        }
        this.zzx = false;
    }

    private final synchronized void zzbf() {
        if (this.zzP) {
            return;
        }
        this.zzP = true;
        com.google.android.gms.ads.internal.zzt.zzh().zzl();
    }

    private final synchronized void zzbg() {
        Map map = this.zzW;
        if (map != null) {
            Iterator it = map.values().iterator();
            while (it.hasNext()) {
                ((zzcjs) it.next()).release();
            }
        }
        this.zzW = null;
    }

    private final void zzbh() {
        zzbjt zzbjtVar = this.zzM;
        if (zzbjtVar == null) {
            return;
        }
        zzbjv zzbjvVarZzc = zzbjtVar.zzc();
        zzbjl zzbjlVarZza = com.google.android.gms.ads.internal.zzt.zzh().zza();
        if (zzbjlVarZza != null) {
            zzbjlVarZza.zzb(zzbjvVarZzc);
        }
    }

    private final void zzbi(boolean z) {
        HashMap map = new HashMap();
        map.put(ProtectedFastSSH.s("惦"), true != z ? ProtectedFastSSH.s("惤") : ProtectedFastSSH.s("惥"));
        zze(ProtectedFastSSH.s("惧"), map);
    }

    @Override
    public final synchronized void destroy() {
        zzbh();
        this.zzQ.zzc();
        com.google.android.gms.ads.internal.overlay.zzm zzmVar = this.zzp;
        if (zzmVar != null) {
            zzmVar.zza();
            this.zzp.zzp();
            this.zzp = null;
        }
        this.zzq = null;
        this.zzr = null;
        this.zzo.zzF();
        this.zzG = null;
        this.zzg = null;
        setOnClickListener(null);
        setOnTouchListener(null);
        if (this.zzv) {
            return;
        }
        com.google.android.gms.ads.internal.zzt.zzB().zza(this);
        zzbg();
        this.zzv = true;
        if (!((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zzd(zzbjg.zzmt)).booleanValue()) {
            com.google.android.gms.ads.internal.util.zze.zza(ProtectedFastSSH.s("惨"));
            zzY();
            return;
        }
        Activity activityZzb = this.zzb.zzb();
        if (activityZzb != null && activityZzb.isDestroyed()) {
            com.google.android.gms.ads.internal.util.zze.zza(ProtectedFastSSH.s("惨"));
            zzY();
        } else {
            com.google.android.gms.ads.internal.util.zze.zza(ProtectedFastSSH.s("惩"));
            com.google.android.gms.ads.internal.util.zze.zza(ProtectedFastSSH.s("惪"));
            zzaZ(ProtectedFastSSH.s("惜"));
        }
    }

    @Override
    public final synchronized void evaluateJavascript(String str, ValueCallback valueCallback) {
        if (zzX()) {
            int i = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzl(ProtectedFastSSH.s("惫"), null);
            if (valueCallback != null) {
                valueCallback.onReceiveValue(null);
                return;
            }
            return;
        }
        if (!((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zzd(zzbjg.zzmu)).booleanValue() || Looper.getMainLooper().getThread() == Thread.currentThread()) {
            super.evaluateJavascript(str, valueCallback);
        } else {
            zzcgj.zzf.zza(new zzcmo(this, str, valueCallback));
        }
    }

    protected final void finalize() throws Throwable {
        try {
            synchronized (this) {
                if (!this.zzv) {
                    this.zzo.zzF();
                    com.google.android.gms.ads.internal.zzt.zzB().zza(this);
                    zzbg();
                    zzbf();
                }
            }
            super.finalize();
        } catch (Throwable th) {
            super.finalize();
            throw th;
        }
    }

    @Override
    public final synchronized void loadData(String str, String str2, String str3) {
        if (!zzX()) {
            super.loadData(str, str2, str3);
        } else {
            int i = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzi(ProtectedFastSSH.s("惫"));
        }
    }

    @Override
    public final synchronized void loadDataWithBaseURL(String str, String str2, String str3, String str4, String str5) throws Throwable {
        try {
            try {
                if (!zzX()) {
                    super.loadDataWithBaseURL(str, str2, str3, str4, str5);
                } else {
                    int i = com.google.android.gms.ads.internal.util.zze.zza;
                    com.google.android.gms.ads.internal.util.client.zzo.zzi(ProtectedFastSSH.s("惫"));
                }
            } catch (Throwable th) {
                th = th;
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
            throw th;
        }
    }

    @Override
    public final synchronized void loadUrl(String str) {
        if (zzX()) {
            int i = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzi(ProtectedFastSSH.s("惫"));
            return;
        }
        try {
            com.google.android.gms.ads.internal.util.zzs.zza.post(new zzcml(this, str));
        } catch (Throwable th) {
            com.google.android.gms.ads.internal.zzt.zzh().zzh(th, ProtectedFastSSH.s("惬"));
            int i2 = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzj(ProtectedFastSSH.s("惭"), th);
        }
    }

    @Override
    public final void onAdClicked() {
        zzclx zzclxVar = this.zzo;
        if (zzclxVar != null) {
            zzclxVar.onAdClicked();
        }
    }

    @Override
    protected final synchronized void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (!zzX()) {
            this.zzQ.zzd();
        }
        if (this.zzZ) {
            onResume();
            this.zzZ = false;
        }
        boolean z = this.zzC;
        zzclx zzclxVar = this.zzo;
        if (zzclxVar != null && zzclxVar.zzl()) {
            if (!this.zzD) {
                this.zzo.zzo();
                this.zzo.zzp();
                this.zzD = true;
            }
            zzaM();
            z = true;
        }
        zzbi(z);
    }

    @Override
    protected final void onDetachedFromWindow() {
        zzclx zzclxVar;
        synchronized (this) {
            if (!zzX()) {
                this.zzQ.zze();
            }
            super.onDetachedFromWindow();
            if (this.zzD && (zzclxVar = this.zzo) != null && zzclxVar.zzl() && getViewTreeObserver() != null && getViewTreeObserver().isAlive()) {
                this.zzo.zzo();
                this.zzo.zzp();
                this.zzD = false;
            }
        }
        zzbi(false);
    }

    @Override
    public final void onDownloadStart(String str, String str2, String str3, String str4, long j) {
        try {
            Intent intent = new Intent(ProtectedFastSSH.s("惮"));
            intent.setDataAndType(Uri.parse(str), str4);
            if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zzd(zzbjg.zzmI)).booleanValue() && getContext() != null) {
                intent.setPackage(getContext().getPackageName());
            }
            com.google.android.gms.ads.internal.zzt.zzc();
            com.google.android.gms.ads.internal.util.zzs.zzY(getContext(), intent);
        } catch (ActivityNotFoundException e) {
            StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 51 + String.valueOf(str4).length());
            sb.append(ProtectedFastSSH.s("惯"));
            sb.append(str);
            sb.append(ProtectedFastSSH.s("惰"));
            sb.append(str4);
            String string = sb.toString();
            int i = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzd(string);
            zzcfv zzcfvVarZzh = com.google.android.gms.ads.internal.zzt.zzh();
            String.valueOf(str);
            zzcfvVarZzh.zzh(e, ProtectedFastSSH.s("惱").concat(String.valueOf(str)));
        }
    }

    @Override
    protected final void onDraw(Canvas canvas) {
        if (zzX()) {
            return;
        }
        super.onDraw(canvas);
    }

    @Override
    public final boolean onGenericMotionEvent(MotionEvent motionEvent) {
        float axisValue = motionEvent.getAxisValue(9);
        float axisValue2 = motionEvent.getAxisValue(10);
        if (motionEvent.getActionMasked() == 8) {
            if (axisValue > 0.0f && !canScrollVertically(-1)) {
                return false;
            }
            if (axisValue < 0.0f && !canScrollVertically(1)) {
                return false;
            }
            if (axisValue2 > 0.0f && !canScrollHorizontally(-1)) {
                return false;
            }
            if (axisValue2 < 0.0f && !canScrollHorizontally(1)) {
                return false;
            }
        }
        return super.onGenericMotionEvent(motionEvent);
    }

    @Override
    public final void onGlobalLayout() {
        boolean zZzaM = zzaM();
        com.google.android.gms.ads.internal.overlay.zzm zzmVarZzL = zzL();
        if (zzmVarZzL == null || !zZzaM) {
            return;
        }
        zzmVarZzL.zzB();
    }

    /* JADX WARN: Code duplicated, block: B:43:0x007e A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:44:0x0080 A[Catch: all -> 0x0221, TryCatch #0 {, blocks: (B:3:0x0001, B:5:0x0008, B:8:0x000d, B:10:0x0013, B:12:0x0017, B:15:0x0021, B:17:0x0029, B:20:0x002e, B:22:0x0036, B:24:0x0048, B:27:0x004d, B:29:0x0054, B:33:0x005e, B:36:0x0063, B:39:0x0074, B:47:0x008a, B:41:0x007b, B:44:0x0080, B:50:0x0097, B:52:0x009f, B:54:0x00b1, B:57:0x00b6, B:59:0x00da, B:61:0x00e2, B:60:0x00de, B:64:0x00e7, B:66:0x00ef, B:69:0x00fa, B:78:0x011e, B:80:0x0125, B:85:0x012d, B:87:0x013f, B:89:0x014d, B:93:0x015a, B:96:0x015f, B:98:0x01e4, B:99:0x01e7, B:101:0x01ee, B:106:0x01fb, B:108:0x0201, B:109:0x0204, B:111:0x0208, B:112:0x0211, B:115:0x021c), top: B:121:0x0001 }] */
    /* JADX WARN: Code duplicated, block: B:45:0x0087  */
    @Override
    protected final synchronized void onMeasure(int i, int i2) {
        int i3;
        int i4;
        int i5;
        int i6 = 0;
        if (zzX()) {
            setMeasuredDimension(0, 0);
            return;
        }
        if (!isInEditMode() && !this.zzw && !this.zzs.zzh()) {
            if (this.zzs.zzj()) {
                super.onMeasure(i, i2);
                return;
            }
            if (this.zzs.zzi()) {
                if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zzd(zzbjg.zzeS)).booleanValue()) {
                    super.onMeasure(i, i2);
                    return;
                }
                zzcms zzcmsVarZzh = zzh();
                float fZzm = zzcmsVarZzh != null ? zzcmsVarZzh.zzm() : 0.0f;
                if (fZzm == 0.0f) {
                    super.onMeasure(i, i2);
                    return;
                }
                int size = View.MeasureSpec.getSize(i);
                int size2 = View.MeasureSpec.getSize(i2);
                float f = size2 * fZzm;
                int i7 = (int) (size / fZzm);
                if (size2 != 0) {
                    i3 = (int) f;
                    if (size == 0) {
                        i6 = size;
                    } else if (i3 != 0) {
                        i7 = (int) (i3 / fZzm);
                        i4 = size2;
                        i5 = i3;
                        i6 = i5;
                    }
                    i4 = size2;
                    i5 = i3;
                } else if (i7 != 0) {
                    i5 = (int) (i7 * fZzm);
                    i6 = size;
                    i4 = i7;
                } else {
                    size2 = 0;
                    i3 = (int) f;
                    if (size == 0) {
                        i6 = size;
                    } else if (i3 != 0) {
                        i7 = (int) (i3 / fZzm);
                        i4 = size2;
                        i5 = i3;
                        i6 = i5;
                    }
                    i4 = size2;
                    i5 = i3;
                }
                setMeasuredDimension(Math.min(i5, i6), Math.min(i7, i4));
                return;
            }
            if (this.zzs.zzf()) {
                if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zzd(zzbjg.zzfa)).booleanValue()) {
                    super.onMeasure(i, i2);
                    return;
                }
                zzab(ProtectedFastSSH.s("惲"), new zzcmj(this));
                zzaP(ProtectedFastSSH.s("想"));
                float f2 = this.zzi.density;
                int size3 = View.MeasureSpec.getSize(i);
                int i8 = this.zzI;
                setMeasuredDimension(size3, i8 != -1 ? (int) (i8 * f2) : View.MeasureSpec.getSize(i2));
                return;
            }
            if (this.zzs.zzg()) {
                DisplayMetrics displayMetrics = this.zzi;
                setMeasuredDimension(displayMetrics.widthPixels, displayMetrics.heightPixels);
                return;
            }
            int mode = View.MeasureSpec.getMode(i);
            int size4 = View.MeasureSpec.getSize(i);
            int mode2 = View.MeasureSpec.getMode(i2);
            int size5 = View.MeasureSpec.getSize(i2);
            int i9 = (mode == Integer.MIN_VALUE || mode == 1073741824) ? size4 : Integer.MAX_VALUE;
            int i10 = (mode2 == Integer.MIN_VALUE || mode2 == 1073741824) ? size5 : Integer.MAX_VALUE;
            zzcnw zzcnwVar = this.zzs;
            boolean z = zzcnwVar.zzb > i9 || zzcnwVar.zza > i10;
            if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zzd(zzbjg.zzgD)).booleanValue()) {
                zzcnw zzcnwVar2 = this.zzs;
                float f3 = zzcnwVar2.zzb;
                float f4 = this.zzj;
                z &= f3 / f4 <= ((float) i9) / f4 && ((float) zzcnwVar2.zza) / f4 <= ((float) i10) / f4;
            }
            if (!z) {
                if (getVisibility() != 8) {
                    setVisibility(0);
                }
                if (!this.zzn) {
                    this.zzY.zzc(10002);
                    this.zzn = true;
                }
                zzcnw zzcnwVar3 = this.zzs;
                setMeasuredDimension(zzcnwVar3.zzb, zzcnwVar3.zza);
                return;
            }
            zzcnw zzcnwVar4 = this.zzs;
            float f5 = zzcnwVar4.zzb;
            float f6 = this.zzj;
            int i11 = (int) (f5 / f6);
            int i12 = (int) (zzcnwVar4.zza / f6);
            int i13 = (int) (size4 / f6);
            int i14 = (int) (size5 / f6);
            StringBuilder sb = new StringBuilder(String.valueOf(i11).length() + 36 + String.valueOf(i12).length() + 18 + String.valueOf(i13).length() + 1 + String.valueOf(i14).length() + 4);
            sb.append(ProtectedFastSSH.s("惴"));
            sb.append(i11);
            String strS = ProtectedFastSSH.s("惵");
            sb.append(strS);
            sb.append(i12);
            sb.append(ProtectedFastSSH.s("惶"));
            sb.append(i13);
            sb.append(strS);
            sb.append(i14);
            sb.append(ProtectedFastSSH.s("惷"));
            String string = sb.toString();
            int i15 = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzi(string);
            if (getVisibility() != 8) {
                setVisibility(4);
            }
            setMeasuredDimension(0, 0);
            if (this.zzm) {
                return;
            }
            this.zzY.zzc(10001);
            this.zzm = true;
            return;
        }
        super.onMeasure(i, i2);
    }

    @Override
    public final void onPause() {
        if (zzX()) {
            return;
        }
        try {
            super.onPause();
            if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zzd(zzbjg.zzom)).booleanValue() && WebViewFeature.isFeatureSupported(ProtectedFastSSH.s("惸"))) {
                String strS = ProtectedFastSSH.s("惹");
                int i = com.google.android.gms.ads.internal.util.zze.zza;
                com.google.android.gms.ads.internal.util.client.zzo.zzd(strS);
                WebViewCompat.setAudioMuted(this, true);
            }
        } catch (Exception e) {
            int i2 = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzg(ProtectedFastSSH.s("惺"), e);
            if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zzd(zzbjg.zzop)).booleanValue()) {
                com.google.android.gms.ads.internal.zzt.zzh().zzh(e, ProtectedFastSSH.s("惻"));
            }
        }
    }

    @Override
    public final void onResume() {
        if (zzX()) {
            return;
        }
        try {
            super.onResume();
            if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zzd(zzbjg.zzom)).booleanValue() && WebViewFeature.isFeatureSupported(ProtectedFastSSH.s("惸"))) {
                String strS = ProtectedFastSSH.s("惼");
                int i = com.google.android.gms.ads.internal.util.zze.zza;
                com.google.android.gms.ads.internal.util.client.zzo.zzd(strS);
                WebViewCompat.setAudioMuted(this, false);
            }
        } catch (Exception e) {
            int i2 = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzg(ProtectedFastSSH.s("惽"), e);
            if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zzd(zzbjg.zzop)).booleanValue()) {
                com.google.android.gms.ads.internal.zzt.zzh().zzh(e, ProtectedFastSSH.s("惾"));
            }
        }
    }

    @Override
    public final boolean onTouchEvent(MotionEvent motionEvent) {
        boolean z = ((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zzd(zzbjg.zzeA)).booleanValue() && this.zzo.zzm();
        if ((!this.zzo.zzl() || this.zzo.zzn()) && !z) {
            zzbbd zzbbdVar = this.zzc;
            if (zzbbdVar != null) {
                zzbbdVar.zzc(motionEvent);
            }
            zzbkn zzbknVar = this.zze;
            if (zzbknVar != null) {
                zzbknVar.zza(motionEvent);
            }
        } else {
            synchronized (this) {
                zzbmi zzbmiVar = this.zzE;
                if (zzbmiVar != null) {
                    zzbmiVar.zzb(motionEvent);
                }
            }
        }
        if (zzX()) {
            return false;
        }
        return super.onTouchEvent(motionEvent);
    }

    @Override
    public final void setWebViewClient(WebViewClient webViewClient) {
        super.setWebViewClient(webViewClient);
        if (webViewClient instanceof zzclx) {
            this.zzo = (zzclx) webViewClient;
        }
    }

    @Override
    public final void stopLoading() {
        if (zzX()) {
            return;
        }
        try {
            super.stopLoading();
        } catch (Exception e) {
            int i = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzg(ProtectedFastSSH.s("惿"), e);
        }
    }

    @Override
    public final void zzA(int i) {
    }

    @Override
    public final void zzB(int i) {
    }

    @Override
    public final zzfld zzC() {
        return this.zzk;
    }

    @Override
    public final WebView zzD() {
        return this;
    }

    @Override
    public final View zzE() {
        return this;
    }

    @Override
    public final List zzF() {
        return new ArrayList();
    }

    @Override
    public final void zzG() {
        zzbb();
        HashMap map = new HashMap(1);
        map.put(ProtectedFastSSH.s("愀"), this.zzf.afmaVersion);
        zze(ProtectedFastSSH.s("愁"), map);
    }

    @Override
    public final void zzH(int i) {
        if (i == 0) {
            zzbjt zzbjtVar = this.zzM;
            zzbjn.zza(zzbjtVar.zzc(), this.zzK, ProtectedFastSSH.s("愂"));
        }
        zzbb();
        zzbjt zzbjtVar2 = this.zzM;
        zzbjtVar2.zzc();
        zzbjtVar2.zzc().zzd(ProtectedFastSSH.s("愃"), String.valueOf(i));
        HashMap map = new HashMap(2);
        map.put(ProtectedFastSSH.s("愄"), String.valueOf(i));
        map.put(ProtectedFastSSH.s("愀"), this.zzf.afmaVersion);
        zze(ProtectedFastSSH.s("愁"), map);
    }

    @Override
    public final void zzI() {
        if (this.zzJ == null) {
            zzbjt zzbjtVar = this.zzM;
            zzbjn.zza(zzbjtVar.zzc(), this.zzK, ProtectedFastSSH.s("愅"));
            zzbjtVar.zzc();
            zzbjs zzbjsVarZzf = zzbjv.zzf();
            this.zzJ = zzbjsVarZzf;
            zzbjtVar.zza(ProtectedFastSSH.s("愆"), zzbjsVarZzf);
        }
        HashMap map = new HashMap(1);
        map.put(ProtectedFastSSH.s("愀"), this.zzf.afmaVersion);
        zze(ProtectedFastSSH.s("愇"), map);
    }

    @Override
    public final void zzJ() {
        HashMap map = new HashMap(3);
        map.put(ProtectedFastSSH.s("愈"), String.valueOf(com.google.android.gms.ads.internal.zzt.zzi().zzd()));
        map.put(ProtectedFastSSH.s("愉"), String.valueOf(com.google.android.gms.ads.internal.zzt.zzi().zzb()));
        map.put(ProtectedFastSSH.s("愊"), String.valueOf(com.google.android.gms.ads.internal.util.zzaa.zze(getContext())));
        zze(ProtectedFastSSH.s("愋"), map);
    }

    @Override
    public final Context zzK() {
        return this.zzb.zzc();
    }

    @Override
    public final synchronized com.google.android.gms.ads.internal.overlay.zzm zzL() {
        return this.zzp;
    }

    @Override
    public final synchronized com.google.android.gms.ads.internal.overlay.zzm zzM() {
        return this.zzO;
    }

    @Override
    public final synchronized zzcnw zzN() {
        return this.zzs;
    }

    @Override
    public final synchronized String zzO() {
        return this.zzt;
    }

    @Override
    public final zzcnk zzP() {
        return this.zzo;
    }

    @Override
    public final WebViewClient zzQ() {
        return this.zzo;
    }

    @Override
    public final synchronized boolean zzR() {
        return this.zzu;
    }

    @Override
    public final zzbbd zzS() {
        return this.zzc;
    }

    @Override
    public final zzfma zzT() {
        return this.zzd;
    }

    @Override
    public final synchronized zzeml zzU() {
        return this.zzq;
    }

    @Override
    public final synchronized zzemj zzV() {
        return this.zzr;
    }

    @Override
    public final synchronized boolean zzW() {
        return this.zzw;
    }

    @Override
    public final synchronized boolean zzX() {
        return this.zzv;
    }

    @Override
    public final synchronized void zzY() {
        com.google.android.gms.ads.internal.util.zze.zza(ProtectedFastSSH.s("愌"));
        zzbf();
        com.google.android.gms.ads.internal.util.zzs.zza.post(new zzcmk(this));
    }

    @Override
    public final synchronized boolean zzZ() {
        return this.zzz;
    }

    @Override
    public final void zza(String str) {
        zzaP(str);
    }

    @Override
    public final boolean zzaA(boolean z, int i) {
        destroy();
        zzcmn zzcmnVar = new zzcmn(z, i);
        zzbif zzbifVar = this.zzY;
        zzbifVar.zzb(zzcmnVar);
        zzbifVar.zzc(10003);
        return true;
    }

    @Override
    public final boolean zzaB() {
        return false;
    }

    @Override
    public final zzflg zzaC() {
        return this.zzl;
    }

    @Override
    public final void zzaD(zzfld zzfldVar, zzflg zzflgVar) {
        this.zzk = zzfldVar;
        this.zzl = zzflgVar;
    }

    /* JADX WARN: Code duplicated, block: B:11:0x0010 A[DONT_GENERATE] */
    /* JADX WARN: Code duplicated, block: B:8:0x000b A[Catch: all -> 0x0012, TRY_LEAVE, TryCatch #0 {, blocks: (B:5:0x0004, B:6:0x0007, B:8:0x000b), top: B:16:0x0004 }] */
    /* JADX WARN: Instruction removed from duplicated block: B:11:0x0010, please report this as an issue */
    @Override
    public final synchronized void zzaE(boolean z, int i) {
        com.google.android.gms.ads.internal.overlay.zzm zzmVar;
        if (!z) {
            zzmVar = this.zzp;
            if (zzmVar != null) {
                zzmVar.zzt(z, i);
                return;
            }
            return;
        }
        setBackgroundColor(0);
        zzmVar = this.zzp;
        if (zzmVar != null) {
            zzmVar.zzt(z, i);
            return;
        }
        return;
        throw th;
    }

    @Override
    public final ListenableFuture zzaF() {
        zzbkn zzbknVar = this.zze;
        return zzbknVar == null ? zzhcy.zza(null) : zzbknVar.zzb();
    }

    @Override
    public final void zzaG(boolean z) {
        this.zzZ = true;
    }

    @Override
    public final void zzaH(com.google.android.gms.ads.internal.overlay.zzc zzcVar, boolean z, boolean z2, String str) {
        this.zzo.zzv(zzcVar, z, z2, str);
    }

    @Override
    public final void zzaI(boolean z, int i, boolean z2) {
        this.zzo.zzx(z, i, z2);
    }

    @Override
    public final void zzaJ(boolean z, int i, String str, boolean z2, boolean z3) {
        this.zzo.zzy(z, i, str, z2, z3);
    }

    @Override
    public final void zzaK(boolean z, int i, String str, String str2, boolean z2) {
        this.zzo.zzz(z, i, str, str2, z2);
    }

    @Override
    public final void zzaL(String str, String str2, int i) {
        this.zzo.zzw(str, str2, 14);
    }

    /* JADX WARN: Code duplicated, block: B:36:0x00a7  */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x0085, code lost:
    
        if (r10.zzV != r9) goto L28;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final boolean zzaM() {
        int iZzC;
        int iZzC2;
        boolean z = false;
        if (this.zzo.zzk() || this.zzo.zzl()) {
            com.google.android.gms.ads.internal.client.zzay.zza();
            DisplayMetrics displayMetrics = this.zzi;
            int iZzC3 = com.google.android.gms.ads.internal.util.client.zzf.zzC(displayMetrics, displayMetrics.widthPixels);
            com.google.android.gms.ads.internal.client.zzay.zza();
            int iZzC4 = com.google.android.gms.ads.internal.util.client.zzf.zzC(displayMetrics, displayMetrics.heightPixels);
            Activity activityZzb = this.zzb.zzb();
            if (activityZzb == null || activityZzb.getWindow() == null) {
                iZzC = iZzC3;
                iZzC2 = iZzC4;
            } else {
                com.google.android.gms.ads.internal.zzt.zzc();
                int[] iArrZzV = com.google.android.gms.ads.internal.util.zzs.zzV(activityZzb);
                com.google.android.gms.ads.internal.client.zzay.zza();
                iZzC = com.google.android.gms.ads.internal.util.client.zzf.zzC(displayMetrics, iArrZzV[0]);
                com.google.android.gms.ads.internal.client.zzay.zza();
                iZzC2 = com.google.android.gms.ads.internal.util.client.zzf.zzC(displayMetrics, iArrZzV[1]);
            }
            com.google.android.gms.ads.internal.zzt.zzc();
            int rotation = this.zzX.getDefaultDisplay().getRotation();
            if (this.zzS == iZzC3 && this.zzR == iZzC4 && this.zzT == iZzC && this.zzU == iZzC2) {
                if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zzd(zzbjg.zzaK)).booleanValue()) {
                }
            }
            if (this.zzS == iZzC3 && this.zzR == iZzC4) {
                if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zzd(zzbjg.zzaK)).booleanValue() && this.zzV != rotation) {
                    z = true;
                }
            } else {
                z = true;
            }
            this.zzS = iZzC3;
            this.zzR = iZzC4;
            this.zzT = iZzC;
            this.zzU = iZzC2;
            this.zzV = rotation;
            new zzbyy(this, "").zzl(iZzC3, iZzC4, iZzC, iZzC2, displayMetrics.density, rotation);
            return z;
        }
        return false;
    }

    protected final synchronized void zzaN(String str) {
        if (!zzX()) {
            loadUrl(str);
        } else {
            int i = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzi(ProtectedFastSSH.s("惫"));
        }
    }

    protected final synchronized void zzaO(String str, ValueCallback valueCallback) {
        if (!zzX()) {
            evaluateJavascript(str, null);
        } else {
            int i = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzi(ProtectedFastSSH.s("惫"));
        }
    }

    protected final void zzaP(String str) {
        if (zzaR() == null) {
            zzba();
        }
        if (zzaR().booleanValue()) {
            zzaO(str, null);
        } else {
            zzaN(ProtectedFastSSH.s("愍").concat(str));
        }
    }

    final void zzaQ(Boolean bool) {
        synchronized (this) {
            this.zzy = bool;
        }
        com.google.android.gms.ads.internal.zzt.zzh().zzb(bool);
    }

    final synchronized Boolean zzaR() {
        return this.zzy;
    }

    public final zzclx zzaS() {
        return this.zzo;
    }

    final void zzaU(String str, ValueCallback valueCallback) {
        super.evaluateJavascript(str, valueCallback);
    }

    final void zzaV(String str) {
        super.loadUrl(str);
    }

    final void zzaW(String str) {
        super.loadUrl(ProtectedFastSSH.s("惜"));
    }

    final int zzaX() {
        return this.zzI;
    }

    final void zzaY(int i) {
        this.zzI = i;
    }

    @Override
    public final synchronized boolean zzaa() {
        return this.zzH > 0;
    }

    @Override
    public final void zzab(String str, zzbqh zzbqhVar) {
        zzclx zzclxVar = this.zzo;
        if (zzclxVar != null) {
            zzclxVar.zzB(str, zzbqhVar);
        }
    }

    @Override
    public final void zzac(String str, zzbqh zzbqhVar) {
        zzclx zzclxVar = this.zzo;
        if (zzclxVar != null) {
            zzclxVar.zzC(str, zzbqhVar);
        }
    }

    @Override
    public final void zzad(String str, Predicate predicate) {
        zzclx zzclxVar = this.zzo;
        if (zzclxVar != null) {
            zzclxVar.zzE(str, predicate);
        }
    }

    @Override
    public final synchronized void zzae(com.google.android.gms.ads.internal.overlay.zzm zzmVar) {
        this.zzp = zzmVar;
    }

    @Override
    public final synchronized void zzaf(zzcnw zzcnwVar) {
        this.zzs = zzcnwVar;
        requestLayout();
    }

    @Override
    public final synchronized void zzag(boolean z) {
        boolean z2 = this.zzw;
        this.zzw = z;
        zzbc();
        if (z != z2) {
            if (!((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zzd(zzbjg.zzaI)).booleanValue() || !this.zzs.zzg()) {
                new zzbyy(this, "").zzk(true != z ? ProtectedFastSSH.s("愎") : ProtectedFastSSH.s("意"));
            }
        }
    }

    @Override
    public final void zzah() {
        this.zzQ.zzb();
    }

    @Override
    public final void zzai(Context context) {
        zzcno zzcnoVar = this.zzb;
        zzcnoVar.setBaseContext(context);
        this.zzQ.zza(zzcnoVar.zzb());
    }

    @Override
    public final synchronized void zzaj(boolean z) {
        com.google.android.gms.ads.internal.overlay.zzm zzmVar = this.zzp;
        if (zzmVar != null) {
            zzmVar.zzs(this.zzo.zzk(), z);
        } else {
            this.zzu = z;
        }
    }

    @Override
    public final synchronized void zzak(zzeml zzemlVar) {
        this.zzq = zzemlVar;
    }

    @Override
    public final synchronized void zzal(zzemj zzemjVar) {
        this.zzr = zzemjVar;
    }

    @Override
    public final synchronized void zzam(int i) {
        com.google.android.gms.ads.internal.overlay.zzm zzmVar = this.zzp;
        if (zzmVar != null) {
            zzmVar.zzv(i);
        }
    }

    @Override
    public final synchronized void zzan(com.google.android.gms.ads.internal.overlay.zzm zzmVar) {
        this.zzO = zzmVar;
    }

    @Override
    public final synchronized void zzao(boolean z) {
        this.zzz = z;
    }

    @Override
    public final void zzap() {
        if (this.zzL == null) {
            zzbjt zzbjtVar = this.zzM;
            zzbjtVar.zzc();
            zzbjs zzbjsVarZzf = zzbjv.zzf();
            this.zzL = zzbjsVarZzf;
            zzbjtVar.zza(ProtectedFastSSH.s("愐"), zzbjsVarZzf);
        }
    }

    @Override
    public final synchronized void zzaq(zzbmi zzbmiVar) {
        this.zzE = zzbmiVar;
    }

    @Override
    public final synchronized zzbmi zzar() {
        return this.zzE;
    }

    @Override
    public final synchronized void zzas(boolean z) {
        com.google.android.gms.ads.internal.overlay.zzm zzmVar;
        int i = this.zzH + (true != z ? -1 : 1);
        this.zzH = i;
        if (i > 0 || (zzmVar = this.zzp) == null) {
            return;
        }
        zzmVar.zzE();
    }

    @Override
    public final void zzat() {
        setBackgroundColor(0);
    }

    @Override
    public final synchronized void zzau(String str, String str2, String str3) throws Throwable {
        Throwable th;
        String str4;
        String strS = ProtectedFastSSH.s("愑");
        synchronized (this) {
            try {
                try {
                    if (zzX()) {
                        int i = com.google.android.gms.ads.internal.util.zze.zza;
                        com.google.android.gms.ads.internal.util.client.zzo.zzi(ProtectedFastSSH.s("惫"));
                        return;
                    }
                    String str5 = (String) com.google.android.gms.ads.internal.client.zzba.zzc().zzd(zzbjg.zzaH);
                    JSONObject jSONObject = new JSONObject();
                    String strS2 = ProtectedFastSSH.s("愒");
                    try {
                        try {
                            jSONObject.put(ProtectedFastSSH.s("愀"), str5);
                            jSONObject.put(ProtectedFastSSH.s("愓"), ProtectedFastSSH.s("愔"));
                            jSONObject.put(ProtectedFastSSH.s("愕"), strS2);
                            str4 = strS + jSONObject.toString() + ProtectedFastSSH.s("愖");
                        } catch (JSONException e) {
                            int i2 = com.google.android.gms.ads.internal.util.zze.zza;
                            com.google.android.gms.ads.internal.util.client.zzo.zzj(ProtectedFastSSH.s("愗"), e);
                            str4 = null;
                        }
                        super.loadDataWithBaseURL(str, zzcnd.zza(str2, str4), ProtectedFastSSH.s("愘"), ProtectedFastSSH.s("愙"), null);
                    } catch (Throwable th2) {
                        th = th2;
                        throw th;
                    }
                } catch (Throwable th3) {
                    th = th3;
                    th = th;
                    throw th;
                }
            } catch (Throwable th4) {
                th = th4;
                th = th;
                throw th;
            }
        }
    }

    @Override
    public final void zzav() {
        com.google.android.gms.ads.internal.util.zze.zza(ProtectedFastSSH.s("愚"));
    }

    @Override
    public final void zzaw(boolean z) {
        this.zzo.zzO(z);
    }

    @Override
    public final synchronized void zzax(zzbmf zzbmfVar) {
        this.zzF = zzbmfVar;
    }

    @Override
    public final synchronized void zzay(zzbgt zzbgtVar) {
        this.zzG = zzbgtVar;
    }

    @Override
    public final synchronized zzbgt zzaz() {
        return this.zzG;
    }

    @Override
    public final void zzb(String str, JSONObject jSONObject) {
        zzc(str, jSONObject.toString());
    }

    @Override
    public final void zzc(String str, String str2) {
        StringBuilder sb = new StringBuilder(str.length() + 1 + String.valueOf(str2).length() + 2);
        sb.append(str);
        sb.append(ProtectedFastSSH.s("愛"));
        sb.append(str2);
        sb.append(ProtectedFastSSH.s("愜"));
        zzaP(sb.toString());
    }

    @Override
    public final void zzd(String str, JSONObject jSONObject) {
        if (jSONObject == null) {
            jSONObject = new JSONObject();
        }
        String string = jSONObject.toString();
        StringBuilder sb = new StringBuilder(ProtectedFastSSH.s("愝"));
        sb.append(str);
        sb.append(ProtectedFastSSH.s("愞"));
        sb.append(string);
        sb.append(ProtectedFastSSH.s("愜"));
        String string2 = sb.toString();
        int i = com.google.android.gms.ads.internal.util.zze.zza;
        com.google.android.gms.ads.internal.util.client.zzo.zzd(ProtectedFastSSH.s("感").concat(string2));
        zzaP(sb.toString());
    }

    @Override
    public final void zzdT() {
        zzclx zzclxVar = this.zzo;
        if (zzclxVar != null) {
            zzclxVar.zzdT();
        }
    }

    @Override
    public final void zzdj(zzbff zzbffVar) {
        synchronized (this) {
            this.zzC = zzbffVar.zzj;
        }
        zzbi(zzbffVar.zzj);
    }

    @Override
    public final synchronized void zzdk() {
        com.google.android.gms.ads.internal.zzn zznVar = this.zzg;
        if (zznVar != null) {
            zznVar.zzdk();
        }
    }

    @Override
    public final synchronized void zzdl() {
        com.google.android.gms.ads.internal.zzn zznVar = this.zzg;
        if (zznVar != null) {
            zznVar.zzdl();
        }
    }

    @Override
    public final zzchu zzdm() {
        return null;
    }

    @Override
    public final void zzdn(boolean z) {
        this.zzo.zzM(false);
    }

    @Override
    public final void zzdu() {
        zzclx zzclxVar = this.zzo;
        if (zzclxVar != null) {
            zzclxVar.zzdu();
        }
    }

    @Override
    public final void zze(String str, Map map) {
        try {
            zzd(str, com.google.android.gms.ads.internal.client.zzay.zza().zzm(map));
        } catch (JSONException unused) {
            int i = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzi(ProtectedFastSSH.s("愠"));
        }
    }

    @Override
    public final synchronized zzcms zzh() {
        return this.zzB;
    }

    @Override
    public final zzbjs zzi() {
        return this.zzK;
    }

    @Override
    public final Activity zzj() {
        return this.zzb.zzb();
    }

    @Override
    public final com.google.android.gms.ads.internal.zza zzk() {
        return this.zzh;
    }

    @Override
    public final void zzl() {
        com.google.android.gms.ads.internal.overlay.zzm zzmVarZzL = zzL();
        if (zzmVarZzL != null) {
            zzmVarZzL.zzD();
        }
    }

    @Override
    public final synchronized String zzm() {
        return this.zzA;
    }

    @Override
    public final synchronized String zzn() {
        zzflg zzflgVar = this.zzl;
        if (zzflgVar == null) {
            return null;
        }
        return zzflgVar.zzb;
    }

    @Override
    public final synchronized void zzo(int i) {
        this.zzN = i;
    }

    @Override
    public final synchronized int zzp() {
        return this.zzN;
    }

    @Override
    public final zzbjt zzq() {
        return this.zzM;
    }

    @Override
    public final synchronized zzcjs zzr(String str) {
        Map map = this.zzW;
        if (map == null) {
            return null;
        }
        return (zzcjs) map.get(str);
    }

    @Override
    public final VersionInfoParcel zzs() {
        return this.zzf;
    }

    @Override
    public final synchronized void zzt(String str, zzcjs zzcjsVar) {
        if (this.zzW == null) {
            this.zzW = new HashMap();
        }
        this.zzW.put(str, zzcjsVar);
    }

    @Override
    public final void zzu(boolean z, long j) {
        HashMap map = new HashMap(2);
        map.put(ProtectedFastSSH.s("愡"), true != z ? ProtectedFastSSH.s("惤") : ProtectedFastSSH.s("惥"));
        map.put(ProtectedFastSSH.s("愢"), Long.toString(j));
        zze(ProtectedFastSSH.s("愣"), map);
    }

    @Override
    public final void zzv(int i) {
    }

    @Override
    public final synchronized void zzw(zzcms zzcmsVar) {
        if (this.zzB == null) {
            this.zzB = zzcmsVar;
        } else {
            int i = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzf(ProtectedFastSSH.s("愤"));
        }
    }

    @Override
    public final int zzx() {
        return getMeasuredHeight();
    }

    @Override
    public final int zzy() {
        return getMeasuredWidth();
    }

    @Override
    public final synchronized void zzz() {
        zzbmf zzbmfVar = this.zzF;
        if (zzbmfVar != null) {
            zzbmfVar.zza();
        }
    }
}
