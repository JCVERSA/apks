package androidx.window.area.reflectionguard;

import android.util.DisplayMetrics;
import androidx.annotation.NonNull;
import androidx.annotation.RestrictTo;

@RestrictTo({RestrictTo.Scope.LIBRARY})
public interface ExtensionWindowAreaStatusRequirements {
    @NonNull
    DisplayMetrics getWindowAreaDisplayMetrics();

    int getWindowAreaStatus();
}
