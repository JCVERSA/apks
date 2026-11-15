package com.transsion.cloud_drive.transfer.internal.upload;

import android.util.Log;
import androidx.media3.extractor.text.ttml.TtmlNode;
import com.transsion.cloud_drive.transfer.api.model.TransferStatus;
import com.transsion.cloud_drive.transfer.api.model.UploadTaskInfo;
import com.transsion.cloud_drive.transfer.internal.TaskDispatcher;
import com.transsion.cloud_drive.transfer.internal.impl.database.DbProvider;
import com.transsion.cloud_drive.transfer.internal.impl.database.b;
import defpackage.e74;
import defpackage.gea;
import defpackage.jfb;
import defpackage.jhb;
import defpackage.mt4;
import defpackage.of7;
import defpackage.qhb;
import defpackage.thb;
import defpackage.vhb;
import defpackage.y45;
import defpackage.zfb;
import kotlin.jvm.internal.DefaultConstructorMarker;

public final class UploadManagerImpl implements qhb {
    public static final a e = new a(null);
    public final jhb a;
    public final thb b;
    public final gea c;
    public final TaskDispatcher d;

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public a() {
        }
    }

    public UploadManagerImpl(jhb jhbVar) {
        y45.j(jhbVar, "config");
        this.a = jhbVar;
        this.b = new b(DbProvider.a.a());
        gea geaVarF = jhbVar.f();
        this.c = geaVarF == null ? new jfb() : geaVarF;
        this.d = new TaskDispatcher("upload", jhbVar.c(), false, 4, null);
    }

    @Override
    public void a(String str) {
        y45.j(str, "taskId");
        Log.d("UploadManagerImpl", "pause");
        this.d.q(str);
    }

    @Override
    public void b(String str) {
        y45.j(str, "taskId");
        Log.d("UploadManagerImpl", "resume");
        this.d.u(str, new e74() {
            @Override
            public Object invoke(Object obj) {
                invoke((vhb) obj);
                return zfb.a;
            }

            public final void invoke(vhb vhbVar) {
                y45.j(vhbVar, "it");
                vhbVar.C(TransferStatus.IDLE);
            }
        });
    }

    @Override
    public void c(UploadTaskInfo uploadTaskInfo, of7 of7Var) {
        y45.j(uploadTaskInfo, "taskInfo");
        y45.j(of7Var, "listener");
        vhb vhbVar = new vhb(uploadTaskInfo);
        vhbVar.P(this.a, this.b, mt4.a);
        vhbVar.setListener(of7Var);
        Log.d("UploadManagerImpl", TtmlNode.START);
        this.d.m(vhbVar);
    }

    @Override
    public void cancel(String str) {
        y45.j(str, "taskId");
        Log.d("UploadManagerImpl", "cancel");
        this.d.s(str);
    }
}
