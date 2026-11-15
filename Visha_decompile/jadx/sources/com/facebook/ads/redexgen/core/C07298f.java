package com.facebook.ads.redexgen.core;

import android.media.AudioAttributes;
import android.media.AudioFormat;
import android.media.AudioTrack;
import com.facebook.video.heroplayer.exocustom.MetaExoPlayerCustomization;
import java.util.Arrays;
import okio.Utf8;
import org.mozilla.classfile.ByteCode;

public final class C07298f {
    public static byte[] A0A;
    public static String[] A0B = {"rRI8qFzkORd3qFRWXYKq4VZ7aOLIEK5J", "8iww", "9Fk01UJleHjJYWOvUCOjDovINy", "Tv7H9N81DtUxkF43CmkgrLrGhTLdsXix", "nBkKdwNSwO57UCO3SoKJGDMTXuqjBDbM", "lOXwNuIjFjHmQAdnwK2N8OZR9kPb", "lPFUJhDD1cvxNL1LCxfPRC2f3Pky1Kvn", "6r"};
    public final int A00;
    public final int A01;
    public final int A02;
    public final int A03;
    public final int A04;
    public final int A05;
    public final int A06;
    public final C2312or A07;
    public final boolean A08;
    public final AnonymousClass38[] A09;

    public static String A06(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A0A, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 4);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A07() {
        A0A = new byte[]{5, 36, 39, 32, 52, 45, 53, 0, 52, 37, 40, 46, 18, 40, 47, 42, 40, Utf8.REPLACEMENT_BYTE, 35, 38, 46, ByteCode.T_LONG, Utf8.REPLACEMENT_BYTE, 46, 35, 37, 30, 56, 43, 41, 33, 112, 106, 57, 62, 43, 62, 47, 119, 111, 46, 102, 106, 43, Utf8.REPLACEMENT_BYTE, 46, 35, 37, 30, 56, 43, 41, 33, ByteCode.T_LONG, 38, 38, 37, 41, 43, 62, 47, 46, 100, 45, 47, 62, 98, 99, 119, 111, 46};
    }

    static {
        A07();
    }

    public C07298f(C2312or c2312or, int i, int i2, int i3, int i4, int i5, int i6, int i7, AnonymousClass38[] anonymousClass38Arr, boolean z) {
        this.A07 = c2312or;
        this.A01 = i;
        this.A04 = i2;
        this.A05 = i3;
        this.A06 = i4;
        this.A02 = i5;
        this.A03 = i6;
        this.A00 = i7;
        this.A09 = anonymousClass38Arr;
        this.A08 = z;
    }

    public static AudioAttributes A00() {
        return new AudioAttributes.Builder().setContentType(3).setFlags(16).setUsage(1).build();
    }

    public static AudioAttributes A01(C2318oy c2318oy, boolean z) {
        if (z) {
            return A00();
        }
        return c2318oy.A01().A00;
    }

    private AudioTrack A02(C2318oy c2318oy, int i) {
        int iA04 = AbstractC06244a.A04(c2318oy.A05);
        if (i != 0) {
            return new AudioTrack(iA04, this.A06, this.A02, this.A03, this.A00, 1, i);
        }
        return new AudioTrack(iA04, this.A06, this.A02, this.A03, this.A00, 1);
    }

    private AudioTrack A03(boolean z, C2318oy c2318oy, int i) {
        if (AbstractC06244a.A02 >= 29) {
            return A05(z, c2318oy, i);
        }
        if (AbstractC06244a.A02 >= 21) {
            return A04(z, c2318oy, i);
        }
        AudioTrack audioTrackA02 = A02(c2318oy, i);
        String[] strArr = A0B;
        if (strArr[5].length() == strArr[7].length()) {
            throw new RuntimeException();
        }
        String[] strArr2 = A0B;
        strArr2[5] = "QYyaIvQJX9uBRZ92y0XmWMx9BnIt";
        strArr2[7] = "OM";
        return audioTrackA02;
    }

    private AudioTrack A04(boolean z, C2318oy c2318oy, int i) {
        return new AudioTrack(A01(c2318oy, z), C2196mw.A0D(this.A06, this.A02, this.A03), this.A00, 1, i);
    }

    private AudioTrack A05(boolean z, C2318oy c2318oy, int i) {
        AudioFormat audioFormatA0D = C2196mw.A0D(this.A06, this.A02, this.A03);
        AudioAttributes audioTrackAttributes = A01(c2318oy, z);
        AudioTrack.Builder audioFormat = new AudioTrack.Builder().setAudioAttributes(audioTrackAttributes).setAudioFormat(audioFormatA0D);
        boolean z2 = true;
        AudioTrack.Builder sessionId = audioFormat.setTransferMode(1).setBufferSizeInBytes(this.A00).setSessionId(i);
        if (this.A04 != 1) {
            z2 = false;
        }
        AudioTrack audioTrackBuild = sessionId.setOffloadedPlayback(z2).build();
        String[] strArr = A0B;
        if (strArr[4].length() == strArr[2].length()) {
            throw new RuntimeException();
        }
        A0B[1] = "btQ69Jh";
        return audioTrackBuild;
    }

    public final long A08(long j) {
        return (1000000 * j) / ((long) this.A06);
    }

    public final long A09(long j) {
        return (1000000 * j) / ((long) this.A07.A0G);
    }

    @MetaExoPlayerCustomization(type = {"FEATURE_LOGIC"}, value = "D23918943: Monitor the audio track usage through audioTrackAllocated")
    public final AudioTrack A0A(boolean z, C2318oy c2318oy, int i) throws C8H {
        try {
            AudioTrack audioTrackA03 = A03(z, c2318oy, i);
            C2196mw.A0M().incrementAndGet();
            int state = audioTrackA03.getState();
            if (state == 1) {
                return audioTrackA03;
            }
            try {
                audioTrackA03.release();
                C2196mw.A0M().decrementAndGet();
            } catch (Exception e) {
                AnonymousClass44.A08(A06(0, 16, 69), String.format(A06(16, 55, 78), Integer.valueOf(state), Integer.valueOf(C2196mw.A0M().get())), e);
            }
            throw new C8H(state, this.A06, this.A02, this.A00, this.A07, A0D(), null, C2196mw.A0M().get());
        } catch (IllegalArgumentException | UnsupportedOperationException e2) {
            throw new C8H(0, this.A06, this.A02, this.A00, this.A07, A0D(), e2, C2196mw.A0M().get());
        }
    }

    /* JADX WARN: Type inference failed for: r1v0, types: [com.facebook.ads.redexgen.X.8F] */
    public final C8F A0B() {
        final int i = this.A03;
        final int i2 = this.A06;
        final int i3 = this.A02;
        final boolean z = this.A08;
        final boolean z2 = this.A04 == 1;
        final int i4 = this.A00;
        return new Object(i, i2, i3, z, z2, i4) {
            public final int A00;
            public final int A01;
            public final int A02;
            public final int A03;
            public final boolean A04;
            public final boolean A05;

            {
                this.A02 = i;
                this.A03 = i2;
                this.A01 = i3;
                this.A05 = z;
                this.A04 = z2;
                this.A00 = i4;
            }
        };
    }

    public final C07298f A0C(int i) {
        return new C07298f(this.A07, this.A01, this.A04, this.A05, this.A06, this.A02, this.A03, i, this.A09, this.A08);
    }

    public final boolean A0D() {
        return this.A04 == 1;
    }

    public final boolean A0E(C07298f c07298f) {
        return c07298f.A04 == this.A04 && c07298f.A03 == this.A03 && c07298f.A06 == this.A06 && c07298f.A02 == this.A02 && c07298f.A05 == this.A05;
    }
}
