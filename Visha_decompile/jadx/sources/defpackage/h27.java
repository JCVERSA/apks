package defpackage;

import android.util.SparseArray;
import com.blankj.utilcode.util.ThreadUtils;
import java.util.HashSet;
import java.util.WeakHashMap;

public class h27 {
    public SparseArray a;
    public Object b;

    public static final class a {
        public static final h27 a = new h27();
    }

    public interface b {
        void didReceivedNotification(int i, Object... objArr);
    }

    public static h27 c() {
        return a.a;
    }

    public void b(b bVar, int i) {
        synchronized (this) {
            try {
                WeakHashMap weakHashMap = (WeakHashMap) this.a.get(i);
                if (weakHashMap == null) {
                    SparseArray sparseArray = this.a;
                    WeakHashMap weakHashMap2 = new WeakHashMap();
                    sparseArray.put(i, weakHashMap2);
                    weakHashMap = weakHashMap2;
                }
                if (!weakHashMap.containsKey(bVar)) {
                    weakHashMap.put(bVar, this.b);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void d(int i, Object[] objArr) {
        try {
            WeakHashMap weakHashMap = (WeakHashMap) this.a.get(i);
            if (weakHashMap == null || weakHashMap.size() <= 0) {
                return;
            }
            for (b bVar : new HashSet(weakHashMap.keySet())) {
                if (bVar != null) {
                    bVar.didReceivedNotification(i, objArr);
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void e(final int i, final Object... objArr) {
        ThreadUtils.s(new Runnable() {
            @Override
            public final void run() {
                this.b.d(i, objArr);
            }
        });
    }

    public void f(b bVar, int i) {
        synchronized (this) {
            try {
                WeakHashMap weakHashMap = (WeakHashMap) this.a.get(i);
                if (weakHashMap != null) {
                    weakHashMap.remove(bVar);
                    if (weakHashMap.size() == 0) {
                        this.a.remove(i);
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public h27() {
        this.a = new SparseArray();
        this.b = new Object();
    }
}
