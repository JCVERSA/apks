package o;

import android.content.ContentValues;
import android.content.Context;
import android.os.Build;
import android.text.TextUtils;
import com.phoenix.download.DownloadInfo;
import com.phoenix.download.DownloadRequest;
import com.snaptube.extractor.pluginlib.utils.MediaUtil;
import com.snaptube.premium.app.PhoenixApplication;
import com.snaptube.premium.configs.Config;
import com.snaptube.premium.log.ReportPropertyBuilder;
import com.snaptube.taskManager.datasets.TaskInfo;
import com.snaptube.taskManager.provider.TaskInfoDBUtils;
import com.snaptube.taskManager.task.TaskError;
import com.snaptube.taskManager.task.TaskTrace;
import com.snaptube.util.ProductionEnv;
import java.io.File;
import java.nio.file.CopyOption;
import java.util.concurrent.Callable;

public abstract class du1 extends k08 {
    public long k;
    public long l;
    public boolean m;

    public class a implements l3 {
        public final String a;

        public a(String str) {
            this.a = str;
        }

        @Override
        public void call(Object obj) {
            du1.s0(du1.this, this.a);
        }
    }

    public class b implements l3 {
        public final String a;

        public b(String str) {
            this.a = str;
        }

        public void a(Throwable th) {
            ProductionEnv.throwExceptForDebugging(th);
            du1.s0(du1.this, this.a);
        }

        @Override
        public void call(Object obj) {
            a((Throwable) obj);
        }
    }

    public class c implements Callable {
        public c() {
        }

        public Void a() {
            String strI = du1.this.d.i();
            String strT0 = du1.t0(du1.this, strI);
            if (TextUtils.isEmpty(strT0) || !yj2.X(new File(strI), new File(strT0))) {
                return null;
            }
            try {
                u66.d().a(strT0, false);
                du1.u0(du1.this, strT0);
            } catch (Exception e) {
                yj2.s(strI);
                yj2.s(strT0);
                ProductionEnv.throwExceptForDebugging(e);
            }
            return null;
        }

        @Override
        public Object call() {
            return a();
        }
    }

    public class d implements l3 {
        public final StringBuilder a;
        public final File b;
        public final g c;
        public final TaskError d;

        public d(StringBuilder sb, File file, g gVar, TaskError taskError) {
            this.a = sb;
            this.b = file;
            this.c = gVar;
            this.d = taskError;
        }

        public void a(Boolean bool) {
            if (!bool.booleanValue()) {
                du1.this.x(this.d, this.a.toString());
                return;
            }
            StringBuilder sb = this.a;
            sb.append("dst size:");
            sb.append(this.b.length());
            g gVar = this.c;
            if (gVar != null) {
                gVar.onSuccess(this.a.toString());
            }
        }

        @Override
        public void call(Object obj) {
            a((Boolean) obj);
        }
    }

    public class e implements l3 {
        public final StringBuilder a;

        public e(StringBuilder sb) {
            this.a = sb;
        }

        public void a(Throwable th) {
            StringBuilder sb = this.a;
            sb.append("|error:");
            sb.append(th.toString());
            du1.this.M0(this.a.toString());
        }

        @Override
        public void call(Object obj) {
            a((Throwable) obj);
        }
    }

    public class f implements Callable {
        public final StringBuilder a;
        public final File b;
        public final File c;

        public f(StringBuilder sb, File file, File file2) {
            this.a = sb;
            this.b = file;
            this.c = file2;
        }

        public Boolean a() {
            this.a.append("[move]");
            if (Build.VERSION.SDK_INT < 26) {
                this.a.append("[copy]");
                return Boolean.valueOf(yj2.g(this.b, this.c));
            }
            try {
                gu1.a(eu1.a(this.b), eu1.a(this.c), new CopyOption[]{fu1.a()});
                return Boolean.TRUE;
            } catch (Exception e) {
                StringBuilder sb = this.a;
                sb.append("[e]");
                sb.append(e.getMessage());
                return Boolean.FALSE;
            }
        }

        @Override
        public Object call() {
            return a();
        }
    }

    public interface g {
        void onSuccess(String str);
    }

    public du1(Context context, TaskInfo taskInfo) {
        super(context, taskInfo);
    }

    public static void s0(du1 du1Var, String str) {
        du1Var.x0(str);
    }

    public static String t0(du1 du1Var, String str) {
        return du1Var.y0(str);
    }

    public static void u0(du1 du1Var, String str) {
        du1Var.J0(str);
    }

    public static void w0(DownloadInfo downloadInfo, String str) {
        if (downloadInfo == null) {
            ProductionEnv.debugLog("download-task", "downloadInfo is null. " + str);
            return;
        }
        ProductionEnv.debugLog("download-task", str + ", id=" + downloadInfo.getId() + ", identity=" + downloadInfo.h() + ", title=" + downloadInfo.getTitle() + ", path=" + downloadInfo.getFilePath());
    }

    public abstract File A0(int i);

    public abstract int B0();

    public void C0() {
        L0();
    }

    public void D0(File file, File file2, String str, TaskError taskError, g gVar) {
        StringBuilder sb = new StringBuilder();
        sb.append(str);
        sb.append(": [before]");
        sb.append(ca8.d(file, file2));
        if (!file.exists() && file2.exists() && file2.length() > 0) {
            sb.append("[exist]dst size:");
            sb.append(file2.length());
            M0(sb.toString());
        } else {
            if (!file.exists() || !file.renameTo(file2)) {
                rx.c.M(new f(sb, file, file2)).z0(ix6.d()).Y(sh.c()).u0(new d(sb, file2, gVar, taskError), new e(sb));
                return;
            }
            sb.append("[rename]dst size:");
            sb.append(file2.length());
            if (gVar != null) {
                gVar.onSuccess(sb.toString());
            }
        }
    }

    public void E0() {
        if (this.k <= 0) {
            return;
        }
        ReportPropertyBuilder reportPropertyBuilder = new ReportPropertyBuilder();
        reportPropertyBuilder.setEventName("Task").setAction("all_file_ok");
        k08.C(reportPropertyBuilder, this.d);
        O(reportPropertyBuilder);
        vq6.K().g(reportPropertyBuilder);
    }

    /* JADX WARN: Code duplicated, block: B:29:0x006c  */
    public void F0() {
        if (!a18.a(I())) {
            x(TaskError.NO_STORAGE_PERMISSION, "Fail to start task due to permission issue.");
            return;
        }
        TaskInfo taskInfo = this.d;
        if (taskInfo.i != TaskInfo.TaskStatus.RUNNING) {
            return;
        }
        if (TextUtils.isEmpty(taskInfo.i())) {
            x(TaskError.FILE_PATH_EMPTY, null);
            return;
        }
        this.l = 0L;
        int i = -1;
        long j = 0;
        for (int i2 = 0; i2 < B0(); i2++) {
            File fileA0 = A0(i2);
            DownloadRequest downloadRequestZ0 = z0(i2);
            if (fileA0.exists()) {
                this.l += v0(fileA0, downloadRequestZ0);
            } else if (i < 0) {
                i = i2;
            }
            if (this.i < 0) {
                if (j < 0 || downloadRequestZ0 == null) {
                    j = -1;
                } else {
                    long j2 = downloadRequestZ0.h;
                    if (j2 > 0) {
                        j += j2;
                    } else {
                        j = -1;
                    }
                }
            }
        }
        if (j > 0) {
            e0(j);
        }
        if (i < 0) {
            C0();
            return;
        }
        File fileA1 = A0(i);
        DownloadRequest downloadRequestZ1 = z0(i);
        if (this.d.u > 0) {
            if (qs1.A().O(this.d.u, fileA1.getAbsolutePath(), downloadRequestZ1.a, downloadRequestZ1.d)) {
                return;
            }
            qs1.A().q(this.d.u);
            this.d.u = -1L;
        }
        DownloadInfo downloadInfoY = qs1.A().y(downloadRequestZ1.c);
        if (downloadInfoY != null) {
            if (downloadInfoY.getStatus() == DownloadInfo.Status.CREATED || downloadInfoY.getStatus() == DownloadInfo.Status.PENDING) {
                qs1.A().q(downloadInfoY.getId());
            } else if ((downloadInfoY.getStatus() == DownloadInfo.Status.DOWNLOADING || downloadInfoY.getStatus() == DownloadInfo.Status.PAUSED) && this.d.u < 0) {
                qs1.A().q(downloadInfoY.getId());
            }
        }
        if (TextUtils.isEmpty(fileA1.getPath())) {
            String str = downloadRequestZ1.a;
            TaskError taskError = TaskError.FILE_PATH_EMPTY;
            TaskTrace.log(str, taskError.getDescription());
            x(taskError, null);
            return;
        }
        downloadRequestZ1.b(fileA1.getName());
        File parentFile = fileA1.getParentFile();
        if (parentFile == null) {
            String str2 = downloadRequestZ1.a;
            TaskError taskError2 = TaskError.FILE_PATH_EMPTY;
            TaskTrace.log(str2, taskError2.getDescription());
            x(taskError2, null);
            return;
        }
        downloadRequestZ1.c(parentFile.getAbsolutePath());
        StringBuilder sb = new StringBuilder();
        try {
            downloadInfoY = qs1.A().S(downloadRequestZ1);
        } catch (Throwable th) {
            sb.append(th.getMessage());
        }
        if (downloadInfoY == null) {
            TaskError taskError3 = TaskError.START_DOWNLOAD_REQUEST_FAILED;
            String description = taskError3.getDescription();
            w0(null, description);
            TaskTrace.log(downloadRequestZ1.a, description);
            if (com.phoenix.download.b.d(downloadRequestZ1.h)) {
                y(taskError3, description, sb.toString());
                return;
            }
            sb.append("; ");
            sb.append(ca8.f(downloadRequestZ1.h));
            y(TaskError.NO_ENOUGH_SPACE, description, sb.toString());
            return;
        }
        this.d.u = downloadInfoY.getId();
        if (this.d.u > 0) {
            w0(downloadInfoY, "Download started !");
            H0(this.d.u);
            return;
        }
        w0(downloadInfoY, "Invalid download info");
        String str3 = downloadRequestZ1.a;
        TaskError taskError4 = TaskError.INVALID_DOWNLOAD_INFO;
        TaskTrace.log(str3, taskError4.getDescription());
        x(taskError4, "Invalid download info");
    }

    public final boolean G0(long j) {
        this.m = true;
        if (Config.X2() && !this.d.G && j > 0) {
            String strD = cu1.d(j);
            if (!TextUtils.isEmpty(strD) && !this.d.i().startsWith(strD)) {
                String strB = cu1.b(strD, this.d.i());
                if (TextUtils.isEmpty(strB)) {
                    return false;
                }
                v();
                this.d.R(strB);
                j0(strB, true);
                boolean zY = Y();
                if (zY) {
                    rt1.j(this.d);
                }
                return zY;
            }
        }
        return false;
    }

    public final void H0(long j) {
        TaskInfo taskInfo = this.d;
        taskInfo.u = j;
        TaskInfoDBUtils.d1(taskInfo.a, j);
    }

    public final void I0() {
        ReportPropertyBuilder reportPropertyBuilder = new ReportPropertyBuilder();
        k08.C(reportPropertyBuilder, this.d);
        reportPropertyBuilder.setEventName("Task").setAction("task_start");
        O(reportPropertyBuilder);
        vq6.K().g(reportPropertyBuilder);
    }

    public final void J0(String str) {
        TaskInfo taskInfo = this.d;
        if (taskInfo.G) {
            taskInfo.M = this.d.M + ".spf";
        }
        TaskInfo taskInfo2 = this.d;
        String str2 = taskInfo2.l;
        if (str2 != null && str2.equals(taskInfo2.i())) {
            this.d.l = str;
        }
        this.d.R(str);
        ContentValues contentValues = new ContentValues();
        contentValues.put("filePath", str);
        contentValues.put("originPath", this.d.M);
        contentValues.put("thumbnailUrl", this.d.l);
        TaskInfoDBUtils.e1(this.d.a, contentValues, true);
    }

    public final void K0(DownloadInfo downloadInfo, boolean z) {
        boolean z2;
        if (this.d.i == TaskInfo.TaskStatus.RUNNING) {
            long jI = (z ? downloadInfo.i() : downloadInfo.e()) + this.l;
            long jI2 = this.i;
            if (jI2 <= 0) {
                jI2 = downloadInfo.i() + this.l;
            }
            long j = jI2;
            long jCurrentTimeMillis = System.currentTimeMillis();
            if (jCurrentTimeMillis - this.k >= 700 || jI >= j) {
                this.k = jCurrentTimeMillis;
                z2 = true;
            } else {
                z2 = false;
            }
            if (jI > 0) {
                TaskInfo taskInfo = this.d;
                if (taskInfo.c == 0 && taskInfo.e == 0) {
                    b0();
                }
            }
            l0(downloadInfo.c(), jI, j, z2);
            m0(downloadInfo.f("running_description"), z2);
        }
    }

    public void L0() {
        M0(null);
    }

    public void M0(String str) {
        if (this.d.B == TaskInfo.ContentType.AUDIO && Config.o4() && !MediaUtil.k(this.d.i())) {
            rx.c.M(new c()).z0(ix6.d()).Y(sh.c()).u0(new a(str), new b(str));
        } else {
            x0(str);
        }
    }

    @Override
    public void P() {
        super.P();
        if (this.d.u > 0) {
            qs1.A().q(this.d.u);
        }
    }

    @Override
    public void Q() {
        if (this.d.u > 0) {
            qs1.A().q(this.d.u);
        }
        super.Q();
    }

    @Override
    public void V(DownloadInfo downloadInfo) {
        super.V(downloadInfo);
        K0(downloadInfo, false);
    }

    @Override
    public void W(DownloadInfo downloadInfo) {
        int iD;
        if (downloadInfo.getStatus() == DownloadInfo.Status.SUCCESS) {
            K0(downloadInfo, true);
            this.d.u = -1L;
            F0();
            return;
        }
        File file = new File(downloadInfo.getFilePath());
        long jI = downloadInfo.i() - downloadInfo.e();
        boolean zE = com.phoenix.download.b.e(cu1.c(file), jI);
        CharSequence charSequenceB = downloadInfo.getStatus() == DownloadInfo.Status.DOWNLOADING ? "" : com.phoenix.download.b.b(downloadInfo, zE);
        if (charSequenceB != null) {
            m0(charSequenceB.toString(), true);
        }
        if (downloadInfo.getStatus() != DownloadInfo.Status.FAILED) {
            if (downloadInfo.d() == null || downloadInfo.d().d() != 3003) {
                return;
            }
            o0(TaskInfo.TaskStatus.PENDING);
            return;
        }
        StringBuilder sb = new StringBuilder();
        StringBuilder sb2 = new StringBuilder();
        if (downloadInfo.d() != null) {
            com.wandoujia.download.rpc.h hVarD = downloadInfo.d();
            iD = hVarD.d();
            sb2.append("status code is ");
            sb2.append(iD);
            if (486 == iD) {
                sb2.append(", filePath is ");
                sb2.append(hVarD.m);
                sb2.append(", uri is ");
                sb2.append(hVarD.b);
                sb2.append(", totalBytes is ");
                sb2.append(hVarD.f);
                if (!TextUtils.isEmpty(hVarD.m)) {
                    sb2.append(", filePath length is ");
                    sb2.append(new File(hVarD.m).length());
                }
            }
        } else {
            iD = 0;
        }
        sb.append(ca8.f(jI));
        sb.append(", ");
        sb.append(ca8.e(downloadInfo.getFilePath()));
        String string = sb.toString();
        if (zE) {
            z(TaskError.DOWNLOAD_FAILED, sb2.toString(), string, iD);
            return;
        }
        bu1.d();
        if (this.m || !G0(jI)) {
            z(TaskError.NO_ENOUGH_SPACE, sb2.toString(), string, iD);
            if (zr7.b(downloadInfo.d().d())) {
                zy8.e(PhoenixApplication.z());
            }
        }
    }

    @Override
    public void X() {
        super.X();
        if (this.d.u > 0) {
            qs1.A().J(this.d.u);
        }
    }

    @Override
    public void Z() {
        super.Z();
        if (this.d.g0 == 0) {
            I0();
        }
        TaskInfo taskInfo = this.d;
        int i = taskInfo.g0 + 1;
        taskInfo.g0 = i;
        TaskInfoDBUtils.k1(taskInfo.a, i);
        if (a18.a(I())) {
            return;
        }
        x(TaskError.NO_STORAGE_PERMISSION, "Fail to start task due to permission issue.");
    }

    @Override
    public boolean f0(DownloadInfo downloadInfo) {
        return this.d.u > 0 && downloadInfo.getId() == this.d.u;
    }

    public long v0(File file, DownloadRequest downloadRequest) {
        return wc1.d(downloadRequest.a) ? downloadRequest.h : file.length();
    }

    public final void x0(String str) {
        String strI = this.d.i();
        if (!MediaUtil.k(strI)) {
            A();
            return;
        }
        x(TaskError.INVALID_MEDIA_FILE, "|ext:" + yj2.C(strI) + "|size:" + new File(strI).length() + "|msg:" + str);
    }

    public final String y0(String str) {
        int iLastIndexOf = str.lastIndexOf(File.separatorChar);
        int iLastIndexOf2 = str.lastIndexOf(46);
        String strSubstring = (iLastIndexOf2 <= 0 || iLastIndexOf2 <= iLastIndexOf) ? str : str.substring(0, iLastIndexOf2);
        String strC = yj2.C(str);
        String str2 = TextUtils.isEmpty(strC) ? "" : "." + strC.toLowerCase();
        for (int i = 0; i < 9999; i++) {
            File file = new File(strSubstring + (i > 0 ? "_" + i : "") + str2 + ".spf");
            if (!file.exists() && TaskInfoDBUtils.y0(file.getPath()) == null) {
                return file.getPath();
            }
        }
        return null;
    }

    public abstract DownloadRequest z0(int i);
}
