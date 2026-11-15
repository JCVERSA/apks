package xy;

import android.content.Context;
import android.database.DataSetObservable;
import android.database.DataSetObserver;

public abstract class a {

    private final DataSetObservable f75990a = new DataSetObservable();

    public abstract int a();

    public abstract c b(Context context);

    public abstract d c(Context context, int i10);

    public float d(Context context, int i10) {
        return 1.0f;
    }

    public final void e() {
        this.f75990a.notifyChanged();
    }

    public final void f(DataSetObserver dataSetObserver) {
        this.f75990a.registerObserver(dataSetObserver);
    }

    public final void g(DataSetObserver dataSetObserver) {
        this.f75990a.unregisterObserver(dataSetObserver);
    }
}
