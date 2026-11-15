package com.bykv.vk.openvk.preload.geckox;

import android.content.Context;
import android.text.TextUtils;
import com.bykv.vk.openvk.preload.geckox.net.INetWork;
import com.bykv.vk.openvk.preload.geckox.statistic.IStatisticMonitor;
import java.io.File;
import java.util.Arrays;
import java.util.List;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import org.json.JSONObject;

public class b {

    private static IThreadPoolCallback f19981r;

    private static ThreadPoolExecutor f19982s;

    private final Context f19983a;

    private final com.bykv.vk.openvk.preload.geckox.a.a.c f19984b;

    private final IStatisticMonitor f19985c;

    private final INetWork f19986d;

    private final List<String> f19987e;

    private final List<String> f19988f;

    private final com.bykv.vk.openvk.preload.geckox.a.a.a f19989g;

    private final Long f19990h;

    private final String f19991i;

    private final String f19992j;

    private final String f19993k;

    private final String f19994l;

    private final String f19995m;

    private final File f19996n;

    private final boolean f19997o;

    private final long f19998p;

    private JSONObject f19999q;

    public static class a {

        private INetWork f20000a;

        private List<String> f20001b;

        private List<String> f20002c;

        private Context f20003d;

        private com.bykv.vk.openvk.preload.geckox.a.a.c f20004e;

        private IStatisticMonitor f20005f;

        private boolean f20006g = true;

        private com.bykv.vk.openvk.preload.geckox.a.a.a f20007h;

        private Long f20008i;

        private String f20009j;

        private String f20010k;

        private String f20011l;

        private File f20012m;

        private String f20013n;

        private String f20014o;

        private long f20015p;

        public a(Context context) {
            this.f20003d = context.getApplicationContext();
        }

        public final a a(String... strArr) {
            this.f20002c = Arrays.asList(strArr);
            return this;
        }

        public final a b(String... strArr) {
            this.f20001b = Arrays.asList(strArr);
            return this;
        }

        public final a c(String str) {
            this.f20011l = str;
            return this;
        }

        public final a a(INetWork iNetWork) {
            this.f20000a = iNetWork;
            return this;
        }

        public final a b() {
            this.f20008i = 38L;
            return this;
        }

        public final a a(long j10) {
            this.f20015p = j10;
            return this;
        }

        public final a b(String str) {
            this.f20010k = str;
            return this;
        }

        public final a a(IStatisticMonitor iStatisticMonitor) {
            this.f20005f = iStatisticMonitor;
            return this;
        }

        public final a a() {
            this.f20006g = false;
            return this;
        }

        public final a a(com.bykv.vk.openvk.preload.geckox.a.a.a aVar) {
            this.f20007h = aVar;
            return this;
        }

        public final a a(String str) {
            this.f20009j = str;
            return this;
        }

        public final a a(File file) {
            this.f20012m = file;
            return this;
        }
    }

    b(a aVar, byte b10) {
        this(aVar);
    }

    public static Executor g() {
        return t();
    }

    public static Executor h() {
        return t();
    }

    public static ExecutorService t() {
        IThreadPoolCallback iThreadPoolCallback = f19981r;
        ExecutorService threadPool = iThreadPoolCallback != null ? iThreadPoolCallback.getThreadPool() : null;
        if (threadPool != null) {
            return threadPool;
        }
        if (f19982s == null) {
            synchronized (b.class) {
                try {
                    if (f19982s == null) {
                        ThreadPoolExecutor threadPoolExecutor = new ThreadPoolExecutor(2, 2, 20L, TimeUnit.SECONDS, new LinkedBlockingQueue());
                        f19982s = threadPoolExecutor;
                        threadPoolExecutor.allowCoreThreadTimeOut(true);
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
        return f19982s;
    }

    public final Context a() {
        return this.f19983a;
    }

    public final com.bykv.vk.openvk.preload.geckox.a.a.a b() {
        return this.f19989g;
    }

    public final boolean c() {
        return this.f19997o;
    }

    public final List<String> d() {
        return this.f19988f;
    }

    public final List<String> e() {
        return this.f19987e;
    }

    public final JSONObject f() {
        return this.f19999q;
    }

    public final INetWork i() {
        return this.f19986d;
    }

    public final String j() {
        return this.f19993k;
    }

    public final long k() {
        return this.f19990h.longValue();
    }

    public final String l() {
        return this.f19995m;
    }

    public final String m() {
        return this.f19994l;
    }

    public final File n() {
        return this.f19996n;
    }

    public final String o() {
        return this.f19991i;
    }

    public final com.bykv.vk.openvk.preload.geckox.a.a.c p() {
        return this.f19984b;
    }

    public final IStatisticMonitor q() {
        return this.f19985c;
    }

    public final String r() {
        return this.f19992j;
    }

    public final long s() {
        return this.f19998p;
    }

    private b(a aVar) {
        Context context = aVar.f20003d;
        this.f19983a = context;
        if (context == null) {
            throw new IllegalArgumentException("context == null");
        }
        List<String> list = aVar.f20001b;
        this.f19987e = list;
        this.f19988f = aVar.f20002c;
        this.f19984b = aVar.f20004e;
        this.f19989g = aVar.f20007h;
        Long l10 = aVar.f20008i;
        this.f19990h = l10;
        if (TextUtils.isEmpty(aVar.f20009j)) {
            this.f19991i = com.bykv.vk.openvk.preload.geckox.utils.a.a(context);
        } else {
            this.f19991i = aVar.f20009j;
        }
        String str = aVar.f20010k;
        this.f19992j = str;
        this.f19994l = aVar.f20013n;
        this.f19995m = aVar.f20014o;
        this.f19998p = aVar.f20015p;
        if (aVar.f20012m == null) {
            this.f19996n = new File(context.getFilesDir(), "gecko_offline_res_x");
        } else {
            this.f19996n = aVar.f20012m;
        }
        String str2 = aVar.f20011l;
        this.f19993k = str2;
        if (TextUtils.isEmpty(str2)) {
            throw new IllegalArgumentException("host == null");
        }
        if (list == null || list.isEmpty()) {
            throw new IllegalArgumentException("access key empty");
        }
        if (l10 == null) {
            throw new IllegalArgumentException("appId == null");
        }
        if (TextUtils.isEmpty(str)) {
            throw new IllegalArgumentException("deviceId key empty");
        }
        this.f19986d = aVar.f20000a;
        this.f19985c = aVar.f20005f;
        this.f19997o = aVar.f20006g;
    }

    public final void a(JSONObject jSONObject) {
        this.f19999q = jSONObject;
    }

    public static void a(IThreadPoolCallback iThreadPoolCallback) {
        f19981r = iThreadPoolCallback;
    }
}
