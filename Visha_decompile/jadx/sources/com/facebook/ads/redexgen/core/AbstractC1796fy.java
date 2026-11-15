package com.facebook.ads.redexgen.core;

import android.view.View;
import android.view.animation.DecelerateInterpolator;
import android.widget.Scroller;
import com.transsion.socket.pkgdata.SocketData;
import java.util.Arrays;

public abstract class AbstractC1796fy extends QR {
    public static byte[] A03;
    public static String[] A04 = {"VI3k6vbyE", "wbKxmRtdnLanYPPQlq0AQ7UHjncjxjam", "7rHsxeXjhwTRluKKUSI3i7DNAgzyS", "RLsJgHk6VqLvU3GrilIJimxIkswsMvKT", "sHDfA32w1RYOD3HMFDMkWGxW2yjuY1ZH", "JEcuqbBofZsfD30FS8fTTaggCipMDK", "8NUawD4TiWbh8YzDjR1LHPIBKq0RidcG", "8EIjrQLLrDPWSel1MFlzfXR6TVhPBcGW"};
    public C06826g A00;
    public Scroller A01;
    public final QT A02 = new C1797fz(this);

    public static String A06(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A03, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 15);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A09() {
        A03 = new byte[]{-120, -75, 103, -80, -75, -70, -69, -88, -75, -86, -84, 103, -74, -83, 103, -106, -75, SocketData.CLAZZ_TYPE_ERROR_CODE, -77, -80, -75, -82, -109, -80, -70, -69, -84, -75, -84, -71, 103, -88, -77, -71, -84, -88, -85, -64, 103, -70, -84, -69, 117};
    }

    public abstract int A0C(QO qo, int i, int i2);

    public abstract View A0D(QO qo);

    @Deprecated
    public abstract C1814gH A0E(QO qo);

    public abstract int[] A0H(QO qo, View view);

    static {
        A09();
    }

    private final C1814gH A05(QO qo) {
        return A0E(qo);
    }

    private void A07() {
        this.A00.A1i(this.A02);
        this.A00.setOnFlingListener(null);
    }

    private void A08() throws IllegalStateException {
        if (this.A00.getOnFlingListener() == null) {
            this.A00.A1h(this.A02);
            this.A00.setOnFlingListener(this);
            return;
        }
        throw new IllegalStateException(A06(0, 43, 56));
    }

    private boolean A0A(QO qo, int i, int i2) {
        C1814gH c1814gHA05;
        int iA0C;
        if (!(qo instanceof InterfaceC1176Qa) || (c1814gHA05 = A05(qo)) == null || (iA0C = A0C(qo, i, i2)) == -1) {
            return false;
        }
        c1814gHA05.A0A(iA0C);
        qo.A1N(c1814gHA05);
        return true;
    }

    @Override
    public final boolean A0B(int i, int i2) {
        QO layoutManager = this.A00.getLayoutManager();
        if (layoutManager == null || this.A00.getAdapter() == null) {
            return false;
        }
        int minFlingVelocity = this.A00.getMinFlingVelocity();
        return (Math.abs(i2) > minFlingVelocity || Math.abs(i) > minFlingVelocity) && A0A(layoutManager, i, i2);
    }

    public final void A0F() {
        QO layoutManager;
        View viewA0D;
        if (this.A00 == null || (layoutManager = this.A00.getLayoutManager()) == null || (viewA0D = A0D(layoutManager)) == null) {
            return;
        }
        int[] iArrA0H = A0H(layoutManager, viewA0D);
        if (iArrA0H[0] != 0 || iArrA0H[1] != 0) {
            this.A00.A1e(iArrA0H[0], iArrA0H[1]);
        }
    }

    public final void A0G(C06826g c06826g) throws IllegalStateException {
        if (this.A00 == c06826g) {
            return;
        }
        C06826g c06826g2 = this.A00;
        if (A04[3].charAt(14) == 'w') {
            throw new RuntimeException();
        }
        A04[4] = "xzKGxret4GzWIxaR6oK37PWpSNYAUaFQ";
        if (c06826g2 != null) {
            A07();
        }
        this.A00 = c06826g;
        if (this.A00 != null) {
            A08();
            this.A01 = new Scroller(this.A00.getContext(), new DecelerateInterpolator());
            A0F();
        }
    }
}
