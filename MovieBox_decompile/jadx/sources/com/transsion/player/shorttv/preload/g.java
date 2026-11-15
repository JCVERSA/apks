package com.transsion.player.shorttv.preload;

import android.content.Context;
import android.util.Log;
import androidx.media3.exoplayer.offline.DownloadManager;
import androidx.media3.exoplayer.scheduler.Requirements;
import java.util.List;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.CopyOnWriteArrayList;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt;

public final class g {

    public static final a f46524g = new a(null);

    private final Context f46525a;

    private final List f46526b;

    private int f46527c;

    private String f46528d;

    private final b f46529e;

    private final ConcurrentHashMap f46530f;

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    public static final class b implements DownloadManager.d {
        b() {
        }

        @Override
        public void a(DownloadManager downloadManager, boolean z10) {
            Intrinsics.h(downloadManager, "downloadManager");
        }

        @Override
        public void b(DownloadManager downloadManager, androidx.media3.exoplayer.offline.c download) {
            Intrinsics.h(downloadManager, "downloadManager");
            Intrinsics.h(download, "download");
        }

        @Override
        public void c(DownloadManager downloadManager, boolean z10) {
            Intrinsics.h(downloadManager, "downloadManager");
        }

        @Override
        public void d(DownloadManager downloadManager) {
            Intrinsics.h(downloadManager, "downloadManager");
            Log.e("VideoPreloadHelper", "onIdle:");
            g.this.m();
        }

        @Override
        public void e(DownloadManager downloadManager, Requirements requirements, int i10) {
            Intrinsics.h(downloadManager, "downloadManager");
            Intrinsics.h(requirements, "requirements");
        }

        @Override
        public void f(DownloadManager downloadManager, androidx.media3.exoplayer.offline.c download, Exception exc) {
            Intrinsics.h(downloadManager, "downloadManager");
            Intrinsics.h(download, "download");
            Log.e("VideoPreloadHelper", "onDownloadChanged:  download.requestId:" + download.f12101a.f12031id + "     bytesDownloaded:" + download.a() + "  contentLength:" + download.f12105e + "  percentDownloaded:" + download.b());
            com.transsion.player.shorttv.preload.a aVar = (com.transsion.player.shorttv.preload.a) g.this.f46530f.get(download.f12101a.f12031id);
            if (aVar != null) {
                aVar.h(download.a());
                aVar.g(download.f12105e);
            }
            if (Intrinsics.c(download.f12101a.f12031id, g.this.f46528d)) {
                int i10 = download.f12102b;
                if (i10 == 1 || i10 == 3 || i10 == 4) {
                    g.this.f46528d = null;
                    g.this.m();
                }
            }
        }

        @Override
        public void g(DownloadManager downloadManager) {
            Intrinsics.h(downloadManager, "downloadManager");
        }
    }

    public g(Context context) {
        Intrinsics.h(context, "context");
        this.f46525a = context;
        this.f46526b = new CopyOnWriteArrayList();
        b bVar = new b();
        this.f46529e = bVar;
        this.f46530f = new ConcurrentHashMap();
        in.a.h(context).d(bVar);
    }

    private final void i(int i10) {
        gn.e eVar;
        if (i10 < 0 || i10 >= this.f46526b.size() || (eVar = (gn.e) this.f46526b.get(i10)) == null) {
            return;
        }
        Log.e("VideoPreloadHelper", "checkToPause   position:" + i10 + "  shortTVItem:" + eVar);
        q.f46539a.D(eVar.f());
    }

    private final void j(int i10) {
        final gn.e eVar;
        if (i10 < 0 || i10 >= this.f46526b.size() || (eVar = (gn.e) this.f46526b.get(i10)) == null) {
            return;
        }
        q.f46539a.z(new Runnable() {
            @Override
            public final void run() {
                g.k(eVar, this);
            }
        });
    }

    public static final void k(gn.e eVar, g gVar) {
        gVar.f46530f.put(eVar.f(), q.f46539a.w(eVar));
    }

    private final com.transsion.player.shorttv.preload.a l(int i10, gn.e eVar) {
        com.transsion.player.shorttv.preload.a aVar = (com.transsion.player.shorttv.preload.a) this.f46530f.get(eVar.f());
        if (aVar != null) {
            Log.e("VideoPreloadHelper", "createDownloadRequest [from map] position:" + i10 + "  shortTVItem:" + eVar);
            return aVar;
        }
        String strF = eVar.f();
        com.transsion.player.shorttv.preload.a aVarN = q.f46539a.n(eVar);
        this.f46530f.put(strF, aVarN);
        Log.e("VideoPreloadHelper", "createDownloadRequest [from new] position:" + i10 + "  shortTVItem:" + eVar);
        return aVarN;
    }

    public static final void n(g gVar, int i10) {
        int size = gVar.f46526b.size();
        Log.e("VideoPreloadHelper", "loadNext， position:" + i10 + "   size:" + size);
        int iH = RangesKt.h(i10 + 6, size);
        for (int i11 = i10 + 1; i11 < iH; i11++) {
            gn.e eVar = (gn.e) gVar.f46526b.get(i11);
            if (eVar != null) {
                com.transsion.player.shorttv.preload.a aVarL = gVar.l(i11, eVar);
                aVarL.i(307200L);
                if (aVarL.b() < aVarL.d()) {
                    Log.e("VideoPreloadHelper", "非当前选中  下载大小 downloadLength:" + aVarL.b() + "  index:" + i11);
                    gVar.f46528d = aVarL.c();
                    q.f46539a.s(aVarL);
                    return;
                }
                aVarL.b();
                aVarL.a();
                Log.e("VideoPreloadHelper", "非当前选中  下载大小 downloadLength:" + aVarL.b() + " 大于最小下载，跳过 index:" + i11);
            }
        }
        Log.e("VideoPreloadHelper", "不用全量下载");
    }

    public final void f(int i10, gn.e mediaSource) {
        Intrinsics.h(mediaSource, "mediaSource");
        if (i10 <= this.f46526b.size()) {
            this.f46526b.add(i10, mediaSource);
        }
        m();
    }

    public final void g(gn.e mediaSource) {
        Intrinsics.h(mediaSource, "mediaSource");
        this.f46526b.add(mediaSource);
        m();
    }

    public final void h(int i10) {
        Log.e("VideoPreloadHelper", "changeSelect  position:" + i10);
        if (this.f46527c == i10) {
            return;
        }
        this.f46528d = null;
        this.f46527c = i10;
        i(i10);
        j(this.f46527c + 1);
    }

    public final void m() {
        final int i10 = this.f46527c;
        if (i10 >= 0 && this.f46528d == null) {
            q.f46539a.z(new Runnable() {
                @Override
                public final void run() {
                    g.n(this.f46520a, i10);
                }
            });
        }
    }

    public final void o() {
        i(this.f46527c);
        this.f46527c = -1;
    }

    public final void p() {
        in.a.h(this.f46525a).w(this.f46529e);
        o();
    }

    public final void q(String key) {
        Intrinsics.h(key, "key");
        this.f46530f.remove(key);
        q.f46539a.x(key);
    }
}
