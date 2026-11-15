package lb;

import com.google.firebase.analytics.FirebaseAnalytics;
import com.google.firebase.c;
import com.google.firebase.l;
import kotlin.jvm.internal.Intrinsics;

public abstract class a {

    private static volatile FirebaseAnalytics f65673a;

    private static final Object f65674b = new Object();

    public static final FirebaseAnalytics a(c cVar) {
        Intrinsics.h(cVar, "<this>");
        if (f65673a == null) {
            synchronized (f65674b) {
                if (f65673a == null) {
                    f65673a = FirebaseAnalytics.getInstance(l.a(c.f30244a).k());
                }
            }
        }
        FirebaseAnalytics firebaseAnalytics = f65673a;
        Intrinsics.e(firebaseAnalytics);
        return firebaseAnalytics;
    }
}
