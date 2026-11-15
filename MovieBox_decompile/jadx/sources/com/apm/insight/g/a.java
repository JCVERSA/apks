package com.apm.insight.g;

import android.os.Looper;
import android.os.SystemClock;
import com.apm.insight.CrashType;
import com.apm.insight.ICrashCallback;
import com.apm.insight.ICrashFilter;
import com.apm.insight.IOOMCallback;
import com.apm.insight.e;
import com.apm.insight.k.h;
import com.apm.insight.l.f;
import com.apm.insight.l.j;
import com.apm.insight.nativecrash.NativeImpl;
import com.apm.insight.runtime.l;
import com.apm.insight.runtime.m;
import java.io.Closeable;
import java.io.File;
import java.io.FileOutputStream;
import java.io.PrintStream;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.ConcurrentHashMap;
import org.json.JSONArray;

public final class a implements Thread.UncaughtExceptionHandler {

    private static a f18901a = null;

    private static volatile boolean f18902i = false;

    private static volatile ThreadLocal<Boolean> f18903j = new ThreadLocal<>();

    private static volatile long f18904l = 10000;

    private static ArrayList<b> f18905m = new ArrayList<>();

    private Thread.UncaughtExceptionHandler f18906b;

    private c f18907c;

    private c f18908d;

    private volatile int f18909e = 0;

    private volatile int f18910f = 0;

    private ConcurrentHashMap<String, Object> f18911g = new ConcurrentHashMap<>();

    private ConcurrentHashMap<String, Object> f18912h = new ConcurrentHashMap<>();

    private JSONArray f18913k;

    private a() {
        Thread.UncaughtExceptionHandler defaultUncaughtExceptionHandler = Thread.getDefaultUncaughtExceptionHandler();
        if (defaultUncaughtExceptionHandler != this) {
            this.f18906b = defaultUncaughtExceptionHandler;
            Thread.setDefaultUncaughtExceptionHandler(this);
        }
    }

    public static a a() {
        if (f18901a == null) {
            f18901a = new a();
        }
        return f18901a;
    }

    private void c(Thread thread, Throwable th2) {
        Thread.UncaughtExceptionHandler uncaughtExceptionHandler = this.f18906b;
        if (uncaughtExceptionHandler == null || uncaughtExceptionHandler == this) {
            return;
        }
        uncaughtExceptionHandler.uncaughtException(thread, th2);
    }

    private void d() {
        synchronized (this) {
            this.f18910f--;
        }
        long jUptimeMillis = SystemClock.uptimeMillis();
        while (this.f18910f != 0 && SystemClock.uptimeMillis() - jUptimeMillis < f18904l) {
            SystemClock.sleep(50L);
        }
    }

    private static void e() {
        File fileA = j.a(e.g());
        File fileA2 = j.a();
        if (f.b(fileA) && f.b(fileA2)) {
            return;
        }
        long jUptimeMillis = SystemClock.uptimeMillis();
        while (!h.a() && SystemClock.uptimeMillis() - jUptimeMillis < f18904l) {
            try {
                SystemClock.sleep(500L);
            } catch (Throwable unused) {
            }
        }
    }

    private static int f() {
        int iA = 0;
        for (int i10 = 0; i10 < f18905m.size(); i10++) {
            try {
                try {
                    iA |= f18905m.get(i10).a();
                } catch (Throwable th2) {
                    com.apm.insight.c.a();
                    com.apm.insight.runtime.j.a(th2, "NPTH_CATCH");
                }
            } catch (Throwable unused) {
            }
        }
        return iA;
    }

    private static Throwable g() {
        for (int i10 = 0; i10 < f18905m.size(); i10++) {
            try {
                f18905m.get(i10);
            } catch (Throwable unused) {
            }
        }
        if (Looper.getMainLooper() != Looper.myLooper()) {
            return null;
        }
        try {
            Looper.loop();
            return null;
        } catch (Throwable th2) {
            return th2;
        }
    }

    public final void b(c cVar) {
        this.f18908d = cVar;
    }

    @Override
    public final void uncaughtException(Thread thread, Throwable th2) {
        do {
            th2 = a(thread, th2);
        } while (th2 != null);
    }

    private static boolean b(Thread thread, Throwable th2) {
        ICrashFilter iCrashFilterB = e.b().b();
        if (iCrashFilterB != null) {
            try {
                if (!iCrashFilterB.onJavaCrashFilter(th2, thread)) {
                    return false;
                }
            } catch (Throwable unused) {
            }
        }
        return true;
    }

    public static void c(final String str) {
        if (str == null) {
            return;
        }
        try {
            m.a().a(new Runnable() {
                @Override
                public final void run() {
                    try {
                        com.apm.insight.entity.a aVar = new com.apm.insight.entity.a();
                        aVar.a("data", (Object) str);
                        aVar.a("userdefine", (Object) 1);
                        com.apm.insight.entity.a aVarA = com.apm.insight.runtime.a.f.a().a(CrashType.CUSTOM_JAVA, aVar);
                        if (aVarA != null) {
                            com.apm.insight.k.d.a().c(aVarA.c());
                        }
                    } catch (Throwable unused) {
                    }
                }
            });
        } catch (Throwable unused) {
        }
    }

    public static boolean c() {
        Boolean bool = f18903j.get();
        return bool != null && bool.booleanValue();
    }

    public final void a(c cVar) {
        this.f18907c = cVar;
    }

    public final boolean b(String str) {
        return this.f18911g.containsKey(str);
    }

    /* JADX WARN: Code duplicated, block: B:103:0x01cc A[Catch: all -> 0x01d0, TRY_LEAVE, TryCatch #6 {all -> 0x01d0, blocks: (B:101:0x01c6, B:103:0x01cc), top: B:153:0x01c6 }] */
    /* JADX WARN: Code duplicated, block: B:108:0x01d4  */
    /* JADX WARN: Code duplicated, block: B:109:0x01d6 A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:115:0x01e8  */
    /* JADX WARN: Code duplicated, block: B:157:0x01a5 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:165:0x01e9 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:24:0x0067  */
    /* JADX WARN: Code duplicated, block: B:82:0x018b  */
    /* JADX WARN: Code duplicated, block: B:89:0x01a4  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v18, types: [int] */
    /* JADX WARN: Type inference failed for: r0v20, types: [int] */
    /* JADX WARN: Type inference failed for: r0v24, types: [int] */
    /* JADX WARN: Type inference failed for: r0v26, types: [int] */
    /* JADX WARN: Type inference failed for: r0v40, types: [int] */
    /* JADX WARN: Type inference failed for: r0v42, types: [int] */
    /* JADX WARN: Type inference failed for: r20v0, types: [com.apm.insight.g.a] */
    /* JADX WARN: Type inference failed for: r2v10 */
    /* JADX WARN: Type inference failed for: r2v15 */
    /* JADX WARN: Type inference failed for: r2v2 */
    /* JADX WARN: Type inference failed for: r2v20, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r2v21 */
    /* JADX WARN: Type inference failed for: r2v22 */
    /* JADX WARN: Type inference failed for: r2v23 */
    /* JADX WARN: Type inference failed for: r2v25 */
    /* JADX WARN: Type inference failed for: r2v26 */
    /* JADX WARN: Type inference failed for: r2v3 */
    /* JADX WARN: Type inference failed for: r2v35 */
    /* JADX WARN: Type inference failed for: r2v36 */
    /* JADX WARN: Type inference failed for: r2v37 */
    /* JADX WARN: Type inference failed for: r2v38 */
    /* JADX WARN: Type inference failed for: r2v6 */
    /* JADX WARN: Type inference failed for: r2v9 */
    /* JADX WARN: Type inference failed for: r4v0 */
    /* JADX WARN: Type inference failed for: r4v1, types: [int] */
    /* JADX WARN: Type inference failed for: r4v10 */
    /* JADX WARN: Type inference failed for: r4v11 */
    /* JADX WARN: Type inference failed for: r4v16 */
    /* JADX WARN: Type inference failed for: r4v17 */
    /* JADX WARN: Type inference failed for: r4v18 */
    /* JADX WARN: Type inference failed for: r4v19 */
    /* JADX WARN: Type inference failed for: r4v20 */
    /* JADX WARN: Type inference failed for: r4v21, types: [int] */
    /* JADX WARN: Type inference failed for: r4v23 */
    /* JADX WARN: Type inference failed for: r4v24 */
    /* JADX WARN: Type inference failed for: r4v25, types: [boolean] */
    /* JADX WARN: Type inference failed for: r4v29 */
    /* JADX WARN: Type inference failed for: r4v30 */
    /* JADX WARN: Type inference failed for: r4v31 */
    /* JADX WARN: Type inference failed for: r4v32 */
    /* JADX WARN: Type inference failed for: r4v33 */
    /* JADX WARN: Type inference failed for: r4v34 */
    /* JADX WARN: Type inference failed for: r4v4 */
    /* JADX WARN: Type inference failed for: r5v0 */
    /* JADX WARN: Type inference failed for: r5v1, types: [long] */
    /* JADX WARN: Type inference failed for: r5v10, types: [long] */
    /* JADX WARN: Type inference failed for: r5v11 */
    /* JADX WARN: Type inference failed for: r5v12 */
    /* JADX WARN: Type inference failed for: r5v13, types: [long] */
    /* JADX WARN: Type inference failed for: r5v14 */
    /* JADX WARN: Type inference failed for: r5v15 */
    /* JADX WARN: Type inference failed for: r5v16 */
    /* JADX WARN: Type inference failed for: r5v17 */
    /* JADX WARN: Type inference failed for: r5v2 */
    /* JADX WARN: Type inference failed for: r5v3, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r5v4 */
    /* JADX WARN: Type inference failed for: r5v5 */
    /* JADX WARN: Type inference failed for: r5v6 */
    /* JADX WARN: Type inference failed for: r5v7 */
    /* JADX WARN: Type inference failed for: r5v8 */
    /* JADX WARN: Type inference failed for: r5v9, types: [long] */
    /* JADX WARN: Type inference failed for: r8v0, types: [com.apm.insight.g.c] */
    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    private Throwable a(Thread thread, Throwable th2) {
        boolean zC;
        boolean z10;
        CrashType crashType;
        ?? r10;
        ?? r11;
        ?? r12;
        boolean z11;
        ?? r13;
        ?? r14;
        ?? r15;
        String strA;
        ?? r16;
        c cVar;
        boolean z12;
        if (this.f18909e >= 3) {
            return null;
        }
        this.f18909e++;
        this.f18910f++;
        if (f18902i) {
            f18903j.set(Boolean.TRUE);
        }
        f18902i = true;
        long jCurrentTimeMillis = System.currentTimeMillis();
        boolean z13 = false;
        boolean z14 = (com.apm.insight.runtime.a.b.c() == -1 || jCurrentTimeMillis - com.apm.insight.runtime.a.b.c() <= e.i().getLaunchCrashInterval()) && !(e.n() && e.q() == 0);
        try {
            zC = com.apm.insight.l.m.c(th2);
            if (zC) {
                try {
                    if (com.apm.insight.l.m.d(th2)) {
                        z12 = true;
                    } else {
                        z12 = false;
                    }
                } catch (Throwable unused) {
                    z10 = false;
                }
            } else {
                z12 = false;
            }
            z10 = z12;
        } catch (Throwable unused2) {
            zC = false;
        }
        try {
            if (z14) {
                try {
                    crashType = CrashType.LAUNCH;
                } catch (Throwable th3) {
                    th = th3;
                    z11 = false;
                    r10 = z10;
                    r11 = jCurrentTimeMillis;
                    r12 = 1;
                    try {
                        if (!com.apm.insight.l.m.c(th)) {
                            com.apm.insight.a.a(th);
                        }
                        if (!z13) {
                            if (r10 != 0) {
                                a(thread, th2, z14, r11);
                            }
                            e();
                            d();
                            c(thread, th2);
                            return null;
                        }
                        synchronized (this) {
                            this.f18910f -= r12;
                            this.f18909e -= r12;
                            return g();
                        }
                    } catch (Throwable th4) {
                        if (!z13) {
                            if (r10 != 0 && !z11) {
                                try {
                                    a(thread, th2, z14, r11);
                                } catch (Throwable unused3) {
                                    throw th4;
                                }
                            }
                            e();
                            d();
                            c(thread, th2);
                            throw th4;
                        }
                        synchronized (this) {
                            this.f18910f -= r12;
                            this.f18909e -= r12;
                            return g();
                        }
                    }
                }
            } else {
                try {
                    crashType = CrashType.JAVA;
                } catch (Throwable th5) {
                    th = th5;
                    r10 = z10;
                    r11 = jCurrentTimeMillis;
                    r12 = 1;
                    z11 = false;
                    if (!com.apm.insight.l.m.c(th)) {
                        com.apm.insight.a.a(th);
                    }
                    if (!z13) {
                        if (r10 != 0) {
                            a(thread, th2, z14, r11);
                        }
                        e();
                        d();
                        c(thread, th2);
                        return null;
                    }
                    synchronized (this) {
                        this.f18910f -= r12;
                        this.f18909e -= r12;
                        return g();
                    }
                }
            }
            String strA2 = e.a(jCurrentTimeMillis, crashType, zC, false);
            File file = new File(j.a(e.g()), strA2);
            ?? r17 = "logEventStack";
            String strA3 = a(new File(file, "logEventStack"), th2, thread, z10);
            boolean z15 = (f() & 1) != 0 || (strA3 != null && e.i().isCrashIgnored(strA3));
            try {
                JSONArray jSONArrayA = com.apm.insight.entity.b.a(th2, thread, file);
                this.f18913k = jSONArrayA;
                if (jSONArrayA == null || z15) {
                    try {
                        strA = e.a(jCurrentTimeMillis, z14 ? CrashType.LAUNCH : CrashType.JAVA, zC, true);
                        File file2 = new File(j.a(e.g()), strA);
                        file.renameTo(file2);
                        new File(file2, "logEventStack");
                        r16 = "logEventStack";
                    } catch (Throwable th6) {
                        th = th6;
                        z11 = false;
                        r13 = z10;
                        r14 = jCurrentTimeMillis;
                        r15 = 1;
                        z13 = z15;
                        r10 = r13;
                        r12 = r15;
                        r11 = r14;
                        if (!com.apm.insight.l.m.c(th)) {
                            com.apm.insight.a.a(th);
                        }
                        if (!z13) {
                            if (r10 != 0 && !z11) {
                                a(thread, th2, z14, r11);
                            }
                            e();
                            d();
                            c(thread, th2);
                            return null;
                        }
                        synchronized (this) {
                            this.f18910f -= r12;
                            this.f18909e -= r12;
                        }
                        return g();
                    }
                } else {
                    strA = strA2;
                    r16 = jSONArrayA;
                }
                com.apm.insight.a.d();
                com.apm.insight.k.b.a().b();
                z11 = com.apm.insight.runtime.a.a("exception_modules", "oom_callback") == 1;
                if (z10 && z11) {
                    r16 = z14;
                    r17 = jCurrentTimeMillis;
                    try {
                        a(thread, th2, r16, r17);
                    } catch (Throwable th7) {
                        th = th7;
                        r13 = z10;
                        r14 = jCurrentTimeMillis;
                        r15 = 1;
                        z13 = z15;
                        r10 = r13;
                        r12 = r15;
                        r11 = r14;
                        if (!com.apm.insight.l.m.c(th)) {
                            com.apm.insight.a.a(th);
                        }
                        if (!z13) {
                            if (r10 != 0) {
                                a(thread, th2, z14, r11);
                            }
                            e();
                            d();
                            c(thread, th2);
                            return null;
                        }
                        synchronized (this) {
                            this.f18910f -= r12;
                            this.f18909e -= r12;
                            return g();
                        }
                    }
                }
                ?? ValueOf = String.valueOf(z14);
                com.apm.insight.a.a((Object) "[uncaughtException] isLaunchCrash=".concat(ValueOf));
                com.apm.insight.a.a.a();
                boolean zB = b(thread, th2);
                try {
                    if (!zB || (cVar = this.f18907c) == null || !z14) {
                        ValueOf = z10;
                        r17 = jCurrentTimeMillis;
                        r16 = 1;
                        if (zB) {
                            ?? r18 = this.f18908d;
                            if (r18 != 0) {
                                ValueOf = ValueOf;
                                r16 = r16;
                                r17 = r17;
                                r18.a(r17, thread, th2, strA, strA3, z15);
                                com.apm.insight.a.a((Object) ("[uncaughtException] mLaunchCrashDisposer " + th2.toString()));
                                ValueOf = ValueOf;
                                r16 = r16;
                                r17 = r17;
                            }
                        }
                        if (!z15) {
                            if (ValueOf != 0 && !z11) {
                                a(thread, th2, z14, r17);
                            }
                            e();
                            d();
                            c(thread, th2);
                            return null;
                        }
                        synchronized (this) {
                            this.f18910f -= r16;
                            this.f18909e -= r16;
                        }
                        return g();
                    }
                    ValueOf = z10;
                    r17 = jCurrentTimeMillis;
                    r16 = 1;
                    cVar.a(jCurrentTimeMillis, thread, th2, strA, strA3, z15);
                    com.apm.insight.a.a((Object) ("[uncaughtException] mLaunchCrashDisposer " + th2.toString()));
                    ValueOf = ValueOf;
                    r16 = r16;
                    r17 = r17;
                    if (!z15) {
                        if (ValueOf != 0) {
                            a(thread, th2, z14, r17);
                        }
                        e();
                        d();
                        c(thread, th2);
                        return null;
                    }
                    synchronized (this) {
                        this.f18910f -= r16;
                        this.f18909e -= r16;
                        return g();
                    }
                } catch (Throwable th8) {
                    th = th8;
                    r13 = ValueOf;
                    r15 = r16;
                    r14 = r17;
                    z13 = z15;
                    r10 = r13;
                    r12 = r15;
                    r11 = r14;
                    if (!com.apm.insight.l.m.c(th)) {
                        com.apm.insight.a.a(th);
                    }
                    if (!z13) {
                        if (r10 != 0) {
                            a(thread, th2, z14, r11);
                        }
                        e();
                    } else {
                        synchronized (this) {
                            this.f18910f -= r12;
                            this.f18909e -= r12;
                            return g();
                        }
                    }
                }
            } catch (Throwable th9) {
                th = th9;
                r13 = z10;
                r14 = jCurrentTimeMillis;
                r15 = 1;
                z11 = false;
            }
        } catch (Throwable unused4) {
        }
    }

    public static boolean b() {
        return f18902i;
    }

    private String a(File file, Throwable th2, Thread thread, boolean z10) {
        String absolutePath = file.getAbsolutePath();
        this.f18912h.put(file.getName(), file);
        try {
            file.getParentFile().mkdirs();
            file.createNewFile();
            NativeImpl.c(absolutePath);
        } catch (Throwable unused) {
        }
        String strA = null;
        if (z10) {
            int iH = NativeImpl.h(absolutePath);
            if (iH > 0) {
                try {
                    e.g();
                    NativeImpl.a(iH, com.apm.insight.l.a.b());
                    NativeImpl.a(iH, "\n");
                    NativeImpl.a(iH, th2.getMessage());
                    NativeImpl.a(iH, "\n");
                    NativeImpl.a(iH, th2.getClass().getName());
                    if (th2.getMessage() != null) {
                        NativeImpl.a(iH, ": ");
                        NativeImpl.a(iH, th2.getMessage());
                    }
                    NativeImpl.a(iH, "\n");
                    NativeImpl.a(iH, thread.getName());
                    NativeImpl.a(iH, "\n");
                } catch (Throwable unused2) {
                }
                try {
                    NativeImpl.a(iH, "stack:");
                    NativeImpl.a(iH, "\n");
                } catch (Throwable unused3) {
                }
                com.apm.insight.l.m.a(th2, iH);
                NativeImpl.b(iH);
            }
        } else {
            try {
                FileOutputStream fileOutputStream = new FileOutputStream(file, true);
                try {
                    StringBuilder sb2 = new StringBuilder();
                    e.g();
                    sb2.append(com.apm.insight.l.a.b());
                    sb2.append("\n");
                    fileOutputStream.write(sb2.toString().getBytes());
                    fileOutputStream.write((th2.getMessage() + "\n").getBytes());
                    fileOutputStream.write((th2 + "\n").getBytes());
                    fileOutputStream.write((thread.getName() + "\n").getBytes());
                } catch (Throwable unused4) {
                }
                try {
                    fileOutputStream.write("stack:\n".getBytes());
                } catch (Throwable unused5) {
                }
                try {
                    strA = com.apm.insight.l.m.a(th2, new PrintStream(fileOutputStream), Looper.getMainLooper() == Looper.myLooper() ? new com.apm.insight.l.e.a() {

                        private boolean f18914a = false;

                        @Override
                        public final boolean a(String str) {
                            if (!this.f18914a && str.contains("android.os.Looper.loop")) {
                                this.f18914a = true;
                            }
                            return !this.f18914a;
                        }
                    } : new com.apm.insight.l.e.a());
                    com.apm.insight.a.a((Closeable) fileOutputStream);
                } catch (Throwable th3) {
                    try {
                        th2.printStackTrace(new PrintStream(fileOutputStream));
                    } catch (Throwable th4) {
                        try {
                            fileOutputStream.write("err:\n".getBytes());
                            fileOutputStream.write((th3 + "\n").getBytes());
                            fileOutputStream.write((th4 + "\n").getBytes());
                        } catch (Throwable unused6) {
                        }
                    }
                }
                com.apm.insight.a.a((Closeable) fileOutputStream);
            } catch (Throwable unused7) {
            }
        }
        return strA;
    }

    public final void a(Thread thread, Throwable th2, boolean z10, com.apm.insight.entity.a aVar) {
        List<ICrashCallback> listC;
        CrashType crashType;
        if (z10) {
            listC = l.a().b();
            crashType = CrashType.LAUNCH;
        } else {
            listC = l.a().c();
            crashType = CrashType.JAVA;
        }
        for (ICrashCallback iCrashCallback : listC) {
            long jUptimeMillis = SystemClock.uptimeMillis();
            try {
                if (iCrashCallback instanceof com.apm.insight.b) {
                    ((com.apm.insight.b) iCrashCallback).a(crashType, com.apm.insight.l.m.a(th2), thread, this.f18913k);
                } else {
                    iCrashCallback.onCrash(crashType, com.apm.insight.l.m.a(th2), thread);
                }
                aVar.b("callback_cost_" + iCrashCallback.getClass().getName(), String.valueOf(SystemClock.uptimeMillis() - jUptimeMillis));
            } catch (Throwable th3) {
                com.apm.insight.a.b(th3);
                aVar.b("callback_err_" + iCrashCallback.getClass().getName(), String.valueOf(SystemClock.uptimeMillis() - jUptimeMillis));
            }
        }
    }

    private void a(Thread thread, Throwable th2, boolean z10, long j10) {
        List<IOOMCallback> listA = l.a().a();
        CrashType crashType = z10 ? CrashType.LAUNCH : CrashType.JAVA;
        for (IOOMCallback iOOMCallback : listA) {
            try {
                if (iOOMCallback instanceof com.apm.insight.b) {
                    ((com.apm.insight.b) iOOMCallback).a(crashType, th2, thread, j10, this.f18913k);
                } else {
                    iOOMCallback.onCrash(crashType, th2, thread, j10);
                }
            } catch (Throwable th3) {
                com.apm.insight.a.b(th3);
            }
        }
    }

    public final void a(String str) {
        this.f18911g.put(str, new Object());
    }

    public static void a(final Throwable th2) {
        if (th2 == null) {
            return;
        }
        try {
            m.a().a(new Runnable() {
                @Override
                public final void run() {
                    try {
                        com.apm.insight.entity.a aVarA = com.apm.insight.entity.a.a(System.currentTimeMillis(), e.g(), th2);
                        aVarA.a("userdefine", (Object) 1);
                        com.apm.insight.entity.a aVarA2 = com.apm.insight.runtime.a.f.a().a(CrashType.CUSTOM_JAVA, aVarA);
                        if (aVarA2 != null) {
                            com.apm.insight.k.d.a().c(aVarA2.c());
                        }
                    } catch (Throwable unused) {
                    }
                }
            });
        } catch (Throwable unused) {
        }
    }

    public static void a(long j10) {
        f18904l = j10;
    }
}
