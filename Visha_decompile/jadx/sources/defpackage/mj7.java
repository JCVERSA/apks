package defpackage;

import android.content.Context;
import com.transsion.security.api.hap.TranStoreManagerLite;
import hyperion.hap.IStoreManager;

public class mj7 {
    public static mj7 b;
    public final IStoreManager a;

    public mj7(Context context) {
        this.a = (IStoreManager) TranStoreManagerLite.b.a(context);
    }

    public static mj7 a(Context context) {
        if (b == null) {
            synchronized (mj7.class) {
                try {
                    if (b == null) {
                        b = new mj7(context);
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return b;
    }
}
