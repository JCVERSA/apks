package com.wandoujia.download.rpc;

import android.content.Context;
import android.os.SystemClock;
import com.wandoujia.m3u8download.M3u8DownloadException;
import java.io.File;
import java.util.Map;
import o.cn3;
import o.gg4;
import o.hg4;
import o.kb0;
import o.wc1;
import o.z48;

public class i implements IBlockDownloadTask, k.a {
    public Context a;
    public g b;
    public IBlockDownloadTask.BlockStatus c = IBlockDownloadTask.BlockStatus.PENDING;
    public cn3 d;
    public long e;
    public hg4 f;
    public k g;
    public long h;
    public long i;
    public long j;

    public class a implements gg4 {
        public final g a;
        public final boolean b;

        public a(g gVar, boolean z) {
            this.a = gVar;
            this.b = z;
        }

        @Override
        public void a(String str) {
            i.n(i.this, SystemClock.uptimeMillis());
            i.r(i.this, IBlockDownloadTask.BlockStatus.RUNNING);
        }

        @Override
        public void b(String str, String str2) {
            if (!this.b) {
                i.p(i.this);
                return;
            }
            if (i.i(i.this) == null) {
                i.o(i.this, new k(i.this));
            }
            i.i(i.this).g(i.g(i.this).p());
            i.i(i.this).f(str2, this.a.c);
        }

        @Override
        public void c(String str) {
        }

        @Override
        public void d(String str, long j, long j2, long j3) {
            i.h(i.this).c(this.a.f, j2, null, (int) j, null, j3);
            i.j(i.this, j2);
            i.m(i.this, j);
            i.k(i.this, j3);
        }

        @Override
        public void e(String str, long j) {
            i.h(i.this).g(this.a.f, j);
        }

        @Override
        public void f(String str, M3u8DownloadException m3u8DownloadException) {
            m3u8DownloadException.printStackTrace();
            i iVar = i.this;
            i.r(iVar, i.q(iVar, m3u8DownloadException));
            kb0.a(this.a, m3u8DownloadException);
        }
    }

    public i(Context context, g gVar) {
        this.a = context;
        this.b = gVar;
    }

    public static hg4 g(i iVar) {
        return iVar.f;
    }

    public static cn3 h(i iVar) {
        return iVar.d;
    }

    public static k i(i iVar) {
        return iVar.g;
    }

    public static void j(i iVar, long j) {
        iVar.h = j;
    }

    public static void k(i iVar, long j) {
        iVar.j = j;
    }

    public static void m(i iVar, long j) {
        iVar.i = j;
    }

    public static void n(i iVar, long j) {
        iVar.e = j;
    }

    public static void o(i iVar, k kVar) {
        iVar.g = kVar;
    }

    public static void p(i iVar) {
        iVar.s();
    }

    public static IBlockDownloadTask.BlockStatus q(i iVar, M3u8DownloadException m3u8DownloadException) {
        return iVar.t(m3u8DownloadException);
    }

    public static void r(i iVar, IBlockDownloadTask.BlockStatus blockStatus) {
        iVar.u(blockStatus);
    }

    private void u(IBlockDownloadTask.BlockStatus blockStatus) {
        this.c = blockStatus;
        this.d.a(this, this.b.f, blockStatus);
        long jUptimeMillis = SystemClock.uptimeMillis();
        this.d.b(this.b.f, jUptimeMillis - this.e);
        this.e = jUptimeMillis;
    }

    private int v() {
        return 5;
    }

    @Override
    public void a(String str) {
        u(IBlockDownloadTask.BlockStatus.FILE_ERROR);
    }

    @Override
    public void b(float f) {
        hg4 hg4Var = this.f;
        if (hg4Var != null) {
            this.d.c(this.b.f, this.h + ((long) ((int) (hg4Var.o() * f))), null, (int) this.i, null, this.j);
        }
    }

    @Override
    public int c() {
        return 491;
    }

    @Override
    public void d(g gVar, cn3 cn3Var) {
        this.d = cn3Var;
        u(IBlockDownloadTask.BlockStatus.PENDING);
        boolean zC = wc1.c(gVar.b);
        if (this.f != null) {
            return;
        }
        hg4 hg4Var = new hg4(gVar.b, gVar.c);
        this.f = hg4Var;
        hg4Var.F(z48.r);
        this.f.E(v());
        this.f.D(!zC);
        this.f.G(new a(gVar, zC));
        this.f.H();
    }

    @Override
    public void e() {
        s();
        this.f.k();
    }

    @Override
    public void f(Map map) {
    }

    @Override
    public IBlockDownloadTask.BlockStatus getStatus() {
        return this.c;
    }

    @Override
    public int l() {
        return this.b.f;
    }

    public final void s() {
        File file = new File(this.b.c);
        if (!file.exists() || file.length() <= 0) {
            u(IBlockDownloadTask.BlockStatus.FILE_ERROR);
        } else {
            u(IBlockDownloadTask.BlockStatus.SUCCESS);
        }
    }

    @Override
    public void stop() {
        hg4 hg4Var = this.f;
        if (hg4Var != null) {
            hg4Var.I();
        }
    }

    public final IBlockDownloadTask.BlockStatus t(M3u8DownloadException m3u8DownloadException) {
        switch (m3u8DownloadException.getErrorCode()) {
            case 1:
                return IBlockDownloadTask.BlockStatus.FILE_NOT_FOUND;
            case 2:
                return IBlockDownloadTask.BlockStatus.FILE_ERROR;
            case 3:
                return IBlockDownloadTask.BlockStatus.URL_NULL_ERROR;
            case 4:
                return IBlockDownloadTask.BlockStatus.DOWNLOAD_SIZE_UNKNOWN;
            case 5:
                return IBlockDownloadTask.BlockStatus.FILE_ERROR;
            case 6:
                return IBlockDownloadTask.BlockStatus.FILE_ERROR;
            case 7:
                return IBlockDownloadTask.BlockStatus.CRC_VERIFY_ERROR;
            default:
                return IBlockDownloadTask.BlockStatus.UNKNOWN_ERROR;
        }
    }
}
