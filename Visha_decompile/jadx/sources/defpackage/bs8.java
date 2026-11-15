package defpackage;

import android.content.Context;
import com.transsion.playercommon.data.CloudVersionControl;

public abstract class bs8 {
    public static volatile CloudVersionControl a;
    public static a b;

    public interface a {
        void a(CloudVersionControl cloudVersionControl);
    }

    public static boolean a(Context context) {
        return false;
    }

    public static void b() {
        a aVar = b;
        if (aVar != null) {
            aVar.a(a);
        }
    }

    public static void c(a aVar) {
        b = aVar;
    }

    public static void d() {
        b = null;
    }
}
