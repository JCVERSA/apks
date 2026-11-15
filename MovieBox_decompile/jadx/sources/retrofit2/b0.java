package retrofit2;

import android.os.Build;
import java.util.concurrent.Executor;

abstract class b0 {

    static final Executor f71038a;

    static final d0 f71039b;

    static final c f71040c;

    static {
        String property = System.getProperty("java.vm.name");
        property.hashCode();
        if (property.equals("RoboVM")) {
            f71038a = null;
            f71039b = new d0();
            f71040c = new c();
        } else {
            if (!property.equals("Dalvik")) {
                f71038a = null;
                f71039b = new d0.b();
                f71040c = new c.a();
                return;
            }
            f71038a = new a();
            if (Build.VERSION.SDK_INT >= 24) {
                f71039b = new d0.a();
                f71040c = new c.a();
            } else {
                f71039b = new d0();
                f71040c = new c();
            }
        }
    }
}
