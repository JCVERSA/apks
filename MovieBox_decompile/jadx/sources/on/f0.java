package on;

import android.content.Context;
import kotlin.jvm.internal.Intrinsics;

public final class f0 {

    public static final f0 f67871a = new f0();

    private static final String f67872b = "TnPlayerPool";

    private f0() {
    }

    public final boolean a(com.transsion.player.orplayer.f fVar) {
        return true;
    }

    public final y b(Context context) {
        Intrinsics.h(context, "context");
        return y.f67917j.a();
    }

    public final in.e c(Context context) {
        Intrinsics.h(context, "context");
        Context applicationContext = context.getApplicationContext();
        Intrinsics.g(applicationContext, "getApplicationContext(...)");
        return new in.e(applicationContext, null, false, 6, null);
    }
}
