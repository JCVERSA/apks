package com.facebook.ads.redexgen.core;

import android.media.AudioAttributes;
import android.media.AudioDeviceInfo;
import android.media.AudioFormat;
import android.media.AudioManager;
import android.media.AudioTrack;
import android.media.PlaybackParams;
import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;
import android.util.Pair;
import androidx.media3.common.C;
import androidx.media3.common.PlaybackException;
import com.facebook.video.heroplayer.exocustom.MetaExoPlayerCustomization;
import com.hunantv.media.drm.IDrmSession;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.atomic.AtomicInteger;
import org.checkerframework.checker.nullness.qual.RequiresNonNull;
import org.mozilla.classfile.ByteCode;

public final class C2196mw implements C8N {
    public static boolean A0v;
    public static int A0w;
    public static ExecutorService A0x;

    @MetaExoPlayerCustomization(type = {"NEW_CLASS_ARG"}, value = "D23918943: Monitor the audio track usage")
    public static AtomicInteger A0y;
    public static byte[] A0z;
    public static String[] A10 = {"a2KSouRkY2EeYPYlRPuQP1BMARpp6f9O", "Gy", "Dq9VRycV95bIzONst7U9W8VcH5OAT2ac", "T381mgHUGlQbTRbVURm4ZuRF6EOi2D8f", "KkGB0jhfpK5IC", "ogTnlK5ViGnrQ4kTUDUA61bIZynBq2mv", "CJ3ZuNqxaIjwSiQAD7ytgom2H57haWJk", "spWmv2H5WGO5MG6CASCqBbohd0yqIF8X"};
    public static final Object A11;
    public float A00;
    public int A01;
    public int A02;
    public int A03;
    public int A04;
    public int A05;
    public int A06;
    public long A07;
    public long A08;
    public long A09;
    public long A0A;
    public long A0B;
    public long A0C;
    public AudioTrack A0D;
    public C2318oy A0E;
    public C1P A0F;
    public C2296ob A0G;
    public C07147m A0H;
    public C8J A0I;
    public C07278c A0J;
    public C07298f A0K;
    public C07298f A0L;
    public C07318h A0M;
    public C07318h A0N;
    public C07358n A0O;
    public ByteBuffer A0P;
    public ByteBuffer A0Q;
    public ByteBuffer A0R;

    @MetaExoPlayerCustomization(type = {"NEW_CLASS_ARG"}, value = "D45157249: Retry Audio Track Init failure with less Audio track allocation sizes")
    public boolean A0S;
    public boolean A0T;
    public boolean A0U;
    public boolean A0V;
    public boolean A0W;
    public boolean A0X;
    public boolean A0Y;
    public boolean A0Z;
    public boolean A0a;
    public boolean A0b;
    public byte[] A0c;
    public AnonymousClass38[] A0d;
    public ByteBuffer[] A0e;
    public final int A0f;
    public final AnonymousClass39 A0g;
    public final C3W A0h;
    public final InterfaceC06705u A0i;
    public final C07177p A0j;
    public final C8T A0k;
    public final C9N A0l;
    public final InterfaceC07288d A0m;
    public final C8k<C8H> A0n;
    public final C8k<C8M> A0o;
    public final C9I A0p;
    public final ArrayDeque<C07318h> A0q;
    public final boolean A0r;
    public final boolean A0s;
    public final AnonymousClass38[] A0t;
    public final AnonymousClass38[] A0u;

    public static String A0L(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A0z, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 56);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A0T() {
        A0z = new byte[]{99, 106, 44, 37, 56, 112, 106, 107, 74, 73, 78, 90, 67, 91, 110, 90, 75, 70, 64, 124, 70, 65, 68, 104, 85, 66, 125, 65, 76, 84, 72, 95, 23, 108, 88, 73, 68, 66, 121, 95, 76, 78, 70, 127, 72, 65, 72, 76, 94, 72, 121, 69, 95, 72, 76, 73, 39, 0, 8, 13, 4, 5, 65, 21, 14, 65, 18, 4, 21, 65, 17, 13, 0, 24, 3, 0, 2, 10, 65, 17, 0, 19, 0, 12, 18, 121, 94, 70, 81, 92, 89, 84, 16, 96, 115, 125, 16, 85, 94, 83, 95, 84, 89, 94, 87, 10, 16, 73, 110, 118, 97, 108, 105, 100, 32, 111, 117, 116, 112, 117, 116, 32, 99, 104, 97, 110, 110, 101, 108, 32, 99, 111, 110, 102, 105, 103, 32, 40, 109, 111, 100, 101, 61, 57, 30, 6, 17, 28, 25, 20, 80, 31, 5, 4, 0, 5, 4, 80, 21, 30, 19, 31, 20, 25, 30, 23, 80, 88, 29, 31, 20, 21, 77, 33, 24, 9, 20, 29, 104, 95, 73, 95, 78, 78, 83, 84, 93, 26, 73, 78, 91, 86, 86, 95, 94, 26, 91, 79, 94, 83, 85, 26, 78, 72, 91, 89, 81, 117, 78, 65, 66, 76, 69, 0, 84, 79, 0, 67, 79, 78, 70, 73, 71, 85, 82, 69, 0, 80, 65, 83, 83, 84, 72, 82, 79, 85, 71, 72, 0, 70, 79, 82, 26, 0, 124, 71, 76, 81, 89, 76, 74, 93, 76, 77, 9, 72, 92, 77, 64, 70, 9, 76, 71, 74, 70, 77, 64, 71, 78, 19, 9, 31, ByteCode.T_LONG, 26, 23, 17, 81, 12, 31, 9};
    }

    static {
        A0T();
        A0v = false;
        A11 = new Object();
        A0y = new AtomicInteger(0);
    }

    @Deprecated
    public C2196mw(C07177p c07177p, AnonymousClass38[] anonymousClass38Arr) {
        this(new C8e().A06((C07177p) AbstractC1969j1.A00(c07177p, C07177p.A04)).A07(anonymousClass38Arr));
    }

    @RequiresNonNull({"#1.audioProcessorChain"})
    public C2196mw(C8e c8e) {
        int i;
        this.A0j = c8e.A03;
        this.A0g = c8e.A02;
        this.A0s = AbstractC06244a.A02 >= 21 && c8e.A05;
        this.A0r = AbstractC06244a.A02 >= 23 && c8e.A04;
        if (AbstractC06244a.A02 >= 29) {
            i = c8e.A01;
        } else {
            i = 0;
        }
        this.A0f = i;
        this.A0m = c8e.A00;
        this.A0h = new C3W(C3T.A00);
        this.A0h.A04();
        this.A0k = new C8T(new C2197mx(this));
        this.A0l = new C9N();
        this.A0p = new C9I();
        ArrayList arrayList = new ArrayList();
        Collections.addAll(arrayList, new AbstractC2198my() {
            public static String[] A00 = {"xDq4aPrtB4VOa6dWWLPhCvkNe2Vl9lis", "EsfqB3zUW", "UtEiT2kwdPvCqjHQhdRb9TlQndFxkub5", "Wgbe7hD6UIy", "xb", "RmqoPGkQn7vPyUpVU7ZkSehlX2jVBNRl", "20c7QZBscERNsZTH", "LeRFFk0E0DkpEnw35dU8lGRVd8w5nI17"};

            @Override
            public final AnonymousClass36 A09(AnonymousClass36 anonymousClass36) throws AnonymousClass37 {
                int i2 = anonymousClass36.A02;
                if (i2 != 3 && i2 != 2) {
                    if (A00[2].charAt(30) != 'b') {
                        throw new RuntimeException();
                    }
                    A00[3] = "ty1ASCrQyl5";
                    if (i2 != 268435456 && i2 != 536870912 && i2 != 805306368 && i2 != 4) {
                        throw new AnonymousClass37(anonymousClass36);
                    }
                }
                if (i2 != 2) {
                    return new AnonymousClass36(anonymousClass36.A03, anonymousClass36.A01, 2);
                }
                return AnonymousClass36.A05;
            }

            /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
            /* JADX WARN: Code duplicated, block: B:25:0x00c2  */
            /* JADX WARN: Code duplicated, block: B:27:0x00c8  */
            @Override
            public final void AGX(ByteBuffer byteBuffer) {
                int resampledSize;
                int resampledSize2 = byteBuffer.position();
                int size = byteBuffer.limit();
                int limit = size - resampledSize2;
                int position = this.A05.A02;
                switch (position) {
                    case 3:
                        limit *= 2;
                        break;
                    case 4:
                    case 805306368:
                        limit /= 2;
                        break;
                    case 268435456:
                        break;
                    case 536870912:
                        int position2 = limit / 3;
                        limit = position2 * 2;
                        break;
                    default:
                        throw new IllegalStateException();
                }
                ByteBuffer buffer = A00(limit);
                int position3 = this.A05.A02;
                switch (position3) {
                    case 3:
                        while (resampledSize2 < size) {
                            buffer.put((byte) 0);
                            int position4 = byteBuffer.get(resampledSize2);
                            buffer.put((byte) ((position4 & 255) - 128));
                            resampledSize2++;
                        }
                        resampledSize = byteBuffer.limit();
                        if (A00[7].charAt(16) != 53) {
                            throw new RuntimeException();
                        }
                        A00[5] = "iqTXYqAhTQO7Wpg5y1SXfPoSIsa3UBxa";
                        byteBuffer.position(resampledSize);
                        buffer.flip();
                        return;
                    case 4:
                        while (resampledSize2 < size) {
                            int position5 = (int) (32767.0f * AbstractC06244a.A00(byteBuffer.getFloat(resampledSize2), -1.0f, 1.0f));
                            int limit2 = (short) position5;
                            int position6 = limit2 & 255;
                            buffer.put((byte) position6);
                            int position7 = limit2 >> 8;
                            buffer.put((byte) (position7 & 255));
                            resampledSize2 += 4;
                        }
                        resampledSize = byteBuffer.limit();
                        if (A00[7].charAt(16) != 53) {
                            throw new RuntimeException();
                        }
                        A00[5] = "iqTXYqAhTQO7Wpg5y1SXfPoSIsa3UBxa";
                        byteBuffer.position(resampledSize);
                        buffer.flip();
                        return;
                    case 268435456:
                        while (resampledSize2 < size) {
                            int position8 = resampledSize2 + 1;
                            buffer.put(byteBuffer.get(position8));
                            buffer.put(byteBuffer.get(resampledSize2));
                            resampledSize2 += 2;
                        }
                        resampledSize = byteBuffer.limit();
                        if (A00[7].charAt(16) != 53) {
                            throw new RuntimeException();
                        }
                        A00[5] = "iqTXYqAhTQO7Wpg5y1SXfPoSIsa3UBxa";
                        byteBuffer.position(resampledSize);
                        buffer.flip();
                        return;
                    case 536870912:
                        while (resampledSize2 < size) {
                            int position9 = resampledSize2 + 1;
                            buffer.put(byteBuffer.get(position9));
                            int position10 = resampledSize2 + 2;
                            buffer.put(byteBuffer.get(position10));
                            resampledSize2 += 3;
                        }
                        resampledSize = byteBuffer.limit();
                        if (A00[7].charAt(16) != 53) {
                            throw new RuntimeException();
                        }
                        A00[5] = "iqTXYqAhTQO7Wpg5y1SXfPoSIsa3UBxa";
                        byteBuffer.position(resampledSize);
                        buffer.flip();
                        return;
                    case 805306368:
                        while (resampledSize2 < size) {
                            int position11 = resampledSize2 + 2;
                            buffer.put(byteBuffer.get(position11));
                            int position12 = resampledSize2 + 3;
                            buffer.put(byteBuffer.get(position12));
                            resampledSize2 += 4;
                        }
                        resampledSize = byteBuffer.limit();
                        if (A00[7].charAt(16) != 53) {
                            throw new RuntimeException();
                        }
                        A00[5] = "iqTXYqAhTQO7Wpg5y1SXfPoSIsa3UBxa";
                        byteBuffer.position(resampledSize);
                        buffer.flip();
                        return;
                    default:
                        throw new IllegalStateException();
                }
            }
        }, this.A0l, this.A0p);
        Collections.addAll(arrayList, this.A0g.A6r());
        this.A0u = (AnonymousClass38[]) arrayList.toArray(new AnonymousClass38[0]);
        this.A0t = new AnonymousClass38[]{new AbstractC2198my() {
            public static final int A00 = Float.floatToIntBits(Float.NaN);

            public static void A00(int i2, ByteBuffer byteBuffer) {
                float pcm32BitFloat = (float) (((double) i2) * 4.656612875245797E-10d);
                int floatBits = Float.floatToIntBits(pcm32BitFloat);
                if (floatBits == A00) {
                    floatBits = Float.floatToIntBits(0.0f);
                }
                byteBuffer.putInt(floatBits);
            }

            @Override
            public final AnonymousClass36 A09(AnonymousClass36 anonymousClass36) throws AnonymousClass37 {
                int i2 = anonymousClass36.A02;
                if (AbstractC06244a.A14(i2)) {
                    if (i2 != 4) {
                        return new AnonymousClass36(anonymousClass36.A03, anonymousClass36.A01, 4);
                    }
                    return AnonymousClass36.A05;
                }
                throw new AnonymousClass37(anonymousClass36);
            }

            @Override
            public final void AGX(ByteBuffer byteBuffer) {
                ByteBuffer byteBufferA00;
                int i2 = byteBuffer.position();
                int iLimit = byteBuffer.limit();
                int limit = iLimit - i2;
                int position = this.A05.A02;
                switch (position) {
                    case 536870912:
                        int position2 = limit / 3;
                        byteBufferA00 = A00(position2 * 4);
                        while (i2 < iLimit) {
                            int position3 = byteBuffer.get(i2);
                            int limit2 = (position3 & 255) << 8;
                            int position4 = i2 + 1;
                            int limit3 = limit2 | ((byteBuffer.get(position4) & 255) << 16);
                            int position5 = i2 + 2;
                            A00(limit3 | ((byteBuffer.get(position5) & 255) << 24), byteBufferA00);
                            i2 += 3;
                        }
                        break;
                    case 805306368:
                        byteBufferA00 = A00(limit);
                        while (i2 < iLimit) {
                            int position6 = byteBuffer.get(i2);
                            int limit4 = position6 & 255;
                            int position7 = i2 + 1;
                            int limit5 = limit4 | ((byteBuffer.get(position7) & 255) << 8);
                            int position8 = i2 + 2;
                            int limit6 = limit5 | ((byteBuffer.get(position8) & 255) << 16);
                            int position9 = i2 + 3;
                            A00(limit6 | ((byteBuffer.get(position9) & 255) << 24), byteBufferA00);
                            i2 += 4;
                        }
                        break;
                    default:
                        throw new IllegalStateException();
                }
                int position10 = byteBuffer.limit();
                byteBuffer.position(position10);
                byteBufferA00.flip();
            }
        }};
        this.A00 = 1.0f;
        this.A0E = C2318oy.A07;
        this.A01 = 0;
        this.A0F = new C1P(0, 0.0f);
        this.A0N = new C07318h(C2296ob.A06, false, 0L, 0L);
        this.A0G = C2296ob.A06;
        this.A03 = -1;
        this.A0d = new AnonymousClass38[0];
        this.A0e = new ByteBuffer[0];
        this.A0q = new ArrayDeque<>();
        this.A0n = new C8k<>(100L);
        this.A0o = new C8k<>(100L);
        this.A0i = null;
    }

    @MetaExoPlayerCustomization(type = {"MERGED"}, value = "D58560720: customized audio track retry logic. Feature is available upstream already")
    private int A00() {
        if (MetaExoPlayerUpgradeConfig.A03(EnumC1911i2.A1i)) {
            return A01(this.A0K.A06, this.A0K.A02, this.A0K.A03);
        }
        return 1000000;
    }

    public static int A01(int i, int i2, int i3) {
        int minBufferSize = AudioTrack.getMinBufferSize(i, i2, i3);
        C3M.A08(minBufferSize != -2);
        return minBufferSize;
    }

    public static int A02(int i, ByteBuffer byteBuffer) {
        switch (i) {
            case 5:
            case 6:
            case 18:
                return GF.A03(byteBuffer);
            case 7:
            case 8:
                int headerDataInBigEndian = GV.A00(byteBuffer);
                return headerDataInBigEndian;
            case 9:
                int headerDataInBigEndian2 = AbstractC06244a.A0F(byteBuffer, byteBuffer.position());
                int headerDataInBigEndian3 = AbstractC0932Gm.A01(headerDataInBigEndian2);
                if (headerDataInBigEndian3 != -1) {
                    return headerDataInBigEndian3;
                }
                throw new IllegalArgumentException();
            case 10:
                return 1024;
            case 11:
            case 12:
                return 2048;
            case 13:
            case 19:
            default:
                throw new IllegalStateException(A0L(244, 27, 17) + i);
            case 14:
                int syncframeOffset = GF.A02(byteBuffer);
                if (syncframeOffset == -1) {
                    return 0;
                }
                return GF.A04(byteBuffer, syncframeOffset) * 16;
            case 15:
                return 512;
            case 16:
                return 1024;
            case 17:
                return GI.A01(byteBuffer);
            case 20:
                return AbstractC0937Gr.A00(byteBuffer);
        }
    }

    private int A03(AudioFormat audioFormat, AudioAttributes audioAttributes) {
        if (AbstractC06244a.A02 >= 31) {
            return AudioManager.getPlaybackOffloadSupport(audioFormat, audioAttributes);
        }
        if (!AudioManager.isOffloadedPlaybackSupported(audioFormat, audioAttributes)) {
            return 0;
        }
        if (AbstractC06244a.A02 != 30) {
            return 1;
        }
        String str = AbstractC06244a.A06;
        String[] strArr = A10;
        if (strArr[2].charAt(24) != strArr[6].charAt(24)) {
            throw new RuntimeException();
        }
        A10[7] = "3tkRuQxdBcZlCTwsgu7cjpWlPYr81dQa";
        if (!str.startsWith(A0L(ByteCode.LRETURN, 5, 73))) {
            return 1;
        }
        if (A10[7].length() != 32) {
            return 2;
        }
        A10[7] = "7yaDe65lYY86qlvGhmsANLPH6jvNYU2p";
        return 2;
    }

    public static int A04(AudioTrack audioTrack, ByteBuffer byteBuffer, int i) {
        return audioTrack.write(byteBuffer, i, 1);
    }

    private int A05(AudioTrack audioTrack, ByteBuffer byteBuffer, int i, long j) {
        if (AbstractC06244a.A02 >= 26) {
            return audioTrack.write(byteBuffer, i, 1, j * 1000);
        }
        if (this.A0P == null) {
            this.A0P = ByteBuffer.allocate(16);
            this.A0P.order(ByteOrder.BIG_ENDIAN);
            this.A0P.putInt(1431633921);
        }
        if (this.A02 == 0) {
            this.A0P.putInt(4, i);
            this.A0P.putLong(8, 1000 * j);
            this.A0P.position(0);
            this.A02 = i;
        }
        int result = this.A0P.remaining();
        if (result > 0) {
            int avSyncHeaderBytesRemaining = audioTrack.write(this.A0P, result, 1);
            if (avSyncHeaderBytesRemaining < 0) {
                this.A02 = 0;
                return avSyncHeaderBytesRemaining;
            }
            if (avSyncHeaderBytesRemaining < result) {
                return 0;
            }
        }
        int iA04 = A04(audioTrack, byteBuffer, i);
        if (iA04 < 0) {
            this.A02 = 0;
            return iA04;
        }
        int i2 = this.A02 - iA04;
        String[] strArr = A10;
        if (strArr[0].charAt(31) == strArr[3].charAt(31)) {
            throw new RuntimeException();
        }
        A10[7] = "dZEIQVBMkpJ01dOsE3P3AYpi9pP3UgAn";
        this.A02 = i2;
        return iA04;
    }

    public long A06() {
        if (this.A0K.A04 == 0) {
            long j = this.A0A;
            if (A10[1].length() != 2) {
                throw new RuntimeException();
            }
            String[] strArr = A10;
            strArr[2] = "fKroUyDCoriQZ27MdWvBeynNHxXh31S0";
            strArr[6] = "V2Tsqcz9Ivj1DWTn2T33JaE9HhmQCs1A";
            return j / ((long) this.A0K.A01);
        }
        return this.A09;
    }

    public long A07() {
        if (this.A0K.A04 == 0) {
            return this.A0C / ((long) this.A0K.A05);
        }
        return this.A0B;
    }

    private long A08(long j) {
        while (!this.A0q.isEmpty() && j >= this.A0q.getFirst().A00) {
            C07318h c07318hRemove = this.A0q.remove();
            String[] strArr = A10;
            if (strArr[0].charAt(31) == strArr[3].charAt(31)) {
                throw new RuntimeException();
            }
            A10[7] = "uS5QwbhdMNBXkjn1i9eeeV7Jy2FKd79B";
            this.A0N = c07318hRemove;
        }
        long j2 = j - this.A0N.A00;
        if (this.A0N.A02.equals(C2296ob.A06)) {
            return this.A0N.A01 + j2;
        }
        if (this.A0q.isEmpty()) {
            long mediaDurationSinceLastCheckpointUs = this.A0g.A8M(j2);
            long playoutDurationSinceLastCheckpointUs = this.A0N.A01;
            return playoutDurationSinceLastCheckpointUs + mediaDurationSinceLastCheckpointUs;
        }
        C07318h first = this.A0q.getFirst();
        long jA0Q = AbstractC06244a.A0Q(first.A00 - j, this.A0N.A02.A01);
        long playoutDurationSinceLastCheckpointUs2 = first.A01;
        return playoutDurationSinceLastCheckpointUs2 - jA0Q;
    }

    private long A09(long j) {
        return this.A0K.A08(this.A0g.A90()) + j;
    }

    public static AudioFormat A0D(int i, int i2, int i3) {
        return new AudioFormat.Builder().setSampleRate(i).setChannelMask(i2).setEncoding(i3).build();
    }

    private AudioTrack A0F() throws C8H {
        try {
            return A0G((C07298f) C3M.A01(this.A0K));
        } catch (C8H e) {
            int retryBufferSize = A00();
            if (this.A0K.A00 > retryBufferSize) {
                C07298f c07298fA0C = this.A0K.A0C(retryBufferSize);
                try {
                    AudioTrack audioTrackA0G = A0G(c07298fA0C);
                    this.A0K = c07298fA0C;
                    return audioTrackA0G;
                } catch (C8H initialFailure) {
                    e.addSuppressed(initialFailure);
                    A0O();
                    throw e;
                }
            }
            A0O();
            throw e;
        }
    }

    private AudioTrack A0G(C07298f c07298f) throws C8H {
        try {
            AudioTrack audioTrackA0A = c07298f.A0A(this.A0b, this.A0E, this.A01);
            if (0 != 0) {
                A0l(audioTrackA0A);
            }
            return audioTrackA0A;
        } catch (C8H e) {
            if (this.A0I != null) {
                this.A0I.ACV(e);
            }
            throw e;
        }
    }

    private C2296ob A0I() {
        return A0K().A02;
    }

    private C07318h A0K() {
        if (this.A0M != null) {
            return this.A0M;
        }
        if (!this.A0q.isEmpty()) {
            return this.A0q.getLast();
        }
        return this.A0N;
    }

    public static AtomicInteger A0M() {
        AtomicInteger atomicInteger = A0y;
        if (A10[4].length() == 6) {
            throw new RuntimeException();
        }
        A10[7] = "bxvwh9PGR3JBxYGaTMYcQ8NcsphLXH3B";
        return atomicInteger;
    }

    private void A0N() {
        for (int i = 0; i < i; i++) {
            AnonymousClass38 anonymousClass38 = this.A0d[i];
            anonymousClass38.flush();
            this.A0e[i] = anonymousClass38.A8V();
        }
    }

    private void A0O() {
        if (this.A0K.A0D()) {
            if (A10[1].length() != 2) {
                throw new RuntimeException();
            }
            A10[5] = "ac1bNzRzCepoXog5xkGE2UP5sVZPG6ZN";
            this.A0W = true;
        }
    }

    private void A0P() {
        if (!this.A0a) {
            this.A0a = true;
            this.A0k.A0H(A07());
            this.A0D.stop();
            this.A02 = 0;
        }
    }

    private void A0Q() {
        this.A0A = 0L;
        this.A09 = 0L;
        this.A0C = 0L;
        this.A0B = 0L;
        this.A0V = false;
        this.A04 = 0;
        this.A0N = new C07318h(A0I(), A0p(), 0L, 0L);
        this.A08 = 0L;
        this.A0M = null;
        this.A0q.clear();
        this.A0Q = null;
        this.A05 = 0;
        this.A0R = null;
        this.A0a = false;
        this.A0U = false;
        this.A03 = -1;
        this.A0P = null;
        this.A02 = 0;
        this.A0p.A0D();
        A0N();
    }

    private void A0R() {
        if (!A0h()) {
            return;
        }
        if (AbstractC06244a.A02 >= 21) {
            A0X(this.A0D, this.A00);
        } else {
            A0Y(this.A0D, this.A00);
        }
    }

    private void A0S() {
        AnonymousClass38[] anonymousClass38Arr = this.A0K.A09;
        ArrayList arrayList = new ArrayList();
        for (AnonymousClass38 anonymousClass38 : anonymousClass38Arr) {
            if (anonymousClass38.AAC()) {
                arrayList.add(anonymousClass38);
            } else {
                anonymousClass38.flush();
            }
        }
        int size = arrayList.size();
        AnonymousClass38[] audioProcessors = new AnonymousClass38[size];
        this.A0d = (AnonymousClass38[]) arrayList.toArray(audioProcessors);
        this.A0e = new ByteBuffer[size];
        A0N();
    }

    private void A0U(long j) {
        C2296ob c2296obA47;
        boolean zA48;
        if (A0i()) {
            c2296obA47 = this.A0g.A47(A0I());
        } else {
            c2296obA47 = C2296ob.A06;
            if (A10[7].length() != 32) {
                throw new RuntimeException();
            }
            String[] strArr = A10;
            strArr[0] = "I2oaxDVd9h4oXXSjJqrHfFArwnmkYbuU";
            strArr[3] = "djNSsSrQ9W3py9jFqud3MNGsNXIKPv6H";
        }
        if (A0i()) {
            zA48 = this.A0g.A48(A0p());
        } else {
            zA48 = false;
        }
        this.A0q.add(new C07318h(c2296obA47, zA48, Math.max(0L, j), this.A0K.A08(A07())));
        A0S();
        if (this.A0I != null) {
            this.A0I.AFF(zA48);
        }
    }

    private void A0V(long j) throws Exception {
        ByteBuffer byteBuffer;
        int length = this.A0d.length;
        int i = length;
        while (i >= 0) {
            if (i > 0) {
                ByteBuffer[] byteBufferArr = this.A0e;
                int i2 = i - 1;
                String[] strArr = A10;
                String str = strArr[0];
                String str2 = strArr[3];
                int index = str.charAt(31);
                int count = str2.charAt(31);
                if (index == count) {
                    throw new RuntimeException();
                }
                A10[1] = "0P";
                byteBuffer = byteBufferArr[i2];
            } else {
                byteBuffer = this.A0Q != null ? this.A0Q : AnonymousClass38.A00;
            }
            if (i == length) {
                A0e(byteBuffer, j);
            } else {
                AnonymousClass38 anonymousClass38 = this.A0d[i];
                int index2 = this.A03;
                if (i > index2) {
                    anonymousClass38.AGX(byteBuffer);
                }
                ByteBuffer byteBufferA8V = anonymousClass38.A8V();
                this.A0e[i] = byteBufferA8V;
                if (byteBufferA8V.hasRemaining()) {
                    i++;
                }
            }
            if (byteBuffer.hasRemaining()) {
                return;
            } else {
                i--;
            }
        }
    }

    private void A0W(AudioTrack audioTrack) {
        if (this.A0O == null) {
            this.A0O = new C07358n(this);
        }
        C07358n c07358n = this.A0O;
        String[] strArr = A10;
        if (strArr[2].charAt(24) != strArr[6].charAt(24)) {
            throw new RuntimeException();
        }
        A10[7] = "8t8nFWsxRl9HTQxqXeO3m9pm7diLrI9Q";
        c07358n.A00(audioTrack);
    }

    public static void A0X(AudioTrack audioTrack, float f) {
        audioTrack.setVolume(f);
    }

    public static void A0Y(AudioTrack audioTrack, float f) {
        audioTrack.setStereoVolume(f, f);
    }

    private void A0Z(final AudioTrack audioTrack, final C3W c3w, final C8J c8j, final C8F c8f) {
        c3w.A02();
        final Handler handler = new Handler(Looper.myLooper());
        synchronized (A11) {
            if (A0x == null) {
                A0x = AbstractC06244a.A0u(A0L(23, 33, 21));
            }
            A0w++;
            A0x.execute(new Runnable() {
                @Override
                public final void run() {
                    C2196mw.A0a(audioTrack, c8j, handler, c8f, c3w);
                }
            });
        }
    }

    public static void A0a(AudioTrack audioTrack, final C8J c8j, Handler handler, final C8F c8f, C3W c3w) {
        try {
            audioTrack.flush();
            audioTrack.release();
            if (c8j != null && handler.getLooper().getThread().isAlive()) {
                handler.post(new Runnable() {
                    @Override
                    public final void run() {
                        c8j.ACX(c8f);
                    }
                });
            }
            c3w.A04();
            synchronized (A11) {
                A0w--;
                if (A0w == 0) {
                    A0x.shutdown();
                    A0x = null;
                }
            }
        } catch (Throwable th) {
            if (c8j != null && handler.getLooper().getThread().isAlive()) {
                handler.post(new Runnable() {
                    @Override
                    public final void run() {
                        c8j.ACX(c8f);
                    }
                });
            }
            c3w.A04();
            synchronized (A11) {
                A0w--;
                if (A0w == 0) {
                    A0x.shutdown();
                    A0x = null;
                }
                throw th;
            }
        }
    }

    private void A0b(C2296ob c2296ob) {
        if (A0h()) {
            try {
                this.A0D.setPlaybackParams(new PlaybackParams().allowDefaults().setSpeed(c2296ob.A01).setPitch(c2296ob.A00).setAudioFallbackMode(2));
            } catch (IllegalArgumentException e) {
                AnonymousClass44.A0A(A0L(7, 16, 23), A0L(56, 29, 89), e);
            }
            PlaybackParams playbackParams = this.A0D.getPlaybackParams();
            float speed = playbackParams.getSpeed();
            PlaybackParams playbackParams2 = this.A0D.getPlaybackParams();
            c2296ob = new C2296ob(speed, playbackParams2.getPitch());
            this.A0k.A0G(c2296ob.A01);
        }
        this.A0G = c2296ob;
    }

    private void A0c(C2296ob c2296ob, boolean z) {
        C07318h c07318hA0K = A0K();
        if (!c2296ob.equals(c07318hA0K.A02) || z != c07318hA0K.A03) {
            C07318h mediaPositionParameters = new C07318h(c2296ob, z, C.TIME_UNSET, C.TIME_UNSET);
            if (A0h()) {
                this.A0M = mediaPositionParameters;
            } else {
                this.A0N = mediaPositionParameters;
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:51:0x00ea  */
    private void A0e(ByteBuffer byteBuffer, long j) throws Exception {
        if (!byteBuffer.hasRemaining()) {
            return;
        }
        if (this.A0R != null) {
            C3M.A07(this.A0R == byteBuffer);
        } else {
            this.A0R = byteBuffer;
            if (AbstractC06244a.A02 < 21) {
                int iRemaining = byteBuffer.remaining();
                if (this.A0c != null) {
                    int bytesRemaining = this.A0c.length;
                    if (bytesRemaining < iRemaining) {
                        this.A0c = new byte[iRemaining];
                    }
                } else {
                    this.A0c = new byte[iRemaining];
                }
                int error = byteBuffer.position();
                byteBuffer.get(this.A0c, 0, iRemaining);
                byteBuffer.position(error);
                this.A06 = 0;
            }
        }
        int iRemaining2 = byteBuffer.remaining();
        String[] strArr = A10;
        if (strArr[0].charAt(31) != strArr[3].charAt(31)) {
            String[] strArr2 = A10;
            strArr2[0] = "3eWYirSbyPmDL1bYCzZXBxfzFZ0IdKrC";
            strArr2[3] = "GyxGkXW2OhP0jBJSoZP6T4LL67dzWnKX";
            int iA04 = 0;
            if (AbstractC06244a.A02 < 21) {
                int iA0C = this.A0k.A0C(this.A0C);
                if (iA0C > 0) {
                    iA04 = this.A0D.write(this.A0c, this.A06, Math.min(iRemaining2, iA0C));
                    if (iA04 > 0) {
                        this.A06 += iA04;
                        byteBuffer.position(byteBuffer.position() + iA04);
                    }
                }
            } else {
                boolean z = this.A0b;
                int error2 = A10[5].charAt(7);
                if (error2 != 67) {
                    A10[7] = "ZkKj9ZygtLpdvIDMWffq04xWvvg8fJzl";
                    if (!z) {
                        iA04 = A04(this.A0D, byteBuffer, iRemaining2);
                    } else {
                        C3M.A08(j != C.TIME_UNSET);
                        iA04 = A05(this.A0D, byteBuffer, iRemaining2, j);
                    }
                }
            }
            this.A07 = SystemClock.elapsedRealtime();
            if (iA04 < 0) {
                C8M c8m = new C8M(iA04, this.A0K.A07, A0k(iA04) && this.A0B > 0);
                if (this.A0I != null) {
                    this.A0I.ACV(c8m);
                }
                if (!c8m.A02) {
                    this.A0o.A01(c8m);
                    return;
                }
                throw c8m;
            }
            this.A0o.A00();
            if (A0l(this.A0D)) {
                if (this.A0B > 0) {
                    this.A0V = false;
                }
                if (this.A0X && this.A0I != null && iA04 < iRemaining2 && !this.A0V) {
                    this.A0I.AEO();
                }
            }
            int bytesRemaining2 = this.A0K.A04;
            if (bytesRemaining2 == 0) {
                this.A0C += (long) iA04;
            }
            if (iA04 == iRemaining2) {
                int bytesRemaining3 = this.A0K.A04;
                if (bytesRemaining3 != 0) {
                    C3M.A08(byteBuffer == this.A0Q);
                    long j2 = this.A0B;
                    int bytesRemaining4 = this.A04;
                    long j3 = bytesRemaining4;
                    int bytesRemaining5 = this.A05;
                    this.A0B = j2 + (j3 * ((long) bytesRemaining5));
                }
                this.A0R = null;
                return;
            }
            return;
        }
        throw new RuntimeException();
    }

    /* JADX WARN: Code restructure failed: missing block: B:23:0x0078, code lost:
    
        if (r8.A0R != null) goto L24;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x007a, code lost:
    
        return false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x0084, code lost:
    
        if (r8.A0R != null) goto L24;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private boolean A0f() throws Exception {
        boolean z = false;
        if (this.A03 == -1) {
            this.A03 = 0;
            z = true;
        }
        while (this.A03 < this.A0d.length) {
            AnonymousClass38 anonymousClass38 = this.A0d[this.A03];
            if (z) {
                anonymousClass38.AGW();
            }
            A0V(C.TIME_UNSET);
            boolean zAAG = anonymousClass38.AAG();
            String[] strArr = A10;
            if (strArr[0].charAt(31) == strArr[3].charAt(31)) {
                throw new RuntimeException();
            }
            String[] strArr2 = A10;
            strArr2[0] = "SZlzkFrjT9RrDQln4ds2mG9At4QQTsjU";
            strArr2[3] = "7YjBVNvSPjH845plY2W9SI0PPB4m8Pgz";
            if (!zAAG) {
                return false;
            }
            z = true;
            this.A03++;
        }
        if (this.A0R != null) {
            A0e(this.A0R, C.TIME_UNSET);
            String[] strArr3 = A10;
            if (strArr3[2].charAt(24) == strArr3[6].charAt(24)) {
                A10[1] = "ih";
            }
        }
        this.A03 = -1;
        return true;
    }

    @MetaExoPlayerCustomization(type = {"MERGED"}, value = "D45157249: Retry Audio Track Init failure with less Audio track allocation sizes; Upstream has this feature")
    private boolean A0g() throws C8H {
        if (!this.A0h.A03()) {
            return false;
        }
        this.A0D = this.A0S ? A0F() : A0G(this.A0K);
        String[] strArr = A10;
        if (strArr[2].charAt(24) != strArr[6].charAt(24)) {
            throw new RuntimeException();
        }
        String[] strArr2 = A10;
        strArr2[2] = "dWhjJD4ryPYmrGCHimoCOlqhHDAwt6Vc";
        strArr2[6] = "fifoJCnFOIc3PbrGHGLYECSFH4AKcCFA";
        if (A0l(this.A0D)) {
            A0W(this.A0D);
            if (this.A0f != 3) {
                this.A0D.setOffloadDelayPadding(this.A0K.A07.A08, this.A0K.A07.A09);
            }
        }
        if (AbstractC06244a.A02 >= 31 && this.A0H != null) {
            C07268b.A00(this.A0D, this.A0H);
        }
        this.A01 = this.A0D.getAudioSessionId();
        this.A0k.A0I(this.A0D, this.A0K.A04 == 2, this.A0K.A03, this.A0K.A05, this.A0K.A00);
        A0R();
        if (this.A0F.A01 != 0) {
            this.A0D.attachAuxEffect(this.A0F.A01);
            AudioTrack audioTrack = this.A0D;
            C1P c1p = this.A0F;
            if (A10[7].length() != 32) {
                audioTrack.setAuxEffectSendLevel(c1p.A00);
            } else {
                A10[7] = "RIRRfrrRSIs4t73WNQ17weV6jTByi7uZ";
                audioTrack.setAuxEffectSendLevel(c1p.A00);
            }
        }
        if (this.A0J != null && AbstractC06244a.A02 >= 23) {
            C8a.A00(this.A0D, this.A0J);
        }
        this.A0Y = true;
        if (this.A0I != null) {
            this.A0I.ACW(this.A0K.A0B());
        }
        return true;
    }

    private boolean A0h() {
        return this.A0D != null;
    }

    private boolean A0i() {
        if (!this.A0b) {
            if (A0L(271, 9, 70).equals(this.A0K.A07.A0W) && !A0j(this.A0K.A07.A0C)) {
                return true;
            }
        }
        return false;
    }

    private boolean A0j(int i) {
        return this.A0s && AbstractC06244a.A14(i);
    }

    public static boolean A0k(int i) {
        return (AbstractC06244a.A02 >= 24 && i == -6) || i == -32;
    }

    public static boolean A0l(AudioTrack audioTrack) {
        return AbstractC06244a.A02 >= 29 && audioTrack.isOffloadedPlayback();
    }

    /* JADX WARN: Code duplicated, block: B:22:0x0049  */
    private boolean A0m(C2312or c2312or, C2318oy c2318oy) {
        int iA03;
        int channelConfig;
        if (AbstractC06244a.A02 < 29 || this.A0f == 0 || (iA03 = AbstractC05792h.A03((String) C3M.A01(c2312or.A0W), c2312or.A0R)) == 0) {
            return false;
        }
        int encoding = c2312or.A06;
        int channelConfig2 = AbstractC06244a.A01(encoding);
        if (channelConfig2 == 0) {
            return false;
        }
        int encoding2 = c2312or.A0G;
        switch (A03(A0D(encoding2, channelConfig2, iA03), c2318oy.A01().A00)) {
            case 0:
                return false;
            case 1:
                int encoding3 = c2312or.A08;
                if (encoding3 == 0) {
                    int encoding4 = c2312or.A09;
                    if (encoding4 != 0) {
                        channelConfig = 1;
                    } else {
                        channelConfig = 0;
                    }
                } else {
                    channelConfig = 1;
                }
                int encoding5 = this.A0f;
                int encoding6 = encoding5 == 1 ? 1 : 0;
                return channelConfig == 0 || encoding6 == 0;
            case 2:
                return true;
            default:
                throw new IllegalStateException();
        }
    }

    public final int A0o(C2312or c2312or) {
        if (!A0L(271, 9, 70).equals(c2312or.A0W)) {
            return ((this.A0W || !A0m(c2312or, this.A0E)) && !this.A0j.A0B(c2312or)) ? 0 : 2;
        }
        if (!AbstractC06244a.A15(c2312or.A0C)) {
            AnonymousClass44.A07(A0L(7, 16, 23), A0L(85, 22, 8) + c2312or.A0C);
            return 0;
        }
        int i = c2312or.A0C;
        if (A10[7].length() != 32) {
            throw new RuntimeException();
        }
        A10[1] = "pL";
        return (i == 2 || (this.A0s && c2312or.A0C == 4)) ? 2 : 1;
    }

    public final boolean A0p() {
        return A0K().A03;
    }

    @Override
    public final void A51(C2312or c2312or, int i, int[] iArr) throws C8G {
        int outputSampleRate;
        AnonymousClass38[] anonymousClass38Arr;
        int outputSampleRate2;
        int outputPcmFrameSize;
        int outputChannelConfig;
        int iIntValue;
        int outputEncoding;
        int outputMode = i;
        int[] iArr2 = iArr;
        if (A0L(271, 9, 70).equals(c2312or.A0W)) {
            C3M.A07(AbstractC06244a.A15(c2312or.A0C));
            outputSampleRate = AbstractC06244a.A06(c2312or.A0C, c2312or.A06);
            if (A0j(c2312or.A0C)) {
                anonymousClass38Arr = this.A0t;
            } else {
                anonymousClass38Arr = this.A0u;
            }
            C9I c9i = this.A0p;
            int inputPcmFrameSize = c2312or.A08;
            c9i.A0E(inputPcmFrameSize, c2312or.A09);
            int inputPcmFrameSize2 = AbstractC06244a.A02;
            if (inputPcmFrameSize2 < 21) {
                int inputPcmFrameSize3 = c2312or.A06;
                if (inputPcmFrameSize3 == 8 && iArr2 == null) {
                    iArr2 = new int[6];
                    for (int inputPcmFrameSize4 = 0; inputPcmFrameSize4 < iArr2.length; inputPcmFrameSize4++) {
                        iArr2[inputPcmFrameSize4] = inputPcmFrameSize4;
                    }
                }
            }
            this.A0l.A0C(iArr2);
            int i2 = c2312or.A0G;
            int inputPcmFrameSize5 = c2312or.A06;
            AnonymousClass36 anonymousClass36 = new AnonymousClass36(i2, inputPcmFrameSize5, c2312or.A0C);
            for (AnonymousClass38 anonymousClass38 : anonymousClass38Arr) {
                try {
                    AnonymousClass36 anonymousClass36A4z = anonymousClass38.A4z(anonymousClass36);
                    if (anonymousClass38.AAC()) {
                        anonymousClass36 = anonymousClass36A4z;
                    }
                } catch (AnonymousClass37 e) {
                    throw new C8G(e, c2312or);
                }
            }
            outputChannelConfig = 0;
            iIntValue = anonymousClass36.A02;
            outputSampleRate2 = anonymousClass36.A03;
            outputEncoding = AbstractC06244a.A01(anonymousClass36.A01);
            outputPcmFrameSize = AbstractC06244a.A06(iIntValue, anonymousClass36.A01);
        } else {
            outputSampleRate = -1;
            anonymousClass38Arr = new AnonymousClass38[0];
            outputSampleRate2 = c2312or.A0G;
            outputPcmFrameSize = -1;
            if (A0m(c2312or, this.A0E)) {
                outputChannelConfig = 1;
                iIntValue = AbstractC05792h.A03((String) C3M.A01(c2312or.A0W), c2312or.A0R);
                outputEncoding = AbstractC06244a.A01(c2312or.A06);
            } else {
                outputChannelConfig = 2;
                if (A10[1].length() == 2) {
                    A10[5] = "lAbqtU1Up8pAGeHbeXVy9OX5EzAUCGx9";
                    Pair<Integer, Integer> pairA09 = this.A0j.A09(c2312or);
                    if (pairA09 != null) {
                        iIntValue = ((Integer) pairA09.first).intValue();
                        outputEncoding = ((Integer) pairA09.second).intValue();
                        if (A10[7].length() == 32) {
                            A10[1] = "Lw";
                        }
                    } else {
                        throw new C8G(A0L(IDrmSession.ERROR_SESSION_DRM_LICENSE_URL_EMPTY, 37, 24) + c2312or, c2312or);
                    }
                }
                throw new RuntimeException();
            }
        }
        String strA0L = A0L(0, 7, 114);
        if (iIntValue != 0) {
            if (outputEncoding != 0) {
                if (outputMode == 0) {
                    InterfaceC07288d interfaceC07288d = this.A0m;
                    int iA01 = A01(outputSampleRate2, outputEncoding, iIntValue);
                    int outputChannelConfig2 = outputPcmFrameSize != -1 ? outputPcmFrameSize : 1;
                    outputMode = interfaceC07288d.A6x(iA01, iIntValue, outputChannelConfig, outputChannelConfig2, outputSampleRate2, c2312or.A05, this.A0r ? 8.0d : 1.0d);
                }
                this.A0W = false;
                C07298f c07298f = new C07298f(c2312or, outputSampleRate, outputChannelConfig, outputPcmFrameSize, outputSampleRate2, outputEncoding, iIntValue, outputMode, anonymousClass38Arr, this.A0b);
                if (A0h()) {
                    this.A0L = c07298f;
                    return;
                } else {
                    this.A0K = c07298f;
                    return;
                }
            }
            throw new C8G(A0L(107, 36, 56) + outputChannelConfig + strA0L + c2312or, c2312or);
        }
        throw new C8G(A0L(143, 30, 72) + outputChannelConfig + strA0L + c2312or, c2312or);
    }

    @Override
    public final void A5r() {
        if (this.A0b) {
            this.A0b = false;
            flush();
        }
    }

    @Override
    public final void A6E() {
        C3M.A08(AbstractC06244a.A02 >= 21);
        C3M.A08(this.A0T);
        if (!this.A0b) {
            this.A0b = true;
            flush();
        }
    }

    @Override
    public final void A6L() {
        if (AbstractC06244a.A02 < 25) {
            flush();
            return;
        }
        this.A0o.A00();
        this.A0n.A00();
        if (!A0h()) {
            return;
        }
        A0Q();
        if (this.A0k.A0J()) {
            this.A0D.pause();
        }
        this.A0D.flush();
        this.A0k.A0E();
        this.A0k.A0I(this.A0D, this.A0K.A04 == 2, this.A0K.A03, this.A0K.A05, this.A0K.A00);
        this.A0Y = true;
    }

    @Override
    public final long A7X(boolean z) {
        if (!A0h() || this.A0Y) {
            return Long.MIN_VALUE;
        }
        long jA0D = this.A0k.A0D(z);
        C07298f c07298f = this.A0K;
        long positionUs = A07();
        return A09(A08(Math.min(jA0D, c07298f.A08(positionUs))));
    }

    @Override
    public final C2296ob A8e() {
        if (this.A0r) {
            return this.A0G;
        }
        return A0I();
    }

    @Override
    public final boolean A9W(ByteBuffer byteBuffer, final long adjustmentUs, int i) throws Exception {
        C3M.A07(this.A0Q == null || byteBuffer == this.A0Q);
        if (this.A0L != null) {
            if (!A0f()) {
                return false;
            }
            if (this.A0L.A0E(this.A0K)) {
                this.A0K = this.A0L;
                this.A0L = null;
                if (A0l(this.A0D) && this.A0f != 3) {
                    if (this.A0D.getPlayState() == 3) {
                        this.A0D.setOffloadEndOfStream();
                    }
                    AudioTrack audioTrack = this.A0D;
                    int i2 = this.A0K.A07.A08;
                    String[] strArr = A10;
                    if (strArr[0].charAt(31) != strArr[3].charAt(31)) {
                        String[] strArr2 = A10;
                        strArr2[0] = "jzTmuhmcT6oYK5lhq8C6QOSyUXF7wdwQ";
                        strArr2[3] = "cWMrj79Gd0zdSeVIzQJ8siz7G3nSjdgD";
                        audioTrack.setOffloadDelayPadding(i2, this.A0K.A07.A09);
                        this.A0V = true;
                    } else {
                        throw new RuntimeException();
                    }
                }
            } else {
                A0P();
                if (A9g()) {
                    return false;
                }
                flush();
            }
            A0U(adjustmentUs);
        }
        if (!A0h()) {
            try {
                if (!A0g()) {
                    return false;
                }
            } catch (C8H e) {
                if (!e.A02) {
                    this.A0n.A01(e);
                    return false;
                }
                throw e;
            }
        }
        this.A0n.A00();
        if (this.A0Y) {
            this.A08 = Math.max(0L, adjustmentUs);
            this.A0Z = false;
            this.A0Y = false;
            if (this.A0r && AbstractC06244a.A02 >= 23) {
                A0b(this.A0G);
            }
            A0U(adjustmentUs);
            if (this.A0X) {
                AGG();
            }
        }
        if (!this.A0k.A0N(A07())) {
            return false;
        }
        if (this.A0Q == null) {
            C3M.A07(byteBuffer.order() == ByteOrder.LITTLE_ENDIAN);
            if (!byteBuffer.hasRemaining()) {
                return true;
            }
            if (this.A0K.A04 != 0 && this.A04 == 0) {
                this.A04 = A02(this.A0K.A03, byteBuffer);
                if (this.A04 == 0) {
                    return true;
                }
            }
            if (this.A0M != null) {
                if (!A0f()) {
                    return false;
                }
                A0U(adjustmentUs);
                this.A0M = null;
            }
            final long jA09 = this.A08 + this.A0K.A09(A06() - this.A0p.A0C());
            if (!this.A0Z && Math.abs(jA09 - adjustmentUs) > 200000) {
                if (this.A0I != null) {
                    this.A0I.ACV(new Exception(adjustmentUs, jA09) {
                        public static byte[] A02;
                        public final long A00;
                        public final long A01;

                        static {
                            A01();
                        }

                        public static String A00(int i3, int i4, int i5) {
                            byte[] bArrCopyOfRange = Arrays.copyOfRange(A02, i3, i3 + i4);
                            for (int i6 = 0; i6 < bArrCopyOfRange.length; i6++) {
                                bArrCopyOfRange[i6] = (byte) ((bArrCopyOfRange[i6] - i5) + PlaybackException.ERROR_CODE_NOT_AVAILABLE_IN_REGION);
                            }
                            return new String(bArrCopyOfRange);
                        }

                        public static void A01() {
                            A02 = new byte[]{-20, -32, 39, 47, 52, -32, 29, 54, 45, 64, 56, 45, 43, 60, 45, 44, -24, 41, 61, 44, 49, 55, -24, 60, 58, 41, 43, 51, -24, 60, 49, 53, 45, 59, 60, 41, 53, 56, -24, 44, 49, 59, 43, 55, 54, 60, 49, 54, 61, 49, 60, 65, 2, -24, 45, 64, 56, 45, 43, 60, 45, 44, -24};
                        }

                        {
                            super(A00(6, 57, 94) + jA09 + A00(0, 6, 86) + adjustmentUs);
                            this.A00 = adjustmentUs;
                            this.A01 = jA09;
                        }
                    });
                }
                this.A0Z = true;
            }
            if (this.A0Z) {
                if (!A0f()) {
                    return false;
                }
                long j = adjustmentUs - jA09;
                this.A08 += j;
                this.A0Z = false;
                A0U(adjustmentUs);
                if (this.A0I != null && j != 0) {
                    this.A0I.AEh();
                }
            }
            if (this.A0K.A04 == 0) {
                this.A0A += (long) byteBuffer.remaining();
            } else {
                this.A09 += ((long) this.A04) * ((long) i);
            }
            this.A0Q = byteBuffer;
            this.A05 = i;
        }
        A0V(adjustmentUs);
        if (!this.A0Q.hasRemaining()) {
            this.A0Q = null;
            this.A05 = 0;
            return true;
        }
        if (this.A0k.A0M(A07())) {
            AnonymousClass44.A07(A0L(7, 16, 23), A0L(178, 29, 2));
            flush();
            return true;
        }
        return false;
    }

    @Override
    public final void A9Z() {
        this.A0Z = true;
    }

    @Override
    public final boolean A9g() {
        return A0h() && this.A0k.A0L(A07());
    }

    @Override
    public final boolean AAG() {
        return !A0h() || (this.A0U && !A9g());
    }

    @Override
    public final void AGG() {
        this.A0X = true;
        if (A0h()) {
            this.A0k.A0F();
            this.A0D.play();
        }
    }

    @Override
    public final void AGI() throws C8M {
        if (!this.A0U && A0h() && A0f()) {
            A0P();
            this.A0U = true;
        }
    }

    @Override
    public final void AIW(C2318oy c2318oy) {
        if (this.A0E.equals(c2318oy)) {
            return;
        }
        this.A0E = c2318oy;
        if (this.A0b) {
            return;
        }
        flush();
    }

    @Override
    public final void AIX(int i) {
        if (this.A01 != i) {
            this.A01 = i;
            this.A0T = i != 0;
            flush();
        }
    }

    @Override
    public final void AIY(C1P c1p) {
        if (this.A0F.equals(c1p)) {
            return;
        }
        int i = c1p.A01;
        float f = c1p.A00;
        if (this.A0D != null) {
            int effectId = this.A0F.A01;
            if (effectId != i) {
                AudioTrack audioTrack = this.A0D;
                if (A10[7].length() != 32) {
                    throw new RuntimeException();
                }
                String[] strArr = A10;
                strArr[0] = "ejzMDVkCKjmiTtIYDMlHFxA2dL6L7Th4";
                strArr[3] = "3op87oKeQBz5MvPCbX5N1e1cWqib6LOP";
                audioTrack.attachAuxEffect(i);
            }
            if (i != 0) {
                this.A0D.setAuxEffectSendLevel(f);
            }
        }
        this.A0F = c1p;
    }

    @Override
    @MetaExoPlayerCustomization(type = {"NEW_METHOD"}, value = "D45157249: Retry Audio Track Init failure with less Audio track allocation sizes")
    public final void AIg(boolean z) {
        this.A0S = z;
    }

    @Override
    public final void AIl(C8J c8j) {
        this.A0I = c8j;
    }

    @Override
    public final void AIt(C2296ob c2296ob) {
        C2296ob c2296ob2 = new C2296ob(AbstractC06244a.A00(c2296ob.A01, 0.1f, 8.0f), AbstractC06244a.A00(c2296ob.A00, 0.1f, 8.0f));
        if (this.A0r) {
            int i = AbstractC06244a.A02;
            String[] strArr = A10;
            if (strArr[2].charAt(24) != strArr[6].charAt(24)) {
                throw new RuntimeException();
            }
            String[] strArr2 = A10;
            strArr2[0] = "mNkMATimN2JlCwGmoqKrFKrIOPJhoNaC";
            strArr2[3] = "5L3Fdp27ixuu2nNAlcGmWXwucnCjA2b5";
            if (i >= 23) {
                A0b(c2296ob2);
                return;
            }
        }
        A0c(c2296ob2, A0p());
    }

    @Override
    public final void AIw(C07147m c07147m) {
        this.A0H = c07147m;
    }

    @Override
    public final void AIy(AudioDeviceInfo audioDeviceInfo) {
        this.A0J = audioDeviceInfo == null ? null : new C07278c(audioDeviceInfo);
        String[] strArr = A10;
        if (strArr[2].charAt(24) != strArr[6].charAt(24)) {
            throw new RuntimeException();
        }
        String[] strArr2 = A10;
        strArr2[0] = "fdceU7wc4F7eltehFDuXboaWNHZsjBbo";
        strArr2[3] = "ndF9ePFUZlaV1XmuWN8y5PTJytJgMa2t";
        if (this.A0D != null) {
            C8a.A00(this.A0D, this.A0J);
        }
    }

    @Override
    public final void AJ4(boolean z) {
        A0c(A0I(), z);
    }

    @Override
    public final boolean AJc(C2312or c2312or) {
        return A0o(c2312or) != 0;
    }

    @Override
    @MetaExoPlayerCustomization(type = {"TEMPORARY"}, value = "Old API that can be removed when we move to MediaCodecRenderer2")
    public final boolean AJe(int i, int i2) {
        if (AbstractC06244a.A15(i2)) {
            return i2 != 4 || AbstractC06244a.A02 >= 21;
        }
        return this.A0j != null && this.A0j.A0A(i2) && (i == -1 || i <= this.A0j.A08());
    }

    @Override
    public final void flush() {
        if (A0h()) {
            A0Q();
            if (this.A0k.A0J()) {
                this.A0D.pause();
            }
            boolean zA0l = A0l(this.A0D);
            if (A10[4].length() == 6) {
                throw new RuntimeException();
            }
            A10[5] = "i9Rinuw5ztOihCbMK36CN4CjOXT3DfRT";
            if (zA0l) {
                C07358n c07358n = this.A0O;
                if (A10[7].length() != 32) {
                    throw new RuntimeException();
                }
                A10[7] = "H3Tn5qbfAuT8Q6Ln8VWJEFxZf5lTeqqt";
                ((C07358n) C3M.A01(c07358n)).A01(this.A0D);
            }
            if (AbstractC06244a.A02 < 21 && !this.A0T) {
                this.A01 = 0;
            }
            C8F c8fA0B = this.A0K.A0B();
            if (this.A0L != null) {
                this.A0K = this.A0L;
                this.A0L = null;
            }
            this.A0k.A0E();
            A0Z(this.A0D, this.A0h, this.A0I, c8fA0B);
            this.A0D = null;
        }
        this.A0o.A00();
        this.A0n.A00();
    }

    @Override
    public final void pause() {
        this.A0X = false;
        if (A0h() && this.A0k.A0K()) {
            this.A0D.pause();
        }
    }

    @Override
    public final void setVolume(float f) {
        if (this.A00 != f) {
            this.A00 = f;
            String[] strArr = A10;
            if (strArr[0].charAt(31) == strArr[3].charAt(31)) {
                throw new RuntimeException();
            }
            A10[5] = "E1Te023wTVVNappUuQixsG3bphOCE2I8";
            A0R();
        }
    }
}
