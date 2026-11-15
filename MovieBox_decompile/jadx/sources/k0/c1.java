package k0;

import android.text.Layout;
import kotlin.jvm.internal.Intrinsics;

public final class c1 {

    public static final c1 f63420a = new c1();

    private static final Layout.Alignment f63421b;

    private static final Layout.Alignment f63422c;

    static {
        Layout.Alignment[] alignmentArrValues = Layout.Alignment.values();
        Layout.Alignment alignment = Layout.Alignment.ALIGN_NORMAL;
        Layout.Alignment alignment2 = alignment;
        for (Layout.Alignment alignment3 : alignmentArrValues) {
            if (Intrinsics.c(alignment3.name(), "ALIGN_LEFT")) {
                alignment = alignment3;
            } else if (Intrinsics.c(alignment3.name(), "ALIGN_RIGHT")) {
                alignment2 = alignment3;
            }
        }
        f63421b = alignment;
        f63422c = alignment2;
    }

    private c1() {
    }

    public final Layout.Alignment a(int i10) {
        if (i10 == 0) {
            return Layout.Alignment.ALIGN_NORMAL;
        }
        if (i10 == 1) {
            return Layout.Alignment.ALIGN_OPPOSITE;
        }
        if (i10 == 2) {
            return Layout.Alignment.ALIGN_CENTER;
        }
        if (i10 != 3) {
            return i10 != 4 ? Layout.Alignment.ALIGN_NORMAL : f63422c;
        }
        return f63421b;
    }
}
