package o;

import android.content.ContentValues;
import android.content.Context;
import android.os.Handler;
import android.os.SystemClock;
import com.phoenix.download.DownloadInfo;
import com.snaptube.ad.guardian.GuardianManager;
import com.snaptube.dataadapter.utils.TextUtils;
import com.snaptube.dataadapter.youtube.BaseYoutubeDataAdapter;
import com.snaptube.extractor.pluginlib.common.SiteExtractLog;
import com.snaptube.extractor.pluginlib.models.Format;
import com.snaptube.premium.app.PhoenixApplication;
import com.snaptube.premium.configs.Config;
import com.snaptube.premium.history.DownloadHistoryHelper;
import com.snaptube.premium.log.ReportPropertyBuilder;
import com.snaptube.premium.vault.LockManager;
import com.snaptube.taskManager.TaskMessageCenter;
import com.snaptube.taskManager.datasets.TaskInfo;
import com.snaptube.taskManager.provider.TaskInfoDBUtils;
import com.snaptube.taskManager.task.TaskError;
import com.snaptube.util.ProductionEnv;
import com.wandoujia.base.utils.MediaScanUtil;
import com.wandoujia.download.utils.StorageUtil;
import java.io.File;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.json.JSONException;

public abstract class k08 extends xu implements ka3 {
    public final Context b;
    public final Handler c;
    public TaskInfo d;
    public c e;
    public boolean f;
    public long g;
    public long h;
    public long i;
    public final is1 j;

    public class a implements is1 {
        public DownloadInfo a;
        public Runnable b = new RunnableC0554a();

        public class RunnableC0554a implements Runnable {
            public RunnableC0554a() {
            }

            @Override
            public void run() {
                a aVar = a.this;
                if (k08.this.f0(a.c(aVar))) {
                    a aVar2 = a.this;
                    k08.this.V(a.c(aVar2));
                }
            }
        }

        public class b implements Runnable {
            public final DownloadInfo a;

            public b(DownloadInfo downloadInfo) {
                this.a = downloadInfo;
            }

            @Override
            public void run() {
                if (k08.this.f0(this.a)) {
                    k08.this.W(this.a);
                }
            }
        }

        public a() {
        }

        public static DownloadInfo c(a aVar) {
            return aVar.a;
        }

        @Override
        public void a(DownloadInfo downloadInfo) {
            k08.this.c.post(new b(downloadInfo));
        }

        @Override
        public void b(DownloadInfo downloadInfo) {
            this.a = downloadInfo;
            k08.this.c.removeCallbacks(this.b);
            k08.this.c.post(this.b);
        }
    }

    public static class b {
        public static final int[] a;

        static {
            int[] iArr = new int[TaskInfo.TaskStatus.values().length];
            a = iArr;
            try {
                iArr[TaskInfo.TaskStatus.PAUSED.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                a[TaskInfo.TaskStatus.DELETED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                a[TaskInfo.TaskStatus.PENDING.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                a[TaskInfo.TaskStatus.RUNNING.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                a[TaskInfo.TaskStatus.FINISH.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                a[TaskInfo.TaskStatus.ERROR.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
        }
    }

    public class c extends TaskMessageCenter.d {
        public c(Handler handler) {
            super(handler);
        }

        @Override
        public void f(List list) {
            Iterator it2 = list.iterator();
            while (it2.hasNext()) {
                if (((Long) it2.next()).longValue() == k08.this.H()) {
                    k08.t(k08.this, TaskInfo.TaskStatus.DELETED);
                }
            }
        }

        @Override
        public void g(long j) {
        }

        @Override
        public void h(TaskInfo taskInfo) {
        }

        @Override
        public void i(TaskInfo taskInfo) {
            if (taskInfo.a == k08.this.H()) {
                k08.t(k08.this, taskInfo.i);
            }
        }

        @Override
        public void j(TaskInfo taskInfo) {
            if (taskInfo.a == k08.this.H()) {
                k08.this.d.x = taskInfo.x;
            }
        }
    }

    public k08(Context context, TaskInfo taskInfo) {
        Handler handler = new Handler(c18.d());
        this.c = handler;
        this.g = 0L;
        this.h = 0L;
        this.i = -1L;
        this.j = new a();
        this.b = context;
        this.d = taskInfo;
        this.e = new c(handler);
    }

    public static void C(ah3 ah3Var, TaskInfo taskInfo) {
        ah3Var.setProperty("is_private_content", Boolean.valueOf(Config.m().matches(taskInfo.p()))).setProperty("type", taskInfo.G ? "vault" : "normal").setProperty("category", taskInfo.e()).setProperty("content_id", null).setProperty("snap_list_id", null).setProperty("category", null).setProperty("editor", null).setProperty("position_source", taskInfo.V).setProperty("is_duplicate", Boolean.valueOf(taskInfo.r0)).setProperty("title", taskInfo.k).setProperty("scenes", taskInfo.s()).setProperty("content_url", taskInfo.p()).setProperty("file_type", D(taskInfo)).setProperty("elapsed", Long.valueOf(E(taskInfo))).setProperty("file_extension", yj2.C(taskInfo.i())).setProperty("video_duration", Long.valueOf(taskInfo.s)).setProperty(Format.Fields.QUALITY, jy2.l(taskInfo.p)).setProperty("format_tag", jy2.l(taskInfo.p)).setProperty("file_size", Long.valueOf(jy2.k(taskInfo.d))).setProperty("extract_duration", Long.valueOf(taskInfo.N)).setProperty("extract_count", Integer.valueOf(taskInfo.Q)).setProperty("extract_from", taskInfo.R).setProperty("from", taskInfo.V).setProperty("process_duration", Long.valueOf(taskInfo.P)).setProperty("download_duration", Long.valueOf(taskInfo.O)).setProperty("speed", Long.valueOf(u(taskInfo))).setProperty("fail_times", Integer.valueOf(taskInfo.C)).setProperty(GuardianManager.COUNT, Integer.valueOf(taskInfo.g0)).setProperty("is_snaptube_internal", Boolean.valueOf(taskInfo.F())).setProperty("arg3", taskInfo.Y).setProperty("file_plan_project", TaskInfoDBUtils.E(taskInfo)).setProperty("is_fast_download", Boolean.valueOf(taskInfo.e0)).setProperty("is_batch_download", Boolean.valueOf(taskInfo.f0)).setProperty("is_playlist_list_batch_download", Boolean.valueOf(taskInfo.c0)).setProperty("extra_info", taskInfo.r()).setProperty("external_download_type", jy2.g(taskInfo.f479o)).setProperty("ytb_content_type", kf9.j(taskInfo.p()) ? "shorts_video" : "non_shorts_video");
        if (taskInfo.B != TaskInfo.ContentType.SUBTITLE) {
            ah3Var.setProperty(SiteExtractLog.INFO_HOST, yj8.j(taskInfo.p()));
        }
        if (!TextUtils.isEmpty(taskInfo.l0)) {
            ah3Var.addAllProperties(taskInfo.l0);
        }
        if (!TextUtils.isEmpty(taskInfo.b0)) {
            ah3Var.setProperty("playlist_id", taskInfo.o()).setProperty("list_url", taskInfo.b0).setProperty(BaseYoutubeDataAdapter.YTB_PLAYLIST, taskInfo.a0);
        }
        if (kf9.q(taskInfo.p())) {
            ah3Var.setProperty("content_id", kf9.g(taskInfo.p()));
        }
        Map mapQ = taskInfo.q();
        if (mapQ != null) {
            for (Map.Entry entry : mapQ.entrySet()) {
                ah3Var.setProperty((String) entry.getKey(), entry.getValue());
            }
        }
    }

    public static String D(TaskInfo taskInfo) {
        TaskInfo.ContentType contentType = taskInfo.B;
        if (contentType == null) {
            contentType = TaskInfo.ContentType.UNKNOWN;
        }
        return contentType.name();
    }

    public static long E(TaskInfo taskInfo) {
        return (System.currentTimeMillis() / 1000) - taskInfo.m;
    }

    public static void r(k08 k08Var) {
        k08Var.L();
    }

    public static void s(k08 k08Var) {
        k08Var.K();
    }

    public static void t(k08 k08Var, TaskInfo.TaskStatus taskStatus) {
        k08Var.a0(taskStatus);
    }

    public static long u(TaskInfo taskInfo) {
        if (taskInfo == null) {
            return 0L;
        }
        long j = (taskInfo.O - taskInfo.P) - taskInfo.N;
        long j2 = j > 0 ? (taskInfo.d * 1000) / j : 0L;
        return jy2.j(j2 > 0 ? j2 : 0L);
    }

    public static void w(TaskInfo taskInfo) {
        if (taskInfo == null) {
            ProductionEnv.throwExceptForDebugging(new Throwable("cancel taskinfo is null"));
            return;
        }
        ReportPropertyBuilder reportPropertyBuilder = new ReportPropertyBuilder();
        C(reportPropertyBuilder, taskInfo);
        reportPropertyBuilder.setEventName("Task").setAction("cancel");
        if (taskInfo instanceof com.snaptube.taskManager.datasets.a) {
            reportPropertyBuilder.addAllProperties(taskInfo.y);
            reportPropertyBuilder.setProperty("guide_app_installed", Boolean.valueOf(ap3.j(PhoenixApplication.z(), ((com.snaptube.taskManager.datasets.a) taskInfo).getPackageName())));
        }
        vq6.K().g(reportPropertyBuilder);
    }

    public final void A() {
        List<File> listE;
        k0();
        DownloadHistoryHelper.o(this.d);
        TaskInfo taskInfo = this.d;
        if (!taskInfo.x && taskInfo.T) {
            taskInfo.x = true;
            TaskInfoDBUtils.x(taskInfo.a, true);
        }
        U();
        o0(TaskInfo.TaskStatus.FINISH);
        q0();
        TaskInfo taskInfo2 = this.d;
        if (taskInfo2.b == TaskInfo.TaskType.TASK_BT) {
            File file = new File(this.d.i());
            if (file.isDirectory() && (listE = xe3.e(file)) != null) {
                for (File file2 : listE) {
                    if (file2 != null && !file2.getAbsolutePath().contains(LockManager.a.G())) {
                        MediaScanUtil.e(this.b, file2.getAbsolutePath());
                    }
                }
            }
        } else if (!taskInfo2.G) {
            MediaScanUtil.e(this.b, taskInfo2.i());
        }
        T();
        R();
        ReportPropertyBuilder reportPropertyBuilder = new ReportPropertyBuilder();
        C(reportPropertyBuilder, this.d);
        reportPropertyBuilder.setEventName("Task").setAction("ok");
        O(reportPropertyBuilder);
        N();
        reportPropertyBuilder.setProperty("background_duration", Long.valueOf(this.d.m0 / 1000));
        reportPropertyBuilder.b(jd6.g().a(this.d.p()));
        vq6.K().g(reportPropertyBuilder);
        Config.M2();
    }

    public final void B() {
        o0(TaskInfo.TaskStatus.WARNING);
        T();
    }

    public String F() {
        return this.d.w;
    }

    public TaskInfo.TaskStatus G() {
        return this.d.i;
    }

    public long H() {
        return this.d.a;
    }

    public TaskInfo I() {
        return this.d;
    }

    public void J() {
        X();
    }

    public final void K() {
        bu5.a(this);
    }

    public final void L() {
        if (bu5.f(this) && bu5.d()) {
            p0();
        }
    }

    public void M() {
        y48.n(new j08(this));
    }

    public void N() {
        y48.n(new i08(this));
    }

    public void O(ah3 ah3Var) {
    }

    public void P() {
        T();
    }

    public void Q() {
        R();
        yj2.s(this.d.i());
    }

    public void R() {
    }

    public void S() {
        PhoenixApplication.K().x(this.e);
        qs1.A().m(this.j);
        M();
        DownloadHistoryHelper.j(this.d);
    }

    public void T() {
        N();
        d0();
        qs1.A().N(this.j);
        PhoenixApplication.K().y(this.e);
        o();
        this.c.removeCallbacksAndMessages(null);
    }

    public void U() {
    }

    public void V(DownloadInfo downloadInfo) {
    }

    public abstract void W(DownloadInfo downloadInfo);

    public void X() {
        T();
    }

    public boolean Y() {
        return false;
    }

    public void Z() {
        this.g = SystemClock.uptimeMillis();
    }

    public final void a0(TaskInfo.TaskStatus taskStatus) {
        TaskInfo taskInfo = this.d;
        TaskInfo.TaskStatus taskStatus2 = taskInfo.i;
        if (taskStatus2 == taskStatus) {
            return;
        }
        if (taskStatus2 == TaskInfo.TaskStatus.RUNNING || taskStatus2 == TaskInfo.TaskStatus.PENDING) {
            taskInfo.i = taskStatus;
            int i = b.a[taskStatus.ordinal()];
            if (i == 1) {
                X();
            } else {
                if (i != 2) {
                    return;
                }
                P();
            }
        }
    }

    public void b0() {
        ReportPropertyBuilder reportPropertyBuilder = new ReportPropertyBuilder();
        reportPropertyBuilder.setEventName("Task").setAction("file_start");
        C(reportPropertyBuilder, this.d);
        O(reportPropertyBuilder);
        vq6.K().g(reportPropertyBuilder);
    }

    public void c0() {
        long jCurrentTimeMillis = (System.currentTimeMillis() / 1000) - this.d.m;
        ReportPropertyBuilder reportPropertyBuilder = new ReportPropertyBuilder();
        reportPropertyBuilder.setEventName("Task").setAction("file_ok").setProperty("download_duration", Long.valueOf(jCurrentTimeMillis)).setProperty("speed", Long.valueOf(jy2.j(jCurrentTimeMillis > 0 ? this.d.d / jCurrentTimeMillis : 0L)));
        C(reportPropertyBuilder, this.d);
        O(reportPropertyBuilder);
        vq6.K().g(reportPropertyBuilder);
    }

    public final void d0() {
        if (this.g <= 0 || this.f) {
            return;
        }
        this.f = true;
        if (this.h > 0) {
            this.d.P += SystemClock.uptimeMillis() - this.h;
        }
        this.d.O += SystemClock.uptimeMillis() - this.g;
        r0();
    }

    public synchronized void e0(long j) {
        if (j > this.i) {
            this.i = j;
        }
    }

    public abstract boolean f0(DownloadInfo downloadInfo);

    public void g0() {
        ContentValues contentValues = new ContentValues();
        try {
            contentValues.put("extra", this.d.h());
            TaskInfoDBUtils.e1(this.d.a, contentValues, true);
        } catch (JSONException e) {
            e.printStackTrace();
        }
    }

    public int h0(int i) {
        this.d.C = i;
        ContentValues contentValues = new ContentValues();
        contentValues.put("task_fail_times", Integer.valueOf(i));
        return TaskInfoDBUtils.e1(this.d.a, contentValues, true);
    }

    @Override
    public void i() {
        p0();
    }

    public int i0(String str) {
        this.d.R(str);
        ContentValues contentValues = new ContentValues();
        contentValues.put("filePath", str);
        return TaskInfoDBUtils.e1(this.d.a, contentValues, true);
    }

    public int j0(String str, boolean z) {
        this.d.R(str);
        ContentValues contentValues = new ContentValues();
        contentValues.put("filePath", str);
        contentValues.put("has_auto_retry", Integer.valueOf(z ? 1 : 0));
        return TaskInfoDBUtils.e1(this.d.a, contentValues, true);
    }

    public final void k0() {
        long jMax = Math.max((this.d.m * 1000) + 10, System.currentTimeMillis());
        TaskInfo taskInfo = this.d;
        taskInfo.h0 = jMax;
        TaskInfoDBUtils.f1(taskInfo.a, jMax);
    }

    public int l0(long j, long j2, long j3, boolean z) {
        if (this.d.i == TaskInfo.TaskStatus.RUNNING && j2 <= 0) {
            return 0;
        }
        if (j2 > j3) {
            ProductionEnv.d("Download->", "TaskProgressController - fillProgress 超过 100% ~");
        }
        if (j3 > 0) {
            TaskInfo taskInfo = this.d;
            taskInfo.c = (int) ((100 * j2) / j3);
            taskInfo.d = j3;
        }
        TaskInfo taskInfo2 = this.d;
        taskInfo2.f = j;
        taskInfo2.e = j2;
        return TaskInfoDBUtils.h1(taskInfo2.a, taskInfo2.c, j, j2, taskInfo2.d, taskInfo2.j, z);
    }

    public int m0(String str, boolean z) {
        if (str == null || str.equals(this.d.j)) {
            return 0;
        }
        TaskInfo taskInfo = this.d;
        taskInfo.j = str;
        return TaskInfoDBUtils.h1(taskInfo.a, taskInfo.c, taskInfo.f, taskInfo.e, taskInfo.d, str, z);
    }

    @Override
    public void n() {
        throw new RuntimeException("Should never reach here");
    }

    public int n0(int i, String str, boolean z) {
        TaskInfo taskInfo = this.d;
        taskInfo.j = str;
        taskInfo.c = i;
        return TaskInfoDBUtils.h1(taskInfo.a, i, taskInfo.f, taskInfo.e, taskInfo.d, str, z);
    }

    public int o0(TaskInfo.TaskStatus taskStatus) {
        TaskInfo taskInfo = this.d;
        taskInfo.i = taskStatus;
        return TaskInfoDBUtils.l1(taskInfo.a, taskStatus);
    }

    public final void p0() {
        long jUptimeMillis = SystemClock.uptimeMillis();
        TaskInfo taskInfo = this.d;
        long j = taskInfo.m0;
        long jC = bu5.a.c();
        long j2 = this.g;
        taskInfo.m0 = j + Math.min(jC, j2 == 0 ? Long.MAX_VALUE : jUptimeMillis - j2);
    }

    @Override
    public void q() {
        S();
        Z();
    }

    public final void q0() {
        if (ig4.k(this.d.i())) {
            long length = new File(this.d.i()).length();
            l0(0L, length, length, false);
        }
    }

    public void r0() {
        ContentValues contentValues = new ContentValues();
        try {
            contentValues.put("extra", this.d.h());
            TaskInfoDBUtils.t(this.d.a, contentValues, false);
        } catch (JSONException e) {
            e.printStackTrace();
        }
    }

    public void v() {
        Q();
    }

    public final void x(TaskError taskError, String str) {
        z(taskError, str, null, 0);
    }

    public final void y(TaskError taskError, String str, String str2) {
        z(taskError, str, str2, 0);
    }

    public final void z(TaskError taskError, String str, String str2, int i) {
        PhoenixApplication.O().y(this.d.p());
        TaskInfo taskInfo = this.d;
        int i2 = taskInfo.C + 1;
        taskInfo.C = i2;
        h0(i2);
        o0(TaskInfo.TaskStatus.ERROR);
        T();
        File parentFile = new File(this.d.i()).getParentFile();
        boolean zV = parentFile != null ? yj2.v(parentFile.getAbsolutePath()) : false;
        boolean zO = StorageUtil.o(this.d.i());
        ReportPropertyBuilder reportPropertyBuilder = new ReportPropertyBuilder();
        C(reportPropertyBuilder, this.d);
        reportPropertyBuilder.setEventName("Task").setAction("fail").setProperty("error", taskError.appendDetails(str)).setProperty("error_no", String.valueOf(taskError.getErrorCode())).setProperty("dir_exists", String.valueOf(zV)).setProperty("removable_disk", String.valueOf(zO)).setProperty("arg2", Integer.valueOf(i));
        if (!android.text.TextUtils.isEmpty(str2)) {
            reportPropertyBuilder.setProperty("arg3", str2);
        }
        if (zV) {
            long jY = yj2.y(parentFile.getAbsolutePath());
            reportPropertyBuilder.setProperty("free_size", String.valueOf(StorageUtil.r(jY))).setProperty("shortage_size", String.valueOf(StorageUtil.r(this.d.d - jY)));
        }
        O(reportPropertyBuilder);
        vq6.K().g(reportPropertyBuilder);
        TaskInfo taskInfo2 = this.d;
        if (taskInfo2 instanceof cm3) {
            com.snaptube.premium.selfupgrade.incremental_upgrade.b.l((cm3) taskInfo2, taskError.appendDetails(str));
        }
    }
}
