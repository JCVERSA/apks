package n0;

import android.content.Context;
import android.os.Build;
import java.util.Iterator;
import ru.zdevs.zarchiver.ZApp;
import ru.zdevs.zarchiver.io.KitKatExtSD;

public final class a {

    public static final boolean f1232a;

    static {
        f1232a = Build.VERSION.SDK_INT < 21;
    }

    public static void a(Context context) {
        x0.d.a aVar;
        ZApp.b(context);
        if (f1232a && Build.VERSION.SDK_INT == 19 && KitKatExtSD.f1692a == null) {
            Iterator it = x0.d.o().iterator();
            do {
                if (!it.hasNext()) {
                    aVar = null;
                    break;
                }
                aVar = (x0.d.a) it.next();
            } while (aVar.f());
            if (aVar == null) {
                KitKatExtSD.f1692a = "";
            } else {
                KitKatExtSD.f1692a = aVar.f2255b;
                aVar.f2259f |= 16384;
            }
        }
    }
}
