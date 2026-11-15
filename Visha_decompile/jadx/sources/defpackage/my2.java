package defpackage;

import com.transsion.cloud_drive.transfer.api.model.DownloadTaskInfo;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import java.util.concurrent.CountDownLatch;

public final class my2 implements wda {
    public final DownloadTaskInfo a;
    public final by2 b;
    public final hs4 c;
    public final CountDownLatch d;
    public final e74 e;
    public final String f;
    public boolean g;
    public final String h;

    public my2(DownloadTaskInfo downloadTaskInfo, by2 by2Var, hs4 hs4Var, CountDownLatch countDownLatch, e74 e74Var) {
        y45.j(downloadTaskInfo, "taskInfo");
        y45.j(by2Var, "chunkInfo");
        y45.j(hs4Var, "httpDownloadChannel");
        y45.j(countDownLatch, "latch");
        y45.j(e74Var, "progressChangeCallback");
        this.a = downloadTaskInfo;
        this.b = by2Var;
        this.c = hs4Var;
        this.d = countDownLatch;
        this.e = e74Var;
        this.f = "DownloadChunkTask";
        this.h = downloadTaskInfo.getTaskId() + StringUtils.PROCESS_POSTFIX_DELIMITER + by2Var.c();
    }

    public static final void c(my2 my2Var, long j) {
        y45.j(my2Var, "this$0");
        by2 by2Var = my2Var.b;
        by2Var.h(by2Var.d() + j);
        synchronized (my2Var.a) {
            DownloadTaskInfo downloadTaskInfo = my2Var.a;
            downloadTaskInfo.setTransferredSize(downloadTaskInfo.getTransferredSize() + j);
            zfb zfbVar = zfb.a;
        }
        my2Var.e.invoke(my2Var.b);
    }

    @Override
    public void a(boolean z) {
    }

    @Override
    public void clear() {
    }

    @Override
    public void execute() {
        try {
            try {
                try {
                    this.c.b(this.a.getUrl(), this.a.getTempFilePath(), this.b.e(), this.b.d(), this.b.b(), new is3() {
                        @Override
                        public final void a(long j) {
                            my2.c(this.a, j);
                        }
                    });
                    this.g = true;
                    oq5.a.a(this.f, "download chunk " + getId() + " completed");
                    this.d.countDown();
                } catch (Exception e) {
                    oq5.a.b(this.f, "download file chunk error:", e);
                    throw e;
                }
            } catch (InterruptedException e2) {
                oq5.a.b(this.f, "download file chunk cancel:" + getId());
                throw e2;
            }
        } catch (Throwable th) {
            this.d.countDown();
            throw th;
        }
    }

    @Override
    public String getId() {
        return this.h;
    }

    @Override
    public boolean isCompleted() {
        return this.g;
    }
}
