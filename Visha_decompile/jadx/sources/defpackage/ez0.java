package defpackage;

import android.content.Context;
import com.lzy.okgo.model.Progress;
import com.transsion.cloud_drive.transfer.api.model.DownloadTaskInfo;
import com.transsion.cloud_drive.transfer.common.ConflictResolution;
import com.transsion.cloudcore.cloudapi.model.CloudDownloadTaskInfo;
import com.transsion.cloudcore.cloudapi.model.TransferErrorCode;
import com.transsion.cloudcore.cloudapi.model.TransferErrorInfo;
import com.transsion.cloudcore.cloudapi.model.TransferTaskStatus;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.UUID;
import java.util.concurrent.ConcurrentHashMap;
import kotlin.jvm.internal.DefaultConstructorMarker;

public final class ez0 implements fu4 {
    public static final a h = new a(null);
    public static volatile ez0 i;
    public final Context a;
    public final s03 b;
    public final ConcurrentHashMap c;
    public final ConcurrentHashMap d;
    public final ConcurrentHashMap e;
    public int f;
    public boolean g;

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final ez0 a(Context context) {
            y45.j(context, "context");
            ez0 ez0Var = ez0.i;
            if (ez0Var == null) {
                synchronized (this) {
                    ez0Var = ez0.i;
                    if (ez0Var == null) {
                        Context applicationContext = context.getApplicationContext();
                        y45.i(applicationContext, "getApplicationContext(...)");
                        ez0Var = new ez0(applicationContext, null);
                        ez0.i = ez0Var;
                    }
                }
            }
            return ez0Var;
        }

        public a() {
        }
    }

    public static final class b implements of7 {
        public final CloudDownloadTaskInfo b;

        public b(CloudDownloadTaskInfo cloudDownloadTaskInfo) {
            this.b = cloudDownloadTaskInfo;
        }

        @Override
        public void a(String str, DownloadTaskInfo downloadTaskInfo) {
            y45.j(str, "sdkTaskId");
            y45.j(downloadTaskInfo, "sdkTaskInfo");
            this.b.setStatus(TransferTaskStatus.CANCELED);
            this.b.setUpdateTime(System.currentTimeMillis());
            ez0.this.x(this.b.getTaskId());
            ez0.this.d.remove(this.b.getTaskId());
        }

        @Override
        public void b(String str, DownloadTaskInfo downloadTaskInfo) {
            String fileName;
            y45.j(str, "sdkTaskId");
            y45.j(downloadTaskInfo, "sdkTaskInfo");
            this.b.setStatus(TransferTaskStatus.COMPLETED);
            this.b.setUpdateTime(System.currentTimeMillis());
            CloudDownloadTaskInfo cloudDownloadTaskInfo = this.b;
            DownloadTaskInfo downloadTaskInfo2 = (DownloadTaskInfo) ez0.this.d.get(str);
            if (downloadTaskInfo2 == null || (fileName = downloadTaskInfo2.getFileName()) == null) {
                fileName = "";
            }
            cloudDownloadTaskInfo.setFileName(fileName);
            ez0.this.y(this.b.getTaskId(), this.b);
            ez0.this.d.remove(this.b.getTaskId());
        }

        @Override
        public ConflictResolution c(String str, DownloadTaskInfo downloadTaskInfo) {
            y45.j(str, "taskId");
            y45.j(downloadTaskInfo, "sdkTaskInfo");
            return ConflictResolution.REPLACE;
        }

        @Override
        public void f(String str, DownloadTaskInfo downloadTaskInfo, r5b r5bVar) {
            y45.j(str, "taskId");
            y45.j(downloadTaskInfo, "sdkTaskInfo");
            y45.j(r5bVar, "errorInfo");
            this.b.setStatus(TransferTaskStatus.FAILED);
            this.b.setErrorInfo(new TransferErrorInfo(r5bVar.a(), r5bVar.b()));
            this.b.setUpdateTime(System.currentTimeMillis());
            ez0 ez0Var = ez0.this;
            String taskId = this.b.getTaskId();
            TransferErrorInfo errorInfo = this.b.getErrorInfo();
            y45.g(errorInfo);
            ez0Var.z(taskId, errorInfo);
            ez0.this.d.remove(this.b.getTaskId());
        }

        @Override
        public void h(String str, DownloadTaskInfo downloadTaskInfo) {
            y45.j(str, "sdkTaskId");
            y45.j(downloadTaskInfo, "sdkTaskInfo");
            this.b.setStatus(TransferTaskStatus.PAUSED);
            this.b.setUpdateTime(System.currentTimeMillis());
            ez0.this.A(this.b.getTaskId());
        }

        @Override
        public void e(String str, DownloadTaskInfo downloadTaskInfo, long j, long j2) {
            y45.j(str, "sdkTaskId");
            y45.j(downloadTaskInfo, "sdkTaskInfo");
            this.b.setCurrentBytes(j);
            this.b.setFileSize(j2);
            this.b.setUpdateTime(System.currentTimeMillis());
            ez0.this.B(this.b.getTaskId(), j, j2);
        }

        @Override
        public boolean d(String str, DownloadTaskInfo downloadTaskInfo, Throwable th) {
            y45.j(str, "taskId");
            y45.j(downloadTaskInfo, "sdkTaskInfo");
            return false;
        }

        @Override
        public void g(String str, DownloadTaskInfo downloadTaskInfo) {
            y45.j(str, "sdkTaskId");
            y45.j(downloadTaskInfo, "taskInfo");
            ez0.this.C(downloadTaskInfo.getTaskId());
        }
    }

    public ez0(Context context, DefaultConstructorMarker defaultConstructorMarker) {
        this(context);
    }

    public final void A(String str) {
        List list = (List) this.e.get(str);
        if (list != null) {
            Iterator it = list.iterator();
            while (it.hasNext()) {
                ((b41) it.next()).c(str);
            }
        }
    }

    public final void B(String str, long j, long j2) {
        List list = (List) this.e.get(str);
        if (list != null) {
            Iterator it = list.iterator();
            while (it.hasNext()) {
                ((b41) it.next()).d(str, j, j2);
            }
        }
    }

    public final void C(String str) {
        List list = (List) this.e.get(str);
        if (list != null) {
            Iterator it = list.iterator();
            while (it.hasNext()) {
                ((b41) it.next()).f(str);
            }
        }
    }

    @Override
    public String f(CloudDownloadTaskInfo cloudDownloadTaskInfo, b41 b41Var) {
        y45.j(cloudDownloadTaskInfo, "taskInfo");
        String taskId = cloudDownloadTaskInfo.getTaskId();
        if (b41Var != null) {
            s(taskId, b41Var);
        }
        of7 of7VarT = t(cloudDownloadTaskInfo);
        try {
            DownloadTaskInfo downloadTaskInfo = new DownloadTaskInfo(cloudDownloadTaskInfo.getTaskId(), cloudDownloadTaskInfo.getFileId(), cloudDownloadTaskInfo.getFileName(), cloudDownloadTaskInfo.getSavePath());
            this.b.c(downloadTaskInfo, of7VarT);
            cloudDownloadTaskInfo.setStatus(TransferTaskStatus.RUNNING);
            cloudDownloadTaskInfo.setUpdateTime(System.currentTimeMillis());
            this.d.put(taskId, downloadTaskInfo);
            return taskId;
        } catch (Exception e) {
            cloudDownloadTaskInfo.setStatus(TransferTaskStatus.FAILED);
            TransferErrorCode transferErrorCode = TransferErrorCode.UNKNOWN;
            int code = transferErrorCode.getCode();
            String message = e.getMessage();
            if (message == null) {
                message = transferErrorCode.getMessage();
            }
            cloudDownloadTaskInfo.setErrorInfo(new TransferErrorInfo(code, message));
            cloudDownloadTaskInfo.setUpdateTime(System.currentTimeMillis());
            TransferErrorInfo errorInfo = cloudDownloadTaskInfo.getErrorInfo();
            y45.g(errorInfo);
            z(taskId, errorInfo);
            return taskId;
        }
    }

    @Override
    public boolean a(String str) {
        y45.j(str, "taskId");
        CloudDownloadTaskInfo cloudDownloadTaskInfo = (CloudDownloadTaskInfo) this.c.get(str);
        if (cloudDownloadTaskInfo == null) {
            return false;
        }
        try {
            this.b.a(cloudDownloadTaskInfo.getTaskId());
            cloudDownloadTaskInfo.setStatus(TransferTaskStatus.PAUSED);
            cloudDownloadTaskInfo.setUpdateTime(System.currentTimeMillis());
            return true;
        } catch (Exception unused) {
            return false;
        }
    }

    @Override
    public boolean c(String str, b41 b41Var) {
        y45.j(str, "taskId");
        CloudDownloadTaskInfo cloudDownloadTaskInfo = (CloudDownloadTaskInfo) this.c.get(str);
        if (cloudDownloadTaskInfo == null) {
            return false;
        }
        String taskId = cloudDownloadTaskInfo.getTaskId();
        if (b41Var != null) {
            s(str, b41Var);
        }
        try {
            this.b.b(taskId);
            cloudDownloadTaskInfo.setStatus(TransferTaskStatus.RUNNING);
            cloudDownloadTaskInfo.setUpdateTime(System.currentTimeMillis());
            C(str);
            return true;
        } catch (Exception unused) {
            return false;
        }
    }

    @Override
    public boolean cancel(String str) {
        y45.j(str, "taskId");
        CloudDownloadTaskInfo cloudDownloadTaskInfo = (CloudDownloadTaskInfo) this.c.get(str);
        if (cloudDownloadTaskInfo == null) {
            return false;
        }
        String taskId = cloudDownloadTaskInfo.getTaskId();
        TransferTaskStatus status = cloudDownloadTaskInfo.getStatus();
        TransferTaskStatus transferTaskStatus = TransferTaskStatus.CANCELED;
        if (status == transferTaskStatus || cloudDownloadTaskInfo.getStatus() == TransferTaskStatus.COMPLETED) {
            return true;
        }
        try {
            this.b.cancel(taskId);
            cloudDownloadTaskInfo.setStatus(transferTaskStatus);
            cloudDownloadTaskInfo.setUpdateTime(System.currentTimeMillis());
            this.d.remove(str);
            return true;
        } catch (Exception unused) {
            return false;
        }
    }

    @Override
    public CloudDownloadTaskInfo h(String str, String str2, String str3, String str4, b41 b41Var) {
        y45.j(str, "fileId");
        y45.j(str2, Progress.FILE_NAME);
        y45.j(str3, "savePath");
        CloudDownloadTaskInfo cloudDownloadTaskInfoW = w(str, str3, str2, str4);
        this.c.put(cloudDownloadTaskInfoW.getTaskId(), cloudDownloadTaskInfoW);
        return cloudDownloadTaskInfoW;
    }

    @Override
    public void i(String str, b41 b41Var) {
        y45.j(str, "taskId");
        y45.j(b41Var, "listener");
        List list = (List) this.e.get(str);
        if (list != null) {
            list.remove(b41Var);
        }
    }

    public void s(String str, b41 b41Var) {
        Object objPutIfAbsent;
        y45.j(str, "taskId");
        y45.j(b41Var, "listener");
        ConcurrentHashMap concurrentHashMap = this.e;
        Object arrayList = concurrentHashMap.get(str);
        if (arrayList == null && (objPutIfAbsent = concurrentHashMap.putIfAbsent(str, (arrayList = new ArrayList()))) != null) {
            arrayList = objPutIfAbsent;
        }
        List list = (List) arrayList;
        if (list.contains(b41Var)) {
            return;
        }
        list.add(b41Var);
    }

    public final of7 t(CloudDownloadTaskInfo cloudDownloadTaskInfo) {
        return new b(cloudDownloadTaskInfo);
    }

    public final String u() {
        String string = UUID.randomUUID().toString();
        y45.i(string, "toString(...)");
        return g1a.N(string, "-", "", false, 4, null);
    }

    @Override
    public CloudDownloadTaskInfo e(String str) {
        y45.j(str, "taskId");
        return (CloudDownloadTaskInfo) this.c.get(str);
    }

    public final CloudDownloadTaskInfo w(String str, String str2, String str3, String str4) {
        return new CloudDownloadTaskInfo(str4 == null ? u() : str4, str3, 0L, str, str2, this.g, "", TransferTaskStatus.WAITING, 0L, System.currentTimeMillis(), System.currentTimeMillis(), null);
    }

    public final void x(String str) {
        List list = (List) this.e.get(str);
        if (list != null) {
            Iterator it = list.iterator();
            while (it.hasNext()) {
                ((b41) it.next()).b(str);
            }
        }
    }

    public final void y(String str, CloudDownloadTaskInfo cloudDownloadTaskInfo) {
        List list = (List) this.e.get(str);
        if (list != null) {
            Iterator it = list.iterator();
            while (it.hasNext()) {
                ((b41) it.next()).a(str, cloudDownloadTaskInfo);
            }
        }
    }

    public final void z(String str, TransferErrorInfo transferErrorInfo) {
        List list = (List) this.e.get(str);
        if (list != null) {
            Iterator it = list.iterator();
            while (it.hasNext()) {
                ((b41) it.next()).e(str, transferErrorInfo);
            }
        }
    }

    public ez0(Context context) {
        this.a = context;
        this.b = com.transsion.cloudcore.cloudapi.impl.a.a.d().b();
        this.c = new ConcurrentHashMap();
        this.d = new ConcurrentHashMap();
        this.e = new ConcurrentHashMap();
        this.f = 3;
        this.g = true;
    }
}
