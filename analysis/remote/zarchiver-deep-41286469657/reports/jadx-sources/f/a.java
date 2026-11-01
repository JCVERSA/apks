package f;

import android.database.DataSetObservable;
import android.view.ViewGroup;
import android.widget.FrameLayout;

public abstract class a {
    public a() {
        new DataSetObservable();
    }

    public abstract void a(ViewGroup viewGroup, FrameLayout frameLayout);

    public abstract int b();

    public final void c() {
        synchronized (this) {
        }
    }
}
