package androidx.fragment.app;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.IntentSender;
import android.os.Bundle;
import android.os.Handler;
import android.view.LayoutInflater;
import androidx.core.app.ActivityCompat;
import java.io.FileDescriptor;
import java.io.PrintWriter;

public abstract class i extends f {

    private final Activity f9121a;

    private final Context f9122b;

    private final Handler f9123c;

    private final int f9124d;

    final FragmentManager f9125e;

    i(FragmentActivity fragmentActivity) {
        this(fragmentActivity, fragmentActivity, new Handler(), 0);
    }

    Activity e() {
        return this.f9121a;
    }

    Context f() {
        return this.f9122b;
    }

    public Handler g() {
        return this.f9123c;
    }

    public abstract void h(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr);

    public abstract Object i();

    public abstract LayoutInflater j();

    public abstract boolean l(String str);

    public void m(Fragment fragment, Intent intent, int i10, Bundle bundle) {
        if (i10 != -1) {
            throw new IllegalStateException("Starting activity with a requestCode requires a FragmentActivity host");
        }
        androidx.core.content.b.startActivity(this.f9122b, intent, bundle);
    }

    public void n(Fragment fragment, IntentSender intentSender, int i10, Intent intent, int i11, int i12, int i13, Bundle bundle) {
        if (i10 != -1) {
            throw new IllegalStateException("Starting intent sender with a requestCode requires a FragmentActivity host");
        }
        ActivityCompat.l(this.f9121a, intentSender, i10, intent, i11, i12, i13, bundle);
    }

    public abstract void o();

    i(Activity activity, Context context, Handler handler, int i10) {
        this.f9125e = new q();
        this.f9121a = activity;
        this.f9122b = (Context) androidx.core.util.i.h(context, "context == null");
        this.f9123c = (Handler) androidx.core.util.i.h(handler, "handler == null");
        this.f9124d = i10;
    }

    public void k(Fragment fragment, String[] strArr, int i10) {
    }
}
