package com.facebook.ads.redexgen.core;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import com.facebook.ads.androidx.media3.common.Metadata;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import org.json.JSONException;

public final class AnonymousClass13 extends C9Z implements Handler.Callback {
    public static byte[] A0C;
    public static String[] A0D = {"NK", "vMUMQm9t3PVEHAhulw0MAIkQwbUiUT4C", "VzHAp2e3DLoJMdzQNED0QcuPK7cYUDq5", "FnbOiwq", "xIduLB4T8250", "Cs28mBuu0mG0MZGGLuKaoZOHc13snW3U", "yvPpy336WGNf4g7OJVDaRPYRY7Bcuv5q", "KVpXSq2ZIE7gcar9k8WJ"};
    public int A00;
    public int A01;
    public long A02;
    public HK A03;
    public List<ImfDataTrack> A04;
    public boolean A05;
    public final Handler A06;
    public final B1 A07;
    public final B3 A08;
    public final C07408z A09;
    public final long[] A0A;
    public final Metadata[] A0B;

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A0C, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 31);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A02() {
        A0C = new byte[]{86, 97, 97, 124, 97, 51, 122, 125, 51, 99, 114, 97, 96, 122, 125, 116, 51, 90, 94, 85, 51, 96, 99, 118, 112, 124, 84, 69, 80, 85, 80, 69, 80, 99, 84, 95, 85, 84, 67, 84, 67};
    }

    /* JADX WARN: Failed to parse debug info
    java.lang.ArrayIndexOutOfBoundsException
     */
    private void A07(Metadata metadata, List<Metadata.Entry> list) {
        for (int i = 0; i < metadata.A02(); i++) {
            C2312or c2312orA9T = metadata.A03(i).A9T();
            if (c2312orA9T == null || !this.A07.AJc(c2312orA9T)) {
                list.add(metadata.A03(i));
            } else {
                HK hkA5B = this.A07.A5B(c2312orA9T);
                byte[] bArr = (byte[]) C3M.A01(metadata.A03(i).A9S());
                this.A09.A0A();
                this.A09.A0C(bArr.length);
                ((ByteBuffer) AbstractC06244a.A0f(this.A09.A02)).put(bArr);
                this.A09.A0B();
                Metadata metadataA5g = hkA5B.A5g(this.A09);
                if (metadataA5g != null) {
                    A07(metadataA5g, list);
                }
            }
        }
    }

    static {
        A02();
    }

    public AnonymousClass13(B3 b3, Looper looper) {
        this(b3, looper, B1.A00, null);
    }

    public AnonymousClass13(B3 b3, Looper looper, B1 b1, String str) {
        super(5);
        this.A08 = (B3) C3M.A01(b3);
        this.A06 = looper == null ? null : AbstractC06244a.A0c(looper, this);
        this.A07 = (B1) C3M.A01(b1);
        this.A09 = new C07408z();
        this.A0B = new Metadata[5];
        this.A0A = new long[5];
        A08(str);
    }

    private void A01() {
        Arrays.fill(this.A0B, (Object) null);
        this.A01 = 0;
        this.A00 = 0;
    }

    private void A03(long j) {
        if (this.A04 == null) {
            return;
        }
        for (ImfDataTrack imfDataTrack : this.A04) {
            if (imfDataTrack.A01 > j || imfDataTrack.A00 >= j) {
            }
        }
    }

    private void A04(long j) {
        if (this.A04 == null) {
            return;
        }
        long jA01 = AbstractC05701w.A01(j);
        if (this.A06 != null) {
            this.A06.obtainMessage(1, Long.valueOf(jA01)).sendToTarget();
        } else {
            A03(jA01);
        }
    }

    private void A05(Metadata metadata, long j) {
        if (this.A06 != null) {
            Handler handler = this.A06;
            String[] strArr = A0D;
            if (strArr[4].length() == strArr[0].length()) {
                throw new RuntimeException();
            }
            A0D[5] = "4kdXpcjsywiaLxx0LOctAJHWIf081Tdg";
            handler.obtainMessage(0, new Object[]{metadata, Long.valueOf(j)}).sendToTarget();
            return;
        }
        A06(metadata, j);
    }

    private void A06(Metadata metadata, long j) {
        this.A08.AEE(metadata, j);
    }

    private void A08(String str) {
        if (str != null && !str.isEmpty()) {
            try {
                this.A04 = ImfSpecParser.A01(str);
            } catch (JSONException unused) {
                AnonymousClass44.A05(A00(25, 16, 46), A00(0, 25, 12));
            }
        }
    }

    @Override
    public final void A1Z() {
        A01();
        this.A03 = null;
    }

    @Override
    public final void A1a(long j, boolean z) {
        A01();
        this.A05 = false;
    }

    @Override
    public final void A1c(C2312or[] c2312orArr, long j, long j2) {
        this.A03 = this.A07.A5B(c2312orArr[0]);
    }

    @Override
    public final boolean AAG() {
        return this.A05;
    }

    @Override
    public final boolean AAV() {
        return true;
    }

    @Override
    public final void AHn(long j, long j2) {
        A04(j);
        if (!this.A05) {
            int i = this.A00;
            String[] strArr = A0D;
            if (strArr[7].length() == strArr[3].length()) {
                throw new RuntimeException();
            }
            A0D[6] = "1aiib0Ku6fHDvKwfwiyuvRv8M83XUpBK";
            if (i < 5) {
                this.A09.A0A();
                C6N c6nA1U = A1U();
                int iA1R = A1R(c6nA1U, this.A09, 0);
                if (iA1R == -4) {
                    if (this.A09.A05()) {
                        this.A05 = true;
                    } else if (!this.A09.A04()) {
                        this.A09.A00 = this.A02;
                        this.A09.A0B();
                        Metadata metadataA5g = ((HK) AbstractC06244a.A0f(this.A03)).A5g(this.A09);
                        if (metadataA5g != null) {
                            ArrayList arrayList = new ArrayList(metadataA5g.A02());
                            A07(metadataA5g, arrayList);
                            if (!arrayList.isEmpty()) {
                                Metadata metadata = new Metadata(arrayList);
                                int i2 = (this.A01 + this.A00) % 5;
                                this.A0B[i2] = metadata;
                                this.A0A[i2] = this.A09.A01;
                                this.A00++;
                            }
                        }
                    }
                } else if (iA1R == -5) {
                    this.A02 = ((C2312or) C3M.A01(c6nA1U.A00)).A0M;
                }
            }
        }
        if (this.A00 > 0 && this.A0A[this.A01] <= j) {
            A05((Metadata) AbstractC06244a.A0f(this.A0B[this.A01]), AbstractC05701w.A01(j - this.A0A[this.A01]));
            this.A0B[this.A01] = null;
            this.A01 = (this.A01 + 1) % 5;
            this.A00--;
        }
    }

    @Override
    public final int AJb(C2312or c2312or) {
        int i;
        if (this.A07.AJc(c2312or)) {
            if (AnonymousClass14.A1G(c2312or)) {
                i = 4;
            } else {
                i = 2;
            }
            return AnonymousClass76.A00(i);
        }
        return AnonymousClass76.A00(0);
    }

    @Override
    public final String getName() {
        return A00(25, 16, 46);
    }

    @Override
    public final boolean handleMessage(Message message) {
        switch (message.what) {
            case 0:
                Object[] objArr = (Object[]) message.obj;
                A06((Metadata) objArr[0], ((Long) objArr[1]).longValue());
                return true;
            case 1:
                A03(((Long) message.obj).longValue());
                String[] strArr = A0D;
                if (strArr[2].charAt(28) != strArr[1].charAt(28)) {
                    throw new RuntimeException();
                }
                A0D[5] = "UckPrHUV0DeFsLdW0mSA3sL7bYTaY94z";
                return true;
            default:
                throw new IllegalStateException();
        }
    }
}
