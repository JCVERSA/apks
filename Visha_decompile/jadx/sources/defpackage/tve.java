package defpackage;

import com.google.firebase.analytics.FirebaseAnalytics;
import java.util.concurrent.Callable;

public final class tve implements Callable {
    public final FirebaseAnalytics b;

    public tve(FirebaseAnalytics firebaseAnalytics) {
        this.b = firebaseAnalytics;
    }

    @Override
    public final Object call() {
        return this.b.a.D();
    }
}
