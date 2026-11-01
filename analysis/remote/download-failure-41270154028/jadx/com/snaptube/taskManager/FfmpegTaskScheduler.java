package com.snaptube.taskManager;

import android.content.Context;
import com.dayuwuxian.em.api.proto.PluginInfo;
import com.snaptube.dataadapter.utils.TextUtils;
import com.snaptube.plugin.PluginId;
import com.snaptube.plugin.PluginInstallationStatus;
import com.snaptube.plugin.PluginStatus;
import com.snaptube.premium.app.PhoenixApplication;
import com.snaptube.premium.configs.Config;
import com.snaptube.taskManager.datasets.TaskInfo;
import com.snaptube.util.ProductionEnv;
import java.io.File;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import o.az7;
import o.b35;
import o.ca8;
import o.ge2;
import o.ix6;
import o.ke2;
import o.l3;
import o.ne2;
import o.p40;
import o.q55;
import o.ri2;
import o.yj2;

public class FfmpegTaskScheduler {
    public static final String h = "FfmpegTaskScheduler";
    public static volatile FfmpegTaskScheduler i;
    public static final AtomicInteger j = new AtomicInteger(0);
    public static volatile int k = -1;
    public final Context a = PhoenixApplication.z();
    public final AtomicLong b = new AtomicLong(1);
    public final Object c = new Object();
    public final LinkedHashMap d = new LinkedHashMap();
    public final LinkedHashMap e = new LinkedHashMap();
    public final p40 f = new ke2();
    public e g;

    public enum Status {
        PENDING,
        WAITING_FOR_CODEC_PLUGIN,
        RUNNING,
        SUCCESS,
        FAILED,
        CANCELED,
        WARNING,
        PAUSE
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface TaskType {
        public static final int FFMPEG_TASK_COMBINE_IMAGES = 5;
        public static final int FFMPEG_TASK_COMBINE_TS = 6;
        public static final int FFMPEG_TASK_COMBIN_HD = 3;
        public static final int FFMPEG_TASK_EXTRACT_MP3 = 2;
        public static final int FFMPEG_TASK_M4A_MP3 = 4;
        public static final int FFMPEG_TASK_MUXES_WEBM = 1;
        public static final int FFMPEG_TASK_TRANS_MP3 = 0;
    }

    public class a implements l3 {
        public a() {
        }

        public void a(PluginInstallationStatus pluginInstallationStatus) {
            PluginId pluginIdB = pluginInstallationStatus.b();
            PluginId pluginId = PluginId.FFMPEG;
            if (pluginIdB == pluginId) {
                int i = c.b[pluginInstallationStatus.c().ordinal()];
                if (i == 1 || i == 2 || i == 3) {
                    if (pluginId.isSupported()) {
                        FfmpegTaskScheduler.d(FfmpegTaskScheduler.this);
                        return;
                    }
                    FfmpegTaskScheduler.c(FfmpegTaskScheduler.this, "plugin status: " + pluginInstallationStatus.c() + " detail: " + pluginInstallationStatus.a());
                }
            }
        }

        @Override
        public void call(Object obj) {
            a((PluginInstallationStatus) obj);
        }
    }

    public class b implements ge2 {
        public final d a;
        public final long b;

        public b(d dVar, long j) {
            this.a = dVar;
            this.b = j;
        }

        @Override
        public void a(int i) {
            f fVar = this.a.h;
            if (fVar != null) {
                fVar.a(i);
            }
        }

        @Override
        public void b(String str, String str2) {
            ProductionEnv.d(FfmpegTaskScheduler.e(), "onFinish( " + str2 + " )");
            FfmpegTaskScheduler.g();
            FfmpegTaskScheduler.b(FfmpegTaskScheduler.this, this.b);
            if (this.a.h != null) {
                long jCurrentTimeMillis = System.currentTimeMillis();
                d dVar = this.a;
                ne2.d(dVar.h.b(), str, jCurrentTimeMillis - dVar.j, "ffmpeg_finish", str2, f());
            }
        }

        @Override
        public void c(String str, String str2) {
            ProductionEnv.d(FfmpegTaskScheduler.e(), "onSuccess() " + str2);
            FfmpegTaskScheduler.g();
            if (this.a.h != null) {
                long jCurrentTimeMillis = System.currentTimeMillis();
                d dVar = this.a;
                long j = jCurrentTimeMillis - dVar.j;
                dVar.h.c(Status.SUCCESS, str2);
                ne2.d(this.a.h.b(), str, j, "ffmpeg_succ", str2, f());
            }
        }

        @Override
        public void d(String str, String str2) {
            ProductionEnv.d(FfmpegTaskScheduler.e(), "onFailure() " + str2);
            FfmpegTaskScheduler.g();
            if (this.a.h != null) {
                long jCurrentTimeMillis = System.currentTimeMillis();
                d dVar = this.a;
                long j = jCurrentTimeMillis - dVar.j;
                String strA = FfmpegTaskScheduler.a(FfmpegTaskScheduler.this, dVar, str2);
                this.a.h.c(Status.FAILED, "ffmpeg execute onFailure:" + strA);
                ne2.d(this.a.h.b(), str, j, "ffmpeg_fail", strA, f());
            }
        }

        @Override
        public void e(String str, String str2, p40.a aVar) {
            ProductionEnv.d(FfmpegTaskScheduler.e(), "onStart( " + str2 + " )");
            FfmpegTaskScheduler.f();
            this.a.j = System.currentTimeMillis();
            f fVar = this.a.h;
            if (fVar != null) {
                ne2.c(fVar.b(), str, 0L, "ffmpeg_start", str2);
            }
            this.a.m = aVar;
        }

        public final long f() {
            d dVar = this.a;
            if (dVar == null || dVar.e == null) {
                return 0L;
            }
            File file = new File(this.a.e);
            if (file.exists()) {
                return file.length();
            }
            return 0L;
        }
    }

    public static class c {
        public static final int[] a;
        public static final int[] b;

        static {
            int[] iArr = new int[PluginInstallationStatus.Status.values().length];
            b = iArr;
            try {
                iArr[PluginInstallationStatus.Status.SUCCESS.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                b[PluginInstallationStatus.Status.FAILED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                b[PluginInstallationStatus.Status.CANCELED.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                b[PluginInstallationStatus.Status.PENDING.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                b[PluginInstallationStatus.Status.INSTALLING.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            int[] iArr2 = new int[PluginStatus.values().length];
            a = iArr2;
            try {
                iArr2[PluginStatus.UNSUPPORTED.ordinal()] = 1;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                a[PluginStatus.NOT_INSTALLED.ordinal()] = 2;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                a[PluginStatus.NEED_UPGRADE.ordinal()] = 3;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                a[PluginStatus.INSTALLED.ordinal()] = 4;
            } catch (NoSuchFieldError unused9) {
            }
        }
    }

    public static class d {
        public final long a;
        public final int b;
        public final String c;
        public final String d;
        public final String e;
        public final String f;
        public final int g;
        public final f h;
        public boolean i;
        public long j;
        public int k;
        public long l;
        public p40.a m;

        public static final class a {
            public long a;
            public int b;
            public String c = "";
            public String d = "";
            public String e = "";
            public String f = "";
            public int g = 0;
            public f h = null;
            public boolean i = false;
            public long j = 0;

            public a(long j, int i) {
                this.a = j;
                this.b = i;
            }

            public static int a(a aVar) {
                return aVar.g;
            }

            public static boolean b(a aVar) {
                return aVar.i;
            }

            public static int c(a aVar) {
                return aVar.b;
            }

            public static long d(a aVar) {
                return aVar.j;
            }

            public static String e(a aVar) {
                return aVar.d;
            }

            public static String f(a aVar) {
                return aVar.f;
            }

            public static String g(a aVar) {
                return aVar.c;
            }

            public static f h(a aVar) {
                return aVar.h;
            }

            public static String i(a aVar) {
                return aVar.e;
            }

            public static long j(a aVar) {
                return aVar.a;
            }

            public a k(int i) {
                this.g = i;
                return this;
            }

            public d l() {
                return new d(this, null);
            }

            public a m(long j) {
                this.j = j;
                return this;
            }

            public a n(String str) {
                this.d = str;
                return this;
            }

            public a o(String str) {
                this.f = str;
                return this;
            }

            public a p(String str) {
                this.c = str;
                return this;
            }

            public a q(f fVar) {
                this.h = fVar;
                return this;
            }

            public a r(String str) {
                this.e = str;
                return this;
            }
        }

        public d(a aVar) {
            this.a = a.j(aVar);
            this.b = a.c(aVar);
            this.c = a.g(aVar);
            this.d = a.e(aVar);
            this.e = a.i(aVar);
            this.f = a.f(aVar);
            this.g = a.a(aVar);
            this.h = a.h(aVar);
            this.i = a.b(aVar);
            this.l = a.d(aVar);
        }

        public d(a aVar, ri2 ri2Var) {
            this(aVar);
        }
    }

    public interface e {
        void a();
    }

    public interface f {
        void a(int i);

        TaskInfo b();

        void c(Status status, String str);
    }

    public FfmpegTaskScheduler() {
        int iZ = z();
        if (iZ >= Config.o2()) {
            ne2.b("webm_crash", "ffmpeg_crash_count", "webm crash count: " + iZ);
        }
        I();
    }

    public static void A() {
        synchronized (FfmpegTaskScheduler.class) {
            k++;
        }
        Config.A6(k);
    }

    public static void F() {
        synchronized (FfmpegTaskScheduler.class) {
            k = 0;
        }
        Config.A6(0);
    }

    public static String a(FfmpegTaskScheduler ffmpegTaskScheduler, d dVar, String str) {
        return ffmpegTaskScheduler.i(dVar, str);
    }

    public static void b(FfmpegTaskScheduler ffmpegTaskScheduler, long j2) {
        ffmpegTaskScheduler.B(j2);
    }

    public static void c(FfmpegTaskScheduler ffmpegTaskScheduler, String str) {
        ffmpegTaskScheduler.C(str);
    }

    public static void d(FfmpegTaskScheduler ffmpegTaskScheduler) {
        ffmpegTaskScheduler.G();
    }

    public static String e() {
        return h;
    }

    public static void f() {
        A();
    }

    public static void g() {
        F();
    }

    public static long j(String str, long j2) {
        String parent = new File(str).getParent();
        long jO = yj2.Q(PhoenixApplication.z(), parent) ? az7.o() : yj2.y(parent);
        if (jO <= 0) {
            return 0L;
        }
        return (jO - j2) - 20971520;
    }

    public static long k(String str, String str2) {
        return j(str2, new File(str).length());
    }

    public static long l(String str, String str2, String str3) {
        File[] fileArrListFiles;
        File parentFile = new File(str2).getParentFile();
        long length = 0;
        if (parentFile != null && parentFile.isDirectory() && (fileArrListFiles = parentFile.listFiles()) != null) {
            for (File file : fileArrListFiles) {
                length += file.length();
            }
        }
        return j(str3, length);
    }

    public static long m(String str, String str2, String str3) {
        return j(str3, new File(str).length() + new File(str2).length());
    }

    public static FfmpegTaskScheduler y() {
        if (i == null) {
            synchronized (FfmpegTaskScheduler.class) {
                try {
                    if (i == null) {
                        i = new FfmpegTaskScheduler();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return i;
    }

    public static int z() {
        if (k == -1) {
            synchronized (FfmpegTaskScheduler.class) {
                try {
                    if (k == -1) {
                        k = Config.n2();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return k;
    }

    public final void B(long j2) {
        synchronized (this.c) {
            try {
                d dVar = (d) this.e.remove(Long.valueOf(j2));
                if (dVar != null) {
                    dVar.m = null;
                }
                G();
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void C(String str) {
        synchronized (this.c) {
            try {
                for (Map.Entry entry : this.d.entrySet()) {
                    if (((d) entry.getValue()).h != null) {
                        f fVar = ((d) entry.getValue()).h;
                        Status status = Status.FAILED;
                        StringBuilder sb = new StringBuilder();
                        sb.append(str != null ? str : "");
                        sb.append(" install plugin failed");
                        fVar.c(status, sb.toString());
                    }
                }
                this.d.clear();
                G();
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void D() {
        synchronized (this.c) {
            try {
                for (Map.Entry entry : this.d.entrySet()) {
                    if (((d) entry.getValue()).h != null) {
                        ((d) entry.getValue()).h.c(Status.WAITING_FOR_CODEC_PLUGIN, null);
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public void E() {
        b35.a();
        o();
    }

    public final void G() {
        String str;
        long jL;
        if (PluginId.FFMPEG.isSupported()) {
            synchronized (this.c) {
                try {
                    if (this.e.size() < this.f.h() && this.d.size() > 0) {
                        Long l = (Long) this.d.keySet().iterator().next();
                        d dVar = (d) this.d.remove(l);
                        f fVar = dVar.h;
                        TaskInfo taskInfoB = fVar != null ? fVar.b() : null;
                        if (taskInfoB != null) {
                            if (Config.S3()) {
                                int i2 = dVar.b;
                                if (i2 == 1) {
                                    jL = m(dVar.c, dVar.d, dVar.e);
                                    str = "jni_webm";
                                } else if (i2 == 0) {
                                    jL = k(dVar.f, dVar.e);
                                    str = "jni_mp3";
                                } else if (i2 == 2) {
                                    jL = k(dVar.f, dVar.e);
                                    str = "process_extract_mp3";
                                } else if (i2 == 3) {
                                    jL = m(dVar.c, dVar.d, dVar.e);
                                    str = "process_combine_hd";
                                } else if (i2 == 4) {
                                    jL = k(dVar.f, dVar.e);
                                    str = "process_m4a_mp3";
                                } else if (i2 == 5) {
                                    jL = l(dVar.f, dVar.d, dVar.e);
                                    str = "process_combine_images";
                                } else {
                                    str = i2 == 6 ? "process_combine_ts" : null;
                                    jL = 0;
                                }
                                if (jL < 0 && !TextUtils.isEmpty(str)) {
                                    ne2.c(taskInfoB, str, 0L, "ffmpeg_no_enough_space", "need space " + Math.abs(jL));
                                    dVar.h.c(Status.WARNING, "");
                                    G();
                                    return;
                                }
                            }
                            H(dVar, l.longValue());
                        }
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    }

    public final void H(d dVar, long j2) {
        this.e.put(Long.valueOf(j2), dVar);
        dVar.h.c(Status.RUNNING, null);
        int i2 = dVar.b;
        if (i2 == 1) {
            this.f.f(dVar.c, dVar.d, dVar.e, p(dVar, j2));
            return;
        }
        if (i2 == 0) {
            this.f.g(dVar.f, dVar.e, dVar.g, p(dVar, j2));
            return;
        }
        if (i2 == 3) {
            this.f.a(dVar.c, dVar.d, dVar.e, p(dVar, j2));
            return;
        }
        if (i2 == 4) {
            this.f.e(dVar.f, dVar.e, dVar.g, p(dVar, j2));
            return;
        }
        if (i2 == 5) {
            this.f.b(dVar.f, dVar.d, dVar.e, dVar.l, p(dVar, j2));
        } else if (i2 == 6) {
            this.f.c(dVar.f, dVar.e, p(dVar, j2));
        } else {
            this.f.d(dVar.f, dVar.e, p(dVar, j2));
        }
    }

    public final void I() {
        PhoenixApplication.I().y().a().z0(ix6.a()).t0(new a());
    }

    public void h(e eVar) {
        this.g = eVar;
    }

    public final String i(d dVar, String str) {
        long jY;
        long length;
        int i2 = dVar.b;
        if (i2 == 0 || i2 == 4) {
            jY = yj2.y(dVar.f);
            length = new File(dVar.f).length();
        } else if (i2 == 1 || i2 == 3) {
            jY = yj2.y(dVar.d);
            length = new File(dVar.d).length() + new File(dVar.c).length();
        } else {
            jY = yj2.y(dVar.f);
            length = new File(dVar.f).length();
        }
        if (str == null) {
            str = "";
        }
        StringBuilder sb = new StringBuilder(str);
        sb.append(" available space：");
        sb.append(jY);
        sb.append(" need space: ");
        sb.append(length);
        sb.append(" isFull: ");
        sb.append(jY <= length ? "true" : "false");
        sb.append(";");
        ca8.b(sb, new File(dVar.f), new File(dVar.e));
        return sb.toString();
    }

    public void n(long j2) {
        f fVar;
        synchronized (this.c) {
            try {
                d dVar = (d) this.e.remove(Long.valueOf(j2));
                String strValueOf = "";
                if (dVar != null) {
                    dVar.i = true;
                    strValueOf = String.valueOf(dVar.k);
                    p40.a aVar = dVar.m;
                    if (aVar != null) {
                        aVar.a();
                    }
                    G();
                } else {
                    dVar = (d) this.d.remove(Long.valueOf(j2));
                }
                if (dVar != null && (fVar = dVar.h) != null) {
                    fVar.c(Status.CANCELED, strValueOf);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final synchronized void o() {
        try {
            com.snaptube.plugin.a aVarI = PhoenixApplication.I();
            PluginId pluginId = PluginId.FFMPEG;
            int i2 = c.a[aVarI.z(pluginId).ordinal()];
            if (i2 == 1 || i2 == 2 || i2 == 3) {
                if (!aVarI.n(this.a)) {
                    if (q55.G(this.a) && aVarI.t()) {
                        aVarI.n(this.a);
                    } else if (q55.A(this.a) && Config.R3()) {
                        aVarI.P(this.a);
                    }
                }
                D();
                if (aVarI.z(pluginId) == PluginStatus.UNSUPPORTED) {
                    PluginInfo pluginInfoV = aVarI.v(pluginId);
                    StringBuilder sb = new StringBuilder();
                    sb.append("unsupported");
                    if (pluginInfoV != null) {
                        sb.append("pluginInfo Supported " + pluginInfoV.supported);
                    } else {
                        sb.append("pluginInfo == null");
                    }
                    C(sb.toString());
                }
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public final ge2 p(d dVar, long j2) {
        return new b(dVar, j2);
    }

    public long q(String str, String str2, int i2, f fVar) {
        e eVar = this.g;
        if (eVar != null) {
            eVar.a();
        }
        long jIncrementAndGet = this.b.incrementAndGet();
        synchronized (this.c) {
            try {
                this.d.put(Long.valueOf(jIncrementAndGet), new d.a(jIncrementAndGet, 0).o(str).r(str2).k(i2).q(fVar).l());
                if (fVar != null) {
                    fVar.c(Status.PENDING, null);
                }
                o();
                G();
            } catch (Throwable th) {
                throw th;
            }
        }
        return jIncrementAndGet;
    }

    public long r(String str, String str2, f fVar) {
        long jIncrementAndGet = this.b.incrementAndGet();
        synchronized (this.c) {
            try {
                this.d.put(Long.valueOf(jIncrementAndGet), new d.a(jIncrementAndGet, 2).o(str).r(str2).q(fVar).l());
                if (fVar != null) {
                    fVar.c(Status.PENDING, null);
                }
                o();
                G();
            } catch (Throwable th) {
                throw th;
            }
        }
        return jIncrementAndGet;
    }

    public long s(String str, String str2, String str3, f fVar) {
        long jIncrementAndGet = this.b.incrementAndGet();
        synchronized (this.c) {
            try {
                this.d.put(Long.valueOf(jIncrementAndGet), new d.a(jIncrementAndGet, 1).p(str).n(str2).r(str3).q(fVar).l());
                if (fVar != null) {
                    fVar.c(Status.PENDING, null);
                }
                o();
                G();
            } catch (Throwable th) {
                throw th;
            }
        }
        return jIncrementAndGet;
    }

    public long t(String str, String str2, String str3, f fVar) {
        long jIncrementAndGet = this.b.incrementAndGet();
        synchronized (this.c) {
            try {
                this.d.put(Long.valueOf(jIncrementAndGet), new d.a(jIncrementAndGet, 3).p(str).n(str2).r(str3).q(fVar).l());
                if (fVar != null) {
                    fVar.c(Status.PENDING, null);
                }
                o();
                G();
            } catch (Throwable th) {
                throw th;
            }
        }
        return jIncrementAndGet;
    }

    public long u(String str, String str2, String str3, long j2, f fVar) {
        long jIncrementAndGet = this.b.incrementAndGet();
        synchronized (this.c) {
            try {
                this.d.put(Long.valueOf(jIncrementAndGet), new d.a(jIncrementAndGet, 5).o(str).n(str2).m(j2).r(str3).q(fVar).l());
                if (fVar != null) {
                    fVar.c(Status.PENDING, null);
                }
                o();
                G();
            } catch (Throwable th) {
                throw th;
            }
        }
        return jIncrementAndGet;
    }

    public long v(String str, String str2, f fVar) {
        long jIncrementAndGet = this.b.incrementAndGet();
        synchronized (this.c) {
            try {
                this.d.put(Long.valueOf(jIncrementAndGet), new d.a(jIncrementAndGet, 6).o(str).r(str2).q(fVar).l());
                if (fVar != null) {
                    fVar.c(Status.PENDING, null);
                }
                o();
                G();
            } catch (Throwable th) {
                throw th;
            }
        }
        return jIncrementAndGet;
    }

    public long w(String str, String str2, int i2, f fVar) {
        long jIncrementAndGet = this.b.incrementAndGet();
        synchronized (this.c) {
            try {
                this.d.put(Long.valueOf(jIncrementAndGet), new d.a(jIncrementAndGet, 4).o(str).r(str2).k(i2).q(fVar).l());
                if (fVar != null) {
                    fVar.c(Status.PENDING, null);
                }
                o();
                G();
            } catch (Throwable th) {
                throw th;
            }
        }
        return jIncrementAndGet;
    }

    public int x() {
        int size;
        if (Config.q3()) {
            return 0;
        }
        synchronized (this.c) {
            size = this.d.size() + this.e.size();
        }
        return size;
    }
}
