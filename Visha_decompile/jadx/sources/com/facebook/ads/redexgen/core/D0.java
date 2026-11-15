package com.facebook.ads.redexgen.core;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.widget.ImageView;
import java.util.Arrays;

public final class D0 extends ImageView implements InterfaceC1652dc {
    public static byte[] A05;
    public static String[] A06 = {"4xWU9o1Qdv49zg4k19WdZrOQJ68qlBKJ", "QfpLWsUkij8dLfBb7Aagb5qXzjDoxZj6", "QolGMRpELvSET2", "SiemLW4oVdpf", "uXL2k0aAaj67psTeNQKHhn5IgBi2NdXT", "OArHsnP", "A54GrsZIV89x3qzJRphed5abiMfcDTpl", "7SQmPw6zIXtGY8y4ylHwiNNuEQdMSmlG"};
    public static final int A07;
    public static final int A08;
    public E1 A00;
    public final Paint A01;
    public final C1635dL A02;
    public final C1278Ua A03;
    public final DE A04;

    public static String A03(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A05, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 62);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A06() {
        A05 = new byte[]{-100, -60, -61, -76, 111, -112, -77};
    }

    static {
        A06();
        A08 = (int) (AbstractC1338Wl.A02 * 40.0f);
        A07 = (int) (AbstractC1338Wl.A02 * 10.0f);
    }

    public D0(C1635dL c1635dL, C1278Ua c1278Ua) {
        super(c1635dL);
        this.A04 = new DE() {
            @Override
            public final void A03(DF df) {
                this.A00.A09();
            }
        };
        this.A03 = c1278Ua;
        this.A02 = c1635dL;
        this.A01 = new Paint();
        this.A01.setColor(Integer.MIN_VALUE);
        setColorFilter(-1);
        setPadding(A07, A07, A07, A07);
        setContentDescription(A03(0, 7, 17));
        A05();
        setOnClickListener(new ViewOnClickListenerC1669du(this));
    }

    private void A04() {
        setImageBitmap(XY.A01(XX.ICON_MUTE));
    }

    private void A05() {
        setImageBitmap(XY.A01(XX.ICON_UN_MUTE));
    }

    public boolean A07() {
        return this.A00 != null && this.A00.getVolume() == 0.0f;
    }

    public final void A09() {
        if (this.A00 == null) {
            return;
        }
        boolean zA07 = A07();
        if (A06[3].length() != 12) {
            throw new RuntimeException();
        }
        String[] strArr = A06;
        strArr[7] = "aX931uSfPaE8IiOHtPCxhipRkXbTn1t9";
        strArr[4] = "ET7wr0zhj8rUQx1GjBOUHwAZuNFVr5BQ";
        if (zA07) {
            A04();
        } else {
            A05();
        }
    }

    @Override
    public final void AAm(E1 e1) {
        this.A00 = e1;
        if (this.A00 != null) {
            this.A00.getEventBus().A05(this.A04);
        }
    }

    @Override
    public final void AJk(E1 e1) {
        if (this.A00 != null) {
            C1257Te<AbstractC1258Tf, C1256Td> eventBus = this.A00.getEventBus();
            DE de = this.A04;
            String[] strArr = A06;
            if (strArr[2].length() == strArr[5].length()) {
                throw new RuntimeException();
            }
            String[] strArr2 = A06;
            strArr2[6] = "f5V50lgekxKfxPRjN4EQZ5T7YD8zyqkA";
            strArr2[1] = "6bYokHrcutoPgrqwaKTDD5vNcVht1LGT";
            eventBus.A06(de);
        }
        this.A00 = null;
    }

    @Override
    public final void onDraw(Canvas canvas) {
        int y = getWidth() / 2;
        int x = getHeight() / 2;
        canvas.drawCircle(y, x, Math.min(y, x), this.A01);
        super.onDraw(canvas);
    }

    @Override
    public final void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        int height = A08;
        int width = A08;
        setMeasuredDimension(height, width);
    }
}
