package sg;

import android.app.Application;
import com.blankj.utilcode.util.Utils;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import yg.l;

public final class c {

    public static final a f72063a = new a(null);

    private static boolean f72064b;

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final void a(Application application) {
            Intrinsics.h(application, "application");
            if (c.f72064b) {
                return;
            }
            c.f72064b = true;
            Utils.b(application);
            l.f76264a.f();
            b.f72060b.a().e(application);
        }

        private a() {
        }
    }
}
