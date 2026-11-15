package ie;

import android.content.Context;
import com.iab.omid.library.hisavana.internal.i;
import com.iab.omid.library.hisavana.internal.j;
import le.e;
import le.g;

public class c {

    private boolean f62077a;

    private void d(Context context) {
        g.d(context, "Application Context cannot be null");
    }

    String a() {
        return "1.5.4-Hisavana";
    }

    void b(Context context) {
        d(context);
        if (e()) {
            return;
        }
        c(true);
        i.d().b(context);
        com.iab.omid.library.hisavana.internal.b.k().a(context);
        le.a.b(context);
        le.c.d(context);
        e.c(context);
        com.iab.omid.library.hisavana.internal.g.c().b(context);
        com.iab.omid.library.hisavana.internal.a.a().b(context);
        j.f().b(context);
    }

    void c(boolean z10) {
        this.f62077a = z10;
    }

    boolean e() {
        return this.f62077a;
    }
}
