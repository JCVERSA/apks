package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.graphics.Canvas;
import android.net.Uri;
import android.os.Looper;
import android.os.RemoteException;
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
import com.google.android.gms.ads.internal.client.zzbb;
import com.google.android.gms.ads.internal.client.zzbd;
import com.google.android.gms.ads.internal.overlay.zzc;
import com.google.android.gms.ads.internal.overlay.zzm;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import com.google.android.gms.ads.internal.util.client.zzf;
import com.google.android.gms.ads.internal.util.client.zzo;
import com.google.android.gms.ads.internal.util.zzab;
import com.google.android.gms.ads.internal.util.zzcd;
import com.google.android.gms.ads.internal.util.zzcg;
import com.google.android.gms.ads.internal.util.zzck;
import com.google.android.gms.ads.internal.util.zze;
import com.google.android.gms.ads.internal.zza;
import com.google.android.gms.ads.internal.zzn;
import com.google.android.gms.ads.internal.zzv;
import com.google.android.gms.internal.ads.c4;
import com.google.android.gms.internal.ads.i3;
import com.google.android.gms.internal.ads.r2;
import com.google.android.gms.internal.ads.s2;
import com.transsion.push.PushConstants;
import defpackage.aaf;
import defpackage.axg;
import defpackage.bze;
import defpackage.cye;
import defpackage.d28;
import defpackage.ejf;
import defpackage.fre;
import defpackage.fxg;
import defpackage.gye;
import defpackage.hmh;
import defpackage.hue;
import defpackage.ijf;
import defpackage.ikf;
import defpackage.im5;
import defpackage.inh;
import defpackage.iye;
import defpackage.je8;
import defpackage.jkf;
import defpackage.kkf;
import defpackage.kmh;
import defpackage.mve;
import defpackage.n3f;
import defpackage.nye;
import defpackage.oye;
import defpackage.pzh;
import defpackage.qjf;
import defpackage.qye;
import defpackage.sgf;
import defpackage.sjf;
import defpackage.tjf;
import defpackage.y0f;
import defpackage.yjf;
import defpackage.z0f;
import defpackage.zef;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.Callable;
import org.greenrobot.greendao.generator.Schema;
import org.json.JSONException;
import org.json.JSONObject;

public final class c4 extends WebView implements DownloadListener, ViewTreeObserver.OnGlobalLayoutListener, ejf {
    public static final int d0 = 0;
    public final String A;
    public zzcfn B;
    public boolean C;
    public boolean D;
    public z0f E;
    public y0f F;
    public mve G;
    public int H;
    public int I;
    public nye J;
    public final nye K;
    public nye L;
    public final oye M;
    public int N;
    public zzm O;
    public boolean P;
    public final zzck Q;
    public int R;
    public int S;
    public int T;
    public int U;
    public int V;
    public Map W;
    public final WindowManager a0;
    public final jkf b;
    public final o0 b0;
    public final fre c;
    public boolean c0;
    public final inh d;
    public final bze e;
    public final VersionInfoParcel f;
    public zzn g;
    public final zza h;
    public final DisplayMetrics i;
    public final float j;
    public hmh k;
    public kmh l;
    public boolean m;
    public boolean n;
    public ijf o;
    public zzm p;
    public fxg q;
    public axg r;
    public kkf s;
    public final String t;
    public boolean u;
    public boolean v;
    public boolean w;
    public boolean x;
    public Boolean y;
    public boolean z;

    public c4(jkf jkfVar, kkf kkfVar, String str, boolean z, boolean z2, fre freVar, bze bzeVar, VersionInfoParcel versionInfoParcel, qye qyeVar, zzn zznVar, zza zzaVar, o0 o0Var, hmh hmhVar, kmh kmhVar, inh inhVar) {
        kmh kmhVar2;
        super(jkfVar);
        this.m = false;
        this.n = false;
        this.z = true;
        this.A = "";
        this.R = -1;
        this.S = -1;
        this.T = -1;
        this.U = -1;
        this.V = -1;
        this.b = jkfVar;
        this.s = kkfVar;
        this.t = str;
        this.w = z;
        this.c = freVar;
        this.d = inhVar;
        this.e = bzeVar;
        this.f = versionInfoParcel;
        this.g = zznVar;
        this.h = zzaVar;
        WindowManager windowManager = (WindowManager) getContext().getSystemService("window");
        this.a0 = windowManager;
        zzv.zzq();
        DisplayMetrics displayMetricsZzu = com.google.android.gms.ads.internal.util.zzs.zzu(windowManager);
        this.i = displayMetricsZzu;
        this.j = displayMetricsZzu.density;
        this.b0 = o0Var;
        this.k = hmhVar;
        this.l = kmhVar;
        this.Q = new zzck(jkfVar.a(), this, this, null);
        this.c0 = false;
        setBackgroundColor(0);
        if (((Boolean) zzbd.zzc().b(cye.Ib)).booleanValue()) {
            setSoundEffectsEnabled(false);
        }
        final WebSettings settings = getSettings();
        settings.setAllowFileAccess(false);
        try {
            settings.setJavaScriptEnabled(true);
        } catch (NullPointerException e) {
            int i = zze.zza;
            zzo.zzh("Unable to enable Javascript.", e);
        }
        settings.setSavePassword(false);
        settings.setSupportMultipleWindows(true);
        settings.setJavaScriptCanOpenWindowsAutomatically(true);
        if (((Boolean) zzbd.zzc().b(cye.Hb)).booleanValue()) {
            settings.setMixedContentMode(1);
        } else {
            settings.setMixedContentMode(2);
        }
        if (((Boolean) zzbd.zzc().b(cye.jd)).booleanValue()) {
            settings.setGeolocationEnabled(false);
        }
        settings.setUserAgentString(zzv.zzq().zzc(jkfVar, versionInfoParcel.afmaVersion));
        zzv.zzq();
        final Context context = getContext();
        zzcd.zza(context, new Callable() {
            @Override
            public final Object call() {
                pzh pzhVar = zzs.zza;
                String absolutePath = context.getDatabasePath("com.google.android.gms.ads.db").getAbsolutePath();
                WebSettings webSettings = settings;
                webSettings.setDatabasePath(absolutePath);
                webSettings.setDatabaseEnabled(true);
                webSettings.setDomStorageEnabled(true);
                webSettings.setDisplayZoomControls(false);
                webSettings.setBuiltInZoomControls(true);
                webSettings.setSupportZoom(true);
                if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().b(cye.Z0)).booleanValue()) {
                    webSettings.setTextZoom(100);
                }
                webSettings.setAllowContentAccess(false);
                return Boolean.TRUE;
            }
        });
        settings.setAllowFileAccessFromFileURLs(false);
        settings.setAllowUniversalAccessFromFileURLs(false);
        settings.setMediaPlaybackRequiresUserGesture(false);
        setDownloadListener(this);
        B();
        addJavascriptInterface(new tjf(this, new sjf(this)), "googleAdsJsInterface");
        removeJavascriptInterface("accessibility");
        removeJavascriptInterface("accessibilityTraversal");
        J();
        oye oyeVar = new oye(new qye(true, "make_wv", this.t));
        this.M = oyeVar;
        oyeVar.a().c(null);
        if (((Boolean) zzbd.zzc().b(cye.c2)).booleanValue() && (kmhVar2 = this.l) != null && kmhVar2.b != null) {
            oyeVar.a().d("gqi", this.l.b);
        }
        oyeVar.a();
        nye nyeVarF = qye.f();
        this.K = nyeVarF;
        oyeVar.b("native:view_create", nyeVarF);
        this.L = null;
        this.J = null;
        zzcg.zza().zzb(jkfVar);
        zzv.zzp().u();
    }

    /* JADX WARN: Code duplicated, block: B:35:0x00a5  */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x0083, code lost:
    
        if (r10.V != r9) goto L27;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final boolean A() {
        int iZzw;
        int iZzw2;
        boolean z = false;
        if (this.o.zzT() || this.o.q()) {
            zzbb.zzb();
            DisplayMetrics displayMetrics = this.i;
            int iZzw3 = zzf.zzw(displayMetrics, displayMetrics.widthPixels);
            zzbb.zzb();
            int iZzw4 = zzf.zzw(displayMetrics, displayMetrics.heightPixels);
            Activity activityA = this.b.a();
            if (activityA == null || activityA.getWindow() == null) {
                iZzw = iZzw3;
                iZzw2 = iZzw4;
            } else {
                zzv.zzq();
                int[] iArrZzR = com.google.android.gms.ads.internal.util.zzs.zzR(activityA);
                zzbb.zzb();
                iZzw = zzf.zzw(displayMetrics, iArrZzR[0]);
                zzbb.zzb();
                iZzw2 = zzf.zzw(displayMetrics, iArrZzR[1]);
            }
            zzv.zzq();
            int rotation = this.a0.getDefaultDisplay().getRotation();
            if (this.S == iZzw3 && this.R == iZzw4 && this.T == iZzw && this.U == iZzw2) {
                if (((Boolean) zzbd.zzc().b(cye.h0)).booleanValue()) {
                }
            }
            if (this.S == iZzw3 && this.R == iZzw4) {
                if (((Boolean) zzbd.zzc().b(cye.h0)).booleanValue() && this.V != rotation) {
                    z = true;
                }
            } else {
                z = true;
            }
            this.S = iZzw3;
            this.R = iZzw4;
            this.T = iZzw;
            this.U = iZzw2;
            this.V = rotation;
            new aaf(this, "").e(iZzw3, iZzw4, iZzw, iZzw2, displayMetrics.density, rotation);
            return z;
        }
        return false;
    }

    public final synchronized void B() {
        hmh hmhVar = this.k;
        if (hmhVar != null && hmhVar.m0) {
            int i = zze.zza;
            zzo.zze("Disabling hardware acceleration on an overlay.");
            D();
            return;
        }
        if (!this.w && !this.s.i()) {
            int i2 = zze.zza;
            zzo.zze("Enabling hardware acceleration on an AdView.");
            F();
            return;
        }
        int i3 = zze.zza;
        zzo.zze("Enabling hardware acceleration on an overlay.");
        F();
    }

    public final synchronized void C() {
        if (this.P) {
            return;
        }
        this.P = true;
        zzv.zzp().s();
    }

    public final synchronized void D() {
        try {
            if (!this.x) {
                setLayerType(1, null);
            }
            this.x = true;
        } catch (Throwable th) {
            throw th;
        }
    }

    public final void E(boolean z) {
        HashMap map = new HashMap();
        map.put("isVisible", true != z ? "0" : "1");
        zzd("onAdVisibilityChanged", map);
    }

    public final synchronized void F() {
        try {
            if (this.x) {
                setLayerType(0, null);
            }
            this.x = false;
        } catch (Throwable th) {
            throw th;
        }
    }

    public final synchronized void G(String str) {
        final String str2 = "about:blank";
        try {
            com.google.android.gms.ads.internal.util.zzs.zza.post(new Runnable(str2) {
                public final String zzb = "about:blank";

                @Override
                public final void run() {
                    c4 c4Var = this.zza;
                    String str3 = this.zzb;
                    super/*android.webkit.WebView*/.loadUrl("about:blank");
                }
            });
        } catch (Throwable th) {
            zzv.zzp().x(th, "AdWebViewImpl.loadUrlUnsafe");
            int i = zze.zza;
            zzo.zzk("Could not call loadUrl in destroy(). ", th);
        }
    }

    public final void H() {
        iye.a(this.M.a(), this.K, "aeh2");
    }

    public final synchronized void I() {
        try {
            Map map = this.W;
            if (map != null) {
                Iterator it = map.values().iterator();
                while (it.hasNext()) {
                    ((z3) it.next()).release();
                }
            }
            this.W = null;
        } catch (Throwable th) {
            throw th;
        }
    }

    public final void J() {
        oye oyeVar = this.M;
        if (oyeVar == null) {
            return;
        }
        qye qyeVarA = oyeVar.a();
        gye gyeVarH = zzv.zzp().h();
        if (gyeVarH != null) {
            gyeVarH.f(qyeVarA);
        }
    }

    public final synchronized void K() {
        Boolean boolM = zzv.zzp().m();
        this.y = boolM;
        if (boolM == null) {
            try {
                evaluateJavascript("(function(){})()", null);
                z(Boolean.TRUE);
            } catch (IllegalStateException unused) {
                z(Boolean.FALSE);
            }
        }
    }

    @Override
    public final synchronized void destroy() {
        try {
            J();
            this.Q.zza();
            zzm zzmVar = this.p;
            if (zzmVar != null) {
                zzmVar.zzb();
                this.p.zzm();
                this.p = null;
            }
            this.q = null;
            this.r = null;
            this.o.K();
            this.G = null;
            this.g = null;
            setOnClickListener(null);
            setOnTouchListener(null);
            if (this.v) {
                return;
            }
            zzv.zzz().i(this);
            I();
            this.v = true;
            if (!((Boolean) zzbd.zzc().b(cye.Sa)).booleanValue()) {
                zze.zza("Destroying the WebView immediately...");
                zzX();
                return;
            }
            Activity activityA = this.b.a();
            if (activityA != null && activityA.isDestroyed()) {
                zze.zza("Destroying the WebView immediately...");
                zzX();
            } else {
                zze.zza("Initiating WebView self destruct sequence in 3...");
                zze.zza("Loading blank page in WebView, 2...");
                G("about:blank");
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    @Override
    public final synchronized void evaluateJavascript(final String str, final ValueCallback valueCallback) {
        if (zzaE()) {
            int i = zze.zza;
            zzo.zzl("#004 The webview is destroyed. Ignoring action.", null);
            if (valueCallback != null) {
                valueCallback.onReceiveValue(null);
                return;
            }
            return;
        }
        if (!((Boolean) zzbd.zzc().b(cye.Ta)).booleanValue() || Looper.getMainLooper().getThread() == Thread.currentThread()) {
            super.evaluateJavascript(str, valueCallback);
        } else {
            zef.f.i(new Runnable() {
                @Override
                public final void run() {
                    super/*android.webkit.WebView*/.evaluateJavascript(str, valueCallback);
                }
            });
        }
    }

    public final void finalize() throws Throwable {
        try {
            synchronized (this) {
                try {
                    if (!this.v) {
                        this.o.K();
                        zzv.zzz().i(this);
                        I();
                        C();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
            super.finalize();
        } catch (Throwable th2) {
            super.finalize();
            throw th2;
        }
    }

    public final ijf k() {
        return this.o;
    }

    @Override
    public final synchronized void loadData(String str, String str2, String str3) {
        if (!zzaE()) {
            super.loadData(str, str2, str3);
        } else {
            int i = zze.zza;
            zzo.zzj("#004 The webview is destroyed. Ignoring action.");
        }
    }

    @Override
    public final synchronized void loadDataWithBaseURL(String str, String str2, String str3, String str4, String str5) {
        if (!zzaE()) {
            super.loadDataWithBaseURL(str, str2, str3, str4, str5);
        } else {
            int i = zze.zza;
            zzo.zzj("#004 The webview is destroyed. Ignoring action.");
        }
    }

    @Override
    public final synchronized void loadUrl(final String str) {
        if (zzaE()) {
            int i = zze.zza;
            zzo.zzj("#004 The webview is destroyed. Ignoring action.");
            return;
        }
        try {
            com.google.android.gms.ads.internal.util.zzs.zza.post(new Runnable() {
                @Override
                public final void run() {
                    super/*android.webkit.WebView*/.loadUrl(str);
                }
            });
        } catch (Throwable th) {
            zzv.zzp().x(th, "AdWebViewImpl.loadUrl");
            int i2 = zze.zza;
            zzo.zzk("Could not call loadUrl. ", th);
        }
    }

    public final synchronized Boolean n() {
        return this.y;
    }

    @Override
    public final void onAdClicked() {
        ijf ijfVar = this.o;
        if (ijfVar != null) {
            ijfVar.onAdClicked();
        }
    }

    @Override
    public final synchronized void onAttachedToWindow() {
        try {
            super.onAttachedToWindow();
            if (!zzaE()) {
                this.Q.zzc();
            }
            if (this.c0) {
                onResume();
                this.c0 = false;
            }
            boolean z = this.C;
            ijf ijfVar = this.o;
            if (ijfVar != null && ijfVar.q()) {
                if (!this.D) {
                    this.o.y();
                    this.o.C();
                    this.D = true;
                }
                A();
                z = true;
            }
            E(z);
        } catch (Throwable th) {
            throw th;
        }
    }

    @Override
    public final void onDetachedFromWindow() {
        ijf ijfVar;
        synchronized (this) {
            try {
                if (!zzaE()) {
                    this.Q.zzd();
                }
                super.onDetachedFromWindow();
                if (this.D && (ijfVar = this.o) != null && ijfVar.q() && getViewTreeObserver() != null && getViewTreeObserver().isAlive()) {
                    this.o.y();
                    this.o.C();
                    this.D = false;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        E(false);
    }

    @Override
    public final void onDownloadStart(String str, String str2, String str3, String str4, long j) {
        try {
            Intent intent = new Intent("android.intent.action.VIEW");
            intent.setDataAndType(Uri.parse(str), str4);
            if (((Boolean) zzbd.zzc().b(cye.hb)).booleanValue() && getContext() != null) {
                intent.setPackage(getContext().getPackageName());
            }
            zzv.zzq();
            com.google.android.gms.ads.internal.util.zzs.zzU(getContext(), intent);
        } catch (ActivityNotFoundException e) {
            int i = zze.zza;
            zzo.zze("Couldn't find an Activity to view url/mimetype: " + str + " / " + str4);
            zzv.zzp().x(e, "AdWebViewImpl.onDownloadStart: ".concat(String.valueOf(str)));
        }
    }

    @Override
    public final void onDraw(Canvas canvas) {
        if (zzaE()) {
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
        boolean zA = A();
        zzm zzmVarZzL = zzL();
        if (zzmVarZzL == null || !zA) {
            return;
        }
        zzmVarZzL.zzn();
    }

    /* JADX WARN: Code duplicated, block: B:45:0x0081 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:46:0x0083 A[Catch: all -> 0x000d, TryCatch #0 {, blocks: (B:3:0x0001, B:5:0x0008, B:10:0x0010, B:12:0x0016, B:14:0x001a, B:17:0x0024, B:19:0x002c, B:22:0x0031, B:24:0x0039, B:26:0x004b, B:29:0x0050, B:31:0x0057, B:35:0x0061, B:38:0x0066, B:41:0x0077, B:49:0x008f, B:43:0x007e, B:46:0x0083, B:52:0x009c, B:54:0x00a4, B:56:0x00b6, B:59:0x00bb, B:61:0x00d7, B:63:0x00df, B:62:0x00db, B:66:0x00e4, B:68:0x00ec, B:71:0x00f7, B:80:0x011b, B:82:0x0122, B:86:0x0129, B:88:0x013b, B:90:0x0149, B:94:0x0156, B:97:0x015b, B:99:0x01a8, B:100:0x01ac, B:102:0x01b3, B:107:0x01c0, B:109:0x01c6, B:110:0x01c9, B:112:0x01cd, B:113:0x01d6, B:116:0x01e1), top: B:121:0x0001 }] */
    /* JADX WARN: Code duplicated, block: B:48:0x008d  */
    @Override
    public final synchronized void onMeasure(int i, int i2) {
        int i3;
        int i4;
        int i5;
        int i6 = 0;
        if (zzaE()) {
            setMeasuredDimension(0, 0);
            return;
        }
        if (!isInEditMode() && !this.w && !this.s.f()) {
            if (this.s.h()) {
                super.onMeasure(i, i2);
                return;
            }
            if (this.s.j()) {
                if (((Boolean) zzbd.zzc().b(cye.c4)).booleanValue()) {
                    super.onMeasure(i, i2);
                    return;
                }
                zzcfn zzcfnVarZzq = zzq();
                float fZze = zzcfnVarZzq != null ? zzcfnVarZzq.zze() : 0.0f;
                if (fZze == 0.0f) {
                    super.onMeasure(i, i2);
                    return;
                }
                int size = View.MeasureSpec.getSize(i);
                int size2 = View.MeasureSpec.getSize(i2);
                float f = size2 * fZze;
                int i7 = (int) (size / fZze);
                if (size2 != 0) {
                    i3 = (int) f;
                    if (size == 0) {
                        i6 = size;
                    } else if (i3 != 0) {
                        i7 = (int) (i3 / fZze);
                        i4 = size2;
                        i5 = i3;
                        i6 = i5;
                    }
                    i4 = size2;
                    i5 = i3;
                } else if (i7 != 0) {
                    i5 = (int) (i7 * fZze);
                    i6 = size;
                    i4 = i7;
                } else {
                    size2 = 0;
                    i3 = (int) f;
                    if (size == 0) {
                        i6 = size;
                    } else if (i3 != 0) {
                        i7 = (int) (i3 / fZze);
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
            if (this.s.g()) {
                if (((Boolean) zzbd.zzc().b(cye.h4)).booleanValue()) {
                    super.onMeasure(i, i2);
                    return;
                }
                zzag("/contentHeight", new qjf(this));
                w("(function() {  var height = -1;  if (document.body) {    height = document.body.offsetHeight;  } else if (document.documentElement) {    height = document.documentElement.offsetHeight;  }  var url = 'gmsg://mobileads.google.com/contentHeight?';  url += 'height=' + height;  try {    window.googleAdsJsInterface.notify(url);  } catch (e) {    var frame = document.getElementById('afma-notify-fluid');    if (!frame) {      frame = document.createElement('IFRAME');      frame.id = 'afma-notify-fluid';      frame.style.display = 'none';      var body = document.body || document.documentElement;      body.appendChild(frame);    }    frame.src = url;  }})();");
                float f2 = this.i.density;
                int size3 = View.MeasureSpec.getSize(i);
                int i8 = this.I;
                setMeasuredDimension(size3, i8 != -1 ? (int) (i8 * f2) : View.MeasureSpec.getSize(i2));
                return;
            }
            if (this.s.i()) {
                DisplayMetrics displayMetrics = this.i;
                setMeasuredDimension(displayMetrics.widthPixels, displayMetrics.heightPixels);
                return;
            }
            int mode = View.MeasureSpec.getMode(i);
            int size4 = View.MeasureSpec.getSize(i);
            int mode2 = View.MeasureSpec.getMode(i2);
            int size5 = View.MeasureSpec.getSize(i2);
            int i9 = (mode == Integer.MIN_VALUE || mode == 1073741824) ? size4 : Integer.MAX_VALUE;
            int i10 = (mode2 == Integer.MIN_VALUE || mode2 == 1073741824) ? size5 : Integer.MAX_VALUE;
            kkf kkfVar = this.s;
            boolean z = kkfVar.c > i9 || kkfVar.b > i10;
            if (((Boolean) zzbd.zzc().b(cye.z5)).booleanValue()) {
                kkf kkfVar2 = this.s;
                float f3 = kkfVar2.c;
                float f4 = this.j;
                z &= f3 / f4 <= ((float) i9) / f4 && ((float) kkfVar2.b) / f4 <= ((float) i10) / f4;
            }
            if (!z) {
                if (getVisibility() != 8) {
                    setVisibility(0);
                }
                if (!this.n) {
                    this.b0.c(10002);
                    this.n = true;
                }
                kkf kkfVar3 = this.s;
                setMeasuredDimension(kkfVar3.c, kkfVar3.b);
                return;
            }
            kkf kkfVar4 = this.s;
            float f5 = kkfVar4.c;
            float f6 = this.j;
            String str = "Not enough space to show ad. Needs " + ((int) (f5 / f6)) + "x" + ((int) (kkfVar4.b / f6)) + " dp, but only has " + ((int) (size4 / f6)) + "x" + ((int) (size5 / f6)) + " dp.";
            int i11 = zze.zza;
            zzo.zzj(str);
            if (getVisibility() != 8) {
                setVisibility(4);
            }
            setMeasuredDimension(0, 0);
            if (this.m) {
                return;
            }
            this.b0.c(10001);
            this.m = true;
            return;
        }
        super.onMeasure(i, i2);
    }

    @Override
    public final void onPause() {
        if (zzaE()) {
            return;
        }
        try {
            super.onPause();
            if (((Boolean) zzbd.zzc().b(cye.Gc)).booleanValue() && WebViewFeature.isFeatureSupported(WebViewFeature.MUTE_AUDIO)) {
                int i = zze.zza;
                zzo.zze("Muting webview");
                WebViewCompat.setAudioMuted(this, true);
            }
        } catch (Exception e) {
            int i2 = zze.zza;
            zzo.zzh("Could not pause webview.", e);
            if (((Boolean) zzbd.zzc().b(cye.Jc)).booleanValue()) {
                zzv.zzp().x(e, "AdWebViewImpl.onPause");
            }
        }
    }

    @Override
    public final void onResume() {
        if (zzaE()) {
            return;
        }
        try {
            super.onResume();
            if (((Boolean) zzbd.zzc().b(cye.Gc)).booleanValue() && WebViewFeature.isFeatureSupported(WebViewFeature.MUTE_AUDIO)) {
                int i = zze.zza;
                zzo.zze("Unmuting webview");
                WebViewCompat.setAudioMuted(this, false);
            }
        } catch (Exception e) {
            int i2 = zze.zza;
            zzo.zzh("Could not resume webview.", e);
            if (((Boolean) zzbd.zzc().b(cye.Jc)).booleanValue()) {
                zzv.zzp().x(e, "AdWebViewImpl.onResume");
            }
        }
    }

    @Override
    public final boolean onTouchEvent(MotionEvent motionEvent) {
        boolean z = ((Boolean) zzbd.zzc().b(cye.K3)).booleanValue() && this.o.o();
        if ((!this.o.q() || this.o.p()) && !z) {
            fre freVar = this.c;
            if (freVar != null) {
                freVar.d(motionEvent);
            }
            bze bzeVar = this.e;
            if (bzeVar != null) {
                bzeVar.b(motionEvent);
            }
        } else {
            synchronized (this) {
                try {
                    z0f z0fVar = this.E;
                    if (z0fVar != null) {
                        z0fVar.a(motionEvent);
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        if (zzaE()) {
            return false;
        }
        return super.onTouchEvent(motionEvent);
    }

    @Override
    public final void setWebViewClient(WebViewClient webViewClient) {
        super.setWebViewClient(webViewClient);
        if (webViewClient instanceof ijf) {
            this.o = (ijf) webViewClient;
        }
    }

    @Override
    public final void stopLoading() {
        if (zzaE()) {
            return;
        }
        try {
            super.stopLoading();
        } catch (Exception e) {
            int i = zze.zza;
            zzo.zzh("Could not stop loading webview.", e);
        }
    }

    public final synchronized void u(String str, ValueCallback valueCallback) {
        if (!zzaE()) {
            evaluateJavascript(str, null);
        } else {
            int i = zze.zza;
            zzo.zzj("#004 The webview is destroyed. Ignoring action.");
        }
    }

    public final void w(String str) {
        if (!d28.b()) {
            y("javascript:".concat(str));
            return;
        }
        if (n() == null) {
            K();
        }
        if (n().booleanValue()) {
            u(str, null);
        } else {
            y("javascript:".concat(str));
        }
    }

    public final synchronized void y(String str) {
        if (!zzaE()) {
            loadUrl(str);
        } else {
            int i = zze.zza;
            zzo.zzj("#004 The webview is destroyed. Ignoring action.");
        }
    }

    public final void z(Boolean bool) {
        synchronized (this) {
            this.y = bool;
        }
        zzv.zzp().z(bool);
    }

    @Override
    public final synchronized void zzA(int i) {
        this.N = i;
    }

    @Override
    public final void zzB(int i) {
    }

    @Override
    public final synchronized void zzC(zzcfn zzcfnVar) {
        if (this.B == null) {
            this.B = zzcfnVar;
        } else {
            int i = zze.zza;
            zzo.zzg("Attempt to create multiple AdWebViewVideoControllers.");
        }
    }

    @Override
    public final hmh zzD() {
        return this.k;
    }

    @Override
    public final Context zzE() {
        return this.b.b();
    }

    @Override
    public final View zzF() {
        return this;
    }

    @Override
    public final WebView zzG() {
        return this;
    }

    @Override
    public final WebViewClient zzH() {
        return this.o;
    }

    @Override
    public final fre zzI() {
        return this.c;
    }

    @Override
    public final synchronized mve zzJ() {
        return this.G;
    }

    @Override
    public final synchronized z0f zzK() {
        return this.E;
    }

    @Override
    public final synchronized zzm zzL() {
        return this.p;
    }

    @Override
    public final synchronized zzm zzM() {
        return this.O;
    }

    @Override
    public final ikf zzN() {
        return this.o;
    }

    @Override
    public final synchronized kkf zzO() {
        return this.s;
    }

    @Override
    public final synchronized axg zzP() {
        return this.r;
    }

    @Override
    public final synchronized fxg zzQ() {
        return this.q;
    }

    @Override
    public final kmh zzR() {
        return this.l;
    }

    @Override
    public final inh zzS() {
        return this.d;
    }

    @Override
    public final im5 zzT() {
        bze bzeVar = this.e;
        return bzeVar == null ? j8.h(null) : bzeVar.a();
    }

    @Override
    public final synchronized String zzU() {
        return this.t;
    }

    @Override
    public final List zzV() {
        return new ArrayList();
    }

    @Override
    public final void zzW(hmh hmhVar, kmh kmhVar) {
        this.k = hmhVar;
        this.l = kmhVar;
    }

    @Override
    public final synchronized void zzX() {
        zze.zza("Destroying WebView!");
        C();
        com.google.android.gms.ads.internal.util.zzs.zza.post(new zzcfj(this));
    }

    @Override
    public final void zzY() {
        H();
        HashMap map = new HashMap(1);
        map.put("version", this.f.afmaVersion);
        zzd("onhide", map);
    }

    @Override
    public final void zzZ(int i) {
        if (i == 0) {
            oye oyeVar = this.M;
            iye.a(oyeVar.a(), this.K, "aebb2");
        }
        H();
        oye oyeVar2 = this.M;
        oyeVar2.a();
        oyeVar2.a().d("close_type", String.valueOf(i));
        HashMap map = new HashMap(2);
        map.put("closetype", String.valueOf(i));
        map.put("version", this.f.afmaVersion);
        zzd("onhide", map);
    }

    @Override
    public final void zza(String str) {
        w(str);
    }

    @Override
    public final void zzaA(String str, je8 je8Var) {
        ijf ijfVar = this.o;
        if (ijfVar != null) {
            ijfVar.n(str, je8Var);
        }
    }

    @Override
    public final synchronized boolean zzaB() {
        return this.u;
    }

    @Override
    public final synchronized boolean zzaC() {
        return this.H > 0;
    }

    @Override
    public final boolean zzaD(final boolean z, final int i) {
        destroy();
        n0 n0Var = new n0() {
            @Override
            public final void a(i3 i3Var) {
                int i2 = c4.d0;
                r2 r2VarD0 = s2.d0();
                boolean zX = r2VarD0.x();
                boolean z2 = z;
                if (zX != z2) {
                    r2VarD0.v(z2);
                }
                r2VarD0.w(i);
                i3Var.A((s2) r2VarD0.q());
            }
        };
        o0 o0Var = this.b0;
        o0Var.b(n0Var);
        o0Var.c(10003);
        return true;
    }

    @Override
    public final synchronized boolean zzaE() {
        return this.v;
    }

    @Override
    public final synchronized boolean zzaF() {
        return this.w;
    }

    @Override
    public final boolean zzaG() {
        return false;
    }

    @Override
    public final synchronized boolean zzaH() {
        return this.z;
    }

    @Override
    public final void zzaJ(zzc zzcVar, boolean z, boolean z2, String str) {
        this.o.M(zzcVar, z, z2, str);
    }

    @Override
    public final void zzaK(String str, String str2, int i) {
        this.o.N(str, str2, 14);
    }

    @Override
    public final void zzaL(boolean z, int i, boolean z2) {
        this.o.O(z, i, z2);
    }

    @Override
    public final void zzaM(boolean z, int i, String str, String str2, boolean z2) {
        this.o.Q(z, i, str, str2, z2);
    }

    @Override
    public final void zzaN(boolean z, int i, String str, boolean z2, boolean z3) {
        this.o.a(z, i, str, z2, z3);
    }

    @Override
    public final void zzaa() {
        if (this.J == null) {
            oye oyeVar = this.M;
            iye.a(oyeVar.a(), this.K, "aes2");
            oyeVar.a();
            nye nyeVarF = qye.f();
            this.J = nyeVarF;
            oyeVar.b("native:view_show", nyeVarF);
        }
        HashMap map = new HashMap(1);
        map.put("version", this.f.afmaVersion);
        zzd("onshow", map);
    }

    @Override
    public final void zzab() {
        HashMap map = new HashMap(3);
        map.put("app_muted", String.valueOf(zzv.zzs().zze()));
        map.put("app_volume", String.valueOf(zzv.zzs().zza()));
        map.put("device_volume", String.valueOf(zzab.zzb(getContext())));
        zzd("volume", map);
    }

    @Override
    public final void zzac(boolean z) {
        this.o.L(z);
    }

    @Override
    public final void zzad() {
        this.Q.zzb();
    }

    @Override
    public final synchronized void zzae(String str, String str2, String str3) {
        String str4;
        try {
            if (zzaE()) {
                int i = zze.zza;
                zzo.zzj("#004 The webview is destroyed. Ignoring action.");
                return;
            }
            String str5 = (String) zzbd.zzc().b(cye.e0);
            JSONObject jSONObject = new JSONObject();
            try {
                jSONObject.put("version", str5);
                jSONObject.put("sdk", "Google Mobile Ads");
                jSONObject.put(PushConstants.PROVIDER_FIELD_SDK_VERSION, "12.4.51-000");
                str4 = "<script>Object.defineProperty(window,'MRAID_ENV',{get:function(){return " + jSONObject.toString() + "}});</script>";
            } catch (JSONException e) {
                int i2 = zze.zza;
                zzo.zzk("Unable to build MRAID_ENV", e);
                str4 = null;
            }
            super.loadDataWithBaseURL(str, yjf.b(str2, str4), "text/html", "UTF-8", null);
        } catch (Throwable th) {
            throw th;
        }
    }

    @Override
    public final void zzaf() {
        if (this.L == null) {
            oye oyeVar = this.M;
            oyeVar.a();
            nye nyeVarF = qye.f();
            this.L = nyeVarF;
            oyeVar.b("native:view_load", nyeVarF);
        }
    }

    @Override
    public final void zzag(String str, n3f n3fVar) {
        ijf ijfVar = this.o;
        if (ijfVar != null) {
            ijfVar.b(str, n3fVar);
        }
    }

    @Override
    public final void zzah() {
        zze.zza("Cannot add text view to inner AdWebView");
    }

    @Override
    public final synchronized void zzai(zzm zzmVar) {
        this.p = zzmVar;
    }

    @Override
    public final synchronized void zzaj(kkf kkfVar) {
        this.s = kkfVar;
        requestLayout();
    }

    @Override
    public final synchronized void zzak(mve mveVar) {
        this.G = mveVar;
    }

    @Override
    public final synchronized void zzal(boolean z) {
        this.z = z;
    }

    @Override
    public final void zzam() {
        setBackgroundColor(0);
    }

    @Override
    public final void zzan(Context context) {
        jkf jkfVar = this.b;
        jkfVar.setBaseContext(context);
        this.Q.zze(jkfVar.a());
    }

    @Override
    public final synchronized void zzao(boolean z) {
        zzm zzmVar = this.p;
        if (zzmVar != null) {
            zzmVar.zzy(this.o.zzT(), z);
        } else {
            this.u = z;
        }
    }

    @Override
    public final synchronized void zzap(y0f y0fVar) {
        this.F = y0fVar;
    }

    @Override
    public final synchronized void zzaq(boolean z) {
        try {
            boolean z2 = this.w;
            this.w = z;
            B();
            if (z != z2) {
                if (((Boolean) zzbd.zzc().b(cye.f0)).booleanValue()) {
                    if (!this.s.i()) {
                    }
                }
                new aaf(this, "").g(true != z ? Schema.DEFAULT_NAME : "expanded");
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    @Override
    public final synchronized void zzar(z0f z0fVar) {
        this.E = z0fVar;
    }

    @Override
    public final synchronized void zzas(axg axgVar) {
        this.r = axgVar;
    }

    @Override
    public final synchronized void zzat(fxg fxgVar) {
        this.q = fxgVar;
    }

    @Override
    public final synchronized void zzau(int i) {
        zzm zzmVar = this.p;
        if (zzmVar != null) {
            zzmVar.zzA(i);
        }
    }

    @Override
    public final void zzav(boolean z) {
        this.c0 = true;
    }

    @Override
    public final synchronized void zzaw(zzm zzmVar) {
        this.O = zzmVar;
    }

    @Override
    public final synchronized void zzax(boolean z) {
        zzm zzmVar;
        int i = this.H + (true != z ? -1 : 1);
        this.H = i;
        if (i > 0 || (zzmVar = this.p) == null) {
            return;
        }
        zzmVar.zzE();
    }

    @Override
    public final synchronized void zzay(boolean z) {
        if (z) {
            try {
                setBackgroundColor(0);
            } catch (Throwable th) {
                throw th;
            }
        }
        zzm zzmVar = this.p;
        if (zzmVar != null) {
            zzmVar.zzB(z);
        }
    }

    @Override
    public final void zzaz(String str, n3f n3fVar) {
        ijf ijfVar = this.o;
        if (ijfVar != null) {
            ijfVar.k(str, n3fVar);
        }
    }

    @Override
    public final void zzb(String str, String str2) {
        w(str + "(" + str2 + ");");
    }

    @Override
    public final void zzd(String str, Map map) {
        try {
            zze(str, zzbb.zzb().zzk(map));
        } catch (JSONException unused) {
            int i = zze.zza;
            zzo.zzj("Could not convert parameters to JSON.");
        }
    }

    @Override
    public final void zzdd() {
        ijf ijfVar = this.o;
        if (ijfVar != null) {
            ijfVar.zzdd();
        }
    }

    @Override
    public final synchronized void zzde() {
        zzn zznVar = this.g;
        if (zznVar != null) {
            zznVar.zzde();
        }
    }

    @Override
    public final synchronized void zzdf() {
        zzn zznVar = this.g;
        if (zznVar != null) {
            zznVar.zzdf();
        }
    }

    @Override
    public final void zzdg() {
        zzm zzmVarZzL = zzL();
        if (zzmVarZzL != null) {
            zzmVarZzL.zzd();
        }
    }

    @Override
    public final void zzdn(hue hueVar) {
        boolean z;
        synchronized (this) {
            z = hueVar.j;
            this.C = z;
        }
        E(z);
    }

    @Override
    public final void zze(String str, JSONObject jSONObject) {
        if (jSONObject == null) {
            jSONObject = new JSONObject();
        }
        String string = jSONObject.toString();
        StringBuilder sb = new StringBuilder();
        sb.append("(window.AFMA_ReceiveMessage || function() {})('");
        sb.append(str);
        sb.append("',");
        sb.append(string);
        sb.append(");");
        String string2 = sb.toString();
        int i = zze.zza;
        zzo.zze("Dispatching AFMA event: ".concat(string2));
        w(sb.toString());
    }

    @Override
    public final synchronized int zzf() {
        return this.N;
    }

    @Override
    public final int zzg() {
        return getMeasuredHeight();
    }

    @Override
    public final int zzh() {
        return getMeasuredWidth();
    }

    @Override
    public final Activity zzi() {
        return this.b.a();
    }

    @Override
    public final zza zzj() {
        return this.h;
    }

    @Override
    public final nye zzk() {
        return this.K;
    }

    @Override
    public final oye zzl() {
        return this.M;
    }

    @Override
    public final VersionInfoParcel zzm() {
        return this.f;
    }

    @Override
    public final sgf zzn() {
        return null;
    }

    @Override
    public final synchronized z3 zzo(String str) {
        Map map = this.W;
        if (map == null) {
            return null;
        }
        return (z3) map.get(str);
    }

    @Override
    public final void zzp(String str, JSONObject jSONObject) {
        zzb(str, jSONObject.toString());
    }

    @Override
    public final synchronized zzcfn zzq() {
        return this.B;
    }

    @Override
    public final synchronized String zzr() {
        kmh kmhVar = this.l;
        if (kmhVar == null) {
            return null;
        }
        return kmhVar.b;
    }

    @Override
    public final synchronized String zzs() {
        return this.A;
    }

    @Override
    public final synchronized void zzt(String str, z3 z3Var) {
        try {
            if (this.W == null) {
                this.W = new HashMap();
            }
            this.W.put(str, z3Var);
        } catch (Throwable th) {
            throw th;
        }
    }

    @Override
    public final void zzu() {
        ijf ijfVar = this.o;
        if (ijfVar != null) {
            ijfVar.zzu();
        }
    }

    @Override
    public final void zzv(boolean z, long j) {
        HashMap map = new HashMap(2);
        map.put("success", true != z ? "0" : "1");
        map.put("duration", Long.toString(j));
        zzd("onCacheAccessComplete", map);
    }

    @Override
    public final synchronized void zzw() {
        y0f y0fVar = this.F;
        if (y0fVar != null) {
            final zzdlu zzdluVar = (zzdlu) y0fVar;
            com.google.android.gms.ads.internal.util.zzs.zza.post(new Runnable() {
                @Override
                public final void run() {
                    try {
                        zzdluVar.zzd();
                    } catch (RemoteException e) {
                        int i = zze.zza;
                        zzo.zzl("#007 Could not call remote method.", e);
                    }
                }
            });
        }
    }

    @Override
    public final void zzx(int i) {
    }

    @Override
    public final void zzy(int i) {
    }

    @Override
    public final void zzz(boolean z) {
        this.o.g(false);
    }
}
