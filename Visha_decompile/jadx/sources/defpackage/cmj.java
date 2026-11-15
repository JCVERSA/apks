package defpackage;

import android.os.Bundle;

public final class cmj extends rjj {
    public cmj(int i, int i2, Bundle bundle) {
        super(i, i2, bundle);
    }

    @Override
    public final void a(Bundle bundle) {
        Bundle bundle2 = bundle.getBundle("data");
        if (bundle2 == null) {
            bundle2 = Bundle.EMPTY;
        }
        d(bundle2);
    }

    @Override
    public final boolean b() {
        return false;
    }
}
