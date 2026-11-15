package com.google.firebase.crashlytics.internal.common;

import android.app.ActivityManager;
import android.content.Context;
import android.os.Build;
import android.os.Bundle;
import android.os.Environment;
import android.os.StatFs;
import android.util.Base64;
import com.google.android.gms.tasks.SuccessContinuation;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.TaskCompletionSource;
import com.google.android.gms.tasks.Tasks;
import com.google.firebase.crashlytics.internal.concurrency.CrashlyticsWorkers;
import com.google.firebase.crashlytics.internal.model.CrashlyticsReport;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FilenameFilter;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.SortedSet;
import java.util.concurrent.Callable;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.TimeoutException;
import java.util.concurrent.atomic.AtomicBoolean;

class n {

    static final FilenameFilter f30375t = new FilenameFilter() {
        @Override
        public final boolean accept(File file, String str) {
            return n.M(file, str);
        }
    };

    private final Context f30376a;

    private final d0 f30377b;

    private final y f30378c;

    private final tb.o f30379d;

    private final CrashlyticsWorkers f30380e;

    private final g0 f30381f;

    private final xb.g f30382g;

    private final com.google.firebase.crashlytics.internal.common.a f30383h;

    private final tb.e f30384i;

    private final qb.a f30385j;

    private final rb.a f30386k;

    private final k f30387l;

    private final w0 f30388m;

    private b0 f30389n;

    private yb.b f30390o = null;

    final TaskCompletionSource f30391p = new TaskCompletionSource();

    final TaskCompletionSource f30392q = new TaskCompletionSource();

    final TaskCompletionSource f30393r = new TaskCompletionSource();

    final AtomicBoolean f30394s = new AtomicBoolean(false);

    class a implements b0.a {
        a() {
        }

        @Override
        public void a(yb.b bVar, Thread thread, Throwable th2) {
            n.this.I(bVar, thread, th2);
        }
    }

    class b implements Callable {

        final long f30396a;

        final Throwable f30397b;

        final Thread f30398c;

        final yb.b f30399d;

        final boolean f30400e;

        class a implements SuccessContinuation {

            final String f30402a;

            a(String str) {
                this.f30402a = str;
            }

            @Override
            public Task then(com.google.firebase.crashlytics.internal.settings.c cVar) {
                if (cVar != null) {
                    return Tasks.whenAll((Task<?>[]) new Task[]{n.this.P(), n.this.f30388m.A(n.this.f30380e.f30472a, b.this.f30400e ? this.f30402a : null)});
                }
                qb.g.f().k("Received null app settings, cannot send reports at crash time.");
                return Tasks.forResult(null);
            }
        }

        b(long j10, Throwable th2, Thread thread, yb.b bVar, boolean z10) {
            this.f30396a = j10;
            this.f30397b = th2;
            this.f30398c = thread;
            this.f30399d = bVar;
            this.f30400e = z10;
        }

        @Override
        public Task call() {
            long jG = n.G(this.f30396a);
            String strC = n.this.C();
            if (strC == null) {
                qb.g.f().d("Tried to write a fatal exception while no session was open.");
                return Tasks.forResult(null);
            }
            n.this.f30378c.a();
            n.this.f30388m.v(this.f30397b, this.f30398c, strC, jG);
            n.this.x(this.f30396a);
            n.this.u(this.f30399d);
            n.this.w(new g().c(), Boolean.valueOf(this.f30400e));
            return !n.this.f30377b.d() ? Tasks.forResult(null) : this.f30399d.a().onSuccessTask(n.this.f30380e.f30472a, new a(strC));
        }
    }

    class c implements SuccessContinuation {
        c() {
        }

        @Override
        public Task then(Void r10) {
            return Tasks.forResult(Boolean.TRUE);
        }
    }

    class d implements SuccessContinuation {

        final Task f30405a;

        class a implements SuccessContinuation {
            a() {
            }

            @Override
            public Task then(com.google.firebase.crashlytics.internal.settings.c cVar) {
                if (cVar == null) {
                    qb.g.f().k("Received null app settings at app startup. Cannot send cached reports");
                    return Tasks.forResult(null);
                }
                n.this.P();
                n.this.f30388m.z(n.this.f30380e.f30472a);
                n.this.f30393r.trySetResult(null);
                return Tasks.forResult(null);
            }
        }

        d(Task task) {
            this.f30405a = task;
        }

        @Override
        public Task then(Boolean bool) {
            if (bool.booleanValue()) {
                qb.g.f().b("Sending cached crash reports...");
                n.this.f30377b.c(bool.booleanValue());
                return this.f30405a.onSuccessTask(n.this.f30380e.f30472a, new a());
            }
            qb.g.f().i("Deleting cached crash reports...");
            n.r(n.this.N());
            n.this.f30388m.y();
            n.this.f30393r.trySetResult(null);
            return Tasks.forResult(null);
        }
    }

    class e implements Callable {

        final long f30408a;

        e(long j10) {
            this.f30408a = j10;
        }

        @Override
        public Void call() {
            Bundle bundle = new Bundle();
            bundle.putInt("fatal", 1);
            bundle.putLong(CampaignEx.JSON_KEY_TIMESTAMP, this.f30408a);
            n.this.f30386k.a("_ae", bundle);
            return null;
        }
    }

    n(Context context, g0 g0Var, d0 d0Var, xb.g gVar, y yVar, com.google.firebase.crashlytics.internal.common.a aVar, tb.o oVar, tb.e eVar, w0 w0Var, qb.a aVar2, rb.a aVar3, k kVar, CrashlyticsWorkers crashlyticsWorkers) {
        this.f30376a = context;
        this.f30381f = g0Var;
        this.f30377b = d0Var;
        this.f30382g = gVar;
        this.f30378c = yVar;
        this.f30383h = aVar;
        this.f30379d = oVar;
        this.f30384i = eVar;
        this.f30385j = aVar2;
        this.f30386k = aVar3;
        this.f30387l = kVar;
        this.f30388m = w0Var;
        this.f30380e = crashlyticsWorkers;
    }

    private static boolean B() {
        try {
            Class.forName("com.google.firebase.crash.FirebaseCrash");
            return true;
        } catch (ClassNotFoundException unused) {
            return false;
        }
    }

    public String C() {
        SortedSet sortedSetR = this.f30388m.r();
        if (sortedSetR.isEmpty()) {
            return null;
        }
        return (String) sortedSetR.first();
    }

    private static long D() {
        return G(System.currentTimeMillis());
    }

    static List E(qb.h hVar, String str, xb.g gVar, byte[] bArr) {
        File fileQ = gVar.q(str, "user-data");
        File fileQ2 = gVar.q(str, "keys");
        File fileQ3 = gVar.q(str, "rollouts-state");
        ArrayList arrayList = new ArrayList();
        arrayList.add(new f("logs_file", "logs", bArr));
        arrayList.add(new e0("crash_meta_file", TtmlNode.TAG_METADATA, hVar.d()));
        arrayList.add(new e0("session_meta_file", "session", hVar.g()));
        arrayList.add(new e0("app_meta_file", "app", hVar.e()));
        arrayList.add(new e0("device_meta_file", "device", hVar.a()));
        arrayList.add(new e0("os_meta_file", "os", hVar.f()));
        arrayList.add(R(hVar));
        arrayList.add(new e0("user_meta_file", "user", fileQ));
        arrayList.add(new e0("keys_file", "keys", fileQ2));
        arrayList.add(new e0("rollouts_file", "rollouts", fileQ3));
        return arrayList;
    }

    private InputStream F(String str) {
        ClassLoader classLoader = getClass().getClassLoader();
        if (classLoader == null) {
            qb.g.f().k("Couldn't get Class Loader");
            return null;
        }
        InputStream resourceAsStream = classLoader.getResourceAsStream(str);
        if (resourceAsStream != null) {
            return resourceAsStream;
        }
        qb.g.f().g("No version control information found");
        return null;
    }

    public static long G(long j10) {
        return j10 / 1000;
    }

    public void L(String str) {
        w(str, Boolean.FALSE);
    }

    public static boolean M(File file, String str) {
        return str.startsWith(".ae");
    }

    private Task O(long j10) {
        if (B()) {
            qb.g.f().k("Skipping logging Crashlytics event to Firebase, FirebaseCrash exists");
            return Tasks.forResult(null);
        }
        qb.g.f().b("Logging app exception event to Firebase Analytics");
        return Tasks.call(new ScheduledThreadPoolExecutor(1), new e(j10));
    }

    public Task P() {
        ArrayList arrayList = new ArrayList();
        for (File file : N()) {
            try {
                arrayList.add(O(Long.parseLong(file.getName().substring(3))));
            } catch (NumberFormatException unused) {
                qb.g.f().k("Could not parse app exception timestamp from file " + file.getName());
            }
            file.delete();
        }
        return Tasks.whenAll(arrayList);
    }

    private static boolean Q(String str, File file, CrashlyticsReport.a aVar) {
        if (file == null || !file.exists()) {
            qb.g.f().k("No minidump data found for session " + str);
        }
        if (aVar == null) {
            qb.g.f().g("No Tombstones data found for session " + str);
        }
        return (file == null || !file.exists()) && aVar == null;
    }

    private static j0 R(qb.h hVar) {
        File fileC = hVar.c();
        return (fileC == null || !fileC.exists()) ? new f("minidump_file", "minidump", new byte[]{0}) : new e0("minidump_file", "minidump", fileC);
    }

    private static byte[] T(InputStream inputStream) throws IOException {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        byte[] bArr = new byte[1024];
        while (true) {
            int i10 = inputStream.read(bArr);
            if (i10 == -1) {
                return byteArrayOutputStream.toByteArray();
            }
            byteArrayOutputStream.write(bArr, 0, i10);
        }
    }

    private Task a0() {
        if (this.f30377b.d()) {
            qb.g.f().b("Automatic data collection is enabled. Allowing upload.");
            this.f30391p.trySetResult(Boolean.FALSE);
            return Tasks.forResult(Boolean.TRUE);
        }
        qb.g.f().b("Automatic data collection is disabled.");
        qb.g.f().i("Notifying that unsent reports are available.");
        this.f30391p.trySetResult(Boolean.TRUE);
        Task taskOnSuccessTask = this.f30377b.j().onSuccessTask(new c());
        qb.g.f().b("Waiting for send/deleteUnsentReports to be called.");
        return com.google.firebase.crashlytics.internal.concurrency.b.c(taskOnSuccessTask, this.f30392q.getTask());
    }

    private void b0(String str) {
        int i10 = Build.VERSION.SDK_INT;
        if (i10 < 30) {
            qb.g.f().i("ANR feature enabled, but device is API " + i10);
            return;
        }
        List historicalProcessExitReasons = ((ActivityManager) this.f30376a.getSystemService("activity")).getHistoricalProcessExitReasons(null, 0, 0);
        if (historicalProcessExitReasons.size() != 0) {
            this.f30388m.x(str, historicalProcessExitReasons, new tb.e(this.f30382g, str), tb.o.m(str, this.f30382g, this.f30380e));
        } else {
            qb.g.f().i("No ApplicationExitInfo available. Session: " + str);
        }
    }

    private static ub.e.a o(g0 g0Var, com.google.firebase.crashlytics.internal.common.a aVar) {
        return ub.e.a.b(g0Var.f(), aVar.f30317f, aVar.f30318g, g0Var.a().c(), DeliveryMechanism.determineFrom(aVar.f30315d).getId(), aVar.f30319h);
    }

    private static ub.e.b p(Context context) {
        StatFs statFs = new StatFs(Environment.getDataDirectory().getPath());
        return ub.e.b.c(CommonUtils.k(), Build.MODEL, Runtime.getRuntime().availableProcessors(), CommonUtils.b(context), ((long) statFs.getBlockCount()) * ((long) statFs.getBlockSize()), CommonUtils.w(), CommonUtils.l(), Build.MANUFACTURER, Build.PRODUCT);
    }

    private static ub.e.c q() {
        return ub.e.c.a(Build.VERSION.RELEASE, Build.VERSION.CODENAME, CommonUtils.x());
    }

    public static void r(List list) {
        Iterator it = list.iterator();
        while (it.hasNext()) {
            ((File) it.next()).delete();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void v(boolean z10, yb.b bVar, boolean z11) {
        String str;
        CrashlyticsWorkers.c();
        ArrayList arrayList = new ArrayList(this.f30388m.r());
        if (arrayList.size() <= z10) {
            qb.g.f().i("No open sessions to be closed.");
            return;
        }
        String str2 = (String) arrayList.get(z10 ? 1 : 0);
        if (z11 && bVar.b().f30913b.f30921b) {
            b0(str2);
        } else {
            qb.g.f().i("ANR feature disabled.");
        }
        if (z11 && this.f30385j.d(str2)) {
            z(str2);
        }
        if (z10 != 0) {
            str = (String) arrayList.get(0);
        } else {
            this.f30387l.e(null);
            str = null;
        }
        this.f30388m.l(D(), str);
    }

    public void w(String str, Boolean bool) {
        long jD = D();
        qb.g.f().b("Opening a new session with ID " + str);
        this.f30385j.c(str, String.format(Locale.US, "Crashlytics Android SDK/%s", x.q()), jD, ub.e.b(o(this.f30381f, this.f30383h), q(), p(this.f30376a)));
        if (bool.booleanValue() && str != null) {
            this.f30379d.r(str);
        }
        this.f30384i.e(str);
        this.f30387l.e(str);
        this.f30388m.s(str, jD);
    }

    public void x(long j10) {
        try {
            if (this.f30382g.g(".ae" + j10).createNewFile()) {
            } else {
                throw new IOException("Create new file failed.");
            }
        } catch (IOException e10) {
            qb.g.f().l("Could not create app exception marker file.", e10);
        }
    }

    private void z(String str) {
        qb.g.f().i("Finalizing native report for session " + str);
        qb.h hVarA = this.f30385j.a(str);
        File fileC = hVarA.c();
        CrashlyticsReport.a aVarB = hVarA.b();
        if (Q(str, fileC, aVarB)) {
            qb.g.f().k("No native core present");
            return;
        }
        long jLastModified = fileC.lastModified();
        tb.e eVar = new tb.e(this.f30382g, str);
        File fileK = this.f30382g.k(str);
        if (!fileK.isDirectory()) {
            qb.g.f().k("Couldn't create directory to store native session files, aborting.");
            return;
        }
        x(jLastModified);
        List listE = E(hVarA, str, this.f30382g, eVar.b());
        k0.b(fileK, listE);
        qb.g.f().b("CrashlyticsController#finalizePreviousNativeSession");
        this.f30388m.k(str, listE, aVarB);
        eVar.a();
    }

    boolean A(yb.b bVar) {
        CrashlyticsWorkers.c();
        if (K()) {
            qb.g.f().k("Skipping session finalization because a crash has already occurred.");
            return false;
        }
        qb.g.f().i("Finalizing previously open sessions.");
        try {
            v(true, bVar, true);
            qb.g.f().i("Closed all previously open sessions.");
            return true;
        } catch (Exception e10) {
            qb.g.f().e("Unable to finalize previously open sessions.", e10);
            return false;
        }
    }

    String H() {
        InputStream inputStreamF = F("META-INF/version-control-info.textproto");
        if (inputStreamF == null) {
            return null;
        }
        qb.g.f().b("Read version control info");
        return Base64.encodeToString(T(inputStreamF), 0);
    }

    void I(yb.b bVar, Thread thread, Throwable th2) {
        J(bVar, thread, th2, false);
    }

    synchronized void J(yb.b bVar, Thread thread, Throwable th2, boolean z10) {
        qb.g.f().b("Handling uncaught exception \"" + th2 + "\" from thread " + thread.getName());
        Task taskG = this.f30380e.f30472a.g(new b(System.currentTimeMillis(), th2, thread, bVar, z10));
        if (!z10) {
            try {
                try {
                    z0.b(taskG);
                } catch (TimeoutException unused) {
                    qb.g.f().d("Cannot send reports. Timed out while fetching settings.");
                }
            } catch (Exception e10) {
                qb.g.f().e("Error handling uncaught exception", e10);
            }
        }
    }

    boolean K() {
        b0 b0Var = this.f30389n;
        return b0Var != null && b0Var.a();
    }

    List N() {
        return this.f30382g.h(f30375t);
    }

    void S(final String str) {
        this.f30380e.f30472a.f(new Runnable() {
            @Override
            public final void run() {
                this.f30371a.L(str);
            }
        });
    }

    void U() {
        try {
            String strH = H();
            if (strH != null) {
                X("com.crashlytics.version-control-info", strH);
                qb.g.f().g("Saved version control info");
            }
        } catch (IOException e10) {
            qb.g.f().l("Unable to save version control info", e10);
        }
    }

    Task V() {
        this.f30392q.trySetResult(Boolean.TRUE);
        return this.f30393r.getTask();
    }

    void W(String str, String str2) {
        try {
            this.f30379d.p(str, str2);
        } catch (IllegalArgumentException e10) {
            Context context = this.f30376a;
            if (context != null && CommonUtils.u(context)) {
                throw e10;
            }
            qb.g.f().d("Attempting to set custom attribute with null key, ignoring.");
        }
    }

    void X(String str, String str2) {
        try {
            this.f30379d.q(str, str2);
        } catch (IllegalArgumentException e10) {
            Context context = this.f30376a;
            if (context != null && CommonUtils.u(context)) {
                throw e10;
            }
            qb.g.f().d("Attempting to set custom attribute with null key, ignoring.");
        }
    }

    void Y(String str) {
        this.f30379d.s(str);
    }

    void Z(Task task) {
        if (this.f30388m.o()) {
            qb.g.f().i("Crash reports are available to be sent.");
            a0().onSuccessTask(this.f30380e.f30472a, new d(task));
        } else {
            qb.g.f().i("No crash reports are available to be sent.");
            this.f30391p.trySetResult(Boolean.FALSE);
        }
    }

    void c0(Thread thread, Throwable th2) {
        long jCurrentTimeMillis = System.currentTimeMillis();
        if (K()) {
            return;
        }
        long jG = G(jCurrentTimeMillis);
        String strC = C();
        if (strC == null) {
            qb.g.f().k("Tried to write a non-fatal exception while no session was open.");
        } else {
            this.f30388m.w(th2, thread, strC, jG);
        }
    }

    void d0(long j10, String str) {
        if (K()) {
            return;
        }
        this.f30384i.g(j10, str);
    }

    Task n() {
        if (this.f30394s.compareAndSet(false, true)) {
            return this.f30391p.getTask();
        }
        qb.g.f().k("checkForUnsentReports should only be called once per execution.");
        return Tasks.forResult(Boolean.FALSE);
    }

    Task s() {
        this.f30392q.trySetResult(Boolean.FALSE);
        return this.f30393r.getTask();
    }

    boolean t() {
        CrashlyticsWorkers.c();
        if (!this.f30378c.c()) {
            String strC = C();
            return strC != null && this.f30385j.d(strC);
        }
        qb.g.f().i("Found previous crash marker.");
        this.f30378c.d();
        return true;
    }

    void u(yb.b bVar) {
        v(false, bVar, false);
    }

    void y(String str, Thread.UncaughtExceptionHandler uncaughtExceptionHandler, yb.b bVar) {
        this.f30390o = bVar;
        S(str);
        b0 b0Var = new b0(new a(), bVar, uncaughtExceptionHandler, this.f30385j);
        this.f30389n = b0Var;
        Thread.setDefaultUncaughtExceptionHandler(b0Var);
    }
}
