package com.transsnet.downloader.manager;

import com.blankj.utilcode.util.Utils;
import com.transsnet.downloader.callback.DownloadTaskStat;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.o0;
import kotlinx.coroutines.y0;

public final class DownloadStatusIconManager implements zw.b {

    public static final a f57244h = new a(null);

    private static final Lazy f57245i = LazyKt.b(new Function0() {
        @Override
        public final Object invoke() {
            return DownloadStatusIconManager.s();
        }
    });

    private int f57248c;

    private int f57249d;

    private int f57250e;

    private int f57251f;

    private final Lazy f57246a = LazyKt.b(new Function0() {
        @Override
        public final Object invoke() {
            return DownloadStatusIconManager.p();
        }
    });

    private final List f57247b = new ArrayList();

    private boolean f57252g = com.transsion.baselib.report.launch.b.f42221a.b().getBoolean("k_download_done_status", true);

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final DownloadStatusIconManager a() {
            return (DownloadStatusIconManager) DownloadStatusIconManager.f57245i.getValue();
        }

        private a() {
        }
    }

    public DownloadStatusIconManager() {
        q().x(this);
    }

    public static final g p() {
        return p.f57282a.a(Utils.a());
    }

    private final g q() {
        return (g) this.f57246a.getValue();
    }

    public static final DownloadStatusIconManager s() {
        return new DownloadStatusIconManager();
    }

    public final void t(int i10, int i11) {
        Iterator it = this.f57247b.iterator();
        while (it.hasNext()) {
            ((zw.e) it.next()).a(i10, i11);
        }
    }

    static void u(DownloadStatusIconManager downloadStatusIconManager, int i10, int i11, int i12, Object obj) {
        if ((i12 & 2) != 0) {
            i11 = -1;
        }
        downloadStatusIconManager.t(i10, i11);
    }

    @Override
    public void a(DownloadTaskStat downloadTaskStat) {
        Intrinsics.h(downloadTaskStat, "downloadTaskStat");
        kotlinx.coroutines.k.d(o0.a(y0.c()), null, null, new DownloadStatusIconManager$onChange$1(this, downloadTaskStat, null), 3, null);
    }

    public final void o(zw.e listener) {
        Intrinsics.h(listener, "listener");
        if (!this.f57247b.contains(listener)) {
            this.f57247b.add(listener);
        }
        q().D();
    }

    public final void r() {
        kotlinx.coroutines.k.d(o0.a(y0.c()), null, null, new DownloadStatusIconManager$initDownloadUnreadList$1(this, null), 3, null);
    }

    public final void v(zw.e listener) {
        Intrinsics.h(listener, "listener");
        this.f57247b.remove(listener);
    }

    public final void w(boolean z10) {
        com.transsion.baselib.report.launch.b.f42221a.b().putBoolean("k_download_done_status", z10);
        this.f57252g = z10;
    }
}
