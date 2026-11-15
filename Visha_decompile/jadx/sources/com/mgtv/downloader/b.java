package com.mgtv.downloader;

import android.content.Context;
import android.database.sqlite.SQLiteFullException;
import android.text.TextUtils;
import android.util.Log;
import com.hunantv.imgo.util.n;
import com.hunantv.imgo.util.p;
import com.mgtv.downloader.p2p.MGP2pLoader;
import com.mgtv.downloader.p2p.mg.DownloadFacadeEnum;
import com.mgtv.downloader.p2p.mg.DownloadHlsManager;
import com.mgtv.downloader.util.d;
import java.io.File;
import java.util.HashMap;
import java.util.Map;
import java.util.Timer;
import java.util.TimerTask;
import java.util.concurrent.CopyOnWriteArrayList;

public class b {
    public static com.mgtv.downloader.util.b a = null;
    public static int b = 2;
    public static int c = 0;
    public static boolean d = false;
    public static int e = 8;
    public static int f = 13;
    private static int h = 0;
    private static boolean i = true;
    private static String j = "";
    private static boolean k = false;
    private static int l = 1;
    private static CopyOnWriteArrayList<com.mgtv.downloader.a.a> o = new CopyOnWriteArrayList<>();
    private static b r;
    private Context g;
    private boolean m = false;
    private boolean n = false;
    private HashMap<Integer, com.mgtv.downloader.a.b> p = new HashMap<>();
    private HashMap<String, Integer> q = new HashMap<>();
    private com.mgtv.downloader.net.entity.a s = null;
    private com.mgtv.downloader.database.c t = null;

    public class AnonymousClass1 implements Runnable {
        final com.mgtv.downloader.net.entity.a a;
        final com.mgtv.downloader.a.b b;

        @Override
        public void run() {
            if (this.a.n() == null) {
                File file = new File(this.a.c());
                if (file.exists()) {
                    com.mgtv.downloader.util.c.a("media type is null, deleted mp4 offline, videoID: " + this.a.a());
                    file.delete();
                }
            } else if (b.i && 1 == this.a.n().intValue()) {
                int iDeleteOfflineCache = DownloadHlsManager.getInstance().deleteOfflineCache(this.a.m(), this.a.c());
                if (iDeleteOfflineCache < 0) {
                    com.mgtv.downloader.util.c.a("delete hls offline cache failed, videoID: " + this.a.a() + ", definition: " + this.a.i() + ", ret: " + iDeleteOfflineCache);
                }
            } else {
                File file2 = new File(this.a.c());
                if (file2.exists()) {
                    com.mgtv.downloader.util.c.a("media type not null, deleted mp4 offline, videoID: " + this.a.a());
                    file2.delete();
                }
            }
            com.mgtv.downloader.a.b bVar = this.b;
            if (bVar != null) {
                bVar.c(-1, this.a);
            }
        }
    }

    public final class a implements com.mgtv.downloader.a.b {
        private a() {
        }

        @Override
        public void a(int i, com.mgtv.downloader.net.entity.a aVar, String str) {
            if (b.this.b(Integer.valueOf(i)) != null) {
                if (d.a() >= 0) {
                    aVar.d(Integer.valueOf(d.a()));
                }
                b.this.b(Integer.valueOf(i)).a(i, aVar, str);
            }
        }

        @Override
        public void b(int i, com.mgtv.downloader.net.entity.a aVar) {
            if (b.this.b(Integer.valueOf(i)) != null) {
                if (d.a() >= 0) {
                    aVar.d(Integer.valueOf(d.a()));
                }
                b.this.b(Integer.valueOf(i)).b(i, aVar);
            }
        }

        @Override
        public void c(int i, com.mgtv.downloader.net.entity.a aVar) {
            com.mgtv.downloader.util.c.a("[DownloadListener]onRemove taskID: " + i + ", videoID: " + aVar.a());
            if (b.this.b(Integer.valueOf(i)) != null) {
                if (d.a() >= 0) {
                    aVar.d(Integer.valueOf(d.a()));
                }
                b.this.b(Integer.valueOf(i)).c(i, aVar);
            }
            b.this.a(Integer.valueOf(i));
            b.this.a(aVar.r());
            b.this.f();
        }

        @Override
        public void d(int i, com.mgtv.downloader.net.entity.a aVar) {
            com.mgtv.downloader.util.c.a("[DownloadListener]onDownloadMD5CheckFinish taskID: " + i + ", videoID: " + aVar.a());
            if (b.this.b(Integer.valueOf(i)) != null) {
                if (d.a() >= 0) {
                    aVar.d(Integer.valueOf(d.a()));
                }
                b.this.b(Integer.valueOf(i)).d(i, aVar);
            }
            b.this.a(Integer.valueOf(i));
        }

        public a(b bVar, AnonymousClass1 anonymousClass1) {
            this();
        }

        @Override
        public void a(int i, com.mgtv.downloader.net.entity.a aVar, int i2, String str) {
            com.mgtv.downloader.util.c.a("[DownloadListener]onDownloadError taskID: " + i + ", videoID: " + aVar.a() + ", errorCode: " + i2);
            if (b.this.b(Integer.valueOf(i)) != null) {
                if (d.a() >= 0) {
                    aVar.d(Integer.valueOf(d.a()));
                }
                b.this.b(Integer.valueOf(i)).a(i, aVar, i2, str);
            }
            if (5 == i2 || 6 == i2 || 7 == i2 || 301504 == i2) {
                b.this.f();
            }
            try {
                com.mgtv.downloader.database.d.a(b.this.g).a().update(b.this.a(aVar));
            } catch (Exception e) {
                e.printStackTrace();
                b.this.a(e);
            }
        }

        @Override
        public void b(int i, com.mgtv.downloader.net.entity.a aVar, String str) {
            com.mgtv.downloader.util.c.a("[DownloadListener]onDownloadSlow taskID: " + i + ", videoID: " + aVar.a());
            if (b.this.b(Integer.valueOf(i)) != null) {
                if (d.a() >= 0) {
                    aVar.d(Integer.valueOf(d.a()));
                }
                b.this.b(Integer.valueOf(i)).b(i, aVar, str);
            }
        }

        @Override
        public void d(int i, com.mgtv.downloader.net.entity.a aVar, String str) {
            com.mgtv.downloader.util.c.a("[DownloadListener]onDownloadRequest taskID: " + i + ", videoID: " + aVar.a());
            if (b.this.b(Integer.valueOf(i)) != null) {
                if (d.a() >= 0) {
                    aVar.d(Integer.valueOf(d.a()));
                }
                b.this.b(Integer.valueOf(i)).d(i, aVar, str);
            }
            try {
                com.mgtv.downloader.database.d.a(b.this.g).a().update(b.this.a(aVar));
            } catch (Exception e) {
                e.printStackTrace();
                b.this.a(e);
            }
        }

        @Override
        public void c(int i, com.mgtv.downloader.net.entity.a aVar, String str) {
            com.mgtv.downloader.util.c.a("[DownloadListener]onDownloadResume taskID: " + i + ", videoID: " + aVar.a());
            if (b.this.b(Integer.valueOf(i)) != null) {
                if (d.a() >= 0) {
                    aVar.d(Integer.valueOf(d.a()));
                }
                b.this.b(Integer.valueOf(i)).c(i, aVar, str);
            }
            b.this.f();
        }

        @Override
        public void a(int i, com.mgtv.downloader.net.entity.a aVar) {
            com.mgtv.downloader.util.c.a("[DownloadListener]onDownloadFinish taskID: " + i + ", videoID: " + aVar.a());
            if (b.this.b(Integer.valueOf(i)) != null) {
                if (d.a() >= 0) {
                    aVar.d(Integer.valueOf(d.a()));
                }
                b.this.b(Integer.valueOf(i)).a(i, aVar);
            }
            try {
                try {
                    com.mgtv.downloader.database.d.a(b.this.g).a().update(b.this.a(aVar));
                } catch (Exception e) {
                    e.printStackTrace();
                    b.this.a(e);
                }
            } finally {
                b.this.f();
            }
        }
    }

    private b() {
    }

    private static int d(int i2) {
        int i3 = h + 1;
        h = i3;
        return i3 + (i2 * 10000);
    }

    public boolean f() {
        com.mgtv.downloader.util.c.a("[startNextTask] start");
        if (!g()) {
            return false;
        }
        synchronized (o) {
            try {
                for (com.mgtv.downloader.a.a aVar : o) {
                    if (aVar != null && 10 == aVar.d() && !aVar.l()) {
                        com.mgtv.downloader.net.entity.a aVarB = aVar.b();
                        Integer numF = aVarB.f();
                        int iIntValue = numF == null ? 0 : numF.intValue();
                        if (2 == iIntValue || 11 == iIntValue || 6 == iIntValue) {
                            int iA = aVar.a(true);
                            if (iA < 0) {
                                com.mgtv.downloader.util.c.a("[startNextTask]start next download Task failed, taskID: " + aVar.c() + ", videoID: " + aVarB.a());
                                return false;
                            }
                            if (1 == iA) {
                                com.mgtv.downloader.util.c.a("[startNextTask]start next download Task failed, lock or downloading, taskID: " + aVar.c() + ", videoID: " + aVarB.a());
                                return false;
                            }
                            if (o.contains(aVar)) {
                                o.remove(aVar);
                            }
                            o.add(0, aVar);
                            com.mgtv.downloader.util.c.a("[startNextTask] start next download Task success, taskID: " + aVar.c() + ", videoID: " + aVarB.a());
                            return true;
                        }
                    }
                }
                return false;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    private boolean g() {
        int i2;
        synchronized (o) {
            try {
                i2 = 0;
                for (com.mgtv.downloader.a.a aVar : o) {
                    if (aVar != null && 10 == aVar.d()) {
                        Integer numF = aVar.b().f();
                        if (1 == (numF == null ? 0 : numF.intValue())) {
                            i2++;
                        }
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        if (i2 < a.i) {
            com.mgtv.downloader.util.c.a("[canStartDownload] downloadingNum: " + i2 + ", maxDownloadTaskNum: " + a.i);
        }
        return i2 < a.i;
    }

    private com.mgtv.downloader.a.a h() {
        synchronized (o) {
            try {
                for (com.mgtv.downloader.a.a aVar : o) {
                    if (aVar != null && 10 == aVar.d() && aVar.l()) {
                        com.mgtv.downloader.util.c.a("[getRunningDownloader]name= " + aVar.b().d + ", taskID= " + aVar.c());
                        return aVar;
                    }
                }
                return null;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    private void i() {
        new Timer().schedule(new TimerTask() {
            @Override
            public void run() {
                if (d.f()) {
                    b.a().a(8, "前台");
                } else {
                    b.a().a(7, "后台");
                }
                if (d.g()) {
                    b.a().a(13, "亮屏");
                } else {
                    b.a().a(14, "息屏");
                }
                b.this.j();
            }
        }, 0L, 5000L);
    }

    public void j() {
        if (o.size() <= 0) {
            return;
        }
        synchronized (o) {
            try {
                for (com.mgtv.downloader.a.a aVar : o) {
                    if (aVar != null && 11 == aVar.b().f().intValue() && aVar.a() <= 5) {
                        if (g()) {
                            int iA = aVar.a(true);
                            if (iA < 0) {
                                com.mgtv.downloader.util.c.a("[TryResumeLockTask]start next download Task failed, taskID: " + aVar.c() + ", videoID: " + aVar.b().a());
                                return;
                            }
                            if (1 == iA) {
                                com.mgtv.downloader.util.c.a("[TryResumeLockTask]start next download Task failed, lock or downloading, taskID: " + aVar.c() + ", videoID: " + aVar.b().a());
                                return;
                            }
                            if (o.contains(aVar)) {
                                o.remove(aVar);
                            }
                            o.add(0, aVar);
                            com.mgtv.downloader.util.c.a("[TryResumeLockTask] start next download Task success, taskID: " + aVar.c() + ", videoID: " + aVar.b().a());
                            return;
                        }
                        return;
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    private int e(int i2) {
        if (!k) {
            com.mgtv.downloader.util.c.a("[downloaderBlockTask]download sdk not init, return");
            return -1;
        }
        com.mgtv.downloader.util.c.a("[downloaderBlockTask]downloader taskID: " + i2 + ", block task");
        synchronized (o) {
            try {
                for (com.mgtv.downloader.a.a aVar : o) {
                    if (aVar != null && aVar.c() == i2 && 11 != aVar.d()) {
                        if (aVar.b().f().intValue() != 3) {
                            aVar.h();
                            com.mgtv.downloader.util.c.a("[downloaderBlockTask] block success, videoID: " + aVar.b().a());
                            break;
                        }
                        n.c("DownloadSDK_1.8.0", "[downloaderBlockTask]Task is already block, videoID: " + aVar.b().a());
                        return 0;
                    }
                }
                return 0;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public void c() {
        if (this.g == null) {
            com.mgtv.downloader.util.c.a("downloader initDownloadDir fail ");
            return;
        }
        if (com.mgtv.downloader.dir.a.c().d().size() > 0) {
            com.mgtv.downloader.dir.a.c().b(this.g);
        }
        com.mgtv.downloader.dir.a.c().a(this.g);
    }

    public int d() {
        if (!k) {
            com.mgtv.downloader.util.c.a("download sdk not init, return");
            return 0;
        }
        com.mgtv.downloader.util.c.a("downloader deInit success");
        if (i) {
            DownloadHlsManager.getInstance().downloaderDeinitialize();
        }
        if (a != null) {
            a = null;
        }
        return 0;
    }

    public static CopyOnWriteArrayList<com.mgtv.downloader.a.a> b() {
        return o;
    }

    public static synchronized b a() {
        try {
            if (r == null) {
                r = new b();
            }
        } catch (Throwable th) {
            throw th;
        }
        return r;
    }

    private void b(com.mgtv.downloader.a.a aVar) {
        if (aVar == null || 10 != aVar.d() || aVar.b() == null) {
            return;
        }
        if (aVar.c() >= 0) {
            e(aVar.c());
        }
        aVar.b().a((Integer) 2);
        try {
            com.mgtv.downloader.database.d.a(this.g).a().update(a(aVar.b()));
        } catch (Exception e2) {
            e2.printStackTrace();
            a(e2);
        }
        com.mgtv.downloader.util.c.a("[blockTask]videoID: " + aVar.b().a());
    }

    public int a(Context context, com.mgtv.downloader.util.b bVar) {
        com.mgtv.downloader.util.c.a("download sdk start init");
        int iDownloaderInitialize = 0;
        if (k) {
            com.mgtv.downloader.util.c.a("download sdk already init, return");
            return 0;
        }
        if (context != null && bVar != null && !TextUtils.isEmpty(bVar.d) && !TextUtils.isEmpty(bVar.c)) {
            MGP2pLoader.testLoadSo(context);
            this.g = context;
            a = bVar;
            c();
            com.mgtv.downloader.util.c.a("download dir manager init success");
            com.mgtv.downloader.util.c.a("download server config set finish");
            b = p.e();
            com.mgtv.downloader.util.c.a("download get network finish, status: " + b);
            com.mgtv.downloader.util.c.a(b);
            com.mgtv.downloader.util.c.a("download set network status finish");
            com.mgtv.downloader.util.c.a("interval time: " + (System.currentTimeMillis() - System.currentTimeMillis()));
            com.mgtv.downloader.util.c.a("mContext: " + this.g + ", r: false");
            com.mgtv.downloader.util.b bVar2 = a;
            int i2 = bVar2.i;
            if (i2 > 5) {
                i2 = 5;
            } else if (i2 < 1) {
                i2 = 1;
            }
            bVar2.i = i2;
            if (i && !DownloadHlsManager.getInstance().isInitHls()) {
                iDownloaderInitialize = DownloadHlsManager.getInstance().downloaderInitialize(this.g, j);
            }
            k = true;
            i();
            com.mgtv.downloader.util.c.a("downloader initialize success, ret: " + iDownloaderInitialize);
            return iDownloaderInitialize;
        }
        com.mgtv.downloader.util.c.a("downloader init failed, context is: " + context + ", initInfo: " + bVar);
        return -2;
    }

    public int c(int i2) {
        if (!k) {
            com.mgtv.downloader.util.c.a("[downloaderDeleteTask]download sdk not init, return");
            return -1;
        }
        com.mgtv.downloader.util.c.a("[downloaderDeleteTask]downloader taskID: " + i2 + ", delete task");
        synchronized (o) {
            for (com.mgtv.downloader.a.a aVar : o) {
                if (aVar != null && aVar.c() == i2) {
                    com.mgtv.downloader.util.c.a("[downloaderDeleteTask]Task is deleted, videoID: " + aVar.b().a());
                    try {
                        com.mgtv.downloader.database.d.a(this.g).a().delete(a(aVar.b()));
                    } catch (Exception e2) {
                        e2.printStackTrace();
                        a(e2);
                    }
                    a(aVar.b().r());
                    o.remove(aVar);
                    aVar.g();
                    a(Integer.valueOf(i2));
                    break;
                }
            }
        }
        return 0;
    }

    public synchronized int b(int i2) {
        if (!k) {
            com.mgtv.downloader.util.c.a("[downloaderPauseTask]download sdk not init, return");
            return -1;
        }
        com.mgtv.downloader.util.c.a("[downloaderPauseTask] downloader taskID: " + i2 + ", pause task");
        synchronized (o) {
            for (com.mgtv.downloader.a.a aVar : o) {
                if (aVar != null && aVar.c() == i2) {
                    if (10 == aVar.d()) {
                        if (aVar.b().f().intValue() == 3) {
                            com.mgtv.downloader.util.c.a("[downloaderPauseTask]task is already pause, videoID: " + aVar.b().a());
                            return 0;
                        }
                        aVar.i();
                        com.mgtv.downloader.util.c.a("[downloaderPauseTask] pause success, videoID: " + aVar.b().a());
                        try {
                            com.mgtv.downloader.database.d.a(this.g).a().update(a(aVar.b()));
                        } catch (Exception e2) {
                            e2.printStackTrace();
                            a(e2);
                        }
                        if (!f()) {
                            com.mgtv.downloader.util.c.a("start next Task failed");
                        }
                        return 0;
                    }
                    if (11 == aVar.d()) {
                        com.mgtv.downloader.util.c.a("offline play no need to pause");
                        return 0;
                    }
                }
            }
            return 0;
        }
    }

    private void f(int i2) {
        if (!k) {
            com.mgtv.downloader.util.c.a("[setmUserDownloadFlow]download sdk not init, return");
            return;
        }
        if (22 != i2) {
            if (23 == i2) {
                d = false;
                return;
            }
            return;
        }
        d = true;
        n.c("DownloadSDK_1.8.0", "[setmUserDownloadFlow]downloader setmUserDownloadFlow task all");
        synchronized (o) {
            try {
                for (com.mgtv.downloader.a.a aVar : o) {
                    if (aVar != null && 10 == aVar.d()) {
                        if (aVar.b().f().intValue() != 1 && aVar.b().f().intValue() != 4) {
                            if (aVar.b().f().intValue() != 4) {
                                if (g()) {
                                    if (!a(aVar)) {
                                        n.c("DownloadSDK_1.8.0", "[setmUserDownloadFlow]resume error, videoID: " + aVar.b().a());
                                    }
                                } else {
                                    aVar.h();
                                }
                                n.c("DownloadSDK_1.8.0", "[setmUserDownloadFlow]resume success, videoID: " + aVar.b().a());
                            }
                        } else {
                            n.c("DownloadSDK_1.8.0", "[setmUserDownloadFlow]task is already resume, videoID: " + aVar.b().a() + " taskID:" + aVar.c());
                        }
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:119:0x0401  */
    public int a(com.mgtv.downloader.database.c cVar, int i2, String str, com.mgtv.downloader.a.b bVar) {
        int i3 = -1;
        if (!k) {
            com.mgtv.downloader.util.c.a("[downloaderStartTask]download sdk not init, return");
            return -1;
        }
        if (cVar != null && bVar != null) {
            if (cVar.K() == null) {
                cVar.w("");
            }
            com.mgtv.downloader.util.c.a("[downloaderStartTask]start task, videoID: " + cVar.b() + ", definition: " + cVar.w() + ", mediaType: " + cVar.G() + ", taskType: " + i2 + ", exInfo: " + str);
            AnonymousClass1 anonymousClass1 = null;
            if (i2 != 10) {
                if (i2 != 11) {
                    return -1;
                }
                synchronized (o) {
                    try {
                        for (com.mgtv.downloader.a.a aVar : o) {
                            if (aVar != null) {
                                if (!i && 1 == aVar.b().n().intValue()) {
                                    if (!DownloadHlsManager.getInstance().isInitHls()) {
                                        com.mgtv.downloader.util.c.a("[downloaderStartTask]hls not init, but need init to play, ret: " + DownloadHlsManager.getInstance().downloaderInitialize(this.g, j));
                                    }
                                    i = true;
                                }
                                if (aVar.b().a() == cVar.b() && aVar.b().i() == cVar.w()) {
                                    if (aVar.d() == 10 && aVar.b().f().intValue() != 4) {
                                        com.mgtv.downloader.util.c.a("[downloaderStartTask]video is downloading, return, videoID: " + cVar.b() + ", definition: " + cVar.w() + ", status: " + aVar.b().f());
                                        return -1;
                                    }
                                    int iD = d(i2);
                                    aVar.b(i2);
                                    aVar.a(iD);
                                    aVar.a(str);
                                    aVar.a(a(cVar));
                                    aVar.a(new a(this, anonymousClass1));
                                    a(Integer.valueOf(iD), bVar);
                                    a(cVar.M(), Integer.valueOf(iD));
                                    if (aVar.a(false) < 0) {
                                        com.mgtv.downloader.util.c.a("[downloaderStartTask]start play Task failed, taskID: " + iD + ", videoID: " + cVar.b());
                                        return -1;
                                    }
                                    com.mgtv.downloader.util.c.a("[downloaderStartTask]start play old task success, videoID: " + cVar.b() + ", taskID: " + iD);
                                    return iD;
                                }
                            }
                        }
                        int iD2 = d(i2);
                        com.mgtv.downloader.a.a aVar2 = new com.mgtv.downloader.a.a(this.g, a(cVar), iD2, i2, str);
                        aVar2.a(new a(this, anonymousClass1));
                        a(Integer.valueOf(iD2), bVar);
                        a(cVar.M(), Integer.valueOf(iD2));
                        if (aVar2.a(false) < 0) {
                            com.mgtv.downloader.util.c.a("[downloaderStartTask]start play Task failed, taskID: " + iD2 + ", videoID: " + cVar.b());
                            return -1;
                        }
                        synchronized (o) {
                            try {
                                if (!o.contains(aVar2)) {
                                    o.add(aVar2);
                                }
                            } catch (Throwable th) {
                                throw th;
                            }
                        }
                        com.mgtv.downloader.util.c.a("[downloaderStartTask]start play task success, videoID: " + cVar.b() + ", taskID: " + iD2);
                        return iD2;
                    } catch (Throwable th2) {
                        throw th2;
                    }
                }
            }
            synchronized (o) {
                try {
                    for (com.mgtv.downloader.a.a aVar3 : o) {
                        if (aVar3 != null && aVar3.b().a().equals(cVar.b()) && aVar3.b().i() == cVar.w()) {
                            if (1 != aVar3.b().f().intValue() && 4 != aVar3.b().f().intValue()) {
                                int iC = aVar3.c();
                                aVar3.a(str);
                                aVar3.a(a(cVar));
                                aVar3.a(new a(this, anonymousClass1));
                                aVar3.b(i2);
                                a(Integer.valueOf(iC), bVar);
                                a(cVar.M, Integer.valueOf(iC));
                                if (d.a() >= 0) {
                                    aVar3.b().d(Integer.valueOf(d.a()));
                                }
                                bVar.a(-1, aVar3.b(), "");
                                com.mgtv.downloader.util.c.a("[downloaderStartTask]start download task use old task success, videoID: " + cVar.b() + ", taskID: " + iC);
                                return iC;
                            }
                            com.mgtv.downloader.util.c.a("[downloaderStartTask]downloading or complete, videoID: " + cVar.b() + ", taskID: -1, status: " + aVar3.b().f());
                            return aVar3.c();
                        }
                    }
                    String strP = cVar.P();
                    if (cVar.a() == null) {
                        cVar.d(Long.valueOf(System.currentTimeMillis()));
                        cVar.B("at");
                        try {
                            com.mgtv.downloader.database.d.a(this.g).a().insert(cVar);
                        } catch (SQLiteFullException e2) {
                            e2.printStackTrace();
                            a(e2);
                        } catch (Exception e3) {
                            e3.printStackTrace();
                            a(e3);
                        }
                    }
                    int iD3 = d(i2);
                    cVar.B(strP);
                    com.mgtv.downloader.a.a aVar4 = new com.mgtv.downloader.a.a(this.g, a(cVar), iD3, i2, str);
                    aVar4.a(new a(this, anonymousClass1));
                    a(Integer.valueOf(iD3), bVar);
                    a(cVar.M(), Integer.valueOf(iD3));
                    if (aVar4.b().e().longValue() <= 0) {
                        com.mgtv.downloader.util.c.a("[downloaderStartTask]start download Task, taskID: " + iD3 + ", exInfo: " + str);
                        if ("initDownloadList".equals(str) || aVar4.a(false) >= 0) {
                            i3 = iD3;
                        } else {
                            com.mgtv.downloader.util.c.a("[downloaderStartTask]start download Task failed, taskID: -1, videoID: " + cVar.b());
                        }
                    } else {
                        i3 = iD3;
                    }
                    if (g()) {
                        synchronized (o) {
                            o.add(0, aVar4);
                        }
                    } else {
                        synchronized (o) {
                            o.add(aVar4);
                        }
                    }
                    if (d.a() >= 0) {
                        aVar4.b().d(Integer.valueOf(d.a()));
                    }
                    bVar.a(i3, aVar4.b(), "");
                    com.mgtv.downloader.util.c.a("[downloaderStartTask]start download task success, videoID: " + cVar.b() + ", taskID: " + i3);
                    return i3;
                } catch (Throwable th3) {
                    throw th3;
                }
            }
        }
        com.mgtv.downloader.util.c.a("[downloaderStartTask]param is error, downloadDBInfo: " + cVar + ", listener: " + bVar);
        return -1;
    }

    public com.mgtv.downloader.a.b b(Integer num) {
        if (num.intValue() < 0 || !this.p.containsKey(num)) {
            return null;
        }
        return this.p.get(num);
    }

    public Integer b(String str) {
        if (!TextUtils.isEmpty(str) && this.q.containsKey(str)) {
            Log.d("DownloadSDK_1.8.0", this.q.get(str) + "");
            return this.q.get(str);
        }
        return -1;
    }

    private boolean a(com.mgtv.downloader.a.a aVar) {
        if (aVar == null || 10 != aVar.d()) {
            return false;
        }
        com.mgtv.downloader.util.c.a("[startTaskByForce] start task success, videoID: " + aVar.b().a() + ", taskID: " + aVar.c());
        com.mgtv.downloader.net.entity.a aVarB = aVar.b();
        if (aVarB.i.intValue() == 1 && aVar.c() >= 0) {
            com.mgtv.downloader.util.c.a("[startTaskByForce]activateDownload :status is downloading");
            return true;
        }
        if (!g()) {
            b(h());
        }
        if (aVar.a(true) < 0) {
            com.mgtv.downloader.util.c.a("[startTaskByForce]start old download Task failed, taskID: " + aVar.c() + ", videoID: " + aVarB.a());
            return false;
        }
        if (o.contains(aVar)) {
            o.remove(aVar);
        }
        o.add(0, aVar);
        return true;
    }

    public String a(int i2) {
        if (!k) {
            com.mgtv.downloader.util.c.a("[downloaderGetPlayUrl]download sdk not init, return");
            return "";
        }
        com.mgtv.downloader.util.c.a("get play url, taskID: " + i2);
        synchronized (o) {
            try {
                for (com.mgtv.downloader.a.a aVar : o) {
                    if (aVar != null && aVar.c() == i2) {
                        if (!i && 1 == aVar.e()) {
                            if (!DownloadHlsManager.getInstance().isInitHls()) {
                                com.mgtv.downloader.util.c.a("hls not init, but need init to play, ret: " + DownloadHlsManager.getInstance().downloaderInitialize(this.g, j));
                            }
                            i = true;
                        }
                        com.mgtv.downloader.util.c.a("play url: " + aVar.f());
                        return aVar.f();
                    }
                }
                return "";
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public synchronized int a(int i2, String str, boolean z) {
        if (!k) {
            com.mgtv.downloader.util.c.a("[downloaderResumeTask]download sdk not init, return");
            return -1;
        }
        com.mgtv.downloader.util.c.a("[downloaderResumeTask]downloader taskID: " + i2 + ", resume taskforce: " + z);
        synchronized (o) {
            for (com.mgtv.downloader.a.a aVar : o) {
                if (aVar != null && aVar.c() == i2 && 11 != aVar.d()) {
                    if (aVar.b().f().intValue() == 4) {
                        com.mgtv.downloader.util.c.a("[downloaderResumeTask]task is already resume, videoID: " + aVar.b().a() + " taskID:" + aVar.c());
                        return 0;
                    }
                    if (!TextUtils.isEmpty(str)) {
                        aVar.b().p(str);
                    }
                    if (z) {
                        if (!a(aVar)) {
                            com.mgtv.downloader.util.c.a("[downloaderResumeTask]resume error, videoID: " + aVar.b().a());
                        }
                    } else if (g()) {
                        if (!a(aVar)) {
                            com.mgtv.downloader.util.c.a("[downloaderResumeTask]resume error, videoID: " + aVar.b().a());
                        }
                    } else {
                        aVar.h();
                    }
                    try {
                        com.mgtv.downloader.database.d.a(this.g).a().update(a(aVar.b()));
                    } catch (Exception e2) {
                        e2.printStackTrace();
                        a(e2);
                    }
                    com.mgtv.downloader.util.c.a("[downloaderResumeTask]resume success, videoID: " + aVar.b().a());
                    break;
                }
            }
            return 0;
        }
    }

    public void a(int i2, String str) {
        if (!k) {
            com.mgtv.downloader.util.c.a("[downloaderPushEvent]download sdk not init, return");
            return;
        }
        if (7 != i2 && 14 != i2 && 8 != i2 && 13 != i2) {
            if (i) {
                DownloadHlsManager.getInstance().pushEvent(i2, str);
            }
            if (20 == i2) {
                if (!c.a()) {
                    c.a(true);
                }
                f();
                return;
            }
            if (21 == i2) {
                if (c.a()) {
                    c.a(false);
                    return;
                }
                return;
            }
            if (1 != i2 && 2 != i2 && i2 != 0) {
                if (22 == i2 || 23 == i2) {
                    f(i2);
                    return;
                }
                return;
            }
            b = i2;
            com.mgtv.downloader.util.c.a(i2);
            String str2 = "";
            if (1 == i2) {
                str2 = "wifi on";
            } else if (2 == i2) {
                str2 = "no network";
            } else if (i2 == 0) {
                str2 = "mobile";
            }
            com.mgtv.downloader.util.c.a("push network: " + str2 + ", eventMessage: " + str);
            synchronized (o) {
                try {
                    for (com.mgtv.downloader.a.a aVar : o) {
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
            return;
        }
        if (7 == i2 && 8 == e) {
            com.mgtv.downloader.util.c.a("app to back");
            e = i2;
            if (i) {
                DownloadHlsManager.getInstance().pushEvent(i2, str);
                return;
            }
            return;
        }
        if (14 == i2 && 13 == f) {
            com.mgtv.downloader.util.c.a("screen off");
            f = i2;
            if (i) {
                DownloadHlsManager.getInstance().pushEvent(i2, str);
                return;
            }
            return;
        }
        if (8 == i2 && d.g() && 7 == e) {
            com.mgtv.downloader.util.c.a("app to front");
            e = i2;
            if (i) {
                DownloadHlsManager.getInstance().pushEvent(i2, str);
                return;
            }
            return;
        }
        if (13 == i2 && d.f() && 14 == f) {
            com.mgtv.downloader.util.c.a("screen on");
            f = i2;
            if (i) {
                DownloadHlsManager.getInstance().pushEvent(i2, str);
            }
        }
    }

    public void a(Map<String, Object> map) {
        if (DownloadHlsManager.getInstance().isInitHls()) {
            DownloadHlsManager.getInstance().setUserData(map);
        }
        if (map.containsKey(DownloadFacadeEnum.USER_TRIAL_TIME)) {
            d.a(((Integer) map.get(DownloadFacadeEnum.USER_TRIAL_TIME)).intValue());
            com.mgtv.downloader.util.c.a("[setUserData] trialTime： " + d.a());
        }
    }

    private void a(Integer num, com.mgtv.downloader.a.b bVar) {
        if (num.intValue() < 0 || bVar == null || this.p.containsKey(num) || this.p.containsValue(bVar)) {
            return;
        }
        this.p.put(num, bVar);
    }

    public void a(Integer num) {
        if (num.intValue() < 0 || !this.p.containsKey(num)) {
            return;
        }
        this.p.remove(num);
    }

    private void a(String str, Integer num) {
        if (TextUtils.isEmpty(str) || num.intValue() < 0 || this.q.containsKey(str) || this.q.containsValue(num)) {
            return;
        }
        this.q.put(str, num);
    }

    public void a(String str) {
        if (TextUtils.isEmpty(str) || !this.q.containsKey(str)) {
            return;
        }
        this.q.remove(str);
    }

    public com.mgtv.downloader.net.entity.a a(com.mgtv.downloader.database.c cVar) {
        if (cVar == null) {
            return null;
        }
        if (this.s == null) {
            this.s = new com.mgtv.downloader.net.entity.a();
        }
        com.mgtv.downloader.net.entity.a aVar = this.s;
        aVar.a = cVar.a;
        aVar.b = cVar.b;
        aVar.c = cVar.c;
        aVar.d = cVar.d;
        aVar.e = cVar.e;
        aVar.f = cVar.f;
        aVar.g = cVar.g;
        aVar.h = cVar.h;
        aVar.i = cVar.i;
        aVar.j = cVar.j;
        aVar.k = cVar.k;
        aVar.m = cVar.l;
        aVar.n = cVar.m;
        aVar.o = cVar.n;
        aVar.p = cVar.o;
        aVar.q = cVar.p;
        aVar.r = cVar.q;
        aVar.s = cVar.r;
        aVar.t = cVar.s;
        aVar.u = cVar.t;
        aVar.v = cVar.u;
        aVar.w = cVar.v;
        aVar.x = cVar.w;
        aVar.y = cVar.x;
        aVar.z = cVar.y;
        aVar.A = cVar.z;
        aVar.B = cVar.A;
        aVar.C = cVar.B;
        String str = cVar.H;
        if (str == null) {
            str = "";
        }
        aVar.E = str;
        int i2 = cVar.G;
        if (i2 == null) {
            i2 = 0;
        }
        aVar.F = i2;
        com.mgtv.downloader.net.entity.a aVar2 = this.s;
        aVar2.D = cVar.K;
        aVar2.H = cVar.L;
        aVar2.l = cVar.W;
        aVar2.L = cVar.M;
        aVar2.K = cVar.N;
        aVar2.M = cVar.O;
        aVar2.N = cVar.P;
        aVar2.J = cVar.Q;
        aVar2.O = cVar.R;
        aVar2.P = cVar.S;
        aVar2.R = cVar.T;
        aVar2.S = cVar.U;
        aVar2.T = cVar.V;
        return aVar2;
    }

    public com.mgtv.downloader.database.c a(com.mgtv.downloader.net.entity.a aVar) {
        if (aVar == null) {
            return null;
        }
        if (this.t == null) {
            this.t = new com.mgtv.downloader.database.c();
        }
        Long l2 = aVar.a;
        if (l2 != null) {
            this.t.a = l2;
        }
        com.mgtv.downloader.database.c cVar = this.t;
        cVar.b = aVar.b;
        cVar.c = aVar.c;
        cVar.d = aVar.d;
        cVar.e = aVar.e;
        cVar.f = aVar.f;
        cVar.g = aVar.g;
        cVar.h = aVar.h;
        cVar.i = aVar.i;
        cVar.j = aVar.j;
        cVar.k = aVar.k;
        cVar.l = aVar.m;
        cVar.m = aVar.n;
        cVar.n = aVar.o;
        cVar.o = aVar.p;
        cVar.p = aVar.q;
        cVar.q = aVar.r;
        cVar.r = aVar.s;
        cVar.s = aVar.t;
        cVar.t = aVar.u;
        cVar.u = aVar.v;
        cVar.v = aVar.w;
        cVar.w = aVar.x;
        cVar.x = aVar.y;
        cVar.y = aVar.z;
        cVar.z = aVar.A;
        cVar.A = aVar.B;
        cVar.B = aVar.C;
        String str = aVar.E;
        if (str == null) {
            str = "";
        }
        cVar.H = str;
        int i2 = aVar.F;
        if (i2 == null) {
            i2 = 0;
        }
        cVar.G = i2;
        com.mgtv.downloader.database.c cVar2 = this.t;
        cVar2.K = aVar.D;
        cVar2.L = aVar.H;
        cVar2.W = aVar.l;
        cVar2.M = aVar.L;
        cVar2.N = aVar.K;
        cVar2.O = aVar.M;
        cVar2.P = "";
        cVar2.Q = aVar.J;
        cVar2.R = aVar.O;
        cVar2.S = aVar.P;
        cVar2.T = aVar.R;
        cVar2.U = aVar.S;
        cVar2.V = aVar.T;
        return cVar2;
    }

    public void a(Exception exc) {
        if (exc == null) {
            return;
        }
        com.hunantv.imgo.log.c.a.c.a("DownloadSDK_1.8.0", String.format("[Download-Exception] Message(%1$s)", exc.getMessage()));
    }
}
