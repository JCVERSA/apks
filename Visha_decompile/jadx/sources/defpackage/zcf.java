package defpackage;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.view.View;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import com.google.android.gms.ads.internal.util.client.zzo;
import com.google.android.gms.ads.internal.util.zzbo;
import com.google.android.gms.ads.internal.util.zze;
import com.google.android.gms.ads.internal.util.zzs;
import com.google.android.gms.ads.internal.zzv;
import com.google.android.gms.internal.ads.ba;
import com.google.android.gms.internal.ads.bb;
import com.google.android.gms.internal.ads.db;
import com.google.android.gms.internal.ads.j8;
import com.google.android.gms.internal.ads.lb;
import com.google.android.gms.internal.ads.mb;
import com.google.android.gms.internal.ads.nb;
import com.google.android.gms.internal.ads.qb;
import com.google.android.gms.internal.ads.xa;
import com.google.android.gms.internal.ads.zzbxf;
import com.google.android.gms.internal.ads.zzgwn;
import defpackage.cdf;
import defpackage.zcf;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.concurrent.TimeUnit;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public final class zcf implements ddf {
    public static final List l = Collections.synchronizedList(new ArrayList());
    public final qvi a;
    public final LinkedHashMap b;
    public final Context e;
    public boolean f;
    public final zzbxf g;
    public final List c = new ArrayList();
    public final List d = new ArrayList();
    public final Object h = new Object();
    public HashSet i = new HashSet();
    public boolean j = false;
    public boolean k = false;

    public zcf(Context context, VersionInfoParcel versionInfoParcel, zzbxf zzbxfVar, String str, adf adfVar) {
        wd8.m(zzbxfVar, "SafeBrowsing config is not present.");
        this.e = context.getApplicationContext() != null ? context.getApplicationContext() : context;
        this.b = new LinkedHashMap();
        this.g = zzbxfVar;
        Iterator it = zzbxfVar.zze.iterator();
        while (it.hasNext()) {
            this.i.add(((String) it.next()).toLowerCase(Locale.ENGLISH));
        }
        this.i.remove("cookie".toLowerCase(Locale.ENGLISH));
        qvi qviVarB0 = qb.b0();
        qviVarB0.J(9);
        qviVarB0.F(str);
        qviVarB0.C(str);
        rvi rviVarB0 = xa.b0();
        String str2 = this.g.zza;
        if (str2 != null) {
            rviVarB0.v(str2);
        }
        qviVarB0.B((xa) rviVarB0.q());
        vwi vwiVarB0 = nb.b0();
        vwiVarB0.x(mpc.a(this.e).g());
        String str3 = versionInfoParcel.afmaVersion;
        if (str3 != null) {
            vwiVarB0.v(str3);
        }
        long jB = aj4.g().b(this.e);
        if (jB > 0) {
            vwiVarB0.w(jB);
        }
        qviVarB0.A((nb) vwiVarB0.q());
        this.a = qviVarB0;
    }

    public static im5 c(zcf zcfVar, Map map) {
        int length;
        uwi uwiVar;
        im5 im5VarM;
        if (map != null) {
            try {
                for (String str : map.keySet()) {
                    JSONArray jSONArrayOptJSONArray = new JSONObject((String) map.get(str)).optJSONArray("matches");
                    if (jSONArrayOptJSONArray != null) {
                        Object obj = zcfVar.h;
                        synchronized (obj) {
                            try {
                                length = jSONArrayOptJSONArray.length();
                                synchronized (obj) {
                                    try {
                                        uwiVar = (uwi) zcfVar.b.get(str);
                                    } catch (Throwable th) {
                                        throw th;
                                    }
                                }
                            } catch (Throwable th2) {
                                throw th2;
                            }
                        }
                        if (uwiVar == null) {
                            cdf.a("Cannot find the corresponding resource object for " + str);
                        } else {
                            for (int i = 0; i < length; i++) {
                                uwiVar.v(jSONArrayOptJSONArray.getJSONObject(i).getString("threat_type"));
                            }
                            zcfVar.f = (length > 0) | zcfVar.f;
                        }
                    }
                }
            } catch (JSONException e) {
                if (((Boolean) h0f.a.e()).booleanValue()) {
                    int i2 = zze.zza;
                    zzo.zzf("Failed to get SafeBrowsing metadata", e);
                }
                return j8.g(new Exception("Safebrowsing report transmission failed."));
            }
        }
        if (zcfVar.f) {
            synchronized (zcfVar.h) {
                zcfVar.a.J(10);
            }
        }
        boolean z = zcfVar.f;
        if (!(z && zcfVar.g.zzg) && (!(zcfVar.k && zcfVar.g.zzf) && (z || !zcfVar.g.zzd))) {
            return j8.h(null);
        }
        synchronized (zcfVar.h) {
            try {
                Iterator it = zcfVar.b.values().iterator();
                while (it.hasNext()) {
                    zcfVar.a.x((mb) ((uwi) it.next()).q());
                }
                qvi qviVar = zcfVar.a;
                qviVar.v(zcfVar.c);
                qviVar.w(zcfVar.d);
                if (cdf.b()) {
                    StringBuilder sb = new StringBuilder("Sending SB report\n  url: " + qviVar.H() + "\n  clickUrl: " + qviVar.G() + "\n  resources: \n");
                    for (mb mbVar : qviVar.I()) {
                        sb.append("    [");
                        sb.append(mbVar.b0());
                        sb.append("] ");
                        sb.append(mbVar.e0());
                    }
                    cdf.a(sb.toString());
                }
                im5 im5VarZzb = new zzbo(zcfVar.e).zzb(1, zcfVar.g.zzb, null, ((qb) qviVar.q()).l());
                if (cdf.b()) {
                    im5VarZzb.addListener(new Runnable() {
                        @Override
                        public final void run() {
                            List list = zcf.l;
                            cdf.a("Pinged SB successfully.");
                        }
                    }, zef.a);
                }
                im5VarM = j8.m(im5VarZzb, new m2i() {
                    @Override
                    public final Object apply(Object obj2) {
                        List list = zcf.l;
                        return null;
                    }
                }, zef.g);
            } catch (Throwable th3) {
                throw th3;
            }
        }
        return im5VarM;
    }

    public static void e(zcf zcfVar, Bitmap bitmap) {
        ba baVarZzt = zzgwn.zzt();
        bitmap.compress(Bitmap.CompressFormat.PNG, 0, baVarZzt);
        synchronized (zcfVar.h) {
            qvi qviVar = zcfVar.a;
            pwi pwiVarB0 = lb.b0();
            pwiVarB0.v(baVarZzt.d());
            pwiVarB0.w("image/png");
            pwiVarB0.x(2);
            qviVar.E((lb) pwiVarB0.q());
        }
    }

    @Override
    public final void a(View view) {
        Bitmap bitmapCreateBitmap;
        if (this.g.zzc && !this.j) {
            zzv.zzq();
            final Bitmap bitmap = null;
            if (view != null) {
                try {
                    boolean zIsDrawingCacheEnabled = view.isDrawingCacheEnabled();
                    view.setDrawingCacheEnabled(true);
                    Bitmap drawingCache = view.getDrawingCache();
                    bitmapCreateBitmap = drawingCache != null ? Bitmap.createBitmap(drawingCache) : null;
                    try {
                        view.setDrawingCacheEnabled(zIsDrawingCacheEnabled);
                    } catch (RuntimeException e) {
                        e = e;
                        int i = zze.zza;
                        zzo.zzh("Fail to capture the web view", e);
                    }
                } catch (RuntimeException e2) {
                    e = e2;
                    bitmapCreateBitmap = null;
                }
                if (bitmapCreateBitmap == null) {
                    try {
                        int width = view.getWidth();
                        int height = view.getHeight();
                        if (width == 0 || height == 0) {
                            int i2 = zze.zza;
                            zzo.zzj("Width or height of view is zero");
                        } else {
                            Bitmap bitmapCreateBitmap2 = Bitmap.createBitmap(view.getWidth(), view.getHeight(), Bitmap.Config.RGB_565);
                            Canvas canvas = new Canvas(bitmapCreateBitmap2);
                            view.layout(0, 0, width, height);
                            view.draw(canvas);
                            bitmap = bitmapCreateBitmap2;
                        }
                    } catch (RuntimeException e3) {
                        int i3 = zze.zza;
                        zzo.zzh("Fail to capture the webview", e3);
                    }
                } else {
                    bitmap = bitmapCreateBitmap;
                }
            }
            if (bitmap == null) {
                cdf.a("Failed to capture the webview bitmap.");
            } else {
                this.j = true;
                zzs.zzh(new Runnable() {
                    @Override
                    public final void run() {
                        zcf.e(this.zza, bitmap);
                    }
                });
            }
        }
    }

    @Override
    public final void b(String str, Map map, int i) {
        synchronized (this.h) {
            if (i == 3) {
                try {
                    this.k = true;
                } catch (Throwable th) {
                    throw th;
                }
            }
            LinkedHashMap linkedHashMap = this.b;
            if (linkedHashMap.containsKey(str)) {
                if (i == 3) {
                    ((uwi) linkedHashMap.get(str)).z(4);
                }
                return;
            }
            uwi uwiVarC0 = mb.c0();
            int iA = twi.a(i);
            if (iA != 0) {
                uwiVarC0.z(iA);
            }
            uwiVarC0.w(linkedHashMap.size());
            uwiVarC0.y(str);
            awi awiVarB0 = db.b0();
            if (!this.i.isEmpty() && map != null) {
                for (Map.Entry entry : map.entrySet()) {
                    String str2 = entry.getKey() != null ? (String) entry.getKey() : "";
                    String str3 = entry.getValue() != null ? (String) entry.getValue() : "";
                    if (this.i.contains(str2.toLowerCase(Locale.ENGLISH))) {
                        zvi zviVarB0 = bb.b0();
                        zviVarB0.v(zzgwn.zzw(str2));
                        zviVarB0.w(zzgwn.zzw(str3));
                        awiVarB0.v((bb) zviVarB0.q());
                    }
                }
            }
            uwiVarC0.x((db) awiVarB0.q());
            linkedHashMap.put(str, uwiVarC0);
        }
    }

    @Override
    public final zzbxf zza() {
        return this.g;
    }

    @Override
    public final void zzf() {
        synchronized (this.h) {
            this.b.keySet();
            im5 im5VarH = j8.h(Collections.emptyMap());
            k7i k7iVar = new k7i() {
                @Override
                public final im5 zza(Object obj) {
                    return zcf.c(this.a, (Map) obj);
                }
            };
            g8i g8iVar = zef.g;
            im5 im5VarN = j8.n(im5VarH, k7iVar, g8iVar);
            im5 im5VarO = j8.o(im5VarN, 10L, TimeUnit.SECONDS, zef.d);
            j8.r(im5VarN, new ycf(this, im5VarO), g8iVar);
            l.add(im5VarO);
        }
    }

    @Override
    public final void zzh(String str) {
        synchronized (this.h) {
            try {
                if (str == null) {
                    this.a.y();
                } else {
                    this.a.z(str);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override
    public final boolean zzi() {
        return d28.b() && this.g.zzc && !this.j;
    }
}
