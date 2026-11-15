package com.facebook.ads.redexgen.core;

import android.net.Uri;
import android.util.Pair;
import android.util.SparseArray;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.media3.common.C;
import androidx.media3.container.Mp4Box;
import com.facebook.ads.androidx.media3.common.DrmInitData;
import com.facebook.ads.androidx.media3.extractor.metadata.emsg.EventMessage;
import com.hunantv.media.drm.IDrmSession;
import com.transsion.hubsdk.api.lighting.TranSceneConfig;
import com.transsion.letswitch.service.api.internal.manager.MediaFile;
import com.transsion.socket.pkgdata.SocketData;
import java.io.IOException;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import java.util.UUID;
import org.mozilla.classfile.ByteCode;

public final class C2065kb implements GX {
    public static byte[] A0e;
    public static String[] A0f = {"ywSCwlzG1SMdvvW", "WbYO2rYjmhbf4R3oYDPvQZ3H98amgjSr", "Za", "aa8pMmtLKrvpWkukTfymetmlHniL9M", "752FE5aLUbaesINptKDix8v", "1m6bsNbzXuacY99BBbBsLUDHw0asFdhp", "tFAwrqTGVJ2tUOf2i", "X0elgRXJnrwhMbXNAucG6j3nQ1B9k96A"};
    public static final InterfaceC0921Gb A0g;
    public static final C2312or A0h;
    public static final byte[] A0i;
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
    public long A0A;
    public long A0B;
    public long A0C;
    public SparseArray<IV> A0D;
    public C4J A0E;
    public GY A0F;
    public IV A0G;
    public boolean A0H;
    public boolean A0I;
    public boolean A0J;
    public H1[] A0K;
    public H1[] A0L;
    public final int A0M;
    public final DrmInitData A0N;
    public final C4J A0O;
    public final C4J A0P;
    public final C4J A0Q;
    public final C4J A0R;
    public final C4J A0S;
    public final C4R A0T;
    public final H1 A0U;
    public final HO A0V;
    public final C0983Im A0W;
    public final ArrayDeque<C2073kj> A0X;
    public final ArrayDeque<IU> A0Y;
    public final List<C2312or> A0Z;
    public final boolean A0a;
    public final boolean A0b;
    public final boolean A0c;
    public final byte[] A0d;

    /* JADX WARN: Code duplicated, block: B:11:0x0061  */
    /* JADX WARN: Code duplicated, block: B:14:0x0067  */
    /* JADX WARN: Code duplicated, block: B:17:0x006f  */
    /* JADX WARN: Code duplicated, block: B:20:0x0075  */
    /* JADX WARN: Code duplicated, block: B:23:0x007b  */
    /* JADX WARN: Code duplicated, block: B:26:0x0081  */
    /* JADX WARN: Code duplicated, block: B:41:0x00b8  */
    /* JADX WARN: Code duplicated, block: B:43:0x00bc A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:44:0x00be  */
    /* JADX WARN: Code duplicated, block: B:46:0x00c4  */
    /* JADX WARN: Code duplicated, block: B:48:0x00da  */
    /* JADX WARN: Code duplicated, block: B:54:0x00ee  */
    /* JADX WARN: Code duplicated, block: B:61:0x0117  */
    /* JADX WARN: Code duplicated, block: B:62:0x0119 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:63:0x011b  */
    /* JADX WARN: Code duplicated, block: B:64:0x0120  */
    /* JADX WARN: Code duplicated, block: B:67:0x012f  */
    /* JADX WARN: Code duplicated, block: B:68:0x0139  */
    /* JADX WARN: Code duplicated, block: B:69:0x013c  */
    /* JADX WARN: Code duplicated, block: B:70:0x013f  */
    /* JADX WARN: Code duplicated, block: B:71:0x0143  */
    /* JADX WARN: Code duplicated, block: B:72:0x0147  */
    /* JADX WARN: Code duplicated, block: B:73:0x014b  */
    /* JADX WARN: Code duplicated, block: B:74:0x014f  */
    /* JADX WARN: Code duplicated, block: B:75:0x0153  */
    /* JADX WARN: Code duplicated, block: B:78:0x0045 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:80:0x0045 A[SYNTHETIC] */
    /* JADX WARN: Failed to parse debug info
    java.lang.ArrayIndexOutOfBoundsException
     */
    public static int A00(IV iv, int i, long j, int i2, C4J c4j, int i3) {
        boolean z;
        int iA0L;
        boolean z2;
        boolean z3;
        boolean z4;
        boolean z5;
        long j2;
        int[] iArr;
        long[] jArr;
        boolean[] zArr;
        boolean z6;
        int i4;
        long j3;
        int iA0L2;
        int iA0L3;
        int iA0C;
        boolean z7;
        String[] strArr;
        int i5 = i3;
        long j4 = j;
        c4j.A0f(8);
        int iA00 = II.A00(c4j.A0C());
        C0983Im c0983Im = iv.A05;
        C0985Io c0985Io = iv.A07;
        IP ip = c0985Io.A06;
        c0985Io.A0C[i] = c4j.A0L();
        c0985Io.A0E[i] = c0985Io.A04;
        if ((iA00 & 1) == 0) {
            if ((iA00 & 4) != 0) {
                z = true;
            } else {
                z = false;
            }
            iA0L = ip.A01;
            if (z) {
                iA0L = c4j.A0L();
            }
            if ((iA00 & 256) != 0) {
                z2 = true;
            } else {
                z2 = false;
            }
            if ((iA00 & 512) != 0) {
                z3 = true;
            } else {
                z3 = false;
            }
            if ((iA00 & 1024) != 0) {
                z4 = true;
            } else {
                z4 = false;
            }
            if ((iA00 & 2048) != 0) {
                z5 = true;
            } else {
                z5 = false;
            }
            j2 = 0;
            if (c0983Im.A08 != null) {
                j2 = c0983Im.A09[0];
            }
            iArr = c0985Io.A0B;
            jArr = c0985Io.A0D;
            zArr = c0985Io.A0G;
            if (c0983Im.A03 == 2) {
                z6 = false;
            } else {
                z6 = false;
            }
            i4 = i5 + c0985Io.A0C[i];
            j3 = c0983Im.A06;
            if (i > 0) {
                j4 = c0985Io.A05;
            }
            while (i5 < i4) {
                if (z2) {
                    iA0L2 = c4j.A0L();
                } else {
                    iA0L2 = ip.A00;
                }
                if (z3) {
                    iA0L3 = c4j.A0L();
                    strArr = A0f;
                    if (strArr[3].length() != strArr[6].length()) {
                        String[] strArr2 = A0f;
                        strArr2[1] = "prYCRILb9XoLiqEuzjLvSymHGedE7tyJ";
                        strArr2[5] = "tQPxWhVMkiMqfE1WSn5JfVNHf8FlQpL7";
                    }
                } else {
                    iA0L3 = ip.A03;
                }
                if (i5 != 0) {
                    if (z4) {
                        iA0C = c4j.A0C();
                    } else if (A0f[4].length() == 23) {
                        A0f[4] = "VUSN2W3IkwtruuiuKY2zNmE";
                        iA0C = ip.A01;
                    }
                } else if (z4) {
                    iA0C = c4j.A0C();
                } else if (A0f[4].length() == 23) {
                    A0f[4] = "VUSN2W3IkwtruuiuKY2zNmE";
                    iA0C = ip.A01;
                }
                jArr[i5] = AbstractC06244a.A0U((((long) (z5 ? c4j.A0C() : 0)) + j4) - j2, 1000000L, j3);
                if (((iA0C >> 16) & 1) == 0) {
                    z7 = false;
                } else {
                    z7 = false;
                }
                zArr[i5] = z7;
                iArr[i5] = iA0L3;
                j4 += (long) iA0L2;
                i5++;
            }
            c0985Io.A05 = j4;
            return i4;
        }
        long[] jArr2 = c0985Io.A0E;
        String[] strArr3 = A0f;
        if (strArr3[1].charAt(23) == strArr3[5].charAt(23)) {
            A0f[2] = "02";
            jArr2[i] = jArr2[i] + ((long) c4j.A0C());
            if ((iA00 & 4) != 0) {
                z = true;
            } else {
                z = false;
            }
            iA0L = ip.A01;
            if (z) {
                iA0L = c4j.A0L();
            }
            if ((iA00 & 256) != 0) {
                z2 = true;
            } else {
                z2 = false;
            }
            if ((iA00 & 512) != 0) {
                z3 = true;
            } else {
                z3 = false;
            }
            if ((iA00 & 1024) != 0) {
                z4 = true;
            } else {
                z4 = false;
            }
            if ((iA00 & 2048) != 0) {
                z5 = true;
            } else {
                z5 = false;
            }
            j2 = 0;
            if (c0983Im.A08 != null && c0983Im.A08.length == 1 && c0983Im.A08[0] == 0) {
                j2 = c0983Im.A09[0];
            }
            iArr = c0985Io.A0B;
            jArr = c0985Io.A0D;
            zArr = c0985Io.A0G;
            if (c0983Im.A03 == 2 || (i2 & 1) == 0) {
                z6 = false;
            } else {
                z6 = true;
            }
            i4 = i5 + c0985Io.A0C[i];
            j3 = c0983Im.A06;
            if (i > 0) {
                j4 = c0985Io.A05;
            }
            while (i5 < i4) {
                if (z2) {
                    iA0L2 = c4j.A0L();
                } else {
                    iA0L2 = ip.A00;
                }
                if (z3) {
                    iA0L3 = c4j.A0L();
                    strArr = A0f;
                    if (strArr[3].length() != strArr[6].length()) {
                        String[] strArr4 = A0f;
                        strArr4[1] = "prYCRILb9XoLiqEuzjLvSymHGedE7tyJ";
                        strArr4[5] = "tQPxWhVMkiMqfE1WSn5JfVNHf8FlQpL7";
                    }
                } else {
                    iA0L3 = ip.A03;
                }
                if (i5 != 0 && z) {
                    iA0C = iA0L;
                } else if (z4) {
                    iA0C = c4j.A0C();
                } else if (A0f[4].length() == 23) {
                    A0f[4] = "VUSN2W3IkwtruuiuKY2zNmE";
                    iA0C = ip.A01;
                }
                jArr[i5] = AbstractC06244a.A0U((((long) (z5 ? c4j.A0C() : 0)) + j4) - j2, 1000000L, j3);
                if (((iA0C >> 16) & 1) == 0 || (z6 && i5 != 0)) {
                    z7 = false;
                } else {
                    z7 = true;
                }
                zArr[i5] = z7;
                iArr[i5] = iA0L3;
                j4 += (long) iA0L2;
                i5++;
            }
            c0985Io.A05 = j4;
            return i4;
        }
        throw new RuntimeException();
    }

    /* JADX WARN: Failed to parse debug info
    java.lang.ArrayIndexOutOfBoundsException
     */
    public static Pair<Long, C2106lT> A04(C4J c4j, long j) throws C05802i {
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
                throw new C05802i(A0B(634, 28, 93));
            }
            long jA0Q2 = c4j.A0Q();
            iArr[i] = Integer.MAX_VALUE & iA0C;
            jArr[i] = jA0R2;
            jArr3[i] = jA0U2;
            jA0R += jA0Q2;
            jA0U2 = AbstractC06244a.A0U(jA0R, 1000000L, jA0Q);
            String[] strArr = A0f;
            if (strArr[3].length() == strArr[6].length()) {
                throw new RuntimeException();
            }
            A0f[7] = "mBjUzKzbBV9DJWZlH52EoviqXd7Fx3w7";
            jArr2[i] = jA0U2 - jArr3[i];
            c4j.A0g(4);
            jA0R2 += (long) iArr[i];
        }
        return Pair.create(Long.valueOf(jA0U), new C2106lT(iArr, jArr, jArr2, jArr3));
    }

    /* JADX WARN: Failed to parse debug info
    java.lang.ArrayIndexOutOfBoundsException
     */
    public static IV A09(C4J c4j, SparseArray<IV> sparseArray, boolean z) {
        c4j.A0f(8);
        int iA00 = II.A00(c4j.A0C());
        IV ivA08 = A08(sparseArray, c4j.A0C(), z);
        if (ivA08 == null) {
            return null;
        }
        if ((iA00 & 1) != 0) {
            long jA0R = c4j.A0R();
            ivA08.A07.A04 = jA0R;
            ivA08.A07.A03 = jA0R;
        }
        IP ip = ivA08.A04;
        ivA08.A07.A06 = new IP((iA00 & 2) != 0 ? c4j.A0L() - 1 : ip.A02, (iA00 & 8) != 0 ? c4j.A0L() : ip.A00, (iA00 & 16) != 0 ? c4j.A0L() : ip.A03, (iA00 & 32) != 0 ? c4j.A0L() : ip.A01);
        return ivA08;
    }

    public static String A0B(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A0e, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 99);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A0E() {
        String[] strArr = A0f;
        if (strArr[1].charAt(23) != strArr[5].charAt(23)) {
            throw new RuntimeException();
        }
        String[] strArr2 = A0f;
        strArr2[1] = "BGZmKOZPo9hBykc2GdFNUQpHC0I3sPv1";
        strArr2[5] = "CvUkm70dQ0grN9w1V6xWMg6HVylPciNL";
        A0e = new byte[]{84, 88, 95, 106, 113, 115, 62, 109, 119, 100, 123, 62, 114, 123, 109, 109, 62, 106, 118, 127, 112, 62, 118, 123, 127, 122, 123, 108, 62, 114, 123, 112, 121, 106, 118, 62, 54, 107, 112, 109, 107, 110, 110, 113, 108, 106, 123, 122, 55, 48, 99, 72, 82, 84, 95, 6, 69, 73, 83, 72, 82, 6, 79, 72, 6, 85, 68, 65, 86, 6, 7, 27, 6, 23, 6, 14, 83, 72, 85, 83, 86, 86, 73, 84, 82, 67, 66, 15, 8, 73, 98, 120, 126, 117, 44, 111, 99, 121, 98, 120, 44, 101, 98, 44, 127, 107, 124, 104, 44, 45, 49, 44, 61, 44, 36, 121, 98, 127, 121, 124, 124, 99, 126, 120, 105, 104, 37, 34, 104, 92, 79, 73, 67, 75, 64, 90, 75, 74, 99, 94, 26, 107, 86, 90, 92, 79, 77, 90, 65, 92, 57, 23, 30, 31, 2, 25, 30, 23, 80, 30, 21, 23, 17, 4, 25, 6, 21, 80, 31, 22, 22, 3, 21, 4, 80, 4, 31, 80, 3, 17, 29, 0, 28, 21, 80, 20, 17, 4, 17, 94, 116, 83, 75, 92, 81, 84, 89, 29, 115, 124, 113, 29, 81, 88, 83, 90, 73, 85, 113, 88, 92, 91, 29, 92, 73, 82, 80, 29, 89, 88, 91, 84, 83, 88, 78, 29, 88, 69, 73, 88, 83, 89, 88, 89, 29, 92, 73, 82, 80, 29, 78, 84, 71, 88, 29, 21, 72, 83, 78, 72, 77, 77, 82, 79, 73, 88, 89, 20, 19, 62, 23, 19, 20, 82, 19, 6, 29, 31, 82, 5, 27, 6, 26, 82, 30, 23, 28, 21, 6, 26, 82, 76, 82, 64, 67, 70, 69, 70, 74, 65, 68, 70, 69, 82, 90, 7, 28, 1, 7, 2, 2, 29, 0, 6, 23, 22, 91, 92, 2, 43, 32, 41, 58, 38, 110, 35, 39, 61, 35, 47, 58, 45, 38, 116, 110, 82, 123, 123, 110, 120, 105, 61, 105, 114, 61, 120, 115, 126, 111, 100, 109, 105, 116, 114, 115, 61, 121, 124, 105, 124, 61, 106, 124, 110, 61, 115, 120, 122, 124, 105, 116, 107, 120, 51, 123, 82, 82, 71, 81, 64, 20, 64, 91, 20, 81, 90, 80, 20, 91, 82, 20, 89, 80, 85, 64, 20, 67, 85, 71, 20, 90, 81, 83, 85, 64, 93, 66, 81, 26, 61, 4, 23, 0, 0, 27, 22, 27, 28, 21, 82, 38, 0, 19, 17, 25, 55, 28, 17, 0, ByteCode.T_LONG, 2, 6, 27, 29, 28, 48, 29, 10, 82, 2, 19, 0, 19, 31, 23, 6, 23, 0, 1, 82, 27, 1, 82, 7, 28, 1, 7, 2, 2, 29, 0, 6, 23, 22, 92, 84, 108, 110, 119, 119, 98, 99, 39, 119, 116, 116, 111, 39, 102, 115, 104, 106, 39, 47, 97, 102, 110, 107, 98, 99, 39, 115, 104, 39, 98, 127, 115, 117, 102, 100, 115, 39, 114, 114, 110, 99, 46, 60, 4, 6, 31, 31, 6, 1, 8, 79, 14, 27, 0, 2, 79, 24, 6, 27, 7, 79, 3, 10, 1, 8, 27, 7, 79, 81, 79, 93, 94, 91, 88, 91, 87, 92, 89, 91, 88, 79, 71, 26, 1, 28, 26, 31, 31, 0, 29, 27, 10, ByteCode.T_LONG, 70, 65, 79, 119, 117, 108, 108, 117, 114, 123, 60, 105, 114, 111, 105, 108, 108, 115, 110, 104, 121, 120, 60, 121, 113, 111, 123, 60, 106, 121, 110, 111, 117, 115, 114, 38, 60, 57, 2, 9, 20, 28, 9, 15, 24, 9, 8, 76, 1, 3, 3, 26, 76, 14, 3, 20, 66, 71, 124, 119, 106, 98, 119, 113, 102, 119, 118, 50, 97, 115, 123, 125, 50, 119, 124, 102, 96, 107, 50, 113, 125, 103, 124, 102, 40, 50, 107, 80, 86, 95, 80, 90, 82, 91, 90, 30, 87, 80, 90, 87, 76, 91, 93, 74, 30, 76, 91, 88, 91, 76, 91, 80, 93, 91, 107, 92, 79, 84, 92, 95, 81, 88, 29, 81, 88, 83, 90, 73, 85, 29, 89, 88, 78, 94, 79, 84, 77, 73, 84, 82, 83, 29, 84, 83, 29, 78, 90, 77, 89, 29, 91, 82, 72, 83, 89, 29, 21, 72, 83, 78, 72, 77, 77, 82, 79, 73, 88, 89, 20, 83, 66, 66, 94, 91, 81, 83, 70, 91, 93, 92, 29, 74, 31, 87, 95, 65, 85, 66, 83, 83, 79, 74, 64, 66, 87, 74, 76, 77, 12, 91, 14, 78, 83, 23, 14, 85, 87, 87, 70, 89, 84, 85, 95, 31, 88, 85, 70, 83, 40, 55, 58, 59, 49, 113, 51, 46, 106};
    }

    /* JADX WARN: Failed to parse debug info
    java.lang.ArrayIndexOutOfBoundsException
     */
    private void A0I(C4J c4j, Uri uri) {
        String str;
        String str2;
        long jA0U;
        long jA0Q;
        if (this.A0L == null || this.A0L.length == 0) {
            return;
        }
        c4j.A0f(8);
        int iA01 = II.A01(c4j.A0C());
        long jA0U2 = C.TIME_UNSET;
        long jA05 = C.TIME_UNSET;
        switch (iA01) {
            case 0:
                str = (String) C3M.A01(c4j.A0U());
                str2 = (String) C3M.A01(c4j.A0U());
                if (A0f[2].length() != 2) {
                    throw new RuntimeException();
                }
                A0f[0] = "4yWaL9iFGGaDiXT";
                long jA0Q2 = c4j.A0Q();
                jA0U2 = AbstractC06244a.A0U(c4j.A0Q(), 1000000L, jA0Q2);
                if (this.A0C != C.TIME_UNSET) {
                    jA05 = this.A0C + jA0U2;
                }
                jA0U = AbstractC06244a.A0U(c4j.A0Q(), 1000L, jA0Q2);
                jA0Q = c4j.A0Q();
                break;
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
                AnonymousClass44.A07(A0B(128, 22, 77), A0B(550, 35, 127) + iA01);
                return;
        }
        byte[] bArr = new byte[c4j.A07()];
        c4j.A0k(bArr, 0, c4j.A07());
        int i = 0;
        C4J c4j2 = new C4J(this.A0V.A01(new EventMessage(str, str2, jA0U, jA0Q, bArr)));
        int iA07 = c4j2.A07();
        H1[] h1Arr = this.A0L;
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
            this.A0Y.addLast(new IU(jA0U2, iA07));
            this.A03 += iA07;
            return;
        }
        if (this.A0T != null) {
            jA05 = this.A0T.A05(jA05);
        }
        if (this.A0b && this.A0A != C.TIME_UNSET) {
            jA05 = this.A0A;
        }
        for (H1 h2 : this.A0L) {
            h2.AIA(jA05, 1, iA07, 0, null);
        }
    }

    /* JADX WARN: Failed to parse debug info
    java.lang.ArrayIndexOutOfBoundsException
     */
    public static void A0J(C4J c4j, C4J c4j2, String str, C0985Io c0985Io) throws C05802i {
        c4j.A0f(8);
        int iA0C = c4j.A0C();
        if (c4j.A0C() != 1936025959) {
            return;
        }
        int iA01 = II.A01(iA0C);
        if (A0f[2].length() != 2) {
            throw new RuntimeException();
        }
        A0f[0] = "QrVDtjxvyixdHPq";
        if (iA01 == 1) {
            c4j.A0g(4);
        }
        if (c4j.A0C() != 1) {
            throw new C05802i(A0B(50, 39, 69));
        }
        c4j2.A0f(8);
        int iA0C2 = c4j2.A0C();
        if (c4j2.A0C() != 1936025959) {
            return;
        }
        int iA02 = II.A01(iA0C2);
        if (iA02 == 1) {
            if (c4j2.A0Q() == 0) {
                throw new C05802i(A0B(662, 55, 94));
            }
        } else if (iA02 >= 2) {
            c4j2.A0g(4);
        }
        if (c4j2.A0Q() != 1) {
            throw new C05802i(A0B(89, 39, 111));
        }
        c4j2.A0g(1);
        int iA0I = c4j2.A0I();
        int i = (iA0I & 240) >> 4;
        int i2 = iA0I & 15;
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
            c0985Io.A07 = new C0984In(z, str, iA0I2, bArr, i, i2, bArr2);
        }
    }

    /* JADX WARN: Code duplicated, block: B:17:0x0096  */
    /* JADX WARN: Failed to parse debug info
    java.lang.ArrayIndexOutOfBoundsException
     */
    private void A0R(C2073kj c2073kj) throws C05802i {
        C3M.A0A(this.A0W == null, A0B(585, 20, 15));
        DrmInitData drmInitDataA05 = A05(c2073kj.A02);
        C2073kj c2073kj2 = (C2073kj) C3M.A01(c2073kj.A06(Mp4Box.TYPE_mvex));
        SparseArray<IP> sparseArray = new SparseArray<>();
        long jA01 = C.TIME_UNSET;
        int size = c2073kj2.A02.size();
        for (int i = 0; i < size; i++) {
            C2072ki c2072ki = c2073kj2.A02.get(i);
            if (((II) c2072ki).A00 == 1953654136) {
                Pair<Integer, IP> pairA03 = A03(c2072ki.A00);
                int iIntValue = ((Integer) pairA03.first).intValue();
                Object obj = pairA03.second;
                if (A0f[7].charAt(29) == '0') {
                    throw new RuntimeException();
                }
                A0f[0] = "KUxAVqQLzsv7ujT";
                sparseArray.put(iIntValue, (IP) obj);
            } else {
                int i2 = ((II) c2072ki).A00;
                if (A0f[7].charAt(29) != '0') {
                    A0f[2] = "EA";
                    if (i2 == 1835362404) {
                        jA01 = A01(c2072ki.A00);
                    }
                } else {
                    String[] strArr = A0f;
                    strArr[3] = "P1l2XCTjN0GLzwkC984rH7zDpCyyqZ";
                    strArr[6] = "39xRaNo9QFkrA6tLq";
                    if (i2 == 237072518) {
                        jA01 = A01(c2072ki.A00);
                    }
                }
            }
        }
        SparseArray sparseArray2 = new SparseArray();
        int size2 = c2073kj.A01.size();
        for (int i3 = 0; i3 < size2; i3++) {
            C2073kj c2073kj3 = c2073kj.A01.get(i3);
            if (((II) c2073kj3).A00 == 1953653099) {
                C0983Im c0983ImA0A = A0A(IO.A0J(c2073kj3, c2073kj.A07(Mp4Box.TYPE_mvhd), jA01, drmInitDataA05, (this.A0M & 16) != 0, false));
                if (c0983ImA0A != null) {
                    sparseArray2.put(c0983ImA0A.A00, c0983ImA0A);
                }
            }
        }
        int size3 = sparseArray2.size();
        if (this.A0D.size() != 0) {
            C3M.A08(this.A0D.size() == size3);
            for (int i4 = 0; i4 < size3; i4++) {
                C0983Im c0983Im = (C0983Im) sparseArray2.valueAt(i4);
                this.A0D.get(c0983Im.A00).A08(c0983Im, A06(sparseArray, c0983Im.A00));
            }
            return;
        }
        for (int i5 = 0; i5 < size3; i5++) {
            C0983Im c0983Im2 = (C0983Im) sparseArray2.valueAt(i5);
            IV iv = new IV(this.A0F.AJh(i5, c0983Im2.A03));
            iv.A08(c0983Im2, A06(sparseArray, c0983Im2.A00));
            this.A0D.put(c0983Im2.A00, iv);
            this.A08 = Math.max(this.A08, c0983Im2.A04);
        }
        A0D();
        GY gy = this.A0F;
        if (A0f[7].charAt(29) != '0') {
            String[] strArr2 = A0f;
            strArr2[3] = "NZTZhjA83sW4NrmiIOwSslFR5UdjBx";
            strArr2[6] = "jWtg8I2sGrLmtghr5";
            gy.A6G();
            return;
        }
        throw new RuntimeException();
    }

    /* JADX WARN: Code duplicated, block: B:18:0x006a A[PHI: r0 r3
      0x006a: PHI (r0v33 com.facebook.ads.redexgen.X.ki) = (r0v12 com.facebook.ads.redexgen.X.ki), (r0v38 com.facebook.ads.redexgen.X.ki) binds: [B:43:0x0106, B:17:0x0068] A[DONT_GENERATE, DONT_INLINE]
      0x006a: PHI (r3v6 com.facebook.ads.redexgen.X.In) = (r3v1 com.facebook.ads.redexgen.X.In), (r3v7 com.facebook.ads.redexgen.X.In) binds: [B:43:0x0106, B:17:0x0068] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Failed to parse debug info
    java.lang.ArrayIndexOutOfBoundsException
     */
    public static void A0T(C2073kj c2073kj, SparseArray<IV> sparseArray, int i, byte[] bArr, boolean z) throws C05802i {
        C0984In c0984InA00;
        C2072ki c2072kiA07;
        IV ivA09 = A09(c2073kj.A07(Mp4Box.TYPE_tfhd).A00, sparseArray, z);
        if (ivA09 == null) {
            return;
        }
        C0985Io c0985Io = ivA09.A07;
        long jA02 = c0985Io.A05;
        ivA09.A05();
        if (c2073kj.A07(Mp4Box.TYPE_tfdt) != null) {
            int i2 = i & 2;
            if (A0f[0].length() != 15) {
                throw new RuntimeException();
            }
            A0f[4] = "8CfIIEomKXR2z1rzEceKdGz";
            if (i2 == 0) {
                jA02 = A02(c2073kj.A07(Mp4Box.TYPE_tfdt).A00);
            }
        }
        A0U(c2073kj, ivA09, jA02, i);
        C0983Im c0983Im = ivA09.A05;
        if (A0f[2].length() != 2) {
            c0984InA00 = c0983Im.A00(c0985Io.A06.A02);
            c2072kiA07 = c2073kj.A07(Mp4Box.TYPE_saiz);
            if (c2072kiA07 != null) {
                A0W(c0984InA00, c2072kiA07.A00, c0985Io);
            }
        } else {
            String[] strArr = A0f;
            strArr[1] = "KgLNgt4jXc3ey27lHSoy2KaHmXxTtgSL";
            strArr[5] = "0TnPqkkfx8cOSuGK7tHkJ8yHXf83oy0i";
            c0984InA00 = c0983Im.A00(c0985Io.A06.A02);
            c2072kiA07 = c2073kj.A07(Mp4Box.TYPE_saiz);
            if (c2072kiA07 != null) {
                A0W(c0984InA00, c2072kiA07.A00, c0985Io);
            }
        }
        C2072ki c2072kiA08 = c2073kj.A07(Mp4Box.TYPE_saio);
        if (c2072kiA08 != null) {
            C4J c4j = c2072kiA08.A00;
            if (A0f[7].charAt(29) != '0') {
                A0f[2] = "tW";
                A0K(c4j, c0985Io);
            } else {
                A0f[0] = "kXc0iULHRQw05uA";
                A0K(c4j, c0985Io);
            }
        }
        C2072ki c2072kiA09 = c2073kj.A07(Mp4Box.TYPE_senc);
        if (c2072kiA09 != null) {
            A0L(c2072kiA09.A00, c0985Io);
        }
        C2072ki c2072kiA010 = c2073kj.A07(Mp4Box.TYPE_sbgp);
        C2072ki c2072kiA011 = c2073kj.A07(Mp4Box.TYPE_sgpd);
        if (c2072kiA010 != null && c2072kiA011 != null) {
            A0J(c2072kiA010.A00, c2072kiA011.A00, c0984InA00 != null ? c0984InA00.A02 : null, c0985Io);
        }
        int size = c2073kj.A02.size();
        for (int i3 = 0; i3 < size; i3++) {
            C2072ki c2072ki = c2073kj.A02.get(i3);
            if (((II) c2072ki).A00 == 1970628964) {
                A0M(c2072ki.A00, c0985Io, bArr);
            }
        }
    }

    /* JADX WARN: Failed to parse debug info
    java.lang.ArrayIndexOutOfBoundsException
     */
    public static void A0W(C0984In c0984In, C4J c4j, C0985Io c0985Io) throws C05802i {
        int i = c0984In.A00;
        c4j.A0f(8);
        if ((II.A00(c4j.A0C()) & 1) == 1) {
            c4j.A0g(8);
        }
        int iA0I = c4j.A0I();
        int iA0L = c4j.A0L();
        if (iA0L != c0985Io.A00) {
            throw new C05802i(A0B(308, 17, 45) + iA0L + A0B(0, 2, 27) + c0985Io.A00);
        }
        int i2 = 0;
        if (iA0I == 0) {
            boolean[] zArr = c0985Io.A0F;
            for (int i3 = 0; i3 < iA0L; i3++) {
                int iA0I2 = c4j.A0I();
                i2 += iA0I2;
                zArr[i3] = iA0I2 > i;
            }
        } else {
            i2 = 0 + (iA0I * iA0L);
            Arrays.fill(c0985Io.A0F, 0, iA0L, iA0I > i);
        }
        c0985Io.A02(i2);
    }

    static {
        A0E();
        A0g = new InterfaceC0921Gb() {
            @Override
            public final GX[] A5F() {
                return C2065kb.A0b();
            }

            @Override
            public final GX[] A5G(Uri uri, Map map) {
                return AbstractC0920Ga.A01(this, uri, map);
            }
        };
        A0i = new byte[]{-94, 57, 79, 82, 90, -101, 79, 20, -94, 68, 108, 66, 124, 100, SocketData.CLAZZ_TYPE_ERROR_CODE, -12};
        A0h = new C2D().A11(A0B(717, 18, 81)).A14();
    }

    public C2065kb() {
        this(0);
    }

    public C2065kb(int i) {
        this(i, null);
    }

    public C2065kb(int i, C4R c4r) {
        this(i, c4r, null, null);
    }

    public C2065kb(int i, C4R c4r, C0983Im c0983Im, DrmInitData drmInitData) {
        this(i, c4r, c0983Im, drmInitData, Collections.emptyList());
    }

    public C2065kb(int i, C4R c4r, C0983Im c0983Im, DrmInitData drmInitData, List<C2312or> list) {
        this(i, c4r, c0983Im, drmInitData, list, null, false, false, false);
    }

    public C2065kb(int i, C4R c4r, C0983Im c0983Im, DrmInitData drmInitData, List<C2312or> list, H1 h1, boolean z, boolean z2, boolean z3) {
        this.A0A = C.TIME_UNSET;
        this.A0M = (c0983Im != null ? 8 : 0) | i;
        this.A0T = c4r;
        this.A0W = c0983Im;
        this.A0N = drmInitData;
        this.A0Z = Collections.unmodifiableList(list);
        this.A0U = h1;
        this.A0c = z;
        this.A0b = z2;
        this.A0a = z3;
        this.A0V = new HO();
        this.A0O = new C4J(16);
        this.A0R = new C4J(AbstractC0936Gq.A03);
        this.A0Q = new C4J(5);
        this.A0P = new C4J();
        this.A0d = new byte[16];
        this.A0S = new C4J(this.A0d);
        this.A0X = new ArrayDeque<>();
        this.A0Y = new ArrayDeque<>();
        this.A0D = new SparseArray<>();
        this.A08 = C.TIME_UNSET;
        this.A0B = C.TIME_UNSET;
        this.A0C = C.TIME_UNSET;
        A0C();
    }

    public static long A01(C4J c4j) {
        c4j.A0f(8);
        int fullAtom = c4j.A0C();
        return II.A01(fullAtom) == 0 ? c4j.A0Q() : c4j.A0R();
    }

    public static long A02(C4J c4j) {
        c4j.A0f(8);
        int fullAtom = c4j.A0C();
        int version = II.A01(fullAtom);
        return version == 1 ? c4j.A0R() : c4j.A0Q();
    }

    public static Pair<Integer, IP> A03(C4J c4j) {
        c4j.A0f(12);
        int defaultSampleDescriptionIndex = c4j.A0C();
        int trackId = c4j.A0L();
        int defaultSampleFlags = c4j.A0L();
        int defaultSampleSize = c4j.A0L();
        int defaultSampleDuration = c4j.A0C();
        return Pair.create(Integer.valueOf(defaultSampleDescriptionIndex), new IP(trackId - 1, defaultSampleFlags, defaultSampleSize, defaultSampleDuration));
    }

    public static DrmInitData A05(List<C2072ki> list) {
        ArrayList arrayList = null;
        int size = list.size();
        for (int i = 0; i < size; i++) {
            C2072ki c2072ki = list.get(i);
            int leafChildrenSize = A0f[4].length();
            if (leafChildrenSize != 23) {
                throw new RuntimeException();
            }
            A0f[0] = "gRucWkmmr3YeQcV";
            C2072ki c2072ki2 = c2072ki;
            int leafChildrenSize2 = ((II) c2072ki2).A00;
            if (leafChildrenSize2 == 1886614376) {
                if (arrayList == null) {
                    arrayList = new ArrayList();
                }
                byte[] bArr = c2072ki2.A00.A00;
                UUID uuidA02 = AbstractC0976If.A02(bArr);
                if (uuidA02 == null) {
                    AnonymousClass44.A07(A0B(128, 22, 77), A0B(455, 42, 100));
                } else {
                    arrayList.add(new DrmInitData.SchemeData(uuidA02, A0B(766, 9, 61), bArr));
                }
            }
        }
        if (arrayList == null) {
            return null;
        }
        return new DrmInitData(arrayList);
    }

    private IP A06(SparseArray<IP> sparseArray, int i) {
        if (sparseArray.size() == 1) {
            return sparseArray.valueAt(0);
        }
        return (IP) C3M.A01(sparseArray.get(i));
    }

    public static IV A07(SparseArray<IV> sparseArray) {
        IV iv = null;
        long j = Long.MAX_VALUE;
        int size = sparseArray.size();
        for (int i = 0; i < size; i++) {
            IV ivValueAt = sparseArray.valueAt(i);
            if (ivValueAt.A02 != ivValueAt.A07.A01) {
                long nextTrackRunOffset = ivValueAt.A07.A0E[ivValueAt.A02];
                if (nextTrackRunOffset < j) {
                    iv = ivValueAt;
                    j = nextTrackRunOffset;
                }
            }
        }
        return iv;
    }

    public static IV A08(SparseArray<IV> sparseArray, int i, boolean z) {
        if (sparseArray.size() == 1 && !z) {
            return sparseArray.valueAt(0);
        }
        return sparseArray.get(i);
    }

    private final C0983Im A0A(C0983Im c0983Im) {
        return c0983Im;
    }

    private void A0C() {
        this.A02 = 0;
        this.A00 = 0;
    }

    private void A0D() {
        if (this.A0L == null) {
            this.A0L = new H1[2];
            int i = 0;
            if (this.A0U != null) {
                this.A0L[0] = this.A0U;
                i = 0 + 1;
            }
            int emsgTrackOutputCount = this.A0M;
            if ((emsgTrackOutputCount & 4) != 0) {
                H1[] h1Arr = this.A0L;
                int i2 = i + 1;
                if (A0f[7].charAt(29) == '0') {
                    throw new RuntimeException();
                }
                String[] strArr = A0f;
                strArr[1] = "2Ynf6gmdLfe6xE9EEWKUzFfHKl41sL7a";
                strArr[5] = "AN0qqeacVBgpTr6ZS3JdezHHRUzhKU8l";
                h1Arr[i] = this.A0F.AJh(this.A0D.size(), 5);
                i = i2;
            }
            this.A0L = (H1[]) Arrays.copyOf(this.A0L, i);
            for (H1 h1 : this.A0L) {
                h1.A6W(A0h);
            }
        }
        if (this.A0K == null) {
            this.A0K = new H1[this.A0Z.size()];
            for (int i3 = 0; i3 < i; i3++) {
                GY gy = this.A0F;
                int i4 = this.A0D.size();
                H1 output = gy.AJh(i4 + 1 + i3, 3);
                output.A6W(this.A0Z.get(i3));
                this.A0K[i3] = output;
            }
        }
    }

    private void A0F(long j) {
        while (!this.A0Y.isEmpty()) {
            IU iuRemoveFirst = this.A0Y.removeFirst();
            this.A03 -= iuRemoveFirst.A00;
            long jA05 = j + iuRemoveFirst.A01;
            if (this.A0T != null) {
                jA05 = this.A0T.A05(jA05);
            }
            for (H1 h1 : this.A0L) {
                h1.AIA(jA05, 1, iuRemoveFirst.A00, this.A03, null);
            }
        }
    }

    private void A0G(long j) throws C05802i {
        while (!this.A0X.isEmpty() && this.A0X.peek().A00 == j) {
            A0P(this.A0X.pop());
        }
        A0C();
    }

    public static void A0H(C4J c4j, int i, C0985Io c0985Io) throws C05802i {
        c4j.A0f(i + 8);
        int fullAtom = c4j.A0C();
        int flags = II.A00(fullAtom);
        int fullAtom2 = flags & 1;
        if (fullAtom2 == 0) {
            int fullAtom3 = flags & 2;
            boolean z = fullAtom3 != 0;
            int sampleCount = c4j.A0L();
            int fullAtom4 = c0985Io.A00;
            if (sampleCount == fullAtom4) {
                Arrays.fill(c0985Io.A0F, 0, sampleCount, z);
                int fullAtom5 = c4j.A07();
                c0985Io.A02(fullAtom5);
                c0985Io.A04(c4j);
                return;
            }
            StringBuilder sbAppend = new StringBuilder().append(A0B(308, 17, 45)).append(sampleCount).append(A0B(0, 2, 27));
            int fullAtom6 = c0985Io.A00;
            throw new C05802i(sbAppend.append(fullAtom6).toString());
        }
        throw new C05802i(A0B(MediaFile.FILE_TYPE_RM, 56, 17));
    }

    public static void A0K(C4J c4j, C0985Io c0985Io) throws C05802i {
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
        throw new C05802i(A0B(TypedValues.MotionType.TYPE_ANIMATE_RELATIVE_TO, 29, 113) + iA0L);
    }

    public static void A0L(C4J c4j, C0985Io c0985Io) throws C05802i {
        A0H(c4j, 0, c0985Io);
    }

    public static void A0M(C4J c4j, C0985Io c0985Io, byte[] bArr) throws C05802i {
        c4j.A0f(8);
        c4j.A0k(bArr, 0, 16);
        if (!Arrays.equals(bArr, A0i)) {
            return;
        }
        A0H(c4j, 16, c0985Io);
    }

    private void A0N(InterfaceC2101lN interfaceC2101lN) throws IOException {
        int i = ((int) this.A07) - this.A00;
        if (this.A0E != null) {
            interfaceC2101lN.readFully(this.A0E.A00, 8, i);
            A0V(new C2072ki(this.A01, this.A0E), interfaceC2101lN);
        } else {
            interfaceC2101lN.AJJ(i);
        }
        A0G(interfaceC2101lN.A8f());
    }

    private void A0O(InterfaceC2101lN interfaceC2101lN) throws IOException {
        IV ivValueAt = null;
        long j = Long.MAX_VALUE;
        int size = this.A0D.size();
        for (int i = 0; i < size; i++) {
            IV nextTrackBundle = this.A0D.valueAt(i);
            C0985Io c0985Io = nextTrackBundle.A07;
            if (c0985Io.A0A) {
                long nextDataOffset = c0985Io.A03;
                String[] strArr = A0f;
                if (strArr[3].length() == strArr[6].length()) {
                    throw new RuntimeException();
                }
                A0f[4] = "mIjUpcDFQdM2YkTgY6cnbvy";
                if (nextDataOffset < j) {
                    j = c0985Io.A03;
                    ivValueAt = this.A0D.valueAt(i);
                }
            }
        }
        if (ivValueAt == null) {
            if (A0f[4].length() == 23) {
                A0f[0] = "NbtoUSPOiQE3wq0";
                this.A02 = 3;
                return;
            }
            throw new RuntimeException();
        }
        int iA8f = (int) (j - interfaceC2101lN.A8f());
        if (iA8f >= 0) {
            interfaceC2101lN.AJJ(iA8f);
            ivValueAt.A07.A05(interfaceC2101lN);
            return;
        }
        throw new C05802i(A0B(325, 39, 126));
    }

    private void A0P(C2073kj c2073kj) throws C05802i {
        if (((II) c2073kj).A00 == 1836019574) {
            A0R(c2073kj);
        } else if (((II) c2073kj).A00 == 1836019558) {
            A0Q(c2073kj);
        } else {
            if (this.A0X.isEmpty()) {
                return;
            }
            this.A0X.peek().A08(c2073kj);
        }
    }

    private void A0Q(C2073kj c2073kj) throws C05802i {
        A0S(c2073kj, this.A0D, this.A0M, this.A0d, this.A0c);
        DrmInitData drmInitDataA05 = this.A0N != null ? null : A05(c2073kj.A02);
        if (drmInitDataA05 != null) {
            int i = this.A0D.size();
            for (int trackCount = 0; trackCount < i; trackCount++) {
                this.A0D.valueAt(trackCount).A07(drmInitDataA05);
            }
        }
        if (this.A0B != C.TIME_UNSET) {
            int size = this.A0D.size();
            for (int i2 = 0; i2 < size; i2++) {
                this.A0D.valueAt(i2).A06(this.A0B);
            }
            this.A0B = C.TIME_UNSET;
        }
    }

    public static void A0S(C2073kj c2073kj, SparseArray<IV> sparseArray, int i, byte[] bArr, boolean z) throws C05802i {
        int size = c2073kj.A01.size();
        for (int i2 = 0; i2 < size; i2++) {
            C2073kj child = c2073kj.A01.get(i2);
            int i3 = ((II) child).A00;
            if (i3 == 1953653094) {
                boolean z2 = true;
                if (size <= 1 || !z) {
                    z2 = false;
                }
                A0T(child, sparseArray, i, bArr, z2);
            }
        }
    }

    public static void A0U(C2073kj c2073kj, IV iv, long j, int i) {
        int i2 = 0;
        int i3 = 0;
        List<C2072ki> list = c2073kj.A02;
        int size = list.size();
        int i4 = 0;
        while (true) {
            String[] strArr = A0f;
            if (strArr[1].charAt(23) != strArr[5].charAt(23)) {
                throw new RuntimeException();
            }
            A0f[0] = "3b9EJYgpciD07do";
            if (i4 < size) {
                C2072ki c2072ki = list.get(i4);
                if (((II) c2072ki).A00 == 1953658222) {
                    C4J trunData = c2072ki.A00;
                    trunData.A0f(12);
                    int iA0L = trunData.A0L();
                    if (iA0L > 0) {
                        i3 += iA0L;
                        i2++;
                    }
                }
                i4++;
            } else {
                iv.A02 = 0;
                iv.A00 = 0;
                iv.A01 = 0;
                iv.A07.A03(i2, i3);
                int i5 = 0;
                int trunStartPosition = 0;
                for (int i6 = 0; i6 < size; i6++) {
                    C2072ki c2072ki2 = list.get(i6);
                    if (((II) c2072ki2).A00 == 1953658222) {
                        trunStartPosition = A00(iv, i5, j, i, c2072ki2.A00, trunStartPosition);
                        i5++;
                    }
                }
                return;
            }
        }
    }

    private void A0V(C2072ki c2072ki, InterfaceC2101lN interfaceC2101lN) throws C05802i {
        Uri uriA9H;
        if (!this.A0X.isEmpty()) {
            this.A0X.peek().A09(c2072ki);
            return;
        }
        if (((II) c2072ki).A00 == 1936286840) {
            Pair<Long, C2106lT> pairA04 = A04(c2072ki.A00, interfaceC2101lN.A8f());
            this.A0C = ((Long) pairA04.first).longValue();
            this.A0F.AIN((InterfaceC0942Gw) pairA04.second);
            if (A0f[2].length() != 2) {
                throw new RuntimeException();
            }
            A0f[2] = "jw";
            this.A0H = true;
            return;
        }
        if (((II) c2072ki).A00 != 1701671783 || (uriA9H = interfaceC2101lN.A9H()) == null) {
            return;
        }
        A0I(c2072ki.A00, uriA9H);
    }

    public static boolean A0X(int i) {
        return i == 1836019574 || i == 1953653099 || i == 1835297121 || i == 1835626086 || i == 1937007212 || i == 1836019558 || i == 1953653094 || i == 1836475768 || i == 1701082227;
    }

    public static boolean A0Y(int i) {
        if (i != 1751411826 && i != 1835296868 && i != 1836476516 && i != 1936286840 && i != 1937011556 && i != 1952867444 && i != 1952868452 && i != 1953196132 && i != 1953654136 && i != 1953658222 && i != 1886614376) {
            if (A0f[0].length() != 15) {
                throw new RuntimeException();
            }
            String[] strArr = A0f;
            strArr[1] = "pufslWDHGkolcxIdleA53YlHTmcCni23";
            strArr[5] = "pxTVwd0BvZHkKJbeu8mcyfUHnPvesqsQ";
            if (i != 1935763834 && i != 1935763823 && i != 1936027235 && i != 1970628964 && i != 1935828848 && i != 1936158820 && i != 1701606260 && i != 1835362404 && i != 1701671783) {
                return false;
            }
        }
        return true;
    }

    private boolean A0Z(InterfaceC2101lN interfaceC2101lN) throws IOException {
        if (this.A00 == 0) {
            if (!interfaceC2101lN.AGh(this.A0O.A00, 0, 8, true)) {
                return false;
            }
            this.A00 = 8;
            this.A0O.A0f(0);
            this.A07 = this.A0O.A0Q();
            this.A01 = this.A0O.A0C();
        }
        if (this.A07 == 1) {
            interfaceC2101lN.readFully(this.A0O.A00, 8, 8);
            int headerBytesRemaining = this.A00;
            this.A00 = headerBytesRemaining + 8;
            this.A07 = this.A0O.A0R();
        } else if (this.A07 == 0) {
            long jA8G = interfaceC2101lN.A8G();
            if (jA8G == -1 && !this.A0X.isEmpty()) {
                jA8G = this.A0X.peek().A00;
            }
            if (jA8G != -1) {
                long jA8f = jA8G - interfaceC2101lN.A8f();
                int trackCount = this.A00;
                this.A07 = jA8f + ((long) trackCount);
            }
        }
        if (this.A07 >= this.A00) {
            long jA8f2 = interfaceC2101lN.A8f() - ((long) this.A00);
            if (this.A01 == 1836019558) {
                int size = this.A0D.size();
                for (int i = 0; i < size; i++) {
                    C0985Io c0985Io = this.A0D.valueAt(i).A07;
                    c0985Io.A02 = jA8f2;
                    c0985Io.A03 = jA8f2;
                    c0985Io.A04 = jA8f2;
                }
            }
            if (this.A01 == 1835295092) {
                this.A0G = null;
                this.A09 = this.A07 + jA8f2;
                if (!this.A0H) {
                    this.A0F.AIN(new C2096lI(this.A08, jA8f2));
                    this.A0H = true;
                }
                this.A02 = 2;
                return true;
            }
            boolean zA0X = A0X(this.A01);
            String[] strArr = A0f;
            if (strArr[3].length() == strArr[6].length()) {
                throw new RuntimeException();
            }
            A0f[7] = "BTpsgrbOJA5y808qoKaZGmPima83kMX9";
            if (zA0X) {
                long jA8f3 = (interfaceC2101lN.A8f() + this.A07) - 8;
                this.A0X.push(new C2073kj(this.A01, jA8f3));
                if (this.A07 == this.A00) {
                    A0G(jA8f3);
                } else {
                    A0C();
                }
            } else if (A0Y(this.A01)) {
                if (this.A00 != 8) {
                    throw new C05802i(A0B(IDrmSession.ERROR_SESSION_DRM_PSSHS_EMPTY, 51, 94));
                }
                if (this.A07 <= 2147483647L) {
                    this.A0E = new C4J((int) this.A07);
                    System.arraycopy(this.A0O.A00, 0, this.A0E.A00, 0, 8);
                    this.A02 = 1;
                } else {
                    throw new C05802i(A0B(259, 49, 17));
                }
            } else if (this.A07 <= 2147483647L) {
                this.A0E = null;
                this.A02 = 1;
            } else {
                throw new C05802i(A0B(497, 53, 12));
            }
            return true;
        }
        throw new C05802i(A0B(2, 48, 125));
    }

    /* JADX WARN: Code duplicated, block: B:104:0x0186 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:105:0x0306 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:106:0x016b A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:107:0x0122 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:112:0x002e A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:22:0x0098  */
    /* JADX WARN: Code duplicated, block: B:34:0x00ef  */
    /* JADX WARN: Code duplicated, block: B:37:0x0104 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:38:0x0106  */
    /* JADX WARN: Code duplicated, block: B:41:0x011e  */
    /* JADX WARN: Code duplicated, block: B:45:0x0132  */
    /* JADX WARN: Code duplicated, block: B:47:0x014a  */
    /* JADX WARN: Code duplicated, block: B:54:0x0171  */
    /* JADX WARN: Code duplicated, block: B:55:0x0184  */
    /* JADX WARN: Code duplicated, block: B:58:0x018a  */
    /* JADX WARN: Code duplicated, block: B:60:0x01e9  */
    /* JADX WARN: Code duplicated, block: B:61:0x01f1  */
    /* JADX WARN: Code duplicated, block: B:64:0x0201  */
    /* JADX WARN: Code duplicated, block: B:66:0x0205  */
    /* JADX WARN: Code duplicated, block: B:69:0x022a  */
    /* JADX WARN: Code duplicated, block: B:72:0x023f A[LOOP:1: B:67:0x0224->B:72:0x023f, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:75:0x025d  */
    /* JADX WARN: Code duplicated, block: B:78:0x0266  */
    /* JADX WARN: Code duplicated, block: B:84:0x0290  */
    /* JADX WARN: Code duplicated, block: B:86:0x02a1  */
    /* JADX WARN: Code duplicated, block: B:89:0x02bb  */
    /* JADX WARN: Code duplicated, block: B:91:0x02d0  */
    /* JADX WARN: Code duplicated, block: B:94:0x02d7  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r11v10 */
    /* JADX WARN: Type inference failed for: r11v11 */
    /* JADX WARN: Type inference failed for: r11v4 */
    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$PrimitiveArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    private boolean A0a(InterfaceC2101lN interfaceC2101lN) throws IOException {
        C0985Io c0985Io;
        C0983Im c0983Im;
        H1 h1;
        int i;
        long jA00;
        int i2;
        int i3;
        boolean z;
        C0945Gz c0945Gz;
        C0984In c0984InA00;
        ?? r11;
        int i4;
        String[] strArr;
        String str;
        String[] strArr2;
        byte[] bArr;
        int i5;
        int i6;
        int iA0C;
        boolean z2;
        int iAI5;
        int i7 = 4;
        int i8 = 1;
        int i9 = 0;
        if (this.A02 == 3) {
            if (this.A0G == null) {
                IV ivA07 = A07(this.A0D);
                if (ivA07 == null) {
                    int iA8f = (int) (this.A09 - interfaceC2101lN.A8f());
                    if (A0f[0].length() == 15) {
                        A0f[4] = "i1YiOY4gD0FAVv8vBgekv9L";
                        if (iA8f >= 0) {
                            interfaceC2101lN.AJJ(iA8f);
                            A0C();
                            return false;
                        }
                        throw new C05802i(A0B(TranSceneConfig.SCENE_TYPE_GAME_HOK_UNRIVALED, 35, 87));
                    }
                } else {
                    int iA8f2 = (int) (ivA07.A07.A0E[ivA07.A02] - interfaceC2101lN.A8f());
                    if (iA8f2 < 0) {
                        AnonymousClass44.A07(A0B(128, 22, 77), A0B(150, 40, 19));
                        iA8f2 = 0;
                    }
                    interfaceC2101lN.AJJ(iA8f2);
                    this.A0G = ivA07;
                }
            }
            this.A06 = this.A0G.A07.A0B[this.A0G.A01];
            if (this.A0G.A01 < this.A0G.A03) {
                interfaceC2101lN.AJJ(this.A06);
                if (A0f[4].length() != 23) {
                    this.A0G.A02();
                    if (!this.A0G.A09()) {
                        this.A0G = null;
                    }
                } else {
                    A0f[0] = "A3KFlo0OZ1vz3cN";
                    this.A0G.A02();
                    if (!this.A0G.A09()) {
                        this.A0G = null;
                    }
                }
                this.A02 = 3;
                return true;
            }
            if (this.A0G.A05.A02 == 1) {
                this.A06 -= 8;
                interfaceC2101lN.AJJ(8);
            }
            this.A04 = this.A0G.A04();
            this.A06 += this.A04;
            this.A02 = 4;
            this.A05 = 0;
            c0985Io = this.A0G.A07;
            c0983Im = this.A0G.A05;
            h1 = this.A0G.A06;
            i = this.A0G.A01;
            jA00 = c0985Io.A00(i);
            if (this.A0T != null) {
                jA00 = this.A0T.A05(jA00);
            }
            i2 = c0983Im.A01;
            if (A0f[0].length() != 15) {
                if (i2 != 0) {
                    bArr = this.A0Q.A00;
                    bArr[0] = 0;
                    bArr[1] = 0;
                    bArr[2] = 0;
                    i5 = c0983Im.A01 + 1;
                    i6 = 4 - c0983Im.A01;
                    while (this.A04 < this.A06) {
                        if (this.A05 == 0) {
                            interfaceC2101lN.readFully(bArr, i6, i5);
                            this.A0Q.A0f(i9);
                            iA0C = this.A0Q.A0C();
                            if (iA0C >= i8) {
                                this.A05 = iA0C - 1;
                                this.A0R.A0f(i9);
                                h1.AI7(this.A0R, i7);
                                h1.AI7(this.A0Q, i8);
                                if (this.A0K.length > 0) {
                                    z2 = false;
                                } else {
                                    z2 = false;
                                }
                                this.A0J = z2;
                                this.A04 += 5;
                                if (A0f[2].length() != 2) {
                                    throw new RuntimeException();
                                }
                                String[] strArr3 = A0f;
                                strArr3[3] = "rGJs1bdDcV9vWCpHaV2ADCTyGiB9Xi";
                                strArr3[6] = "SO50y9aywvhjzs541";
                                this.A06 += i6;
                                i8 = 1;
                            } else {
                                throw new C05802i(A0B(ByteCode.ARRAYLENGTH, 18, 94));
                            }
                        } else {
                            if (this.A0J) {
                                this.A0P.A0d(this.A05);
                                interfaceC2101lN.readFully(this.A0P.A00, i9, this.A05);
                                h1.AI7(this.A0P, this.A05);
                                iAI5 = this.A05;
                                int iA02 = AbstractC0936Gq.A02(this.A0P.A00, this.A0P.A0A());
                                this.A0P.A0f(A0B(756, 10, 83).equals(c0983Im.A07.A0W) ? 1 : 0);
                                this.A0P.A0e(iA02);
                                JG.A03(jA00, this.A0P, this.A0K);
                            } else {
                                iAI5 = h1.AI5(interfaceC2101lN, this.A05, false);
                            }
                            this.A04 += iAI5;
                            this.A05 -= iAI5;
                            i7 = 4;
                            i8 = 1;
                            i9 = 0;
                        }
                    }
                } else {
                    if (this.A0I) {
                        GI.A07(this.A06, this.A0S);
                        int iA0A = this.A0S.A0A();
                        h1.AI7(this.A0S, iA0A);
                        this.A06 += iA0A;
                        this.A04 += iA0A;
                        this.A0I = false;
                    }
                    while (this.A04 < this.A06) {
                        i3 = this.A06 - this.A04;
                        if (A0f[4].length() != 23) {
                            A0f[4] = "4fzpRPid5Z3e8Rz7esUDMjQ";
                            this.A04 += h1.AI5(interfaceC2101lN, i3, false);
                        }
                    }
                }
                z = c0985Io.A0G[i];
                c0945Gz = null;
                c0984InA00 = this.A0G.A00();
                r11 = z;
                if (c0984InA00 != null) {
                    int i10 = (z ? 1 : 0) | 1073741824;
                    c0945Gz = c0984InA00.A01;
                    r11 = i10;
                }
                i4 = r11;
                if (this.A0G != null) {
                    str = this.A0G.A05.A07.A0W;
                    strArr2 = A0f;
                    if (strArr2[3].length() != strArr2[6].length()) {
                        A0f[2] = "aG";
                        if (str == A0B(735, 21, 64)) {
                            i4 = r11;
                            i4 = r11;
                            i4 = r11;
                            i4 = (r11 == true ? 1 : 0) | true;
                        }
                    }
                }
                i4 = r11;
                i4 = r11;
                i4 = r11;
                i4 = r11;
                i4 = r11;
                i4 = r11;
                long j = jA00;
                h1.AIA(jA00, i4, this.A06, 0, c0945Gz);
                this.A0A = j;
                A0F(j);
                if (!this.A0G.A09()) {
                    strArr = A0f;
                    if (strArr[1].charAt(23) != strArr[5].charAt(23)) {
                        this.A0G = null;
                    } else {
                        String[] strArr4 = A0f;
                        strArr4[1] = "si2y9gsn9mC0ma4HRQ4DLaiHkSELP0XP";
                        strArr4[5] = "aeCrUYztm6cMo33HVXFI6qvHQZYHBxKr";
                        this.A0G = null;
                    }
                }
                this.A02 = 3;
                return true;
            }
            String[] strArr5 = A0f;
            strArr5[1] = "1reQ2pcS16Hgv6ya8EYaKcYHA8e9gTqM";
            strArr5[5] = "zXUoCiVQDhh6v7GYUtROZrCHyvEA77y8";
            if (i2 != 0) {
                bArr = this.A0Q.A00;
                bArr[0] = 0;
                bArr[1] = 0;
                bArr[2] = 0;
                i5 = c0983Im.A01 + 1;
                i6 = 4 - c0983Im.A01;
                while (this.A04 < this.A06) {
                    if (this.A05 == 0) {
                        interfaceC2101lN.readFully(bArr, i6, i5);
                        this.A0Q.A0f(i9);
                        iA0C = this.A0Q.A0C();
                        if (iA0C >= i8) {
                            this.A05 = iA0C - 1;
                            this.A0R.A0f(i9);
                            h1.AI7(this.A0R, i7);
                            h1.AI7(this.A0Q, i8);
                            if (this.A0K.length > 0) {
                                z2 = false;
                            } else {
                                z2 = false;
                            }
                            this.A0J = z2;
                            this.A04 += 5;
                            if (A0f[2].length() != 2) {
                                throw new RuntimeException();
                            }
                            String[] strArr6 = A0f;
                            strArr6[3] = "rGJs1bdDcV9vWCpHaV2ADCTyGiB9Xi";
                            strArr6[6] = "SO50y9aywvhjzs541";
                            this.A06 += i6;
                            i8 = 1;
                        } else {
                            throw new C05802i(A0B(ByteCode.ARRAYLENGTH, 18, 94));
                        }
                    } else {
                        if (this.A0J) {
                            this.A0P.A0d(this.A05);
                            interfaceC2101lN.readFully(this.A0P.A00, i9, this.A05);
                            h1.AI7(this.A0P, this.A05);
                            iAI5 = this.A05;
                            int iA03 = AbstractC0936Gq.A02(this.A0P.A00, this.A0P.A0A());
                            this.A0P.A0f(A0B(756, 10, 83).equals(c0983Im.A07.A0W) ? 1 : 0);
                            this.A0P.A0e(iA03);
                            JG.A03(jA00, this.A0P, this.A0K);
                        } else {
                            iAI5 = h1.AI5(interfaceC2101lN, this.A05, false);
                        }
                        this.A04 += iAI5;
                        this.A05 -= iAI5;
                        i7 = 4;
                        i8 = 1;
                        i9 = 0;
                    }
                }
            } else {
                if (this.A0I) {
                    GI.A07(this.A06, this.A0S);
                    int iA0A2 = this.A0S.A0A();
                    h1.AI7(this.A0S, iA0A2);
                    this.A06 += iA0A2;
                    this.A04 += iA0A2;
                    this.A0I = false;
                }
                while (this.A04 < this.A06) {
                    i3 = this.A06 - this.A04;
                    if (A0f[4].length() != 23) {
                        A0f[4] = "4fzpRPid5Z3e8Rz7esUDMjQ";
                        this.A04 += h1.AI5(interfaceC2101lN, i3, false);
                    }
                }
            }
            z = c0985Io.A0G[i];
            c0945Gz = null;
            c0984InA00 = this.A0G.A00();
            r11 = z;
            if (c0984InA00 != null) {
                int i11 = (z ? 1 : 0) | 1073741824;
                c0945Gz = c0984InA00.A01;
                r11 = i11;
            }
            i4 = r11;
            if (this.A0G != null) {
                str = this.A0G.A05.A07.A0W;
                strArr2 = A0f;
                if (strArr2[3].length() != strArr2[6].length()) {
                    A0f[2] = "aG";
                    if (str == A0B(735, 21, 64)) {
                        i4 = r11;
                        i4 = r11;
                        i4 = r11;
                        i4 = (r11 == true ? 1 : 0) | true;
                    }
                }
            }
            i4 = r11;
            i4 = r11;
            i4 = r11;
            i4 = r11;
            i4 = r11;
            i4 = r11;
            long j2 = jA00;
            h1.AIA(jA00, i4, this.A06, 0, c0945Gz);
            this.A0A = j2;
            A0F(j2);
            if (!this.A0G.A09()) {
                strArr = A0f;
                if (strArr[1].charAt(23) != strArr[5].charAt(23)) {
                    this.A0G = null;
                } else {
                    String[] strArr7 = A0f;
                    strArr7[1] = "si2y9gsn9mC0ma4HRQ4DLaiHkSELP0XP";
                    strArr7[5] = "aeCrUYztm6cMo33HVXFI6qvHQZYHBxKr";
                    this.A0G = null;
                }
            }
            this.A02 = 3;
            return true;
        }
        c0985Io = this.A0G.A07;
        c0983Im = this.A0G.A05;
        h1 = this.A0G.A06;
        i = this.A0G.A01;
        jA00 = c0985Io.A00(i);
        if (this.A0T != null) {
            jA00 = this.A0T.A05(jA00);
        }
        i2 = c0983Im.A01;
        if (A0f[0].length() != 15) {
            if (i2 != 0) {
                bArr = this.A0Q.A00;
                bArr[0] = 0;
                bArr[1] = 0;
                bArr[2] = 0;
                i5 = c0983Im.A01 + 1;
                i6 = 4 - c0983Im.A01;
                while (this.A04 < this.A06) {
                    if (this.A05 == 0) {
                        interfaceC2101lN.readFully(bArr, i6, i5);
                        this.A0Q.A0f(i9);
                        iA0C = this.A0Q.A0C();
                        if (iA0C >= i8) {
                            this.A05 = iA0C - 1;
                            this.A0R.A0f(i9);
                            h1.AI7(this.A0R, i7);
                            h1.AI7(this.A0Q, i8);
                            if (this.A0K.length > 0 || !AbstractC0936Gq.A0I(c0983Im.A07.A0W, bArr[i7])) {
                                z2 = false;
                            } else {
                                z2 = true;
                            }
                            this.A0J = z2;
                            this.A04 += 5;
                            if (A0f[2].length() != 2) {
                                throw new RuntimeException();
                            }
                            String[] strArr8 = A0f;
                            strArr8[3] = "rGJs1bdDcV9vWCpHaV2ADCTyGiB9Xi";
                            strArr8[6] = "SO50y9aywvhjzs541";
                            this.A06 += i6;
                            i8 = 1;
                        } else {
                            throw new C05802i(A0B(ByteCode.ARRAYLENGTH, 18, 94));
                        }
                    } else {
                        if (this.A0J) {
                            this.A0P.A0d(this.A05);
                            interfaceC2101lN.readFully(this.A0P.A00, i9, this.A05);
                            h1.AI7(this.A0P, this.A05);
                            iAI5 = this.A05;
                            int iA04 = AbstractC0936Gq.A02(this.A0P.A00, this.A0P.A0A());
                            this.A0P.A0f(A0B(756, 10, 83).equals(c0983Im.A07.A0W) ? 1 : 0);
                            this.A0P.A0e(iA04);
                            JG.A03(jA00, this.A0P, this.A0K);
                        } else {
                            iAI5 = h1.AI5(interfaceC2101lN, this.A05, false);
                        }
                        this.A04 += iAI5;
                        this.A05 -= iAI5;
                        i7 = 4;
                        i8 = 1;
                        i9 = 0;
                    }
                }
            } else {
                if (this.A0I) {
                    GI.A07(this.A06, this.A0S);
                    int iA0A3 = this.A0S.A0A();
                    h1.AI7(this.A0S, iA0A3);
                    this.A06 += iA0A3;
                    this.A04 += iA0A3;
                    this.A0I = false;
                }
                while (this.A04 < this.A06) {
                    i3 = this.A06 - this.A04;
                    if (A0f[4].length() != 23) {
                        A0f[4] = "4fzpRPid5Z3e8Rz7esUDMjQ";
                        this.A04 += h1.AI5(interfaceC2101lN, i3, false);
                    }
                }
            }
            z = c0985Io.A0G[i];
            c0945Gz = null;
            c0984InA00 = this.A0G.A00();
            r11 = z;
            if (c0984InA00 != null) {
                int i12 = (z ? 1 : 0) | 1073741824;
                c0945Gz = c0984InA00.A01;
                r11 = i12;
            }
            i4 = r11;
            if (this.A0G != null && this.A0G.A05 != null && this.A0G.A05.A07 != null) {
                str = this.A0G.A05.A07.A0W;
                strArr2 = A0f;
                if (strArr2[3].length() != strArr2[6].length()) {
                    A0f[2] = "aG";
                    if (str == A0B(735, 21, 64)) {
                        i4 = r11;
                        i4 = r11;
                        i4 = r11;
                        i4 = (r11 == true ? 1 : 0) | true;
                    }
                }
            }
            i4 = r11;
            i4 = r11;
            i4 = r11;
            i4 = r11;
            i4 = r11;
            i4 = r11;
            long j3 = jA00;
            h1.AIA(jA00, i4, this.A06, 0, c0945Gz);
            this.A0A = j3;
            A0F(j3);
            if (!this.A0G.A09()) {
                strArr = A0f;
                if (strArr[1].charAt(23) != strArr[5].charAt(23)) {
                    this.A0G = null;
                } else {
                    String[] strArr9 = A0f;
                    strArr9[1] = "si2y9gsn9mC0ma4HRQ4DLaiHkSELP0XP";
                    strArr9[5] = "aeCrUYztm6cMo33HVXFI6qvHQZYHBxKr";
                    this.A0G = null;
                }
            }
            this.A02 = 3;
            return true;
        }
        String[] strArr10 = A0f;
        strArr10[1] = "1reQ2pcS16Hgv6ya8EYaKcYHA8e9gTqM";
        strArr10[5] = "zXUoCiVQDhh6v7GYUtROZrCHyvEA77y8";
        if (i2 != 0) {
            bArr = this.A0Q.A00;
            bArr[0] = 0;
            bArr[1] = 0;
            bArr[2] = 0;
            i5 = c0983Im.A01 + 1;
            i6 = 4 - c0983Im.A01;
            while (this.A04 < this.A06) {
                if (this.A05 == 0) {
                    interfaceC2101lN.readFully(bArr, i6, i5);
                    this.A0Q.A0f(i9);
                    iA0C = this.A0Q.A0C();
                    if (iA0C >= i8) {
                        this.A05 = iA0C - 1;
                        this.A0R.A0f(i9);
                        h1.AI7(this.A0R, i7);
                        h1.AI7(this.A0Q, i8);
                        if (this.A0K.length > 0) {
                            z2 = false;
                        } else {
                            z2 = false;
                        }
                        this.A0J = z2;
                        this.A04 += 5;
                        if (A0f[2].length() != 2) {
                            throw new RuntimeException();
                        }
                        String[] strArr11 = A0f;
                        strArr11[3] = "rGJs1bdDcV9vWCpHaV2ADCTyGiB9Xi";
                        strArr11[6] = "SO50y9aywvhjzs541";
                        this.A06 += i6;
                        i8 = 1;
                    } else {
                        throw new C05802i(A0B(ByteCode.ARRAYLENGTH, 18, 94));
                    }
                } else {
                    if (this.A0J) {
                        this.A0P.A0d(this.A05);
                        interfaceC2101lN.readFully(this.A0P.A00, i9, this.A05);
                        h1.AI7(this.A0P, this.A05);
                        iAI5 = this.A05;
                        int iA05 = AbstractC0936Gq.A02(this.A0P.A00, this.A0P.A0A());
                        this.A0P.A0f(A0B(756, 10, 83).equals(c0983Im.A07.A0W) ? 1 : 0);
                        this.A0P.A0e(iA05);
                        JG.A03(jA00, this.A0P, this.A0K);
                    } else {
                        iAI5 = h1.AI5(interfaceC2101lN, this.A05, false);
                    }
                    this.A04 += iAI5;
                    this.A05 -= iAI5;
                    i7 = 4;
                    i8 = 1;
                    i9 = 0;
                }
            }
        } else {
            if (this.A0I) {
                GI.A07(this.A06, this.A0S);
                int iA0A4 = this.A0S.A0A();
                h1.AI7(this.A0S, iA0A4);
                this.A06 += iA0A4;
                this.A04 += iA0A4;
                this.A0I = false;
            }
            while (this.A04 < this.A06) {
                i3 = this.A06 - this.A04;
                if (A0f[4].length() != 23) {
                    A0f[4] = "4fzpRPid5Z3e8Rz7esUDMjQ";
                    this.A04 += h1.AI5(interfaceC2101lN, i3, false);
                }
            }
        }
        z = c0985Io.A0G[i];
        c0945Gz = null;
        c0984InA00 = this.A0G.A00();
        r11 = z;
        if (c0984InA00 != null) {
            int i13 = (z ? 1 : 0) | 1073741824;
            c0945Gz = c0984InA00.A01;
            r11 = i13;
        }
        i4 = r11;
        if (this.A0G != null) {
            str = this.A0G.A05.A07.A0W;
            strArr2 = A0f;
            if (strArr2[3].length() != strArr2[6].length()) {
                A0f[2] = "aG";
                if (str == A0B(735, 21, 64)) {
                    i4 = r11;
                    i4 = r11;
                    i4 = r11;
                    i4 = (r11 == true ? 1 : 0) | true;
                }
            }
        }
        i4 = r11;
        i4 = r11;
        i4 = r11;
        i4 = r11;
        i4 = r11;
        i4 = r11;
        long j4 = jA00;
        h1.AIA(jA00, i4, this.A06, 0, c0945Gz);
        this.A0A = j4;
        A0F(j4);
        if (!this.A0G.A09()) {
            strArr = A0f;
            if (strArr[1].charAt(23) != strArr[5].charAt(23)) {
                this.A0G = null;
            } else {
                String[] strArr12 = A0f;
                strArr12[1] = "si2y9gsn9mC0ma4HRQ4DLaiHkSELP0XP";
                strArr12[5] = "aeCrUYztm6cMo33HVXFI6qvHQZYHBxKr";
                this.A0G = null;
            }
        }
        this.A02 = 3;
        return true;
        i4 = r11;
        i4 = r11;
        throw new RuntimeException();
    }

    public static GX[] A0b() {
        return new GX[]{new C2065kb()};
    }

    @Override
    public final void AA4(GY gy) {
        this.A0F = gy;
        if (this.A0W != null) {
            IV iv = new IV(gy.AJh(0, this.A0W.A03));
            iv.A08(this.A0W, new IP(0, 0, 0, 0));
            this.A0D.put(0, iv);
            A0D();
            this.A0F.A6G();
        }
    }

    @Override
    public final int AGb(InterfaceC2101lN interfaceC2101lN, C0939Gt c0939Gt) throws IOException {
        while (true) {
            int i = this.A02;
            if (A0f[0].length() != 15) {
                throw new RuntimeException();
            }
            String[] strArr = A0f;
            strArr[3] = "yYIiClYY3RZS73RDJ5vLPk2bDdZFXU";
            strArr[6] = "bGm4sUzBrXbQjG5ES";
            switch (i) {
                case 0:
                    if (!A0Z(interfaceC2101lN)) {
                        return -1;
                    }
                    break;
                    break;
                case 1:
                    A0N(interfaceC2101lN);
                    break;
                case 2:
                    A0O(interfaceC2101lN);
                    break;
                default:
                    if (A0a(interfaceC2101lN)) {
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
        int size = this.A0D.size();
        for (int i = 0; i < size; i++) {
            this.A0D.valueAt(i).A05();
        }
        this.A0Y.clear();
        this.A03 = 0;
        this.A0B = j2;
        this.A0X.clear();
        this.A0I = false;
        A0C();
    }

    @Override
    public final boolean AJL(InterfaceC2101lN interfaceC2101lN) throws IOException {
        return AbstractC0981Ik.A01(interfaceC2101lN);
    }
}
