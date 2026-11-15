package com.facebook.ads.redexgen.core;

import android.view.View;
import java.util.Arrays;

public final class C1788fq extends MQ {
    public static byte[] A03;
    public static String[] A04 = {"G2rh", "Fb5x", "6CyVQJjLjUxkB4NOtEwwqOuY7kB2daf", "v2svMG5ZVzKjVXyH1MXvdM9krQWCKsNq", "oRWr7RpHwOoI3beQIRyDA09DO9LlUwST", "SjgxBMhR0kRV74MEQavsGpgIJGrbvWLl", "8l9W", "lapvzpZuNASF"};
    public View A00;
    public final C1201Qz A01;
    public final C6M A02;

    public static String A02(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A03, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 16);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A03() {
        byte[] bArr = {69, 103, 104, 104, 105, 114, 38, 118, 116, 99, 117, 99, 104, 114, 38, 104, 115, 106, 106, 38, 103, 98, 80, 111, 99, 113};
        if (A04[7].length() == 31) {
            throw new RuntimeException();
        }
        A04[0] = "ScK1";
        A03 = bArr;
    }

    static {
        A03();
    }

    public C1788fq(C1201Qz c1201Qz) {
        this.A02 = c1201Qz.A09();
        this.A01 = c1201Qz;
    }

    @Override
    public final void A0C() {
        this.A02.A0F().A4M();
        AbstractC1313Vk.A00(new C1790fs(this));
    }

    @Override
    public final void A0D() {
        this.A02.A0F().A4P();
        AbstractC1313Vk.A00(new C1789fr(this));
    }

    @Override
    public final void A0E(View view) {
        if (view != null) {
            C6M c6m = this.A02;
            String[] strArr = A04;
            if (strArr[6].length() != strArr[1].length()) {
                throw new RuntimeException();
            }
            A04[0] = "eqHc";
            c6m.A0F().A4O();
            this.A00 = view;
            this.A01.A07().removeAllViews();
            this.A01.A07().addView(this.A00);
            if ((this.A00 instanceof C1031Ki) || (this.A00 instanceof Y9)) {
                V8.A01(this.A01.A05(), this.A00, this.A01.A0A());
            }
            AnonymousClass72 controller = this.A01.A08();
            if (controller != null) {
                controller.A0L();
            }
            AbstractC1313Vk.A00(new C1791ft(this));
            this.A01.A0B(this.A01.A07(), this.A00);
            if (U7.A1B(this.A01.A07().getContext())) {
                C1417Zm c1417Zm = new C1417Zm();
                this.A01.A0D(c1417Zm);
                c1417Zm.A0C(this.A01.getPlacementId());
                c1417Zm.A0B(this.A01.A07().getContext().getPackageName());
                if (this.A01.A08() != null && this.A01.A08().A0J() != null) {
                    c1417Zm.A09(this.A01.A08().A0J().A0C());
                }
                if (this.A00 instanceof C1031Ki) {
                    c1417Zm.A0A(((C1031Ki) this.A00).getViewabilityChecker());
                }
                this.A00.setOnLongClickListener(new R7(this, c1417Zm));
                this.A00.getOverlay().add(c1417Zm);
                return;
            }
            return;
        }
        throw new IllegalStateException(A02(0, 26, 22));
    }

    @Override
    public final void A0F(MP mp) {
        this.A02.A0F().A4N(this.A01.A08() != null);
        if (this.A01.A08() != null) {
            this.A01.A08().A0M();
        }
    }

    @Override
    public final void A0G(V1 v1) {
        this.A02.A0F().A3F(XG.A01(this.A01.A04()), v1.A03().getErrorCode(), v1.A04());
        AbstractC1313Vk.A00(new C1792fu(this, v1));
    }
}
