package app.fast.ssh;

import android.graphics.Bitmap;
import androidx.core.view.ViewCompat;
import com.google.common.base.Ascii;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.util.Arrays;
import java.util.zip.Deflater;

public class ProtectedFastSSH$ExportActivity$2$8 {
    static final boolean $assertionsDisabled = false;
    private static final int HCHr = 10;
    private static final int akC = 3;
    private static final int bz = 3;
    private static final int cn = 40;
    private static final int hw = 30;
    private static final int muzc = 40;
    private static final int ytq = 1;
    private static final int Hp = cjA(40);
    private static final byte[][] ed = {new byte[]{-1, 7, 10, Ascii.SI, Ascii.DC4, Ascii.SUB, Ascii.DC2, Ascii.DC4, Ascii.CAN, Ascii.RS, Ascii.DC2, Ascii.DC4, Ascii.CAN, Ascii.SUB, Ascii.RS, Ascii.SYN, Ascii.CAN, Ascii.FS, Ascii.RS, Ascii.FS, Ascii.FS, Ascii.FS, Ascii.FS, Ascii.RS, Ascii.RS, Ascii.SUB, Ascii.FS, Ascii.RS, Ascii.RS, Ascii.RS, Ascii.RS, Ascii.RS, Ascii.RS, Ascii.RS, Ascii.RS, Ascii.RS, Ascii.RS, Ascii.RS, Ascii.RS, Ascii.RS, Ascii.RS}, new byte[]{-1, 10, Ascii.DLE, Ascii.SUB, Ascii.DC2, Ascii.CAN, Ascii.DLE, Ascii.DC2, Ascii.SYN, Ascii.SYN, Ascii.SUB, Ascii.RS, Ascii.SYN, Ascii.SYN, Ascii.CAN, Ascii.CAN, Ascii.FS, Ascii.FS, Ascii.SUB, Ascii.SUB, Ascii.SUB, Ascii.SUB, Ascii.FS, Ascii.FS, Ascii.FS, Ascii.FS, Ascii.FS, Ascii.FS, Ascii.FS, Ascii.FS, Ascii.FS, Ascii.FS, Ascii.FS, Ascii.FS, Ascii.FS, Ascii.FS, Ascii.FS, Ascii.FS, Ascii.FS, Ascii.FS, Ascii.FS}, new byte[]{-1, 13, Ascii.SYN, Ascii.DC2, Ascii.SUB, Ascii.DC2, Ascii.CAN, Ascii.DC2, Ascii.SYN, Ascii.DC4, Ascii.CAN, Ascii.FS, Ascii.SUB, Ascii.CAN, Ascii.DC4, Ascii.RS, Ascii.CAN, Ascii.FS, Ascii.FS, Ascii.SUB, Ascii.RS, Ascii.FS, Ascii.RS, Ascii.RS, Ascii.RS, Ascii.RS, Ascii.FS, Ascii.RS, Ascii.RS, Ascii.RS, Ascii.RS, Ascii.RS, Ascii.RS, Ascii.RS, Ascii.RS, Ascii.RS, Ascii.RS, Ascii.RS, Ascii.RS, Ascii.RS, Ascii.RS}, new byte[]{-1, 17, Ascii.FS, Ascii.SYN, Ascii.DLE, Ascii.SYN, Ascii.FS, Ascii.SUB, Ascii.SUB, Ascii.CAN, Ascii.FS, Ascii.CAN, Ascii.FS, Ascii.SYN, Ascii.CAN, Ascii.CAN, Ascii.RS, Ascii.FS, Ascii.FS, Ascii.SUB, Ascii.FS, Ascii.RS, Ascii.CAN, Ascii.RS, Ascii.RS, Ascii.RS, Ascii.RS, Ascii.RS, Ascii.RS, Ascii.RS, Ascii.RS, Ascii.RS, Ascii.RS, Ascii.RS, Ascii.RS, Ascii.RS, Ascii.RS, Ascii.RS, Ascii.RS, Ascii.RS, Ascii.RS}};
    private static final byte[][] smcr = {new byte[]{-1, 1, 1, 1, 1, 1, 2, 2, 2, 2, 4, 4, 4, 4, 4, 6, 6, 6, 6, 7, 8, 8, 9, 9, 10, 12, 12, 12, 13, Ascii.SO, Ascii.SI, Ascii.DLE, 17, Ascii.DC2, 19, 19, Ascii.DC4, Ascii.NAK, Ascii.SYN, Ascii.CAN, Ascii.EM}, new byte[]{-1, 1, 1, 1, 2, 2, 4, 4, 4, 5, 5, 5, 8, 9, 9, 10, 10, 11, 13, Ascii.SO, Ascii.DLE, 17, 17, Ascii.DC2, Ascii.DC4, Ascii.NAK, Ascii.ETB, Ascii.EM, Ascii.SUB, Ascii.FS, Ascii.GS, Ascii.US, 33, 35, 37, 38, 40, 43, 45, 47, 49}, new byte[]{-1, 1, 1, 2, 2, 4, 4, 6, 6, 8, 8, 8, 10, 12, Ascii.DLE, 12, 17, Ascii.DLE, Ascii.DC2, Ascii.NAK, Ascii.DC4, Ascii.ETB, Ascii.ETB, Ascii.EM, Ascii.ESC, Ascii.GS, 34, 34, 35, 38, 40, 43, 45, 48, 51, 53, 56, 59, 62, 65, 68}, new byte[]{-1, 1, 1, 2, 4, 4, 4, 5, 6, 8, 8, 11, 11, Ascii.DLE, Ascii.DLE, Ascii.DC2, Ascii.DLE, 19, Ascii.NAK, Ascii.EM, Ascii.EM, Ascii.EM, 34, Ascii.RS, 32, 35, 37, 40, 42, 45, 48, 51, 54, 57, 60, 63, 66, 70, 74, 77, 81}};
    public static int Gbg = 0;
    public static int q = 1;
    public static int IeGz = 2;
    public static int qi = 3;

    private static int BmAr(int i) {
        if (1 > i || i > 40) {
            throw new AssertionError();
        }
        return (i + 7) / 17 == 0 ? 8 : 16;
    }

    private static byte[] BnH(byte[] bArr, int i) {
        Deflater deflater = new Deflater();
        deflater.setLevel(9);
        deflater.setInput(bArr, 0, i);
        deflater.finish();
        try {
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(Math.min(bArr.length, i));
            try {
                byte[] bArr2 = new byte[1024];
                while (!deflater.finished()) {
                    byteArrayOutputStream.write(bArr2, 0, deflater.deflate(bArr2));
                }
                byte[] byteArray = byteArrayOutputStream.toByteArray();
                byteArrayOutputStream.close();
                return byteArray;
            } catch (Throwable th) {
                try {
                    byteArrayOutputStream.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
                throw th;
            }
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
    }

    private static void CF(ProtectedFastSSH$HomeFragment$5$1 protectedFastSSH$HomeFragment$5$1, int i, byte[] bArr, int i2, ProtectedFastSSH$HomeFragment$5$1 protectedFastSSH$HomeFragment$5$2) {
        if (1 > i2 || i2 > 30) {
            throw new AssertionError();
        }
        protectedFastSSH$HomeFragment$5$2.r(0, i2);
        for (int i3 = 0; i3 < i; i3++) {
            byte bTks = (byte) ((protectedFastSSH$HomeFragment$5$1.tks(i3) ^ protectedFastSSH$HomeFragment$5$2.tks(0)) & 255);
            md(protectedFastSSH$HomeFragment$5$2, 0, protectedFastSSH$HomeFragment$5$2, 1, i2 - 1);
            protectedFastSSH$HomeFragment$5$2.m(i2 - 1, (byte) 0);
            for (int i4 = 0; i4 < i2; i4++) {
                protectedFastSSH$HomeFragment$5$2.m(i4, (byte) ((protectedFastSSH$HomeFragment$5$2.tks(i4) ^ rj(scs(bArr[i4], bTks))) & 255));
            }
        }
    }

    public static boolean Ef(byte[] bArr, int i, int i2) {
        int iRj = rj(bArr[0]);
        return i >= 0 && i < iRj && i2 >= 0 && i2 < iRj && d(bArr, i, i2);
    }

    static int HHv(boolean z, int i, int[] iArr, int i2) {
        if (z) {
            csB(i, iArr, i2);
            i = 0;
        }
        csB(i + i2, iArr, i2);
        return w(iArr, i2);
    }

    static void It(byte[] bArr, byte[] bArr2, int i) {
        if (i < 0 || i > 7) {
            throw new AssertionError();
        }
        int iInd = ind(bArr2);
        for (int i2 = 0; i2 < iInd; i2++) {
            for (int i3 = 0; i3 < iInd; i3++) {
                if (!d(bArr, i3, i2)) {
                    boolean z = false;
                    switch (i) {
                        case 0:
                            if ((i3 + i2) % 2 == 0) {
                                z = true;
                            }
                            break;
                        case 1:
                            if (i2 % 2 == 0) {
                                z = true;
                            }
                            break;
                        case 2:
                            if (i3 % 3 == 0) {
                                z = true;
                            }
                            break;
                        case 3:
                            if ((i3 + i2) % 3 == 0) {
                                z = true;
                            }
                            break;
                        case 4:
                            if (((i3 / 3) + (i2 / 2)) % 2 == 0) {
                                z = true;
                            }
                            break;
                        case 5:
                            if (((i3 * i2) % 2) + ((i3 * i2) % 3) == 0) {
                                z = true;
                            }
                            break;
                        case 6:
                            if ((((i3 * i2) % 2) + ((i3 * i2) % 3)) % 2 == 0) {
                                z = true;
                            }
                            break;
                        case 7:
                            if ((((i3 + i2) % 2) + ((i3 * i2) % 3)) % 2 == 0) {
                                z = true;
                            }
                            break;
                        default:
                            throw new AssertionError();
                    }
                    r(bArr2, i3, i2, d(bArr2, i3, i2) ^ z);
                }
            }
        }
    }

    public static Bitmap Iu(byte[] bArr, int i, boolean z, int i2, int i3) {
        return uBC(tht(bArr, i, z), i2, i3, 6);
    }

    static void bhtm(int i, int i2, byte[] bArr) {
        if (i2 < 0 || i2 > 7) {
            throw new AssertionError();
        }
        int i3 = (new int[]{1, 0, 3, 2}[i] << 3) | i2;
        int i4 = i3;
        for (int i5 = 0; i5 < 10; i5++) {
            i4 = (i4 << 1) ^ ((i4 >>> 9) * 1335);
        }
        int i6 = ((i3 << 10) | i4) ^ 21522;
        if ((i6 >> 15) != 0) {
            throw new AssertionError();
        }
        for (int i7 = 0; i7 <= 5; i7++) {
            r(bArr, 8, i7, m(i6, i7));
        }
        r(bArr, 8, 7, m(i6, 6));
        r(bArr, 8, 8, m(i6, 7));
        r(bArr, 7, 8, m(i6, 8));
        for (int i8 = 9; i8 < 15; i8++) {
            r(bArr, 14 - i8, 8, m(i6, i8));
        }
        int iInd = ind(bArr);
        for (int i9 = 0; i9 < 8; i9++) {
            r(bArr, (iInd - 1) - i9, 8, m(i6, i9));
        }
        for (int i10 = 8; i10 < 15; i10++) {
            r(bArr, 8, (iInd - 15) + i10, m(i6, i10));
        }
        r(bArr, 8, iInd - 8, true);
    }

    public static int cHxg(int i) {
        return (tklC(26, i) - BmAr(26)) - 14;
    }

    private static int cjA(int i) {
        return (((((i * 4) + 17) * ((i * 4) + 17)) + 7) / 8) + 1;
    }

    static void csB(int i, int[] iArr, int i2) {
        if (iArr[0] == 0) {
            i += i2;
        }
        md(iArr, 1, iArr, 0, 6);
        iArr[0] = i;
    }

    private static boolean d(byte[] bArr, int i, int i2) {
        int iRj = rj(bArr[0]);
        if (21 > iRj || iRj > 177 || i < 0 || i >= iRj || i2 < 0 || i2 >= iRj) {
            throw new AssertionError();
        }
        int i3 = (i2 * iRj) + i;
        return m(rj(bArr[(i3 >>> 3) + 1]), i3 & 7);
    }

    private static void fyFi(int i, byte[] bArr) {
        if (1 > i || i > 30) {
            throw new AssertionError();
        }
        Arrays.fill(bArr, (byte) 0);
        bArr[i - 1] = 1;
        byte bScs = 1;
        for (int i2 = 0; i2 < i; i2++) {
            for (int i3 = 0; i3 < i; i3++) {
                bArr[i3] = scs(bArr[i3], bScs);
                if (i3 + 1 < i) {
                    bArr[i3] = (byte) (bArr[i3] ^ bArr[i3 + 1]);
                }
            }
            bScs = scs(bScs, (byte) 2);
        }
    }

    private static void gIJ(int i, int i2, int i3, int i4, byte[] bArr) {
        for (int i5 = 0; i5 < i4; i5++) {
            for (int i6 = 0; i6 < i3; i6++) {
                r(bArr, i + i6, i2 + i5, true);
            }
        }
    }

    public static int ind(byte[] bArr) {
        if (bArr == null) {
            throw new AssertionError();
        }
        int iRj = rj(bArr[0]);
        if (21 > iRj || iRj > 177) {
            throw new AssertionError();
        }
        return iRj;
    }

    private static void kd(byte[] bArr, int i, int i2, boolean z) {
        int iInd = ind(bArr);
        if (i < 0 || i >= iInd || i2 < 0 || i2 >= iInd) {
            return;
        }
        r(bArr, i, i2, z);
    }

    private static void l(int i, byte[] bArr) {
        int i2 = (i * 4) + 17;
        Arrays.fill(bArr, 0, (((i2 * i2) + 7) / 8) + 1, (byte) 0);
        bArr[0] = (byte) i2;
        gIJ(6, 0, 1, i2, bArr);
        gIJ(0, 6, i2, 1, bArr);
        gIJ(0, 0, 9, 9, bArr);
        gIJ(i2 - 8, 0, 8, 9, bArr);
        gIJ(0, i2 - 8, 9, 8, bArr);
        int[] iArr = new int[7];
        int iUtnd = utnd(i, iArr);
        for (int i3 = 0; i3 < iUtnd; i3++) {
            for (int i4 = 0; i4 < iUtnd; i4++) {
                if ((i3 != 0 || i4 != 0) && ((i3 != 0 || i4 != iUtnd - 1) && (i3 != iUtnd - 1 || i4 != 0))) {
                    gIJ(iArr[i3] - 2, iArr[i4] - 2, 5, 5, bArr);
                }
            }
        }
        if (i >= 7) {
            gIJ(i2 - 11, 0, 3, 6, bArr);
            gIJ(0, i2 - 11, 6, 3, bArr);
        }
    }

    static boolean m(int i, int i2) {
        return ((i >>> i2) & 1) != 0;
    }

    static void md(ProtectedFastSSH$HomeFragment$5$1 protectedFastSSH$HomeFragment$5$1, int i, ProtectedFastSSH$HomeFragment$5$1 protectedFastSSH$HomeFragment$5$2, int i2, int i3) {
        protectedFastSSH$HomeFragment$5$1.Cc(protectedFastSSH$HomeFragment$5$2.xzy(i2, i3), i);
    }

    static void md(int[] iArr, int i, int[] iArr2, int i2, int i3) {
        System.arraycopy(Arrays.copyOfRange(iArr2, i2, i2 + i3), 0, iArr, i, i3);
    }

    static byte[] mir(byte[] bArr) {
        int length = bArr.length;
        int iCHxg = cHxg(Gbg);
        while (true) {
            byte[] bArrBnH = BnH(bArr, length);
            if (bArrBnH.length <= iCHxg) {
                return bArrBnH;
            }
            length = ((int) ((iCHxg / bArrBnH.length) * length)) - 32;
        }
    }

    private static void noF(byte[] bArr, int i) {
        int i2;
        int iInd = ind(bArr);
        int i3 = 7;
        while (true) {
            if (i3 >= iInd - 7) {
                break;
            }
            r(bArr, 6, i3, false);
            r(bArr, i3, 6, false);
            i3 += 2;
        }
        for (int i4 = -4; i4 <= 4; i4++) {
            for (int i5 = -4; i5 <= 4; i5++) {
                int iAbs = Math.abs(i5);
                if (Math.abs(i4) > iAbs) {
                    iAbs = Math.abs(i4);
                }
                if (iAbs == 2 || iAbs == 4) {
                    kd(bArr, i5 + 3, i4 + 3, false);
                    kd(bArr, (iInd - 4) + i5, i4 + 3, false);
                    kd(bArr, i5 + 3, (iInd - 4) + i4, false);
                }
            }
        }
        int[] iArr = new int[7];
        int iUtnd = utnd(i, iArr);
        for (int i6 = 0; i6 < iUtnd; i6++) {
            for (int i7 = 0; i7 < iUtnd; i7++) {
                if ((i6 != 0 || i7 != 0) && ((i6 != 0 || i7 != iUtnd - 1) && (i6 != iUtnd - 1 || i7 != 0))) {
                    int i8 = -1;
                    while (i8 <= 1) {
                        int i9 = -1;
                        while (i9 <= 1) {
                            r(bArr, iArr[i6] + i9, iArr[i7] + i8, i9 == 0 && i8 == 0);
                            i9++;
                        }
                        i8++;
                    }
                }
            }
        }
        if (i >= 7) {
            int i10 = i;
            for (int i11 = 0; i11 < 12; i11++) {
                i10 = (i10 << 1) ^ ((i10 >>> 11) * 7973);
            }
            long j = (((long) i) << 12) | ((long) i10);
            if ((j >>> 18) != 0) {
                throw new AssertionError();
            }
            int i12 = 0;
            for (i2 = 6; i12 < i2; i2 = 6) {
                for (int i13 = 0; i13 < 3; i13++) {
                    int i14 = (iInd - 11) + i13;
                    r(bArr, i14, i12, (j & 1) != 0);
                    r(bArr, i12, i14, (j & 1) != 0);
                    j >>>= 1;
                }
                i12++;
            }
        }
    }

    private static void p(byte[] bArr, int i, byte[] bArr2) {
        int iInd = ind(bArr2);
        int i2 = 0;
        int i3 = iInd - 1;
        while (i3 >= 1) {
            if (i3 == 6) {
                i3 = 5;
            }
            for (int i4 = 0; i4 < iInd; i4++) {
                for (int i5 = 0; i5 < 2; i5++) {
                    int i6 = i3 - i5;
                    int i7 = (2 & (i3 + 1)) == 0 ? (iInd - 1) - i4 : i4;
                    if (!d(bArr2, i6, i7) && i2 < i * 8) {
                        r(bArr2, i6, i7, m(bArr[i2 >>> 3], 7 - (i2 & 7)));
                        i2++;
                    }
                }
            }
            i3 -= 2;
        }
        if (i2 != i * 8) {
            throw new AssertionError();
        }
    }

    private static void r(byte[] bArr, int i, int i2, boolean z) {
        int iInd = ind(bArr);
        if (21 > iInd || iInd > 177 || i < 0 || i >= iInd || i2 < 0 || i2 >= iInd) {
            System.out.printf("qrsize: %d, x: %d, y: %d\n", Integer.valueOf(iInd), Integer.valueOf(i), Integer.valueOf(i2));
        }
        if (21 > iInd || iInd > 177 || i < 0 || i >= iInd || i2 < 0 || i2 >= iInd) {
            throw new AssertionError();
        }
        int i3 = (i2 * iInd) + i;
        int i4 = i3 & 7;
        int i5 = (i3 >>> 3) + 1;
        if (z) {
            bArr[i5] = (byte) (((1 << i4) | rj(bArr[i5])) & 255);
        } else {
            bArr[i5] = (byte) (((1 << i4) ^ 255) & rj(bArr[i5]) & 255);
        }
    }

    public static int rj(byte b) {
        return b & 255;
    }

    static long s(byte[] bArr) {
        int i;
        long j;
        int iInd = ind(bArr);
        long jHHv = 0;
        int i2 = 0;
        while (true) {
            i = 7;
            j = 1;
            if (i2 >= iInd) {
                break;
            }
            boolean zD = false;
            int i3 = 0;
            int[] iArr = new int[7];
            for (int i4 = 0; i4 < iInd; i4++) {
                if (d(bArr, i4, i2) == zD) {
                    i3++;
                    if (i3 == 5) {
                        jHHv += 3;
                    } else if (i3 > 5) {
                        jHHv++;
                    }
                } else {
                    csB(i3, iArr, iInd);
                    if (!zD) {
                        jHHv += ((long) w(iArr, iInd)) * 40;
                    }
                    zD = d(bArr, i4, i2);
                    i3 = 1;
                }
            }
            jHHv += ((long) HHv(zD, i3, iArr, iInd)) * 40;
            i2++;
        }
        int i5 = 0;
        while (i5 < iInd) {
            boolean zD2 = false;
            int i6 = 0;
            int[] iArr2 = new int[i];
            int i7 = 0;
            while (i7 < iInd) {
                if (d(bArr, i5, i7) == zD2) {
                    i6++;
                    if (i6 == 5) {
                        jHHv += 3;
                    } else if (i6 > 5) {
                        jHHv += j;
                    }
                } else {
                    csB(i6, iArr2, iInd);
                    if (!zD2) {
                        jHHv += ((long) w(iArr2, iInd)) * 40;
                    }
                    zD2 = d(bArr, i5, i7);
                    i6 = 1;
                }
                i7++;
                j = 1;
            }
            jHHv += ((long) HHv(zD2, i6, iArr2, iInd)) * 40;
            i5++;
            i = 7;
            j = 1;
        }
        for (int i8 = 0; i8 < iInd - 1; i8++) {
            for (int i9 = 0; i9 < iInd - 1; i9++) {
                boolean zD3 = d(bArr, i9, i8);
                if (zD3 == d(bArr, i9 + 1, i8) && zD3 == d(bArr, i9, i8 + 1) && zD3 == d(bArr, i9 + 1, i8 + 1)) {
                    jHHv += 3;
                }
            }
        }
        int i10 = 0;
        for (int i11 = 0; i11 < iInd; i11++) {
            for (int i12 = 0; i12 < iInd; i12++) {
                if (d(bArr, i12, i11)) {
                    i10++;
                }
            }
        }
        int i13 = iInd * iInd;
        int iAbs = ((int) (((Math.abs((((long) i10) * 20) - (((long) i13) * 10)) + ((long) i13)) - 1) / ((long) i13))) - 1;
        if (iAbs < 0 || iAbs > 9) {
            throw new AssertionError();
        }
        long j2 = jHHv + (((long) iAbs) * 10);
        if (0 > j2 || j2 > 2568888) {
            throw new AssertionError();
        }
        return j2;
    }

    private static byte scs(byte b, byte b2) {
        int iRj = rj(b);
        int iRj2 = rj(b2);
        int i = 0;
        for (int i2 = 7; i2 >= 0; i2--) {
            i = ((i << 1) ^ ((i >>> 7) * 285)) ^ (((iRj2 >>> i2) & 1) * iRj);
        }
        return (byte) (i & 255);
    }

    private static int sn(int i, int i2, byte[] bArr, int i3) {
        int i4 = i2 - 1;
        while (i4 >= 0) {
            int i5 = i3 >>> 3;
            bArr[i5] = (byte) ((rj(bArr[i5]) | (((i >>> i4) & 1) << (7 - (i3 & 7)))) & 255);
            i4--;
            i3++;
        }
        return i3;
    }

    private static int tFs(int i) {
        if (1 > i || i > 40) {
            throw new AssertionError();
        }
        int i2 = (((i * 16) + 128) * i) + 64;
        if (i >= 2) {
            int i3 = (i / 7) + 2;
            i2 -= (((i3 * 25) - 10) * i3) - 55;
            if (i >= 7) {
                i2 -= 36;
            }
        }
        if (208 > i2 || i2 > 29648) {
            throw new AssertionError();
        }
        return i2;
    }

    public static byte[] tht(byte[] bArr, int i, boolean z) {
        int i2 = Hp;
        byte[] bArr2 = new byte[i2];
        byte[] bArr3 = new byte[i2];
        int iMin = Math.min(bArr.length, cHxg(i));
        System.arraycopy(bArr, 0, bArr3, 0, iMin);
        int i3 = iMin * 8;
        int i4 = 1;
        while (true) {
            int i5 = i;
            int iTklC = tklC(i4, i5) * 8;
            int iV = v(iMin, i3, i4);
            if (iV != -1 && iV <= iTklC) {
                for (int i6 = i; i6 <= qi; i6++) {
                    if (z && iV <= tklC(i4, i6) * 8) {
                        i5 = i6;
                    }
                }
                int iSn = sn(iMin, BmAr(i4), bArr2, sn(4, 4, bArr2, 0));
                for (int i7 = 0; i7 < i3; i7++) {
                    iSn = sn((rj(bArr3[i7 >>> 3]) >>> (7 - (i7 & 7))) & 1, 1, bArr2, iSn);
                }
                if (iSn != iV) {
                    throw new AssertionError();
                }
                int iTklC2 = tklC(i4, i5) * 8;
                if (iSn > iTklC2) {
                    throw new AssertionError();
                }
                int i8 = iTklC2 - iSn;
                if (i8 > 4) {
                    i8 = 4;
                }
                int iSn2 = sn(0, i8, bArr2, iSn);
                int iSn3 = sn(0, (8 - (iSn2 % 8)) % 8, bArr2, iSn2);
                if (iSn3 % 8 != 0) {
                    throw new AssertionError();
                }
                int i9 = 236;
                while (iSn3 < iTklC2) {
                    iSn3 = sn(i9, 8, bArr2, iSn3);
                    i9 ^= 253;
                }
                zy(bArr2, i4, i5, bArr3);
                l(i4, bArr2);
                p(bArr3, tFs(i4) / 8, bArr2);
                noF(bArr2, i4);
                l(i4, bArr3);
                long j = Long.MAX_VALUE;
                int i10 = -1;
                for (int i11 = 0; i11 < 8; i11++) {
                    It(bArr3, bArr2, i11);
                    bhtm(i5, i11, bArr2);
                    long jS = s(bArr2);
                    if (jS < j) {
                        i10 = i11;
                        j = jS;
                    }
                    It(bArr3, bArr2, i11);
                }
                It(bArr3, bArr2, i10);
                bhtm(i5, i10, bArr2);
                return bArr2;
            }
            if (i4 >= 40) {
                bArr2[0] = 0;
                return bArr2;
            }
            i4++;
        }
    }

    private static int tklC(int i, int i2) {
        if (i2 < 0 || i2 >= 4) {
            throw new AssertionError();
        }
        return (tFs(i) / 8) - (ed[i2][i] * smcr[i2][i]);
    }

    public static Bitmap uBC(byte[] bArr, int i, int i2, int i3) {
        int iInd = ind(bArr);
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(i, i2, Bitmap.Config.ARGB_8888);
        int[] iArr = new int[i * i2];
        float f = i / ((i3 * 2) + iInd);
        float f2 = i2 / ((i3 * 2) + iInd);
        float f3 = f * i3;
        float f4 = f2 * i3;
        for (int i4 = 0; i4 < i; i4++) {
            for (int i5 = 0; i5 < i2; i5++) {
                if (i4 < f3 || i5 < f4 || i4 > i - f3 || i5 > i2 - f4) {
                    iArr[(i5 * i) + i4] = -1;
                } else {
                    iArr[(i5 * i) + i4] = Ef(bArr, (int) ((((float) i4) - f3) / f), (int) ((((float) i5) - f4) / f2)) ? ViewCompat.MEASURED_STATE_MASK : -1;
                }
            }
        }
        bitmapCreateBitmap.setPixels(iArr, 0, i, 0, 0, i, i2);
        return bitmapCreateBitmap;
    }

    private static int utnd(int i, int[] iArr) {
        if (i == 1) {
            return 0;
        }
        int i2 = (i / 7) + 2;
        int i3 = i == 32 ? 26 : ((((i * 4) + (i2 * 2)) + 1) / ((i2 * 2) - 2)) * 2;
        int i4 = i2 - 1;
        int i5 = (i * 4) + 10;
        while (i4 >= 1) {
            iArr[i4] = i5;
            i4--;
            i5 -= i3;
        }
        iArr[0] = 6;
        return i2;
    }

    private static int v(int i, int i2, int i3) {
        if (i < 0 || i > 32767) {
            throw new AssertionError();
        }
        if (i2 < 0 || i2 > 32767) {
            throw new AssertionError();
        }
        int iBmAr = BmAr(i3);
        if (iBmAr < 0 || iBmAr > 16) {
            throw new AssertionError();
        }
        if (i >= (1 << iBmAr)) {
            return -1;
        }
        long j = 0 + ((long) iBmAr) + 4 + ((long) i2);
        if (j > 32767) {
            return -1;
        }
        return (int) j;
    }

    static int w(int[] iArr, int i) {
        int i2 = iArr[1];
        if (i2 > i * 3) {
            throw new AssertionError();
        }
        boolean z = i2 > 0 && iArr[2] == i2 && iArr[3] == i2 * 3 && iArr[4] == i2 && iArr[5] == i2;
        return ((!z || iArr[0] < i2 * 4 || iArr[6] < i2) ? 0 : 1) + ((!z || iArr[6] < i2 * 4 || iArr[0] < i2) ? 0 : 1);
    }

    private static void zy(byte[] bArr, int i, int i2, byte[] bArr2) {
        byte b = smcr[i2][i];
        byte b2 = ed[i2][i];
        int iTFs = tFs(i) / 8;
        int iTklC = tklC(i, i2);
        int i3 = b - (iTFs % b);
        int i4 = (iTFs / b) - b2;
        byte[] bArr3 = new byte[30];
        fyFi(b2, bArr3);
        ProtectedFastSSH$HomeFragment$5$1 protectedFastSSH$HomeFragment$5$1 = new ProtectedFastSSH$HomeFragment$5$1(bArr);
        ProtectedFastSSH$HomeFragment$5$1 protectedFastSSH$HomeFragment$5$2 = new ProtectedFastSSH$HomeFragment$5$1(bArr);
        int i5 = 0;
        while (i5 < b) {
            int i6 = (i5 < i3 ? 0 : 1) + i4;
            ProtectedFastSSH$HomeFragment$5$1 protectedFastSSH$HomeFragment$5$1UiGk = protectedFastSSH$HomeFragment$5$2.uiGk(iTklC);
            CF(protectedFastSSH$HomeFragment$5$1, i6, bArr3, b2, protectedFastSSH$HomeFragment$5$1UiGk);
            int i7 = 0;
            int i8 = i5;
            while (i7 < i6) {
                if (i7 == i4) {
                    i8 -= i3;
                }
                bArr2[i8] = protectedFastSSH$HomeFragment$5$1.yp(i7);
                i7++;
                i8 += b;
            }
            int i9 = 0;
            int i10 = iTklC + i5;
            while (i9 < b2) {
                bArr2[i10] = protectedFastSSH$HomeFragment$5$1UiGk.yp(i9);
                i9++;
                i10 += b;
            }
            protectedFastSSH$HomeFragment$5$1.zc(i6);
            i5++;
        }
    }
}
