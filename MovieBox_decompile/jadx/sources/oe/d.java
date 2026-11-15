package oe;

import android.content.Context;
import com.iab.omid.library.mmadbridge.internal.i;
import com.iab.omid.library.mmadbridge.internal.j;
import re.g;

public class d {

    private boolean f67808a;

    private void c(Context context) {
        g.d(context, "Application Context cannot be null");
    }

    void a(Context context) {
        c(context);
        if (d()) {
            return;
        }
        b(true);
        i.d().b(context);
        com.iab.omid.library.mmadbridge.internal.b.k().a(context);
        re.a.b(context);
        re.c.d(context);
        re.e.c(context);
        com.iab.omid.library.mmadbridge.internal.g.c().b(context);
        com.iab.omid.library.mmadbridge.internal.a.a().b(context);
        j.f().b(context);
    }

    void b(boolean z10) {
        this.f67808a = z10;
    }

    boolean d() {
        return this.f67808a;
    }
}
