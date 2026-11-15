package n0;

import android.os.Build;

public abstract class g {
    public static final j a() {
        return Build.VERSION.SDK_INT >= 24 ? new e() : new a();
    }
}
