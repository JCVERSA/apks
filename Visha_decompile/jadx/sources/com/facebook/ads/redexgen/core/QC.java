package com.facebook.ads.redexgen.core;

import android.view.ViewGroup;
import com.facebook.ads.redexgen.core.AbstractC1182Qg;
import com.transsion.socket.pkgdata.SocketData;
import java.util.Arrays;
import java.util.List;

public abstract class QC<VH extends AbstractC1182Qg> {
    public static byte[] A02;
    public static String[] A03 = {"jUIKGw1ynNKnpAPmELSBfekQdKvvLP7N", "sNNGTv9KS6vRRQA34Mdww0wVckPktM11", "3xVPsODXVzGzX7adQrLtZXDPvj0RZqnv", "LC797JiAE7pTB", "T5D6LMII5PxeSeaFwmiiVgotr7WAYFJE", "TBv1Ih1UUm000Zp3KSd8PMLF2uMFBpSk", "SYlNiiXgaMsNCcAbu", "5Eyk2D6YZF50L"};
    public final QD A01 = new QD();
    public boolean A00 = false;

    public static String A08(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A02, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 1);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A09() {
        A02 = new byte[]{-73, -69, -123, -88, -41, -54, -58, -39, -54, -69, -50, -54, -36, -122, SocketData.CLAZZ_TYPE_FILE_BLOCK, 84, SocketData.CLAZZ_TYPE_CONNECT_CHECK, -94, 118, -99, -94, -104, SocketData.CLAZZ_TYPE_FILE_BLOCK, -99, -103, -85};
    }

    public abstract int A0B();

    public abstract VH A0F(ViewGroup viewGroup, int i);

    public abstract void A0K(VH vh, int i);

    static {
        A09();
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.QC != com.facebook.ads.internal.androidx.support.v7.widget.RecyclerView$Adapter<VH extends com.facebook.ads.redexgen.X.Qg> */
    private final void A0A(VH holder, int i, List<Object> payloads) {
        A0K(holder, i);
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.QC != com.facebook.ads.internal.androidx.support.v7.widget.RecyclerView$Adapter<VH extends com.facebook.ads.redexgen.X.Qg> */
    public final int A0C(int i) {
        return 0;
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.QC != com.facebook.ads.internal.androidx.support.v7.widget.RecyclerView$Adapter<VH extends com.facebook.ads.redexgen.X.Qg> */
    public final long A0D(int i) {
        return -1L;
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.QC != com.facebook.ads.internal.androidx.support.v7.widget.RecyclerView$Adapter<VH extends com.facebook.ads.redexgen.X.Qg> */
    public final VH A0E(ViewGroup viewGroup, int i) {
        OQ.A01(A08(0, 13, 100));
        VH vh = (VH) A0F(viewGroup, i);
        vh.A00 = i;
        OQ.A00();
        return vh;
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.QC != com.facebook.ads.internal.androidx.support.v7.widget.RecyclerView$Adapter<VH extends com.facebook.ads.redexgen.X.Qg> */
    public final void A0G() {
        this.A01.A00();
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.QC != com.facebook.ads.internal.androidx.support.v7.widget.RecyclerView$Adapter<VH extends com.facebook.ads.redexgen.X.Qg> */
    public final void A0H(QE qe) {
        this.A01.registerObserver(qe);
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.QC != com.facebook.ads.internal.androidx.support.v7.widget.RecyclerView$Adapter<VH extends com.facebook.ads.redexgen.X.Qg> */
    public final void A0I(QE qe) {
        this.A01.unregisterObserver(qe);
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.QC != com.facebook.ads.internal.androidx.support.v7.widget.RecyclerView$Adapter<VH extends com.facebook.ads.redexgen.X.Qg> */
    public final void A0J(VH vh, int i) {
        vh.A03 = i;
        if (A0M()) {
            long jA0D = A0D(i);
            String[] strArr = A03;
            if (strArr[4].charAt(21) == strArr[2].charAt(21)) {
                throw new RuntimeException();
            }
            A03[0] = "nL6OAJIdW8sl7jDyOoO0QwKhwUxIf89k";
            vh.A05 = jA0D;
        }
        vh.A0a(1, 519);
        OQ.A01(A08(13, 13, 51));
        A0A(vh, i, vh.A0R());
        vh.A0T();
        ViewGroup.LayoutParams layoutParams = vh.A0H.getLayoutParams();
        if (layoutParams instanceof QP) {
            ((QP) layoutParams).A01 = true;
        }
        OQ.A00();
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.QC != com.facebook.ads.internal.androidx.support.v7.widget.RecyclerView$Adapter<VH extends com.facebook.ads.redexgen.X.Qg> */
    public void A0L(C06826g c06826g) {
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.QC != com.facebook.ads.internal.androidx.support.v7.widget.RecyclerView$Adapter<VH extends com.facebook.ads.redexgen.X.Qg> */
    public final boolean A0M() {
        return this.A00;
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.QC != com.facebook.ads.internal.androidx.support.v7.widget.RecyclerView$Adapter<VH extends com.facebook.ads.redexgen.X.Qg> */
    public final boolean A0N(VH holder) {
        return false;
    }
}
