package com.facebook.ads.redexgen.core;

import java.util.Arrays;

public final class C2120lh implements EO {
    public int A00;
    public int A01;
    public int A02;
    public EM[] A03;
    public final int A04;
    public final boolean A05;
    public final byte[] A06;

    public C2120lh(boolean z, int i) {
        this(z, i, 0);
    }

    public C2120lh(boolean z, int i, int i2) {
        C3M.A07(i > 0);
        C3M.A07(i2 >= 0);
        this.A05 = z;
        this.A04 = i;
        this.A01 = i2;
        this.A03 = new EM[i2 + 100];
        if (i2 > 0) {
            this.A06 = new byte[i2 * i];
            for (int i3 = 0; i3 < i2; i3++) {
                this.A03[i3] = new EM(this.A06, i3 * i);
            }
            return;
        }
        this.A06 = null;
    }

    public final synchronized int A00() {
        return this.A00 * this.A04;
    }

    public final synchronized void A01() {
        if (this.A05) {
            A02(0);
        }
    }

    public final synchronized void A02(int i) {
        boolean targetBufferSizeReduced = i < this.A02;
        this.A02 = i;
        if (targetBufferSizeReduced) {
            AJi();
        }
    }

    @Override
    public final synchronized EM A41() {
        EM em;
        this.A00++;
        if (this.A01 > 0) {
            EM[] emArr = this.A03;
            int i = this.A01 - 1;
            this.A01 = i;
            em = (EM) C3M.A01(emArr[i]);
            this.A03[this.A01] = null;
        } else {
            em = new EM(new byte[this.A04], 0);
            if (this.A00 > this.A03.length) {
                this.A03 = (EM[]) Arrays.copyOf(this.A03, this.A03.length * 2);
            }
        }
        return em;
    }

    @Override
    public final int A8A() {
        return this.A04;
    }

    @Override
    public final synchronized void AGt(EM em) {
        EM[] emArr = this.A03;
        int i = this.A01;
        this.A01 = i + 1;
        emArr[i] = em;
        this.A00--;
        notifyAll();
    }

    @Override
    public final synchronized void AGu(EN en) {
        while (en != null) {
            EM[] emArr = this.A03;
            int i = this.A01;
            this.A01 = i + 1;
            emArr[i] = en.A6m();
            this.A00--;
            en = en.AC3();
        }
        notifyAll();
    }

    @Override
    public final synchronized void AJi() {
        int iA05 = AbstractC06244a.A05(this.A02, this.A04);
        int targetAllocationCount = this.A00;
        int iMax = Math.max(0, iA05 - targetAllocationCount);
        int targetAllocationCount2 = this.A01;
        if (iMax >= targetAllocationCount2) {
            return;
        }
        if (this.A06 != null) {
            int lowIndex = 0;
            int targetAllocationCount3 = this.A01;
            int highIndex = targetAllocationCount3 - 1;
            while (lowIndex <= highIndex) {
                EM highAllocation = (EM) C3M.A01(this.A03[lowIndex]);
                if (highAllocation.A01 == this.A06) {
                    lowIndex++;
                } else {
                    EM lowAllocation = (EM) C3M.A01(this.A03[highIndex]);
                    if (lowAllocation.A01 != this.A06) {
                        highIndex--;
                    } else {
                        this.A03[lowIndex] = lowAllocation;
                        int targetAllocationCount4 = highIndex - 1;
                        this.A03[highIndex] = highAllocation;
                        highIndex = targetAllocationCount4;
                        lowIndex++;
                    }
                }
            }
            iMax = Math.max(iMax, lowIndex);
            int targetAllocationCount5 = this.A01;
            if (iMax >= targetAllocationCount5) {
                return;
            }
        }
        EM[] emArr = this.A03;
        int targetAvailableCount = this.A01;
        Arrays.fill(emArr, iMax, targetAvailableCount, (Object) null);
        this.A01 = iMax;
    }
}
