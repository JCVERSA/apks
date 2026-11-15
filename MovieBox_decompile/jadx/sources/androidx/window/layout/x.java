package androidx.window.layout;

import android.app.Activity;
import android.content.Context;
import androidx.window.extensions.layout.WindowLayoutComponent;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;

public interface x {

    public static final a f15046a = a.f15047a;

    public static final class a {

        static final a f15047a = new a();

        private static final String f15048b = Reflection.b(x.class).g();

        private static y f15049c = m.f15012a;

        private a() {
        }

        public final x a(Context context) {
            Intrinsics.h(context, "context");
            return f15049c.a(new WindowInfoTrackerImpl(f0.f15009a, b(context)));
        }

        public final v b(Context context) {
            Intrinsics.h(context, "context");
            p pVar = null;
            try {
                WindowLayoutComponent windowLayoutComponentM = SafeWindowLayoutComponentProvider.f14977a.m();
                if (windowLayoutComponentM != null) {
                    pVar = new p(windowLayoutComponentM);
                }
            } catch (Throwable unused) {
            }
            return pVar == null ? t.f15034c.a(context) : pVar;
        }
    }

    kotlinx.coroutines.flow.a a(Activity activity);
}
