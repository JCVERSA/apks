package com.facebook.ads.redexgen.core;

import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.RelativeLayout;
import com.facebook.ads.RewardData;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public final class C1447aI extends FrameLayout {
    public static String[] A08 = {"Q8PK8a4jCXFMgXydViX", "2t", "0mtDJDWqZSrfiocTEOLDLA", "JwyFxt7bdt7eCUIm0ln", "fPboxvDBMmOISakSS", "MBnzPw5d2FxZEvBrnzM1TlMBrMh4WSuO", "jLpHRmCuYtO7UfmYbZzhe3ed5a74x24O", "3APcS373YHqcuLzV9G"};
    public AbstractC1365Xm A00;
    public YA A01;
    public final AbstractC1910hy A02;
    public final C1635dL A03;
    public final InterfaceC1366Xn A04;
    public final InterfaceC1446aH A05;
    public final E1 A06;
    public final List<View> A07;

    public C1447aI(C1473ai c1473ai, AbstractC1910hy abstractC1910hy, E1 e1, C0838Cw c0838Cw, AbstractC1426Zv abstractC1426Zv, InterfaceC1366Xn interfaceC1366Xn, InterfaceC1446aH interfaceC1446aH) {
        this(c1473ai, abstractC1910hy, e1, interfaceC1366Xn, interfaceC1446aH, c0838Cw, abstractC1426Zv);
    }

    public C1447aI(C1473ai c1473ai, AbstractC1910hy abstractC1910hy, E1 e1, InterfaceC1366Xn interfaceC1366Xn, InterfaceC1446aH interfaceC1446aH, View... viewArr) {
        this(c1473ai.A06(), c1473ai.A0C(), abstractC1910hy, e1, interfaceC1366Xn, interfaceC1446aH, viewArr);
    }

    public C1447aI(C1635dL c1635dL, AbstractC1365Xm abstractC1365Xm, AbstractC1910hy abstractC1910hy, E1 e1, InterfaceC1366Xn interfaceC1366Xn, InterfaceC1446aH interfaceC1446aH, View... viewArr) {
        super(c1635dL);
        this.A07 = new ArrayList();
        this.A03 = c1635dL;
        this.A00 = abstractC1365Xm;
        this.A02 = abstractC1910hy;
        for (View view : viewArr) {
            if (view != null) {
                this.A07.add(view);
            }
        }
        this.A04 = interfaceC1366Xn;
        this.A06 = e1;
        this.A05 = interfaceC1446aH;
        A04();
    }

    private void A04() {
        String strA06;
        RewardData rewardDataA0p = this.A02.A0p();
        if (rewardDataA0p == null) {
            strA06 = this.A02.A22().A05();
        } else {
            strA06 = this.A02.A22().A06(rewardDataA0p.getCurrency(), rewardDataA0p.getQuantity());
        }
        this.A01 = new YA(this.A03, -1, -16777216, strA06, null, this.A02.A22().A04(), this.A02.A22().A03(), XY.A01(XX.REWARD_ICON));
        this.A01.A02.setOnClickListener(new ViewOnClickListenerC1444aF(this));
        this.A01.A01.setOnClickListener(new ViewOnClickListenerC1445aG(this));
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -1);
        addView(this.A01, layoutParams);
    }

    public void A05() {
        if (this.A06 != null) {
            this.A06.A0g(EnumC1643dT.A07);
        }
        this.A05.ACI();
        if (!this.A02.A20().A0V()) {
            this.A02.A28(this.A04);
        }
    }

    /* JADX WARN: Code duplicated, block: B:13:0x0042  */
    /* JADX WARN: Code duplicated, block: B:18:0x0066  */
    /* JADX WARN: Code duplicated, block: B:20:0x0074 A[LOOP:0: B:15:0x004d->B:20:0x0074, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:23:0x0024 A[EDGE_INSN: B:23:0x0024->B:8:0x0024 BREAK  A[LOOP:0: B:15:0x004d->B:20:0x0074], SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:24:0x0081 A[SYNTHETIC] */
    public final void A07(ViewGroup viewGroup) {
        Iterator<View> it;
        boolean zHasNext;
        String[] strArr;
        if (this.A06 != null && !this.A06.A0r()) {
            E1 e1 = this.A06;
            String[] strArr2 = A08;
            if (strArr2[0].length() == strArr2[3].length()) {
                String[] strArr3 = A08;
                strArr3[4] = "1Ran1dt8ESvXQPCOL";
                strArr3[1] = "wn";
                e1.A0m(false, false, 11);
                XP.A0L(this.A06, 4);
                if (this.A00 != null) {
                    XP.A0F(this.A00);
                }
                it = this.A07.iterator();
                while (true) {
                    zHasNext = it.hasNext();
                    strArr = A08;
                    if (strArr[5].charAt(31) != strArr[6].charAt(31)) {
                        break;
                        break;
                    }
                    String[] strArr4 = A08;
                    strArr4[0] = "6LHnkwVNW3v3BurcJpp";
                    strArr4[3] = "pBsoAnuzgJgS4JAM4BB";
                    if (zHasNext) {
                        View next = it.next();
                        next.clearAnimation();
                        XP.A0L(next, 4);
                    } else {
                        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -1);
                        viewGroup.addView(this, layoutParams);
                        this.A05.AE8();
                        return;
                    }
                }
            }
        } else {
            if (this.A00 != null) {
                XP.A0F(this.A00);
            }
            it = this.A07.iterator();
            while (true) {
                zHasNext = it.hasNext();
                strArr = A08;
                if (strArr[5].charAt(31) != strArr[6].charAt(31)) {
                    break;
                }
                String[] strArr5 = A08;
                strArr5[0] = "6LHnkwVNW3v3BurcJpp";
                strArr5[3] = "pBsoAnuzgJgS4JAM4BB";
                if (zHasNext) {
                    View next2 = it.next();
                    next2.clearAnimation();
                    XP.A0L(next2, 4);
                } else {
                    RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(-1, -1);
                    viewGroup.addView(this, layoutParams2);
                    this.A05.AE8();
                    return;
                }
            }
        }
        throw new RuntimeException();
    }
}
