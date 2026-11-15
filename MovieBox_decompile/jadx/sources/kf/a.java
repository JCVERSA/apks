package kf;

import android.content.Context;
import android.os.Bundle;
import com.therouter.router.Navigator;
import kotlin.jvm.internal.Intrinsics;

public abstract class a {

    private Bundle f63980a = new Bundle();

    public final Bundle a() {
        return this.f63980a;
    }

    public boolean b(Context context, Navigator navigator) {
        Intrinsics.h(context, "context");
        Intrinsics.h(navigator, "navigator");
        return false;
    }

    public void c() {
    }

    public final void d(Bundle b10) {
        Intrinsics.h(b10, "b");
        this.f63980a = b10;
    }
}
