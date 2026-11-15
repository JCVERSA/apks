package u1;

import android.os.Bundle;
import androidx.media3.common.util.a1;

public final class f implements e {

    private static final String f72984c = a1.C0(0);

    private static final String f72985d = a1.C0(1);

    public final String f72986a;

    public final int f72987b;

    public f(String str, int i10) {
        this.f72986a = str;
        this.f72987b = i10;
    }

    public static f a(Bundle bundle) {
        return new f((String) androidx.media3.common.util.a.e(bundle.getString(f72984c)), bundle.getInt(f72985d));
    }

    public Bundle b() {
        Bundle bundle = new Bundle();
        bundle.putString(f72984c, this.f72986a);
        bundle.putInt(f72985d, this.f72987b);
        return bundle;
    }
}
