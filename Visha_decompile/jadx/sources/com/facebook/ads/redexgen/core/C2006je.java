package com.facebook.ads.redexgen.core;

import android.net.Uri;
import android.util.SparseArray;
import androidx.core.view.InputDeviceCompat;
import androidx.media3.common.C;
import java.io.IOException;
import java.util.Map;
import org.checkerframework.checker.nullness.qual.RequiresNonNull;

public final class C2006je implements GX {
    public static String[] A0B = {"UBvRkgXOGDkhiRviOullp8V", "VkNaXMTzU8N2w", "EmncOItxREzVuvRcJiesLUTUZ", "GKNHQwhZeE13dvoU8lLSXwuEJRZ0Rb8T", "UfDFEQBLtd8kFCM7fNQpR1e2paOBi7mP", "RVi2VPuM0SECIbGMRSZvlBLvqxfM7S", "lPCpjqdMUX8JsRnbL9v7kcIYKByBL6xe", "JprIbG5eTccKgwX6h6kDKt0luN"};
    public static final InterfaceC0921Gb A0C = new InterfaceC0921Gb() {
        @Override
        public final GX[] A5F() {
            return C2006je.A01();
        }

        @Override
        public final GX[] A5G(Uri uri, Map map) {
            return AbstractC0920Ga.A01(this, uri, map);
        }
    };
    public long A00;
    public GY A01;
    public C2008jg A02;
    public boolean A03;
    public boolean A04;
    public boolean A05;
    public boolean A06;
    public final SparseArray<KV> A07;
    public final C4J A08;
    public final C4R A09;
    public final KU A0A;

    /* JADX WARN: Code duplicated, block: B:73:0x0193  */
    /* JADX WARN: Code duplicated, block: B:77:0x01b1  */
    /* JADX WARN: Code duplicated, block: B:79:0x01b7  */
    /* JADX WARN: Failed to parse debug info
    java.lang.ArrayIndexOutOfBoundsException
     */
    @Override
    public final int AGb(InterfaceC2101lN interfaceC2101lN, C0939Gt c0939Gt) throws IOException {
        C3M.A02(this.A01);
        long jA8G = interfaceC2101lN.A8G();
        if ((jA8G != -1) && !this.A0A.A0E()) {
            return this.A0A.A0B(interfaceC2101lN, c0939Gt);
        }
        A00(jA8G);
        if (this.A02 != null && this.A02.A09()) {
            return this.A02.A06(interfaceC2101lN, c0939Gt);
        }
        interfaceC2101lN.AI1();
        long jA8a = jA8G != -1 ? jA8G - interfaceC2101lN.A8a() : -1L;
        if ((jA8a != -1 && jA8a < 4) || !interfaceC2101lN.AGA(this.A08.A0l(), 0, 4, true)) {
            return -1;
        }
        this.A08.A0f(0);
        int iA0C = this.A08.A0C();
        if (iA0C == 441) {
            return -1;
        }
        if (A0B[2].length() == 2) {
            throw new RuntimeException();
        }
        String[] strArr = A0B;
        strArr[5] = "kMhOTVhRWN36SIdb7fVpbVP8KQK8iP";
        strArr[1] = "K6CIMfQf5fCJv";
        if (iA0C == 442) {
            interfaceC2101lN.AG9(this.A08.A0l(), 0, 10);
            this.A08.A0f(9);
            interfaceC2101lN.AJJ((this.A08.A0I() & 7) + 14);
            return 0;
        }
        if (iA0C == 443) {
            interfaceC2101lN.AG9(this.A08.A0l(), 0, 2);
            this.A08.A0f(0);
            interfaceC2101lN.AJJ(this.A08.A0M() + 6);
            return 0;
        }
        if (((iA0C & InputDeviceCompat.SOURCE_ANY) >> 8) != 1) {
            interfaceC2101lN.AJJ(1);
            return 0;
        }
        int i = iA0C & 255;
        KV kv = this.A07.get(i);
        if (!this.A03) {
            if (kv == null) {
                KJ c2018jq = null;
                if (i == 189) {
                    c2018jq = new C2028k0();
                    this.A04 = true;
                    this.A00 = interfaceC2101lN.A8f();
                } else {
                    int i2 = i & 224;
                    if (A0B[7].length() != 26) {
                        A0B[7] = "MD0211Yr4bYXM5L9ZkPBjN7rOQ";
                        if (i2 == 192) {
                            c2018jq = new C2012jk();
                            this.A04 = true;
                            this.A00 = interfaceC2101lN.A8f();
                        } else if ((i & 240) == 224) {
                            c2018jq = new C2018jq();
                            this.A05 = true;
                            this.A00 = interfaceC2101lN.A8f();
                        }
                    } else {
                        String[] strArr2 = A0B;
                        strArr2[6] = "PIHtVurnoe8IajroMJlyufhIBiisymoK";
                        strArr2[4] = "tbo4qyhyaN86Rqnk6vLIVirgmw8EdsC9";
                        if (i2 == 192) {
                            c2018jq = new C2012jk();
                            this.A04 = true;
                            this.A00 = interfaceC2101lN.A8f();
                        } else if ((i & 240) == 224) {
                            c2018jq = new C2018jq();
                            this.A05 = true;
                            this.A00 = interfaceC2101lN.A8f();
                        }
                    }
                }
                if (c2018jq != null) {
                    c2018jq.A5U(this.A01, new C1027Ke(i, 256));
                    kv = new KV(c2018jq, this.A09);
                    this.A07.put(i, kv);
                }
            }
            if (interfaceC2101lN.A8f() > ((this.A04 && this.A05) ? this.A00 + 8192 : 1048576L)) {
                this.A03 = true;
                this.A01.A6G();
            }
        }
        interfaceC2101lN.AG9(this.A08.A0l(), 0, 2);
        this.A08.A0f(0);
        int iA0M = this.A08.A0M() + 6;
        if (kv == null) {
            interfaceC2101lN.AJJ(iA0M);
            return 0;
        }
        this.A08.A0d(iA0M);
        interfaceC2101lN.readFully(this.A08.A0l(), 0, iA0M);
        this.A08.A0f(6);
        kv.A03(this.A08);
        this.A08.A0e(this.A08.A08());
        return 0;
    }

    public C2006je() {
        this(new C4R(0L));
    }

    public C2006je(C4R c4r) {
        this.A09 = c4r;
        this.A08 = new C4J(4096);
        this.A07 = new SparseArray<>();
        this.A0A = new KU();
    }

    @RequiresNonNull({"output"})
    private void A00(long j) {
        if (!this.A06) {
            this.A06 = true;
            if (this.A0A.A0C() != C.TIME_UNSET) {
                this.A02 = new C2008jg(this.A0A.A0D(), this.A0A.A0C(), j);
                this.A01.AIN(this.A02.A07());
            } else {
                this.A01.AIN(new C2096lI(this.A0A.A0C()));
            }
        }
    }

    public static GX[] A01() {
        return new GX[]{new C2006je()};
    }

    @Override
    public final void AA4(GY gy) {
        this.A01 = gy;
    }

    @Override
    public final void AGr() {
    }

    @Override
    public final void AIM(long j, long j2) {
        boolean z = false;
        boolean resetTimestampAdjuster = this.A09.A04() == C.TIME_UNSET;
        if (!resetTimestampAdjuster) {
            long jA02 = this.A09.A02();
            if (jA02 != C.TIME_UNSET && jA02 != 0 && jA02 != j2) {
                z = true;
            }
            resetTimestampAdjuster = z;
        }
        if (resetTimestampAdjuster) {
            this.A09.A07(j2);
        }
        if (this.A02 != null) {
            this.A02.A08(j2);
        }
        for (int i = 0; i < this.A07.size(); i++) {
            this.A07.valueAt(i).A02();
        }
    }

    @Override
    public final boolean AJL(InterfaceC2101lN interfaceC2101lN) throws IOException {
        byte[] bArr = new byte[14];
        interfaceC2101lN.AG9(bArr, 0, 14);
        if (442 != (((bArr[0] & 255) << 24) | ((bArr[1] & 255) << 16) | ((bArr[2] & 255) << 8) | (bArr[3] & 255)) || (bArr[4] & 196) != 68 || (bArr[6] & 4) != 4 || (bArr[8] & 4) != 4 || (bArr[9] & 1) != 1 || (bArr[12] & 3) != 3) {
            return false;
        }
        byte b = bArr[13];
        if (A0B[3].charAt(12) == 'n') {
            throw new RuntimeException();
        }
        A0B[2] = "VV5ZPjEmtEUa5x1ycfEwWXr";
        int packStuffingLength = b & 7;
        interfaceC2101lN.A3z(packStuffingLength);
        interfaceC2101lN.AG9(bArr, 0, 3);
        int packStuffingLength2 = bArr[0];
        int i = (packStuffingLength2 & 255) << 16;
        int packStuffingLength3 = bArr[1];
        int i2 = i | ((packStuffingLength3 & 255) << 8);
        int packStuffingLength4 = bArr[2];
        return 1 == ((packStuffingLength4 & 255) | i2);
    }
}
