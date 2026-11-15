package defpackage;

import android.os.Bundle;
import com.google.android.gms.cloudmessaging.zzt;

public final class iij extends rjj {
    public iij(int i, int i2, Bundle bundle) {
        super(i, i2, bundle);
    }

    @Override
    public final void a(Bundle bundle) {
        if (bundle.getBoolean("ack", false)) {
            d(null);
        } else {
            c(new zzt(4, "Invalid response to one way request", null));
        }
    }

    @Override
    public final boolean b() {
        return true;
    }
}
