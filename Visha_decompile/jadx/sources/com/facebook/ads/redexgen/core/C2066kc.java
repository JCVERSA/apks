package com.facebook.ads.redexgen.core;

import android.net.Uri;
import android.util.Pair;
import android.util.SparseArray;
import androidx.media3.common.C;
import androidx.media3.container.Mp4Box;
import androidx.media3.exoplayer.RendererCapabilities;
import com.facebook.ads.androidx.media3.common.DrmInitData;
import com.facebook.ads.androidx.media3.extractor.metadata.emsg.EventMessage;
import com.facebook.video.heroplayer.exocustom.MetaExoPlayerCustomization;
import com.hunantv.media.drm.IDrmSession;
import com.transsion.hubsdk.api.lighting.TranSceneConfig;
import com.transsion.socket.pkgdata.SocketData;
import java.io.IOException;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import java.util.UUID;
import okio.Utf8;
import org.mozilla.classfile.ByteCode;

@MetaExoPlayerCustomization("Rename the class for A/B Testing")
public final class C2066kc implements GX {
    public static byte[] A0Z;
    public static String[] A0a = {"vtb", "vbKonC", "9ohrxt3rIVPnhyMUHrYVmyK7bOK5FZ2r", "2NigTWH0ge82u7sbUdSeL8Wtj6iQtHIS", "zZrcpvCeqeJUqHmK3YGTET67EQVL4Dlr", "FEfAuyU", "TXQt6Bb5wsq1E0rpiydPRGzBJonmO6nW", "L3NiJ083BoYvWzKRwautviQbODBNEwGW"};
    public static final InterfaceC0921Gb A0b;
    public static final C2312or A0c;
    public static final byte[] A0d;
    public int A00;
    public int A01;
    public int A02;
    public int A03;
    public int A04;
    public int A05;
    public int A06;
    public long A07;
    public long A08;
    public long A09;

    @MetaExoPlayerCustomization("New field")
    public long A0A;
    public long A0B;
    public long A0C;
    public C4J A0D;
    public GY A0E;
    public IY A0F;
    public boolean A0G;
    public boolean A0H;
    public H1[] A0I;
    public H1[] A0J;
    public final int A0K;
    public final SparseArray<IY> A0L;
    public final C4J A0M;
    public final C4J A0N;
    public final C4J A0O;
    public final C4J A0P;
    public final C4J A0Q;
    public final C4R A0R;
    public final H1 A0S;
    public final HO A0T;
    public final C0983Im A0U;
    public final ArrayDeque<C2073kj> A0V;
    public final ArrayDeque<IX> A0W;
    public final List<C2312or> A0X;
    public final byte[] A0Y;

    /* JADX WARN: Failed to parse debug info
    java.lang.ArrayIndexOutOfBoundsException
     */
    public static int A01(IY iy, int i, int i2, C4J c4j, int i3) throws C05802i {
        int iA0C;
        int iA0C2;
        int i4 = i3;
        c4j.A0f(8);
        int iA00 = II.A00(c4j.A0C());
        C0983Im c0983Im = iy.A05.A03;
        C0985Io c0985Io = iy.A09;
        IP ip = (IP) AbstractC06244a.A0f(c0985Io.A06);
        c0985Io.A0C[i] = c4j.A0L();
        c0985Io.A0E[i] = c0985Io.A04;
        if ((iA00 & 1) != 0) {
            long[] jArr = c0985Io.A0E;
            jArr[i] = jArr[i] + ((long) c4j.A0C());
        }
        boolean z = (iA00 & 4) != 0;
        int iA0C3 = ip.A01;
        if (z) {
            iA0C3 = c4j.A0C();
        }
        boolean z2 = (iA00 & 256) != 0;
        boolean z3 = (iA00 & 512) != 0;
        boolean z4 = (iA00 & 1024) != 0;
        boolean z5 = (iA00 & 2048) != 0;
        long j = A0a(c0983Im) ? ((long[]) AbstractC06244a.A0f(c0983Im.A09))[0] : 0L;
        int[] iArr = c0985Io.A0B;
        long[] jArr2 = c0985Io.A0D;
        boolean[] zArr = c0985Io.A0G;
        boolean z6 = c0983Im.A03 == 2 && (i2 & 1) != 0;
        int i5 = i4 + c0985Io.A0C[i];
        long j2 = c0983Im.A06;
        long j3 = c0985Io.A05;
        while (i4 < i5) {
            if (z2) {
                iA0C = c4j.A0C();
                if (A0a[5].length() == 30) {
                    throw new RuntimeException();
                }
                A0a[0] = "Vvd";
            } else {
                iA0C = ip.A00;
            }
            int iA01 = A00(iA0C);
            int iA02 = A00(z3 ? c4j.A0C() : ip.A03);
            if (z4) {
                iA0C2 = c4j.A0C();
            } else {
                iA0C2 = (i4 == 0 && z) ? iA0C3 : ip.A01;
            }
            jArr2[i4] = AbstractC06244a.A0U((((long) (z5 ? c4j.A0C() : 0)) + j3) - j, 1000000L, j2);
            if (!c0985Io.A09) {
                jArr2[i4] = jArr2[i4] + iy.A05.A02;
            }
            iArr[i4] = iA02;
            zArr[i4] = ((iA0C2 >> 16) & 1) == 0 && (!z6 || i4 == 0);
            j3 += (long) iA01;
            i4++;
        }
        c0985Io.A05 = j3;
        return i5;
    }

    /* JADX WARN: Failed to parse debug info
    java.lang.ArrayIndexOutOfBoundsException
     */
    public static Pair<Long, C2106lT> A05(C4J c4j, long j) throws C05802i {
        long jA0R;
        long jA0R2;
        c4j.A0f(8);
        int iA01 = II.A01(c4j.A0C());
        c4j.A0g(4);
        long jA0Q = c4j.A0Q();
        if (iA01 == 0) {
            jA0R = c4j.A0Q();
            jA0R2 = j + c4j.A0Q();
        } else {
            jA0R = c4j.A0R();
            jA0R2 = j + c4j.A0R();
        }
        long jA0U = AbstractC06244a.A0U(jA0R, 1000000L, jA0Q);
        c4j.A0g(2);
        int iA0M = c4j.A0M();
        int[] iArr = new int[iA0M];
        long[] jArr = new long[iA0M];
        long[] jArr2 = new long[iA0M];
        long[] jArr3 = new long[iA0M];
        long jA0U2 = jA0U;
        for (int i = 0; i < iA0M; i++) {
            int iA0C = c4j.A0C();
            if ((Integer.MIN_VALUE & iA0C) != 0) {
                throw C05802i.A01(A0A(756, 28, 79), null);
            }
            long jA0Q2 = c4j.A0Q();
            iArr[i] = Integer.MAX_VALUE & iA0C;
            jArr[i] = jA0R2;
            jArr3[i] = jA0U2;
            jA0R += jA0Q2;
            jA0U2 = AbstractC06244a.A0U(jA0R, 1000000L, jA0Q);
            jArr2[i] = jA0U2 - jArr3[i];
            c4j.A0g(4);
            jA0R2 += (long) iArr[i];
        }
        return Pair.create(Long.valueOf(jA0U), new C2106lT(iArr, jArr, jArr2, jArr3));
    }

    /* JADX WARN: Failed to parse debug info
    java.lang.ArrayIndexOutOfBoundsException
     */
    public static IY A09(C4J c4j, SparseArray<IY> sparseArray, boolean z) {
        c4j.A0f(8);
        int iA00 = II.A00(c4j.A0C());
        IY iyValueAt = z ? sparseArray.valueAt(0) : sparseArray.get(c4j.A0C());
        if (iyValueAt == null) {
            String[] strArr = A0a;
            if (strArr[4].charAt(20) == strArr[6].charAt(20)) {
                throw new RuntimeException();
            }
            A0a[1] = "jDobgNhtM";
            return null;
        }
        if ((iA00 & 1) != 0) {
            long jA0R = c4j.A0R();
            iyValueAt.A09.A04 = jA0R;
            iyValueAt.A09.A03 = jA0R;
        }
        IP ip = iyValueAt.A04;
        iyValueAt.A09.A06 = new IP((iA00 & 2) != 0 ? c4j.A0C() - 1 : ip.A02, (iA00 & 8) != 0 ? c4j.A0C() : ip.A00, (iA00 & 16) != 0 ? c4j.A0C() : ip.A03, (iA00 & 32) != 0 ? c4j.A0C() : ip.A01);
        return iyValueAt;
    }

    public static String A0A(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A0Z, i, i + i2);
        int i4 = 0;
        while (true) {
            int length = bArrCopyOfRange.length;
            String[] strArr = A0a;
            if (strArr[4].charAt(20) == strArr[6].charAt(20)) {
                throw new RuntimeException();
            }
            A0a[5] = "p0M5dFs6dnHIC4r2oiX9lIp2";
            if (i4 >= length) {
                return new String(bArrCopyOfRange);
            }
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 74);
            i4++;
        }
    }

    public static void A0D() {
        A0Z = new byte[]{8, 65, 91, 8, 76, 65, 78, 78, 77, 90, 77, 70, 92, 8, 78, 90, 71, 69, 8, 78, 90, 73, 79, 69, 77, 70, 92, 8, 91, 73, 69, 88, 68, 77, 8, 75, 71, 93, 70, 92, 109, 36, 62, 109, 42, Utf8.REPLACEMENT_BYTE, 40, 44, 57, 40, Utf8.REPLACEMENT_BYTE, 109, 57, 37, 44, 35, 109, 43, Utf8.REPLACEMENT_BYTE, 44, 42, 32, 40, 35, 57, 109, 62, 44, 32, 61, 33, 40, 109, 46, 34, 56, 35, 57, 47, 26, 1, 3, 78, 29, 7, 20, ByteCode.T_LONG, 78, 2, ByteCode.T_LONG, 29, 29, 78, 26, 6, 15, 0, 78, 6, ByteCode.T_LONG, 15, 10, ByteCode.T_LONG, 28, 78, 2, ByteCode.T_LONG, 0, 9, 26, 6, 78, 70, 27, 0, 29, 27, 30, 30, 1, 28, 26, ByteCode.T_LONG, 10, 71, 64, 70, 109, 119, 113, 122, 35, 96, 108, 118, 109, 119, 35, 106, 109, 35, 112, 97, 100, 115, 35, 34, 62, 35, 50, 35, 43, 118, 109, 112, 118, 115, 115, 108, 113, 119, 102, 103, 42, 45, 29, 54, 44, 42, 33, 120, 59, 55, 45, 54, 44, 120, 49, 54, 120, 43, Utf8.REPLACEMENT_BYTE, 40, 60, 120, 121, 101, 120, 105, 120, 112, 45, 54, 43, 45, 40, 40, 55, 42, 44, 61, 60, 113, 118, 71, 115, 96, 102, 108, 100, 111, 117, 100, 101, 76, 113, 53, 68, 121, 117, 115, 96, 98, 117, 110, 115, 14, 32, 41, 40, 53, 46, 41, 32, 103, 41, 34, 32, 38, 51, 46, 49, 34, 103, 40, 33, 33, 52, 34, 51, 103, 51, 40, 103, 52, 38, 42, 55, 43, 34, 103, 35, 38, 51, 38, 105, 118, 81, 73, 94, 83, 86, 91, 31, 113, 126, 115, 31, 83, 90, 81, 88, 75, 87, 0, 41, 45, 42, 108, 45, 56, 35, 33, 108, 40, 41, 42, 37, 34, 41, Utf8.REPLACEMENT_BYTE, 108, 41, 52, 56, 41, 34, 40, 41, 40, 108, 45, 56, 35, 33, 108, Utf8.REPLACEMENT_BYTE, 37, 54, 41, 108, 100, 57, 34, Utf8.REPLACEMENT_BYTE, 57, 60, 60, 35, 62, 56, 41, 40, 101, 98, 75, 98, 102, 97, 39, 102, 115, 104, 106, 39, 112, 110, 115, 111, 39, 107, 98, 105, 96, 115, 111, 39, 57, 39, 53, 54, 51, 48, 51, Utf8.REPLACEMENT_BYTE, 52, 49, 51, 48, 39, 47, 114, 105, 116, 114, 119, 119, 104, 117, 115, 98, 99, 46, 41, 62, 23, 23, 2, 20, 5, 81, 5, 30, 81, 20, 31, 18, 3, 8, 1, 5, 24, 30, 31, 81, 21, 16, 5, 16, 81, 6, 16, 2, 81, 31, 20, 22, 16, 5, 24, 7, 20, 95, 120, 81, 81, 68, 82, 67, 23, 67, 88, 23, 82, 89, 83, 23, 88, 81, 23, 90, 83, 86, 67, 23, 64, 86, 68, 23, 89, 82, 80, 86, 67, 94, 65, 82, 25, 27, 34, 49, 38, 38, 61, 48, 61, 58, 51, 116, 0, 38, 53, 55, Utf8.REPLACEMENT_BYTE, 17, 58, 55, 38, 45, 36, 32, 61, 59, 58, 22, 59, 44, 116, 36, 53, 38, 53, 57, 49, 32, 49, 38, 39, 116, 61, 39, 116, 33, 58, 39, 33, 36, 36, 59, 38, 32, 49, 48, 122, 35, 17, 25, 10, 80, 3, 17, 29, 0, 28, 21, 80, 19, 31, 5, 30, 4, 80, 70, 112, 123, 118, 53, 102, 116, 120, 101, 121, 112, 53, 118, 122, 96, 123, 97, 53, 5, 61, Utf8.REPLACEMENT_BYTE, 38, 38, 51, 50, 118, 38, 37, 37, 62, 118, 55, 34, 57, 59, 118, 126, 48, 55, Utf8.REPLACEMENT_BYTE, 58, 51, 50, 118, 34, 57, 118, 51, 46, 34, 36, 55, 53, 34, 118, 35, 35, Utf8.REPLACEMENT_BYTE, 50, 127, 78, 118, 116, 109, 109, 116, 115, 122, 61, 124, 105, 114, 112, 61, 106, 116, 105, 117, 61, 113, 120, 115, 122, 105, 117, 61, 35, 61, 47, 44, 41, 42, 41, 37, 46, 43, 41, 42, 61, 53, 104, 115, 110, 104, 109, 109, 114, 111, 105, 120, 121, 52, 51, 1, 57, 59, 34, 34, 59, 60, 53, 114, 39, 60, 33, 39, 34, 34, 61, 32, 38, 55, 54, 114, 55, Utf8.REPLACEMENT_BYTE, 33, 53, 114, 36, 55, 32, 33, 59, 61, 60, 104, 114, 23, 44, 39, 58, 50, 39, 33, 54, 39, 38, 98, 47, 45, 45, 52, 98, 32, 45, 58, 108, 92, 103, 108, 113, 121, 108, 106, 125, 108, 109, 41, 103, 108, 110, 104, 125, 96, 127, 108, 41, 127, 104, 101, 124, 108, 51, 41, 35, 24, 19, 14, 6, 19, 21, 2, 19, 18, 86, 5, 23, 31, 25, 86, 19, 24, 2, 4, 15, 86, 21, 25, 3, 24, 2, 76, 86, 80, 107, 109, 100, 107, 97, 105, 96, 97, 37, 108, 107, 97, 108, 119, 96, 102, 113, 37, 119, 96, 99, 96, 119, 96, 107, 102, 96, 114, 69, 86, 77, 69, 70, 72, 65, 4, 72, 65, 74, 67, 80, 76, 4, 64, 65, 87, 71, 86, 77, 84, 80, 77, 75, 74, 4, 77, 74, 4, 87, 67, 84, 64, 4, 66, 75, 81, 74, 64, 4, 12, 81, 74, 87, 81, 84, 84, 75, 86, 80, 65, 64, 13, 102, 119, 119, 107, 110, 100, 102, 115, 110, 104, 105, 40, 127, 42, 98, 106, 116, 96, 88, 73, 73, 85, 80, 90, 88, 77, 80, 86, 87, 22, 65, 20, 84, 73, 13, 20, 79, 77, 77, 52, 32, 49, 60, 58, 122, 52, 54, 97, 72, 87, 90, 91, 81, 17, 86, 91, 72, 93, 126, 97, 108, 109, 103, 39, 101, 120, 60};
    }

    /* JADX WARN: Failed to parse debug info
    java.lang.ArrayIndexOutOfBoundsException
     */
    @MetaExoPlayerCustomization("Adding Uri for eMsg")
    private void A0H(C4J c4j, Uri uri) {
        String str;
        String str2;
        long jA0U;
        long jA0Q;
        if (this.A0J.length == 0) {
            return;
        }
        c4j.A0f(8);
        if (A0a[3].charAt(19) != 'e') {
            throw new RuntimeException();
        }
        A0a[1] = "i2btDlVidn";
        int iA01 = II.A01(c4j.A0C());
        long jA0U2 = C.TIME_UNSET;
        long jA05 = C.TIME_UNSET;
        switch (iA01) {
            case 0:
                str = (String) C3M.A01(c4j.A0U());
                str2 = (String) C3M.A01(c4j.A0U());
                long jA0Q2 = c4j.A0Q();
                jA0U2 = AbstractC06244a.A0U(c4j.A0Q(), 1000000L, jA0Q2);
                if (this.A0C != C.TIME_UNSET) {
                    jA05 = this.A0C + jA0U2;
                }
                jA0U = AbstractC06244a.A0U(c4j.A0Q(), 1000L, jA0Q2);
                jA0Q = c4j.A0Q();
                break;
            case 1:
                long jA0Q3 = c4j.A0Q();
                jA05 = AbstractC06244a.A0U(c4j.A0R(), 1000000L, jA0Q3);
                jA0U = AbstractC06244a.A0U(c4j.A0Q(), 1000L, jA0Q3);
                jA0Q = c4j.A0Q();
                str = (String) C3M.A01(c4j.A0U());
                str2 = (String) C3M.A01(c4j.A0U());
                break;
            default:
                AnonymousClass44.A07(A0A(IDrmSession.ERROR_SESSION_DRM_NULL, 22, 75), A0A(645, 35, 24) + iA01);
                return;
        }
        byte[] bArr = new byte[c4j.A07()];
        c4j.A0k(bArr, 0, c4j.A07());
        int i = 0;
        C4J c4j2 = new C4J(this.A0T.A01(new EventMessage(str, str2, jA0U, jA0Q, bArr)));
        int iA07 = c4j2.A07();
        H1[] h1Arr = this.A0J;
        int length = h1Arr.length;
        int i2 = 0;
        while (i2 < length) {
            H1 h1 = h1Arr[i2];
            c4j2.A0f(i);
            h1.AJu(uri);
            h1.AI7(c4j2, iA07);
            i2++;
            i = 0;
        }
        if (jA05 == C.TIME_UNSET) {
            this.A0W.addLast(new IX(jA0U2, true, iA07));
            this.A03 += iA07;
            return;
        }
        if (!this.A0W.isEmpty()) {
            this.A0W.addLast(new IX(jA05, false, iA07));
            this.A03 += iA07;
            return;
        }
        if (this.A0R != null) {
            C4R c4r = this.A0R;
            if (A0a[1].length() != 3) {
                String[] strArr = A0a;
                strArr[4] = "dSij3ZZr7drragDO7KaW8OWZIZwByPGb";
                strArr[6] = "O4MuDOrrUt3KGtyHElmFzP2mmpN9Ut0I";
                jA05 = c4r.A05(jA05);
            } else {
                jA05 = c4r.A05(jA05);
            }
        }
        if (this.A0A != C.TIME_UNSET && !MetaExoPlayerUpgradeConfig.A03(EnumC1911i2.A12)) {
            jA05 = this.A0A;
        }
        H1[] h1Arr2 = this.A0J;
        if (A0a[0].length() != 3) {
            throw new RuntimeException();
        }
        A0a[2] = "lJ55r5gDB38Ao7rNsYIhv4IUy3LH5Ini";
        for (H1 h2 : h1Arr2) {
            h2.AIA(jA05, 1, iA07, 0, null);
        }
    }

    /* JADX WARN: Failed to parse debug info
    java.lang.ArrayIndexOutOfBoundsException
     */
    public static void A0R(C2073kj c2073kj, SparseArray<IY> sparseArray, boolean z, int i, byte[] bArr) throws C05802i {
        IY iyA09 = A09(((C2072ki) C3M.A01(c2073kj.A07(Mp4Box.TYPE_tfhd))).A00, sparseArray, z);
        if (iyA09 == null) {
            return;
        }
        C0985Io c0985Io = iyA09.A09;
        long j = c0985Io.A05;
        boolean z2 = c0985Io.A09;
        iyA09.A08();
        iyA09.A06 = true;
        C2072ki c2072kiA07 = c2073kj.A07(Mp4Box.TYPE_tfdt);
        if (c2072kiA07 == null || (i & 2) != 0) {
            c0985Io.A05 = j;
            String[] strArr = A0a;
            if (strArr[4].charAt(20) == strArr[6].charAt(20)) {
                throw new RuntimeException();
            }
            A0a[7] = "mrSj0GzHTHwkPK2z0oCyoB4jTU17nK7M";
            c0985Io.A09 = z2;
        } else {
            c0985Io.A05 = A03(c2072kiA07.A00);
            c0985Io.A09 = true;
        }
        A0S(c2073kj, iyA09, i);
        C0983Im c0983Im = iyA09.A05.A03;
        Object objA01 = C3M.A01(c0985Io.A06);
        String[] strArr2 = A0a;
        if (strArr2[4].charAt(20) == strArr2[6].charAt(20)) {
            throw new RuntimeException();
        }
        A0a[1] = "vW8YzoDO1k8YQphW8Ysx";
        C0984In c0984InA00 = c0983Im.A00(((IP) objA01).A02);
        C2072ki c2072kiA08 = c2073kj.A07(Mp4Box.TYPE_saiz);
        if (c2072kiA08 != null) {
            A0V((C0984In) C3M.A01(c0984InA00), c2072kiA08.A00, c0985Io);
        }
        C2072ki c2072kiA09 = c2073kj.A07(Mp4Box.TYPE_saio);
        if (c2072kiA09 != null) {
            A0I(c2072kiA09.A00, c0985Io);
        }
        C2072ki c2072kiA010 = c2073kj.A07(Mp4Box.TYPE_senc);
        if (c2072kiA010 != null) {
            A0J(c2072kiA010.A00, c0985Io);
        }
        A0T(c2073kj, c0984InA00 != null ? c0984InA00.A02 : null, c0985Io);
        int size = c2073kj.A02.size();
        for (int i2 = 0; i2 < size; i2++) {
            C2072ki c2072ki = c2073kj.A02.get(i2);
            if (((II) c2072ki).A00 == 1970628964) {
                A0K(c2072ki.A00, c0985Io, bArr);
            }
        }
    }

    /* JADX WARN: Failed to parse debug info
    java.lang.ArrayIndexOutOfBoundsException
     */
    public static void A0T(C2073kj c2073kj, String str, C0985Io c0985Io) throws C05802i {
        C4J c4j = null;
        C4J c4j2 = null;
        for (int i = 0; i < c2073kj.A02.size(); i++) {
            C2072ki c2072ki = c2073kj.A02.get(i);
            C4J c4j3 = c2072ki.A00;
            if (((II) c2072ki).A00 == 1935828848) {
                c4j3.A0f(12);
                if (c4j3.A0C() == 1936025959) {
                    c4j = c4j3;
                }
            } else if (((II) c2072ki).A00 == 1936158820) {
                c4j3.A0f(12);
                if (c4j3.A0C() == 1936025959) {
                    c4j2 = c4j3;
                }
            }
        }
        if (c4j == null || c4j2 == null) {
            return;
        }
        c4j.A0f(8);
        int iA01 = II.A01(c4j.A0C());
        c4j.A0g(4);
        if (iA01 == 1) {
            c4j.A0g(4);
        }
        if (c4j.A0C() != 1) {
            throw C05802i.A00(A0A(126, 39, 73));
        }
        c4j2.A0f(8);
        int iA02 = II.A01(c4j2.A0C());
        c4j2.A0g(4);
        if (iA02 == 1) {
            if (c4j2.A0Q() == 0) {
                throw C05802i.A00(A0A(784, 55, 110));
            }
        } else if (iA02 >= 2) {
            c4j2.A0g(4);
        }
        if (c4j2.A0Q() != 1) {
            throw C05802i.A00(A0A(165, 39, 18));
        }
        c4j2.A0g(1);
        int iA0I = c4j2.A0I();
        int i2 = (iA0I & 240) >> 4;
        int i3 = iA0I & 15;
        boolean z = c4j2.A0I() == 1;
        if (z) {
            int iA0I2 = c4j2.A0I();
            byte[] bArr = new byte[16];
            c4j2.A0k(bArr, 0, bArr.length);
            byte[] bArr2 = null;
            if (iA0I2 == 0) {
                int iA0I3 = c4j2.A0I();
                bArr2 = new byte[iA0I3];
                c4j2.A0k(bArr2, 0, iA0I3);
            }
            c0985Io.A08 = true;
            c0985Io.A07 = new C0984In(z, str, iA0I2, bArr, i2, i3, bArr2);
        }
    }

    /* JADX WARN: Failed to parse debug info
    java.lang.ArrayIndexOutOfBoundsException
     */
    public static void A0V(C0984In c0984In, C4J c4j, C0985Io c0985Io) throws C05802i {
        int i = c0984In.A00;
        c4j.A0f(8);
        if ((II.A00(c4j.A0C()) & 1) == 1) {
            c4j.A0g(8);
        }
        int iA0I = c4j.A0I();
        int iA0L = c4j.A0L();
        if (iA0L > c0985Io.A00) {
            throw C05802i.A01(A0A(514, 18, 58) + iA0L + A0A(40, 38, 7) + c0985Io.A00, null);
        }
        int i2 = 0;
        if (iA0I == 0) {
            boolean[] zArr = c0985Io.A0F;
            if (A0a[1].length() == 3) {
                throw new RuntimeException();
            }
            A0a[0] = "ACu";
            for (int i3 = 0; i3 < iA0L; i3++) {
                int iA0I2 = c4j.A0I();
                i2 += iA0I2;
                zArr[i3] = iA0I2 > i;
            }
        } else {
            i2 = 0 + (iA0I * iA0L);
            Arrays.fill(c0985Io.A0F, 0, iA0L, iA0I > i);
        }
        Arrays.fill(c0985Io.A0F, iA0L, c0985Io.A00, false);
        if (i2 > 0) {
            c0985Io.A02(i2);
        }
    }

    static {
        A0D();
        A0b = new InterfaceC0921Gb() {
            @Override
            public final GX[] A5F() {
                return C2066kc.A0b();
            }

            @Override
            public final GX[] A5G(Uri uri, Map map) {
                return AbstractC0920Ga.A01(this, uri, map);
            }
        };
        A0d = new byte[]{-94, 57, 79, 82, 90, -101, 79, 20, -94, 68, 108, 66, 124, 100, SocketData.CLAZZ_TYPE_ERROR_CODE, -12};
        A0c = new C2D().A11(A0A(839, 18, 77)).A14();
    }

    public C2066kc() {
        this(0);
    }

    public C2066kc(int i) {
        this(i, null);
    }

    public C2066kc(int i, C4R c4r) {
        this(i, c4r, null, Collections.emptyList());
    }

    public C2066kc(int i, C4R c4r, C0983Im c0983Im, List<C2312or> list) {
        this(i, c4r, c0983Im, list, null);
    }

    @MetaExoPlayerCustomization("Additional fields for custom behaviors")
    public C2066kc(int i, C4R c4r, C0983Im c0983Im, List<C2312or> list, H1 h1) {
        this.A0A = C.TIME_UNSET;
        this.A0K = i;
        this.A0R = c4r;
        this.A0U = c0983Im;
        this.A0X = Collections.unmodifiableList(list);
        this.A0S = h1;
        this.A0T = new HO();
        this.A0M = new C4J(16);
        this.A0P = new C4J(AbstractC0936Gq.A03);
        this.A0O = new C4J(5);
        this.A0N = new C4J();
        this.A0Y = new byte[16];
        this.A0Q = new C4J(this.A0Y);
        this.A0V = new ArrayDeque<>();
        this.A0W = new ArrayDeque<>();
        this.A0L = new SparseArray<>();
        this.A08 = C.TIME_UNSET;
        this.A0B = C.TIME_UNSET;
        this.A0C = C.TIME_UNSET;
        this.A0E = GY.A00;
        this.A0J = new H1[0];
        this.A0I = new H1[0];
    }

    public static int A00(int i) throws C05802i {
        if (i >= 0) {
            return i;
        }
        throw C05802i.A01(A0A(700, 27, 67) + i, null);
    }

    public static long A02(C4J c4j) {
        c4j.A0f(8);
        int fullAtom = c4j.A0C();
        return II.A01(fullAtom) == 0 ? c4j.A0Q() : c4j.A0R();
    }

    public static long A03(C4J c4j) {
        c4j.A0f(8);
        int fullAtom = c4j.A0C();
        int version = II.A01(fullAtom);
        return version == 1 ? c4j.A0R() : c4j.A0Q();
    }

    public static Pair<Integer, IP> A04(C4J c4j) {
        c4j.A0f(12);
        int defaultSampleDescriptionIndex = c4j.A0C();
        int trackId = c4j.A0C();
        int defaultSampleFlags = c4j.A0C();
        int defaultSampleSize = c4j.A0C();
        int defaultSampleDuration = c4j.A0C();
        return Pair.create(Integer.valueOf(defaultSampleDescriptionIndex), new IP(trackId - 1, defaultSampleFlags, defaultSampleSize, defaultSampleDuration));
    }

    public static DrmInitData A06(List<C2072ki> list) {
        ArrayList arrayList = null;
        int size = list.size();
        for (int i = 0; i < size; i++) {
            C2072ki c2072ki = list.get(i);
            int leafChildrenSize = ((II) c2072ki).A00;
            if (leafChildrenSize == 1886614376) {
                if (arrayList == null) {
                    arrayList = new ArrayList();
                }
                byte[] bArrA0l = c2072ki.A00.A0l();
                UUID uuidA02 = AbstractC0976If.A02(bArrA0l);
                if (uuidA02 == null) {
                    AnonymousClass44.A07(A0A(IDrmSession.ERROR_SESSION_DRM_NULL, 22, 75), A0A(550, 42, 28));
                } else {
                    arrayList.add(new DrmInitData.SchemeData(uuidA02, A0A(897, 9, 66), bArrA0l));
                }
            }
        }
        if (arrayList == null) {
            return null;
        }
        return new DrmInitData(arrayList);
    }

    private IP A07(SparseArray<IP> sparseArray, int i) {
        if (sparseArray.size() == 1) {
            return sparseArray.valueAt(0);
        }
        return (IP) C3M.A01(sparseArray.get(i));
    }

    public static IY A08(SparseArray<IY> sparseArray) {
        IY iy = null;
        long j = Long.MAX_VALUE;
        int size = sparseArray.size();
        for (int i = 0; i < size; i++) {
            IY iyValueAt = sparseArray.valueAt(i);
            if (iyValueAt.A06 || iyValueAt.A01 != iyValueAt.A05.A01) {
                boolean z = iyValueAt.A06;
                if (A0a[7].charAt(28) == 'N') {
                    throw new RuntimeException();
                }
                A0a[2] = "bWFL5LbHycaN2QeAwKakifUxbxentXmn";
                if (!z || iyValueAt.A02 != iyValueAt.A09.A01) {
                    long nextSampleOffset = iyValueAt.A05();
                    if (nextSampleOffset < j) {
                        iy = iyValueAt;
                        j = nextSampleOffset;
                    }
                }
            }
        }
        return iy;
    }

    private void A0B() {
        this.A02 = 0;
        this.A00 = 0;
    }

    private void A0C() {
        int nextExtraTrackId = 100;
        this.A0J = new H1[2];
        int i = 0;
        if (this.A0S != null) {
            int emsgTrackOutputCount = 0 + 1;
            this.A0J[0] = this.A0S;
            i = emsgTrackOutputCount;
        }
        int nextExtraTrackId2 = this.A0K;
        if ((nextExtraTrackId2 & 4) != 0) {
            int emsgTrackOutputCount2 = i + 1;
            this.A0J[i] = this.A0E.AJh(100, 5);
            i = emsgTrackOutputCount2;
            nextExtraTrackId = 100 + 1;
        }
        this.A0J = (H1[]) AbstractC06244a.A1I(this.A0J, i);
        for (H1 h1 : this.A0J) {
            h1.A6W(A0c);
        }
        int nextExtraTrackId3 = this.A0X.size();
        this.A0I = new H1[nextExtraTrackId3];
        int i2 = 0;
        while (i2 < nextExtraTrackId) {
            int i3 = nextExtraTrackId + 1;
            H1 h1AJh = this.A0E.AJh(nextExtraTrackId, 3);
            h1AJh.A6W(this.A0X.get(i2));
            this.A0I[i2] = h1AJh;
            i2++;
            nextExtraTrackId = i3;
        }
    }

    private void A0E(long j) {
        while (!this.A0W.isEmpty()) {
            IX ixRemoveFirst = this.A0W.removeFirst();
            this.A03 -= ixRemoveFirst.A00;
            if (A0a[7].charAt(28) == 'N') {
                throw new RuntimeException();
            }
            String[] strArr = A0a;
            strArr[4] = "VR2FeNKrGWLUx6XQMfWHox9ZNtks2zuu";
            strArr[6] = "s2y9CEVkGFcMGmJDsuNOnRFQ2pMNKAx2";
            long jA05 = ixRemoveFirst.A01;
            if (ixRemoveFirst.A02) {
                jA05 += j;
            }
            if (this.A0R != null) {
                jA05 = this.A0R.A05(jA05);
            }
            for (H1 h1 : this.A0J) {
                h1.AIA(jA05, 1, ixRemoveFirst.A00, this.A03, null);
            }
        }
    }

    private void A0F(long j) throws C05802i {
        while (!this.A0V.isEmpty() && this.A0V.peek().A00 == j) {
            A0N(this.A0V.pop());
        }
        A0B();
    }

    public static void A0G(C4J c4j, int i, C0985Io c0985Io) throws C05802i {
        c4j.A0f(i + 8);
        int fullAtom = c4j.A0C();
        int flags = II.A00(fullAtom);
        int fullAtom2 = flags & 1;
        if (fullAtom2 == 0) {
            int fullAtom3 = flags & 2;
            boolean z = fullAtom3 != 0;
            int sampleCount = c4j.A0L();
            if (sampleCount == 0) {
                boolean[] zArr = c0985Io.A0F;
                int fullAtom4 = c0985Io.A00;
                Arrays.fill(zArr, 0, fullAtom4, false);
                return;
            }
            int fullAtom5 = c0985Io.A00;
            if (sampleCount == fullAtom5) {
                Arrays.fill(c0985Io.A0F, 0, sampleCount, z);
                int fullAtom6 = c4j.A07();
                c0985Io.A02(fullAtom6);
                c0985Io.A04(c4j);
                return;
            }
            StringBuilder sbAppend = new StringBuilder().append(A0A(532, 18, 95)).append(sampleCount).append(A0A(0, 40, 98));
            int fullAtom7 = c0985Io.A00;
            throw C05802i.A01(sbAppend.append(fullAtom7).toString(), null);
        }
        throw C05802i.A00(A0A(458, 56, 30));
    }

    public static void A0I(C4J c4j, C0985Io c0985Io) throws C05802i {
        c4j.A0f(8);
        int flags = c4j.A0C();
        int fullAtom = II.A00(flags) & 1;
        if (fullAtom == 1) {
            c4j.A0g(8);
        }
        int iA0L = c4j.A0L();
        if (iA0L == 1) {
            int entryCount = II.A01(flags);
            c0985Io.A03 += entryCount == 0 ? c4j.A0Q() : c4j.A0R();
            return;
        }
        throw C05802i.A01(A0A(727, 29, 60) + iA0L, null);
    }

    public static void A0J(C4J c4j, C0985Io c0985Io) throws C05802i {
        A0G(c4j, 0, c0985Io);
    }

    public static void A0K(C4J c4j, C0985Io c0985Io, byte[] bArr) throws C05802i {
        c4j.A0f(8);
        c4j.A0k(bArr, 0, 16);
        if (!Arrays.equals(bArr, A0d)) {
            return;
        }
        A0G(c4j, 16, c0985Io);
    }

    @MetaExoPlayerCustomization("New parameter for getUri()")
    private void A0L(InterfaceC2101lN interfaceC2101lN) throws IOException {
        int i = ((int) this.A07) - this.A00;
        C4J c4j = this.A0D;
        if (c4j != null) {
            interfaceC2101lN.readFully(c4j.A0l(), 8, i);
            A0U(new C2072ki(this.A01, c4j), interfaceC2101lN.A8f(), interfaceC2101lN.A9H());
        } else {
            interfaceC2101lN.AJJ(i);
        }
        A0F(interfaceC2101lN.A8f());
    }

    private void A0M(InterfaceC2101lN interfaceC2101lN) throws IOException {
        IY iyValueAt = null;
        long j = Long.MAX_VALUE;
        int size = this.A0L.size();
        for (int i = 0; i < size; i++) {
            IY nextTrackBundle = this.A0L.valueAt(i);
            C0985Io c0985Io = nextTrackBundle.A09;
            if (c0985Io.A0A && c0985Io.A03 < j) {
                j = c0985Io.A03;
                iyValueAt = this.A0L.valueAt(i);
            }
        }
        if (iyValueAt == null) {
            this.A02 = 3;
            return;
        }
        int iA8f = (int) (j - interfaceC2101lN.A8f());
        if (iA8f >= 0) {
            interfaceC2101lN.AJJ(iA8f);
            iyValueAt.A09.A05(interfaceC2101lN);
            return;
        }
        throw C05802i.A01(A0A(RendererCapabilities.DECODER_SUPPORT_MASK, 39, 59), null);
    }

    private void A0N(C2073kj c2073kj) throws C05802i {
        if (((II) c2073kj).A00 == 1836019574) {
            A0P(c2073kj);
            return;
        }
        if (((II) c2073kj).A00 == 1836019558) {
            A0O(c2073kj);
            return;
        }
        if (this.A0V.isEmpty()) {
            return;
        }
        C2073kj c2073kjPeek = this.A0V.peek();
        if (A0a[1].length() == 3) {
            throw new RuntimeException();
        }
        A0a[5] = "pjYwVuiFyV8fJrHeJXv5AlOqs";
        c2073kjPeek.A08(c2073kj);
    }

    private void A0O(C2073kj c2073kj) throws C05802i {
        A0Q(c2073kj, this.A0L, this.A0U != null, this.A0K, this.A0Y);
        DrmInitData drmInitDataA06 = A06(c2073kj.A02);
        if (drmInitDataA06 != null) {
            int i = this.A0L.size();
            for (int trackCount = 0; trackCount < i; trackCount++) {
                this.A0L.valueAt(trackCount).A0B(drmInitDataA06);
            }
        }
        long j = this.A0B;
        if (A0a[5].length() != 30) {
            String[] strArr = A0a;
            strArr[4] = "qdUBZHhFhQeTbxiPtlDH0srS7WoJbCtx";
            strArr[6] = "eg1L367OGrFS41anHFQFHM93YBMqVnGW";
            if (j != C.TIME_UNSET) {
                int size = this.A0L.size();
                for (int i2 = 0; i2 < size; i2++) {
                    IY iyValueAt = this.A0L.valueAt(i2);
                    long j2 = this.A0B;
                    int trackCount2 = A0a[5].length();
                    if (trackCount2 != 30) {
                        A0a[3] = "ExaTttTG7QLu5ZnLvMbeVx0ab4jt6cU8";
                        iyValueAt.A0A(j2);
                    }
                }
                this.A0B = C.TIME_UNSET;
                return;
            }
            return;
        }
        throw new RuntimeException();
    }

    private void A0P(C2073kj c2073kj) throws C05802i {
        C3M.A0A(this.A0U == null, A0A(680, 20, 8));
        DrmInitData drmInitDataA06 = A06(c2073kj.A02);
        C2073kj c2073kj2 = (C2073kj) C3M.A01(c2073kj.A06(Mp4Box.TYPE_mvex));
        SparseArray<IP> sparseArray = new SparseArray<>();
        long jA02 = C.TIME_UNSET;
        int size = c2073kj2.A02.size();
        for (int i = 0; i < size; i++) {
            C2072ki c2072ki = c2073kj2.A02.get(i);
            if (((II) c2072ki).A00 == 1953654136) {
                Pair<Integer, IP> pairA04 = A04(c2072ki.A00);
                Object obj = pairA04.first;
                if (A0a[7].charAt(28) == 'N') {
                    throw new RuntimeException();
                }
                A0a[2] = "1hJqa9Igz9YM2Xn7uSuVVZMPlDpSi7YR";
                sparseArray.put(((Integer) obj).intValue(), (IP) pairA04.second);
            } else if (((II) c2072ki).A00 == 1835362404) {
                jA02 = A02(c2072ki.A00);
            }
        }
        List<C0986Ip> listA0O = IO.A0O(c2073kj, new C0928Gi(), jA02, drmInitDataA06, (this.A0K & 16) != 0, false, new InterfaceC1957ip() {
            @Override
            public final Object A43(Object obj2) {
                return this.A00.A0c((C0983Im) obj2);
            }
        });
        int size2 = listA0O.size();
        if (this.A0L.size() == 0) {
            for (int i2 = 0; i2 < size2; i2++) {
                C0986Ip c0986Ip = listA0O.get(i2);
                C0983Im c0983Im = c0986Ip.A03;
                this.A0L.put(c0983Im.A00, new IY(this.A0E.AJh(i2, c0983Im.A03), c0986Ip, A07(sparseArray, c0983Im.A00)));
                this.A08 = Math.max(this.A08, c0983Im.A04);
            }
            this.A0E.A6G();
            return;
        }
        C3M.A08(this.A0L.size() == size2);
        for (int i3 = 0; i3 < size2; i3++) {
            C0986Ip c0986Ip2 = listA0O.get(i3);
            C0983Im c0983Im2 = c0986Ip2.A03;
            this.A0L.get(c0983Im2.A00).A0C(c0986Ip2, A07(sparseArray, c0983Im2.A00));
        }
    }

    public static void A0Q(C2073kj c2073kj, SparseArray<IY> sparseArray, boolean z, int i, byte[] bArr) throws C05802i {
        int size = c2073kj.A01.size();
        for (int i2 = 0; i2 < size; i2++) {
            C2073kj child = c2073kj.A01.get(i2);
            int i3 = ((II) child).A00;
            if (i3 == 1953653094) {
                A0R(child, sparseArray, z, i, bArr);
            }
        }
    }

    public static void A0S(C2073kj c2073kj, IY iy, int i) throws C05802i {
        int i2 = 0;
        int leafChildrenSize = 0;
        List<C2072ki> list = c2073kj.A02;
        int i3 = list.size();
        int i4 = 0;
        while (totalSampleCount != 30) {
            A0a[1] = "g5KWW";
            if (i4 < i3) {
                C2072ki c2072ki = list.get(i4);
                int trunCount = ((II) c2072ki).A00;
                if (trunCount == 1953658222) {
                    C4J c4j = c2072ki.A00;
                    c4j.A0f(12);
                    int trunCount2 = c4j.A0L();
                    if (trunCount2 > 0) {
                        leafChildrenSize += trunCount2;
                        i2++;
                    }
                }
                i4++;
            } else {
                iy.A02 = 0;
                iy.A00 = 0;
                iy.A01 = 0;
                iy.A09.A03(i2, leafChildrenSize);
                int i5 = 0;
                int trunCount3 = 0;
                for (int trunIndex = 0; trunIndex < i3; trunIndex++) {
                    C2072ki c2072ki2 = list.get(trunIndex);
                    int totalSampleCount = ((II) c2072ki2).A00;
                    if (totalSampleCount == 1953658222) {
                        trunCount3 = A01(iy, i5, i, c2072ki2.A00, trunCount3);
                        i5++;
                    }
                }
                return;
            }
        }
        throw new RuntimeException();
    }

    @MetaExoPlayerCustomization("Adding Uri for eMsg")
    private void A0U(C2072ki c2072ki, long j, Uri uri) throws C05802i {
        if (!this.A0V.isEmpty()) {
            this.A0V.peek().A09(c2072ki);
            return;
        }
        if (((II) c2072ki).A00 == 1936286840) {
            Pair<Long, C2106lT> pairA05 = A05(c2072ki.A00, j);
            Long l = (Long) pairA05.first;
            if (A0a[2].charAt(14) == 'D') {
                throw new RuntimeException();
            }
            A0a[2] = "KqHjYmkkmLRftUSzBx7x8q1P7pbSwwaZ";
            this.A0C = l.longValue();
            this.A0E.AIN((InterfaceC0942Gw) pairA05.second);
            this.A0G = true;
            return;
        }
        if (((II) c2072ki).A00 != 1701671783 || uri == null) {
            return;
        }
        A0H(c2072ki.A00, uri);
    }

    public static boolean A0W(int i) {
        return i == 1836019574 || i == 1953653099 || i == 1835297121 || i == 1835626086 || i == 1937007212 || i == 1836019558 || i == 1953653094 || i == 1836475768 || i == 1701082227;
    }

    /* JADX WARN: Code duplicated, block: B:26:0x0060  */
    public static boolean A0X(int i) {
        if (i != 1751411826 && i != 1835296868 && i != 1836476516 && i != 1936286840 && i != 1937011556 && i != 1937011827 && i != 1668576371 && i != 1937011555) {
            if (A0a[1].length() == 3) {
                throw new RuntimeException();
            }
            String[] strArr = A0a;
            strArr[4] = "BwdOpTtZC6qkHbBW6vzemIV3sewTUKel";
            strArr[6] = "oE5SsWuxWmjvJDoIWd7OBauEjDNEKBY0";
            if (i != 1937011578) {
                if (A0a[3].charAt(19) != 'e') {
                    A0a[7] = "alBOnYvVhDOHTU7zpsfhYzjhJlh1j5qj";
                    if (i != 1937013298) {
                        if (i == 1937007471 && i != 1668232756 && i != 1937011571 && i != 1952867444 && i != 1952868452 && i != 1953196132 && i != 1953654136 && i != 1953658222 && i != 1886614376 && i != 1935763834 && i != 1935763823 && i != 1936027235 && i != 1970628964 && i != 1935828848 && i != 1936158820 && i != 1701606260 && i != 1835362404 && i != 1701671783) {
                            return false;
                        }
                    }
                } else {
                    A0a[0] = "AuC";
                    if (i != 1937013298) {
                        if (i == 1937007471) {
                        }
                    }
                }
            }
        }
        return true;
    }

    private boolean A0Y(InterfaceC2101lN interfaceC2101lN) throws IOException {
        int trackCount;
        int i;
        if (this.A00 == 0) {
            C4J c4j = this.A0M;
            if (A0a[2].charAt(14) != 'D') {
                A0a[5] = "Du9yMjOrUhZNFJE5GgCY";
                if (!interfaceC2101lN.AGh(c4j.A0l(), 0, 8, true)) {
                    return false;
                }
                this.A00 = 8;
                this.A0M.A0f(0);
                this.A07 = this.A0M.A0Q();
                int iA0C = this.A0M.A0C();
                if (A0a[5].length() != 30) {
                    A0a[0] = "Nk2";
                    this.A01 = iA0C;
                }
            }
            throw new RuntimeException();
        }
        if (this.A07 == 1) {
            interfaceC2101lN.readFully(this.A0M.A0l(), 8, 8);
            int headerBytesRemaining = this.A00;
            this.A00 = headerBytesRemaining + 8;
            this.A07 = this.A0M.A0R();
        } else if (this.A07 == 0) {
            long jA8G = interfaceC2101lN.A8G();
            if (jA8G == -1 && !this.A0V.isEmpty()) {
                jA8G = this.A0V.peek().A00;
            }
            if (jA8G != -1) {
                long jA8f = jA8G - interfaceC2101lN.A8f();
                int trackCount2 = this.A00;
                this.A07 = jA8f + ((long) trackCount2);
            }
        }
        if (this.A07 >= this.A00) {
            long jA8f2 = interfaceC2101lN.A8f() - ((long) this.A00);
            if ((this.A01 == 1836019558 || this.A01 == 1835295092) && !this.A0G) {
                this.A0E.AIN(new C2096lI(this.A08, jA8f2));
                this.A0G = true;
            }
            if (this.A01 == 1836019558) {
                SparseArray<IY> sparseArray = this.A0L;
                if (A0a[0].length() != 3) {
                    A0a[7] = "3NdiubR5fLBwA18U1YAUjfhOdAcmjZCx";
                    trackCount = sparseArray.size();
                    i = 0;
                } else {
                    A0a[0] = "3Yh";
                    trackCount = sparseArray.size();
                    i = 0;
                }
                while (i < trackCount) {
                    C0985Io c0985Io = this.A0L.valueAt(i).A09;
                    c0985Io.A02 = jA8f2;
                    c0985Io.A03 = jA8f2;
                    c0985Io.A04 = jA8f2;
                    i++;
                }
            }
            int trackCount3 = this.A01;
            if (trackCount3 == 1835295092) {
                this.A0F = null;
                this.A09 = this.A07 + jA8f2;
                this.A02 = 2;
                return true;
            }
            if (A0W(this.A01)) {
                long jA8f3 = (interfaceC2101lN.A8f() + this.A07) - 8;
                this.A0V.push(new C2073kj(this.A01, jA8f3));
                if (this.A07 == this.A00) {
                    A0F(jA8f3);
                } else {
                    A0B();
                }
            } else if (A0X(this.A01)) {
                if (this.A00 != 8) {
                    throw C05802i.A00(A0A(284, 51, 6));
                }
                if (this.A07 <= 2147483647L) {
                    C4J c4j2 = new C4J((int) this.A07);
                    C4J atomData = this.A0M;
                    System.arraycopy(atomData.A0l(), 0, c4j2.A0l(), 0, 8);
                    this.A0D = c4j2;
                    this.A02 = 1;
                } else {
                    throw C05802i.A00(A0A(335, 49, 77));
                }
            } else if (this.A07 <= 2147483647L) {
                this.A0D = null;
                this.A02 = 1;
            } else {
                throw C05802i.A00(A0A(592, 53, 87));
            }
            return true;
        }
        throw C05802i.A00(A0A(78, 48, 36));
    }

    /* JADX WARN: Code duplicated, block: B:100:0x02ff  */
    /* JADX WARN: Code duplicated, block: B:104:0x01ba A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:105:0x024d A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:106:0x0247 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:107:0x0160 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:25:0x0091  */
    /* JADX WARN: Code duplicated, block: B:27:0x009d  */
    /* JADX WARN: Code duplicated, block: B:29:0x00ab  */
    /* JADX WARN: Code duplicated, block: B:32:0x00b0  */
    /* JADX WARN: Code duplicated, block: B:34:0x00b8  */
    /* JADX WARN: Code duplicated, block: B:37:0x00da  */
    /* JADX WARN: Code duplicated, block: B:41:0x0111  */
    /* JADX WARN: Code duplicated, block: B:43:0x0122  */
    /* JADX WARN: Code duplicated, block: B:45:0x0133  */
    /* JADX WARN: Code duplicated, block: B:48:0x0142  */
    /* JADX WARN: Code duplicated, block: B:51:0x015c  */
    /* JADX WARN: Code duplicated, block: B:55:0x0170  */
    /* JADX WARN: Code duplicated, block: B:57:0x0190  */
    /* JADX WARN: Code duplicated, block: B:63:0x01b8  */
    /* JADX WARN: Code duplicated, block: B:66:0x01be  */
    /* JADX WARN: Code duplicated, block: B:68:0x0221  */
    /* JADX WARN: Code duplicated, block: B:69:0x0228  */
    /* JADX WARN: Code duplicated, block: B:70:0x022e  */
    /* JADX WARN: Code duplicated, block: B:77:0x025c A[LOOP:1: B:77:0x025c->B:79:0x0262, LOOP_START] */
    /* JADX WARN: Code duplicated, block: B:79:0x0262 A[LOOP:1: B:77:0x025c->B:79:0x0262, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:82:0x027c  */
    /* JADX WARN: Code duplicated, block: B:89:0x02ad  */
    /* JADX WARN: Code duplicated, block: B:91:0x02ba  */
    /* JADX WARN: Code duplicated, block: B:94:0x02d2  */
    /* JADX WARN: Code duplicated, block: B:96:0x02e2  */
    /* JADX WARN: Code duplicated, block: B:99:0x02f0  */
    /* JADX WARN: Code restructure failed: missing block: B:13:0x0049, code lost:
    
        if (r3 >= 0) goto L14;
     */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x004b, code lost:
    
        r19.AJJ(r3);
        A0B();
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x0051, code lost:
    
        return false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x005e, code lost:
    
        if (r3 >= 0) goto L14;
     */
    /* JADX WARN: Code restructure failed: missing block: B:72:0x0246, code lost:
    
        throw com.facebook.ads.redexgen.core.C05802i.A01(A0A(androidx.constraintlayout.core.motion.utils.TypedValues.CycleType.TYPE_WAVE_PERIOD, 35, 125), null);
     */
    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    @MetaExoPlayerCustomization("Mark text samples as sync frames")
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private boolean A0Z(InterfaceC2101lN interfaceC2101lN) throws IOException {
        int i;
        int i2;
        C0983Im c0983Im;
        H1 h1;
        long jA06;
        int iA02;
        C0945Gz c0945Gz;
        C0984In c0984InA07;
        String str;
        String strA0A;
        byte[] bArrA0l;
        int i3;
        int i4;
        int iA0C;
        boolean z;
        int iAI5;
        C4R c4r;
        IY iyA08 = this.A0F;
        Throwable th = null;
        if (iyA08 == null) {
            SparseArray<IY> sparseArray = this.A0L;
            if (A0a[0].length() == 3) {
                A0a[0] = "dJt";
                iyA08 = A08(sparseArray);
                if (iyA08 == null) {
                    int iA8f = (int) (this.A09 - interfaceC2101lN.A8f());
                    if (A0a[3].charAt(19) != 'e') {
                        A0a[5] = "OgjcUdmzkFJtvCkNjJUwSL6BC";
                    } else {
                        String[] strArr = A0a;
                        strArr[4] = "drajDSJT48ogOqJP7e4ZIkjylQBmqc38";
                        strArr[6] = "jG2fRwUYgKH0Z3F7iVLG52YSPeKVDlpp";
                    }
                } else {
                    int iA05 = (int) (iyA08.A05() - interfaceC2101lN.A8f());
                    if (iA05 < 0) {
                        AnonymousClass44.A07(A0A(IDrmSession.ERROR_SESSION_DRM_NULL, 22, 75), A0A(TranSceneConfig.SCENE_TYPE_VOICE_ASSISTANT_BLINK, 40, 13));
                        iA05 = 0;
                    }
                    interfaceC2101lN.AJJ(iA05);
                    this.A0F = iyA08;
                    i = 4;
                    i2 = 1;
                    if (this.A02 == 3) {
                        this.A06 = iyA08.A03();
                        if (iyA08.A01 < iyA08.A03) {
                            interfaceC2101lN.AJJ(this.A06);
                            iyA08.A09();
                            if (!iyA08.A0D()) {
                                this.A0F = null;
                            }
                            this.A02 = 3;
                            return true;
                        }
                        if (iyA08.A05.A03.A02 == 1) {
                            this.A06 -= 8;
                            interfaceC2101lN.AJJ(8);
                        }
                        if (A0A(878, 9, 31).equals(iyA08.A05.A03.A07.A0W)) {
                            this.A04 = iyA08.A04(this.A06, 7);
                            GI.A07(this.A06, this.A0Q);
                            iyA08.A08.AI7(this.A0Q, 7);
                            this.A04 += 7;
                        } else {
                            this.A04 = iyA08.A04(this.A06, 0);
                        }
                        this.A06 += this.A04;
                        this.A02 = 4;
                        this.A05 = 0;
                    }
                    c0983Im = iyA08.A05.A03;
                    if (A0a[1].length() != 3) {
                        A0a[7] = "UjEa6ysv1gVuBQ9NSSQbVZdjDRxN5dgX";
                        h1 = iyA08.A08;
                        jA06 = iyA08.A06();
                        if (this.A0R != null) {
                            c4r = this.A0R;
                            if (A0a[7].charAt(28) != 'N') {
                                A0a[2] = "ZxJoJWsimIFBA6WXS2a50b6K01MwI4cU";
                                jA06 = c4r.A05(jA06);
                            } else {
                                jA06 = c4r.A05(jA06);
                            }
                        }
                        if (c0983Im.A01 != 0) {
                            while (this.A04 < this.A06) {
                                this.A04 += h1.AI5(interfaceC2101lN, this.A06 - this.A04, false);
                            }
                        } else {
                            bArrA0l = this.A0O.A0l();
                            bArrA0l[0] = 0;
                            bArrA0l[1] = 0;
                            bArrA0l[2] = 0;
                            i3 = c0983Im.A01 + 1;
                            i4 = 4 - c0983Im.A01;
                            while (this.A04 < this.A06) {
                                if (this.A05 == 0) {
                                    interfaceC2101lN.readFully(bArrA0l, i4, i3);
                                    this.A0O.A0f(0);
                                    iA0C = this.A0O.A0C();
                                    if (iA0C >= i2) {
                                        this.A05 = iA0C - 1;
                                        this.A0P.A0f(0);
                                        h1.AI7(this.A0P, i);
                                        h1.AI7(this.A0O, i2);
                                        if (A0a[5].length() != 30) {
                                            throw new RuntimeException();
                                        }
                                        A0a[7] = "3HbOupLLxbWrXLbfJiyKVwL3oOoB4yeP";
                                        if (this.A0I.length > 0 || !AbstractC0936Gq.A0I(c0983Im.A07.A0W, bArrA0l[i])) {
                                            z = false;
                                        } else {
                                            z = true;
                                        }
                                        this.A0H = z;
                                        this.A04 += 5;
                                        this.A06 += i4;
                                        i2 = 1;
                                    } else {
                                        throw C05802i.A01(A0A(266, 18, 117), th);
                                    }
                                } else {
                                    if (this.A0H) {
                                        this.A0N.A0d(this.A05);
                                        interfaceC2101lN.readFully(this.A0N.A0l(), 0, this.A05);
                                        h1.AI7(this.A0N, this.A05);
                                        iAI5 = this.A05;
                                        int iA03 = AbstractC0936Gq.A02(this.A0N.A0l(), this.A0N.A0A());
                                        this.A0N.A0f(A0A(887, 10, 116).equals(c0983Im.A07.A0W) ? 1 : 0);
                                        this.A0N.A0e(iA03);
                                        GR.A03(jA06, this.A0N, this.A0I);
                                    } else {
                                        iAI5 = h1.AI5(interfaceC2101lN, this.A05, false);
                                    }
                                    this.A04 += iAI5;
                                    this.A05 -= iAI5;
                                    th = null;
                                    i = 4;
                                    i2 = 1;
                                }
                            }
                        }
                        iA02 = iyA08.A02();
                        c0945Gz = null;
                        c0984InA07 = iyA08.A07();
                        if (c0984InA07 != null) {
                            c0945Gz = c0984InA07.A01;
                        }
                        if (!MetaExoPlayerUpgradeConfig.A03(EnumC1911i2.A1M) && this.A0F != null) {
                            str = this.A0F.A05.A03.A07.A0W;
                            strA0A = A0A(857, 21, 115);
                            if (A0a[7].charAt(28) != 'N') {
                                A0a[2] = "aQkaLsEF9G127UYNPtKAhcOp5GPMu7GC";
                                if (strA0A.equals(str)) {
                                    iA02 |= 1;
                                }
                            } else if (strA0A.equals(str)) {
                                iA02 |= 1;
                            }
                        }
                        long j = jA06;
                        h1.AIA(jA06, iA02, this.A06, 0, c0945Gz);
                        this.A0A = j;
                        A0E(j);
                        if (!iyA08.A0D()) {
                            if (A0a[3].charAt(19) != 'e') {
                                A0a[2] = "Oznva4TpQIm3xwCXLn5zZ8MtjPilTYJm";
                                this.A0F = null;
                            } else {
                                String[] strArr2 = A0a;
                                strArr2[4] = "tQydpv41IRe8SJWpvpJnsmPT1e9HbOAv";
                                strArr2[6] = "ocIdfF7b9GnVk3ZHQkLuHXJpp6hE4I0I";
                                this.A0F = null;
                            }
                        }
                        this.A02 = 3;
                        return true;
                    }
                }
            }
        } else {
            i = 4;
            i2 = 1;
            if (this.A02 == 3) {
                this.A06 = iyA08.A03();
                if (iyA08.A01 < iyA08.A03) {
                    interfaceC2101lN.AJJ(this.A06);
                    iyA08.A09();
                    if (!iyA08.A0D()) {
                        this.A0F = null;
                    }
                    this.A02 = 3;
                    return true;
                }
                if (iyA08.A05.A03.A02 == 1) {
                    this.A06 -= 8;
                    interfaceC2101lN.AJJ(8);
                }
                if (A0A(878, 9, 31).equals(iyA08.A05.A03.A07.A0W)) {
                    this.A04 = iyA08.A04(this.A06, 7);
                    GI.A07(this.A06, this.A0Q);
                    iyA08.A08.AI7(this.A0Q, 7);
                    this.A04 += 7;
                } else {
                    this.A04 = iyA08.A04(this.A06, 0);
                }
                this.A06 += this.A04;
                this.A02 = 4;
                this.A05 = 0;
            }
            c0983Im = iyA08.A05.A03;
            if (A0a[1].length() != 3) {
                A0a[7] = "UjEa6ysv1gVuBQ9NSSQbVZdjDRxN5dgX";
                h1 = iyA08.A08;
                jA06 = iyA08.A06();
                if (this.A0R != null) {
                    c4r = this.A0R;
                    if (A0a[7].charAt(28) != 'N') {
                        A0a[2] = "ZxJoJWsimIFBA6WXS2a50b6K01MwI4cU";
                        jA06 = c4r.A05(jA06);
                    } else {
                        jA06 = c4r.A05(jA06);
                    }
                }
                if (c0983Im.A01 != 0) {
                    while (this.A04 < this.A06) {
                        this.A04 += h1.AI5(interfaceC2101lN, this.A06 - this.A04, false);
                    }
                } else {
                    bArrA0l = this.A0O.A0l();
                    bArrA0l[0] = 0;
                    bArrA0l[1] = 0;
                    bArrA0l[2] = 0;
                    i3 = c0983Im.A01 + 1;
                    i4 = 4 - c0983Im.A01;
                    while (this.A04 < this.A06) {
                        if (this.A05 == 0) {
                            interfaceC2101lN.readFully(bArrA0l, i4, i3);
                            this.A0O.A0f(0);
                            iA0C = this.A0O.A0C();
                            if (iA0C >= i2) {
                                this.A05 = iA0C - 1;
                                this.A0P.A0f(0);
                                h1.AI7(this.A0P, i);
                                h1.AI7(this.A0O, i2);
                                if (A0a[5].length() != 30) {
                                    throw new RuntimeException();
                                }
                                A0a[7] = "3HbOupLLxbWrXLbfJiyKVwL3oOoB4yeP";
                                if (this.A0I.length > 0) {
                                    z = false;
                                } else {
                                    z = false;
                                }
                                this.A0H = z;
                                this.A04 += 5;
                                this.A06 += i4;
                                i2 = 1;
                            } else {
                                throw C05802i.A01(A0A(266, 18, 117), th);
                            }
                        } else {
                            if (this.A0H) {
                                this.A0N.A0d(this.A05);
                                interfaceC2101lN.readFully(this.A0N.A0l(), 0, this.A05);
                                h1.AI7(this.A0N, this.A05);
                                iAI5 = this.A05;
                                int iA04 = AbstractC0936Gq.A02(this.A0N.A0l(), this.A0N.A0A());
                                this.A0N.A0f(A0A(887, 10, 116).equals(c0983Im.A07.A0W) ? 1 : 0);
                                this.A0N.A0e(iA04);
                                GR.A03(jA06, this.A0N, this.A0I);
                            } else {
                                iAI5 = h1.AI5(interfaceC2101lN, this.A05, false);
                            }
                            this.A04 += iAI5;
                            this.A05 -= iAI5;
                            th = null;
                            i = 4;
                            i2 = 1;
                        }
                    }
                }
                iA02 = iyA08.A02();
                c0945Gz = null;
                c0984InA07 = iyA08.A07();
                if (c0984InA07 != null) {
                    c0945Gz = c0984InA07.A01;
                }
                if (!MetaExoPlayerUpgradeConfig.A03(EnumC1911i2.A1M)) {
                    str = this.A0F.A05.A03.A07.A0W;
                    strA0A = A0A(857, 21, 115);
                    if (A0a[7].charAt(28) != 'N') {
                        A0a[2] = "aQkaLsEF9G127UYNPtKAhcOp5GPMu7GC";
                        if (strA0A.equals(str)) {
                            iA02 |= 1;
                        }
                    } else if (strA0A.equals(str)) {
                        iA02 |= 1;
                    }
                }
                long j2 = jA06;
                h1.AIA(jA06, iA02, this.A06, 0, c0945Gz);
                this.A0A = j2;
                A0E(j2);
                if (!iyA08.A0D()) {
                    if (A0a[3].charAt(19) != 'e') {
                        A0a[2] = "Oznva4TpQIm3xwCXLn5zZ8MtjPilTYJm";
                        this.A0F = null;
                    } else {
                        String[] strArr3 = A0a;
                        strArr3[4] = "tQydpv41IRe8SJWpvpJnsmPT1e9HbOAv";
                        strArr3[6] = "ocIdfF7b9GnVk3ZHQkLuHXJpp6hE4I0I";
                        this.A0F = null;
                    }
                }
                this.A02 = 3;
                return true;
            }
        }
        throw new RuntimeException();
    }

    public static boolean A0a(C0983Im c0983Im) {
        if (c0983Im.A08 == null || c0983Im.A08.length != 1 || c0983Im.A09 == null) {
            return false;
        }
        if (c0983Im.A08[0] == 0) {
            return true;
        }
        long editListEndMediaTimeUs = AbstractC06244a.A0U(c0983Im.A08[0] + c0983Im.A09[0], 1000000L, c0983Im.A05);
        if (A0a[2].charAt(14) == 'D') {
            throw new RuntimeException();
        }
        A0a[1] = "wHdUW";
        return editListEndMediaTimeUs >= c0983Im.A04;
    }

    public static GX[] A0b() {
        return new GX[]{new C2065kb()};
    }

    public final C0983Im A0c(C0983Im c0983Im) {
        return c0983Im;
    }

    @Override
    public final void AA4(GY gy) {
        this.A0E = gy;
        A0B();
        A0C();
        if (this.A0U != null) {
            this.A0L.put(0, new IY(gy.AJh(0, this.A0U.A03), new C0986Ip(this.A0U, new long[0], new int[0], 0, new long[0], new int[0], 0L), new IP(0, 0, 0, 0)));
            this.A0E.A6G();
        }
    }

    @Override
    public final int AGb(InterfaceC2101lN interfaceC2101lN, C0939Gt c0939Gt) throws IOException {
        while (true) {
            switch (this.A02) {
                case 0:
                    if (!A0Y(interfaceC2101lN)) {
                        return -1;
                    }
                    break;
                    break;
                case 1:
                    A0L(interfaceC2101lN);
                    break;
                case 2:
                    A0M(interfaceC2101lN);
                    break;
                default:
                    if (A0Z(interfaceC2101lN)) {
                        return 0;
                    }
                    break;
            }
        }
    }

    @Override
    public final void AGr() {
    }

    @Override
    public final void AIM(long j, long j2) {
        int size = this.A0L.size();
        for (int i = 0; i < size; i++) {
            this.A0L.valueAt(i).A08();
        }
        this.A0W.clear();
        this.A03 = 0;
        this.A0B = j2;
        this.A0V.clear();
        A0B();
    }

    @Override
    public final boolean AJL(InterfaceC2101lN interfaceC2101lN) throws IOException {
        return AbstractC0981Ik.A01(interfaceC2101lN);
    }
}
