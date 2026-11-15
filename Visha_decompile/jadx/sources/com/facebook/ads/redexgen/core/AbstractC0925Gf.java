package com.facebook.ads.redexgen.core;

import com.facebook.ads.androidx.media3.common.Metadata;
import com.facebook.ads.androidx.media3.extractor.metadata.flac.PictureFrame;
import com.facebook.video.heroplayer.exocustom.MetaExoPlayerCustomization;
import java.io.IOException;
import java.util.Arrays;
import java.util.List;

@MetaExoPlayerCustomization("Replaces ImmutableList.of with MetaExoPlayerCustomizedCollections")
public abstract class AbstractC0925Gf {
    public static byte[] A00;
    public static String[] A01 = {"jaTfwC0cI533jMSLFdbnMioREeamNCq8", "oxYS1uYBjADPdRUL4vsR12VppXrr4BxP", "o9bG5hJtiKIeIPN2CaXw8mH6vllsT8Pg", "8s8MZLb5TSIkvuwEDH", "W6kvFYauQlSyWCDb8CQhWvVbWb1Alqwq", "aw37R0CiGakhFrBRrvipxmkRXRxeCTzI", "Y2zfIeYjiYIsjSkQMxD0jwTDeetOAull", "DaiobFePrAznnRWN86LDTmrCW9O2HPvR"};

    public static String A06(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A00, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 112);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A08() {
        A00 = new byte[]{5, 34, 42, 47, 38, 39, 99, 55, 44, 99, 49, 38, 34, 39, 99, 5, 15, 2, 0, 99, 48, 55, 49, 38, 34, 46, 99, 46, 34, 49, 40, 38, 49, 109, 125, 82, 73, 72, 79, 27, 93, 73, 90, 86, 94, 27, 95, 84, 94, 72, 27, 85, 84, 79, 27, 72, 79, 90, 73, 79, 27, 76, 82, 79, 83, 27, 72, 66, 85, 88, 27, 88, 84, 95, 94, 21};
    }

    static {
        A08();
    }

    public static int A00(InterfaceC2101lN interfaceC2101lN) throws IOException {
        interfaceC2101lN.AI1();
        C4J c4j = new C4J(2);
        interfaceC2101lN.AG9(c4j.A0l(), 0, 2);
        int syncCode = c4j.A0M();
        int frameStartMarker = syncCode >> 2;
        if (frameStartMarker == 16382) {
            interfaceC2101lN.AI1();
            return syncCode;
        }
        interfaceC2101lN.AI1();
        throw C05802i.A01(A06(34, 42, 75), null);
    }

    public static Metadata A01(InterfaceC2101lN interfaceC2101lN, boolean z) throws IOException {
        InterfaceC0948Hc id3FramePredicate;
        if (z) {
            id3FramePredicate = null;
        } else {
            id3FramePredicate = C07328i.A03;
        }
        Metadata metadataA00 = new C0930Gk().A00(interfaceC2101lN, id3FramePredicate);
        if (metadataA00 == null || metadataA00.A02() == 0) {
            return null;
        }
        return metadataA00;
    }

    public static Metadata A02(InterfaceC2101lN interfaceC2101lN, boolean z) throws IOException {
        interfaceC2101lN.AI1();
        long jA8a = interfaceC2101lN.A8a();
        Metadata metadataA01 = A01(interfaceC2101lN, z);
        interfaceC2101lN.AJJ((int) (interfaceC2101lN.A8a() - jA8a));
        return metadataA01;
    }

    public static C0926Gg A03(C4J c4j) {
        c4j.A0g(1);
        int iA0K = c4j.A0K();
        int length = c4j.A09();
        long j = ((long) length) + ((long) iA0K);
        int i = iA0K / 18;
        long[] jArrCopyOf = new long[i];
        long[] jArrCopyOf2 = new long[i];
        for (int i2 = 0; i2 < i; i2++) {
            long jA0P = c4j.A0P();
            if (jA0P == -1) {
                jArrCopyOf = Arrays.copyOf(jArrCopyOf, i2);
                jArrCopyOf2 = Arrays.copyOf(jArrCopyOf2, i2);
                break;
            }
            jArrCopyOf[i2] = jA0P;
            jArrCopyOf2[i2] = c4j.A0P();
            c4j.A0g(2);
        }
        int length2 = c4j.A09();
        c4j.A0g((int) (j - ((long) length2)));
        return new C0926Gg(jArrCopyOf, jArrCopyOf2);
    }

    public static C0926Gg A04(InterfaceC2101lN interfaceC2101lN, int i) throws IOException {
        C4J c4j = new C4J(i);
        interfaceC2101lN.readFully(c4j.A0l(), 0, i);
        return A03(c4j);
    }

    public static C0927Gh A05(InterfaceC2101lN interfaceC2101lN) throws IOException {
        byte[] bArr = new byte[38];
        interfaceC2101lN.readFully(bArr, 0, 38);
        return new C0927Gh(bArr, 4);
    }

    public static List<String> A07(InterfaceC2101lN interfaceC2101lN, int i) throws IOException {
        C4J c4j = new C4J(i);
        interfaceC2101lN.readFully(c4j.A0l(), 0, i);
        c4j.A0g(4);
        return Arrays.asList(H8.A05(c4j, false, false).A02);
    }

    public static void A09(InterfaceC2101lN interfaceC2101lN) throws IOException {
        C4J c4j = new C4J(4);
        interfaceC2101lN.readFully(c4j.A0l(), 0, 4);
        if (c4j.A0Q() == 1716281667) {
        } else {
            throw C05802i.A01(A06(0, 34, 51), null);
        }
    }

    public static boolean A0A(InterfaceC2101lN interfaceC2101lN) throws IOException {
        C4J c4j = new C4J(4);
        interfaceC2101lN.AG9(c4j.A0l(), 0, 4);
        return c4j.A0Q() == 1716281667;
    }

    public static boolean A0B(InterfaceC2101lN interfaceC2101lN, C0924Ge c0924Ge) throws IOException {
        interfaceC2101lN.AI1();
        C4I c4i = new C4I(new byte[4]);
        interfaceC2101lN.AG9(c4i.A00, 0, 4);
        boolean zA0H = c4i.A0H();
        int iA04 = c4i.A04(7);
        int iA05 = c4i.A04(24) + 4;
        if (iA04 == 0) {
            C0927Gh c0927GhA05 = A05(interfaceC2101lN);
            String[] strArr = A01;
            if (strArr[1].charAt(0) != strArr[2].charAt(0)) {
                throw new RuntimeException();
            }
            String[] strArr2 = A01;
            strArr2[1] = "oF2KQg39ZEK5V6OHUZM6u4PkuH0D3J87";
            strArr2[2] = "opWNo3Pnwj2PHBTvqD8r5OWylRW508kK";
            c0924Ge.A00 = c0927GhA05;
        } else {
            C0927Gh c0927Gh = c0924Ge.A00;
            if (c0927Gh != null) {
                if (iA04 != 3) {
                    if (iA04 == 4) {
                        c0924Ge.A00 = c0927Gh.A0B(A07(interfaceC2101lN, iA05));
                    } else if (iA04 == 6) {
                        C4J c4j = new C4J(iA05);
                        interfaceC2101lN.readFully(c4j.A0l(), 0, iA05);
                        c4j.A0g(4);
                        PictureFrame pictureFrame = PictureFrame.A00(c4j);
                        c0924Ge.A00 = c0927Gh.A0A(MetaExoPlayerCustomizedCollections.A03(pictureFrame));
                    } else {
                        interfaceC2101lN.AJJ(iA05);
                    }
                } else {
                    c0924Ge.A00 = c0927Gh.A09(A04(interfaceC2101lN, iA05));
                }
            } else {
                throw new IllegalArgumentException();
            }
        }
        return zA0H;
    }
}
