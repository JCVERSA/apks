package pb;

import android.os.Bundle;
import java.util.Locale;

class e implements mb.a.b {

    private rb.b f69123a;

    private rb.b f69124b;

    e() {
    }

    private static void b(rb.b bVar, String str, Bundle bundle) {
        if (bVar == null) {
            return;
        }
        bVar.c(str, bundle);
    }

    private void c(String str, Bundle bundle) {
        b("clx".equals(bundle.getString("_o")) ? this.f69123a : this.f69124b, str, bundle);
    }

    @Override
    public void a(int i10, Bundle bundle) {
        String string;
        qb.g.f().i(String.format(Locale.US, "Analytics listener received message. ID: %d, Extras: %s", Integer.valueOf(i10), bundle));
        if (bundle == null || (string = bundle.getString("name")) == null) {
            return;
        }
        Bundle bundle2 = bundle.getBundle("params");
        if (bundle2 == null) {
            bundle2 = new Bundle();
        }
        c(string, bundle2);
    }

    public void d(rb.b bVar) {
        this.f69124b = bVar;
    }

    public void e(rb.b bVar) {
        this.f69123a = bVar;
    }
}
