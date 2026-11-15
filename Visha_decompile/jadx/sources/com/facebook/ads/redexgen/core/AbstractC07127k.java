package com.facebook.ads.redexgen.core;

import java.nio.ByteBuffer;
import java.util.Arrays;
import okio.Utf8;

public abstract class AbstractC07127k extends AbstractC2232nW<C07117j, AbstractC07107i, C2050kM> implements InterfaceC2051kN {
    public static byte[] A01;
    public static String[] A02 = {"gN8", "v0q6HziqC5r28rLi1ZsQmD2OK0fgspik", "XftI4eRfVNg33Op0jQPz8O6PbCkMHbWE", "SdzNGuU6dc81VqISrLBD", "AmzsDcSyCxTNGO", "BjhKb3Az99p878kvj1gxEmyEzdFIjRD", "VkdZ1nUYKY17rCLbk1Npuh3A0WHSXOLE", "WDjquUi0atGhsKhHWhKEDeyGOzHRt12i"};
    public final String A00;

    public static String A0L(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A01, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            byte b = (byte) ((bArrCopyOfRange[i4] - i3) - 100);
            if (A02[0].length() != 3) {
                throw new RuntimeException();
            }
            String[] strArr = A02;
            strArr[2] = "7OO3CpMfw2stGNBOXFHDwltwdlKTQaUN";
            strArr[7] = "XdJDd6VP529P2X7c3MAKusUlyNrjc2WF";
            bArrCopyOfRange[i4] = b;
        }
        return new String(bArrCopyOfRange);
    }

    public static void A0M() {
        if (A02[0].length() != 3) {
            throw new RuntimeException();
        }
        String[] strArr = A02;
        strArr[5] = "V56IsTeJwH5mFHCmn3IS5snx7jCRlGG";
        strArr[4] = "owU73l6HwKvTqc";
        A01 = new byte[]{28, 53, 44, Utf8.REPLACEMENT_BYTE, 55, 44, 42, 59, 44, 43, -25, 43, 44, 42, 54, 43, 44, -25, 44, 57, 57, 54, 57};
    }

    public abstract J7 A0g(byte[] bArr, int i, boolean z) throws C2050kM;

    static {
        A0M();
    }

    public AbstractC07127k(String str) {
        super(new C07117j[2], new AbstractC07107i[2]);
        this.A00 = str;
        A0d(1024);
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [com.facebook.ads.redexgen.X.0w] */
    @Override
    public final C05440w A0c() {
        return new AbstractC07107i(this) {
            public final AbstractC07127k A00;

            {
                this.A00 = this;
            }

            @Override
            public final void A0B() {
                this.A00.A0h(this);
            }
        };
    }

    @Override
    public final C2050kM A0Y(C07117j c07117j, AbstractC07107i abstractC07107i, boolean z) {
        try {
            ByteBuffer inputData = (ByteBuffer) C3M.A01(c07117j.A02);
            abstractC07107i.A0C(c07117j.A01, A0g(inputData.array(), inputData.limit(), z), c07117j.A00);
            abstractC07107i.A01(Integer.MIN_VALUE);
            return null;
        } catch (C2050kM e) {
            return e;
        }
    }

    @Override
    public final C2050kM A0Z(Throwable th) {
        return new C2050kM(A0L(0, 23, 99), th);
    }

    @Override
    public final C07117j A0a() {
        return new C07117j();
    }

    public final void A0h(AbstractC07107i abstractC07107i) {
        super.A0f(abstractC07107i);
    }

    @Override
    public final void AIx(long j) {
    }
}
