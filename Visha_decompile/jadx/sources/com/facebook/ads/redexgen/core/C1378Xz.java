package com.facebook.ads.redexgen.core;

import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import com.facebook.ads.internal.api.AdNativeComponentView;

public final class C1378Xz extends AdNativeComponentView {
    public static final int A01 = (int) (AbstractC1338Wl.A02 * 1.0f);
    public final ImageView A00;

    public C1378Xz(C1635dL c1635dL) {
        super(c1635dL);
        this.A00 = new YM(c1635dL);
        this.A00.setScaleType(ImageView.ScaleType.CENTER_CROP);
        EnumC1343Wq.A04(this.A00, EnumC1343Wq.A0B);
        addView(this.A00, new ViewGroup.LayoutParams(-1, -1));
        XP.A0K(this.A00, -2130706433);
        setPadding(A01, A01, A01, A01);
    }

    @Override
    public View getAdContentsView() {
        return this.A00;
    }

    public ImageView getImageCardView() {
        return this.A00;
    }
}
