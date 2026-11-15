package com.google.android.gms.internal.ads;

import android.R;
import android.app.Activity;
import android.app.ActivityManager;
import android.app.KeyguardManager;
import android.content.Context;
import android.graphics.Rect;
import android.os.PowerManager;
import android.os.Process;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.WebView;
import android.widget.EditText;
import android.widget.TextView;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import androidx.media3.extractor.text.ttml.TtmlNode;
import com.google.android.gms.ads.internal.client.zzbd;
import com.google.android.gms.ads.internal.util.client.zzo;
import com.google.android.gms.ads.internal.util.zze;
import com.google.android.gms.ads.internal.zzv;
import defpackage.cve;
import defpackage.cye;
import defpackage.d28;
import defpackage.ejf;
import defpackage.lze;
import defpackage.wue;
import defpackage.xue;
import java.util.Iterator;
import java.util.List;
import org.json.JSONException;
import org.json.JSONObject;

public final class zzazg extends Thread {
    private boolean zza;
    private boolean zzb;
    private final Object zzc;
    private final xue zzd;
    private final int zze;
    private final int zzf;
    private final int zzg;
    private final int zzh;
    private final int zzi;
    private final int zzj;
    private final int zzk;
    private final int zzl;
    private final String zzm;
    private final boolean zzn;
    private final boolean zzo;

    public zzazg() {
        xue xueVar = new xue();
        this.zza = false;
        this.zzb = false;
        this.zzd = xueVar;
        this.zzc = new Object();
        this.zzf = ((Long) lze.d.e()).intValue();
        this.zzg = ((Long) lze.a.e()).intValue();
        this.zzh = ((Long) lze.e.e()).intValue();
        this.zzi = ((Long) lze.c.e()).intValue();
        this.zzj = ((Integer) zzbd.zzc().b(cye.i0)).intValue();
        this.zzk = ((Integer) zzbd.zzc().b(cye.j0)).intValue();
        this.zzl = ((Integer) zzbd.zzc().b(cye.k0)).intValue();
        this.zze = ((Long) lze.f.e()).intValue();
        this.zzm = (String) zzbd.zzc().b(cye.m0);
        this.zzn = ((Boolean) zzbd.zzc().b(cye.n0)).booleanValue();
        this.zzo = ((Boolean) zzbd.zzc().b(cye.o0)).booleanValue();
        ((Boolean) zzbd.zzc().b(cye.p0)).booleanValue();
        setName("ContentFetchTask");
    }

    /* JADX WARN: Bottom block not found for handler: all -> 0x00f7 */
    /* JADX WARN: Code duplicated, block: B:64:0x00e8 A[EXC_TOP_SPLITTER, LOOP:1: B:64:0x00e8->B:73:0x00e8, LOOP_START, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:68:0x00ec A[EXC_TOP_SPLITTER, SYNTHETIC] */
    @Override
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void run() {
        Object obj;
        List<ActivityManager.RunningAppProcessInfo> runningAppProcesses;
        PowerManager powerManager;
        while (true) {
            try {
                Context contextB = zzv.zzb().b();
                try {
                    if (contextB != null) {
                        ActivityManager activityManager = (ActivityManager) contextB.getSystemService("activity");
                        KeyguardManager keyguardManager = (KeyguardManager) contextB.getSystemService("keyguard");
                        if (activityManager != null && keyguardManager != null && (runningAppProcesses = activityManager.getRunningAppProcesses()) != null) {
                            Iterator<ActivityManager.RunningAppProcessInfo> it = runningAppProcesses.iterator();
                            while (true) {
                                if (it.hasNext()) {
                                    ActivityManager.RunningAppProcessInfo next = it.next();
                                    if (Process.myPid() == next.pid) {
                                        if (next.importance == 100 && !keyguardManager.inKeyguardRestrictedInputMode() && (powerManager = (PowerManager) contextB.getSystemService("power")) != null && powerManager.isScreenOn()) {
                                            Activity activityA = zzv.zzb().a();
                                            if (activityA == null) {
                                                int i = zze.zza;
                                                zzo.zze("ContentFetchThread: no activity. Sleeping.");
                                                zze();
                                            } else {
                                                View viewFindViewById = null;
                                                try {
                                                    if (activityA.getWindow() != null && activityA.getWindow().getDecorView() != null) {
                                                        viewFindViewById = activityA.getWindow().getDecorView().findViewById(R.id.content);
                                                    }
                                                } catch (Exception e) {
                                                    zzv.zzp().x(e, "ContentFetchTask.extractContent");
                                                    int i2 = zze.zza;
                                                    zzo.zze("Failed getting root view of activity. Content not extracted.");
                                                }
                                                if (viewFindViewById != null) {
                                                    viewFindViewById.post(new zzazc(this, viewFindViewById));
                                                }
                                            }
                                        }
                                        Thread.sleep(this.zze * 1000);
                                    }
                                }
                            }
                        }
                        obj = this.zzc;
                        synchronized (obj) {
                            while (this.zzb) {
                                try {
                                    int i3 = zze.zza;
                                    zzo.zze("ContentFetchTask: waiting");
                                    obj.wait();
                                } catch (InterruptedException unused) {
                                }
                            }
                        }
                    }
                    int i4 = zze.zza;
                    zzo.zze("ContentFetchTask: sleeping");
                    zze();
                    Thread.sleep(this.zze * 1000);
                } catch (InterruptedException e2) {
                    int i5 = zze.zza;
                    zzo.zzh("Error in ContentFetchTask", e2);
                } catch (Exception e3) {
                    int i6 = zze.zza;
                    zzo.zzh("Error in ContentFetchTask", e3);
                    zzv.zzp().x(e3, "ContentFetchTask.run");
                }
            } catch (Throwable th) {
                zzv.zzp().x(th, "ContentFetchTask.isInForeground");
            }
            obj = this.zzc;
            synchronized (obj) {
                while (this.zzb) {
                    int i7 = zze.zza;
                    zzo.zze("ContentFetchTask: waiting");
                    obj.wait();
                }
            }
        }
    }

    @VisibleForTesting
    public final cve zza(@Nullable View view, wue wueVar) {
        if (view != null) {
            boolean globalVisibleRect = view.getGlobalVisibleRect(new Rect());
            if ((view instanceof TextView) && !(view instanceof EditText)) {
                CharSequence text = ((TextView) view).getText();
                if (!TextUtils.isEmpty(text)) {
                    wueVar.h(text.toString(), globalVisibleRect, view.getX(), view.getY(), view.getWidth(), view.getHeight());
                    return new cve(this, 1, 0);
                }
            } else if ((view instanceof WebView) && !(view instanceof ejf)) {
                WebView webView = (WebView) view;
                if (d28.b()) {
                    wueVar.f();
                    webView.post(new zzaze(this, wueVar, webView, globalVisibleRect));
                    return new cve(this, 0, 1);
                }
            } else if (view instanceof ViewGroup) {
                ViewGroup viewGroup = (ViewGroup) view;
                int i = 0;
                int i2 = 0;
                for (int i3 = 0; i3 < viewGroup.getChildCount(); i3++) {
                    cve cveVarZza = zza(viewGroup.getChildAt(i3), wueVar);
                    i += cveVarZza.a;
                    i2 += cveVarZza.b;
                }
                return new cve(this, i, i2);
            }
        }
        return new cve(this, 0, 0);
    }

    @VisibleForTesting
    public final void zzb(View view) {
        try {
            wue wueVar = new wue(this.zzf, this.zzg, this.zzh, this.zzi, this.zzj, this.zzk, this.zzl, this.zzo);
            Context contextB = zzv.zzb().b();
            if (contextB != null) {
                String str = this.zzm;
                if (!TextUtils.isEmpty(str)) {
                    String str2 = (String) view.getTag(contextB.getResources().getIdentifier((String) zzbd.zzc().b(cye.l0), TtmlNode.ATTR_ID, contextB.getPackageName()));
                    if (str2 != null && str2.equals(str)) {
                        return;
                    }
                }
            }
            cve cveVarZza = zza(view, wueVar);
            wueVar.j();
            if (cveVarZza.a == 0 && cveVarZza.b == 0) {
                return;
            }
            int i = cveVarZza.b;
            if (i != 0) {
                if (i == 0) {
                }
                this.zzd.a(wueVar);
            } else if (wueVar.b() == 0) {
                return;
            }
            if (this.zzd.c(wueVar)) {
                return;
            }
            this.zzd.a(wueVar);
        } catch (Exception e) {
            int i2 = zze.zza;
            zzo.zzh("Exception in fetchContentOnUIThread", e);
            zzv.zzp().x(e, "ContentFetchTask.fetchContent");
        }
    }

    @VisibleForTesting
    public final void zzc(wue wueVar, WebView webView, String str, boolean z) {
        wueVar.e();
        try {
            if (!TextUtils.isEmpty(str)) {
                String strOptString = new JSONObject(str).optString("text");
                if (this.zzn || TextUtils.isEmpty(webView.getTitle())) {
                    wueVar.i(strOptString, z, webView.getX(), webView.getY(), webView.getWidth(), webView.getHeight());
                } else {
                    wueVar.i(webView.getTitle() + "\n" + strOptString, z, webView.getX(), webView.getY(), webView.getWidth(), webView.getHeight());
                }
            }
            if (wueVar.l()) {
                this.zzd.b(wueVar);
            }
        } catch (JSONException unused) {
            int i = zze.zza;
            zzo.zze("Json string may be malformed.");
        } catch (Throwable th) {
            int i2 = zze.zza;
            zzo.zzf("Failed to get webview content.", th);
            zzv.zzp().x(th, "ContentFetchTask.processWebViewContent");
        }
    }

    public final void zzd() {
        synchronized (this.zzc) {
            try {
                if (this.zza) {
                    int i = zze.zza;
                    zzo.zze("Content hash thread already started, quitting...");
                } else {
                    this.zza = true;
                    start();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void zze() {
        synchronized (this.zzc) {
            this.zzb = true;
            int i = zze.zza;
            zzo.zze("ContentFetchThread: paused, pause = true");
        }
    }
}
