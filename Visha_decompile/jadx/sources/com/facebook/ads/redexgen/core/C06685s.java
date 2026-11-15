package com.facebook.ads.redexgen.core;

import android.graphics.Rect;
import android.os.Bundle;
import android.view.View;
import java.util.List;

public final class C06685s extends FH {
    public static String[] A00 = {"f1NrkMLFHAOxAk1WYXb4ZQBI9BQGMxNf", "ieQbYkP9qXWhodiL", "FasCpRA2RHhykdlBGUblwYUAQMGKU0mS", "sjzKgK2sh59qhJK5Sm5NCXrbKyy", "73hXtYSYooo4yypUFlMlXcqu25ITYI9G", "jFG3gQjXUuH0GALbmhZbm14pHMTfeDNL", "AB4YZhA3BNaHUCHwFjy4bae76Yz8EFa9", "dMMrkYyDXzmdfTW8HhUzXkOm8W"};

    public C06685s(C05290h c05290h, int i, List<C1602cn> list, C1708eX c1708eX, Bundle bundle) {
        super(c05290h, i, list, c1708eX, bundle);
        c05290h.A1h(this);
        this.A03 = new LG(this);
    }

    public void A00() {
        int iA25 = this.A0C.A25();
        if (this.A05 == null || iA25 == -1) {
            return;
        }
        int curPos = this.A05.size();
        if (iA25 < curPos - 1) {
            int i = iA25 + 1;
            if (A00[2].charAt(8) != 'R') {
                throw new RuntimeException();
            }
            A00[2] = "QoZYEwWSRtnMYn7R6MgH1oBp1kGEXSrp";
            A0U(i);
        }
    }

    private void A01(int i) {
        int visibleItem = this.A0C.A26();
        int lastVisibleItem = this.A0C.A27();
        int firstVisibleItem = this.A0C.A25();
        if (firstVisibleItem != visibleItem) {
            A0S(visibleItem);
        }
        if (firstVisibleItem != lastVisibleItem) {
            A0S(lastVisibleItem);
        }
        A0T(firstVisibleItem);
        A0V(visibleItem, lastVisibleItem, i);
    }

    @Override
    public final void A0L(C06826g c06826g, int i) {
    }

    @Override
    public final void A0M(C06826g c06826g, int i, int i2) {
        if (this.A0C.A25() != -1) {
            AbstractC0988Ir curCard = (AbstractC0988Ir) this.A0C.A1o(this.A0C.A25());
            if (curCard != null && curCard.A1T() && !curCard.A1S()) {
                curCard.A1Q();
            }
            A01(i);
        }
    }

    @Override
    public final void A0X(View view, boolean z) {
        view.setAlpha(z ? 1.0f : 0.8f);
    }

    @Override
    public final void A0Z(AbstractC0988Ir abstractC0988Ir, boolean z) {
        A0X(abstractC0988Ir, z);
        if (!z && abstractC0988Ir.A1S()) {
            abstractC0988Ir.A1P();
        }
    }

    @Override
    public final boolean A0a(View view) {
        Rect rect = new Rect();
        view.getGlobalVisibleRect(rect);
        return ((float) rect.width()) / ((float) view.getWidth()) >= 0.75f;
    }

    public final C1708eX A0b() {
        return this.A04;
    }

    public final void A0c(C1708eX c1708eX) {
        this.A04 = c1708eX;
    }

    public final void A0d(List<C1602cn> list) {
        this.A05 = list;
    }
}
