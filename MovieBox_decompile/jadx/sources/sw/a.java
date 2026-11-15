package sw;

import android.app.Application;
import com.blankj.utilcode.util.Utils;
import java.util.LinkedHashSet;
import java.util.Set;
import kotlin.jvm.internal.Intrinsics;

public final class a {

    public static final a f72434a = new a();

    private static final Set f72435b = new LinkedHashSet();

    private a() {
    }

    public final void a() {
        com.transsion.wrapperad.install.b bVar = com.transsion.wrapperad.install.b.f55998a;
        Application applicationA = Utils.a();
        Intrinsics.g(applicationA, "getApp(...)");
        bVar.b(applicationA);
    }
}
