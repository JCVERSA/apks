package com.facebook.ads.redexgen.core;

import android.content.Context;
import android.view.Display;
import android.view.Surface;
import androidx.media3.common.C;
import com.transsion.socket.pkgdata.SocketData;
import java.util.Arrays;

public final class FV {
    public static byte[] A0H;
    public static String[] A0I = {"El1apek5TdjhfhN6viIbzGI1k6A8fvYa", "7lO0T01iPA0M2Tn6ez9XJF6fi3WcV0bl", "BUJOgokLGuaRN3Jb1lPoBsNrm7KBSu3J", "mjIihJQoirK71A6rZ4qRVtTe6TTtSgwc", "PHElykquIwSutGmUMi14ryiOqojKYZje", "FFUtkd6qKeeUYHXUT7DV9hX7r9PAWeGY", "aVKnabS1yBALevTpM7jFXLX0kSbTApQh", "pYdHEl16nY3gI4cpQf6RN4y0bom4H0uh"};
    public float A00;
    public float A01;
    public float A02;
    public float A03;
    public int A04;
    public long A05;
    public long A06;
    public long A07;
    public long A08;
    public long A09;
    public long A0A;
    public long A0B;
    public Surface A0C;
    public boolean A0D;
    public final F9 A0E = new F9();
    public final FT A0F;
    public final FU A0G;

    public static String A02(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A0H, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 30);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A06() {
        A0H = new byte[]{-62, -37, -50, -49, -39, -46, SocketData.CLAZZ_TYPE_ERROR_CODE, -31, -36, SocketData.CLAZZ_TYPE_ERROR_CODE, -34, -30, -46, -33, -26, SocketData.CLAZZ_TYPE_ERROR_CODE, -47, -42, -32, -35, -39, -50, -26, SocketData.CLAZZ_TYPE_ERROR_CODE, -33, -46, -45, -33, -46, -32, -43, SocketData.CLAZZ_TYPE_ERROR_CODE, -33, -50, -31, -46, -121, -102, -107, -106, -96, 119, -93, -110, -98, -106, SocketData.CLAZZ_TYPE_CONNECT_CHECK, -106, -99, -106, -110, -92, -106, 121, -106, -99, -95, -106, -93};
    }

    static {
        A06();
    }

    public FV(Context context) {
        this.A0F = A01(context);
        this.A0G = this.A0F != null ? FU.A00() : null;
        this.A0A = C.TIME_UNSET;
        this.A0B = C.TIME_UNSET;
        this.A00 = -1.0f;
        this.A01 = 1.0f;
        this.A04 = 0;
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

    public static FT A01(Context context) {
        C2109lW c2109lWA01 = null;
        if (context == null) {
            return null;
        }
        Context applicationContext = context.getApplicationContext();
        if (AbstractC06244a.A02 >= 17) {
            c2109lWA01 = C2109lW.A01(applicationContext);
        }
        if (c2109lWA01 == null) {
            return C2110lX.A00(applicationContext);
        }
        return c2109lWA01;
    }

    private void A03() {
        if (AbstractC06244a.A02 < 30 || this.A0C == null || this.A04 == Integer.MIN_VALUE || this.A03 == 0.0f) {
            return;
        }
        this.A03 = 0.0f;
        Surface surface = this.A0C;
        if (A0I[2].charAt(9) != 'u') {
            throw new RuntimeException();
        }
        A0I[2] = "PQOfzOqD2ukvp3odpMH5qIU7xJUCien7";
        FR.A02(surface, 0.0f);
    }

    private void A04() {
        this.A05 = 0L;
        this.A06 = -1L;
        this.A08 = -1L;
    }

    /* JADX WARN: Code duplicated, block: B:33:0x0069  */
    /* JADX WARN: Code duplicated, block: B:35:0x006d  */
    /* JADX WARN: Code duplicated, block: B:36:0x006f  */
    /* JADX WARN: Code duplicated, block: B:39:0x0078  */
    private void A05() {
        float f;
        if (AbstractC06244a.A02 < 30 || this.A0C == null) {
            return;
        }
        float fA00 = this.A0E.A06() ? this.A0E.A00() : this.A00;
        float candidateFrameRate = this.A02;
        if (fA00 == candidateFrameRate) {
            return;
        }
        boolean z = true;
        if (fA00 != -1.0f) {
            float candidateFrameRate2 = this.A02;
            if (candidateFrameRate2 != -1.0f) {
                if (this.A0E.A06() && this.A0E.A03() >= 5000000000L) {
                    f = 0.02f;
                } else {
                    f = 1.0f;
                }
                float candidateFrameRate3 = this.A02;
                if (Math.abs(fA00 - candidateFrameRate3) < f) {
                    z = false;
                }
            } else if (fA00 != -1.0f) {
                z = true;
            } else if (this.A0E.A01() < 30) {
                z = false;
            }
        } else if (fA00 != -1.0f) {
            z = true;
        } else if (this.A0E.A01() < 30) {
            z = false;
        }
        if (z) {
            this.A02 = fA00;
            A09(false);
        }
    }

    public void A07(Display display) {
        if (display != null) {
            double defaultDisplayRefreshRate = display.getRefreshRate();
            this.A0A = (long) (1.0E9d / defaultDisplayRefreshRate);
            this.A0B = (this.A0A * 80) / 100;
        } else {
            AnonymousClass44.A07(A02(36, 23, 19), A02(0, 36, 79));
            this.A0A = C.TIME_UNSET;
            this.A0B = C.TIME_UNSET;
        }
    }

    private void A09(boolean z) {
        if (AbstractC06244a.A02 < 30 || this.A0C == null || this.A04 == Integer.MIN_VALUE) {
            return;
        }
        float f = 0.0f;
        if (this.A0D && this.A02 != -1.0f) {
            float f2 = this.A02;
            float surfacePlaybackFrameRate = this.A01;
            f = f2 * surfacePlaybackFrameRate;
        }
        if (!z) {
            float surfacePlaybackFrameRate2 = this.A03;
            if (surfacePlaybackFrameRate2 == f) {
                return;
            }
        }
        this.A03 = f;
        FR.A02(this.A0C, f);
    }

    public static boolean A0A(long j, long j2) {
        return Math.abs(j - j2) <= 20000000;
    }

    public final long A0B(long j) {
        long j2 = j;
        if (this.A06 != -1 && this.A0E.A06()) {
            long jA02 = this.A0E.A02();
            long frameDurationNs = this.A07;
            long j3 = this.A05;
            long adjustedReleaseTimeNs = this.A06;
            long frameDurationNs2 = frameDurationNs + ((long) (((j3 - adjustedReleaseTimeNs) * jA02) / this.A01));
            if (A0A(j2, frameDurationNs2)) {
                j2 = frameDurationNs2;
            } else {
                A04();
            }
        }
        long adjustedReleaseTimeNs2 = this.A05;
        this.A08 = adjustedReleaseTimeNs2;
        this.A09 = j2;
        if (this.A0G == null || this.A0A == C.TIME_UNSET) {
            return j2;
        }
        long j4 = this.A0G.A04;
        if (j4 == C.TIME_UNSET) {
            return j2;
        }
        long sampledVsyncTimeNs = A00(j2, j4, this.A0A);
        long adjustedReleaseTimeNs3 = this.A0B;
        return sampledVsyncTimeNs - adjustedReleaseTimeNs3;
    }

    public final void A0C() {
        A04();
    }

    public final void A0D() {
        this.A0D = true;
        A04();
        if (this.A0F != null) {
            ((FU) C3M.A01(this.A0G)).A06();
            this.A0F.AGn(new FS() {
                @Override
                public final void ACz(Display display) {
                    this.A00.A07(display);
                }
            });
        }
        A09(false);
    }

    public final void A0E() {
        this.A0D = false;
        if (this.A0F != null) {
            this.A0F.AJl();
            ((FU) C3M.A01(this.A0G)).A07();
        }
        A03();
    }

    public final void A0F(float f) {
        this.A00 = f;
        this.A0E.A04();
        A05();
    }

    public final void A0G(long j) {
        if (this.A08 != -1) {
            this.A06 = this.A08;
            this.A07 = this.A09;
        }
        this.A05++;
        this.A0E.A05(1000 * j);
        A05();
    }
}
