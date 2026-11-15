package androidx.core.os;

import android.os.Bundle;
import android.util.Size;
import android.util.SizeF;

final class b {

    public static final b f7849a = new b();

    private b() {
    }

    public static final void a(Bundle bundle, String str, Size size) {
        bundle.putSize(str, size);
    }

    public static final void b(Bundle bundle, String str, SizeF sizeF) {
        bundle.putSizeF(str, sizeF);
    }
}
