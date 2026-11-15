package qu;

import android.content.Context;
import com.transsion.gslb.GslbSdk;
import kotlin.jvm.internal.Intrinsics;
import tu.i;

public final class c {

    public static final a f70252d = new a();

    public static volatile c f70253e;

    public final String[] f70254a = new String[3];

    public String f70255b;

    public String f70256c;

    public c() {
        a();
    }

    public final void a() {
        if (f.f70259o.a().f70264d) {
            this.f70254a[0] = "https://test-upgrade-api.palmplaystore.com/";
        } else {
            this.f70254a[0] = "https://app-manage-api.shalltry.com/";
        }
    }

    public final void b(Context context) {
        Intrinsics.h(context, "context");
        this.f70255b = i.f72841b.a(context).a("KV_UPGRADE_GSLB_COUNTRY", "");
        GslbSdk.init(context, this.f70254a, new b(this, context));
    }
}
