package defpackage;

import android.util.ArrayMap;
import com.cloud.hisavana.sdk.q1;
import java.lang.ref.WeakReference;

public class rod {
    public final int a;
    public final ArrayMap b;

    public static class b {
        public static rod a = new rod();
    }

    public static rod b() {
        return b.a;
    }

    public q1 a(String str) {
        WeakReference weakReference = (WeakReference) this.b.get(str);
        if (weakReference == null) {
            return null;
        }
        return (q1) weakReference.get();
    }

    public void c(String str, q1 q1Var) {
        try {
            if (this.b.size() >= 100) {
                this.b.removeAt(0);
                ikd.b().d("AdSplashManager", "spalsh attachTranSplash map clear");
            }
            this.b.put(str, new WeakReference(q1Var));
            ikd.b().d("AdSplashManager", "spalsh attachTranSplash map size = " + this.b.size());
        } catch (Exception e) {
            ikd.b().w("AdSplashManager", e.getMessage());
        }
    }

    public void d(String str) {
        this.b.remove(str);
        ikd.b().d("AdSplashManager", "spalsh unAttach map size = " + this.b.size());
    }

    public rod() {
        this.a = 100;
        this.b = new ArrayMap();
    }
}
