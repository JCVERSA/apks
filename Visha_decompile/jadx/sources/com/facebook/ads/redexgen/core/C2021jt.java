package com.facebook.ads.redexgen.core;

import android.util.SparseArray;
import com.facebook.video.heroplayer.exocustom.MetaExoPlayerCustomization;
import com.transsion.socket.pkgdata.SocketData;
import com.transsion.vishatransfer.socket.TransferProtocol;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

public final class C2021jt implements InterfaceC1025Kc {
    public static byte[] A02;
    public static String[] A03 = {"H5L2tIFZt", "7T8ctTOgfri2uFWYkrl4fLjFw3zYZmyw", "rpSuNqLmPSNrp8BaktpsZc4frut4njZi", "OS1ujTmztQNXT6hqD6nsoX0kfRSYmmsY", "PkY6KfFeVbpCvwlFdEj", "TmaVkoyYGnCbszGh0vcMc", "p0AihzwiszaEN", "o1l4pHohEGjnpBhSGl6NtukXiQnI0CCo"};
    public final int A00;
    public final List<C2312or> A01;

    public static String A02(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A02, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 72);
        }
        return new String(bArrCopyOfRange);
    }

    /* JADX WARN: Failed to parse debug info
    java.lang.ArrayIndexOutOfBoundsException
     */
    private List<C2312or> A03(C1024Kb c1024Kb) {
        String strA02;
        int i;
        if (A05(32)) {
            return this.A01;
        }
        C4J c4j = new C4J(c1024Kb.A03);
        List<C2312or> arrayList = this.A01;
        while (c4j.A07() > 0) {
            int iA0I = c4j.A0I();
            int iA09 = c4j.A09() + c4j.A0I();
            if (iA0I == 134) {
                arrayList = new ArrayList<>();
                int iA0I2 = c4j.A0I() & 31;
                for (int i2 = 0; i2 < iA0I2; i2++) {
                    String strA0W = c4j.A0W(3);
                    int iA0I3 = c4j.A0I();
                    boolean z = (iA0I3 & 128) != 0;
                    if (z) {
                        strA02 = A02(19, 19, 47);
                        i = iA0I3 & 63;
                    } else {
                        strA02 = A02(0, 19, 57);
                        i = 1;
                    }
                    byte bA0I = (byte) c4j.A0I();
                    c4j.A0g(1);
                    List<byte[]> listA04 = null;
                    if (z) {
                        boolean z2 = (bA0I & 64) != 0;
                        if (A03[5].length() != 21) {
                            throw new RuntimeException();
                        }
                        String[] strArr = A03;
                        strArr[6] = "Fx9tcNCtSciYr";
                        strArr[4] = "fWuzF8xs7o61BMX22RC";
                        listA04 = C3U.A04(z2);
                    }
                    arrayList.add(new C2D().A11(strA02).A10(strA0W).A0Z(i).A12(listA04).A14());
                }
            }
            c4j.A0f(iA09);
        }
        return arrayList;
    }

    public static void A04() {
        A02 = new byte[]{-30, -15, -15, -19, -22, TransferProtocol.CLAZZ_TYPE_TRANSFER_CODE, -30, -11, -22, -16, -17, -80, TransferProtocol.CLAZZ_TYPE_TRANSFER_CODE, -26, -30, -82, -73, -79, -71, -40, -25, -25, -29, -32, -38, -40, -21, -32, -26, -27, -90, -38, -36, -40, -92, -82, -89, -81, 12, 27, 27, 23, 20, 14, 12, 31, 20, 26, 25, -38, 33, 25, 15, -39, 15, 33, 13, -39, 12, 20, 31, -61, -46, -46, -50, -53, -59, -61, -42, -53, -47, -48, -111, -38, SocketData.CLAZZ_TYPE_URI, -43, -59, -42, -57, -107, -105};
    }

    static {
        A04();
    }

    public C2021jt() {
        this(0);
    }

    @MetaExoPlayerCustomization("Replaces ImmutableList.of with MetaExoPlayerCustomizedCollections")
    public C2021jt(int i) {
        this(i, MetaExoPlayerCustomizedCollections.A03(new C2312or[0]));
    }

    public C2021jt(int i, List<C2312or> list) {
        this.A00 = i;
        this.A01 = list;
    }

    private KX A00(C1024Kb c1024Kb) {
        return new KX(A03(c1024Kb));
    }

    private C1030Kh A01(C1024Kb c1024Kb) {
        return new C1030Kh(A03(c1024Kb));
    }

    private boolean A05(int i) {
        return (this.A00 & i) != 0;
    }

    @Override
    public final SparseArray<InterfaceC1028Kf> A5I() {
        return new SparseArray<>();
    }

    @Override
    public final InterfaceC1028Kf A5N(int i, C1024Kb c1024Kb) {
        switch (i) {
            case 2:
            case 128:
                return new C2010ji(new C2018jq(A01(c1024Kb)));
            case 3:
            case 4:
                return new C2010ji(new C2012jk(c1024Kb.A01));
            case 15:
                if (A05(2)) {
                    return null;
                }
                return new C2010ji(new C2022ju(false, c1024Kb.A01));
            case 16:
                return new C2010ji(new C2017jp(A01(c1024Kb)));
            case 17:
                if (A05(2)) {
                    return null;
                }
                return new C2010ji(new C2013jl(c1024Kb.A01));
            case 21:
                return new C2010ji(new C2014jm());
            case 27:
                if (A05(4)) {
                    return null;
                }
                return new C2010ji(new C2016jo(A00(c1024Kb), A05(1), A05(8)));
            case 36:
                return new C2010ji(new C2015jn(A00(c1024Kb)));
            case 89:
                return new C2010ji(new C2019jr(c1024Kb.A02));
            case 129:
            case 135:
                return new C2010ji(new C2028k0(c1024Kb.A01));
            case 130:
                if (!A05(64)) {
                    return null;
                }
                break;
            case 134:
                if (A05(16)) {
                    return null;
                }
                return new C2005jd(new C2011jj(A02(61, 20, 26)));
            case 138:
                break;
            case 172:
                return new C2010ji(new C2025jx(c1024Kb.A01));
            case 257:
                return new C2005jd(new C2011jj(A02(38, 23, 99)));
            default:
                return null;
        }
        return new C2010ji(new C2020js(c1024Kb.A01));
    }
}
