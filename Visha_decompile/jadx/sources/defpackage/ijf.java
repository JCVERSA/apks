package defpackage;

import android.net.TrafficStats;
import android.net.Uri;
import android.os.Parcelable;
import android.text.TextUtils;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewTreeObserver;
import android.webkit.RenderProcessGoneDetail;
import android.webkit.WebResourceResponse;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import androidx.core.view.ViewCompat;
import androidx.media3.exoplayer.rtsp.SessionDescription;
import androidx.webkit.ProxyConfig;
import com.google.android.gms.ads.internal.client.zza;
import com.google.android.gms.ads.internal.client.zzbd;
import com.google.android.gms.ads.internal.overlay.AdOverlayInfoParcel;
import com.google.android.gms.ads.internal.overlay.zzac;
import com.google.android.gms.ads.internal.overlay.zzc;
import com.google.android.gms.ads.internal.overlay.zzm;
import com.google.android.gms.ads.internal.overlay.zzn;
import com.google.android.gms.ads.internal.overlay.zzr;
import com.google.android.gms.ads.internal.util.client.zzl;
import com.google.android.gms.ads.internal.util.client.zzo;
import com.google.android.gms.ads.internal.util.zze;
import com.google.android.gms.ads.internal.util.zzs;
import com.google.android.gms.ads.internal.zzb;
import com.google.android.gms.ads.internal.zzv;
import com.google.android.gms.internal.ads.j8;
import com.google.android.gms.internal.ads.l6;
import com.google.android.gms.internal.ads.o0;
import com.google.android.gms.internal.ads.zzauz;
import com.google.android.gms.internal.ads.zzbap;
import com.google.android.gms.internal.ads.zzbas;
import com.google.android.gms.internal.ads.zzebe;
import com.hisavana.common.constant.ComConstants;
import com.transsion.apiinvoke.common.router.ProcessInfo;
import defpackage.ijf;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLConnection;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

public abstract class ijf extends WebViewClient implements ikf {
    public static final int I = 0;
    public smg A;
    public boolean B;
    public boolean C;
    public int D;
    public boolean E;
    public final zzebe G;
    public View.OnAttachStateChangeListener H;
    public final ejf b;
    public final o0 c;
    public zza f;
    public zzr g;
    public gkf h;
    public hkf i;
    public r1f j;
    public z1f k;
    public t8g l;
    public boolean m;
    public boolean n;
    public boolean r;
    public boolean s;
    public boolean t;
    public boolean u;
    public zzac v;
    public z9f w;
    public zzb x;
    public ddf z;
    public final HashMap d = new HashMap();
    public final Object e = new Object();
    public int o = 0;
    public String p = "";
    public String q = "";
    public q9f y = null;
    public final HashSet F = new HashSet(Arrays.asList(((String) zzbd.zzc().b(cye.J5)).split(StringUtils.COMMA)));

    public ijf(ejf ejfVar, o0 o0Var, boolean z, z9f z9fVar, q9f q9fVar, zzebe zzebeVar) {
        this.c = o0Var;
        this.b = ejfVar;
        this.r = z;
        this.w = z9fVar;
        this.G = zzebeVar;
    }

    public static final boolean A(ejf ejfVar) {
        return ejfVar.zzD() != null && ejfVar.zzD().b();
    }

    public static final boolean B(boolean z, ejf ejfVar) {
        return (!z || ejfVar.zzO().i() || ejfVar.zzU().equals("interstitial_mb")) ? false : true;
    }

    public static void G(ijf ijfVar) {
        ejf ejfVar = ijfVar.b;
        ejfVar.zzad();
        zzm zzmVarZzL = ejfVar.zzL();
        if (zzmVarZzL != null) {
            zzmVarZzL.zzz();
        }
    }

    public static WebResourceResponse s() {
        if (((Boolean) zzbd.zzc().b(cye.Y0)).booleanValue()) {
            return new WebResourceResponse("", "", new ByteArrayInputStream(new byte[0]));
        }
        return null;
    }

    public final ViewTreeObserver.OnScrollChangedListener C() {
        synchronized (this.e) {
        }
        return null;
    }

    /* JADX WARN: Code duplicated, block: B:22:0x0099  */
    /* JADX WARN: Code duplicated, block: B:89:0x0296 A[Catch: Exception | NoClassDefFoundError -> 0x0020, Exception | NoClassDefFoundError -> 0x0020, TryCatch #0 {Exception | NoClassDefFoundError -> 0x0020, blocks: (B:3:0x000c, B:5:0x0019, B:8:0x0023, B:10:0x0033, B:12:0x003a, B:14:0x0048, B:16:0x0064, B:18:0x007d, B:20:0x0094, B:21:0x0097, B:23:0x009a, B:26:0x00b4, B:26:0x00b4, B:28:0x00c8, B:28:0x00c8, B:31:0x00e3, B:31:0x00e3, B:70:0x01af, B:70:0x01af, B:46:0x016b, B:46:0x016b, B:89:0x0296, B:89:0x0296, B:78:0x021d, B:78:0x021d, B:79:0x0246, B:79:0x0246, B:77:0x01f5, B:77:0x01f5, B:45:0x0144, B:45:0x0144, B:30:0x00d6, B:30:0x00d6, B:80:0x0247, B:80:0x0247, B:82:0x0251, B:82:0x0251, B:84:0x0257, B:84:0x0257, B:86:0x028a, B:86:0x028a, B:91:0x02a5, B:91:0x02a5, B:93:0x02ab, B:93:0x02ab, B:95:0x02b9, B:95:0x02b9), top: B:101:0x000c }] */
    /* JADX WARN: Multi-variable type inference failed */
    public final WebResourceResponse D(String str, Map map) {
        int i;
        InputStream inputStreamA;
        InputStream inputStreamZzc;
        Long l;
        final boolean z;
        final boolean z2;
        final boolean z3;
        String str2;
        try {
            Map map2 = new HashMap();
            ejf ejfVar = this.b;
            if (ejfVar.zzD() != null) {
                map2 = ejfVar.zzD().w0;
            }
            String strC = tdf.c(str, ejfVar.getContext(), this.E, map2);
            if (!strC.equals(str)) {
                return t(strC, map);
            }
            Parcelable.Creator<zzbas> creator = zzbas.CREATOR;
            zzbas zzbasVarZza = zzbas.zza(Uri.parse(str));
            if (zzbasVarZza != null) {
                HashMap map3 = new HashMap();
                map3.put("Access-Control-Allow-Origin", "*");
                Uri uri = Uri.parse(str);
                if (uri.getQueryParameterNames().contains(SessionDescription.ATTR_RANGE)) {
                    List listF = l6.b(i2i.b('-')).f(uri.getQueryParameter(SessionDescription.ATTR_RANGE));
                    if (listF.size() == 2) {
                        int i2 = Integer.parseInt((String) listF.get(0));
                        int i3 = Integer.parseInt((String) listF.get(1)) + 1;
                        if (i2 > 0) {
                            zzbasVarZza.zzh = i2;
                        }
                        i = i3 - i2;
                    } else {
                        i = -1;
                    }
                } else {
                    i = -1;
                }
                String str3 = "X-Afma-Gcache-CachedBytes";
                if (((Boolean) zzbd.zzc().b(cye.x4)).booleanValue()) {
                    zzbasVarZza.zzi = j3i.c(ejfVar.zzr());
                    zzbasVarZza.zzj = ejfVar.zzf();
                    if (zzbasVarZza.zzg) {
                        l = (Long) zzbd.zzc().b(cye.z4);
                    } else {
                        l = (Long) zzbd.zzc().b(cye.y4);
                    }
                    try {
                        long jLongValue = l.longValue();
                        long jElapsedRealtime = zzv.zzC().elapsedRealtime();
                        zzv.zzd();
                        Future futureA = zwe.a(ejfVar.getContext(), zzbasVarZza);
                        try {
                            axe axeVar = (axe) futureA.get(jLongValue, TimeUnit.MILLISECONDS);
                            try {
                                try {
                                    map3.put("X-Afma-Gcache-HasAdditionalMetadataFromReadV2", Boolean.toString(axeVar.d()));
                                    map3.put("X-Afma-Gcache-IsGcacheHit", Boolean.toString(axeVar.f()));
                                    map3.put("X-Afma-Gcache-IsDownloaded", Boolean.toString(axeVar.e()));
                                    map3.put("X-Afma-Gcache-CachedBytes", Long.toString(axeVar.a()));
                                    inputStreamZzc = axeVar.c();
                                    if (i != -1) {
                                        try {
                                            inputStreamZzc = g6i.a(inputStreamZzc, i);
                                        } catch (InterruptedException e) {
                                            e = e;
                                            z3 = true;
                                            if (((Boolean) zzbd.zzc().b(cye.C4)).booleanValue()) {
                                                zzv.zzp().x(e, "AdWebViewClient.interceptRequest.gcache");
                                            }
                                            futureA.cancel(true);
                                            Thread.currentThread().interrupt();
                                            final long jElapsedRealtime2 = zzv.zzC().elapsedRealtime() - jElapsedRealtime;
                                            zzs.zza.post(new Runnable() {
                                                @Override
                                                public final void run() {
                                                    this.zza.b.zzv(z3, jElapsedRealtime2);
                                                }
                                            });
                                            str2 = "Cache connection took " + jElapsedRealtime2 + "ms";
                                        } catch (ExecutionException | TimeoutException e2) {
                                            e = e2;
                                            z2 = true;
                                            if (((Boolean) zzbd.zzc().b(cye.C4)).booleanValue()) {
                                                zzv.zzp().x(e, "AdWebViewClient.interceptRequest.gcache");
                                            }
                                            futureA.cancel(true);
                                            final long jElapsedRealtime3 = zzv.zzC().elapsedRealtime() - jElapsedRealtime;
                                            zzs.zza.post(new Runnable() {
                                                @Override
                                                public final void run() {
                                                    this.zza.b.zzv(z2, jElapsedRealtime3);
                                                }
                                            });
                                            str2 = "Cache connection took " + jElapsedRealtime3 + "ms";
                                        }
                                    }
                                    final long jElapsedRealtime4 = zzv.zzC().elapsedRealtime() - jElapsedRealtime;
                                    final boolean z4 = true;
                                    zzs.zza.post(new Runnable() {
                                        @Override
                                        public final void run() {
                                            this.zza.b.zzv(z4, jElapsedRealtime4);
                                        }
                                    });
                                    str2 = "Cache connection took " + jElapsedRealtime4 + "ms";
                                } catch (Throwable th) {
                                    th = th;
                                    z = 1;
                                    final long jElapsedRealtime5 = zzv.zzC().elapsedRealtime() - jElapsedRealtime;
                                    zzs.zza.post(new Runnable() {
                                        @Override
                                        public final void run() {
                                            this.zza.b.zzv(z, jElapsedRealtime5);
                                        }
                                    });
                                    zze.zza("Cache connection took " + jElapsedRealtime5 + "ms");
                                    throw th;
                                }
                            } catch (InterruptedException e3) {
                                e = e3;
                                inputStreamZzc = null;
                            } catch (ExecutionException | TimeoutException e4) {
                                e = e4;
                                inputStreamZzc = null;
                            }
                        } catch (InterruptedException e5) {
                            e = e5;
                            inputStreamZzc = null;
                            z3 = false;
                        } catch (ExecutionException | TimeoutException e6) {
                            e = e6;
                            inputStreamZzc = null;
                            z2 = false;
                        } catch (Throwable th2) {
                            th = th2;
                            z = 0;
                        }
                        zze.zza(str2);
                    } catch (Throwable th3) {
                        th = th3;
                        z = str3;
                    }
                } else {
                    zzbap zzbapVarB = zzv.zzc().b(zzbasVarZza);
                    if (zzbapVarB == null || !zzbapVarB.zze()) {
                        inputStreamA = null;
                    } else {
                        map3.put("X-Afma-Gcache-HasAdditionalMetadataFromReadV2", Boolean.toString(zzbapVarB.zzd()));
                        map3.put("X-Afma-Gcache-IsGcacheHit", Boolean.toString(zzbapVarB.zzg()));
                        map3.put("X-Afma-Gcache-IsDownloaded", Boolean.toString(zzbapVarB.zzf()));
                        map3.put("X-Afma-Gcache-CachedBytes", Long.toString(zzbapVarB.zza()));
                        inputStreamZzc = zzbapVarB.zzc();
                        if (i != -1) {
                            inputStreamA = g6i.a(inputStreamZzc, i);
                        }
                    }
                    if (inputStreamA != null) {
                        return new WebResourceResponse("", "", 200, "OK", map3, inputStreamA);
                    }
                }
                inputStreamA = inputStreamZzc;
                if (inputStreamA != null) {
                    return new WebResourceResponse("", "", 200, "OK", map3, inputStreamA);
                }
            }
            if (zzl.zzk() && ((Boolean) vze.b.e()).booleanValue()) {
                return t(str, map);
            }
            return null;
        } catch (Exception | NoClassDefFoundError e7) {
            zzv.zzp().x(e7, "AdWebViewClient.interceptRequest");
            return s();
        }
    }

    public final void J() {
        if (this.h != null && ((this.B && this.D <= 0) || this.C || this.n)) {
            if (((Boolean) zzbd.zzc().b(cye.c2)).booleanValue()) {
                ejf ejfVar = this.b;
                if (ejfVar.zzl() != null) {
                    iye.a(ejfVar.zzl().a(), ejfVar.zzk(), "awfllc");
                }
            }
            gkf gkfVar = this.h;
            boolean z = false;
            if (!this.C && !this.n) {
                z = true;
            }
            gkfVar.zza(z, this.o, this.p, this.q);
            this.h = null;
        }
        this.b.zzaf();
    }

    public final void K() {
        ddf ddfVar = this.z;
        if (ddfVar != null) {
            ddfVar.zzf();
            this.z = null;
        }
        w();
        synchronized (this.e) {
            try {
                this.d.clear();
                this.f = null;
                this.g = null;
                this.h = null;
                this.i = null;
                this.j = null;
                this.k = null;
                this.m = false;
                this.r = false;
                this.s = false;
                this.t = false;
                this.v = null;
                this.x = null;
                this.w = null;
                q9f q9fVar = this.y;
                if (q9fVar != null) {
                    q9fVar.i(true);
                    this.y = null;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void L(boolean z) {
        this.E = z;
    }

    public final void M(zzc zzcVar, boolean z, boolean z2, String str) {
        ejf ejfVar = this.b;
        boolean zZzaF = ejfVar.zzaF();
        boolean z3 = B(zZzaF, ejfVar) || z2;
        P(new AdOverlayInfoParcel(zzcVar, z3 ? null : this.f, zZzaF ? null : this.g, this.v, ejfVar.zzm(), ejfVar, z3 || !z ? null : this.l, str));
    }

    public final void N(String str, String str2, int i) {
        zzebe zzebeVar = this.G;
        ejf ejfVar = this.b;
        P(new AdOverlayInfoParcel(ejfVar, ejfVar.zzm(), str, str2, 14, zzebeVar));
    }

    public final void O(boolean z, int i, boolean z2) {
        ejf ejfVar = this.b;
        boolean zB = B(ejfVar.zzaF(), ejfVar);
        boolean z3 = true;
        if (!zB && z2) {
            z3 = false;
        }
        P(new AdOverlayInfoParcel(zB ? null : this.f, this.g, this.v, ejfVar, z, i, ejfVar.zzm(), z3 ? null : this.l, A(ejfVar) ? this.G : null));
    }

    public final void P(AdOverlayInfoParcel adOverlayInfoParcel) {
        zzc zzcVar;
        q9f q9fVar = this.y;
        boolean zM = q9fVar != null ? q9fVar.m() : false;
        zzv.zzj();
        zzn.zza(this.b.getContext(), adOverlayInfoParcel, !zM, this.A);
        ddf ddfVar = this.z;
        if (ddfVar != null) {
            String str = adOverlayInfoParcel.zzl;
            if (str == null && (zzcVar = adOverlayInfoParcel.zza) != null) {
                str = zzcVar.zzb;
            }
            ddfVar.zzh(str);
        }
    }

    public final void Q(boolean z, int i, String str, String str2, boolean z2) {
        ejf ejfVar = this.b;
        boolean zZzaF = ejfVar.zzaF();
        boolean zB = B(zZzaF, ejfVar);
        boolean z3 = true;
        if (!zB && z2) {
            z3 = false;
        }
        P(new AdOverlayInfoParcel(zB ? null : this.f, zZzaF ? null : new hjf(ejfVar, this.g), this.j, this.k, this.v, ejfVar, z, i, str, str2, ejfVar.zzm(), z3 ? null : this.l, A(ejfVar) ? this.G : null));
    }

    public final void a(boolean z, int i, String str, boolean z2, boolean z3) {
        ejf ejfVar = this.b;
        boolean zZzaF = ejfVar.zzaF();
        boolean zB = B(zZzaF, ejfVar);
        boolean z4 = true;
        if (!zB && z2) {
            z4 = false;
        }
        P(new AdOverlayInfoParcel(zB ? null : this.f, zZzaF ? null : new hjf(ejfVar, this.g), this.j, this.k, this.v, ejfVar, z, i, str, ejfVar.zzm(), z4 ? null : this.l, A(ejfVar) ? this.G : null, z3));
    }

    public final void b(String str, n3f n3fVar) {
        synchronized (this.e) {
            try {
                HashMap map = this.d;
                List copyOnWriteArrayList = (List) map.get(str);
                if (copyOnWriteArrayList == null) {
                    copyOnWriteArrayList = new CopyOnWriteArrayList();
                    map.put(str, copyOnWriteArrayList);
                }
                copyOnWriteArrayList.add(n3fVar);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override
    public final void c(boolean z) {
        synchronized (this.e) {
            this.t = true;
        }
    }

    @Override
    public final void d(zza zzaVar, r1f r1fVar, zzr zzrVar, z1f z1fVar, zzac zzacVar, boolean z, q3f q3fVar, zzb zzbVar, baf bafVar, ddf ddfVar, final dwg dwgVar, final wth wthVar, smg smgVar, o4f o4fVar, t8g t8gVar, n4f n4fVar, a4f a4fVar, o3f o3fVar, wpf wpfVar) {
        zzb zzbVar2 = zzbVar == null ? new zzb(this.b.getContext(), ddfVar, null) : zzbVar;
        ejf ejfVar = this.b;
        this.y = new q9f(ejfVar, bafVar);
        this.z = ddfVar;
        if (((Boolean) zzbd.zzc().b(cye.f1)).booleanValue()) {
            b("/adMetadata", new q1f(r1fVar));
        }
        if (z1fVar != null) {
            b("/appEvent", new y1f(z1fVar));
        }
        b("/backButton", m3f.j);
        b("/refresh", m3f.k);
        b("/canOpenApp", m3f.b);
        b("/canOpenURLs", m3f.a);
        b("/canOpenIntents", m3f.c);
        b("/close", m3f.d);
        b("/customClose", m3f.e);
        b("/instrument", m3f.n);
        b("/delayPageLoaded", m3f.p);
        b("/delayPageClosed", m3f.q);
        b("/getLocationInfo", m3f.r);
        b("/log", m3f.g);
        b("/mraid", new u3f(zzbVar2, this.y, bafVar));
        z9f z9fVar = this.w;
        if (z9fVar != null) {
            b("/mraidLoaded", z9fVar);
        }
        zzb zzbVar3 = zzbVar2;
        b("/open", new z3f(zzbVar2, this.y, dwgVar, smgVar, wpfVar));
        b("/precache", new thf());
        b("/touch", m3f.i);
        b("/video", m3f.l);
        b("/videoMeta", m3f.m);
        if (dwgVar == null || wthVar == null) {
            b("/click", new f2f(t8gVar, wpfVar));
            b("/httpTrack", m3f.f);
        } else {
            b("/click", new lnh(t8gVar, wpfVar, wthVar, dwgVar));
            b("/httpTrack", new n3f() {
                @Override
                public final void a(Object obj, Map map) {
                    vif vifVar = (vif) obj;
                    String str = (String) map.get("u");
                    if (str == null) {
                        int i = zze.zza;
                        zzo.zzj("URL missing from httpTrack GMSG.");
                        return;
                    }
                    hmh hmhVarZzD = vifVar.zzD();
                    if (hmhVarZzD != null && !hmhVarZzD.i0) {
                        wthVar.d(str, hmhVarZzD.x0, null, null);
                        return;
                    }
                    kmh kmhVarZzR = ((rjf) vifVar).zzR();
                    if (kmhVarZzR != null) {
                        dwgVar.e(new fwg(zzv.zzC().currentTimeMillis(), kmhVarZzR.b, str, 2));
                    } else {
                        zzv.zzp().x(new IllegalArgumentException("Common configuration cannot be null"), "BufferingGmsgHandlers.getBufferingHttpTrackGmsgHandler");
                    }
                }
            });
        }
        if (zzv.zzo().p(ejfVar.getContext())) {
            Map map = new HashMap();
            if (ejfVar.zzD() != null) {
                map = ejfVar.zzD().w0;
            }
            b("/logScionEvent", new t3f(ejfVar.getContext(), map));
        }
        if (q3fVar != null) {
            b("/setInterstitialProperties", new p3f(q3fVar));
        }
        if (o4fVar != null) {
            if (((Boolean) zzbd.zzc().b(cye.Z8)).booleanValue()) {
                b("/inspectorNetworkExtras", o4fVar);
            }
        }
        if (((Boolean) zzbd.zzc().b(cye.s9)).booleanValue() && n4fVar != null) {
            b("/shareSheet", n4fVar);
        }
        if (((Boolean) zzbd.zzc().b(cye.x9)).booleanValue() && a4fVar != null) {
            b("/inspectorOutOfContextTest", a4fVar);
        }
        if (((Boolean) zzbd.zzc().b(cye.B9)).booleanValue() && o3fVar != null) {
            b("/inspectorStorage", o3fVar);
        }
        if (((Boolean) zzbd.zzc().b(cye.Eb)).booleanValue()) {
            b("/bindPlayStoreOverlay", m3f.u);
            b("/presentPlayStoreOverlay", m3f.v);
            b("/expandPlayStoreOverlay", m3f.w);
            b("/collapsePlayStoreOverlay", m3f.x);
            b("/closePlayStoreOverlay", m3f.y);
        }
        if (((Boolean) zzbd.zzc().b(cye.y3)).booleanValue()) {
            b("/setPAIDPersonalizationEnabled", m3f.A);
            b("/resetPAID", m3f.z);
        }
        if (((Boolean) zzbd.zzc().b(cye.Yb)).booleanValue() && ejfVar.zzD() != null && ejfVar.zzD().r0) {
            b("/writeToLocalStorage", m3f.B);
            b("/clearLocalStorageKeys", m3f.C);
        }
        this.f = zzaVar;
        this.g = zzrVar;
        this.j = r1fVar;
        this.k = z1fVar;
        this.v = zzacVar;
        this.x = zzbVar3;
        this.l = t8gVar;
        this.A = smgVar;
        this.m = z;
    }

    @Override
    public final void e(int i, int i2, boolean z) {
        z9f z9fVar = this.w;
        if (z9fVar != null) {
            z9fVar.h(i, i2);
        }
        q9f q9fVar = this.y;
        if (q9fVar != null) {
            q9fVar.k(i, i2, false);
        }
    }

    @Override
    public final void f(wpf wpfVar, dwg dwgVar, smg smgVar) {
        h("/open");
        b("/open", new z3f(this.x, this.y, dwgVar, smgVar, wpfVar));
    }

    public final void g(boolean z) {
        this.m = false;
    }

    public final void h(String str) {
        synchronized (this.e) {
            try {
                List list = (List) this.d.get(str);
                if (list == null) {
                    return;
                }
                list.clear();
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override
    public final void i(wpf wpfVar, dwg dwgVar, wth wthVar) {
        h("/click");
        if (dwgVar != null && wthVar != null) {
            b("/click", new lnh(this.l, wpfVar, wthVar, dwgVar));
            return;
        }
        t8g t8gVar = this.l;
        n3f n3fVar = m3f.a;
        b("/click", new f2f(t8gVar, wpfVar));
    }

    @Override
    public final void j(Uri uri) {
        zze.zza("Received GMSG: ".concat(String.valueOf(uri)));
        HashMap map = this.d;
        String path = uri.getPath();
        List list = (List) map.get(path);
        if (path == null || list == null) {
            zze.zza("No GMSG handler found for GMSG: ".concat(String.valueOf(uri)));
            if (!((Boolean) zzbd.zzc().b(cye.I6)).booleanValue() || zzv.zzp().h() == null) {
                return;
            }
            final String strSubstring = (path == null || path.length() < 2) ? "null" : path.substring(1);
            zef.a.execute(new Runnable() {
                @Override
                public final void run() throws Throwable {
                    int i = ijf.I;
                    zzv.zzp().h().e(strSubstring);
                }
            });
            return;
        }
        String encodedQuery = uri.getEncodedQuery();
        if (((Boolean) zzbd.zzc().b(cye.I5)).booleanValue() && this.F.contains(path) && encodedQuery != null) {
            if (encodedQuery.length() >= ((Integer) zzbd.zzc().b(cye.K5)).intValue()) {
                zze.zza("Parsing gmsg query params on BG thread: ".concat(path));
                j8.r(zzv.zzq().zzb(uri), new gjf(this, list, path, uri), zef.f);
                return;
            }
        }
        zzv.zzq();
        u(zzs.zzQ(uri), list, path);
    }

    public final void k(String str, n3f n3fVar) {
        synchronized (this.e) {
            try {
                List list = (List) this.d.get(str);
                if (list == null) {
                    return;
                }
                list.remove(n3fVar);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override
    public final void l(wpf wpfVar) {
        h("/click");
        t8g t8gVar = this.l;
        n3f n3fVar = m3f.a;
        b("/click", new f2f(t8gVar, wpfVar));
    }

    @Override
    public final void m(boolean z) {
        synchronized (this.e) {
            this.s = true;
        }
    }

    public final void n(String str, je8 je8Var) {
        synchronized (this.e) {
            try {
                List<n3f> list = (List) this.d.get(str);
                if (list == null) {
                    return;
                }
                ArrayList arrayList = new ArrayList();
                for (n3f n3fVar : list) {
                    if (je8Var.apply(n3fVar)) {
                        arrayList.add(n3fVar);
                    }
                }
                list.removeAll(arrayList);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final boolean o() {
        boolean z;
        synchronized (this.e) {
            z = this.t;
        }
        return z;
    }

    @Override
    public final void onAdClicked() {
        zza zzaVar = this.f;
        if (zzaVar != null) {
            zzaVar.onAdClicked();
        }
    }

    @Override
    public final void onLoadResource(WebView webView, String str) {
        zze.zza("Loading resource: ".concat(String.valueOf(str)));
        Uri uri = Uri.parse(str);
        if ("gmsg".equalsIgnoreCase(uri.getScheme()) && "mobileads.google.com".equalsIgnoreCase(uri.getHost())) {
            j(uri);
        }
    }

    @Override
    public final void onPageFinished(WebView webView, String str) {
        synchronized (this.e) {
            try {
                ejf ejfVar = this.b;
                if (ejfVar.zzaE()) {
                    zze.zza("Blank page loaded, 1...");
                    ejfVar.zzX();
                    return;
                }
                this.B = true;
                hkf hkfVar = this.i;
                if (hkfVar != null) {
                    hkfVar.zza();
                    this.i = null;
                }
                J();
                ejf ejfVar2 = this.b;
                if (ejfVar2.zzL() != null) {
                    if (((Boolean) zzbd.zzc().b(cye.Zb)).booleanValue()) {
                        ejfVar2.zzL().zzG(str);
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override
    public final void onReceivedError(WebView webView, int i, String str, String str2) {
        this.n = true;
        this.o = i;
        this.p = str;
        this.q = str2;
    }

    @Override
    public final boolean onRenderProcessGone(WebView webView, RenderProcessGoneDetail renderProcessGoneDetail) {
        return this.b.zzaD(renderProcessGoneDetail.didCrash(), renderProcessGoneDetail.rendererPriorityAtExit());
    }

    public final boolean p() {
        boolean z;
        synchronized (this.e) {
            z = this.u;
        }
        return z;
    }

    public final boolean q() {
        boolean z;
        synchronized (this.e) {
            z = this.s;
        }
        return z;
    }

    @Override
    public final void r(hkf hkfVar) {
        this.i = hkfVar;
    }

    @Override
    public final WebResourceResponse shouldInterceptRequest(WebView webView, String str) {
        return D(str, Collections.emptyMap());
    }

    @Override
    public final boolean shouldOverrideKeyEvent(WebView webView, KeyEvent keyEvent) {
        int keyCode = keyEvent.getKeyCode();
        if (keyCode == 79 || keyCode == 222) {
            return true;
        }
        switch (keyCode) {
            case 85:
            case 86:
            case 87:
            case 88:
            case 89:
            case 90:
            case 91:
                return true;
            default:
                switch (keyCode) {
                    case 126:
                    case 127:
                    case 128:
                    case 129:
                    case 130:
                        return true;
                    default:
                        return false;
                }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public final boolean shouldOverrideUrlLoading(WebView webView, String str) {
        zze.zza("AdWebView shouldOverrideUrlLoading: ".concat(String.valueOf(str)));
        Uri uriA = Uri.parse(str);
        if ("gmsg".equalsIgnoreCase(uriA.getScheme()) && "mobileads.google.com".equalsIgnoreCase(uriA.getHost())) {
            j(uriA);
        } else {
            if (this.m && webView == this.b.zzG()) {
                String scheme = uriA.getScheme();
                if (ProxyConfig.MATCH_HTTP.equalsIgnoreCase(scheme) || ProxyConfig.MATCH_HTTPS.equalsIgnoreCase(scheme)) {
                    zza zzaVar = this.f;
                    if (zzaVar != null) {
                        zzaVar.onAdClicked();
                        ddf ddfVar = this.z;
                        if (ddfVar != null) {
                            ddfVar.zzh(str);
                        }
                        this.f = null;
                    }
                    t8g t8gVar = this.l;
                    if (t8gVar != null) {
                        t8gVar.zzdd();
                        this.l = null;
                    }
                    return super.shouldOverrideUrlLoading(webView, str);
                }
            }
            ejf ejfVar = this.b;
            if (ejfVar.zzG().willNotDraw()) {
                zzo.zzj("AdWebView unable to handle URL: ".concat(String.valueOf(str)));
            } else {
                try {
                    fre freVarZzI = ejfVar.zzI();
                    inh inhVarZzS = ejfVar.zzS();
                    if (!((Boolean) zzbd.zzc().b(cye.dc)).booleanValue() || inhVarZzS == null) {
                        if (freVarZzI != null && freVarZzI.f(uriA)) {
                            uriA = freVarZzI.a(uriA, ejfVar.getContext(), (View) ejfVar, ejfVar.zzi());
                        }
                    } else if (freVarZzI != null && freVarZzI.f(uriA)) {
                        uriA = inhVarZzS.a(uriA, ejfVar.getContext(), (View) ejfVar, ejfVar.zzi());
                    }
                } catch (zzauz unused) {
                    zzo.zzj("Unable to append parameter to URL: ".concat(String.valueOf(str)));
                }
                zzb zzbVar = this.x;
                if (zzbVar == null || zzbVar.zzc()) {
                    zzc zzcVar = new zzc("android.intent.action.VIEW", uriA.toString(), null, null, null, null, null, null);
                    ejf ejfVar2 = this.b;
                    M(zzcVar, true, false, ejfVar2 != null ? ejfVar2.zzr() : "");
                } else {
                    zzbVar.zzb(str);
                }
            }
        }
        return true;
    }

    public final WebResourceResponse t(String str, Map map) throws IOException {
        URL url = new URL(str);
        try {
            TrafficStats.setThreadStatsTag(264);
            int i = 0;
            while (true) {
                i++;
                if (i > 20) {
                    TrafficStats.clearThreadStatsTag();
                    throw new IOException("Too many redirects (20)");
                }
                int i2 = xyh.a;
                URLConnection uRLConnectionOpenConnection = url.openConnection();
                uRLConnectionOpenConnection.setConnectTimeout(10000);
                uRLConnectionOpenConnection.setReadTimeout(10000);
                for (Map.Entry entry : map.entrySet()) {
                    uRLConnectionOpenConnection.addRequestProperty((String) entry.getKey(), (String) entry.getValue());
                }
                if (!(uRLConnectionOpenConnection instanceof HttpURLConnection)) {
                    throw new IOException("Invalid protocol.");
                }
                HttpURLConnection httpURLConnection = (HttpURLConnection) uRLConnectionOpenConnection;
                zzs zzsVarZzq = zzv.zzq();
                ejf ejfVar = this.b;
                zzsVarZzq.zzg(ejfVar.getContext(), ejfVar.zzm().afmaVersion, false, httpURLConnection, false, ComConstants.defScheduleTime);
                WebResourceResponse webResourceResponseZzb = null;
                zzl zzlVar = new zzl(null);
                zzlVar.zzc(httpURLConnection, null);
                int responseCode = httpURLConnection.getResponseCode();
                zzlVar.zze(httpURLConnection, responseCode);
                if (responseCode < 300 || responseCode >= 400) {
                    zzv.zzq();
                    zzv.zzq();
                    String contentType = httpURLConnection.getContentType();
                    String strTrim = "";
                    String strTrim2 = TextUtils.isEmpty(contentType) ? "" : contentType.split(ProcessInfo.SPLIT_NEW_VERSION)[0].trim();
                    zzv.zzq();
                    String contentType2 = httpURLConnection.getContentType();
                    if (!TextUtils.isEmpty(contentType2)) {
                        String[] strArrSplit = contentType2.split(ProcessInfo.SPLIT_NEW_VERSION);
                        if (strArrSplit.length != 1) {
                            for (int i3 = 1; i3 < strArrSplit.length; i3++) {
                                if (strArrSplit[i3].trim().startsWith("charset")) {
                                    String[] strArrSplit2 = strArrSplit[i3].trim().split("=");
                                    if (strArrSplit2.length > 1) {
                                        strTrim = strArrSplit2[1].trim();
                                        break;
                                    }
                                }
                            }
                        }
                    }
                    String str2 = strTrim;
                    Map<String, List<String>> headerFields = httpURLConnection.getHeaderFields();
                    HashMap map2 = new HashMap(headerFields.size());
                    for (Map.Entry<String, List<String>> entry2 : headerFields.entrySet()) {
                        if (entry2.getKey() != null && entry2.getValue() != null && !entry2.getValue().isEmpty()) {
                            map2.put(entry2.getKey(), entry2.getValue().get(0));
                        }
                    }
                    webResourceResponseZzb = zzv.zzr().zzb(strTrim2, str2, httpURLConnection.getResponseCode(), httpURLConnection.getResponseMessage(), map2, httpURLConnection.getInputStream());
                } else {
                    String headerField = httpURLConnection.getHeaderField("Location");
                    if (headerField == null) {
                        throw new IOException("Missing Location header in redirect");
                    }
                    if (!headerField.startsWith("tel:")) {
                        URL url2 = new URL(url, headerField);
                        String protocol = url2.getProtocol();
                        if (protocol == null) {
                            int i4 = zze.zza;
                            zzo.zzj("Protocol is null");
                            webResourceResponseZzb = s();
                        } else if (protocol.equals(ProxyConfig.MATCH_HTTP) || protocol.equals(ProxyConfig.MATCH_HTTPS)) {
                            String str3 = "Redirecting to " + headerField;
                            int i5 = zze.zza;
                            zzo.zze(str3);
                            httpURLConnection.disconnect();
                            url = url2;
                        } else {
                            int i6 = zze.zza;
                            zzo.zzj("Unsupported scheme: " + protocol);
                            webResourceResponseZzb = s();
                        }
                    }
                }
                TrafficStats.clearThreadStatsTag();
                return webResourceResponseZzb;
            }
        } catch (Throwable th) {
            TrafficStats.clearThreadStatsTag();
            throw th;
        }
    }

    public final void u(Map map, List list, String str) {
        if (zze.zzc()) {
            zze.zza("Received GMSG: ".concat(str));
            for (String str2 : map.keySet()) {
                zze.zza("  " + str2 + ": " + ((String) map.get(str2)));
            }
        }
        Iterator it = list.iterator();
        while (it.hasNext()) {
            ((n3f) it.next()).a(this.b, map);
        }
    }

    @Override
    public final void v(gkf gkfVar) {
        this.h = gkfVar;
    }

    public final void w() {
        View.OnAttachStateChangeListener onAttachStateChangeListener = this.H;
        if (onAttachStateChangeListener == null) {
            return;
        }
        ((View) this.b).removeOnAttachStateChangeListener(onAttachStateChangeListener);
    }

    @Override
    public final void x(hmh hmhVar) {
        ejf ejfVar = this.b;
        if (zzv.zzo().p(ejfVar.getContext())) {
            h("/logScionEvent");
            new HashMap();
            b("/logScionEvent", new t3f(ejfVar.getContext(), hmhVar.w0));
        }
    }

    public final ViewTreeObserver.OnGlobalLayoutListener y() {
        synchronized (this.e) {
        }
        return null;
    }

    public final void z(final View view, final ddf ddfVar, final int i) {
        if (!ddfVar.zzi() || i <= 0) {
            return;
        }
        ddfVar.a(view);
        if (ddfVar.zzi()) {
            zzs.zza.postDelayed(new Runnable() {
                @Override
                public final void run() {
                    this.zza.z(view, ddfVar, i - 1);
                }
            }, 100L);
        }
    }

    @Override
    public final void zzD(int i, int i2) {
        q9f q9fVar = this.y;
        if (q9fVar != null) {
            q9fVar.l(i, i2);
        }
    }

    @Override
    public final void zzG(boolean z) {
        synchronized (this.e) {
            this.u = z;
        }
    }

    @Override
    public final void zzH() {
        synchronized (this.e) {
            this.m = false;
            this.r = true;
            zef.f.execute(new Runnable() {
                @Override
                public final void run() {
                    ijf.G(this.zza);
                }
            });
        }
    }

    @Override
    public final boolean zzT() {
        boolean z;
        synchronized (this.e) {
            z = this.r;
        }
        return z;
    }

    @Override
    public final zzb zzd() {
        return this.x;
    }

    @Override
    public final void zzdd() {
        t8g t8gVar = this.l;
        if (t8gVar != null) {
            t8gVar.zzdd();
        }
    }

    @Override
    public final smg zze() {
        return this.A;
    }

    @Override
    public final void zzo() {
        o0 o0Var = this.c;
        if (o0Var != null) {
            o0Var.c(10005);
        }
        this.C = true;
        this.o = 10004;
        this.p = "Page loaded delay cancel.";
        J();
        this.b.destroy();
    }

    @Override
    public final void zzp() {
        synchronized (this.e) {
        }
        this.D++;
        J();
    }

    @Override
    public final void zzq() {
        this.D--;
        J();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public final void zzs() {
        ddf ddfVar = this.z;
        if (ddfVar != null) {
            ejf ejfVar = this.b;
            WebView webViewZzG = ejfVar.zzG();
            if (ViewCompat.isAttachedToWindow(webViewZzG)) {
                z(webViewZzG, ddfVar, 10);
                return;
            }
            w();
            fjf fjfVar = new fjf(this, ddfVar);
            this.H = fjfVar;
            ((View) ejfVar).addOnAttachStateChangeListener(fjfVar);
        }
    }

    @Override
    public final void zzu() {
        t8g t8gVar = this.l;
        if (t8gVar != null) {
            t8gVar.zzu();
        }
    }
}
