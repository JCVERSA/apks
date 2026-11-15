package com.facebook.ads.redexgen.core;

import android.net.Uri;
import android.os.Handler;
import androidx.media3.common.C;
import com.facebook.ads.androidx.media3.common.Metadata;
import com.facebook.ads.androidx.media3.extractor.metadata.icy.IcyHeaders;
import com.facebook.video.heroplayer.exocustom.MetaExoPlayerCustomization;
import com.transsion.vishatransfer.socket.TransferProtocol;
import java.io.IOException;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import org.checkerframework.checker.nullness.qual.EnsuresNonNull;
import org.mozilla.classfile.ByteCode;

public final class C9A implements InterfaceC2160mM, GY, InterfaceC0874Eg<C2158mK>, InterfaceC0878Ek, InterfaceC0829Cn {
    public static byte[] A0e;
    public static String[] A0f = {"o2fAJH6DTExx5HfWJCXs", "", "TsjJo55j6Kq128TfeQrvBtnORCvXohBg", "QpymssT", "p1Azi7mByqrjPk9ZTQVOCdIp8WANOiZ", "P8K3es9juVbjT7QsA9zjw4fZ7CWDxkC3", "f2TCNbDOQ", "8xae32DDfRwM"};
    public static final C2312or A0g;
    public static final Map<String, String> A0h;
    public int A00;
    public int A01;
    public int A02;
    public long A03;
    public long A04;
    public long A05;
    public InterfaceC2161mN A06;
    public C0824Ci A07;
    public InterfaceC0942Gw A08;
    public IcyHeaders A09;
    public boolean A0A;
    public boolean A0B;
    public boolean A0C;
    public boolean A0D;
    public boolean A0E;
    public boolean A0F;
    public boolean A0G;
    public boolean A0H;
    public boolean A0I;
    public boolean A0J;
    public C0823Ch[] A0K;
    public C2152mE[] A0L;
    public final long A0M;
    public final Uri A0N;
    public final Handler A0O;
    public final C3W A0P;
    public final InterfaceC2247nl A0Q;
    public final C9P A0R;
    public final C9U A0S;
    public final CW A0T;
    public final InterfaceC0817Cb A0U;
    public final InterfaceC0822Cg A0V;
    public final EO A0W;
    public final InterfaceC0871Ed A0X;
    public final C2115lc A0Y;
    public final Runnable A0Z;
    public final Runnable A0a;
    public final String A0b;
    public final boolean A0c;

    @MetaExoPlayerCustomization(type = {"NEW_CLASS_ARG"})
    public final boolean A0d;

    public static String A0B(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A0e, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 68);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A0I() {
        A0e = new byte[]{-76, -81, -55, -33, -109, -77, -53, -38, -57, -86, -57, -38, -57, -29, 6, -8, -5, -4, 9, -47, -25, 9, 6, -2, 9, -4, 10, 10, 0, 13, -4, TransferProtocol.CLAZZ_TYPE_TRANSFER_CODE, -4, -5, 0, -8, -25, -4, 9, 0, 6, -5, -62, -27, -41, -38, -33, TransferProtocol.CLAZZ_TYPE_TRANSFER_CODE, -35, -106, -36, -33, TransferProtocol.CLAZZ_TYPE_TRANSFER_CODE, -33, -23, -34, -37, -38, -106, -40, -37, -36, -27, -24, -37, -106, -26, -24, -37, -26, -41, -24, -41, -22, -33, -27, TransferProtocol.CLAZZ_TYPE_TRANSFER_CODE, -106, -33, -23, -106, -39, -27, -29, -26, -30, -37, -22, -37, -92, -49, -14, TransferProtocol.CLAZZ_TYPE_TRANSFER_CODE, -25, -20, -15, -22, -93, -23, -20, -15, -20, -10, -21, -24, -25, -93, -27, -24, -23, -14, -11, -24, -93, -13, -11, -24, -13, TransferProtocol.CLAZZ_TYPE_TRANSFER_CODE, -11, TransferProtocol.CLAZZ_TYPE_TRANSFER_CODE, -9, -20, -14, -15, -93, -20, -10, -93, -26, -14, -16, -13, -17, -24, -9, -24, -79, -93, -40, -43, -52, -67, -93, -12, 3, 3, -1, -4, -10, -12, 7, -4, 2, 1, -62, ByteCode.T_LONG, -64, -4, -10, 12, -6, -12, 10, 47, 54, 45, 45};
    }

    /* JADX WARN: Code duplicated, block: B:15:0x0044  */
    /* JADX WARN: Failed to parse debug info
    java.lang.ArrayIndexOutOfBoundsException
     */
    @Override
    public final long AIP(InterfaceC2122lj[] interfaceC2122ljArr, boolean[] zArr, InterfaceC0833Cr[] interfaceC0833CrArr, boolean[] zArr2, long j) {
        long jAIO = j;
        A0E();
        C2149mA c2149mA = this.A07.A00;
        boolean[] zArr3 = this.A07.A01;
        int i = this.A01;
        int i2 = 0;
        while (true) {
            int i3 = 0;
            if (i2 >= interfaceC2122ljArr.length) {
                boolean z = !this.A0J ? jAIO == 0 : i != 0;
                for (int i4 = 0; i4 < interfaceC2122ljArr.length; i4++) {
                    InterfaceC0833Cr interfaceC0833Cr = interfaceC0833CrArr[i4];
                    if (A0f[0].length() != 20) {
                        break;
                    }
                    String[] strArr = A0f;
                    strArr[6] = "NEStfGRt7";
                    strArr[7] = "7J9sRP18njyY";
                    if (interfaceC0833Cr == null && interfaceC2122ljArr[i4] != null) {
                        InterfaceC2122lj interfaceC2122lj = interfaceC2122ljArr[i4];
                        C3M.A08(interfaceC2122lj.length() == 1);
                        C3M.A08(interfaceC2122lj.A89(0) == 0);
                        int iA04 = c2149mA.A04(interfaceC2122lj.A9D());
                        C3M.A08(!zArr3[iA04]);
                        this.A01++;
                        zArr3[iA04] = true;
                        interfaceC0833CrArr[i4] = new C2157mJ(this, iA04);
                        zArr2[i4] = true;
                        if (!z) {
                            C2152mE c2152mE = this.A0L[iA04];
                            z = (c2152mE.A0f(jAIO, true) || c2152mE.A0O() == 0) ? false : true;
                        }
                    }
                }
                if (this.A01 == 0) {
                    this.A0F = false;
                    this.A0E = false;
                    if (this.A0Y.A0E()) {
                        C2152mE[] c2152mEArr = this.A0L;
                        int length = c2152mEArr.length;
                        while (i3 < length) {
                            c2152mEArr[i3].A0V();
                            i3++;
                        }
                        this.A0Y.A09();
                    } else {
                        C2152mE[] c2152mEArr2 = this.A0L;
                        int length2 = c2152mEArr2.length;
                        while (i3 < length2) {
                            c2152mEArr2[i3].A0Z();
                            i3++;
                        }
                    }
                } else if (z) {
                    jAIO = AIO(jAIO, false);
                    for (int i5 = 0; i5 < interfaceC0833CrArr.length; i5++) {
                        if (interfaceC0833CrArr[i5] != null) {
                            zArr2[i5] = true;
                        }
                    }
                }
                this.A0J = true;
                return jAIO;
            }
            if (interfaceC0833CrArr[i2] != null) {
                if (interfaceC2122ljArr[i2] != null) {
                    boolean z2 = zArr[i2];
                    String[] strArr2 = A0f;
                    if (strArr2[2].charAt(7) != strArr2[5].charAt(7)) {
                        break;
                    }
                    A0f[0] = "eW7kSByjGiBvUls6sdXN";
                    if (!z2) {
                        int i6 = ((C2157mJ) interfaceC0833CrArr[i2]).A00;
                        C3M.A08(zArr3[i6]);
                        this.A01--;
                        zArr3[i6] = false;
                        interfaceC0833CrArr[i2] = null;
                    }
                } else {
                    int i7 = ((C2157mJ) interfaceC0833CrArr[i2]).A00;
                    C3M.A08(zArr3[i7]);
                    this.A01--;
                    zArr3[i7] = false;
                    interfaceC0833CrArr[i2] = null;
                }
            }
            i2++;
        }
        throw new RuntimeException();
    }

    static {
        A0I();
        A0h = A0D();
        A0g = new C2D().A0y(A0B(161, 3, 77)).A11(A0B(144, 17, 79)).A14();
    }

    public C9A(Uri uri, InterfaceC2247nl interfaceC2247nl, InterfaceC0817Cb interfaceC0817Cb, C9U c9u, C9P c9p, InterfaceC0871Ed interfaceC0871Ed, CW cw, InterfaceC0822Cg interfaceC0822Cg, EO eo, String str, int i, InterfaceExecutorC0893Ez interfaceExecutorC0893Ez) {
        C2115lc c2115lc;
        this.A0N = uri;
        this.A0Q = interfaceC2247nl;
        this.A0S = c9u;
        this.A0R = c9p;
        this.A0X = interfaceC0871Ed;
        this.A0T = cw;
        this.A0V = interfaceC0822Cg;
        this.A0W = eo;
        this.A0b = str;
        this.A0M = i;
        if (interfaceExecutorC0893Ez != null) {
            c2115lc = new C2115lc(interfaceExecutorC0893Ez);
        } else {
            c2115lc = new C2115lc(A0B(13, 29, 83));
        }
        this.A0Y = c2115lc;
        this.A0U = interfaceC0817Cb;
        this.A0P = new C3W();
        this.A0Z = new Runnable() {
            @Override
            public final void run() {
                this.A00.A0F();
            }
        };
        this.A0a = new Runnable() {
            @Override
            public final void run() {
                this.A00.A0b();
            }
        };
        this.A0O = AbstractC06244a.A0Y();
        this.A0K = new C0823Ch[0];
        this.A0L = new C2152mE[0];
        this.A05 = C.TIME_UNSET;
        this.A03 = C.TIME_UNSET;
        this.A00 = 1;
        this.A0d = MetaExoPlayerUpgradeConfig.A03(EnumC1911i2.A0d) || MetaExoPlayerUpgradeConfig.A03(EnumC1911i2.A0e) || MetaExoPlayerUpgradeConfig.A03(EnumC1911i2.A1f);
        this.A0c = MetaExoPlayerUpgradeConfig.A03(EnumC1911i2.A0g);
    }

    private int A00() {
        int i = 0;
        for (C2152mE c2152mE : this.A0L) {
            int extractedSamplesCount = c2152mE.A0P();
            i += extractedSamplesCount;
        }
        return i;
    }

    /* JADX WARN: Code duplicated, block: B:10:0x0036  */
    public long A03(boolean z) {
        long jMax = Long.MIN_VALUE;
        for (int i = 0; i < this.A0L.length; i++) {
            if (z) {
                jMax = Math.max(jMax, this.A0L[i].A0T());
            } else {
                Object objA01 = C3M.A01(this.A07);
                String[] strArr = A0f;
                if (strArr[6].length() == strArr[7].length()) {
                    throw new RuntimeException();
                }
                String[] strArr2 = A0f;
                strArr2[6] = "FDopTuaFs";
                strArr2[7] = "ze95XzERDUjm";
                if (((C0824Ci) objA01).A01[i]) {
                    jMax = Math.max(jMax, this.A0L[i].A0T());
                }
            }
        }
        return jMax;
    }

    private C2152mE A06(C0823Ch c0823Ch) {
        int length = this.A0L.length;
        for (int i = 0; i < length; i++) {
            if (c0823Ch.equals(this.A0K[i])) {
                return this.A0L[i];
            }
        }
        C2152mE c2152mEA0B = C2152mE.A0B(this.A0W, this.A0S, this.A0R);
        c2152mEA0B.A0d(this);
        int trackCount = length + 1;
        C0823Ch[] c0823ChArr = (C0823Ch[]) Arrays.copyOf(this.A0K, trackCount);
        c0823ChArr[length] = c0823Ch;
        this.A0K = (C0823Ch[]) AbstractC06244a.A1H(c0823ChArr);
        int trackCount2 = length + 1;
        C2152mE[] c2152mEArr = (C2152mE[]) Arrays.copyOf(this.A0L, trackCount2);
        c2152mEArr[length] = c2152mEA0B;
        this.A0L = (C2152mE[]) AbstractC06244a.A1H(c2152mEArr);
        return c2152mEA0B;
    }

    @Override
    public final C0875Eh AE0(C2158mK c2158mK, long j, long j2, IOException iOException, int i) {
        C0875Eh c0875EhA01;
        C07429b c07429b = c2158mK.A08;
        CE ce = new CE(c2158mK.A05, c2158mK.A01, c07429b.A01(), c07429b.A02(), j, j2, c07429b.A00());
        long jA8m = this.A0X.A8m(new C0870Ec(ce, new CG(1, -1, null, 0, null, AbstractC06244a.A0P(c2158mK.A00), AbstractC06244a.A0P(this.A03)), iOException, i));
        if (jA8m == C.TIME_UNSET) {
            c0875EhA01 = C2115lc.A06;
        } else {
            int iA00 = A00();
            boolean z = iA00 > this.A02;
            if (A0U(c2158mK, iA00)) {
                c0875EhA01 = C2115lc.A01(z, jA8m);
            } else {
                c0875EhA01 = C2115lc.A05;
            }
        }
        this.A0T.A07(ce, 1, -1, null, 0, null, c2158mK.A00, this.A03, iOException, !c0875EhA01.A02());
        return c0875EhA01;
    }

    public static Map<String, String> A0D() {
        HashMap map = new HashMap();
        map.put(A0B(1, 12, 34), A0B(0, 1, 63));
        Map<String, String> headers = Collections.unmodifiableMap(map);
        return headers;
    }

    @EnsuresNonNull({"trackState", "seekMap"})
    private void A0E() {
        C3M.A08(this.A0G);
        C3M.A01(this.A07);
        C3M.A01(this.A08);
    }

    public void A0F() {
        Metadata metadataA05;
        if (this.A0H || this.A0G) {
            return;
        }
        boolean z = this.A0I;
        String[] strArr = A0f;
        if (strArr[1].length() == strArr[4].length()) {
            throw new RuntimeException();
        }
        String[] strArr2 = A0f;
        strArr2[2] = "grMxxjGjFdBhxw9MDZtvFg4OZy35nlzN";
        strArr2[5] = "E38rNlujzeckGRbn7d7aukKxtTtuF9Uw";
        if (!z || this.A08 == null) {
            return;
        }
        for (C2152mE c2152mE : this.A0L) {
            if (c2152mE.A0U() == null) {
                return;
            }
        }
        this.A0P.A02();
        int length = this.A0L.length;
        C2278oH[] c2278oHArr = new C2278oH[length];
        boolean[] zArr = new boolean[length];
        for (int i = 0; i < length; i++) {
            C2312or c2312orA14 = (C2312or) C3M.A01(this.A0L[i].A0U());
            String str = c2312orA14.A0W;
            boolean zA0C = AbstractC05792h.A0C(str);
            boolean z2 = zA0C || AbstractC05792h.A0F(str);
            zArr[i] = z2;
            this.A0A |= z2;
            IcyHeaders icyHeaders = this.A09;
            if (icyHeaders != null) {
                if (zA0C || this.A0K[i].A01) {
                    Metadata metadata = c2312orA14.A0P;
                    if (metadata == null) {
                        metadataA05 = new Metadata(icyHeaders);
                    } else {
                        metadataA05 = metadata.A05(icyHeaders);
                    }
                    C2D c2dA0v = c2312orA14.A07().A0v(metadataA05);
                    if (A0f[0].length() != 20) {
                        throw new RuntimeException();
                    }
                    String[] strArr3 = A0f;
                    strArr3[2] = "WsODqr3j7Qd6qKAaI5Z8JETVOkriGcMH";
                    strArr3[5] = "rCf1buyjz0YjJBdswvkAeWhqIr4TjJn3";
                    c2312orA14 = c2dA0v.A14();
                }
                if (zA0C) {
                    int trackCount = c2312orA14.A04;
                    if (trackCount == -1) {
                        int trackCount2 = c2312orA14.A0D;
                        if (trackCount2 == -1) {
                            int trackCount3 = icyHeaders.A00;
                            if (trackCount3 != -1) {
                                C2D c2dA07 = c2312orA14.A07();
                                int trackCount4 = icyHeaders.A00;
                                c2312orA14 = c2dA07.A0a(trackCount4).A14();
                            }
                        }
                    }
                }
            }
            c2278oHArr[i] = new C2278oH(c2312orA14);
        }
        this.A07 = new C0824Ci(new C2149mA(c2278oHArr), zArr);
        this.A0G = true;
        ((InterfaceC2161mN) C3M.A01(this.A06)).AEk(this);
    }

    public void A0G() {
        this.A0O.post(new Runnable() {
            @Override
            public final void run() {
                this.A00.A0c();
            }
        });
    }

    private void A0H() {
        C2158mK c2158mK = new C2158mK(this, this.A0N, this.A0Q, this.A0U, this, this.A0P);
        if (this.A0G) {
            C3M.A08(A0S());
            if (this.A03 != C.TIME_UNSET && this.A05 >= this.A03) {
                this.A0D = true;
                this.A05 = C.TIME_UNSET;
                return;
            }
            c2158mK.A04(((InterfaceC0942Gw) C3M.A01(this.A08)).A8t(this.A05).A00.A00, this.A05);
            for (C2152mE c2152mE : this.A0L) {
                c2152mE.A0b(this.A05);
            }
            this.A05 = C.TIME_UNSET;
        }
        this.A02 = A00();
        this.A0T.A06(new CE(c2158mK.A05, c2158mK.A01, this.A0Y.A08(c2158mK, this, this.A0X.A8R(this.A00))), 1, -1, null, 0, null, c2158mK.A00, this.A03, 0);
    }

    private final void A0J() throws IOException {
        this.A0Y.A0B(this.A0X.A8R(this.A00));
    }

    private void A0K(int i) {
        A0E();
        boolean[] zArr = this.A07.A03;
        if (!zArr[i]) {
            C2312or c2312orA08 = this.A07.A00.A05(i).A08(0);
            this.A0T.A03(AbstractC05792h.A01(c2312orA08.A0W), c2312orA08, 0, null, this.A04);
            zArr[i] = true;
        }
    }

    private void A0L(int i) {
        A0E();
        boolean[] zArr = this.A07.A02;
        if (this.A0F && zArr[i]) {
            if (this.A0L[i].A0g(false)) {
                return;
            }
            this.A05 = 0L;
            this.A0F = false;
            this.A0E = true;
            this.A04 = 0L;
            this.A02 = 0;
            for (C2152mE c2152mE : this.A0L) {
                c2152mE.A0Z();
            }
            ((InterfaceC2161mN) C3M.A01(this.A06)).ACs(this);
        }
    }

    @Override
    public final void ADz(C2158mK c2158mK, long j, long j2) {
        long largestQueuedTimestampUs;
        if (this.A03 == C.TIME_UNSET && this.A08 != null) {
            boolean zAAa = this.A08.AAa();
            long jA03 = A03(true);
            String[] strArr = A0f;
            if (strArr[1].length() == strArr[4].length()) {
                throw new RuntimeException();
            }
            String[] strArr2 = A0f;
            strArr2[6] = "VBgm4XD5c";
            strArr2[7] = "eM9hzsMViOdm";
            if (jA03 == Long.MIN_VALUE) {
                largestQueuedTimestampUs = 0;
            } else {
                largestQueuedTimestampUs = 10000 + jA03;
            }
            this.A03 = largestQueuedTimestampUs;
            this.A0V.AFH(this.A03, zAAa, this.A0C);
        }
        C07429b c07429b = c2158mK.A08;
        this.A0T.A08(new CE(c2158mK.A05, c2158mK.A01, c07429b.A01(), c07429b.A02(), j, j2, c07429b.A00()), 1, -1, null, 0, null, c2158mK.A00, this.A03, c2158mK, null);
        this.A0D = true;
        ((InterfaceC2161mN) C3M.A01(this.A06)).ACs(this);
    }

    @Override
    public final void AE3(C2158mK c2158mK, long j, long j2, int i) {
        CE ce;
        C07429b dataSource = c2158mK.A08;
        if (i == 0) {
            ce = new CE(c2158mK.A05, c2158mK.A01, j);
        } else {
            ce = new CE(c2158mK.A05, c2158mK.A01, dataSource.A01(), dataSource.A02(), j, j2, dataSource.A00());
        }
        this.A0T.A06(ce, 1, -1, null, 0, null, c2158mK.A00, this.A03, i);
        String[] strArr = A0f;
        if (strArr[6].length() == strArr[7].length()) {
            throw new RuntimeException();
        }
        String[] strArr2 = A0f;
        strArr2[6] = "RSQzFltms";
        strArr2[7] = "MablvJN0SXK9";
    }

    @Override
    public final void ADx(C2158mK c2158mK, long j, long j2, boolean z) {
        C07429b dataSource = c2158mK.A08;
        this.A0T.A05(new CE(c2158mK.A05, c2158mK.A01, dataSource.A01(), dataSource.A02(), j, j2, dataSource.A00()), 1, -1, null, 0, null, c2158mK.A00, this.A03);
        if (!z) {
            for (C2152mE c2152mE : this.A0L) {
                c2152mE.A0Z();
            }
            if (this.A01 > 0) {
                ((InterfaceC2161mN) C3M.A01(this.A06)).ACs(this);
            }
        }
    }

    public void A0e(InterfaceC0942Gw interfaceC0942Gw) {
        this.A08 = interfaceC0942Gw;
        this.A03 = interfaceC0942Gw.A7l();
        this.A0C = !this.A0B && interfaceC0942Gw.A7l() == C.TIME_UNSET;
        this.A00 = this.A0C ? 7 : 1;
        this.A0V.AFH(this.A03, interfaceC0942Gw.AAa(), this.A0C);
        if (!this.A0G) {
            A0F();
        }
    }

    private boolean A0S() {
        return this.A05 != C.TIME_UNSET;
    }

    private boolean A0T() {
        return this.A0E || A0S();
    }

    private boolean A0U(C2158mK c2158mK, int i) {
        if (this.A0B || (this.A08 != null && this.A08.A7l() != C.TIME_UNSET)) {
            this.A02 = i;
            return true;
        }
        if (this.A0G && !A0T()) {
            this.A0F = true;
            return false;
        }
        this.A0E = this.A0G;
        this.A04 = 0L;
        this.A02 = 0;
        for (C2152mE c2152mE : this.A0L) {
            c2152mE.A0Z();
        }
        c2158mK.A04(0L, 0L);
        return true;
    }

    private boolean A0V(boolean[] zArr, long j) {
        int length = this.A0L.length;
        for (int i = 0; i < length; i++) {
            if (!this.A0L[i].A0f(j, false) && (zArr[i] || !this.A0A)) {
                return false;
            }
        }
        return true;
    }

    public final int A0X(int i, long j) {
        if (A0T()) {
            return 0;
        }
        A0K(i);
        C2152mE c2152mE = this.A0L[i];
        int iA0Q = c2152mE.A0Q(j, this.A0D);
        c2152mE.A0a(iA0Q);
        if (iA0Q == 0) {
            A0L(i);
        }
        return iA0Q;
    }

    public final int A0Y(int i, C6N c6n, C2234nY c2234nY, int i2) {
        if (A0T()) {
            return -3;
        }
        A0K(i);
        int result = this.A0L[i].A0R(c6n, c2234nY, i2, this.A0D);
        if (result == -3) {
            A0L(i);
        }
        return result;
    }

    public final H1 A0Z() {
        return A06(new C0823Ch(0, true));
    }

    public final void A0a() {
        if (this.A0G) {
            for (C2152mE c2152mE : this.A0L) {
                c2152mE.A0X();
            }
        }
        this.A0Y.A0C(this);
        this.A0O.removeCallbacksAndMessages(null);
        this.A06 = null;
        this.A0H = true;
    }

    public final void A0b() {
        if (!this.A0H) {
            ((InterfaceC2161mN) C3M.A01(this.A06)).ACs(this);
        }
    }

    public final void A0c() {
        this.A0B = true;
    }

    public final void A0d(int i) throws IOException {
        this.A0L[i].A0W();
        A0J();
    }

    public final boolean A0f(int i) {
        return !A0T() && this.A0L[i].A0g(this.A0D);
    }

    @Override
    @MetaExoPlayerCustomization("Added in D19760981 for cancel request")
    public final void A4k(long j) {
    }

    @Override
    public final boolean A54(long j) {
        if (this.A0D || this.A0Y.A0D() || this.A0F) {
            return false;
        }
        if (this.A0G && this.A01 == 0) {
            return false;
        }
        boolean zA04 = this.A0P.A04();
        boolean continuedLoading = this.A0Y.A0E();
        if (!continuedLoading) {
            A0H();
            return true;
        }
        return zA04;
    }

    @Override
    public final void A5s(long j, boolean z) {
        A0E();
        if (A0S()) {
            return;
        }
        boolean[] zArr = this.A07.A01;
        int length = this.A0L.length;
        for (int i = 0; i < length; i++) {
            C2152mE[] c2152mEArr = this.A0L;
            String[] strArr = A0f;
            String str = strArr[6];
            String str2 = strArr[7];
            int trackCount = str.length();
            if (trackCount == str2.length()) {
                throw new RuntimeException();
            }
            A0f[0] = "xFMIvf7swbs88yH1ASsn";
            c2152mEArr[i].A0c(j, z, zArr[i]);
        }
    }

    @Override
    public final void A6G() {
        this.A0I = true;
        this.A0O.post(this.A0Z);
    }

    @Override
    public final long A6j(long j, C7I c7i) {
        A0E();
        if (!this.A08.AAa()) {
            return 0L;
        }
        C0941Gv c0941GvA8t = this.A08.A8t(j);
        long j2 = c0941GvA8t.A00.A01;
        String[] strArr = A0f;
        if (strArr[6].length() == strArr[7].length()) {
            throw new RuntimeException();
        }
        String[] strArr2 = A0f;
        strArr2[2] = "A6SKS5Ejxr3dBguC5asmpR7Eo1U8ekaX";
        strArr2[5] = "H67kjT3j1V6FB1MougrbLEHHMAKkStlF";
        return c7i.A00(j, j2, c0941GvA8t.A01.A01);
    }

    @Override
    @MetaExoPlayerCustomization(type = {"NEW_METHOD"}, value = "Added in D9949576 for unstall buffer")
    public final long A6y(long j) {
        if (this.A0d && !this.A0G) {
            return 0L;
        }
        if (this.A0D) {
            return this.A03 - j;
        }
        return A70() - j;
    }

    /* JADX WARN: Code duplicated, block: B:27:0x0080  */
    /* JADX WARN: Code duplicated, block: B:29:0x0094  */
    /* JADX WARN: Code duplicated, block: B:31:0x00ad  */
    @Override
    public final long A70() {
        C2152mE[] c2152mEArr;
        int length;
        int trackCount;
        A0E();
        if (this.A0D || this.A01 == 0) {
            return Long.MIN_VALUE;
        }
        boolean zA0S = A0S();
        String[] strArr = A0f;
        if (strArr[1].length() == strArr[4].length()) {
            throw new RuntimeException();
        }
        A0f[0] = "YocKG9EsUqAPXBELOuFE";
        if (zA0S) {
            return this.A05;
        }
        long jA03 = Long.MAX_VALUE;
        if (this.A0A) {
            int length2 = this.A0L.length;
            for (int i = 0; i < length2; i++) {
                if (this.A07.A02[i]) {
                    C0824Ci c0824Ci = this.A07;
                    if (A0f[3].length() == 29) {
                        throw new RuntimeException();
                    }
                    A0f[0] = "CWn0xvSWDOv6yRiyH00v";
                    if (c0824Ci.A01[i]) {
                        C2152mE[] c2152mEArr2 = this.A0L;
                        String[] strArr2 = A0f;
                        String str = strArr2[2];
                        String str2 = strArr2[5];
                        int iCharAt = str.charAt(7);
                        int trackCount2 = str2.charAt(7);
                        if (iCharAt != trackCount2) {
                            if (!c2152mEArr2[i].A0e()) {
                                c2152mEArr = this.A0L;
                                String[] strArr3 = A0f;
                                String str3 = strArr3[6];
                                String str4 = strArr3[7];
                                length = str3.length();
                                trackCount = str4.length();
                                if (length != trackCount) {
                                    String[] strArr4 = A0f;
                                    strArr4[2] = "XlyJfiuja8URoHVDmmAk9tswNdXWeReZ";
                                    strArr4[5] = "M3k0l25jfFhaASrq1DtlqcrTUVRM508s";
                                    jA03 = Math.min(jA03, c2152mEArr[i].A0T());
                                } else {
                                    jA03 = Math.min(jA03, c2152mEArr[i].A0T());
                                }
                            }
                        } else {
                            String[] strArr5 = A0f;
                            strArr5[6] = "r97slta5r";
                            strArr5[7] = "NJT5wUbHJHvk";
                            if (!c2152mEArr2[i].A0e()) {
                                c2152mEArr = this.A0L;
                                String[] strArr6 = A0f;
                                String str5 = strArr6[6];
                                String str6 = strArr6[7];
                                length = str5.length();
                                trackCount = str6.length();
                                if (length != trackCount) {
                                    String[] strArr7 = A0f;
                                    strArr7[2] = "XlyJfiuja8URoHVDmmAk9tswNdXWeReZ";
                                    strArr7[5] = "M3k0l25jfFhaASrq1DtlqcrTUVRM508s";
                                    jA03 = Math.min(jA03, c2152mEArr[i].A0T());
                                } else {
                                    jA03 = Math.min(jA03, c2152mEArr[i].A0T());
                                }
                            }
                        }
                    }
                }
            }
        }
        if (jA03 == Long.MAX_VALUE) {
            jA03 = A03(false);
        }
        if (jA03 == Long.MIN_VALUE) {
            return this.A04;
        }
        return jA03;
    }

    @Override
    public final long A8T() {
        return A70();
    }

    @Override
    public final C2149mA A9E() {
        A0E();
        return this.A07.A00;
    }

    @Override
    public final void ABt() throws IOException {
        A0J();
        if (this.A0D && !this.A0G) {
            if (this.A0c) {
                throw C05802i.A01(A0B(90, 54, 63) + (this.A0N != null ? this.A0N.toString() : A0B(164, 4, 125)), null);
            }
            throw C05802i.A01(A0B(42, 48, 50), null);
        }
    }

    @Override
    public final void AE4() {
        for (C2152mE c2152mE : this.A0L) {
            c2152mE.A0Y();
        }
        this.A0U.AGr();
    }

    @Override
    public final void AFb(C2312or c2312or) {
        this.A0O.post(this.A0Z);
    }

    @Override
    public final void AGL(InterfaceC2161mN interfaceC2161mN, long j) {
        this.A06 = interfaceC2161mN;
        this.A0P.A04();
        A0H();
    }

    @Override
    public final long AGg() {
        if (!this.A0E) {
            return C.TIME_UNSET;
        }
        boolean z = this.A0D;
        if (A0f[0].length() == 20) {
            String[] strArr = A0f;
            strArr[1] = "";
            strArr[4] = "OLDtf0M6xpFiQAaUF2mFzXoKXa03XjZ";
            if (z || A00() > this.A02) {
                this.A0E = false;
                long j = this.A04;
                if (A0f[0].length() == 20) {
                    String[] strArr2 = A0f;
                    strArr2[6] = "30bUCuPdV";
                    strArr2[7] = "qvk1tPvPLdJz";
                    return j;
                }
            } else {
                return C.TIME_UNSET;
            }
        }
        throw new RuntimeException();
    }

    @Override
    public final void AGm(long j) {
    }

    @Override
    public final void AIN(final InterfaceC0942Gw interfaceC0942Gw) {
        this.A0O.post(new Runnable() {
            @Override
            public final void run() {
                this.A00.A0e(interfaceC0942Gw);
            }
        });
    }

    @Override
    public final long AIO(@MetaExoPlayerCustomization long j, boolean z) {
        A0E();
        boolean[] zArr = this.A07.A02;
        if (!this.A08.AAa()) {
            j = 0;
        }
        int i = 0;
        this.A0E = false;
        this.A04 = j;
        if (A0S()) {
            this.A05 = j;
            return j;
        }
        if (this.A00 != 7 && A0V(zArr, j)) {
            return j;
        }
        this.A0F = false;
        this.A05 = j;
        this.A0D = false;
        if (this.A0Y.A0E()) {
            C2152mE[] c2152mEArr = this.A0L;
            int length = c2152mEArr.length;
            while (i < length) {
                c2152mEArr[i].A0V();
                String[] strArr = A0f;
                if (strArr[6].length() == strArr[7].length()) {
                    throw new RuntimeException();
                }
                String[] strArr2 = A0f;
                strArr2[2] = "OrOS7Vhjp4VBbz175mMxq2SuFvjpl5bQ";
                strArr2[5] = "EAKZg7yj0ctHJiN4FHg90oFZJxg2ecfG";
                i++;
            }
            this.A0Y.A09();
            return j;
        }
        this.A0Y.A0A();
        C2152mE[] c2152mEArr2 = this.A0L;
        int length2 = c2152mEArr2.length;
        while (i < length2) {
            c2152mEArr2[i].A0Z();
            String[] strArr3 = A0f;
            if (strArr3[2].charAt(7) != strArr3[5].charAt(7)) {
                throw new RuntimeException();
            }
            String[] strArr4 = A0f;
            strArr4[6] = "p5drqiHAR";
            strArr4[7] = "h8TdfbRbJweW";
            i++;
        }
        return j;
    }

    @Override
    @MetaExoPlayerCustomization("Added in D19875605 for error load during pause")
    public final void AIs(boolean z) {
    }

    @Override
    public final H1 AJh(int i, int i2) {
        return A06(new C0823Ch(i, false));
    }

    @Override
    @MetaExoPlayerCustomization("Added in D13267633 for lower priority during pause")
    public final void AJq(byte b) {
    }
}
