package com.facebook.ads.redexgen.core;

import com.facebook.ads.androidx.media3.common.Metadata;
import com.facebook.ads.androidx.media3.extractor.metadata.mp4.SlowMotionData;
import com.hunantv.media.player.MgtvMediaPlayer;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

public final class C0980Ij {
    public static byte[] A03;
    public static String[] A04 = {"1LFyGIpszZgsQUUW5R18ay4ATJEAL43c", "dt6orGbglcsjMqs", "9FFDgagoC1", "foXErnBO9GEWWKnhx2CBLj59I1mQsasl", "8wc6iy8fDBcca8zNmQv", "", "jjxV28nHyp6my1wOvIi", "qfRjwVGa5Ot2KmC8yJE9Z4CCjcQdKZvd"};
    public static final C1984jH A05;
    public static final C1984jH A06;
    public int A01;
    public final List<C0977Ig> A02 = new ArrayList();
    public int A00 = 0;

    public static String A02(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A03, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            byte b = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 58);
            if (A04[0].charAt(18) != '1') {
                throw new RuntimeException();
            }
            A04[1] = "QzkInJPgctLD5w2";
            bArrCopyOfRange[i4] = b;
        }
        return new String(bArrCopyOfRange);
    }

    public static void A03() {
        A03 = new byte[]{45, 10, 18, 5, 8, 13, 0, 68, 55, 33, 34, 68, 10, 5, 9, 1, 56, 7, 4, 28, 38, 4, 31, 2, 4, 5, 52, 47, 10, 31, 10, 93, 123, 126, 107, 124, 81, 93, 98, 97, 121, 67, 97, 122, 103, 97, 96, 81, 76, 73, 67, 94, 120, 125, 104, 127, 82, 94, 97, 98, 122, 64, 98, 121, 100, 98, 99, 82, 73, 108, 121, 108, 50, 20, 17, 4, 19, 62, 50, 13, 14, 22, 44, 14, 21, 8, 14, 15, 62, 37, 4, 7, 13, 8, 2, 10, 4, 19, 8, 15, 6, 62, 46, 15, 65, 103, 98, 119, 96, 77, 65, 126, 125, 101, 95, 125, 102, 123, 125, 124, 77, 87, 118, 123, 102, 77, 86, 115, 102, 115};
    }

    /* JADX WARN: Failed to parse debug info
    java.lang.ArrayIndexOutOfBoundsException
     */
    private void A06(InterfaceC2101lN interfaceC2101lN, List<Metadata.Entry> list) throws IOException {
        long jA8f = interfaceC2101lN.A8f();
        int iA8G = (int) ((interfaceC2101lN.A8G() - interfaceC2101lN.A8f()) - ((long) this.A01));
        C4J c4j = new C4J(iA8G);
        interfaceC2101lN.readFully(c4j.A0l(), 0, iA8G);
        for (int i = 0; i < this.A02.size(); i++) {
            C0977Ig c0977Ig = this.A02.get(i);
            c4j.A0f((int) (c0977Ig.A02 - jA8f));
            c4j.A0g(4);
            int iA0E = c4j.A0E();
            String[] strArr = A04;
            if (strArr[6].length() != strArr[4].length()) {
                throw new RuntimeException();
            }
            A04[7] = "1HViS9NC9rn2qgqFvoB7LQiD1FLq6ChH";
            int iA00 = A00(c4j.A0W(iA0E));
            int i2 = c0977Ig.A01 - (iA0E + 8);
            switch (iA00) {
                case 2192:
                    list.add(A01(c4j, i2));
                    break;
                case 2816:
                case 2817:
                case 2819:
                case MgtvMediaPlayer.MEDIA_INFO_PREPARE_WILL_PLAYING:
                    break;
                default:
                    throw new IllegalStateException();
            }
        }
    }

    static {
        A03();
        A06 = C1984jH.A02(':');
        A05 = C1984jH.A02('*');
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:4:0x0007  */
    public static int A00(String str) throws C05802i {
        byte b;
        switch (str.hashCode()) {
            case -1711564334:
                if (!str.equals(A02(16, 15, 81))) {
                    b = -1;
                } else {
                    b = 0;
                }
                break;
            case -1332107749:
                if (!str.equals(A02(104, 26, 40))) {
                    b = -1;
                } else {
                    b = 3;
                }
                break;
            case -1251387154:
                if (!str.equals(A02(51, 21, 55))) {
                    b = -1;
                } else {
                    b = 1;
                }
                break;
            case -830665521:
                if (!str.equals(A02(72, 32, 91))) {
                    b = -1;
                } else {
                    b = 4;
                }
                break;
            case 1760745220:
                if (!str.equals(A02(31, 20, 52))) {
                    b = -1;
                } else {
                    b = 2;
                }
                break;
            default:
                b = -1;
                break;
        }
        switch (b) {
            case 0:
                return 2192;
            case 1:
                return 2816;
            case 2:
                return 2817;
            case 3:
                return 2819;
            case 4:
                return MgtvMediaPlayer.MEDIA_INFO_PREPARE_WILL_PLAYING;
            default:
                throw C05802i.A01(A02(0, 16, 94), null);
        }
    }

    public static SlowMotionData A01(C4J c4j, int i) throws C05802i {
        List<SlowMotionData.Segment> segments = new ArrayList<>();
        String dataString = c4j.A0W(i);
        List<String> listA06 = A05.A06(dataString);
        for (int i2 = 0; i2 < listA06.size(); i2++) {
            List<String> listA07 = A06.A06(listA06.get(i2));
            if (listA07.size() == 3) {
                try {
                    long j = Long.parseLong(listA07.get(0));
                    long startTimeMs = Long.parseLong(listA07.get(1));
                    segments.add(new SlowMotionData.Segment(j, startTimeMs, 1 << (Integer.parseInt(listA07.get(2)) - 1)));
                } catch (NumberFormatException e) {
                    throw C05802i.A01(null, e);
                }
            } else {
                throw C05802i.A01(null, null);
            }
        }
        return new SlowMotionData(segments);
    }

    private void A04(InterfaceC2101lN interfaceC2101lN, C0939Gt c0939Gt) throws IOException {
        C4J c4j = new C4J(8);
        interfaceC2101lN.readFully(c4j.A0l(), 0, 8);
        this.A01 = c4j.A0E() + 8;
        if (c4j.A0C() != 1397048916) {
            c0939Gt.A00 = 0L;
        } else {
            c0939Gt.A00 = interfaceC2101lN.A8f() - ((long) (this.A01 - 12));
            this.A00 = 2;
        }
    }

    private void A05(InterfaceC2101lN interfaceC2101lN, C0939Gt c0939Gt) throws IOException {
        long jA8G = interfaceC2101lN.A8G();
        int i = (this.A01 - 12) - 8;
        C4J c4j = new C4J(i);
        interfaceC2101lN.readFully(c4j.A0l(), 0, i);
        for (int i2 = 0; i2 < i / 12; i2++) {
            c4j.A0g(2);
            int i3 = c4j.A0a();
            switch (i3) {
                case 2192:
                case 2816:
                case 2817:
                case 2819:
                case MgtvMediaPlayer.MEDIA_INFO_PREPARE_WILL_PLAYING:
                    long streamLength = this.A01;
                    long j = jA8G - streamLength;
                    long streamLength2 = c4j.A0E();
                    int size = c4j.A0E();
                    this.A02.add(new C0977Ig(i3, j - streamLength2, size));
                    break;
                default:
                    c4j.A0g(8);
                    break;
            }
        }
        if (this.A02.isEmpty()) {
            c0939Gt.A00 = 0L;
            return;
        }
        this.A00 = 3;
        long streamLength3 = this.A02.get(0).A02;
        c0939Gt.A00 = streamLength3;
    }

    public final int A07(InterfaceC2101lN interfaceC2101lN, C0939Gt c0939Gt, List<Metadata.Entry> slowMotionMetadataEntries) throws IOException {
        long j = 0;
        switch (this.A00) {
            case 0:
                long jA8G = interfaceC2101lN.A8G();
                if (jA8G != -1 && jA8G >= 8) {
                    j = jA8G - 8;
                }
                c0939Gt.A00 = j;
                this.A00 = 1;
                return 1;
            case 1:
                A04(interfaceC2101lN, c0939Gt);
                return 1;
            case 2:
                A05(interfaceC2101lN, c0939Gt);
                return 1;
            case 3:
                A06(interfaceC2101lN, slowMotionMetadataEntries);
                c0939Gt.A00 = 0L;
                return 1;
            default:
                throw new IllegalStateException();
        }
    }

    public final void A08() {
        this.A02.clear();
        this.A00 = 0;
    }
}
