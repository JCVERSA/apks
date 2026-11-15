package defpackage;

import android.os.StrictMode;
import androidx.annotation.DoNotInline;

public abstract class igf {
    @DoNotInline
    public static StrictMode.VmPolicy.Builder a(StrictMode.VmPolicy.Builder builder) {
        return builder.permitUnsafeIntentLaunch();
    }
}
