package com.bykv.vk.openvk.Sj.Sj.sP.sP;

import android.os.Process;
import android.text.TextUtils;
import android.util.Log;
import android.util.SparseArray;
import com.bykv.vk.openvk.Sj.Sj.sP.sP.Sj.TKC;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.LinkedBlockingDeque;
import java.util.concurrent.RejectedExecutionHandler;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

public class EjP {

    private static volatile EjP f19582k;

    private volatile int f19583a = 163840;

    private final SparseArray f19584b;

    private final sP f19585c;

    private final ExecutorService f19586d;

    private volatile com.bykv.vk.openvk.Sj.Sj.sP.sP.sP.e f19587e;

    private volatile TKC f19588f;

    private final HashSet f19589g;

    private final com.bykv.vk.openvk.Sj.Sj.sP.sP.sP.b f19590h;

    private volatile String f19591i;

    private volatile boolean f19592j;

    class a implements com.bykv.vk.openvk.Sj.Sj.sP.sP.sP.b {
        a() {
        }

        @Override
        public void a(com.bykv.vk.openvk.Sj.Sj.sP.sP.sP sPVar) {
            int iVS = sPVar.vS();
            synchronized (EjP.this.f19584b) {
                try {
                    Map map = (Map) EjP.this.f19584b.get(iVS);
                    if (map != null) {
                        map.remove(sPVar.Dq);
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
            if (com.bykv.vk.openvk.Sj.Sj.sP.sP.a.f19620b) {
                new StringBuilder("afterExecute, key: ").append(sPVar.Dq);
            }
        }
    }

    static class b implements RejectedExecutionHandler {

        final sP f19594a;

        b(sP sPVar) {
            this.f19594a = sPVar;
        }

        @Override
        public void rejectedExecution(Runnable runnable, ThreadPoolExecutor threadPoolExecutor) {
            try {
                this.f19594a.offerFirst(runnable);
                boolean z10 = com.bykv.vk.openvk.Sj.Sj.sP.sP.a.f19620b;
            } catch (Throwable unused) {
            }
        }
    }

    private static final class c {

        final boolean f19595a;

        final boolean f19596b;

        final int f19597c;

        final String f19598d;

        final Map f19599e;

        final String[] f19600f;

        c(boolean z10, boolean z11, int i10, String str, Map map, String[] strArr) {
            this.f19595a = z10;
            this.f19596b = z11;
            this.f19597c = i10;
            this.f19598d = str;
            this.f19599e = map;
            this.f19600f = strArr;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || c.class != obj.getClass()) {
                return false;
            }
            c cVar = (c) obj;
            if (this.f19595a == cVar.f19595a && this.f19596b == cVar.f19596b && this.f19597c == cVar.f19597c) {
                return this.f19598d.equals(cVar.f19598d);
            }
            return false;
        }

        public int hashCode() {
            return ((((((this.f19595a ? 1 : 0) * 31) + (this.f19596b ? 1 : 0)) * 31) + this.f19597c) * 31) + this.f19598d.hashCode();
        }
    }

    private static final class sP<T> extends LinkedBlockingDeque<T> {
        private ThreadPoolExecutor Sj;

        private sP() {
        }

        public void Sj(ThreadPoolExecutor threadPoolExecutor) {
            synchronized (this) {
                try {
                    if (this.Sj != null) {
                        throw new IllegalStateException("You can only call setExecutor() once!");
                    }
                    if (threadPoolExecutor == null) {
                        throw new NullPointerException("executor argument can't be null!");
                    }
                    this.Sj = threadPoolExecutor;
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }

        @Override
        public boolean offer(T t10) {
            synchronized (this) {
                int poolSize = this.Sj.getPoolSize();
                int activeCount = this.Sj.getActiveCount();
                int maximumPoolSize = this.Sj.getMaximumPoolSize();
                if (activeCount < poolSize || poolSize >= maximumPoolSize) {
                    return offerFirst(t10);
                }
                boolean z10 = com.bykv.vk.openvk.Sj.Sj.sP.sP.a.f19620b;
                return false;
            }
        }

        sP(a aVar) {
            this();
        }
    }

    private EjP() {
        SparseArray sparseArray = new SparseArray(2);
        this.f19584b = sparseArray;
        this.f19589g = new HashSet();
        this.f19590h = new a();
        sP sPVar = new sP(null);
        this.f19585c = sPVar;
        ExecutorService executorServiceD = d(sPVar);
        this.f19586d = executorServiceD;
        sPVar.Sj((ThreadPoolExecutor) executorServiceD);
        sparseArray.put(0, new HashMap());
        sparseArray.put(1, new HashMap());
    }

    private static ExecutorService d(sP sPVar) {
        int i10;
        int iA = h6.a.a();
        if (iA > 0) {
            if (iA > 4) {
                i10 = 4;
            }
            return new ThreadPoolExecutor(0, i10, 60L, TimeUnit.SECONDS, sPVar, new ThreadFactory() {
                @Override
                public Thread newThread(Runnable runnable) {
                    Thread thread = new Thread(runnable) {
                        @Override
                        public void run() {
                            try {
                                Process.setThreadPriority(10);
                            } catch (Throwable unused) {
                            }
                            super.run();
                        }
                    };
                    thread.setName("csj_video_preload_" + thread.getId());
                    thread.setDaemon(true);
                    if (com.bykv.vk.openvk.Sj.Sj.sP.sP.a.f19620b) {
                        new StringBuilder("new preload thead: ").append(thread.getName());
                    }
                    return thread;
                }
            }, new b(sPVar));
        }
        iA = 1;
        i10 = iA;
        return new ThreadPoolExecutor(0, i10, 60L, TimeUnit.SECONDS, sPVar, new ThreadFactory() {
            @Override
            public Thread newThread(Runnable runnable) {
                Thread thread = new Thread(runnable) {
                    @Override
                    public void run() {
                        try {
                            Process.setThreadPriority(10);
                        } catch (Throwable unused) {
                        }
                        super.run();
                    }
                };
                thread.setName("csj_video_preload_" + thread.getId());
                thread.setDaemon(true);
                if (com.bykv.vk.openvk.Sj.Sj.sP.sP.a.f19620b) {
                    new StringBuilder("new preload thead: ").append(thread.getName());
                }
                return thread;
            }
        }, new b(sPVar));
    }

    public static EjP j() {
        if (f19582k == null) {
            synchronized (EjP.class) {
                try {
                    if (f19582k == null) {
                        f19582k = new EjP();
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
        return f19582k;
    }

    public void a() {
        h6.a.l(new com.bytedance.sdk.component.Dq.Dq("cancelAll") {
            @Override
            public void run() {
                ArrayList<com.bykv.vk.openvk.Sj.Sj.sP.sP.sP> arrayList = new ArrayList();
                synchronized (EjP.this.f19584b) {
                    try {
                        int size = EjP.this.f19584b.size();
                        for (int i10 = 0; i10 < size; i10++) {
                            Map map = (Map) EjP.this.f19584b.get(EjP.this.f19584b.keyAt(i10));
                            if (map != null) {
                                arrayList.addAll(map.values());
                                map.clear();
                            }
                        }
                        EjP.this.f19585c.clear();
                    } catch (Throwable th2) {
                        throw th2;
                    }
                }
                for (com.bykv.vk.openvk.Sj.Sj.sP.sP.sP sPVar : arrayList) {
                    sPVar.Sj();
                    if (com.bykv.vk.openvk.Sj.Sj.sP.sP.a.f19620b) {
                        Log.w("TAG_PROXY_Preloader", "PreloadTask: " + sPVar + ", canceled!!!");
                    }
                }
            }
        });
    }

    com.bykv.vk.openvk.Sj.Sj.sP.sP.c c() {
        return null;
    }

    public void e(String str) {
        i(false, false, str);
    }

    void f(boolean z10, String str) {
        com.bykv.vk.openvk.Sj.Sj.sP.sP.sP sPVar;
        this.f19591i = str;
        this.f19592j = z10;
        if (com.bykv.vk.openvk.Sj.Sj.sP.sP.a.f19620b) {
            "setCurrentPlayKey, ".concat(String.valueOf(str));
        }
        HashSet<com.bykv.vk.openvk.Sj.Sj.sP.sP.sP> hashSet = null;
        HashSet<c> hashSet2 = null;
        if (str == null) {
            synchronized (this.f19589g) {
                try {
                    if (!this.f19589g.isEmpty()) {
                        hashSet2 = new HashSet(this.f19589g);
                        this.f19589g.clear();
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
            if (hashSet2 != null) {
                for (c cVar : hashSet2) {
                    g(cVar.f19595a, cVar.f19596b, cVar.f19597c, cVar.f19598d, cVar.f19599e, cVar.f19600f);
                    if (com.bykv.vk.openvk.Sj.Sj.sP.sP.a.f19620b) {
                        new StringBuilder("setCurrentPlayKey, resume preload: ").append(cVar.f19598d);
                    }
                }
                return;
            }
            return;
        }
        int i10 = com.bykv.vk.openvk.Sj.Sj.sP.sP.a.f19625g;
        if (i10 != 3 && i10 != 2) {
            if (i10 == 1) {
                synchronized (this.f19584b) {
                    try {
                        Map map = (Map) this.f19584b.get(com.bykv.vk.openvk.Sj.Sj.sP.sP.sP.f.a(z10));
                        sPVar = map != null ? (com.bykv.vk.openvk.Sj.Sj.sP.sP.sP) map.remove(str) : null;
                    } catch (Throwable th3) {
                        throw th3;
                    }
                }
                if (sPVar != null) {
                    sPVar.Sj();
                    return;
                }
                return;
            }
            return;
        }
        synchronized (this.f19584b) {
            try {
                int size = this.f19584b.size();
                for (int i11 = 0; i11 < size; i11++) {
                    SparseArray sparseArray = this.f19584b;
                    Map map2 = (Map) sparseArray.get(sparseArray.keyAt(i11));
                    if (map2 != null) {
                        Collection collectionValues = map2.values();
                        if (collectionValues != null && !collectionValues.isEmpty()) {
                            if (hashSet == null) {
                                hashSet = new HashSet();
                            }
                            hashSet.addAll(collectionValues);
                        }
                        map2.clear();
                    }
                }
            } catch (Throwable th4) {
                throw th4;
            }
        }
        if (hashSet == null || hashSet.isEmpty()) {
            return;
        }
        for (com.bykv.vk.openvk.Sj.Sj.sP.sP.sP sPVar2 : hashSet) {
            sPVar2.Sj();
            if (com.bykv.vk.openvk.Sj.Sj.sP.sP.a.f19620b) {
                new StringBuilder("setCurrentPlayKey, cancel preload: ").append(sPVar2.Jcg);
            }
        }
        if (i10 == 3) {
            synchronized (this.f19589g) {
                try {
                    Iterator it = hashSet.iterator();
                    while (it.hasNext()) {
                        c cVar2 = (c) ((com.bykv.vk.openvk.Sj.Sj.sP.sP.sP) it.next()).sef;
                        if (cVar2 != null) {
                            this.f19589g.add(cVar2);
                        }
                    }
                } catch (Throwable th5) {
                    throw th5;
                }
            }
        }
    }

    public void g(boolean z10, boolean z11, int i10, String str, Map map, String... strArr) {
        if (com.bykv.vk.openvk.Sj.Sj.sP.sP.a.f19620b) {
            Log.e("TAG_PROXY_Preloader", "cache or videoProxyDB null in Preloader!!!");
        }
    }

    public void h(boolean z10, boolean z11, int i10, String str, String... strArr) {
        g(z10, z11, i10, str, null, strArr);
    }

    public void i(final boolean z10, final boolean z11, final String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        h6.a.l(new com.bytedance.sdk.component.Dq.Dq("cancel b b S") {
            @Override
            public void run() {
                com.bykv.vk.openvk.Sj.Sj.sP.sP.sP sPVar;
                synchronized (EjP.this.f19584b) {
                    try {
                        Map map = (Map) EjP.this.f19584b.get(com.bykv.vk.openvk.Sj.Sj.sP.sP.sP.f.a(z10));
                        if (map != null) {
                            sPVar = (com.bykv.vk.openvk.Sj.Sj.sP.sP.sP) map.remove(z11 ? str : y5.c.a(str));
                        } else {
                            sPVar = null;
                        }
                    } catch (Throwable th2) {
                        throw th2;
                    }
                }
                if (sPVar != null) {
                    sPVar.Sj();
                }
            }
        });
    }

    com.bykv.vk.openvk.Sj.Sj.sP.sP.c l() {
        return null;
    }
}
