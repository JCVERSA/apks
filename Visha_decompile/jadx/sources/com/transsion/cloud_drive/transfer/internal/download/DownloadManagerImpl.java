package com.transsion.cloud_drive.transfer.internal.download;

import com.transsion.cloud_drive.transfer.api.model.DownloadTaskInfo;
import com.transsion.cloud_drive.transfer.api.model.TransferStatus;
import com.transsion.cloud_drive.transfer.internal.TaskDispatcher;
import com.transsion.cloud_drive.transfer.internal.impl.database.DbProvider;
import com.transsion.cloud_drive.transfer.internal.impl.database.a;
import defpackage.ay2;
import defpackage.e74;
import defpackage.gea;
import defpackage.jfb;
import defpackage.ny2;
import defpackage.of7;
import defpackage.s03;
import defpackage.t5b;
import defpackage.y45;
import defpackage.zfb;

public final class DownloadManagerImpl implements s03 {
    public final ny2 a;
    public final ay2 b;
    public final t5b c;
    public final gea d;
    public final TaskDispatcher e;

    public DownloadManagerImpl(ny2 ny2Var) {
        y45.j(ny2Var, "config");
        this.a = ny2Var;
        this.b = new a(DbProvider.a.a());
        this.c = new t5b();
        gea geaVarG = ny2Var.g();
        this.d = geaVarG == null ? new jfb() : geaVarG;
        this.e = new TaskDispatcher("download", ny2Var.c(), false, 4, null);
    }

    @Override
    public void a(String str) {
        y45.j(str, "taskId");
        this.e.q(str);
    }

    @Override
    public void b(String str) {
        y45.j(str, "taskId");
        this.e.u(str, new e74() {
            @Override
            public Object invoke(Object obj) {
                invoke((DownloadExecuteTask) obj);
                return zfb.a;
            }

            public final void invoke(DownloadExecuteTask downloadExecuteTask) {
                y45.j(downloadExecuteTask, "it");
                downloadExecuteTask.C(TransferStatus.IDLE);
            }
        });
    }

    @Override
    public void c(DownloadTaskInfo downloadTaskInfo, of7 of7Var) {
        y45.j(downloadTaskInfo, "taskInfo");
        y45.j(of7Var, "listener");
        DownloadExecuteTask downloadExecuteTask = new DownloadExecuteTask(downloadTaskInfo);
        downloadExecuteTask.S(this.a, this.c, this.b);
        downloadExecuteTask.setListener(of7Var);
        this.e.m(downloadExecuteTask);
    }

    @Override
    public void cancel(String str) {
        y45.j(str, "taskId");
        this.e.s(str);
    }
}
