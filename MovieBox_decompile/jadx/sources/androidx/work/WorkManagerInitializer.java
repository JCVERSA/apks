package androidx.work;

import android.content.Context;
import java.util.Collections;
import java.util.List;

public final class WorkManagerInitializer implements d4.a {

    private static final String f15063a = j.i("WrkMgrInitializer");

    @Override
    public List a() {
        return Collections.emptyList();
    }

    @Override
    public WorkManager b(Context context) {
        j.e().a(f15063a, "Initializing WorkManager with default configuration.");
        WorkManager.h(context, new a.b().a());
        return WorkManager.f(context);
    }
}
