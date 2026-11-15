package com.facebook.ads.redexgen.core;

import android.content.Context;
import android.graphics.PointF;
import android.os.Parcelable;
import android.view.View;
import android.view.accessibility.AccessibilityEvent;
import androidx.fragment.app.FragmentTransaction;
import com.facebook.ads.internal.androidx.support.v7.widget.LinearLayoutManager$SavedState;
import com.facebook.ads.internal.util.parcelable.WrappedParcelable;
import com.transsion.hubsdk.api.lighting.TranSceneConfig;
import java.util.Arrays;
import java.util.List;

public class C1815gI extends QO implements InterfaceC1176Qa {
    public static byte[] A0F;
    public static String[] A0G = {"ZTDwmEtle1avZIcEXO6Ngzge8j05pfT9", "s1YfUPq4amp3sGXTr0KOnMWCCCkrB2x5", "RLSriKm", "hA4l3MFFurEjuKvfb479JjwTp2cnC09n", "5GFF521rSn4TdhEStccPhauxYrt7NMVp", "XQN2s9DMc1xKucEpv2CitIAcNHBR8E7y", "8ubGCSX", "EFysGv6XChRnXfWxG2n7d2ksHTdYT6om"};
    public int A00;
    public int A01;
    public int A02;
    public LinearLayoutManager$SavedState A03;
    public Q8 A04;
    public boolean A05;
    public int A06;
    public Q3 A07;
    public boolean A08;
    public boolean A09;
    public boolean A0A;
    public boolean A0B;
    public boolean A0C;
    public final Q1 A0D;
    public final Q2 A0E;

    public static String A0T(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A0F, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 91);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A0V() {
        A0F = new byte[]{31, 24, 0, 23, 26, 31, 18, 86, 25, 4, 31, 19, 24, 2, 23, 2, 31, 25, 24, 76};
    }

    static {
        A0V();
    }

    public C1815gI(Context context) {
        this(context, 1, false);
    }

    public C1815gI(Context context, int i, boolean z) {
        this.A0A = false;
        this.A05 = false;
        this.A0C = false;
        this.A0B = true;
        this.A01 = -1;
        this.A02 = Integer.MIN_VALUE;
        this.A03 = null;
        this.A0D = new Q1(this);
        this.A0E = new Q2();
        this.A06 = 2;
        A2C(i);
        A0h(z);
        A1T(true);
    }

    private final int A04(int i, QW qw, C1179Qd c1179Qd) {
        if (A0Y() == 0 || i == 0) {
            return 0;
        }
        this.A07.A0B = true;
        A2B();
        int absDy = i > 0 ? 1 : -1;
        int consumed = Math.abs(i);
        A0Y(absDy, consumed, true, c1179Qd);
        int i2 = this.A07.A07;
        int layoutDirection = A07(qw, this.A07, c1179Qd, false);
        int i3 = i2 + layoutDirection;
        if (i3 < 0) {
            return 0;
        }
        int absDy2 = consumed > i3 ? absDy * i3 : i;
        int layoutDirection2 = -absDy2;
        this.A04.A0J(layoutDirection2);
        this.A07.A04 = absDy2;
        return absDy2;
    }

    private int A05(int i, QW qw, C1179Qd c1179Qd, boolean z) {
        int fixOffset;
        int gap = this.A04.A07() - i;
        if (gap > 0) {
            int i2 = -A04(-gap, qw, c1179Qd);
            int i3 = i + i2;
            if (z && (fixOffset = this.A04.A07() - i3) > 0) {
                this.A04.A0J(fixOffset);
                return fixOffset + i2;
            }
            return i2;
        }
        return 0;
    }

    private int A06(int i, QW qw, C1179Qd c1179Qd, boolean z) {
        int iA0A;
        int gap = i - this.A04.A0A();
        if (gap > 0) {
            int i2 = -A04(gap, qw, c1179Qd);
            int i3 = i + i2;
            if (z && (iA0A = i3 - this.A04.A0A()) > 0) {
                this.A04.A0J(-iA0A);
                return i2 - iA0A;
            }
            return i2;
        }
        return 0;
    }

    private final int A07(QW qw, Q3 q3, C1179Qd c1179Qd, boolean z) {
        int i = q3.A00;
        int start = q3.A07;
        if (start != Integer.MIN_VALUE) {
            int start2 = q3.A00;
            if (start2 < 0) {
                int i2 = q3.A07;
                int start3 = q3.A00;
                q3.A07 = i2 + start3;
            }
            A0e(qw, q3);
        }
        int i3 = q3.A00;
        int start4 = q3.A02;
        int i4 = i3 + start4;
        Q2 q2 = this.A0E;
        while (true) {
            if ((!q3.A09 && i4 <= 0) || !q3.A05(c1179Qd)) {
                break;
            }
            q2.A00();
            A2F(qw, c1179Qd, q3, q2);
            if (!q2.A01) {
                int i5 = q3.A06;
                int remainingSpace = q2.A00;
                int start5 = q3.A05;
                q3.A06 = i5 + (remainingSpace * start5);
                if (!q2.A03 || this.A07.A08 != null || !c1179Qd.A07()) {
                    int remainingSpace2 = q3.A00;
                    int start6 = q2.A00;
                    q3.A00 = remainingSpace2 - start6;
                    int start7 = q2.A00;
                    i4 -= start7;
                }
                int start8 = q3.A07;
                if (start8 != Integer.MIN_VALUE) {
                    int remainingSpace3 = q3.A07;
                    int start9 = q2.A00;
                    q3.A07 = remainingSpace3 + start9;
                    int start10 = q3.A00;
                    if (start10 < 0) {
                        int remainingSpace4 = q3.A07;
                        int start11 = q3.A00;
                        q3.A07 = remainingSpace4 + start11;
                    }
                    A0e(qw, q3);
                }
                if (z && q2.A02) {
                    break;
                }
            } else {
                break;
            }
        }
        int start12 = q3.A00;
        return i - start12;
    }

    private int A08(C1179Qd c1179Qd) {
        if (A0Y() == 0) {
            return 0;
        }
        A2B();
        return AbstractC1183Qh.A00(c1179Qd, this.A04, A0R(!this.A0B, true), A0Q(!this.A0B, true), this, this.A0B);
    }

    private int A0A(C1179Qd c1179Qd) {
        if (A0Y() != 0) {
            A2B();
            return AbstractC1183Qh.A02(c1179Qd, this.A04, A0R(!this.A0B, true), A0Q(!this.A0B, true), this, this.A0B, this.A05);
        }
        if (A0G[3].charAt(25) != '2') {
            throw new RuntimeException();
        }
        A0G[1] = "J9JFedtgHh7lzsKv2wGVe5URJzbGPRgH";
        return 0;
    }

    private int A0B(C1179Qd c1179Qd) {
        if (A0Y() == 0) {
            return 0;
        }
        A2B();
        return AbstractC1183Qh.A01(c1179Qd, this.A04, A0R(!this.A0B, true), A0Q(!this.A0B, true), this, this.A0B);
    }

    private final int A0C(C1179Qd c1179Qd) {
        if (c1179Qd.A06()) {
            return this.A04.A0B();
        }
        return 0;
    }

    private View A0D() {
        return A0H(0, A0Y());
    }

    private View A0E() {
        return A0H(A0Y() - 1, -1);
    }

    private View A0F() {
        return A0v(this.A05 ? 0 : A0Y() - 1);
    }

    private View A0G() {
        return A0v(this.A05 ? A0Y() - 1 : 0);
    }

    private final View A0H(int i, int i2) {
        int next;
        int acceptableBoundsFlag;
        int preferredBoundsFlag;
        A2B();
        if (i2 > i) {
            next = 1;
        } else {
            next = i2 < i ? -1 : 0;
        }
        if (next == 0) {
            return A0v(i);
        }
        int preferredBoundsFlag2 = this.A04.A0F(A0v(i));
        int next2 = this.A04.A0A();
        if (preferredBoundsFlag2 < next2) {
            acceptableBoundsFlag = 16644;
            preferredBoundsFlag = 16388;
        } else {
            acceptableBoundsFlag = 4161;
            preferredBoundsFlag = FragmentTransaction.TRANSIT_FRAGMENT_OPEN;
        }
        int next3 = this.A00;
        if (next3 == 0) {
            return super.A04.A00(i, i2, acceptableBoundsFlag, preferredBoundsFlag);
        }
        return super.A05.A00(i, i2, acceptableBoundsFlag, preferredBoundsFlag);
    }

    private final View A0I(int i, int i2, boolean z, boolean z2) {
        int i3;
        A2B();
        int i4 = 0;
        if (z) {
            i3 = 24579;
        } else {
            i3 = TranSceneConfig.SCENE_TYPE_GAME_MLBB_MONSTER_KILL;
        }
        if (z2) {
            i4 = TranSceneConfig.SCENE_TYPE_GAME_MLBB_MONSTER_KILL;
        }
        int i5 = this.A00;
        int acceptableBoundsFlag = A0G[5].charAt(29);
        if (acceptableBoundsFlag != 69) {
            throw new RuntimeException();
        }
        A0G[5] = "CO2lCdhiUyNnJNyVLVKK7uQ85cne8EHP";
        if (i5 == 0) {
            return super.A04.A00(i, i2, i3, i4);
        }
        return super.A05.A00(i, i2, i3, i4);
    }

    private View A0J(QW qw, C1179Qd c1179Qd) {
        return A2A(qw, c1179Qd, 0, A0Y(), c1179Qd.A03());
    }

    private View A0L(QW qw, C1179Qd c1179Qd) {
        return A2A(qw, c1179Qd, A0Y() - 1, -1, c1179Qd.A03());
    }

    private View A0M(QW qw, C1179Qd c1179Qd) {
        return this.A05 ? A0D() : A0E();
    }

    private View A0N(QW qw, C1179Qd c1179Qd) {
        return this.A05 ? A0E() : A0D();
    }

    private View A0O(QW qw, C1179Qd c1179Qd) {
        return this.A05 ? A0J(qw, c1179Qd) : A0L(qw, c1179Qd);
    }

    private View A0P(QW qw, C1179Qd c1179Qd) {
        return this.A05 ? A0L(qw, c1179Qd) : A0J(qw, c1179Qd);
    }

    private View A0Q(boolean z, boolean z2) {
        if (this.A05) {
            return A0I(0, A0Y(), z, z2);
        }
        return A0I(A0Y() - 1, -1, z, z2);
    }

    private View A0R(boolean z, boolean z2) {
        if (this.A05) {
            return A0I(A0Y() - 1, -1, z, z2);
        }
        return A0I(0, A0Y(), z, z2);
    }

    private final Q3 A0S() {
        return new Q3();
    }

    private void A0U() {
        if (this.A00 == 1 || !A2H()) {
            this.A05 = this.A0A;
        } else {
            this.A05 = !this.A0A;
        }
    }

    private void A0W(int i, int i2) {
        this.A07.A00 = this.A04.A07() - i2;
        this.A07.A03 = this.A05 ? -1 : 1;
        this.A07.A01 = i;
        this.A07.A05 = 1;
        this.A07.A06 = i2;
        this.A07.A07 = Integer.MIN_VALUE;
    }

    private void A0X(int i, int i2) {
        this.A07.A00 = i2 - this.A04.A0A();
        this.A07.A01 = i;
        this.A07.A03 = this.A05 ? 1 : -1;
        this.A07.A05 = -1;
        this.A07.A06 = i2;
        this.A07.A07 = Integer.MIN_VALUE;
    }

    private void A0Y(int i, int i2, boolean z, C1179Qd c1179Qd) {
        int iA0A;
        this.A07.A09 = A0i();
        this.A07.A02 = A0C(c1179Qd);
        this.A07.A05 = i;
        int i3 = -1;
        if (i == 1) {
            this.A07.A02 += this.A04.A08();
            View viewA0F = A0F();
            Q3 q3 = this.A07;
            if (!this.A05) {
                i3 = 1;
            }
            q3.A03 = i3;
            this.A07.A01 = A0r(viewA0F) + this.A07.A03;
            this.A07.A06 = this.A04.A0C(viewA0F);
            iA0A = this.A04.A0C(viewA0F) - this.A04.A07();
        } else {
            View viewA0G = A0G();
            this.A07.A02 += this.A04.A0A();
            this.A07.A03 = this.A05 ? 1 : -1;
            this.A07.A01 = A0r(viewA0G) + this.A07.A03;
            this.A07.A06 = this.A04.A0F(viewA0G);
            iA0A = (-this.A04.A0F(viewA0G)) + this.A04.A0A();
        }
        this.A07.A00 = i2;
        if (z) {
            Q3 q4 = this.A07;
            int scrollingOffset = q4.A00;
            q4.A00 = scrollingOffset - iA0A;
        }
        this.A07.A07 = iA0A;
    }

    private void A0Z(Q1 q1) {
        A0W(q1.A01, q1.A00);
    }

    private void A0a(Q1 q1) {
        A0X(q1.A01, q1.A00);
    }

    private void A0b(QW qw, int i) {
        int iA0Y = A0Y();
        if (i < 0) {
            return;
        }
        int iA06 = this.A04.A06() - i;
        boolean z = this.A05;
        int limit = A0G[3].charAt(25);
        if (limit != 50) {
            throw new RuntimeException();
        }
        A0G[1] = "5eQap7viEGWOuRbzagNYDGjkAWEMIhVp";
        if (z) {
            for (int i2 = 0; i2 < iA0Y; i2++) {
                View viewA0v = A0v(i2);
                int childCount = this.A04.A0F(viewA0v);
                if (childCount >= iA06) {
                    int childCount2 = this.A04.A0H(viewA0v);
                    if (childCount2 >= iA06) {
                    }
                }
                int limit2 = A0G[4].length();
                if (limit2 != 13) {
                    String[] strArr = A0G;
                    strArr[6] = "EiwXPaP";
                    strArr[2] = "4OvxlWI";
                    A0d(qw, 0, i2);
                    return;
                }
                A0d(qw, 0, i2);
                return;
            }
            return;
        }
        for (int i3 = iA0Y - 1; i3 >= 0; i3--) {
            View viewA0v2 = A0v(i3);
            int childCount3 = this.A04.A0F(viewA0v2);
            if (childCount3 >= iA06) {
                int childCount4 = this.A04.A0H(viewA0v2);
                if (childCount4 >= iA06) {
                }
            }
            int childCount5 = iA0Y - 1;
            A0d(qw, childCount5, i3);
            return;
        }
    }

    private void A0c(QW qw, int i) {
        if (i < 0) {
            return;
        }
        int iA0Y = A0Y();
        if (this.A05) {
            for (int i2 = iA0Y - 1; i2 >= 0; i2--) {
                View viewA0v = A0v(i2);
                Q8 q8 = this.A04;
                int childCount = A0G[5].charAt(29);
                if (childCount != 69) {
                    throw new RuntimeException();
                }
                A0G[3] = "CCkneFsBnjHsOQTiipl2DNgji2H70UcR";
                int limit = q8.A0C(viewA0v);
                if (limit <= i) {
                    int limit2 = this.A04.A0G(viewA0v);
                    if (limit2 <= i) {
                    }
                }
                int limit3 = iA0Y - 1;
                A0d(qw, limit3, i2);
                return;
            }
            return;
        }
        for (int i3 = 0; i3 < iA0Y; i3++) {
            View viewA0v2 = A0v(i3);
            int limit4 = this.A04.A0C(viewA0v2);
            if (limit4 <= i) {
                int limit5 = this.A04.A0G(viewA0v2);
                if (limit5 <= i) {
                }
            }
            A0d(qw, 0, i3);
            return;
        }
    }

    private void A0d(QW qw, int i, int i2) {
        if (i == i2) {
            return;
        }
        if (i2 > i) {
            for (int i3 = i2 - 1; i3 >= i; i3--) {
                A16(i3, qw);
            }
            return;
        }
        while (i > i2) {
            A16(i, qw);
            i--;
        }
    }

    private void A0e(QW qw, Q3 q3) {
        if (!q3.A0B || q3.A09) {
            return;
        }
        if (q3.A05 == -1) {
            A0b(qw, q3.A07);
        } else {
            A0c(qw, q3.A07);
        }
    }

    private void A0f(QW qw, C1179Qd c1179Qd, int scrapExtraEnd, int scrapExtraEnd2) {
        if (!c1179Qd.A08() || A0Y() == 0 || c1179Qd.A07() || !A24()) {
            return;
        }
        int iA0D = 0;
        int scrapExtraStart = 0;
        List<AbstractC1182Qg> listA0J = qw.A0J();
        int i = listA0J.size();
        int iA0r = A0r(A0v(0));
        for (int scrapSize = 0; scrapSize < i; scrapSize++) {
            AbstractC1182Qg abstractC1182Qg = listA0J.get(scrapSize);
            if (!abstractC1182Qg.A0g()) {
                int direction = 1;
                if ((abstractC1182Qg.A0O() < iA0r) != this.A05) {
                    direction = -1;
                }
                if (direction == -1) {
                    iA0D += this.A04.A0D(abstractC1182Qg.A0H);
                } else {
                    scrapExtraStart += this.A04.A0D(abstractC1182Qg.A0H);
                }
            }
        }
        this.A07.A08 = listA0J;
        if (iA0D > 0) {
            A0X(A0r(A0G()), scrapExtraEnd);
            this.A07.A02 = iA0D;
            this.A07.A00 = 0;
            this.A07.A04();
            A07(qw, this.A07, c1179Qd, false);
        }
        if (scrapExtraStart > 0) {
            A0W(A0r(A0F()), scrapExtraEnd2);
            this.A07.A02 = scrapExtraStart;
            this.A07.A00 = 0;
            this.A07.A04();
            A07(qw, this.A07, c1179Qd, false);
        }
        this.A07.A08 = null;
    }

    private void A0g(QW qw, C1179Qd c1179Qd, Q1 q1) {
        if (A0k(c1179Qd, q1) || A0j(qw, c1179Qd, q1)) {
            return;
        }
        q1.A02();
        q1.A01 = this.A0C ? c1179Qd.A03() - 1 : 0;
    }

    private final void A0h(boolean z) {
        A20(null);
        if (z == this.A0A) {
            return;
        }
        this.A0A = z;
        A10();
    }

    private final boolean A0i() {
        return this.A04.A09() == 0 && this.A04.A06() == 0;
    }

    private boolean A0j(QW qw, C1179Qd c1179Qd, Q1 q1) {
        View viewA0P;
        int iA0A;
        if (A0Y() == 0) {
            return false;
        }
        View viewA0u = A0u();
        if (viewA0u != null && q1.A06(viewA0u, c1179Qd)) {
            q1.A05(viewA0u);
            return true;
        }
        if (this.A08 != this.A0C) {
            return false;
        }
        if (q1.A02) {
            viewA0P = A0O(qw, c1179Qd);
        } else {
            viewA0P = A0P(qw, c1179Qd);
        }
        if (viewA0P == null) {
            return false;
        }
        q1.A04(viewA0P);
        if (!c1179Qd.A07() && A24()) {
            if (this.A04.A0F(viewA0P) >= this.A04.A07() || this.A04.A0C(viewA0P) < this.A04.A0A()) {
                if (q1.A02) {
                    iA0A = this.A04.A07();
                } else {
                    iA0A = this.A04.A0A();
                }
                q1.A00 = iA0A;
            }
        }
        return true;
    }

    /* JADX WARN: Code restructure failed: missing block: B:37:0x00b2, code lost:
    
        if ((r7 - r6) < 0) goto L38;
     */
    /* JADX WARN: Code restructure failed: missing block: B:38:0x00b4, code lost:
    
        r10.A00 = r8.A04.A0A();
        r10.A02 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x00be, code lost:
    
        return true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:41:0x00c7, code lost:
    
        if ((r7 - r6) < 0) goto L38;
     */
    /* JADX WARN: Code restructure failed: missing block: B:43:0x00ca, code lost:
    
        r1 = r8.A04.A07() - r8.A04.A0C(r5);
     */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x00d7, code lost:
    
        if (r1 >= 0) goto L47;
     */
    /* JADX WARN: Code restructure failed: missing block: B:45:0x00d9, code lost:
    
        r10.A00 = r8.A04.A07();
        r10.A02 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:46:0x00e3, code lost:
    
        return true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:48:0x00e6, code lost:
    
        if (r10.A02 == false) goto L51;
     */
    /* JADX WARN: Code restructure failed: missing block: B:49:0x00e8, code lost:
    
        r1 = r8.A04.A0C(r5);
        r1 = r1 + r8.A04.A05();
     */
    /* JADX WARN: Code restructure failed: missing block: B:50:0x00f5, code lost:
    
        r10.A00 = r1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:51:0x00f8, code lost:
    
        r1 = r8.A04.A0F(r5);
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private boolean A0k(C1179Qd c1179Qd, Q1 q1) {
        if (c1179Qd.A07() || this.A01 == -1) {
            return false;
        }
        int i = this.A01;
        if (A0G[7].charAt(1) != 'F') {
            throw new RuntimeException();
        }
        A0G[7] = "TFIDoufW7PPC7ZEj7Y5tPHllsDSURNN1";
        if (i < 0 || this.A01 >= c1179Qd.A03()) {
            this.A01 = -1;
            this.A02 = Integer.MIN_VALUE;
            return false;
        }
        q1.A01 = this.A01;
        if (this.A03 != null && this.A03.A01()) {
            q1.A02 = this.A03.A02;
            if (q1.A02) {
                q1.A00 = this.A04.A07() - this.A03.A00;
            } else {
                q1.A00 = this.A04.A0A() + this.A03.A00;
            }
            return true;
        }
        if (this.A02 == Integer.MIN_VALUE) {
            View viewA1o = A1o(this.A01);
            if (viewA1o != null) {
                if (this.A04.A0D(viewA1o) > this.A04.A0B()) {
                    q1.A02();
                    return true;
                }
                int iA0F = this.A04.A0F(viewA1o);
                int iA0A = this.A04.A0A();
                if (A0G[7].charAt(1) != 'F') {
                    A0G[1] = "BfWLqmz6tLXTBl9sOf8GvQUpsUyqil7O";
                } else {
                    A0G[3] = "F1yYn32nqotC7GL2fjmWFlYeH2UBHhCV";
                }
            } else {
                if (A0Y() > 0) {
                    View child = A0v(0);
                    q1.A02 = (this.A01 < A0r(child)) == this.A05;
                }
                q1.A02();
            }
            return true;
        }
        boolean z = this.A05;
        if (A0G[5].charAt(29) != 'E') {
            throw new RuntimeException();
        }
        A0G[7] = "6FIelR57229tmCeHfVqBadRckpOvBeMr";
        q1.A02 = z;
        if (this.A05) {
            q1.A00 = this.A04.A07() - this.A02;
        } else {
            q1.A00 = this.A04.A0A() + this.A02;
        }
        return true;
    }

    @Override
    public int A1f(int i, QW qw, C1179Qd c1179Qd) {
        if (this.A00 == 1) {
            return 0;
        }
        return A04(i, qw, c1179Qd);
    }

    @Override
    public int A1g(int i, QW qw, C1179Qd c1179Qd) {
        if (this.A00 == 0) {
            return 0;
        }
        return A04(i, qw, c1179Qd);
    }

    @Override
    public final int A1h(C1179Qd c1179Qd) {
        return A08(c1179Qd);
    }

    @Override
    public final int A1i(C1179Qd c1179Qd) {
        return A0A(c1179Qd);
    }

    @Override
    public final int A1j(C1179Qd c1179Qd) {
        return A0B(c1179Qd);
    }

    @Override
    public final int A1k(C1179Qd c1179Qd) {
        return A08(c1179Qd);
    }

    @Override
    public final int A1l(C1179Qd c1179Qd) {
        return A0A(c1179Qd);
    }

    @Override
    public final int A1m(C1179Qd c1179Qd) {
        return A0B(c1179Qd);
    }

    @Override
    public final Parcelable A1n() {
        if (this.A03 != null) {
            return new WrappedParcelable(new LinearLayoutManager$SavedState(this.A03));
        }
        LinearLayoutManager$SavedState linearLayoutManager$SavedState = new LinearLayoutManager$SavedState();
        if (A0Y() > 0) {
            A2B();
            boolean didLayoutFromEnd = this.A08 ^ this.A05;
            linearLayoutManager$SavedState.A02 = didLayoutFromEnd;
            if (didLayoutFromEnd) {
                View refChild = A0F();
                linearLayoutManager$SavedState.A00 = this.A04.A07() - this.A04.A0C(refChild);
                linearLayoutManager$SavedState.A01 = A0r(refChild);
            } else {
                View viewA0G = A0G();
                linearLayoutManager$SavedState.A01 = A0r(viewA0G);
                linearLayoutManager$SavedState.A00 = this.A04.A0F(viewA0G) - this.A04.A0A();
            }
        } else {
            linearLayoutManager$SavedState.A00();
        }
        return new WrappedParcelable(linearLayoutManager$SavedState);
    }

    @Override
    public final View A1o(int i) {
        int firstChild = A0Y();
        if (firstChild == 0) {
            return null;
        }
        int childCount = i - A0r(A0v(0));
        if (childCount >= 0 && childCount < firstChild) {
            View viewA0v = A0v(childCount);
            if (A0r(viewA0v) == i) {
                return viewA0v;
            }
        }
        return super.A1o(i);
    }

    @Override
    public View A1p(View view, int i, QW qw, C1179Qd c1179Qd) {
        int maxScroll;
        View nextFocus;
        View viewA0F;
        A0U();
        if (A0Y() == 0 || (maxScroll = A29(i)) == Integer.MIN_VALUE) {
            return null;
        }
        A2B();
        A2B();
        int layoutDir = this.A04.A0B();
        A0Y(maxScroll, (int) (layoutDir * 0.33333334f), false, c1179Qd);
        this.A07.A07 = Integer.MIN_VALUE;
        this.A07.A0B = false;
        A07(qw, this.A07, c1179Qd, true);
        if (maxScroll == -1) {
            nextFocus = A0N(qw, c1179Qd);
        } else {
            nextFocus = A0M(qw, c1179Qd);
        }
        if (maxScroll == -1) {
            viewA0F = A0G();
        } else {
            viewA0F = A0F();
        }
        if (viewA0F.hasFocusable()) {
            if (nextFocus == null) {
                return null;
            }
            return viewA0F;
        }
        return nextFocus;
    }

    @Override
    public QP A1q() {
        return new QP(-2, -2);
    }

    @Override
    public void A1r(int i) {
        this.A01 = i;
        this.A02 = Integer.MIN_VALUE;
        if (this.A03 != null) {
            this.A03.A00();
        }
        A10();
    }

    @Override
    public final void A1s(int i, int i2, C1179Qd c1179Qd, QM qm) {
        if (this.A00 != 0) {
            i = i2;
        }
        int delta = A0Y();
        if (delta == 0 || i == 0) {
            return;
        }
        A2B();
        int i3 = i > 0 ? 1 : -1;
        int delta2 = Math.abs(i);
        A0Y(i3, delta2, true, c1179Qd);
        A2G(c1179Qd, this.A07, qm);
    }

    @Override
    public final void A1t(int i, QM qm) {
        boolean z;
        int direction;
        if (this.A03 != null && this.A03.A01()) {
            z = this.A03.A02;
            direction = this.A03.A01;
        } else {
            A0U();
            z = this.A05;
            if (this.A01 == -1) {
                direction = z ? i - 1 : 0;
            } else {
                direction = this.A01;
            }
        }
        int anchorPos = z ? -1 : 1;
        for (int i2 = 0; i2 < this.A06 && direction >= 0 && direction < i; i2++) {
            qm.A3u(direction, 0);
            direction += anchorPos;
        }
    }

    @Override
    public final void A1u(Parcelable parcelable) {
        ClassLoader classLoader;
        if (!(parcelable instanceof WrappedParcelable) || (classLoader = getClass().getClassLoader()) == null) {
            return;
        }
        Parcelable state = ((WrappedParcelable) parcelable).unwrap(classLoader);
        if (state instanceof LinearLayoutManager$SavedState) {
            this.A03 = (LinearLayoutManager$SavedState) state;
            A10();
        }
    }

    @Override
    public final void A1v(AccessibilityEvent accessibilityEvent) {
        super.A1v(accessibilityEvent);
        if (A0Y() > 0) {
            accessibilityEvent.setFromIndex(A26());
            if (A0G[1].charAt(13) == 'I') {
                throw new RuntimeException();
            }
            String[] strArr = A0G;
            strArr[6] = "JM0e54P";
            strArr[2] = "62qYDCA";
            accessibilityEvent.setToIndex(A27());
        }
    }

    /* JADX WARN: Code duplicated, block: B:86:0x0242  */
    @Override
    public void A1w(QW qw, C1179Qd c1179Qd) {
        int startOffset;
        int fixOffset;
        int extraForStart;
        View viewA1o;
        int fixOffset2;
        int extraForStart2 = -1;
        if ((this.A03 != null || this.A01 != -1) && c1179Qd.A03() == 0) {
            A1K(qw);
            return;
        }
        if (this.A03 != null && this.A03.A01()) {
            this.A01 = this.A03.A01;
        }
        A2B();
        Q3 q3 = this.A07;
        if (A0G[4].length() == 13) {
            throw new RuntimeException();
        }
        String[] strArr = A0G;
        strArr[6] = "TEU8GGg";
        strArr[2] = "lg12FnG";
        q3.A0B = false;
        A0U();
        View viewA0u = A0u();
        if (!this.A0D.A03 || this.A01 != -1 || this.A03 != null) {
            this.A0D.A03();
            this.A0D.A02 = this.A05 ^ this.A0C;
            A0g(qw, c1179Qd, this.A0D);
            this.A0D.A03 = true;
        } else if (viewA0u != null) {
            int startOffset2 = this.A04.A0F(viewA0u);
            int lastElement = this.A04.A07();
            if (A0G[0].charAt(9) != '8') {
                A0G[1] = "cu8BBcv0k6hBgzqZsr0VN3sfifuVMQ62";
                if (startOffset2 < lastElement) {
                    if (this.A04.A0C(viewA0u) <= this.A04.A0A()) {
                    }
                }
            } else if (startOffset2 < lastElement) {
                if (this.A04.A0C(viewA0u) <= this.A04.A0A()) {
                }
            }
            this.A0D.A05(viewA0u);
        }
        int lastElement2 = A0C(c1179Qd);
        if (this.A07.A04 >= 0) {
            startOffset = 0;
        } else {
            startOffset = lastElement2;
            lastElement2 = 0;
        }
        int current = startOffset + this.A04.A0A();
        int startOffset3 = lastElement2 + this.A04.A08();
        if (c1179Qd.A07() && this.A01 != -1 && this.A02 != Integer.MIN_VALUE && (viewA1o = A1o(this.A01)) != null) {
            if (this.A05) {
                fixOffset2 = (this.A04.A07() - this.A04.A0C(viewA1o)) - this.A02;
            } else {
                fixOffset2 = this.A02 - (this.A04.A0F(viewA1o) - this.A04.A0A());
            }
            if (fixOffset2 > 0) {
                current += fixOffset2;
            } else {
                startOffset3 -= fixOffset2;
            }
        }
        if (this.A0D.A02) {
            if (this.A05) {
                extraForStart2 = 1;
            }
        } else if (!this.A05) {
            extraForStart2 = 1;
        }
        A2E(qw, c1179Qd, this.A0D, extraForStart2);
        A1J(qw);
        this.A07.A09 = A0i();
        this.A07.A0A = c1179Qd.A07();
        if (this.A0D.A02) {
            A0a(this.A0D);
            this.A07.A02 = current;
            A07(qw, this.A07, c1179Qd, false);
            extraForStart = this.A07.A06;
            int extraForEnd = this.A07.A01;
            if (this.A07.A00 > 0) {
                Q3 q4 = this.A07;
                if (A0G[7].charAt(1) != 'F') {
                    String[] strArr2 = A0G;
                    strArr2[6] = "MJWLhmn";
                    strArr2[2] = "Xdeja1C";
                    startOffset3 += q4.A00;
                } else {
                    A0G[3] = "HkWuM96xU0ciNRE25G4cwktgC29lbS6I";
                    startOffset3 += q4.A00;
                }
            }
            A0Z(this.A0D);
            this.A07.A02 = startOffset3;
            this.A07.A01 += this.A07.A03;
            A07(qw, this.A07, c1179Qd, false);
            fixOffset = this.A07.A06;
            if (this.A07.A00 > 0) {
                int i = this.A07.A00;
                A0X(extraForEnd, extraForStart);
                this.A07.A02 = i;
                A07(qw, this.A07, c1179Qd, false);
                extraForStart = this.A07.A06;
            }
        } else {
            A0Z(this.A0D);
            this.A07.A02 = startOffset3;
            A07(qw, this.A07, c1179Qd, false);
            fixOffset = this.A07.A06;
            int extraForEnd2 = this.A07.A01;
            if (this.A07.A00 > 0) {
                current += this.A07.A00;
            }
            A0a(this.A0D);
            this.A07.A02 = current;
            this.A07.A01 += this.A07.A03;
            A07(qw, this.A07, c1179Qd, false);
            extraForStart = this.A07.A06;
            if (this.A07.A00 > 0) {
                int i2 = this.A07.A00;
                A0W(extraForEnd2, fixOffset);
                this.A07.A02 = i2;
                A07(qw, this.A07, c1179Qd, false);
                fixOffset = this.A07.A06;
            }
        }
        if (A0Y() > 0) {
            if (this.A05 ^ this.A0C) {
                int iA05 = A05(fixOffset, qw, c1179Qd, true);
                int extraForStart3 = extraForStart + iA05;
                int fixOffset3 = fixOffset + iA05;
                int iA06 = A06(extraForStart3, qw, c1179Qd, false);
                extraForStart = extraForStart3 + iA06;
                fixOffset = fixOffset3 + iA06;
            } else {
                int iA07 = A06(extraForStart, qw, c1179Qd, true);
                int extraForStart4 = extraForStart + iA07;
                int fixOffset4 = fixOffset + iA07;
                int iA08 = A05(fixOffset4, qw, c1179Qd, false);
                extraForStart = extraForStart4 + iA08;
                fixOffset = fixOffset4 + iA08;
            }
        }
        A0f(qw, c1179Qd, extraForStart, fixOffset);
        if (!c1179Qd.A07()) {
            this.A04.A0I();
        } else {
            this.A0D.A03();
        }
        this.A08 = this.A0C;
    }

    @Override
    public void A1x(C1179Qd c1179Qd) {
        super.A1x(c1179Qd);
        this.A03 = null;
        this.A01 = -1;
        this.A02 = Integer.MIN_VALUE;
        this.A0D.A03();
    }

    @Override
    public final void A1y(C06826g c06826g, QW qw) {
        super.A1y(c06826g, qw);
        if (this.A09) {
            A1K(qw);
            qw.A0P();
        }
    }

    @Override
    public void A1z(C06826g c06826g, C1179Qd c1179Qd, int i) {
        C1814gH linearSmoothScroller = new C1814gH(c06826g.getContext());
        linearSmoothScroller.A0A(i);
        A1N(linearSmoothScroller);
    }

    @Override
    public final void A20(String str) {
        if (this.A03 == null) {
            super.A20(str);
        }
    }

    @Override
    public final boolean A21() {
        return (A0a() == 1073741824 || A0k() == 1073741824 || !A1U()) ? false : true;
    }

    @Override
    public final boolean A22() {
        return this.A00 == 0;
    }

    @Override
    public final boolean A23() {
        return this.A00 == 1;
    }

    @Override
    public boolean A24() {
        return this.A03 == null && this.A08 == this.A0C;
    }

    public final int A25() {
        View child = A0I(0, A0Y(), true, false);
        if (child == null) {
            return -1;
        }
        return A0r(child);
    }

    public final int A26() {
        View child = A0I(0, A0Y(), false, true);
        if (child == null) {
            return -1;
        }
        return A0r(child);
    }

    public final int A27() {
        View child = A0I(A0Y() - 1, -1, false, true);
        if (child == null) {
            return -1;
        }
        return A0r(child);
    }

    public final int A28() {
        return this.A00;
    }

    public final int A29(int i) {
        switch (i) {
            case 1:
                if (this.A00 == 1) {
                    return -1;
                }
                boolean zA2H = A2H();
                if (A0G[4].length() != 13) {
                    A0G[7] = "JFBGAdvw0W46p1IiHd184rfjlhxsbjRk";
                    return zA2H ? 1 : -1;
                }
                break;
            case 2:
                return (this.A00 != 1 && A2H()) ? -1 : 1;
            case 17:
                if (this.A00 == 0) {
                    return -1;
                }
                return Integer.MIN_VALUE;
            case 33:
                if (this.A00 == 1) {
                    return -1;
                }
                return Integer.MIN_VALUE;
            case 66:
                int i2 = this.A00;
                String[] strArr = A0G;
                if (strArr[6].length() == strArr[2].length()) {
                    A0G[0] = "A4gNOGqmCbgTlyYHXDAs3UqrHjABAhAn";
                    return i2 == 0 ? 1 : Integer.MIN_VALUE;
                }
                break;
            case 130:
                return this.A00 == 1 ? 1 : Integer.MIN_VALUE;
            default:
                return Integer.MIN_VALUE;
        }
        throw new RuntimeException();
    }

    public View A2A(QW qw, C1179Qd c1179Qd, int i, int i2, int i3) {
        A2B();
        View view = null;
        View view2 = null;
        int iA0A = this.A04.A0A();
        int boundsEnd = this.A04.A07();
        int boundsStart = i2 > i ? 1 : -1;
        while (i != i2) {
            View outOfBoundsMatch = A0v(i);
            int iA0r = A0r(outOfBoundsMatch);
            if (iA0r >= 0 && iA0r < i3) {
                if (((QP) outOfBoundsMatch.getLayoutParams()).A02()) {
                    if (view == null) {
                        view = outOfBoundsMatch;
                    }
                } else if (this.A04.A0F(outOfBoundsMatch) >= boundsEnd || this.A04.A0C(outOfBoundsMatch) < iA0A) {
                    if (view2 == null) {
                        view2 = outOfBoundsMatch;
                    }
                } else {
                    return outOfBoundsMatch;
                }
            }
            i += boundsStart;
        }
        return view2 != null ? view2 : view;
    }

    public final void A2B() {
        if (this.A07 == null) {
            Q3 q3A0S = A0S();
            if (A0G[3].charAt(25) != '2') {
                throw new RuntimeException();
            }
            A0G[7] = "6FRvOBuqOIFmnj4QgnBJgNDOjl7oudHL";
            this.A07 = q3A0S;
        }
        if (this.A04 == null) {
            this.A04 = Q8.A02(this, this.A00);
        }
    }

    public final void A2C(int i) {
        if (i == 0 || i == 1) {
            A20(null);
            if (i == this.A00) {
                return;
            }
            this.A00 = i;
            this.A04 = null;
            A10();
            return;
        }
        throw new IllegalArgumentException(A0T(0, 20, 45) + i);
    }

    public final void A2D(int i, int i2) {
        this.A01 = i;
        this.A02 = i2;
        if (this.A03 != null) {
            this.A03.A00();
        }
        A10();
    }

    public void A2E(QW qw, C1179Qd c1179Qd, Q1 q1, int i) {
    }

    public void A2F(QW qw, C1179Qd c1179Qd, Q3 q3, Q2 q2) {
        int iA0i;
        int right;
        int iA0g;
        int iA0E;
        View viewA03 = q3.A03(qw);
        if (viewA03 == null) {
            q2.A01 = true;
            return;
        }
        QP qp = (QP) viewA03.getLayoutParams();
        if (q3.A08 == null) {
            if (this.A05 == (q3.A05 == -1)) {
                A19(viewA03);
            } else {
                A1B(viewA03, 0);
            }
        } else {
            boolean z = this.A05;
            int bottom = q3.A05;
            if (z == (bottom == -1)) {
                A18(viewA03);
            } else {
                A1A(viewA03, 0);
            }
        }
        A1C(viewA03, 0, 0);
        q2.A00 = this.A04.A0D(viewA03);
        if (this.A00 == 1) {
            if (A2H()) {
                iA0E = A0j() - A0h();
                iA0g = iA0E - this.A04.A0E(viewA03);
            } else {
                iA0g = A0g();
                iA0E = this.A04.A0E(viewA03) + iA0g;
            }
            if (q3.A05 == -1) {
                right = q3.A06;
                iA0i = q3.A06 - q2.A00;
            } else {
                iA0i = q3.A06;
                right = q3.A06 + q2.A00;
            }
        } else {
            iA0i = A0i();
            right = this.A04.A0E(viewA03) + iA0i;
            int bottom2 = q3.A05;
            if (bottom2 == -1) {
                iA0E = q3.A06;
                int i = q3.A06;
                int bottom3 = q2.A00;
                iA0g = i - bottom3;
            } else {
                iA0g = q3.A06;
                int i2 = q3.A06;
                int bottom4 = q2.A00;
                iA0E = i2 + bottom4;
            }
        }
        A1D(viewA03, iA0g, iA0i, iA0E, right);
        if (qp.A02() || qp.A01()) {
            q2.A03 = true;
        }
        q2.A02 = viewA03.hasFocusable();
    }

    public void A2G(C1179Qd c1179Qd, Q3 q3, QM qm) {
        int i = q3.A01;
        if (i >= 0) {
            int pos = c1179Qd.A03();
            if (i < pos) {
                int pos2 = q3.A07;
                qm.A3u(i, Math.max(0, pos2));
            }
        }
    }

    public final boolean A2H() {
        return A0c() == 1;
    }

    @Override
    public final PointF A4y(int i) {
        if (A0Y() == 0) {
            return null;
        }
        boolean z = i < A0r(A0v(0));
        boolean z2 = this.A05;
        int firstChildPos = A0G[4].length();
        if (firstChildPos == 13) {
            throw new RuntimeException();
        }
        A0G[7] = "FFnbbIQmxzlcCB5QJgqtb02Njm6aLfkX";
        int i2 = z != z2 ? -1 : 1;
        int direction = this.A00;
        if (direction == 0) {
            return new PointF(i2, 0.0f);
        }
        return new PointF(0.0f, i2);
    }
}
