package defpackage;

import com.google.android.gms.ads.initialization.InitializationStatus;
import java.util.Map;

public final class g5f implements InitializationStatus {
    public final Map a;

    public g5f(Map map) {
        this.a = map;
    }

    @Override
    public final Map getAdapterStatusMap() {
        return this.a;
    }
}
