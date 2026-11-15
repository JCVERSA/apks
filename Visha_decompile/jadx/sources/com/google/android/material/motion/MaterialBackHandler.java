package com.google.android.material.motion;

import androidx.annotation.NonNull;
import androidx.annotation.RestrictTo;
import androidx.p003activity.BackEventCompat;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
public interface MaterialBackHandler {
    void cancelBackProgress();

    void handleBackInvoked();

    void startBackProgress(@NonNull BackEventCompat backEventCompat);

    void updateBackProgress(@NonNull BackEventCompat backEventCompat);
}
