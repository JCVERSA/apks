package x;

import android.view.ViewStructure;

public final class h {

    public static final h f74803a = new h();

    private h() {
    }

    public final int a(ViewStructure viewStructure, int i10) {
        return viewStructure.addChildCount(i10);
    }

    public final ViewStructure b(ViewStructure viewStructure, int i10) {
        return viewStructure.newChild(i10);
    }

    public final void c(ViewStructure viewStructure, int i10, int i11, int i12, int i13, int i14, int i15) {
        viewStructure.setDimens(i10, i11, i12, i13, i14, i15);
    }

    public final void d(ViewStructure viewStructure, int i10, String str, String str2, String str3) {
        viewStructure.setId(i10, str, str2, str3);
    }
}
