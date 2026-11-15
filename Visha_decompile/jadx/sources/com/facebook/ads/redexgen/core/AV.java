package com.facebook.ads.redexgen.core;

import android.os.SystemClock;
import com.transsion.socket.pkgdata.SocketData;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.CopyOnWriteArraySet;
import javax.annotation.Nullable;

public final class AV {
    public static byte[] A06;
    public static String[] A07 = {"eoBlep8s1FBIN6Rt", "z5PVad8lFvymSbVcRUVN6mCVOAyUTpZZ", "CSzRbjHFCczJ9I", "vibjkM4Umklha9WpeyLj2yq757BqeZSZ", "UWrS", "", "nE8lp", "HlO2gnmnWOpwEq19Q9DE2Hcik4TJ8nc9"};
    public static final AV A08;

    @Nullable
    public MediaCodecPoolTracker A01;

    @Nullable
    public Boolean A02;
    public volatile Map<String, Set<AO>> A04 = new HashMap();
    public final AU A03 = new AU(this);
    public int A00 = 0;
    public volatile long A05 = -1;

    public static String A05(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A06, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 74);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A08() {
        A06 = new byte[]{-63, -71, -56, -75, SocketData.CLAZZ_TYPE_SEND_PACKAGE, -72, -75, -54, -123, -72, SocketData.CLAZZ_TYPE_SEND_PACKAGE, -75, -54, -123, SocketData.CLAZZ_TYPE_SEND_PACKAGE, -72, -71, -73, -61, -72, -71, -58};
    }

    /* JADX WARN: Code duplicated, block: B:46:0x0082 A[Catch: all -> 0x009f, TRY_LEAVE, TryCatch #3 {all -> 0x009f, blocks: (B:41:0x0078, B:44:0x007e, B:46:0x0082), top: B:56:0x0078 }] */
    /* JADX WARN: Failed to parse debug info
    java.lang.ArrayIndexOutOfBoundsException
     */
    private void A0C(boolean z, C1907hv c1907hv, EnumC1904hq enumC1904hq, String str, AO ao) {
        if (A0I(z, c1907hv) && A0G(str, c1907hv)) {
            boolean z2 = true;
            synchronized (this) {
                if (this.A00 < c1907hv.A05) {
                    Set<AO> setA06 = this.A04.get(str);
                    if (setA06 == null) {
                        setA06 = A06();
                        this.A04.put(str, setA06);
                    }
                    if (setA06.contains(ao)) {
                        z2 = false;
                    } else if (((z && c1907hv.A0M) || (!z && c1907hv.A0L)) && setA06.size() < c1907hv.A04) {
                        setA06.add(ao);
                        this.A00++;
                        z2 = false;
                    }
                }
                if (!z2) {
                    try {
                        try {
                            this.A05 = SystemClock.elapsedRealtime();
                            ao.reset();
                            A03().A09(enumC1904hq, ao.hashCode());
                            this.A05 = -1L;
                            return;
                        } catch (IllegalStateException unused) {
                            A0B(str, ao);
                            this.A05 = -1L;
                            if (c1907hv.A0Q) {
                                ao.stop();
                            } else {
                                ao.stop();
                            }
                        }
                    } catch (Throwable th) {
                        this.A05 = -1L;
                        throw th;
                    }
                }
            }
        }
        try {
            if (c1907hv.A0Q || (!z && !c1907hv.A0P)) {
                ao.stop();
            }
        } finally {
            A03().A08(enumC1904hq, ao.hashCode());
            ao.AGr();
            A03().A07(enumC1904hq, ao.hashCode());
        }
    }

    static {
        A08();
        A08 = new AV();
    }

    private AO A01(boolean z, C1907hv c1907hv, EnumC1904hq enumC1904hq, String str) throws Exception {
        if (A0I(z, c1907hv) && A0G(str, c1907hv)) {
            synchronized (this) {
                Set<AO> set = this.A04.get(str);
                if (set != null && !set.isEmpty()) {
                    this.A00--;
                    Iterator<AO> it = set.iterator();
                    AO ret = it.next();
                    it.remove();
                    A03().A0A(z, str, enumC1904hq, ret.hashCode());
                    return ret;
                }
            }
        }
        try {
            C1902ho c1902hoA05 = A03().A05(z, str, enumC1904hq);
            AO aoA03 = this.A03.A03(z, str);
            A03().A06(c1902hoA05, aoA03.hashCode());
            return aoA03;
        } catch (Exception e) {
            throw new MediaCodecInitializationException(str, e);
        }
    }

    public static AV A02() {
        AV av = A08;
        String[] strArr = A07;
        if (strArr[6].length() == strArr[4].length()) {
            throw new RuntimeException();
        }
        String[] strArr2 = A07;
        strArr2[6] = "gdX1n";
        strArr2[4] = "uqN6";
        return av;
    }

    public MediaCodecPoolTracker A03() {
        if (this.A01 != null) {
            return this.A01;
        }
        return NoOpMediaCodecPoolTracker.A02;
    }

    public Set<AO> A06() {
        if (this.A02 != null && this.A02.booleanValue()) {
            return new CopyOnWriteArraySet();
        }
        return new HashSet();
    }

    private void A09(MediaCodecPoolTracker mediaCodecPoolTracker) {
        if (this.A01 == null) {
            this.A01 = mediaCodecPoolTracker;
        }
    }

    private void A0A(C1907hv c1907hv) {
        if (this.A02 == null) {
            synchronized (this) {
                if (this.A02 == null) {
                    this.A02 = Boolean.valueOf(c1907hv.A0R);
                    if (this.A02.booleanValue()) {
                        this.A04 = new ConcurrentHashMap();
                    }
                }
            }
        }
    }

    private void A0B(String str, AO ao) {
        Set<AO> set = this.A04.get(str);
        if (set != null && set.remove(ao)) {
            int i = this.A00;
            String[] strArr = A07;
            if (strArr[3].charAt(31) != strArr[1].charAt(31)) {
                throw new RuntimeException();
            }
            String[] strArr2 = A07;
            strArr2[3] = "FxBrmOrzGAHEl951IE67fieu752sH0JZ";
            strArr2[1] = "QwM4isUBZzXVsf3PyxWpFGvjBfZOcOMZ";
            this.A00 = i - 1;
        }
    }

    public static boolean A0E(String str) {
        return str.equals(A05(0, 22, 10));
    }

    public static boolean A0G(String str, C1907hv c1907hv) {
        if (A0E(str) && c1907hv.A0A) {
            return false;
        }
        return true;
    }

    public boolean A0I(boolean z, C1907hv c1907hv) {
        if (c1907hv.A0C && this.A05 != -1 && SystemClock.elapsedRealtime() - this.A05 > 5000) {
            return false;
        }
        return A0J(z, c1907hv);
    }

    public static boolean A0J(boolean z, C1907hv c1907hv) {
        return (z && c1907hv.A0M) || (!z && c1907hv.A0L);
    }

    public final AO A0K(boolean z, C1907hv c1907hv, MediaCodecPoolTracker mediaCodecPoolTracker, EnumC1904hq enumC1904hq, String str) throws Exception {
        A09(mediaCodecPoolTracker);
        A0A(c1907hv);
        if (c1907hv.A0J) {
            AO aoA02 = this.A03.A02(z, c1907hv, enumC1904hq, str);
            String[] strArr = A07;
            if (strArr[5].length() == strArr[0].length()) {
                throw new RuntimeException();
            }
            String[] strArr2 = A07;
            strArr2[3] = "ttyEUrXfsAwEm9Eniby4AXTGkmRMb34Z";
            strArr2[1] = "BAFCEyHtTeugEvQpUcdazZ0OUcRhptwZ";
            return aoA02;
        }
        return A01(z, c1907hv, enumC1904hq, str);
    }

    public final void A0L(boolean z, C1907hv c1907hv, MediaCodecPoolTracker mediaCodecPoolTracker, EnumC1904hq enumC1904hq, String str, AO ao) throws Throwable {
        A09(mediaCodecPoolTracker);
        if (c1907hv.A0J) {
            this.A03.A0A(z, c1907hv, enumC1904hq, str, ao);
        } else {
            A0C(z, c1907hv, enumC1904hq, str, ao);
        }
    }
}
