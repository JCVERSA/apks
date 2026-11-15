package com.facebook.ads.redexgen.core;

import android.content.Context;
import android.hardware.display.DisplayManager;
import android.view.Display;
import android.view.WindowManager;
import androidx.media3.common.C;
import java.util.Arrays;
import okio.Utf8;

public final class FY {
    public static byte[] A0C;
    public static String[] A0D = {"vrjy3LPqmZ4VYL", "kldC8xOSHjGgI0Rq8UB5uDItbCAb4yeD", "ZtlkL6mqEDvYXWdJ148AMfPypAXzloX0", "vv3uN80MDVvh0kr3i18f6F5St9zthXAP", "5vSY45XZaWTc5ARQpJ6MABJkKRGBO5p9", "E4RES2qVkVhri6POLSj0lZrJ1TN13SFq", "ZPGU8CInoZ6FL7owV0UYW5v36RZ6UHPP", "wFHJA8K1ufuqr0OxwfXIZVwS7Glp9Dxp"};
    public long A00;
    public long A01;
    public long A02;
    public long A03;
    public long A04;
    public long A05;
    public long A06;
    public long A07;
    public boolean A08;
    public final WindowManager A09;
    public final FW A0A;
    public final FX A0B;

    public static String A02(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A0C, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 113);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A04() {
        A0C = new byte[]{108, 97, 123, 120, 100, 105, 113, 38, 56, Utf8.REPLACEMENT_BYTE, 53, 62, 38};
    }

    static {
        A04();
    }

    public FY() {
        this(null);
    }

    public FY(Context context) {
        if (context != null) {
            this.A09 = (WindowManager) context.getSystemService(A02(7, 6, 32));
        } else {
            this.A09 = null;
        }
        if (this.A09 != null) {
            this.A0A = AbstractC06244a.A02 >= 17 ? A01(context) : null;
            this.A0B = FX.A00();
        } else {
            this.A0A = null;
            this.A0B = null;
        }
        this.A06 = C.TIME_UNSET;
        this.A07 = C.TIME_UNSET;
    }

    public static long A00(long j, long j2, long j3) {
        long j4;
        long vsyncCount = j3 * ((j - j2) / j3);
        long j5 = j2 + vsyncCount;
        if (j <= j5) {
            j4 = j5 - j3;
        } else {
            j4 = j5;
            j5 += j3;
        }
        return j5 - j < j - j4 ? j5 : j4;
    }

    private FW A01(Context context) {
        DisplayManager displayManager = (DisplayManager) context.getSystemService(A02(0, 7, 121));
        if (displayManager == null) {
            return null;
        }
        return new FW(this, displayManager);
    }

    public void A03() {
        Display defaultDisplay = this.A09.getDefaultDisplay();
        if (defaultDisplay != null) {
            this.A06 = (long) (1.0E9d / ((double) defaultDisplay.getRefreshRate()));
            this.A07 = (this.A06 * 80) / 100;
        }
    }

    private boolean A06(long j, long j2) {
        long j3 = j - this.A04;
        long elapsedFrameTimeNs = this.A05;
        return Math.abs((j2 - elapsedFrameTimeNs) - j3) > 20000000;
    }

    /* JADX WARN: Code duplicated, block: B:26:0x008f  */
    public final long A07(long j, long j2) {
        long j3 = 1000 * j;
        long j4 = j3;
        long j5 = j2;
        if (this.A08) {
            if (j != this.A02) {
                this.A01++;
                this.A00 = this.A03;
            }
            if (this.A01 >= 6) {
                long j6 = this.A00 + ((j3 - this.A04) / this.A01);
                if (A06(j6, j2)) {
                    this.A08 = false;
                } else {
                    long j7 = this.A05;
                    if (A0D[4].length() == 4) {
                        throw new RuntimeException();
                    }
                    A0D[2] = "LxalG4mHATb18PeqaNeAayN2I9HozhV7";
                    j5 = (j7 + j6) - this.A04;
                    j4 = j6;
                }
            } else {
                boolean zA06 = A06(j3, j2);
                if (A0D[2].charAt(6) == 'm') {
                    A0D[0] = "QXST6c0zZjLjc8mFjZqys1TY6ZZx4";
                    if (zA06) {
                        this.A08 = false;
                    }
                } else if (zA06) {
                    this.A08 = false;
                }
            }
        }
        if (!this.A08) {
            this.A04 = j3;
            this.A05 = j2;
            this.A01 = 0L;
            this.A08 = true;
        }
        this.A02 = j;
        this.A03 = j4;
        if (this.A0B == null || this.A06 == C.TIME_UNSET) {
            return j5;
        }
        long j8 = this.A0B.A04;
        if (j8 == C.TIME_UNSET) {
            return j5;
        }
        return A00(j5, j8, this.A06) - this.A07;
    }

    public final void A08() {
        if (this.A09 != null) {
            if (this.A0A != null) {
                this.A0A.A01();
            }
            this.A0B.A07();
        }
    }

    public final void A09() {
        this.A08 = false;
        if (this.A09 != null) {
            this.A0B.A06();
            if (this.A0A != null) {
                this.A0A.A00();
            }
            A03();
        }
    }
}
