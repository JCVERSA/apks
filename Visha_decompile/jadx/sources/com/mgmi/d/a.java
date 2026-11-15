package com.mgmi.d;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import androidx.media3.common.C;
import com.mgadplus.mgutil.SourceKitLogger;
import com.mgmi.db.dao3.MgmiOfflineAdDao;
import com.mgmi.db.dao3.MgmiOfflineAdResourceDao;
import com.mgmi.db.dao3.d;
import com.mgmi.db.dao3.f;
import com.mgmi.db.dao3.g;
import java.io.File;
import java.net.SocketTimeoutException;
import java.net.UnknownHostException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

public class a {
    public static final String a = "a";
    private static a g;
    private Context b;
    private b c;
    private HashMap<Integer, f> d;
    private HashMap<String, g> e;
    private boolean f = false;
    private final Handler h = new Handler(Looper.getMainLooper()) {
        @Override
        public void handleMessage(Message message) {
            if (message.what != 9) {
                return;
            }
            try {
                a.this.e();
            } catch (Exception unused) {
                SourceKitLogger.a(a.a, "scan error");
            }
        }
    };

    private a() {
    }

    public void e() {
        g value;
        List<g> list;
        if (this.e == null) {
            return;
        }
        SourceKitLogger.a(a, "scan");
        ArrayList arrayList = new ArrayList();
        Iterator<Map.Entry<String, g>> it = this.e.entrySet().iterator();
        while (it.hasNext()) {
            g value2 = it.next().getValue();
            if (value2 != null && value2.j()) {
                SourceKitLogger.a(a, "resource expired : " + value2.d());
                arrayList.add(value2);
            }
        }
        if (!arrayList.isEmpty()) {
            for (int i = 0; i < arrayList.size(); i++) {
                g gVar = (g) arrayList.get(i);
                if (gVar != null) {
                    MgmiOfflineAdResourceDao mgmiOfflineAdResourceDaoD = d();
                    if (mgmiOfflineAdResourceDaoD != null) {
                        mgmiOfflineAdResourceDaoD.delete(gVar);
                    }
                    this.e.remove(gVar.d());
                    String str = a;
                    SourceKitLogger.a(str, "delete resource - " + gVar.d());
                    File file = new File(gVar.e());
                    if (file.exists()) {
                        file.delete();
                        SourceKitLogger.a(str, "delete file - " + gVar.e());
                    }
                }
            }
        }
        MgmiOfflineAdResourceDao mgmiOfflineAdResourceDaoD2 = d();
        if (mgmiOfflineAdResourceDaoD2 != null && (list = mgmiOfflineAdResourceDaoD2.queryBuilder().orderAsc(MgmiOfflineAdResourceDao.Properties.a).list()) != null && list.size() > 15) {
            SourceKitLogger.a(a, "over 15 resource");
            for (int i2 = 0; i2 < list.size() - 15; i2++) {
                g gVar2 = list.get(i2);
                if (gVar2 != null) {
                    mgmiOfflineAdResourceDaoD2.delete(gVar2);
                    this.e.remove(gVar2.d());
                    String str2 = a;
                    SourceKitLogger.a(str2, "delete resource - " + gVar2.d());
                    File file2 = new File(gVar2.e());
                    if (file2.exists()) {
                        file2.delete();
                        SourceKitLogger.a(str2, "delete resource - " + gVar2.e());
                    }
                }
            }
        }
        Iterator<Map.Entry<String, g>> it2 = this.e.entrySet().iterator();
        while (true) {
            if (!it2.hasNext()) {
                value = null;
                break;
            }
            value = it2.next().getValue();
            if (value != null && !value.i() && !value.h()) {
                break;
            }
        }
        if (value != null) {
            b(value);
        } else {
            SourceKitLogger.a(a, "nothing to download");
        }
    }

    public MgmiOfflineAdDao c() {
        try {
            return d.a(this.b).a();
        } catch (Exception e) {
            SourceKitLogger.a(a, "getAdDao exception: " + e.getMessage());
            return null;
        }
    }

    public MgmiOfflineAdResourceDao d() {
        try {
            return d.a(this.b).b();
        } catch (Exception e) {
            SourceKitLogger.a(a, "getAdResDao exception: " + e.getMessage());
            return null;
        }
    }

    public void b() {
        Handler handler = this.h;
        if (handler != null) {
            handler.sendEmptyMessageDelayed(9, 1000L);
        }
    }

    private void b(g gVar) {
        if (gVar == null || this.f) {
            return;
        }
        this.f = true;
        SourceKitLogger.a(a, "download - " + gVar.d());
        b bVar = new b(this.b, gVar, new b.a() {
            @Override
            public void a(g gVar2) {
                com.mgmi.net.b bVarA;
                if (gVar2 != null) {
                    String str = a.a;
                    SourceKitLogger.a(str, "download success - " + gVar2.d());
                    SourceKitLogger.a(str, "download success - " + gVar2.e());
                }
                if (a.this.b != null && (bVarA = com.mgmi.net.b.a()) != null && bVarA.b() != null) {
                    com.mgmi.net.bean.b bVar2 = new com.mgmi.net.bean.b();
                    bVar2.c(gVar2.d());
                    bVarA.b().f(bVar2);
                }
                a.this.f = false;
                a.this.b();
            }

            @Override
            public void a(g gVar2, String str) {
                com.mgmi.net.b bVarA;
                if (gVar2 != null) {
                    String str2 = a.a;
                    SourceKitLogger.a(str2, "download failed - " + str);
                    SourceKitLogger.a(str2, "download failed - " + gVar2.d());
                    a.this.a(gVar2);
                }
                if (a.this.b != null && (bVarA = com.mgmi.net.b.a()) != null && bVarA.b() != null) {
                    com.mgmi.net.bean.b bVar2 = new com.mgmi.net.bean.b();
                    bVar2.c(gVar2.d());
                    bVarA.b().e(bVar2);
                }
                a.this.f = false;
                a.this.a(C.DEFAULT_MAX_SEEK_TO_PREVIOUS_POSITION_MS);
            }

            @Override
            public void a(g gVar2, int i, Exception exc, String str) {
                if (gVar2 != null) {
                    String str2 = a.a;
                    SourceKitLogger.a(str2, "download http failed - " + str);
                    SourceKitLogger.a(str2, "download http failed - " + gVar2.d());
                    a.this.a(gVar2);
                    String.format("301%s", String.valueOf(i));
                    if (exc != null && !(exc instanceof SocketTimeoutException)) {
                        boolean z = exc instanceof UnknownHostException;
                    }
                }
                a.this.f = false;
                a.this.a(C.DEFAULT_MAX_SEEK_TO_PREVIOUS_POSITION_MS);
            }
        });
        this.c = bVar;
        bVar.start();
    }

    public static a a() {
        if (g == null) {
            synchronized (a.class) {
                try {
                    if (g == null) {
                        g = new a();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return g;
    }

    public void a(Context context) {
        List<g> listLoadAll;
        List<f> list;
        this.b = context.getApplicationContext();
        this.d = new HashMap<>();
        this.e = new HashMap<>();
        try {
            MgmiOfflineAdDao mgmiOfflineAdDaoC = c();
            if (mgmiOfflineAdDaoC != null && (list = mgmiOfflineAdDaoC.queryBuilder().orderDesc(MgmiOfflineAdDao.Properties.d).list()) != null) {
                for (int i = 0; i < list.size(); i++) {
                    f fVar = list.get(i);
                    if (fVar != null) {
                        this.d.put(fVar.b(), fVar);
                    }
                }
            }
            MgmiOfflineAdResourceDao mgmiOfflineAdResourceDaoD = d();
            if (mgmiOfflineAdResourceDaoD != null && (listLoadAll = mgmiOfflineAdResourceDaoD.loadAll()) != null) {
                for (int i2 = 0; i2 < listLoadAll.size(); i2++) {
                    g gVar = listLoadAll.get(i2);
                    if (gVar != null) {
                        this.e.put(gVar.d(), gVar);
                    }
                }
            }
        } catch (Exception e) {
            SourceKitLogger.a(a, "initialize exception:" + e.getMessage());
        }
        b();
    }

    public void a(long j) {
        Handler handler = this.h;
        if (handler != null) {
            handler.sendEmptyMessageDelayed(9, j);
        }
    }

    public void a(g gVar) {
        MgmiOfflineAdResourceDao mgmiOfflineAdResourceDaoD = d();
        if (mgmiOfflineAdResourceDaoD == null || gVar == null) {
            return;
        }
        try {
            mgmiOfflineAdResourceDaoD.update(gVar);
        } catch (Exception unused) {
        }
    }
}
