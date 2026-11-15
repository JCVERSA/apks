package com.facebook.ads.redexgen.core;

import android.net.Uri;
import androidx.media3.common.C;
import com.facebook.ads.androidx.media3.common.Metadata;
import com.facebook.ads.androidx.media3.extractor.metadata.id3.Id3Frame;
import com.facebook.ads.androidx.media3.extractor.metadata.id3.MlltFrame;
import com.facebook.ads.androidx.media3.extractor.metadata.id3.TextInformationFrame;
import com.facebook.video.heroplayer.exocustom.MetaExoPlayerCustomization;
import com.transsion.socket.pkgdata.SocketData;
import java.io.EOFException;
import java.io.IOException;
import java.util.Arrays;
import java.util.Map;
import org.checkerframework.checker.nullness.qual.EnsuresNonNull;
import org.checkerframework.checker.nullness.qual.RequiresNonNull;

@MetaExoPlayerCustomization("DoNotStrip")
public final class C2075kl implements GX {
    public static byte[] A0K;
    public static String[] A0L = {"", "XN01ItT2bHY64Udo8U0rv5VGSzBxMc17", "LZob5GHcOm1BKJQ2vQEKg44UBdoAB", "Ux8BYUlKxCzUFwXHW791pvzO", "", "EYpHAHesBPuZwNRi93BVygfvwpQNuwRz", "BndnCdJGei78P0VEYjqxuWcWalVGolEJ", "FxTwI"};
    public static final InterfaceC0921Gb A0M;
    public static final InterfaceC0948Hc A0N;
    public int A00;
    public int A01;
    public long A02;
    public long A03;
    public long A04;
    public long A05;
    public Metadata A06;
    public GY A07;
    public H1 A08;
    public H1 A09;
    public InterfaceC2074kk A0A;
    public boolean A0B;
    public boolean A0C;
    public final int A0D;
    public final long A0E;
    public final C4J A0F;
    public final C0928Gi A0G;
    public final C0930Gk A0H;
    public final C0931Gl A0I;
    public final H1 A0J;

    public static String A09(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A0K, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 44);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A0B() {
        A0K = new byte[]{-78, -60, -64, -47, -62, -57, -60, -61, 127, -45, -50, -50, 127, -52, -64, -51, -40, 127, -63, -40, -45, -60, -46, SocketData.CLAZZ_TYPE_ERROR_CODE, -27, -35, -42, -33};
        if (A0L[5].charAt(24) == 'i') {
            throw new RuntimeException();
        }
        String[] strArr = A0L;
        strArr[1] = "rBULd6kp2sYKxjbrN7jKkVDhSodb4v28";
        strArr[6] = "gBWiztBtWh7JHxCzKYVaG6CraVXBuCHm";
    }

    static {
        A0B();
        A0M = new InterfaceC0921Gb() {
            @Override
            public final GX[] A5F() {
                return C2075kl.A0G();
            }

            @Override
            public final GX[] A5G(Uri uri, Map map) {
                return AbstractC0920Ga.A01(this, uri, map);
            }
        };
        A0N = new InterfaceC0948Hc() {
            @Override
            public final boolean A6I(int i, int i2, int i3, int i4, int i5) {
                return C2075kl.A0C(i, i2, i3, i4, i5);
            }
        };
    }

    @MetaExoPlayerCustomization("DoNotStrip")
    public C2075kl() {
        this(0);
    }

    @MetaExoPlayerCustomization("DoNotStrip")
    public C2075kl(int i) {
        this(i, C.TIME_UNSET);
    }

    @MetaExoPlayerCustomization("DoNotStrip")
    public C2075kl(int i, long j) {
        this.A0D = (i & 2) != 0 ? i | 1 : i;
        this.A0E = j;
        this.A0F = new C4J(10);
        this.A0I = new C0931Gl();
        this.A0G = new C0928Gi();
        this.A02 = C.TIME_UNSET;
        this.A0H = new C0930Gk();
        this.A0J = new C2102lO();
        this.A08 = this.A0J;
    }

    public static int A00(C4J c4j, int i) {
        if (c4j.A0A() >= i + 4) {
            c4j.A0f(i);
            if (A0L[5].charAt(24) == 'i') {
                throw new RuntimeException();
            }
            A0L[3] = "hnNDf1WGfP5HptxyzX0WY3yEy4CiO";
            int iA0C = c4j.A0C();
            if (iA0C == 1483304551 || iA0C == 1231971951) {
                return iA0C;
            }
        }
        if (c4j.A0A() >= 40) {
            c4j.A0f(36);
            return c4j.A0C() == 1447187017 ? 1447187017 : 0;
        }
        return 0;
    }

    @RequiresNonNull({"extractorOutput", "realTrackOutput"})
    private int A01(InterfaceC2101lN interfaceC2101lN) throws IOException {
        if (this.A01 == 0) {
            try {
                A0F(interfaceC2101lN, false);
            } catch (EOFException unused) {
                return -1;
            }
        }
        if (this.A0A == null) {
            this.A0A = A07(interfaceC2101lN);
            this.A07.AIN(this.A0A);
            this.A08.A6W(new C2D().A11(this.A0I.A06).A0h(4096).A0b(this.A0I.A01).A0m(this.A0I.A03).A0d(this.A0G.A00).A0e(this.A0G.A01).A0v((this.A0D & 8) != 0 ? null : this.A06).A14());
            this.A03 = interfaceC2101lN.A8f();
        } else if (this.A03 != 0) {
            long jA8f = interfaceC2101lN.A8f();
            if (jA8f < this.A03) {
                interfaceC2101lN.AJJ((int) (this.A03 - jA8f));
            }
        }
        return A02(interfaceC2101lN);
    }

    @RequiresNonNull({"realTrackOutput", "seeker"})
    private int A02(InterfaceC2101lN interfaceC2101lN) throws IOException {
        if (this.A00 == 0) {
            interfaceC2101lN.AI1();
            if (A0E(interfaceC2101lN)) {
                return -1;
            }
            this.A0F.A0f(0);
            int iA0C = this.A0F.A0C();
            int sampleHeaderData = this.A01;
            if (A0D(iA0C, sampleHeaderData)) {
                int sampleHeaderData2 = AbstractC0932Gm.A00(iA0C);
                if (sampleHeaderData2 != -1) {
                    this.A0I.A00(iA0C);
                    if (this.A02 == C.TIME_UNSET) {
                        this.A02 = this.A0A.A99(interfaceC2101lN.A8f());
                        if (this.A0E != C.TIME_UNSET) {
                            this.A02 += this.A0E - this.A0A.A99(0L);
                        }
                    }
                    int sampleHeaderData3 = this.A0I.A02;
                    this.A00 = sampleHeaderData3;
                    if (this.A0A instanceof C07217t) {
                        C07217t c07217t = (C07217t) this.A0A;
                        long j = this.A04;
                        int sampleHeaderData4 = this.A0I.A04;
                        long jA03 = A03(j + ((long) sampleHeaderData4));
                        long jA8f = interfaceC2101lN.A8f();
                        int sampleHeaderData5 = this.A0I.A02;
                        c07217t.A01(jA03, jA8f + ((long) sampleHeaderData5));
                        if (this.A0C && c07217t.A02(this.A05)) {
                            this.A0C = false;
                            this.A08 = this.A09;
                        }
                    }
                }
            }
            interfaceC2101lN.AJJ(1);
            this.A01 = 0;
            return 0;
        }
        int iAI5 = this.A08.AI5(interfaceC2101lN, this.A00, true);
        if (iAI5 == -1) {
            return -1;
        }
        int bytesAppended = this.A00;
        this.A00 = bytesAppended - iAI5;
        int bytesAppended2 = this.A00;
        if (bytesAppended2 > 0) {
            return 0;
        }
        this.A08.AIA(A03(this.A04), 1, this.A0I.A02, 0, null);
        if (A0L[5].charAt(24) == 'i') {
            throw new RuntimeException();
        }
        A0L[3] = "39D9RtME66Nzc4lHdRGQvnw";
        long j2 = this.A04;
        int bytesAppended3 = this.A0I.A04;
        this.A04 = j2 + ((long) bytesAppended3);
        this.A00 = 0;
        return 0;
    }

    private long A03(long j) {
        return this.A02 + ((1000000 * j) / ((long) this.A0I.A03));
    }

    public static long A04(Metadata metadata) {
        if (metadata != null) {
            int iA02 = metadata.A02();
            for (int i = 0; i < iA02; i++) {
                Metadata.Entry entryA03 = metadata.A03(i);
                if ((entryA03 instanceof TextInformationFrame) && ((Id3Frame) ((TextInformationFrame) entryA03)).A00.equals(A09(24, 4, 101))) {
                    return AbstractC06244a.A0O(Long.parseLong(((TextInformationFrame) entryA03).A02.get(0)));
                }
            }
            return C.TIME_UNSET;
        }
        return C.TIME_UNSET;
    }

    private C07227u A05(InterfaceC2101lN interfaceC2101lN, boolean z) throws IOException {
        interfaceC2101lN.AG9(this.A0F.A0l(), 0, 4);
        this.A0F.A0f(0);
        this.A0I.A00(this.A0F.A0C());
        return new C07227u(interfaceC2101lN.A8G(), interfaceC2101lN.A8f(), this.A0I, z);
    }

    public static C07207s A06(Metadata metadata, long j) {
        if (metadata != null) {
            int iA02 = metadata.A02();
            for (int i = 0; i < iA02; i++) {
                Metadata.Entry entry = metadata.A03(i);
                if (entry instanceof MlltFrame) {
                    return C07207s.A01(j, (MlltFrame) entry, A04(metadata));
                }
            }
            return null;
        }
        return null;
    }

    /* JADX WARN: Code duplicated, block: B:29:0x0095  */
    private InterfaceC2074kk A07(InterfaceC2101lN interfaceC2101lN) throws IOException {
        long durationUs;
        InterfaceC2074kk interfaceC2074kkA08 = A08(interfaceC2101lN);
        InterfaceC2074kk seekFrameSeeker = A06(this.A06, interfaceC2101lN.A8f());
        if (this.A0B) {
            return new C07197r();
        }
        InterfaceC2074kk c07217t = null;
        if ((this.A0D & 4) != 0) {
            long jA7b = -1;
            if (seekFrameSeeker != null) {
                durationUs = seekFrameSeeker.A7l();
                jA7b = seekFrameSeeker.A7b();
            } else if (interfaceC2074kkA08 != null) {
                durationUs = interfaceC2074kkA08.A7l();
                jA7b = interfaceC2074kkA08.A7b();
            } else {
                durationUs = A04(this.A06);
            }
            c07217t = new C07217t(durationUs, interfaceC2101lN.A8f(), jA7b);
        } else if (seekFrameSeeker != null) {
            c07217t = seekFrameSeeker;
        } else if (interfaceC2074kkA08 != null) {
            c07217t = interfaceC2074kkA08;
        }
        boolean z = true;
        String[] strArr = A0L;
        if (strArr[1].charAt(10) == strArr[6].charAt(10)) {
            throw new RuntimeException();
        }
        String[] strArr2 = A0L;
        strArr2[7] = "puIT5";
        strArr2[4] = "";
        if (c07217t == null || (!c07217t.AAa() && (this.A0D & 1) != 0)) {
            int i = this.A0D;
            if (A0L[5].charAt(24) != 'i') {
                String[] strArr3 = A0L;
                strArr3[7] = "yAfIM";
                strArr3[4] = "";
                if ((i & 2) == 0) {
                    z = false;
                }
            } else {
                A0L[5] = "MGo95V6JQFDSGlQkmGWT48KfEqhrmySi";
                if ((i & 2) == 0) {
                    z = false;
                }
            }
            return A05(interfaceC2101lN, z);
        }
        return c07217t;
    }

    private InterfaceC2074kk A08(InterfaceC2101lN interfaceC2101lN) throws IOException {
        C4J c4j = new C4J(this.A0I.A02);
        interfaceC2101lN.AG9(c4j.A0l(), 0, this.A0I.A02);
        int i = 21;
        if ((this.A0I.A05 & 1) != 0) {
            if (this.A0I.A01 != 1) {
                i = 36;
            }
        } else if (this.A0I.A01 == 1) {
            i = 13;
        }
        int iA00 = A00(c4j, i);
        if (iA00 == 1483304551 || iA00 == 1231971951) {
            C07157n c07157nA01 = C07157n.A01(interfaceC2101lN.A8G(), interfaceC2101lN.A8f(), this.A0I, c4j);
            if (c07157nA01 != null && !this.A0G.A03()) {
                interfaceC2101lN.AI1();
                interfaceC2101lN.A3z(i + 141);
                C4J frame = this.A0F;
                interfaceC2101lN.AG9(frame.A0l(), 0, 3);
                C4J frame2 = this.A0F;
                frame2.A0f(0);
                C0928Gi c0928Gi = this.A0G;
                C4J frame3 = this.A0F;
                c0928Gi.A04(frame3.A0K());
            }
            interfaceC2101lN.AJJ(this.A0I.A02);
            if (c07157nA01 != null && !c07157nA01.AAa() && iA00 == 1231971951) {
                C07227u c07227uA05 = A05(interfaceC2101lN, false);
                String[] strArr = A0L;
                String str = strArr[7];
                String str2 = strArr[4];
                int xingBase = str.length();
                if (xingBase == str2.length()) {
                    throw new RuntimeException();
                }
                String[] strArr2 = A0L;
                strArr2[1] = "bGvlWKvJjPQrySHefRGmEijHbVzYOxUK";
                strArr2[6] = "fU58RXvZc6f3KsNNOCISAUQgLzoCeDCK";
                return c07227uA05;
            }
            return c07157nA01;
        }
        if (iA00 == 1447187017) {
            C07187q c07187qA00 = C07187q.A00(interfaceC2101lN.A8G(), interfaceC2101lN.A8f(), this.A0I, c4j);
            interfaceC2101lN.AJJ(this.A0I.A02);
            return c07187qA00;
        }
        interfaceC2101lN.AI1();
        return null;
    }

    @EnsuresNonNull({"extractorOutput", "realTrackOutput"})
    private void A0A() {
        C3M.A02(this.A09);
    }

    public static boolean A0C(int i, int i2, int i3, int i4, int i5) {
        if (i2 != 67 || i3 != 79 || i4 != 77 || (i5 != 77 && i != 2)) {
            if (i2 == 77) {
                if (A0L[5].charAt(24) == 'i') {
                    throw new RuntimeException();
                }
                String[] strArr = A0L;
                strArr[2] = "NxAl2v4obD3CfxY1bwrYNdaYMjSl6";
                strArr[0] = "";
                if (i3 != 76 || i4 != 76 || (i5 != 84 && i != 2)) {
                }
            }
            return false;
        }
        return true;
    }

    public static boolean A0D(int i, long j) {
        return ((long) ((-128000) & i)) == ((-128000) & j);
    }

    private boolean A0E(InterfaceC2101lN interfaceC2101lN) throws IOException {
        if (this.A0A != null) {
            long jA7b = this.A0A.A7b();
            if (jA7b != -1) {
                long dataEndPosition = interfaceC2101lN.A8a();
                if (dataEndPosition > jA7b - 4) {
                    return true;
                }
            }
        }
        try {
            return !interfaceC2101lN.AGA(this.A0F.A0l(), 0, 4, true);
        } catch (EOFException unused) {
            return true;
        }
    }

    private boolean A0F(InterfaceC2101lN interfaceC2101lN, boolean z) throws IOException {
        int candidateSynchronizedHeaderData;
        int i = 0;
        int i2 = 0;
        int iA8a = 0;
        int searchedBytes = 0;
        int headerData = z ? 32768 : 131072;
        interfaceC2101lN.AI1();
        if (interfaceC2101lN.A8f() == 0) {
            int validFrameCount = this.A0D;
            int validFrameCount2 = (validFrameCount & 8) == 0 ? 1 : 0;
            this.A06 = this.A0H.A00(interfaceC2101lN, validFrameCount2 != 0 ? null : A0N);
            if (this.A06 != null) {
                this.A0G.A05(this.A06);
            }
            iA8a = (int) interfaceC2101lN.A8a();
            if (!z) {
                interfaceC2101lN.AJJ(iA8a);
            }
        }
        while (true) {
            if (A0E(interfaceC2101lN)) {
                if (i > 0) {
                    break;
                }
                throw new EOFException();
            }
            this.A0F.A0f(0);
            int iA0C = this.A0F.A0C();
            if ((i2 != 0 && !A0D(iA0C, i2)) || (candidateSynchronizedHeaderData = AbstractC0932Gm.A00(iA0C)) == -1) {
                int candidateSynchronizedHeaderData2 = searchedBytes + 1;
                if (searchedBytes == headerData) {
                    if (z) {
                        return false;
                    }
                    throw C05802i.A01(A09(0, 24, 51), null);
                }
                i = 0;
                i2 = 0;
                if (z) {
                    interfaceC2101lN.AI1();
                    int validFrameCount3 = iA8a + candidateSynchronizedHeaderData2;
                    interfaceC2101lN.A3z(validFrameCount3);
                } else {
                    interfaceC2101lN.AJJ(1);
                }
                searchedBytes = candidateSynchronizedHeaderData2;
            } else {
                i++;
                if (i == 1) {
                    this.A0I.A00(iA0C);
                    i2 = iA0C;
                } else if (i == 4) {
                    break;
                }
                int validFrameCount4 = candidateSynchronizedHeaderData - 4;
                interfaceC2101lN.A3z(validFrameCount4);
            }
        }
        if (z) {
            interfaceC2101lN.AJJ(iA8a + searchedBytes);
        } else {
            interfaceC2101lN.AI1();
        }
        this.A01 = i2;
        if (A0L[5].charAt(24) == 105) {
            throw new RuntimeException();
        }
        String[] strArr = A0L;
        strArr[7] = "Yv6sT";
        strArr[4] = "";
        return true;
    }

    public static GX[] A0G() {
        return new GX[]{new C2075kl()};
    }

    @Override
    public final void AA4(GY gy) {
        this.A07 = gy;
        this.A09 = this.A07.AJh(0, 1);
        this.A08 = this.A09;
        this.A07.A6G();
    }

    @Override
    public final int AGb(InterfaceC2101lN interfaceC2101lN, C0939Gt c0939Gt) throws IOException {
        A0A();
        int iA01 = A01(interfaceC2101lN);
        if (iA01 == -1 && (this.A0A instanceof C07217t)) {
            long jA03 = A03(this.A04);
            long durationUs = this.A0A.A7l();
            if (durationUs != jA03) {
                ((C07217t) this.A0A).A00(jA03);
                this.A07.AIN(this.A0A);
            }
        }
        return iA01;
    }

    @Override
    public final void AGr() {
    }

    @Override
    public final void AIM(long j, long j2) {
        this.A01 = 0;
        this.A02 = C.TIME_UNSET;
        this.A04 = 0L;
        this.A00 = 0;
        this.A05 = j2;
        if ((this.A0A instanceof C07217t) && !((C07217t) this.A0A).A02(j2)) {
            this.A0C = true;
            this.A08 = this.A0J;
        }
    }

    @Override
    public final boolean AJL(InterfaceC2101lN interfaceC2101lN) throws IOException {
        return A0F(interfaceC2101lN, true);
    }
}
