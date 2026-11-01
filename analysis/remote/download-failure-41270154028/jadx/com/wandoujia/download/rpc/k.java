package com.wandoujia.download.rpc;

import com.snaptube.taskManager.FfmpegTaskScheduler;
import com.snaptube.taskManager.datasets.TaskInfo;
import com.snaptube.util.ProductionEnv;
import java.io.File;
import o.hf2;
import o.pg1;
import o.yj2;

public final class k {
    public static final b e = new b(null);
    public final a a;
    public final TaskInfo b = new TaskInfo(TaskInfo.TaskType.UNKNOWN);
    public long c = -1;
    public int d;

    public interface a {
        void a(String str);

        void b(float f);

        void e();
    }

    public static final class b {
        public b() {
        }

        public b(pg1 pg1Var) {
            this();
        }
    }

    public static final class c implements FfmpegTaskScheduler.f {
        public float a;
        public final File c;
        public final File d;
        public final String e;

        public class a {
            public static final int[] a;

            static {
                int[] iArr = new int[FfmpegTaskScheduler.Status.values().length];
                try {
                    iArr[FfmpegTaskScheduler.Status.RUNNING.ordinal()] = 1;
                } catch (NoSuchFieldError unused) {
                }
                try {
                    iArr[FfmpegTaskScheduler.Status.SUCCESS.ordinal()] = 2;
                } catch (NoSuchFieldError unused2) {
                }
                try {
                    iArr[FfmpegTaskScheduler.Status.FAILED.ordinal()] = 3;
                } catch (NoSuchFieldError unused3) {
                }
                try {
                    iArr[FfmpegTaskScheduler.Status.CANCELED.ordinal()] = 4;
                } catch (NoSuchFieldError unused4) {
                }
                a = iArr;
            }
        }

        public c(File file, File file2, String str) {
            this.c = file;
            this.d = file2;
            this.e = str;
        }

        @Override
        public void a(int i) {
            float fA = k.a(k.this, this.a);
            this.a = fA;
            ProductionEnv.d("TsCombineDelegate", "onProgress progress " + fA);
            a aVarB = k.b(k.this);
            if (aVarB != null) {
                aVarB.b(this.a);
            }
        }

        @Override
        public TaskInfo b() {
            return k.c(k.this);
        }

        @Override
        public void c(FfmpegTaskScheduler.Status status, String str) {
            a aVarB;
            ProductionEnv.d("TsCombineDelegate", "onStatusChanged " + (status != null ? status.name() : null) + " details = " + str);
            int i = status == null ? -1 : a.a[status.ordinal()];
            if (i == 1) {
                a aVarB2 = k.b(k.this);
                if (aVarB2 != null) {
                    aVarB2.b(0.0f);
                    return;
                }
                return;
            }
            if (i != 2) {
                if ((i == 3 || i == 4) && (aVarB = k.b(k.this)) != null) {
                    aVarB.a(str);
                    return;
                }
                return;
            }
            if (this.c.exists()) {
                this.c.delete();
            }
            yj2.W(this.d.getAbsolutePath(), this.e);
            a aVarB3 = k.b(k.this);
            if (aVarB3 != null) {
                aVarB3.e();
            }
        }
    }

    public k(a aVar) {
        this.a = aVar;
    }

    public static final float a(k kVar, float f) {
        return kVar.d(f);
    }

    public static final a b(k kVar) {
        return kVar.a;
    }

    public static final TaskInfo c(k kVar) {
        return kVar.b;
    }

    public final float d(float f) {
        float f2;
        int i = this.d;
        if (i < 100) {
            f2 = 0.1f;
        } else if (i < 500) {
            f2 = 0.04f;
        } else if (i < 1000) {
            f2 = 0.03f;
        } else {
            f2 = i < 1500 ? 0.02f : 0.01f;
        }
        return hf2.a.c(f, f2);
    }

    public final void e() {
        if (this.c > 0) {
            FfmpegTaskScheduler.y().n(this.c);
            this.c = -1L;
        }
    }

    public final void f(String str, String str2) {
        if (!yj2.v(str)) {
            a aVar = this.a;
            if (aVar != null) {
                aVar.a("tsFileList not exist");
                return;
            }
            return;
        }
        if (str2 == null || str2.length() == 0) {
            a aVar2 = this.a;
            if (aVar2 != null) {
                aVar2.a("outputFilePath isNullOrEmpty");
                return;
            }
            return;
        }
        e();
        File file = new File(str2);
        File file2 = new File(file.getParentFile(), "output_temp.ts");
        this.c = FfmpegTaskScheduler.y().v(str, file2.getAbsolutePath(), new c(file, file2, str2));
    }

    public final void g(int i) {
        this.d = i;
    }
}
