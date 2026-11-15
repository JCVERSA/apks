package u3;

import android.os.Build;
import android.os.ext.SdkExtensions;

public final class a {

    public static final a f72998a = new a();

    private static final class C0894a {

        public static final C0894a f72999a = new C0894a();

        private C0894a() {
        }

        public final int a() {
            return SdkExtensions.getExtensionVersion(1000000);
        }
    }

    private a() {
    }

    public final int a() {
        if (Build.VERSION.SDK_INT >= 30) {
            return C0894a.f72999a.a();
        }
        return 0;
    }
}
