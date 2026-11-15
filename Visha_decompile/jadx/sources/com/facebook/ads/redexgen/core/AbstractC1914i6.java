package com.facebook.ads.redexgen.core;

import android.view.ViewGroup;
import android.widget.ImageView;
import java.util.List;

public abstract class AbstractC1914i6 extends QC<OB> {
    public static String[] A05 = {"BofGdT", "Cb8B81bPHxSAbCDzy4", "tLXqRIVVg6Ax3ByQPtTHAjuCLXMkMIv2", "Awqy8gsEnlsE3SarczMGKLCzZdtyeG5w", "c95zYEegXXkMe1M4f4KrlDKZ96YYHdKl", "dzB1VPy83al1mBxHBTo", "7fXNgxpNBgLKECdM7L4CyN3WmxsqHAeT", "HUwJOtf8ZOX36MmDYBkOhN0MiSikj2Pg"};
    public static final int A06 = (int) (AbstractC1338Wl.A02 * 4.0f);
    public InterfaceC1085Mk A00;
    public final List<C1178Qc> A01;
    public final int A02;
    public final C1635dL A03;
    public final AbstractC1707eW A04 = new C1917i9(this);

    public AbstractC1914i6(C0L c0l, List<C1178Qc> list, C1635dL c1635dL) {
        this.A03 = c1635dL;
        this.A02 = c0l.getChildSpacing();
        this.A01 = list;
    }

    private ViewGroup.MarginLayoutParams A01(int i) {
        ViewGroup.MarginLayoutParams marginLayoutParams = new ViewGroup.MarginLayoutParams(-2, -1);
        int i2 = this.A02;
        if (i == 0) {
            i2 *= 2;
        }
        int size = this.A01.size() - 1;
        String[] strArr = A05;
        if (strArr[3].charAt(2) == strArr[4].charAt(2)) {
            throw new RuntimeException();
        }
        String[] strArr2 = A05;
        strArr2[7] = "KlchvvVcsY9zV3e8wqzNtTZQscUuxnqD";
        strArr2[1] = "gQBYn2ao1l5plthpQQ";
        marginLayoutParams.setMargins(i2, 0, i >= size ? this.A02 * 2 : this.A02, 0);
        return marginLayoutParams;
    }

    @Override
    public final int A0B() {
        return this.A01.size();
    }

    public final void A0O(ImageView imageView, int i) {
        C1178Qc c1178Qc = this.A01.get(i);
        C1293Up adCoverImage = c1178Qc.getAdCoverImage();
        if (adCoverImage != null) {
            KZ kzA04 = new KZ(imageView, this.A03).A04();
            kzA04.A06(new C1916i8(this, i, c1178Qc));
            kzA04.A07(adCoverImage.getUrl());
        }
    }

    public final void A0P(InterfaceC1085Mk interfaceC1085Mk) {
        this.A00 = interfaceC1085Mk;
    }

    public void A0Q(OB ob, int i) {
        ob.A0p().setLayoutParams(A01(i));
    }
}
