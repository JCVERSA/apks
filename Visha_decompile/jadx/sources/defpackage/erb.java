package defpackage;

import com.transsion.videodownloader.model.VideoTaskItem;
import java.io.File;
import java.util.Map;
import java.util.concurrent.ThreadPoolExecutor;

public abstract class erb {
    public static final int o;
    public static final int p;
    public final VideoTaskItem a;
    public final String b;
    public Map c;
    public File d;
    public String e;
    public ThreadPoolExecutor f;
    public xu4 g;
    public volatile boolean h = false;
    public final Object i = new Object();
    public long j = 0;
    public long k = 0;
    public long l = 0;
    public float m = 0.0f;
    public float n = 0.0f;

    static {
        int iAvailableProcessors = Runtime.getRuntime().availableProcessors();
        o = iAvailableProcessors;
        p = Math.max(2, Math.min(iAvailableProcessors - 1, 4));
    }

    public erb(VideoTaskItem videoTaskItem, Map map) {
        this.a = videoTaskItem;
        this.c = map;
        this.b = videoTaskItem.getFinalUrl();
        this.e = frb.c(videoTaskItem.getUrl());
        File file = new File(frb.d().a(), this.e);
        this.d = file;
        if (!file.exists()) {
            this.d.mkdir();
        }
        videoTaskItem.setSaveDir(this.d.getAbsolutePath());
    }

    public void a(Exception exc) {
        ThreadPoolExecutor threadPoolExecutor = this.f;
        if (threadPoolExecutor == null || !threadPoolExecutor.isShutdown()) {
            this.f.shutdownNow();
            this.g.b(exc);
        }
    }

    public void b() {
        xu4 xu4Var = this.g;
        if (xu4Var != null) {
            xu4Var.e();
        }
    }

    public abstract void c();

    public void d(xu4 xu4Var) {
        this.g = xu4Var;
    }

    public abstract void e();
}
