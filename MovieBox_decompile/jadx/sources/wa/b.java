package wa;

import android.os.Bundle;
import android.view.View;
import android.view.ViewParent;
import androidx.coordinatorlayout.widget.CoordinatorLayout;

public final class b {

    private final View f74239a;

    private boolean f74240b = false;

    private int f74241c = 0;

    /* JADX WARN: Multi-variable type inference failed */
    public b(a aVar) {
        this.f74239a = (View) aVar;
    }

    private void a() {
        ViewParent parent = this.f74239a.getParent();
        if (parent instanceof CoordinatorLayout) {
            ((CoordinatorLayout) parent).dispatchDependentViewsChanged(this.f74239a);
        }
    }

    public int b() {
        return this.f74241c;
    }

    public boolean c() {
        return this.f74240b;
    }

    public void d(Bundle bundle) {
        this.f74240b = bundle.getBoolean("expanded", false);
        this.f74241c = bundle.getInt("expandedComponentIdHint", 0);
        if (this.f74240b) {
            a();
        }
    }

    public Bundle e() {
        Bundle bundle = new Bundle();
        bundle.putBoolean("expanded", this.f74240b);
        bundle.putInt("expandedComponentIdHint", this.f74241c);
        return bundle;
    }

    public boolean f(boolean z10) {
        if (this.f74240b == z10) {
            return false;
        }
        this.f74240b = z10;
        a();
        return true;
    }

    public void g(int i10) {
        this.f74241c = i10;
    }
}
