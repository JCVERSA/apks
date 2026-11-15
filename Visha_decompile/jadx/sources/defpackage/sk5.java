package defpackage;

import android.app.Activity;
import androidx.fragment.app.FragmentActivity;

public class sk5 {
    public final Object a;

    public sk5(Activity activity) {
        wd8.m(activity, "Activity must not be null");
        this.a = activity;
    }

    public final boolean a() {
        return this.a instanceof FragmentActivity;
    }

    public final boolean b() {
        return this.a instanceof Activity;
    }

    public final Activity c() {
        return (Activity) this.a;
    }

    public final FragmentActivity d() {
        return (FragmentActivity) this.a;
    }
}
