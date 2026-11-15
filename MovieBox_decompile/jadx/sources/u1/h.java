package u1;

import android.os.Bundle;
import androidx.media3.common.util.a1;

public final class h implements e {

    private static final String f72988d = a1.C0(0);

    private static final String f72989e = a1.C0(1);

    private static final String f72990f = a1.C0(2);

    public int f72991a;

    public int f72992b;

    public final int f72993c;

    public h(int i10, int i11, int i12) {
        this.f72991a = i10;
        this.f72992b = i11;
        this.f72993c = i12;
    }

    public static h a(Bundle bundle) {
        return new h(bundle.getInt(f72988d), bundle.getInt(f72989e), bundle.getInt(f72990f));
    }

    public Bundle b() {
        Bundle bundle = new Bundle();
        bundle.putInt(f72988d, this.f72991a);
        bundle.putInt(f72989e, this.f72992b);
        bundle.putInt(f72990f, this.f72993c);
        return bundle;
    }
}
