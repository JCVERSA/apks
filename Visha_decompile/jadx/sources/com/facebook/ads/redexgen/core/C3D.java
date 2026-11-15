package com.facebook.ads.redexgen.core;

import android.media.AudioManager;
import java.lang.ref.WeakReference;
import java.util.Arrays;
import javax.annotation.Nullable;

public final class C3D extends AbstractC0842Da {
    public static byte[] A04;
    public static String[] A05 = {"QMyl0EdrMkBz74Ff", "RsTLWDF6GNKozTWYWcUQtNpRSKZ3a8yy", "3BM6qDUn0450lnygNbifIZpDeGnVa2ha", "F", "qC4SUzvBtsB95zH", "T9xPYhzLnjJILIo2UZ88O5HWOSlCgw65", "9Z5hXOcvGEJoZZ2dBR43Uw9AYXT3hwwE", "j5Icya"};

    @Nullable
    public WeakReference<AudioManager.OnAudioFocusChangeListener> A00;
    public final DX A01;
    public final DR A02;
    public final DP A03;

    public static String A02(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A04, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 42);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A05() {
        A04 = new byte[]{-108, -88, -105, -100, -94};
    }

    static {
        A05();
    }

    public C3D(C1635dL c1635dL) {
        super(c1635dL);
        this.A00 = null;
        this.A01 = new DX() {
            public static byte[] A01;
            public static String[] A02 = {"QO", "Z8VzzUk48H2MjHputsbFKGrTuA", "oizJfYv64JjjPWcjk8h6rnHMPSWYW3KU", "f0BEY4eTEaDQ97bHAlskleks6ilDfv7w", "kzTTWWoLyKzhVsFKHFAAxGaFMysI7iP7", "O5", "DqVK5n8IQlswAJl59jQWGsTS7h", "g8gXhMPhSk6l7LNUsVLjaHR4ALnMtBc"};

            public static String A00(int i, int i2, int i3) {
                byte[] bArrCopyOfRange = Arrays.copyOfRange(A01, i, i + i2);
                int i4 = 0;
                while (true) {
                    int length = bArrCopyOfRange.length;
                    String[] strArr = A02;
                    if (strArr[5].length() != strArr[0].length()) {
                        throw new RuntimeException();
                    }
                    A02[3] = "zGtxq0LnznDpkAI9fIogelgluQXN9rJC";
                    if (i4 >= length) {
                        return new String(bArrCopyOfRange);
                    }
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 108);
                    i4++;
                }
            }

            public static void A01() {
                A01 = new byte[]{7, 19, 2, 15, 9};
            }

            static {
                A01();
            }

            @Override
            public final void A03(C06013d c06013d) {
                ((AudioManager) this.A00.getContext().getApplicationContext().getSystemService(A00(0, 5, 10))).abandonAudioFocus(this.A00.A00 == null ? null : (AudioManager.OnAudioFocusChangeListener) this.A00.A00.get());
            }
        };
        this.A02 = new DR() {
            public static byte[] A01;

            static {
                A01();
            }

            public static String A00(int i, int i2, int i3) {
                byte[] bArrCopyOfRange = Arrays.copyOfRange(A01, i, i + i2);
                for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 103);
                }
                return new String(bArrCopyOfRange);
            }

            public static void A01() {
                A01 = new byte[]{90, 78, 95, 82, 84};
            }

            @Override
            public final void A03(C3Y c3y) {
                ((AudioManager) this.A00.getContext().getApplicationContext().getSystemService(A00(0, 5, 92))).abandonAudioFocus(this.A00.A00 == null ? null : (AudioManager.OnAudioFocusChangeListener) this.A00.A00.get());
            }
        };
        this.A03 = new C3E(this);
    }

    @Override
    public final void A07() {
        super.A07();
        if (getVideoView() != null) {
            getVideoView().getEventBus().A03(this.A03, this.A01, this.A02);
        }
    }

    @Override
    public final void A08() {
        if (getVideoView() != null) {
            C1257Te<AbstractC1258Tf, C1256Td> eventBus = getVideoView().getEventBus();
            AbstractC1258Tf[] abstractC1258TfArr = new AbstractC1258Tf[3];
            String[] strArr = A05;
            if (strArr[5].charAt(16) == strArr[6].charAt(16)) {
                throw new RuntimeException();
            }
            String[] strArr2 = A05;
            strArr2[5] = "N8PlN6ko7rCmWrjSgXmwzpcc7zXrNMwO";
            strArr2[6] = "3Ei0HdJvkUvOcHctndwpn9MtMWHZ1TMz";
            abstractC1258TfArr[0] = this.A02;
            abstractC1258TfArr[1] = this.A01;
            abstractC1258TfArr[2] = this.A03;
            eventBus.A04(abstractC1258TfArr);
        }
        super.A08();
    }

    @Override
    public final void onDetachedFromWindow() {
        ((AudioManager) getContext().getApplicationContext().getSystemService(A02(0, 5, 9))).abandonAudioFocus(this.A00 == null ? null : this.A00.get());
        super.onDetachedFromWindow();
    }
}
