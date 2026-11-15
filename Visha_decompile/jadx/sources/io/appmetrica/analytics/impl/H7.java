package io.appmetrica.analytics.impl;

import android.app.Activity;
import android.app.Application;
import android.os.Bundle;
import androidx.annotation.NonNull;

public abstract class H7 implements Application.ActivityLifecycleCallbacks {
    @Override
    public final void onActivitySaveInstanceState(@NonNull Activity activity, @NonNull Bundle bundle) {
    }
}
