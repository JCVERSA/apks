package i0;

import android.content.res.Resources;
import android.util.TypedValue;
import androidx.collection.e0;
import kotlin.Unit;

public final class f {

    private final e0 f61596a = new e0(0, 1, null);

    public final void a() {
        synchronized (this) {
            this.f61596a.i();
            Unit unit = Unit.f64096a;
        }
    }

    public final TypedValue b(Resources resources, int i10) {
        TypedValue typedValue;
        synchronized (this) {
            typedValue = (TypedValue) this.f61596a.c(i10);
            if (typedValue == null) {
                typedValue = new TypedValue();
                resources.getValue(i10, typedValue, true);
                this.f61596a.p(i10, typedValue);
            }
        }
        return typedValue;
    }
}
