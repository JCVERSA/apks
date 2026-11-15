package u1;

import android.os.Bundle;
import androidx.media3.common.util.a1;

public final class i {

    private static final String f72994b = a1.C0(0);

    public final String f72995a;

    public i(String str) {
        this.f72995a = str;
    }

    public static i a(Bundle bundle) {
        return new i((String) androidx.media3.common.util.a.e(bundle.getString(f72994b)));
    }

    public Bundle b() {
        Bundle bundle = new Bundle();
        bundle.putString(f72994b, this.f72995a);
        return bundle;
    }
}
