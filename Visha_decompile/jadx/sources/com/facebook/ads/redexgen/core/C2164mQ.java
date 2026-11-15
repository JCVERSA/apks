package com.facebook.ads.redexgen.core;

import java.io.IOException;

public final class C2164mQ implements InterfaceC0833Cr {
    public static String[] A03 = {"SXf2ikyU7x67I20o8i24dVpGUFSBqQTw", "mkUiuiIj8yhWc2", "ZVpzrzkkS3TCIC8ssuB1q665Cly", "AyVvw5Y1t2x", "iglXNLTRJoy", "iTKB7JlXxZgW", "zcduVvETVwMCfQslxyZfhoZ", "8SZ4gfyzqyWZuyWUMuDO3PJ5JnvEF7yK"};
    public boolean A00;
    public final InterfaceC0833Cr A01;
    public final C9F A02;

    public C2164mQ(C9F c9f, InterfaceC0833Cr interfaceC0833Cr) {
        this.A02 = c9f;
        this.A01 = interfaceC0833Cr;
    }

    public final void A00() {
        this.A00 = false;
    }

    @Override
    public final boolean AAV() {
        if (!this.A02.A03()) {
            boolean zAAV = this.A01.AAV();
            String[] strArr = A03;
            if (strArr[5].length() == strArr[6].length()) {
                throw new RuntimeException();
            }
            String[] strArr2 = A03;
            strArr2[5] = "tfusTrbeCFgw";
            strArr2[6] = "N1qkw3c8e5Hqf14VA9IMw1Y";
            if (zAAV) {
                return true;
            }
        }
        return false;
    }

    @Override
    public final void ABs() throws IOException {
        this.A01.ABs();
    }

    /* JADX WARN: Code duplicated, block: B:17:0x0042  */
    /* JADX WARN: Code duplicated, block: B:19:0x005b  */
    /* JADX WARN: Code duplicated, block: B:21:0x006b  */
    /* JADX WARN: Code duplicated, block: B:26:0x0087  */
    /* JADX WARN: Code duplicated, block: B:27:0x008a  */
    /* JADX WARN: Code duplicated, block: B:30:0x009b  */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x00df, code lost:
    
        if (r3 == false) goto L45;
     */
    /* JADX WARN: Code restructure failed: missing block: B:48:0x00f7, code lost:
    
        if (r3 == false) goto L45;
     */
    /* JADX WARN: Instruction removed from duplicated block: B:17:0x0042, please report this as an issue */
    @Override
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final int AGf(C6N c6n, C2234nY c2234nY, int i) {
        long j;
        int length;
        int result;
        int encoderPadding;
        if (this.A02.A03()) {
            return -3;
        }
        if (this.A00) {
            c2234nY.A02(4);
            return -4;
        }
        int iAGf = this.A01.AGf(c6n, c2234nY, i);
        if (iAGf == -5) {
            Object objA01 = C3M.A01(c6n.A00);
            if (A03[1].length() == 3) {
                throw new RuntimeException();
            }
            A03[1] = "CgcnacS";
            C2312or c2312or = (C2312or) objA01;
            int result2 = c2312or.A08;
            if (result2 == 0) {
                int result3 = c2312or.A09;
                if (result3 != 0) {
                    j = this.A02.A01;
                    String[] strArr = A03;
                    String str = strArr[3];
                    String str2 = strArr[4];
                    length = str.length();
                    result = str2.length();
                    if (length != result) {
                        String[] strArr2 = A03;
                        strArr2[3] = "GNrNzPSs5rG";
                        strArr2[4] = "BRLad8Ppi7x";
                        if (j != 0) {
                            encoderPadding = 0;
                        } else {
                            encoderPadding = c2312or.A08;
                        }
                    } else {
                        String[] strArr3 = A03;
                        strArr3[7] = "EEmKLcyNYLT06pocayZ2GsCLcCuyLxXc";
                        strArr3[0] = "iurrvyyHueo7iqPuT2paMo28xJltVQ5w";
                        if (j != 0) {
                            encoderPadding = 0;
                        } else {
                            encoderPadding = c2312or.A08;
                        }
                    }
                    c6n.A00 = c2312or.A07().A0d(encoderPadding).A0e(this.A02.A00 == Long.MIN_VALUE ? c2312or.A09 : 0).A14();
                }
            } else {
                j = this.A02.A01;
                String[] strArr4 = A03;
                String str3 = strArr4[3];
                String str4 = strArr4[4];
                length = str3.length();
                result = str4.length();
                if (length != result) {
                    String[] strArr5 = A03;
                    strArr5[3] = "GNrNzPSs5rG";
                    strArr5[4] = "BRLad8Ppi7x";
                    if (j != 0) {
                        encoderPadding = 0;
                    } else {
                        encoderPadding = c2312or.A08;
                    }
                } else {
                    String[] strArr6 = A03;
                    strArr6[7] = "EEmKLcyNYLT06pocayZ2GsCLcCuyLxXc";
                    strArr6[0] = "iurrvyyHueo7iqPuT2paMo28xJltVQ5w";
                    if (j != 0) {
                        encoderPadding = 0;
                    } else {
                        encoderPadding = c2312or.A08;
                    }
                }
                c6n.A00 = c2312or.A07().A0d(encoderPadding).A0e(this.A02.A00 == Long.MIN_VALUE ? c2312or.A09 : 0).A14();
            }
            return -5;
        }
        if (this.A02.A00 != Long.MIN_VALUE) {
            if (iAGf != -4 || c2234nY.A01 < this.A02.A00) {
                if (iAGf == -3 && this.A02.A70() == Long.MIN_VALUE) {
                    boolean z = c2234nY.A04;
                    if (A03[2].length() != 27) {
                        String[] strArr7 = A03;
                        strArr7[7] = "1nwlHryK5EDeU2ZU0H4BcQJbxB1i4Ihb";
                        strArr7[0] = "uJ2uSAytr2SiAHwLxUdt9xnwmqCI2wHf";
                    } else {
                        String[] strArr8 = A03;
                        strArr8[5] = "inKi0NPX9S85";
                        strArr8[6] = "FN6Cq4NmwdrKNoi6ofH3HqR";
                    }
                }
            }
            c2234nY.A0A();
            c2234nY.A02(4);
            this.A00 = true;
            return -4;
        }
        return iAGf;
    }

    @Override
    public final int AJI(long j) {
        if (this.A02.A03()) {
            return -3;
        }
        return this.A01.AJI(j);
    }
}
