package com.facebook.ads.redexgen.core;

import android.widget.ImageView;
import android.widget.RelativeLayout;

public final class C05872p extends AbstractC0842Da {
    public static String[] A04 = {"hk0dnqphYZ0B2FA2HHbeoaEOUC9cHUBv", "tTD1hmxYdA3U5n9t8Z20NsAIS", "BfpeWRttIDT9n", "BdF5VvNpfNEd8dAFz8yBB3tju8j2QPKu", "opIRFI8OjkHX6xnIsWRzCqWD0", "Ob0oYr4gU4dgC4EVWukqT8XlG8BtSCcB", "HPuRIIJ62FmEL4YF0ip1f4WrSa12U9bK", "7SB"};
    public final ImageView A00;
    public final C1635dL A01;
    public final AbstractC1258Tf<C06013d> A02;
    public final AbstractC1258Tf<DQ> A03;

    public C05872p(C1635dL c1635dL) {
        this(c1635dL, false);
    }

    public C05872p(C1635dL c1635dL, boolean z) {
        ImageView.ScaleType scaleType;
        int color;
        super(c1635dL);
        this.A03 = new C0841Cz(this);
        this.A02 = new C0840Cy(this);
        this.A01 = c1635dL;
        this.A00 = new ImageView(c1635dL);
        if (!z) {
            scaleType = ImageView.ScaleType.FIT_CENTER;
            color = -16777216;
        } else {
            scaleType = ImageView.ScaleType.FIT_START;
            color = 0;
        }
        this.A00.setScaleType(scaleType);
        XP.A0K(this.A00, color);
        this.A00.setLayoutParams(new RelativeLayout.LayoutParams(-1, -1));
        addView(this.A00);
    }

    @Override
    public final void A07() {
        super.A07();
        if (getVideoView() != null) {
            C1257Te<AbstractC1258Tf, C1256Td> eventBus = getVideoView().getEventBus();
            AbstractC1258Tf[] abstractC1258TfArr = new AbstractC1258Tf[2];
            String[] strArr = A04;
            if (strArr[3].charAt(25) != strArr[5].charAt(25)) {
                throw new RuntimeException();
            }
            String[] strArr2 = A04;
            strArr2[7] = "Nqq";
            strArr2[2] = "4efeQvUmAeHBj";
            abstractC1258TfArr[0] = this.A03;
            abstractC1258TfArr[1] = this.A02;
            eventBus.A03(abstractC1258TfArr);
        }
    }

    @Override
    public final void A08() {
        if (getVideoView() != null) {
            getVideoView().getEventBus().A04(this.A02, this.A03);
        }
        super.A08();
    }

    @Override
    public final void onLayout(boolean z, int i, int i2, int i3, int i4) {
        this.A00.layout(0, 0, i3 - i, i4 - i2);
    }

    public void setImage(String str) {
        setImage(str, null);
    }

    public void setImage(String str, InterfaceC1419Zo interfaceC1419Zo) {
        if (str == null) {
            setVisibility(8);
            return;
        }
        setVisibility(0);
        KZ downloadImageTask = new KZ(this.A00, this.A01).A04();
        if (interfaceC1419Zo != null) {
            downloadImageTask.A06(interfaceC1419Zo);
        }
        downloadImageTask.A07(str);
    }
}
