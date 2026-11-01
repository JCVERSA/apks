package com.wandoujia.download.rpc;

import android.content.Context;
import android.content.SharedPreferences;
import android.text.TextUtils;
import android.util.LongSparseArray;
import com.snaptube.ad.guardian.TrackConstant;
import com.snaptube.premium.configs.Config;
import com.snaptube.taskManager.task.TaskTrace;
import com.snaptube.util.DeviceUtil;
import com.snaptube.util.ProductionEnv;
import com.wandoujia.download.listener.NetworkStatusStub;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ExecutorService;
import o.dg0;
import o.en3;
import o.it1;
import o.rg4;
import o.sr1;
import o.vu1;
import o.yg7;
import o.yu;

public class d {
    public static final int n;
    public final vu1 a;
    public final rg4 b;
    public final NetworkStatusStub c;
    public final yg7 d;
    public final LongSparseArray e = new LongSparseArray();
    public final Context f;
    public final dg0 g;
    public final ExecutorService h;
    public final yu i;
    public final com.wandoujia.download.rpc.b j;
    public final SharedPreferences.OnSharedPreferenceChangeListener k;
    public final Set l;
    public final sr1 m;

    public class a implements SharedPreferences.OnSharedPreferenceChangeListener {
        public a() {
        }

        @Override
        public void onSharedPreferenceChanged(SharedPreferences sharedPreferences, String str) {
            if (TextUtils.equals(str, "wifi_download_thread") || TextUtils.equals(str, "data_download_thread")) {
                int iMax = Math.max(Config.u2(), Config.u());
                d.c(d.this).h(iMax);
                d.a(d.this).o(iMax);
            }
        }
    }

    public class b implements sr1 {
        public b() {
        }

        @Override
        public void a(long j) {
            synchronized (d.b(d.this)) {
                d.b(d.this).remove(j);
            }
        }
    }

    static {
        n = DeviceUtil.f() ? Config.G() : 2;
    }

    public d(Context context, vu1 vu1Var, rg4 rg4Var, NetworkStatusStub networkStatusStub, yg7 yg7Var) {
        int i = n;
        dg0 dg0Var = new dg0(i, 10000L, "Download visible");
        this.g = dg0Var;
        this.h = new dg0(2, 10000L, "Download Invisible");
        yu yuVar = new yu("download-queue", i);
        this.i = yuVar;
        a aVar = new a();
        this.k = aVar;
        this.l = new HashSet();
        this.m = new b();
        this.f = context;
        this.a = vu1Var;
        this.b = rg4Var;
        this.c = networkStatusStub;
        this.d = yg7Var;
        int iMax = Math.max(Config.u2(), Config.u());
        dg0Var.h(iMax);
        yuVar.o(iMax);
        this.j = com.wandoujia.download.rpc.b.e(context);
        Config.b0().registerOnSharedPreferenceChangeListener(aVar);
    }

    public static yu a(d dVar) {
        return dVar.i;
    }

    public static LongSparseArray b(d dVar) {
        return dVar.e;
    }

    public static dg0 c(d dVar) {
        return dVar.g;
    }

    public static void h(h hVar, String str) {
        if (hVar == null) {
            ProductionEnv.debugLog("download-task", "downloadInfo is null. " + str);
            return;
        }
        ProductionEnv.debugLog("download-task", str + ", id=" + hVar.a + ", identity=" + hVar.h + ", title=" + hVar.d + ", path=" + hVar.m + ", status=" + hVar.d());
    }

    public final h d(InnerDownloadRequest innerDownloadRequest) {
        h hVar = new h();
        hVar.h = innerDownloadRequest.c;
        return hVar;
    }

    public synchronized boolean e(long j) {
        f fVar;
        synchronized (this.e) {
            fVar = (f) this.e.get(j);
        }
        if (fVar != null) {
            return fVar.C();
        }
        h hVarB = this.j.b(j);
        if (hVarB == null) {
            return false;
        }
        if (!this.j.f(j)) {
            return false;
        }
        h hVarA = hVarB.a();
        if (hVarA.d() == 196 || hVarA.d() == 197 || hVarA.d() == 193) {
            hVarB.f(299);
            it1.b().f(hVarB);
        }
        hVarA.f(TrackConstant.SCAN_MAX_COUNT);
        it1.b().f(hVarA);
        return true;
    }

    public final f f(long j, String str, String str2) {
        h hVarB = this.j.b(j);
        if (hVarB == null) {
            ProductionEnv.errorLog("DownloadClient", "There is no download info found.");
            return null;
        }
        if (!TextUtils.isEmpty(str)) {
            hVarB.b = str;
        }
        if (!TextUtils.isEmpty(str2)) {
            hVarB.i = str2;
        }
        return g(hVarB);
    }

    public final f g(h hVar) {
        f fVar = new f(this.f, hVar, this.m, hVar.p ? this.g : this.h, this.i, this.a, this.b, this.j, this.c, this.d);
        Map map = hVar.K;
        if (map != null) {
            fVar.f0(map);
        }
        synchronized (this.e) {
            this.e.put(hVar.a, fVar);
        }
        return fVar;
    }

    public h i(long j) {
        return this.j.b(j);
    }

    public h j(String str) {
        return this.j.c(str);
    }

    public List k(InnerDownloadFilter innerDownloadFilter) {
        return this.j.d(innerDownloadFilter, 0, 0, null, true);
    }

    public boolean l(long j) {
        return m(j, DownloadConstants.PauseReason.PAUSE_BY_APP);
    }

    public final boolean m(long j, DownloadConstants.PauseReason pauseReason) {
        f fVar;
        synchronized (this.e) {
            fVar = (f) this.e.get(j);
        }
        if (fVar == null) {
            return false;
        }
        return fVar.a0(pauseReason);
    }

    public boolean n(long j, String str, String str2) {
        synchronized (this.e) {
            try {
                if (this.e.get(j) != null) {
                    return true;
                }
                f fVarF = f(j, str, str2);
                if (fVarF == null) {
                    return false;
                }
                return fVarF.c0();
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public boolean o(InnerDownloadFilter innerDownloadFilter) {
        List<h> listD = this.j.d(innerDownloadFilter, 0, 0, null, true);
        ArrayList arrayList = new ArrayList();
        synchronized (this.e) {
            try {
                for (h hVar : listD) {
                    if (this.e.get(hVar.a) != null) {
                        ProductionEnv.w("DownloadClient", "Cannot resume running tasks.");
                    } else {
                        arrayList.add(g(hVar));
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        Iterator it2 = arrayList.iterator();
        while (true) {
            boolean z = true;
            while (it2.hasNext()) {
                if (!((f) it2.next()).c0() || !z) {
                    z = false;
                }
            }
            return z;
        }
    }

    public boolean p(long j, String str) {
        synchronized (this.e) {
            try {
                if (this.e.get(j) != null) {
                    return false;
                }
                f fVarF = f(j, null, null);
                if (fVarF == null) {
                    return false;
                }
                return fVarF.d0(str);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public void q(en3 en3Var) {
        it1.b().g(en3Var);
    }

    public h r(InnerDownloadRequest innerDownloadRequest) {
        String str = !TextUtils.isEmpty(innerDownloadRequest.c) ? innerDownloadRequest.c : innerDownloadRequest.a;
        try {
            synchronized (this.l) {
                while (!this.l.add(str)) {
                    try {
                        this.l.wait();
                    } catch (InterruptedException e) {
                        e.printStackTrace();
                    }
                }
            }
            h hVarC = this.j.c(str);
            if (hVarC != null && (hVarC.d() == 189 || hVarC.d() == 191 || hVarC.d() == 192 || hVarC.d() == 193 || hVarC.d() == 196 || hVarC.d() == 197)) {
                boolean z = hVarC.p;
                boolean z2 = innerDownloadRequest.r;
                if (z != z2 && (z2 || !z)) {
                    h(hVarC, "ERROR! DownloadInfo already existed! Cancel existing invisible task.");
                    e(hVarC.a);
                }
                h(hVarC, "ERROR! DownloadInfo already existed! Returning empty DownloadInfo.");
                TaskTrace.log(innerDownloadRequest.a, "ERROR! DownloadInfo already existed! Returning empty DownloadInfo.");
                h hVarD = d(innerDownloadRequest);
                synchronized (this.l) {
                    this.l.remove(str);
                    this.l.notifyAll();
                }
                return hVarD;
            }
            h hVarA = this.j.a(innerDownloadRequest);
            h(hVarA, "downloadInfo added into DB.");
            synchronized (this.l) {
                this.l.remove(str);
                this.l.notifyAll();
            }
            if (hVarA == null) {
                h(null, "ERROR! DownloadInfo already existed! Returning empty DownloadInfo.");
                TaskTrace.log(innerDownloadRequest.a, "ERROR! DownloadInfo already existed! Returning empty DownloadInfo.", "pos-2");
                return d(innerDownloadRequest);
            }
            h hVarA2 = hVarA.a();
            it1.b().f(hVarA2);
            g(hVarA).g0();
            return hVarA2;
        } catch (Throwable th) {
            synchronized (this.l) {
                this.l.remove(str);
                this.l.notifyAll();
                throw th;
            }
        }
    }
}
