package com.transsion.player.shorttv.preload;

import android.app.Application;
import android.content.Context;
import android.net.Uri;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import android.util.Log;
import androidx.media3.exoplayer.offline.DownloadManager;
import androidx.media3.exoplayer.offline.DownloadRequest;
import androidx.media3.exoplayer.offline.DownloadService;
import androidx.media3.exoplayer.scheduler.Requirements;
import com.blankj.utilcode.util.Utils;
import com.cloud.tmc.kernel.utils.UrlUtils;
import com.transsion.player.exo.DemoDownloadService;
import java.util.concurrent.ConcurrentHashMap;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

public final class q {

    public static final q f46539a;

    private static final ConcurrentHashMap f46540b;

    private static final Lazy f46541c;

    private static final HandlerThread f46542d;

    private static final Handler f46543e;

    private static final long f46544f;

    private static final Function0 f46545g;

    private static final b f46546h;

    private static boolean f46547i;

    public static final class a extends Handler {
        a(Looper looper) {
            super(looper);
        }

        @Override
        public void dispatchMessage(Message msg) {
            Intrinsics.h(msg, "msg");
            try {
                super.dispatchMessage(msg);
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
    }

    public static final class b implements DownloadManager.d {
        b() {
        }

        @Override
        public void a(DownloadManager downloadManager, boolean z10) {
            Intrinsics.h(downloadManager, "downloadManager");
            Log.e("VideoPreloadUtil", "onWaitingForRequirementsChanged:");
        }

        @Override
        public void b(DownloadManager downloadManager, androidx.media3.exoplayer.offline.c download) {
            Intrinsics.h(downloadManager, "downloadManager");
            Intrinsics.h(download, "download");
            Log.e("VideoPreloadUtil", "onDownloadRemoved:");
        }

        @Override
        public void c(DownloadManager downloadManager, boolean z10) {
            Intrinsics.h(downloadManager, "downloadManager");
            Log.e("VideoPreloadUtil", "onDownloadsPausedChanged:");
        }

        @Override
        public void d(DownloadManager downloadManager) {
            Intrinsics.h(downloadManager, "downloadManager");
            Log.e("VideoPreloadUtil", "onIdle:");
            q.f46539a.B();
        }

        @Override
        public void e(DownloadManager downloadManager, Requirements requirements, int i10) {
            Intrinsics.h(downloadManager, "downloadManager");
            Intrinsics.h(requirements, "requirements");
            Log.e("VideoPreloadUtil", "onRequirementsStateChanged:");
        }

        @Override
        public void f(DownloadManager downloadManager, androidx.media3.exoplayer.offline.c download, Exception exc) {
            Intrinsics.h(downloadManager, "downloadManager");
            Intrinsics.h(download, "download");
            Log.e("VideoPreloadUtil", "onDownloadChanged:  download.requestId:" + download.f12101a.f12031id + "     bytesDownloaded:" + download.a() + "  contentLength:" + download.f12105e + "  percentDownloaded:" + download.b());
            com.transsion.player.shorttv.preload.a aVar = (com.transsion.player.shorttv.preload.a) q.f46540b.get(download.f12101a.f12031id);
            if (aVar != null) {
                aVar.h(download.a());
                aVar.g(download.f12105e);
                int i10 = download.f12102b;
                if (i10 == 2) {
                    long jB = aVar.b();
                    long jD = aVar.d();
                    if (1 <= jD && jD < jB) {
                        q qVar = q.f46539a;
                        String id2 = aVar.e().f12031id;
                        Intrinsics.g(id2, "id");
                        qVar.D(id2);
                    }
                } else if (i10 == 1 || i10 == 3) {
                    q qVar2 = q.f46539a;
                    String id3 = aVar.e().f12031id;
                    Intrinsics.g(id3, "id");
                    qVar2.x(id3);
                }
            }
            q.f46539a.A();
        }

        @Override
        public void g(DownloadManager downloadManager) {
            Intrinsics.h(downloadManager, "downloadManager");
        }
    }

    static {
        q qVar = new q();
        f46539a = qVar;
        f46540b = new ConcurrentHashMap();
        f46541c = LazyKt.b(new Function0() {
            @Override
            public final Object invoke() {
                return q.m();
            }
        });
        HandlerThread handlerThread = new HandlerThread("VideoPreloadUtil");
        f46542d = handlerThread;
        f46544f = 100L;
        f46545g = new Function0() {
            @Override
            public final Object invoke() {
                return q.F();
            }
        };
        b bVar = new b();
        f46546h = bVar;
        handlerThread.start();
        f46543e = new a(handlerThread.getLooper());
        in.a.h(qVar.o()).d(bVar);
    }

    private q() {
    }

    public final void A() {
        if (f46547i) {
            return;
        }
        f46547i = true;
        p();
    }

    public final void B() {
        f46547i = false;
        Handler handler = f46543e;
        final Function0 function0 = f46545g;
        handler.removeCallbacks(new Runnable() {
            @Override
            public final void run() {
                q.C(function0);
            }
        });
    }

    public static final void C(Function0 function0) {
        function0.invoke();
    }

    public static final void E(String str) {
        sn.e.d(sn.e.f72355a, "VideoPreloadUtil", "stopPreload   key:" + str, false, 4, null);
        DownloadService.z(f46539a.o(), DemoDownloadService.class, str, 10086, false);
    }

    public static final Unit F() {
        for (Object obj : in.a.h(f46539a.o()).e()) {
            Intrinsics.g(obj, "next(...)");
            androidx.media3.exoplayer.offline.c cVar = (androidx.media3.exoplayer.offline.c) obj;
            if (cVar.f12102b == 2) {
                String str = cVar.f12101a.f12031id;
                long jA = cVar.a();
                long j10 = cVar.f12105e;
                float fB = cVar.b();
                StringBuilder sb2 = new StringBuilder();
                sb2.append("progress 111:  download.requestId:");
                sb2.append(str);
                sb2.append("     bytesDownloaded:");
                sb2.append(jA);
                sb2.append("  contentLength:");
                sb2.append(j10);
                sb2.append("  percentDownloaded:");
                sb2.append(fB);
                com.transsion.player.shorttv.preload.a aVar = (com.transsion.player.shorttv.preload.a) f46540b.get(cVar.f12101a.f12031id);
                if (aVar != null) {
                    aVar.h(cVar.a());
                    aVar.g(cVar.f12105e);
                    long jB = aVar.b();
                    long jD = aVar.d();
                    if (1 <= jD && jD < jB) {
                        q qVar = f46539a;
                        String id2 = aVar.e().f12031id;
                        Intrinsics.g(id2, "id");
                        qVar.x(id2);
                    }
                }
            }
        }
        if (f46547i) {
            f46539a.p();
        }
        return Unit.f64096a;
    }

    public static final Application m() {
        return Utils.a();
    }

    private final Context o() {
        Object value = f46541c.getValue();
        Intrinsics.g(value, "getValue(...)");
        return (Context) value;
    }

    private final void p() {
        Handler handler = f46543e;
        final Function0 function0 = f46545g;
        handler.removeCallbacks(new Runnable() {
            @Override
            public final void run() {
                q.q(function0);
            }
        });
        handler.postDelayed(new Runnable() {
            @Override
            public final void run() {
                q.r(function0);
            }
        }, f46544f);
    }

    public static final void q(Function0 function0) {
        function0.invoke();
    }

    public static final void r(Function0 function0) {
        function0.invoke();
    }

    public static final void u(gn.e eVar) {
        q qVar = f46539a;
        qVar.s(qVar.n(eVar));
    }

    public static final void v(com.transsion.player.shorttv.preload.a aVar) {
        Log.e("VideoPreloadUtil", "preloadVideo id:" + aVar.c() + " downloadLength:" + aVar.b() + "  maxLength:" + aVar.d() + " contentLength:" + aVar.a());
        if (aVar.d() == -1 || aVar.b() < aVar.d()) {
            if (aVar.f()) {
                DownloadService.z(f46539a.o(), DemoDownloadService.class, aVar.c(), 0, false);
                Log.e("VideoPreloadUtil", "checkToStart restart  shortTVItem:" + aVar);
                return;
            }
            DownloadService.x(f46539a.o(), DemoDownloadService.class, aVar.e(), false);
            Log.e("VideoPreloadUtil", "checkToStart add    shortTVItem:" + aVar);
        }
    }

    public static final void y(String str) {
        sn.e.d(sn.e.f72355a, "VideoPreloadUtil", "removePreload   key:" + str, false, 4, null);
        DownloadService.y(f46539a.o(), DemoDownloadService.class, str, false);
    }

    public final void D(final String key) {
        Intrinsics.h(key, "key");
        z(new Runnable() {
            @Override
            public final void run() {
                q.E(key);
            }
        });
    }

    public final String G(String str) {
        int iO0 = str != null ? StringsKt.o0(str, UrlUtils.QUESTION_MARK, 0, false, 6, null) : -1;
        if (str != null && iO0 >= 0) {
            return sn.d.f72353a.a((String) StringsKt.S0(str, new String[]{UrlUtils.QUESTION_MARK}, false, 0, 6, null).get(0));
        }
        sn.d.a aVar = sn.d.f72353a;
        if (str == null) {
            str = "";
        }
        return aVar.a(str);
    }

    public final com.transsion.player.shorttv.preload.a n(gn.e shortTVItem) {
        DownloadRequest downloadRequest;
        Intrinsics.h(shortTVItem, "shortTVItem");
        ConcurrentHashMap concurrentHashMap = f46540b;
        com.transsion.player.shorttv.preload.a aVar = (com.transsion.player.shorttv.preload.a) concurrentHashMap.get(shortTVItem.f());
        if (aVar != null) {
            sn.e.b(sn.e.f72355a, "VideoPreloadUtil", "createDownloadRequest [from map]  shortTVItem:" + shortTVItem, false, 4, null);
            return aVar;
        }
        androidx.media3.exoplayer.offline.c cVarH = in.a.h(Utils.a()).f().h(shortTVItem.f());
        if (Intrinsics.c((cVarH == null || (downloadRequest = cVarH.f12101a) == null) ? null : downloadRequest.f12031id, shortTVItem.f())) {
            sn.e.b(sn.e.f72355a, "VideoPreloadUtil", "createDownloadRequest [from currentDownloads]   shortTVItem:" + shortTVItem, false, 4, null);
            String strF = shortTVItem.f();
            String strJ = shortTVItem.j();
            DownloadRequest request = cVarH.f12101a;
            Intrinsics.g(request, "request");
            return new com.transsion.player.shorttv.preload.a(strF, strJ, request, cVarH.f12105e, cVarH.a(), 307200L, true);
        }
        String strF2 = shortTVItem.f();
        String strJ2 = shortTVItem.j();
        DownloadRequest downloadRequestA = new DownloadRequest.b(strF2, Uri.parse(strJ2)).b(strF2).a();
        Intrinsics.g(downloadRequestA, "build(...)");
        com.transsion.player.shorttv.preload.a aVar2 = new com.transsion.player.shorttv.preload.a(strF2, strJ2, downloadRequestA, -1L, 0L, 307200L, false);
        concurrentHashMap.put(strF2, aVar2);
        sn.e.b(sn.e.f72355a, "VideoPreloadUtil", "createDownloadRequest [from new]  shortTVItem:" + shortTVItem, false, 4, null);
        return aVar2;
    }

    public final com.transsion.player.shorttv.preload.a s(final com.transsion.player.shorttv.preload.a shortTVDownloadBean) {
        Intrinsics.h(shortTVDownloadBean, "shortTVDownloadBean");
        z(new Runnable() {
            @Override
            public final void run() {
                q.v(shortTVDownloadBean);
            }
        });
        return shortTVDownloadBean;
    }

    public final void t(final gn.e shortTVItem) {
        Intrinsics.h(shortTVItem, "shortTVItem");
        z(new Runnable() {
            @Override
            public final void run() {
                q.u(shortTVItem);
            }
        });
    }

    public final com.transsion.player.shorttv.preload.a w(gn.e shortTVItem) {
        Intrinsics.h(shortTVItem, "shortTVItem");
        com.transsion.player.shorttv.preload.a aVarN = n(shortTVItem);
        s(aVarN);
        return aVarN;
    }

    public final void x(final String key) {
        Intrinsics.h(key, "key");
        f46540b.remove(key);
        z(new Runnable() {
            @Override
            public final void run() {
                q.y(key);
            }
        });
    }

    public final void z(Runnable runnable) {
        Intrinsics.h(runnable, "runnable");
        f46543e.post(runnable);
    }
}
