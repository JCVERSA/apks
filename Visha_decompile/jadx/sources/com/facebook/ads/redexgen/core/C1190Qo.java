package com.facebook.ads.redexgen.core;

import java.util.Arrays;

public final class C1190Qo {
    public static byte[] A02;
    public static String[] A03 = {"TTkBeT", "dgqPpyxawDBTokVKz6usds7DGGljbLlG", "Om", "1", "lOfLhIubd0jJyTpTkNltmpZf14oHCLV9", "yX0qRkYxaN2cv8t3SuJSwpxSeia", "n9D4XHOOTGgVdLWa6Wuko3wZCERnKgc", "NKR9b6EIrIhl49GaATLNKeLdYiLud"};
    public final C1832gb<AbstractC1182Qg, C1188Qm> A00 = new C1832gb<>();
    public final OS<AbstractC1182Qg> A01 = new OS<>();

    public static String A01(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A02, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 13);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A02() {
        byte[] bArr = {78, 118, 112, 119, 35, 115, 113, 108, 117, 106, 103, 102, 35, 101, 111, 98, 100, 35, 83, 81, 70, 35, 108, 113, 35, 83, 76, 80, 87};
        if (A03[1].charAt(27) != 'j') {
            throw new RuntimeException();
        }
        A03[0] = "DMTuNl";
        A02 = bArr;
    }

    static {
        A02();
    }

    private QJ A00(AbstractC1182Qg abstractC1182Qg, int i) {
        C1188Qm c1188QmA0B;
        QJ info;
        int iA08 = this.A00.A08(abstractC1182Qg);
        if (iA08 >= 0 && (c1188QmA0B = this.A00.A0B(iA08)) != null) {
            int i2 = c1188QmA0B.A00;
            if (A03[2].length() != 2) {
                throw new RuntimeException();
            }
            A03[2] = "6x";
            if ((i2 & i) != 0) {
                int i3 = c1188QmA0B.A00;
                int index = ~i;
                c1188QmA0B.A00 = i3 & index;
                if (i == 4) {
                    info = c1188QmA0B.A02;
                } else if (i == 8) {
                    info = c1188QmA0B.A01;
                } else {
                    throw new IllegalArgumentException(A01(0, 29, 14));
                }
                int index2 = c1188QmA0B.A00;
                if ((index2 & 12) == 0) {
                    this.A00.A0A(iA08);
                    C1188Qm.A02(c1188QmA0B);
                }
                return info;
            }
        }
        return null;
    }

    public final QJ A03(AbstractC1182Qg abstractC1182Qg) {
        return A00(abstractC1182Qg, 8);
    }

    public final QJ A04(AbstractC1182Qg abstractC1182Qg) {
        return A00(abstractC1182Qg, 4);
    }

    public final AbstractC1182Qg A05(long j) {
        return this.A01.A08(j);
    }

    public final void A06() {
        this.A00.clear();
        this.A01.A09();
    }

    public final void A07() {
        C1188Qm.A01();
    }

    public final void A08(long j, AbstractC1182Qg abstractC1182Qg) {
        this.A01.A0B(j, abstractC1182Qg);
    }

    public final void A09(AbstractC1182Qg abstractC1182Qg) {
        C1188Qm c1188QmA00 = this.A00.get(abstractC1182Qg);
        if (c1188QmA00 == null) {
            c1188QmA00 = C1188Qm.A00();
            this.A00.put(abstractC1182Qg, c1188QmA00);
        }
        c1188QmA00.A00 |= 1;
    }

    public final void A0A(AbstractC1182Qg abstractC1182Qg) {
        C1188Qm c1188Qm = this.A00.get(abstractC1182Qg);
        if (c1188Qm == null) {
            return;
        }
        c1188Qm.A00 &= -2;
    }

    public final void A0B(AbstractC1182Qg abstractC1182Qg) {
        for (int iA06 = this.A01.A06() - 1; iA06 >= 0; iA06--) {
            if (abstractC1182Qg == this.A01.A07(iA06)) {
                this.A01.A0A(iA06);
                break;
            }
        }
        C1188Qm info = this.A00.remove(abstractC1182Qg);
        if (info != null) {
            C1188Qm.A02(info);
        }
    }

    public final void A0C(AbstractC1182Qg abstractC1182Qg) {
        A0A(abstractC1182Qg);
    }

    public final void A0D(AbstractC1182Qg abstractC1182Qg, QJ qj) {
        C1188Qm c1188QmA00 = this.A00.get(abstractC1182Qg);
        if (c1188QmA00 == null) {
            c1188QmA00 = C1188Qm.A00();
            this.A00.put(abstractC1182Qg, c1188QmA00);
        }
        c1188QmA00.A00 |= 2;
        c1188QmA00.A02 = qj;
    }

    public final void A0E(AbstractC1182Qg abstractC1182Qg, QJ qj) {
        C1188Qm c1188QmA00 = this.A00.get(abstractC1182Qg);
        if (c1188QmA00 == null) {
            c1188QmA00 = C1188Qm.A00();
            this.A00.put(abstractC1182Qg, c1188QmA00);
        }
        c1188QmA00.A01 = qj;
        c1188QmA00.A00 |= 8;
    }

    public final void A0F(AbstractC1182Qg abstractC1182Qg, QJ qj) {
        C1188Qm c1188QmA00 = this.A00.get(abstractC1182Qg);
        if (c1188QmA00 == null) {
            c1188QmA00 = C1188Qm.A00();
            this.A00.put(abstractC1182Qg, c1188QmA00);
        }
        c1188QmA00.A02 = qj;
        c1188QmA00.A00 |= 4;
    }

    public final void A0G(InterfaceC1189Qn interfaceC1189Qn) {
        for (int size = this.A00.size() - 1; size >= 0; size--) {
            AbstractC1182Qg abstractC1182QgA09 = this.A00.A09(size);
            C1188Qm c1188QmA0A = this.A00.A0A(size);
            if ((c1188QmA0A.A00 & 3) == 3) {
                interfaceC1189Qn.AJo(abstractC1182QgA09);
            } else {
                int index = c1188QmA0A.A00;
                if ((index & 1) != 0) {
                    if (c1188QmA0A.A02 == null) {
                        interfaceC1189Qn.AJo(abstractC1182QgA09);
                    } else {
                        interfaceC1189Qn.AGR(abstractC1182QgA09, c1188QmA0A.A02, c1188QmA0A.A01);
                    }
                } else if ((c1188QmA0A.A00 & 14) == 14) {
                    interfaceC1189Qn.AGP(abstractC1182QgA09, c1188QmA0A.A02, c1188QmA0A.A01);
                } else if ((c1188QmA0A.A00 & 12) == 12) {
                    interfaceC1189Qn.AGT(abstractC1182QgA09, c1188QmA0A.A02, c1188QmA0A.A01);
                } else {
                    int index2 = c1188QmA0A.A00;
                    if ((index2 & 4) != 0) {
                        interfaceC1189Qn.AGR(abstractC1182QgA09, c1188QmA0A.A02, null);
                    } else {
                        int index3 = c1188QmA0A.A00;
                        if ((index3 & 8) != 0) {
                            QJ qj = c1188QmA0A.A02;
                            if (A03[4].charAt(6) == 'y') {
                                throw new RuntimeException();
                            }
                            A03[7] = "pRTOxDzzIVV0VuKMKqyuKOShfW9n8";
                            interfaceC1189Qn.AGP(abstractC1182QgA09, qj, c1188QmA0A.A01);
                        } else {
                            continue;
                        }
                    }
                }
            }
            C1188Qm.A02(c1188QmA0A);
        }
    }

    public final boolean A0H(AbstractC1182Qg abstractC1182Qg) {
        C1188Qm record = this.A00.get(abstractC1182Qg);
        return (record == null || (record.A00 & 1) == 0) ? false : true;
    }

    public final boolean A0I(AbstractC1182Qg abstractC1182Qg) {
        C1188Qm record = this.A00.get(abstractC1182Qg);
        return (record == null || (record.A00 & 4) == 0) ? false : true;
    }
}
