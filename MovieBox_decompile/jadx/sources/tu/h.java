package tu;

import android.content.Context;
import kotlin.jvm.internal.Intrinsics;

public final class h {
    public final i a(Context context) {
        Intrinsics.h(context, "context");
        i iVar = i.f72842c;
        if (iVar == null) {
            synchronized (this) {
                iVar = i.f72842c;
                if (iVar == null) {
                    Context applicationContext = context.getApplicationContext();
                    Intrinsics.g(applicationContext, "getApplicationContext(...)");
                    iVar = new i(applicationContext);
                    i.f72842c = iVar;
                }
            }
        }
        return iVar;
    }
}
