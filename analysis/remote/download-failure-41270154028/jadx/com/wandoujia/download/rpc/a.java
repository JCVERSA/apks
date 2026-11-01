package com.wandoujia.download.rpc;

import android.content.Context;
import android.os.SystemClock;
import com.snaptube.extractor.pluginlib.models.Format;
import com.snaptube.util.ProductionEnv;
import com.vungle.ads.internal.ui.AdActivity;
import com.wandoujia.mtdownload.dashmpd.download.DashMpdException;
import java.io.File;
import java.util.Map;
import java.util.concurrent.ExecutorService;
import o.cn3;
import o.kb0;
import o.or3;
import o.pg1;
import o.sc1;
import o.z48;

public final class a implements IBlockDownloadTask {
    public static final C0495a g = new C0495a(null);
    public final Context a;
    public final g b;
    public IBlockDownloadTask.BlockStatus c;
    public cn3 d;
    public long e;
    public com.wandoujia.mtdownload.dashmpd.download.a f;

    public static final class C0495a {
        public C0495a() {
        }

        public C0495a(pg1 pg1Var) {
            this();
        }
    }

    public static final class b implements sc1 {
        public final g b;

        public b(g gVar) {
            this.b = gVar;
        }

        @Override
        public void a(String str) {
            a.g(a.this, SystemClock.uptimeMillis());
            a.e(a.this, IBlockDownloadTask.BlockStatus.RUNNING);
        }

        @Override
        public void c(String str) {
        }

        @Override
        public void d(String str, long j, long j2, long j3) {
            ProductionEnv.d("DashMpdBlockDownloadTask", "onProgress length = " + j + " downloadLength = " + j2 + " downloadSegmentLength = " + j3);
            cn3 cn3VarB = a.b(a.this);
            if (cn3VarB != null) {
                cn3VarB.c(this.b.f, j2, null, (int) j, null, j3);
            }
        }

        @Override
        public void e(String str, DashMpdException dashMpdException) {
            or3.f(dashMpdException, "error");
            dashMpdException.printStackTrace();
            a aVar = a.this;
            a.e(aVar, a.a(aVar, dashMpdException));
            kb0.c(this.b, dashMpdException, null, null, 12, null);
        }

        @Override
        public void f(String str, int i) {
            cn3 cn3VarB = a.b(a.this);
            if (cn3VarB != null) {
                cn3VarB.g(this.b.f, i);
            }
        }

        @Override
        public void g(String str) {
            File file = new File(this.b.c);
            if (!file.exists() || file.length() <= 0) {
                a.e(a.this, IBlockDownloadTask.BlockStatus.FILE_ERROR);
            } else {
                a.e(a.this, IBlockDownloadTask.BlockStatus.SUCCESS);
            }
        }
    }

    public a(Context context, g gVar) {
        or3.f(context, "context");
        or3.f(gVar, AdActivity.REQUEST_KEY_EXTRA);
        this.a = context;
        this.b = gVar;
        this.c = IBlockDownloadTask.BlockStatus.PENDING;
    }

    public static final IBlockDownloadTask.BlockStatus a(a aVar, DashMpdException dashMpdException) {
        return aVar.h(dashMpdException);
    }

    public static final cn3 b(a aVar) {
        return aVar.d;
    }

    public static final void e(a aVar, IBlockDownloadTask.BlockStatus blockStatus) {
        aVar.i(blockStatus);
    }

    public static final void g(a aVar, long j) {
        aVar.e = j;
    }

    @Override
    public int c() {
        return 491;
    }

    @Override
    public void d(g gVar, cn3 cn3Var) {
        or3.f(gVar, AdActivity.REQUEST_KEY_EXTRA);
        or3.f(cn3Var, "blockListener");
        this.d = cn3Var;
        i(IBlockDownloadTask.BlockStatus.PENDING);
        if (this.f != null) {
            return;
        }
        Context context = this.a;
        String str = gVar.b;
        or3.e(str, Format.Fields.DOWNLOAD_URL);
        String str2 = gVar.c;
        or3.e(str2, "filePath");
        com.wandoujia.mtdownload.dashmpd.download.a aVar = new com.wandoujia.mtdownload.dashmpd.download.a(context, str, str2);
        this.f = aVar;
        ExecutorService executorService = z48.r;
        or3.e(executorService, "DOWN_LOAD_EXECUTOR");
        aVar.u(executorService);
        com.wandoujia.mtdownload.dashmpd.download.a aVar2 = this.f;
        if (aVar2 != null) {
            aVar2.t(j());
        }
        com.wandoujia.mtdownload.dashmpd.download.a aVar3 = this.f;
        if (aVar3 != null) {
            aVar3.s(new b(gVar));
        }
        com.wandoujia.mtdownload.dashmpd.download.a aVar4 = this.f;
        if (aVar4 != null) {
            aVar4.v();
        }
    }

    @Override
    public void f(Map map) {
        or3.f(map, Format.Fields.HEADERS);
    }

    @Override
    public IBlockDownloadTask.BlockStatus getStatus() {
        return this.c;
    }

    public final IBlockDownloadTask.BlockStatus h(DashMpdException dashMpdException) {
        switch (dashMpdException.getErrorNo()) {
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

    public final void i(IBlockDownloadTask.BlockStatus blockStatus) {
        this.c = blockStatus;
        cn3 cn3Var = this.d;
        if (cn3Var != null) {
            cn3Var.a(this, this.b.f, blockStatus);
        }
        long jUptimeMillis = SystemClock.uptimeMillis();
        cn3 cn3Var2 = this.d;
        if (cn3Var2 != null) {
            cn3Var2.b(this.b.f, jUptimeMillis - this.e);
        }
        this.e = jUptimeMillis;
    }

    public final int j() {
        return 5;
    }

    @Override
    public int l() {
        return this.b.f;
    }

    @Override
    public void stop() {
        com.wandoujia.mtdownload.dashmpd.download.a aVar = this.f;
        if (aVar != null) {
            aVar.w();
        }
    }
}
