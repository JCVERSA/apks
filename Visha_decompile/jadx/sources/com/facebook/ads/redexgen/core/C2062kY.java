package com.facebook.ads.redexgen.core;

import android.net.Uri;
import android.support.v4.media.session.PlaybackStateCompat;
import android.util.Pair;
import androidx.media3.common.C;
import androidx.media3.container.Mp4Box;
import androidx.media3.extractor.mp4.Sniffer;
import com.facebook.ads.androidx.media3.common.Metadata;
import com.facebook.ads.androidx.media3.extractor.metadata.mp4.MotionPhotoMetadata;
import com.facebook.ads.androidx.media3.extractor.mp4.Mp4Extractor;
import com.facebook.video.heroplayer.exocustom.MetaExoPlayerCustomization;
import java.io.IOException;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Map;
import okio.Utf8;

public final class C2062kY implements GX, InterfaceC0942Gw {
    public static byte[] A0Q;
    public static String[] A0R = {"uzhMW", "LbToze1ZyMStOzMPMggUyU89k761Fydj", "roznHbdGo", "zeOiwqyw9G80TO", "hwgMtT9WWej", "AZ5CtgA3jsgDmrh", "c4g75mNjYzBkznfgxB8HcDFPfSogi", "Prtl1ARtkjOsoD"};
    public static final InterfaceC0921Gb A0S;
    public int A00;
    public int A01;
    public int A02;
    public int A03;
    public int A04;
    public int A05;
    public int A06;
    public int A07;
    public int A08;
    public long A09;

    @MetaExoPlayerCustomization(type = {"NEW_CLASS_ARG"}, value = "D54927862 get video/audio duration for progressive")
    public long A0A;
    public long A0B;

    @MetaExoPlayerCustomization(type = {"NEW_CLASS_ARG"}, value = "D54927862 get video/audio duration for progressive")
    public long A0C;
    public C4J A0D;
    public GY A0E;
    public MotionPhotoMetadata A0F;
    public C0973Ic[] A0G;
    public long[][] A0H;
    public final int A0I;
    public final C4J A0J;
    public final C4J A0K;
    public final C4J A0L;
    public final C4J A0M;
    public final C0980Ij A0N;
    public final ArrayDeque<C2073kj> A0O;
    public final List<Metadata.Entry> A0P;

    /* JADX WARN: Code duplicated, block: B:24:0x0093  */
    /* JADX WARN: Code duplicated, block: B:27:0x00ae  */
    /* JADX WARN: Code duplicated, block: B:31:0x00c7  */
    /* JADX WARN: Code duplicated, block: B:33:0x00f1  */
    /* JADX WARN: Code duplicated, block: B:35:0x0107  */
    /* JADX WARN: Code duplicated, block: B:37:0x010b  */
    /* JADX WARN: Code duplicated, block: B:41:0x0121 A[LOOP:1: B:39:0x011d->B:41:0x0121, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:42:0x0139 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:43:0x013b  */
    /* JADX WARN: Code duplicated, block: B:49:0x016a  */
    /* JADX WARN: Code duplicated, block: B:51:0x0178  */
    /* JADX WARN: Code duplicated, block: B:53:0x018b  */
    /* JADX WARN: Code duplicated, block: B:56:0x019f  */
    /* JADX WARN: Code duplicated, block: B:58:0x00db A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:59:0x015a A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:60:0x00b2 A[SYNTHETIC] */
    /* JADX WARN: Failed to parse debug info
    java.lang.ArrayIndexOutOfBoundsException
     */
    private int A03(InterfaceC2101lN interfaceC2101lN, C0939Gt c0939Gt) throws IOException {
        long j;
        int i;
        int i2;
        byte[] bArrA0l;
        int i3;
        int i4;
        int iA0C;
        long jA8f = interfaceC2101lN.A8f();
        if (this.A08 == -1) {
            this.A08 = A01(jA8f);
            if (this.A08 == -1) {
                return -1;
            }
        }
        C0973Ic c0973Ic = this.A0G[this.A08];
        H1 h1 = c0973Ic.A01;
        int i5 = c0973Ic.A00;
        long j2 = c0973Ic.A04.A06[i5];
        int i6 = c0973Ic.A04.A05[i5];
        H2 h2 = c0973Ic.A02;
        long j3 = (j2 - jA8f) + ((long) this.A05);
        if (j3 < 0 || j3 >= PlaybackStateCompat.ACTION_SET_REPEAT_MODE) {
            c0939Gt.A00 = j2;
            return 1;
        }
        int i7 = c0973Ic.A03.A02;
        if (A0R[2].length() != 19) {
            A0R[6] = "rX6gisAdcV7LBeXwmOhQV8Eb98OXk";
            if (i7 == 1) {
                j3 += 8;
                if (A0R[6].length() == 29) {
                    String[] strArr = A0R;
                    strArr[3] = "KKgaKTwS1RwNPE";
                    strArr[7] = "5hDvshmtbzc6vz";
                    i6 -= 8;
                    interfaceC2101lN.AJJ((int) j3);
                    if (c0973Ic.A03.A01 != 0) {
                        bArrA0l = this.A0K.A0l();
                        bArrA0l[0] = 0;
                        bArrA0l[1] = 0;
                        bArrA0l[2] = 0;
                        i3 = c0973Ic.A03.A01;
                        i4 = 4 - c0973Ic.A03.A01;
                        while (this.A06 < i6) {
                            if (this.A07 == 0) {
                                interfaceC2101lN.readFully(bArrA0l, i4, i3);
                                this.A05 += i3;
                                this.A0K.A0f(0);
                                iA0C = this.A0K.A0C();
                                if (iA0C >= 0) {
                                    throw C05802i.A01(A09(48, 18, 118), null);
                                }
                                this.A07 = iA0C;
                                this.A0L.A0f(0);
                                h1.AI7(this.A0L, 4);
                                this.A06 += 4;
                                i6 += i4;
                            } else {
                                int iAI5 = h1.AI5(interfaceC2101lN, this.A07, false);
                                this.A05 += iAI5;
                                this.A06 += iAI5;
                                this.A07 -= iAI5;
                            }
                        }
                    } else {
                        if (A09(66, 9, 68).equals(c0973Ic.A03.A07.A0W)) {
                            if (this.A06 == 0) {
                                GI.A07(i6, this.A0M);
                                h1.AI7(this.A0M, 7);
                                this.A06 += 7;
                            }
                            i6 += 7;
                        } else if (h2 != null) {
                            h2.A03(interfaceC2101lN);
                        }
                        while (this.A06 < i6) {
                            int iAI6 = h1.AI5(interfaceC2101lN, i6 - this.A06, false);
                            this.A05 += iAI6;
                            this.A06 += iAI6;
                            this.A07 -= iAI6;
                        }
                    }
                    j = c0973Ic.A04.A07[i5];
                    i = c0973Ic.A04.A04[i5];
                    if (A0R[4].length() == 11) {
                        String[] strArr2 = A0R;
                        strArr2[5] = "dniiMzQMBKOANx9";
                        strArr2[0] = "Fj7cY";
                        if (h2 != null) {
                            i2 = 0;
                            h2.A04(h1, j, i, i6, 0, null);
                            if (i5 + 1 == c0973Ic.A04.A01) {
                                h2.A05(h1, null);
                            }
                        } else {
                            i2 = 0;
                            h1.AIA(j, i, i6, 0, null);
                        }
                        c0973Ic.A00++;
                        this.A08 = -1;
                        this.A05 = i2;
                        this.A06 = i2;
                        this.A07 = i2;
                        return i2;
                    }
                }
            } else {
                interfaceC2101lN.AJJ((int) j3);
                if (c0973Ic.A03.A01 != 0) {
                    bArrA0l = this.A0K.A0l();
                    bArrA0l[0] = 0;
                    bArrA0l[1] = 0;
                    bArrA0l[2] = 0;
                    i3 = c0973Ic.A03.A01;
                    i4 = 4 - c0973Ic.A03.A01;
                    while (this.A06 < i6) {
                        if (this.A07 == 0) {
                            interfaceC2101lN.readFully(bArrA0l, i4, i3);
                            this.A05 += i3;
                            this.A0K.A0f(0);
                            iA0C = this.A0K.A0C();
                            if (iA0C >= 0) {
                                throw C05802i.A01(A09(48, 18, 118), null);
                            }
                            this.A07 = iA0C;
                            this.A0L.A0f(0);
                            h1.AI7(this.A0L, 4);
                            this.A06 += 4;
                            i6 += i4;
                        } else {
                            int iAI7 = h1.AI5(interfaceC2101lN, this.A07, false);
                            this.A05 += iAI7;
                            this.A06 += iAI7;
                            this.A07 -= iAI7;
                        }
                    }
                } else {
                    if (A09(66, 9, 68).equals(c0973Ic.A03.A07.A0W)) {
                        if (this.A06 == 0) {
                            GI.A07(i6, this.A0M);
                            h1.AI7(this.A0M, 7);
                            this.A06 += 7;
                        }
                        i6 += 7;
                    } else if (h2 != null) {
                        h2.A03(interfaceC2101lN);
                    }
                    while (this.A06 < i6) {
                        int iAI8 = h1.AI5(interfaceC2101lN, i6 - this.A06, false);
                        this.A05 += iAI8;
                        this.A06 += iAI8;
                        this.A07 -= iAI8;
                    }
                }
                j = c0973Ic.A04.A07[i5];
                i = c0973Ic.A04.A04[i5];
                if (A0R[4].length() == 11) {
                    String[] strArr3 = A0R;
                    strArr3[5] = "dniiMzQMBKOANx9";
                    strArr3[0] = "Fj7cY";
                    if (h2 != null) {
                        i2 = 0;
                        h2.A04(h1, j, i, i6, 0, null);
                        if (i5 + 1 == c0973Ic.A04.A01) {
                            h2.A05(h1, null);
                        }
                    } else {
                        i2 = 0;
                        h1.AIA(j, i, i6, 0, null);
                    }
                    c0973Ic.A00++;
                    this.A08 = -1;
                    this.A05 = i2;
                    this.A06 = i2;
                    this.A07 = i2;
                    return i2;
                }
            }
        }
        throw new RuntimeException();
    }

    public static String A09(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A0Q, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 83);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A0C() {
        A0Q = new byte[]{-47, 4, -1, -3, -80, 3, -7, 10, -11, -80, -4, -11, 3, 3, -80, 4, -8, -15, -2, -80, -8, -11, -15, -12, -11, 2, -80, -4, -11, -2, -9, 4, -8, -80, -72, 5, -2, 3, 5, 0, 0, -1, 2, 4, -11, -12, -71, -66, 18, 55, Utf8.REPLACEMENT_BYTE, 42, 53, 50, 45, -23, 23, 10, 21, -23, 53, 46, 55, 48, 61, 49, -8, 12, -5, 0, 6, -58, -8, -6, -53, 49, 69, 52, 57, Utf8.REPLACEMENT_BYTE, -1, 68, 66, 69, 53, -3, 56, 52};
    }

    static {
        A0C();
        A0S = new InterfaceC0921Gb() {
            @Override
            public final GX[] A5F() {
                return C2062kY.A0M();
            }

            @Override
            public final GX[] A5G(Uri uri, Map map) {
                return AbstractC0920Ga.A01(this, uri, map);
            }
        };
    }

    public C2062kY() {
        this(0);
    }

    public C2062kY(int i) {
        this.A0I = i;
        this.A04 = (i & 4) != 0 ? 3 : 0;
        this.A0N = new C0980Ij();
        this.A0P = new ArrayList();
        this.A0J = new C4J(16);
        this.A0O = new ArrayDeque<>();
        this.A0L = new C4J(AbstractC0936Gq.A03);
        this.A0K = new C4J(4);
        this.A0M = new C4J();
        this.A08 = -1;
        this.A0E = GY.A00;
        this.A0G = new C0973Ic[0];
    }

    public static int A00(int i) {
        switch (i) {
            case Sniffer.BRAND_HEIC:
                return 2;
            case Sniffer.BRAND_QUICKTIME:
                if (A0R[6].length() != 29) {
                    throw new RuntimeException();
                }
                A0R[1] = "rbgKKZbH0NS3XFJda55b1nN6iCZjcLPR";
                return 1;
            default:
                if (A0R[6].length() != 29) {
                    throw new RuntimeException();
                }
                A0R[4] = "05jGjYjRxbz";
                return 0;
        }
    }

    private int A01(long j) {
        long j2 = Long.MAX_VALUE;
        int preferredTrackIndex = 1;
        int i = -1;
        long sampleOffset = Long.MAX_VALUE;
        long j3 = Long.MAX_VALUE;
        int i2 = 1;
        int trackIndex = -1;
        int i3 = 0;
        while (true) {
            C0973Ic[] c0973IcArr = this.A0G;
            String[] strArr = A0R;
            if (strArr[3].length() != strArr[7].length()) {
                throw new RuntimeException();
            }
            A0R[6] = "Fcko3uaud46cO6nUcug7HhLZFNYBY";
            if (i3 >= c0973IcArr.length) {
                if (j3 == Long.MAX_VALUE || i2 == 0) {
                    return i;
                }
                long j4 = 10485760 + j3;
                if (A0R[1].charAt(1) == 'b') {
                    A0R[1] = "AbIM1W3wiFJMRqsWOI3P0CqvLybO2M00";
                    if (sampleOffset < j4) {
                        return i;
                    }
                } else if (sampleOffset < j4) {
                    return i;
                }
                return trackIndex;
            }
            C0973Ic c0973Ic = this.A0G[i3];
            int i4 = c0973Ic.A00;
            if (i4 != c0973Ic.A04.A01) {
                long j5 = c0973Ic.A04.A06[i4];
                long minAccumulatedBytes = ((long[][]) AbstractC06244a.A0f(this.A0H))[i3][i4];
                long j6 = j5 - j;
                int i5 = (j6 < 0 || j6 >= PlaybackStateCompat.ACTION_SET_REPEAT_MODE) ? 1 : 0;
                if ((i5 == 0 && preferredTrackIndex != 0) || (i5 == preferredTrackIndex && j6 < j2)) {
                    preferredTrackIndex = i5;
                    j2 = j6;
                    i = i3;
                    if (A0R[6].length() != 29) {
                        String[] strArr2 = A0R;
                        strArr2[5] = "nNk7RawiIyahd9Y";
                        strArr2[0] = "017pL";
                        sampleOffset = minAccumulatedBytes;
                    } else {
                        A0R[1] = "1bC0in6G1ApWSL3PegJBmoVzHl6EE3tw";
                        sampleOffset = minAccumulatedBytes;
                    }
                }
                if (minAccumulatedBytes < j3) {
                    j3 = minAccumulatedBytes;
                    i2 = i5;
                    trackIndex = i3;
                }
            }
            i3++;
        }
    }

    public static int A02(C4J c4j) {
        c4j.A0f(8);
        int majorBrand = A00(c4j.A0C());
        if (majorBrand != 0) {
            return majorBrand;
        }
        c4j.A0g(4);
        while (c4j.A07() > 0) {
            int majorBrand2 = A00(c4j.A0C());
            if (majorBrand2 != 0) {
                return majorBrand2;
            }
        }
        return 0;
    }

    private int A04(InterfaceC2101lN interfaceC2101lN, C0939Gt c0939Gt) throws IOException {
        int iA07 = this.A0N.A07(interfaceC2101lN, c0939Gt, this.A0P);
        if (iA07 == 1 && c0939Gt.A00 == 0) {
            A0A();
        }
        return iA07;
    }

    public static int A05(C0986Ip c0986Ip, long j) {
        int iA00 = c0986Ip.A00(j);
        if (iA00 == -1) {
            return c0986Ip.A01(j);
        }
        return iA00;
    }

    public static long A06(C0986Ip c0986Ip, long j, long j2) {
        int iA05 = A05(c0986Ip, j);
        if (iA05 == -1) {
            return j2;
        }
        return Math.min(c0986Ip.A06[iA05], j2);
    }

    private final C0941Gv A07(long j, int i) {
        long jA06;
        long j2;
        int mainTrackIndex;
        if (this.A0G.length == 0) {
            return new C0941Gv(C0943Gx.A04);
        }
        long j3 = C.TIME_UNSET;
        long jA07 = -1;
        int i2 = i != -1 ? i : this.A03;
        if (i2 != -1) {
            C0986Ip c0986Ip = this.A0G[i2].A04;
            int iA05 = A05(c0986Ip, j);
            if (iA05 == -1) {
                return new C0941Gv(C0943Gx.A04);
            }
            j2 = c0986Ip.A07[iA05];
            jA06 = c0986Ip.A06[iA05];
            if (A0R[6].length() != 29) {
                throw new RuntimeException();
            }
            A0R[1] = "zbT5rN6sguJCvWwII8HLCHwSkH7sQNQT";
            if (j2 < j && iA05 < c0986Ip.A01 - 1 && (mainTrackIndex = c0986Ip.A01(j)) != -1 && mainTrackIndex != iA05) {
                j3 = c0986Ip.A07[mainTrackIndex];
                jA07 = c0986Ip.A06[mainTrackIndex];
            }
        } else {
            jA06 = Long.MAX_VALUE;
            if (A0R[4].length() != 11) {
                j2 = j;
            } else {
                A0R[2] = "SenK5aC";
                j2 = j;
            }
        }
        if (i == -1) {
            for (int i3 = 0; i3 < this.A0G.length; i3++) {
                if (i3 != this.A03) {
                    C0986Ip sampleTable = this.A0G[i3].A04;
                    jA06 = A06(sampleTable, j2, jA06);
                    if (j3 != C.TIME_UNSET) {
                        jA07 = A06(sampleTable, j3, jA07);
                    }
                }
            }
        }
        C0943Gx c0943Gx = new C0943Gx(j2, jA06);
        if (j3 == C.TIME_UNSET) {
            return new C0941Gv(c0943Gx);
        }
        return new C0941Gv(c0943Gx, new C0943Gx(j3, jA07));
    }

    public static C0983Im A08(C0983Im c0983Im) {
        return c0983Im;
    }

    private void A0A() {
        this.A04 = 0;
        this.A00 = 0;
    }

    private void A0B() {
        if (this.A02 == 2 && (this.A0I & 2) != 0) {
            this.A0E.AJh(0, 4).A6W(new C2D().A0v(this.A0F == null ? null : new Metadata(this.A0F)).A14());
            this.A0E.A6G();
            this.A0E.AIN(new C2096lI(C.TIME_UNSET));
        }
    }

    private void A0D(long j) throws C05802i {
        while (!this.A0O.isEmpty() && this.A0O.peek().A00 == j) {
            C2073kj c2073kjPop = this.A0O.pop();
            if (((II) c2073kjPop).A00 == 1836019574) {
                A0G(c2073kjPop);
                this.A0O.clear();
                this.A04 = 2;
            } else if (!this.A0O.isEmpty()) {
                C2073kj containerAtom = this.A0O.peek();
                containerAtom.A08(c2073kjPop);
            }
        }
        if (this.A04 != 2) {
            A0A();
        }
    }

    private void A0E(long j) {
        if (this.A01 == 1836086884) {
            this.A0F = new MotionPhotoMetadata(0L, j, C.TIME_UNSET, j + ((long) this.A00), this.A09 - ((long) this.A00));
        }
    }

    private void A0F(InterfaceC2101lN interfaceC2101lN) throws IOException {
        this.A0M.A0d(8);
        interfaceC2101lN.AG9(this.A0M.A0l(), 0, 8);
        IO.A0Q(this.A0M);
        interfaceC2101lN.AJJ(this.A0M.A09());
        interfaceC2101lN.AI1();
    }

    @MetaExoPlayerCustomization(type = {"FEATURE_LOGIC"}, value = "Adding average bitrate calculation logic")
    private void A0G(C2073kj c2073kj) throws C05802i {
        int i;
        int size = -1;
        long jMax = C.TIME_UNSET;
        long j = C.TIME_UNSET;
        long j2 = C.TIME_UNSET;
        List<Mp4Extractor.Mp4Track> tracks = new ArrayList<>();
        Metadata udtaMetaMetadata = null;
        Metadata metadata = null;
        boolean z = this.A02 == 1;
        C0928Gi c0928Gi = new C0928Gi();
        C2072ki c2072kiA07 = c2073kj.A07(Mp4Box.TYPE_udta);
        if (c2072kiA07 != null) {
            Pair<Metadata, Metadata> pairA0A = IO.A0A(c2072kiA07);
            udtaMetaMetadata = (Metadata) pairA0A.first;
            metadata = (Metadata) pairA0A.second;
            if (udtaMetaMetadata != null) {
                c0928Gi.A05(udtaMetaMetadata);
            }
        }
        Metadata metadataA0F = null;
        C2073kj c2073kjA06 = c2073kj.A06(Mp4Box.TYPE_meta);
        if (c2073kjA06 != null) {
            metadataA0F = IO.A0F(c2073kjA06);
        }
        List<C0986Ip> listA0O = IO.A0O(c2073kj, c0928Gi, C.TIME_UNSET, null, (this.A0I & 1) != 0, z, new InterfaceC1957ip() {
            @Override
            public final Object A43(Object obj) {
                return C2062kY.A08((C0983Im) obj);
            }
        });
        int trackCount = listA0O.size();
        for (int i2 = 0; i2 < trackCount; i2++) {
            C0986Ip c0986Ip = listA0O.get(i2);
            int trackCount2 = c0986Ip.A01;
            if (trackCount2 == 0) {
                int i3 = A0R[1].charAt(1);
                if (i3 != 98) {
                    throw new RuntimeException();
                }
                A0R[1] = "ibvFTefsgA7pkzOq8AzNcMz9gVb8PR75";
            } else {
                C0983Im track = c0986Ip.A03;
                GY gy = this.A0E;
                int trackCount3 = track.A03;
                C0973Ic c0973Ic = new C0973Ic(track, c0986Ip, gy.AJh(i2, trackCount3));
                long j3 = track.A04 != C.TIME_UNSET ? track.A04 : c0986Ip.A02;
                jMax = Math.max(jMax, j3);
                if (1 == track.A03) {
                    j2 = j3;
                } else if (2 == track.A03) {
                    j = j3;
                }
                if (A09(75, 13, 125).equals(track.A07.A0W)) {
                    int i4 = c0986Ip.A00;
                    if (A0R[6].length() != 29) {
                        throw new RuntimeException();
                    }
                    A0R[6] = "30Puiqoz9JCJMsN9BhlLDaWtr32u3";
                    i = i4 * 16;
                } else {
                    i = c0986Ip.A00 + 30;
                }
                C2D formatBuilder = track.A07.A07();
                formatBuilder.A0h(i);
                if (track.A03 == 2 && j3 > 0 && c0986Ip.A01 > 1) {
                    formatBuilder.A0X(c0986Ip.A01 / (j3 / 1000000.0f));
                }
                if (jMax > 0 && c0986Ip.A01 > 0) {
                    int i5 = c0986Ip.A05.length;
                    if (i5 == c0986Ip.A01) {
                        long j4 = 0;
                        for (int i6 = 0; i6 < sampleIndex; i6++) {
                            int sampleIndex = c0986Ip.A05[i6];
                            j4 += (long) sampleIndex;
                        }
                        formatBuilder.A0a((int) ((8000000 * j4) / jMax));
                    }
                }
                int i7 = track.A03;
                IZ.A0D(i7, c0928Gi, formatBuilder);
                int i8 = track.A03;
                Metadata[] metadataArr = new Metadata[2];
                metadataArr[0] = metadata;
                metadataArr[1] = this.A0P.isEmpty() ? null : new Metadata(this.A0P);
                IZ.A0C(i8, udtaMetaMetadata, metadataA0F, formatBuilder, metadataArr);
                c0973Ic.A01.A6W(formatBuilder.A14());
                int i9 = track.A03;
                if (i9 == 2 && size == -1) {
                    size = tracks.size();
                }
                tracks.add(c0973Ic);
            }
        }
        this.A03 = size;
        this.A0B = jMax;
        this.A0C = j;
        this.A0A = j2;
        this.A0G = (C0973Ic[]) tracks.toArray(new C0973Ic[0]);
        this.A0H = A0N(this.A0G);
        this.A0E.A6G();
        this.A0E.AIN(this);
    }

    private void A0H(C0973Ic c0973Ic, long j) {
        C0986Ip c0986Ip = c0973Ic.A04;
        int sampleIndex = c0986Ip.A00(j);
        if (sampleIndex == -1) {
            sampleIndex = c0986Ip.A01(j);
        }
        c0973Ic.A00 = sampleIndex;
        if (A0R[2].length() == 19) {
            throw new RuntimeException();
        }
        A0R[2] = "DxqZc2lJMNLNZhW19Xb8kO";
    }

    public static boolean A0I(int i) {
        return i == 1836019574 || i == 1953653099 || i == 1835297121 || i == 1835626086 || i == 1937007212 || i == 1701082227 || i == 1835365473;
    }

    /* JADX WARN: Code duplicated, block: B:32:0x006f  */
    public static boolean A0J(int i) {
        if (i != 1835296868 && i != 1836476516) {
            if (A0R[4].length() != 11) {
                throw new RuntimeException();
            }
            String[] strArr = A0R;
            strArr[3] = "UHuXZ9PGVGxrhu";
            strArr[7] = "Sv1JTBT1egKeuo";
            if (i != 1751411826 && i != 1937011556 && i != 1937011827 && i != 1937011571 && i != 1668576371 && i != 1701606260 && i != 1937011555 && i != 1937011578 && i != 1937013298) {
                if (A0R[2].length() != 19) {
                    A0R[6] = "0EWWhWMRQ7MgS85x4CKboIorprSqD";
                    if (i != 1937007471) {
                        if (i == 1668232756 && i != 1953196132 && i != 1718909296 && i != 1969517665 && i != 1801812339 && i != 1768715124) {
                            return false;
                        }
                    }
                } else if (i != 1937007471) {
                    if (i == 1668232756) {
                    }
                }
            }
        }
        return true;
    }

    private boolean A0K(InterfaceC2101lN interfaceC2101lN) throws IOException {
        C2073kj containerAtom;
        if (this.A00 == 0) {
            if (!interfaceC2101lN.AGh(this.A0J.A0l(), 0, 8, true)) {
                A0B();
                return false;
            }
            this.A00 = 8;
            this.A0J.A0f(0);
            this.A09 = this.A0J.A0Q();
            this.A01 = this.A0J.A0C();
        }
        if (this.A09 == 1) {
            if (A0R[2].length() == 19) {
                throw new RuntimeException();
            }
            A0R[2] = "uEfPCG8cZZkUCN4sq";
            interfaceC2101lN.readFully(this.A0J.A0l(), 8, 8);
            int headerBytesRemaining = this.A00;
            this.A00 = headerBytesRemaining + 8;
            this.A09 = this.A0J.A0R();
        } else if (this.A09 == 0) {
            long jA8G = interfaceC2101lN.A8G();
            if (jA8G == -1 && (containerAtom = this.A0O.peek()) != null) {
                jA8G = containerAtom.A00;
            }
            if (jA8G != -1) {
                this.A09 = (jA8G - interfaceC2101lN.A8f()) + ((long) this.A00);
            }
        }
        if (this.A09 >= this.A00) {
            if (A0I(this.A01)) {
                long jA8f = (interfaceC2101lN.A8f() + this.A09) - ((long) this.A00);
                if (this.A09 != this.A00 && this.A01 == 1835365473) {
                    A0F(interfaceC2101lN);
                }
                this.A0O.push(new C2073kj(this.A01, jA8f));
                if (this.A09 == this.A00) {
                    A0D(jA8f);
                } else {
                    A0A();
                }
            } else if (A0J(this.A01)) {
                C3M.A08(this.A00 == 8);
                C3M.A08(this.A09 <= 2147483647L);
                C4J c4j = new C4J((int) this.A09);
                C4J atomData = this.A0J;
                System.arraycopy(atomData.A0l(), 0, c4j.A0l(), 0, 8);
                this.A0D = c4j;
                this.A04 = 1;
            } else {
                A0E(interfaceC2101lN.A8f() - ((long) this.A00));
                this.A0D = null;
                this.A04 = 1;
            }
            return true;
        }
        throw C05802i.A00(A09(0, 48, 61));
    }

    private boolean A0L(InterfaceC2101lN interfaceC2101lN, C0939Gt c0939Gt) throws IOException {
        long j = this.A09 - ((long) this.A00);
        long atomEndPosition = interfaceC2101lN.A8f() + j;
        boolean z = false;
        C4J c4j = this.A0D;
        if (c4j != null) {
            interfaceC2101lN.readFully(c4j.A0l(), this.A00, (int) j);
            if (this.A01 == 1718909296) {
                this.A02 = A02(c4j);
            } else if (!this.A0O.isEmpty()) {
                this.A0O.peek().A09(new C2072ki(this.A01, c4j));
            }
        } else if (j < PlaybackStateCompat.ACTION_SET_REPEAT_MODE) {
            interfaceC2101lN.AJJ((int) j);
        } else {
            long atomPayloadSize = interfaceC2101lN.A8f();
            c0939Gt.A00 = atomPayloadSize + j;
            z = true;
        }
        A0D(atomEndPosition);
        return z && this.A04 != 2;
    }

    public static GX[] A0M() {
        return new GX[]{new C2062kY()};
    }

    /* JADX WARN: Code duplicated, block: B:18:0x0066  */
    /* JADX WARN: Code duplicated, block: B:20:0x006c  */
    /* JADX WARN: Code duplicated, block: B:48:0x006f A[SYNTHETIC] */
    public static long[][] A0N(C0973Ic[] c0973IcArr) {
        long[][] jArr = new long[c0973IcArr.length][];
        int[] iArr = new int[c0973IcArr.length];
        long[] jArr2 = new long[c0973IcArr.length];
        boolean[] tracksFinished = new boolean[c0973IcArr.length];
        for (int i = 0; i < c0973IcArr.length; i++) {
            jArr[i] = new long[c0973IcArr[i].A04.A01];
            jArr2[i] = c0973IcArr[i].A04.A07[0];
        }
        long j = 0;
        if (A0R[2].length() == 19) {
            throw new RuntimeException();
        }
        A0R[1] = "qbCXFrWy43oBbJoUYfYqc11BUuHVPZxe";
        int i2 = 0;
        while (i2 < c0973IcArr.length) {
            long j2 = Long.MAX_VALUE;
            int i3 = -1;
            for (int minTimeTrackIndex = 0; minTimeTrackIndex < c0973IcArr.length; minTimeTrackIndex++) {
                boolean z = tracksFinished[minTimeTrackIndex];
                if (A0R[6].length() != 29) {
                    A0R[2] = "AIMWoJADevTWezna7TxcWd";
                    if (!z) {
                        if (jArr2[minTimeTrackIndex] <= j2) {
                            i3 = minTimeTrackIndex;
                            j2 = jArr2[minTimeTrackIndex];
                        }
                    }
                } else {
                    String[] strArr = A0R;
                    strArr[3] = "DkVrMcHnnNdNTj";
                    strArr[7] = "McjqbXJyC3Esle";
                    if (!z) {
                        if (jArr2[minTimeTrackIndex] <= j2) {
                            i3 = minTimeTrackIndex;
                            j2 = jArr2[minTimeTrackIndex];
                        }
                    }
                }
            }
            int i4 = iArr[i3];
            jArr[i3][i4] = j;
            j += (long) c0973IcArr[i3].A04.A05[i4];
            int i5 = i4 + 1;
            iArr[i3] = i5;
            if (i5 < jArr[i3].length) {
                C0973Ic c0973Ic = c0973IcArr[i3];
                if (A0R[1].charAt(1) != 'b') {
                    jArr2[i3] = c0973Ic.A04.A07[i5];
                } else {
                    String[] strArr2 = A0R;
                    strArr2[5] = "FttiEMkEmxvjjK7";
                    strArr2[0] = "cOA5C";
                    jArr2[i3] = c0973Ic.A04.A07[i5];
                }
            } else {
                tracksFinished[i3] = true;
                i2++;
            }
        }
        return jArr;
    }

    @Override
    public final long A7l() {
        return this.A0B;
    }

    @Override
    public final C0941Gv A8t(long j) {
        return A07(j, -1);
    }

    @Override
    public final void AA4(GY gy) {
        this.A0E = gy;
    }

    @Override
    public final boolean AAa() {
        return true;
    }

    @Override
    public final int AGb(InterfaceC2101lN interfaceC2101lN, C0939Gt c0939Gt) throws IOException {
        while (true) {
            switch (this.A04) {
                case 0:
                    if (!A0K(interfaceC2101lN)) {
                        return -1;
                    }
                    break;
                    break;
                case 1:
                    if (A0L(interfaceC2101lN, c0939Gt)) {
                        return 1;
                    }
                    break;
                case 2:
                    return A03(interfaceC2101lN, c0939Gt);
                case 3:
                    return A04(interfaceC2101lN, c0939Gt);
                default:
                    throw new IllegalStateException();
            }
        }
    }

    @Override
    public final void AGr() {
    }

    @Override
    public final void AIM(long j, long j2) {
        this.A0O.clear();
        this.A00 = 0;
        this.A08 = -1;
        this.A05 = 0;
        this.A06 = 0;
        this.A07 = 0;
        if (j == 0) {
            int i = this.A04;
            String[] strArr = A0R;
            if (strArr[3].length() != strArr[7].length()) {
                throw new RuntimeException();
            }
            String[] strArr2 = A0R;
            strArr2[3] = "BBO5nGzNDCjhdG";
            strArr2[7] = "Qq9RZt6cBQ724Z";
            if (i != 3) {
                A0A();
                return;
            } else {
                this.A0N.A08();
                this.A0P.clear();
                return;
            }
        }
        for (C0973Ic c0973Ic : this.A0G) {
            A0H(c0973Ic, j2);
            if (c0973Ic.A02 != null) {
                c0973Ic.A02.A02();
            }
        }
    }

    @Override
    public final boolean AJL(InterfaceC2101lN interfaceC2101lN) throws IOException {
        return AbstractC0981Ik.A02(interfaceC2101lN, (this.A0I & 2) != 0);
    }
}
