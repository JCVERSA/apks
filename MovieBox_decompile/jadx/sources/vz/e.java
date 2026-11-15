package vz;

import androidx.core.view.InputDeviceCompat;
import androidx.core.view.ViewCompat;
import com.alibaba.sdk.android.oss.common.RequestParameters;
import com.google.android.gms.fido.u2f.api.common.RegisterRequest;
import com.tn.lib.view.FlowLayout;
import okio.Utf8;

public class e {

    public final byte[] f73880a;

    private final int[] f73881b;

    private final String[] f73882c;

    private final h[] f73883d;

    private final int[] f73884e;

    private final int f73885f;

    public final int f73886g;

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:19:0x0060 A[PHI: r8
      0x0060: PHI (r8v3 int) = (r8v0 int), (r8v1 int), (r8v4 int) binds: [B:12:0x0050, B:22:0x006c, B:18:0x005f] A[DONT_GENERATE, DONT_INLINE]] */
    e(byte[] bArr, int i10, boolean z10) {
        this.f73880a = bArr;
        if (z10) {
            int i11 = i10 + 6;
            if (B(i11) > 56) {
                throw new IllegalArgumentException("Unsupported class file major version " + ((int) B(i11)));
            }
        }
        int iH = H(i10 + 8);
        this.f73881b = new int[iH];
        this.f73882c = new String[iH];
        int i12 = i10 + 10;
        int i13 = 0;
        boolean z11 = false;
        boolean z12 = false;
        int i14 = 1;
        while (i14 < iH) {
            int i15 = i14 + 1;
            int i16 = i12 + 1;
            this.f73881b[i14] = i16;
            int iH2 = 3;
            switch (bArr[i12]) {
                case 1:
                    iH2 = 3 + H(i16);
                    if (iH2 > i13) {
                        i14 = i15;
                        i13 = iH2;
                    } else {
                        i14 = i15;
                    }
                    i12 += iH2;
                    break;
                case 2:
                case 13:
                case 14:
                default:
                    throw new IllegalArgumentException();
                case 3:
                case 4:
                case 9:
                case 10:
                case 11:
                case 12:
                    i14 = i15;
                    iH2 = 5;
                    i12 += iH2;
                    break;
                case 5:
                case 6:
                    i14 += 2;
                    iH2 = 9;
                    i12 += iH2;
                    break;
                case 7:
                case 8:
                case 16:
                case 19:
                case 20:
                    i14 = i15;
                    i12 += iH2;
                    break;
                case 15:
                    iH2 = 4;
                    i14 = i15;
                    i12 += iH2;
                    break;
                case 17:
                    z11 = true;
                    i14 = i15;
                    iH2 = 5;
                    i12 += iH2;
                    break;
                case 18:
                    z12 = true;
                    i14 = i15;
                    iH2 = 5;
                    i12 += iH2;
                    break;
            }
        }
        this.f73885f = i13;
        this.f73886g = i12;
        this.f73883d = z11 ? new h[iH] : null;
        this.f73884e = (z11 || z12) ? k(i13) : null;
    }

    private void A(r rVar, i iVar, int i10, boolean z10) {
        int iR = i10 + 1;
        int i11 = this.f73880a[i10] & 255;
        rVar.a(i11, z10);
        char[] cArr = iVar.f73919c;
        for (int i12 = 0; i12 < i11; i12++) {
            int iH = H(iR);
            iR += 2;
            while (true) {
                int i13 = iH - 1;
                if (iH > 0) {
                    iR = r(rVar.z(i12, G(iR, cArr), z10), iR + 2, true, cArr);
                    iH = i13;
                }
            }
        }
    }

    private int C(int i10, boolean z10, boolean z11, i iVar) {
        int iK;
        int i11;
        char[] cArr = iVar.f73919c;
        q[] qVarArr = iVar.f73923g;
        if (z10) {
            iK = i10 + 1;
            i11 = this.f73880a[i10] & 255;
        } else {
            iVar.f73929m = -1;
            iK = i10;
            i11 = 255;
        }
        iVar.f73932p = 0;
        if (i11 < 64) {
            iVar.f73930n = 3;
            iVar.f73934r = 0;
        } else if (i11 < 128) {
            i11 -= 64;
            iK = K(iK, iVar.f73935s, 0, cArr, qVarArr);
            iVar.f73930n = 4;
            iVar.f73934r = 1;
        } else {
            if (i11 < 247) {
                throw new IllegalArgumentException();
            }
            int iH = H(iK);
            int i12 = iK + 2;
            if (i11 == 247) {
                iK = K(i12, iVar.f73935s, 0, cArr, qVarArr);
                iVar.f73930n = 4;
                iVar.f73934r = 1;
            } else {
                if (i11 >= 248 && i11 < 251) {
                    iVar.f73930n = 2;
                    int i13 = 251 - i11;
                    iVar.f73932p = i13;
                    iVar.f73931o -= i13;
                    iVar.f73934r = 0;
                } else if (i11 == 251) {
                    iVar.f73930n = 3;
                    iVar.f73934r = 0;
                } else if (i11 < 255) {
                    int i14 = i11 - 251;
                    int i15 = z11 ? iVar.f73931o : 0;
                    iK = i12;
                    int i16 = i14;
                    while (i16 > 0) {
                        iK = K(iK, iVar.f73933q, i15, cArr, qVarArr);
                        i16--;
                        i15++;
                    }
                    iVar.f73930n = 1;
                    iVar.f73932p = i14;
                    iVar.f73931o += i14;
                    iVar.f73934r = 0;
                } else {
                    int iH2 = H(i12);
                    int iK2 = iK + 4;
                    iVar.f73930n = 0;
                    iVar.f73932p = iH2;
                    iVar.f73931o = iH2;
                    for (int i17 = 0; i17 < iH2; i17++) {
                        iK2 = K(iK2, iVar.f73933q, i17, cArr, qVarArr);
                    }
                    int iH3 = H(iK2);
                    iK = iK2 + 2;
                    iVar.f73934r = iH3;
                    for (int i18 = 0; i18 < iH3; i18++) {
                        iK = K(iK, iVar.f73935s, i18, cArr, qVarArr);
                    }
                }
                iK = i12;
            }
            i11 = iH;
        }
        int i19 = iVar.f73929m + i11 + 1;
        iVar.f73929m = i19;
        d(i19, qVarArr);
        return iK;
    }

    private String D(int i10, char[] cArr) {
        return G(this.f73881b[H(i10)], cArr);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:17:0x006d  */
    /* JADX WARN: Code duplicated, block: B:18:0x0070  */
    private int E(i iVar, int i10) {
        int i11;
        int i12;
        int iT = t(i10);
        int i13 = iT >>> 24;
        if (i13 != 0 && i13 != 1) {
            switch (i13) {
                case 16:
                case 17:
                case 18:
                case 23:
                    i11 = iT & InputDeviceCompat.SOURCE_ANY;
                    i12 = i10 + 3;
                    break;
                case 19:
                case 20:
                case 21:
                    i11 = iT & ViewCompat.MEASURED_STATE_MASK;
                    i12 = i10 + 1;
                    break;
                case 22:
                    i11 = iT & FlowLayout.SPACING_AUTO;
                    i12 = i10 + 2;
                    break;
                default:
                    switch (i13) {
                        case 64:
                        case RegisterRequest.U2F_V1_CHALLENGE_BYTE_LENGTH:
                            i11 = iT & ViewCompat.MEASURED_STATE_MASK;
                            int iH = H(i10 + 1);
                            i12 = i10 + 3;
                            iVar.f73926j = new q[iH];
                            iVar.f73927k = new q[iH];
                            iVar.f73928l = new int[iH];
                            for (int i14 = 0; i14 < iH; i14++) {
                                int iH2 = H(i12);
                                int iH3 = H(i12 + 2);
                                int iH4 = H(i12 + 4);
                                i12 += 6;
                                iVar.f73926j[i14] = d(iH2, iVar.f73923g);
                                iVar.f73927k[i14] = d(iH2 + iH3, iVar.f73923g);
                                iVar.f73928l[i14] = iH4;
                            }
                            break;
                        case 66:
                            i11 = iT & InputDeviceCompat.SOURCE_ANY;
                            i12 = i10 + 3;
                            break;
                        case 67:
                        case 68:
                        case 69:
                        case 70:
                            i11 = iT & ViewCompat.MEASURED_STATE_MASK;
                            i12 = i10 + 3;
                            break;
                        case 71:
                        case 72:
                        case 73:
                        case 74:
                        case 75:
                            i11 = iT & (-16776961);
                            i12 = i10 + 4;
                            break;
                        default:
                            throw new IllegalArgumentException();
                    }
                    break;
            }
        } else {
            i11 = iT & FlowLayout.SPACING_AUTO;
            i12 = i10 + 2;
        }
        iVar.f73924h = i11;
        int iL = l(i12);
        iVar.f73925i = iL == 0 ? null : new z(this.f73880a, i12);
        return i12 + 1 + (iL * 2);
    }

    /* JADX WARN: Code duplicated, block: B:15:0x004d A[FALL_THROUGH] */
    private int[] F(r rVar, i iVar, int i10, boolean z10) {
        int i11;
        char[] cArr = iVar.f73919c;
        int iH = H(i10);
        int[] iArr = new int[iH];
        int iR = i10 + 2;
        for (int i12 = 0; i12 < iH; i12++) {
            iArr[i12] = iR;
            int iT = t(iR);
            int i13 = iT >>> 24;
            if (i13 != 23) {
                switch (i13) {
                    default:
                        switch (i13) {
                            case 64:
                            case RegisterRequest.U2F_V1_CHALLENGE_BYTE_LENGTH:
                                int iH2 = H(iR + 1);
                                i11 = iR + 3;
                                while (true) {
                                    int i14 = iH2 - 1;
                                    if (iH2 > 0) {
                                        int iH3 = H(i11);
                                        int iH4 = H(i11 + 2);
                                        i11 += 6;
                                        d(iH3, iVar.f73923g);
                                        d(iH3 + iH4, iVar.f73923g);
                                        iH2 = i14;
                                    }
                                    break;
                                }
                                break;
                            case 66:
                            case 67:
                            case 68:
                            case 69:
                            case 70:
                                break;
                            case 71:
                            case 72:
                            case 73:
                            case 74:
                            case 75:
                                i11 = iR + 4;
                                break;
                            default:
                                throw new IllegalArgumentException();
                        }
                    case 16:
                    case 17:
                    case 18:
                        i11 = iR + 3;
                        break;
                }
            } else {
                i11 = iR + 3;
            }
            int iL = l(i11);
            if (i13 == 66) {
                z zVar = iL != 0 ? new z(this.f73880a, i11) : null;
                int i15 = i11 + (iL * 2) + 1;
                iR = r(rVar.B(iT & InputDeviceCompat.SOURCE_ANY, zVar, G(i15, cArr), z10), i15 + 2, true, cArr);
            } else {
                iR = r(null, i11 + (iL * 2) + 3, true, cArr);
            }
        }
        return iArr;
    }

    private String I(int i10, int i11, char[] cArr) {
        int i12;
        int i13 = i11 + i10;
        byte[] bArr = this.f73880a;
        int i14 = 0;
        while (i10 < i13) {
            int i15 = i10 + 1;
            byte b10 = bArr[i10];
            if ((b10 & 128) == 0) {
                cArr[i14] = (char) (b10 & 127);
                i14++;
                i10 = i15;
            } else {
                if ((b10 & 224) == 192) {
                    i12 = i14 + 1;
                    i10 += 2;
                    cArr[i14] = (char) (((b10 & 31) << 6) + (bArr[i15] & Utf8.REPLACEMENT_BYTE));
                } else {
                    i12 = i14 + 1;
                    int i16 = i10 + 2;
                    i10 += 3;
                    cArr[i14] = (char) (((b10 & 15) << 12) + ((bArr[i15] & Utf8.REPLACEMENT_BYTE) << 6) + (bArr[i16] & Utf8.REPLACEMENT_BYTE));
                }
                i14 = i12;
            }
        }
        return new String(cArr, 0, i14);
    }

    private int K(int i10, Object[] objArr, int i11, char[] cArr, q[] qVarArr) {
        int i12 = i10 + 1;
        switch (this.f73880a[i10] & 255) {
            case 0:
                objArr[i11] = v.f74034a;
                return i12;
            case 1:
                objArr[i11] = v.f74035b;
                return i12;
            case 2:
                objArr[i11] = v.f74036c;
                return i12;
            case 3:
                objArr[i11] = v.f74037d;
                return i12;
            case 4:
                objArr[i11] = v.f74038e;
                return i12;
            case 5:
                objArr[i11] = v.f74039f;
                return i12;
            case 6:
                objArr[i11] = v.f74040g;
                return i12;
            case 7:
                objArr[i11] = m(i12, cArr);
                break;
            case 8:
                objArr[i11] = d(H(i12), qVarArr);
                break;
            default:
                throw new IllegalArgumentException();
        }
        return i10 + 3;
    }

    private void b(i iVar) {
        int i10;
        String str = iVar.f73922f;
        Object[] objArr = iVar.f73933q;
        int i11 = 0;
        if ((iVar.f73920d & 8) == 0) {
            if ("<init>".equals(iVar.f73921e)) {
                objArr[0] = v.f74040g;
            } else {
                objArr[0] = m(this.f73886g + 2, iVar.f73919c);
            }
            i11 = 1;
        }
        int i12 = 1;
        while (true) {
            int i13 = i12 + 1;
            char cCharAt = str.charAt(i12);
            if (cCharAt == 'F') {
                i10 = i11 + 1;
                objArr[i11] = v.f74036c;
            } else if (cCharAt != 'L') {
                if (cCharAt != 'S' && cCharAt != 'I') {
                    if (cCharAt == 'J') {
                        i10 = i11 + 1;
                        objArr[i11] = v.f74038e;
                    } else if (cCharAt != 'Z') {
                        if (cCharAt != '[') {
                            switch (cCharAt) {
                                case 'B':
                                case 'C':
                                    break;
                                case 'D':
                                    i10 = i11 + 1;
                                    objArr[i11] = v.f74037d;
                                    break;
                                default:
                                    iVar.f73931o = i11;
                                    return;
                            }
                        } else {
                            while (str.charAt(i13) == '[') {
                                i13++;
                            }
                            if (str.charAt(i13) == 'L') {
                                do {
                                    i13++;
                                } while (str.charAt(i13) != ';');
                            }
                            int i14 = i13 + 1;
                            objArr[i11] = str.substring(i12, i14);
                            i12 = i14;
                            i11++;
                        }
                    }
                }
                i10 = i11 + 1;
                objArr[i11] = v.f74035b;
            } else {
                int i15 = i13;
                while (str.charAt(i15) != ';') {
                    i15++;
                }
                objArr[i11] = str.substring(i13, i15);
                i11++;
                i12 = i15 + 1;
            }
            i11 = i10;
            i12 = i13;
        }
    }

    private void c(int i10, q[] qVarArr) {
        if (qVarArr[i10] == null) {
            q qVarU = u(i10, qVarArr);
            qVarU.f73973a = (short) (qVarU.f73973a | 1);
        }
    }

    private q d(int i10, q[] qVarArr) {
        q qVarU = u(i10, qVarArr);
        qVarU.f73973a = (short) (qVarU.f73973a & (-2));
        return qVarU;
    }

    private int i(int[] iArr, int i10) {
        if (iArr == null || i10 >= iArr.length || l(iArr[i10]) < 67) {
            return -1;
        }
        return H(iArr[i10] + 1);
    }

    private c j(c[] cVarArr, String str, int i10, int i11, char[] cArr, int i12, q[] qVarArr) {
        for (c cVar : cVarArr) {
            if (cVar.f73873a.equals(str)) {
                return cVar.g(this, i10, i11, cArr, i12, qVarArr);
            }
        }
        return new c(str).g(this, i10, i11, null, -1, null);
    }

    private int[] k(int i10) {
        char[] cArr = new char[i10];
        int iE = e();
        for (int iH = H(iE - 2); iH > 0; iH--) {
            String strG = G(iE, cArr);
            int iT = t(iE + 2);
            int i11 = iE + 6;
            if ("BootstrapMethods".equals(strG)) {
                int iH2 = H(i11);
                int[] iArr = new int[iH2];
                int iH3 = iE + 8;
                for (int i12 = 0; i12 < iH2; i12++) {
                    iArr[i12] = iH3;
                    iH3 += (H(iH3 + 2) * 2) + 4;
                }
                return iArr;
            }
            iE = i11 + iT;
        }
        return null;
    }

    /*  JADX ERROR: Type inference failed
        jadx.core.utils.exceptions.JadxOverflowException: Type inference error: updates count limit reached with updateSeq = 33481. Try increasing type updates limit count.
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.visit(TypeInferenceVisitor.java:79)
        */
    private void n(vz.r r39, vz.i r40, int r41) {
        /*
            Method dump skipped, instruction units count: 3348
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: vz.e.n(vz.r, vz.i, int):void");
    }

    private h p(int i10, char[] cArr) {
        h hVar = this.f73883d[i10];
        if (hVar != null) {
            return hVar;
        }
        int[] iArr = this.f73881b;
        int i11 = iArr[i10];
        int i12 = iArr[H(i11 + 2)];
        String strG = G(i12, cArr);
        String strG2 = G(i12 + 2, cArr);
        int i13 = this.f73884e[H(i11)];
        o oVar = (o) o(H(i13), cArr);
        int iH = H(i13 + 2);
        Object[] objArr = new Object[iH];
        int i14 = i13 + 4;
        for (int i15 = 0; i15 < iH; i15++) {
            objArr[i15] = o(H(i14), cArr);
            i14 += 2;
        }
        h[] hVarArr = this.f73883d;
        h hVar2 = new h(strG, strG2, oVar, objArr);
        hVarArr[i10] = hVar2;
        return hVar2;
    }

    /* JADX WARN: Code duplicated, block: B:98:0x020d  */
    private int q(a aVar, int i10, String str, char[] cArr) {
        int i11 = 0;
        if (aVar == null) {
            int i12 = this.f73880a[i10] & 255;
            if (i12 == 64) {
                return r(null, i10 + 3, true, cArr);
            }
            if (i12 != 91) {
                return i12 != 101 ? i10 + 3 : i10 + 5;
            }
            return r(null, i10 + 1, false, cArr);
        }
        int i13 = i10 + 1;
        int i14 = this.f73880a[i10] & 255;
        if (i14 == 64) {
            return r(aVar.b(str, G(i13, cArr)), i10 + 3, true, cArr);
        }
        if (i14 == 70) {
            aVar.a(str, o(H(i13), cArr));
        } else if (i14 == 83) {
            aVar.a(str, Short.valueOf((short) t(this.f73881b[H(i13)])));
        } else if (i14 == 99) {
            aVar.a(str, y.n(G(i13, cArr)));
        } else {
            if (i14 == 101) {
                aVar.e(str, G(i13, cArr), G(i10 + 3, cArr));
                return i10 + 5;
            }
            if (i14 == 115) {
                aVar.a(str, G(i13, cArr));
            } else if (i14 == 73 || i14 == 74) {
                aVar.a(str, o(H(i13), cArr));
            } else if (i14 == 90) {
                aVar.a(str, t(this.f73881b[H(i13)]) == 0 ? Boolean.FALSE : Boolean.TRUE);
            } else {
                if (i14 == 91) {
                    int iH = H(i13);
                    int i15 = i10 + 3;
                    if (iH == 0) {
                        return r(aVar.c(str), i10 + 1, false, cArr);
                    }
                    int i16 = this.f73880a[i15] & 255;
                    if (i16 == 70) {
                        float[] fArr = new float[iH];
                        while (i11 < iH) {
                            fArr[i11] = Float.intBitsToFloat(t(this.f73881b[H(i15 + 1)]));
                            i15 += 3;
                            i11++;
                        }
                        aVar.a(str, fArr);
                    } else if (i16 == 83) {
                        short[] sArr = new short[iH];
                        while (i11 < iH) {
                            sArr[i11] = (short) t(this.f73881b[H(i15 + 1)]);
                            i15 += 3;
                            i11++;
                        }
                        aVar.a(str, sArr);
                    } else if (i16 == 90) {
                        boolean[] zArr = new boolean[iH];
                        for (int i17 = 0; i17 < iH; i17++) {
                            zArr[i17] = t(this.f73881b[H(i15 + 1)]) != 0;
                            i15 += 3;
                        }
                        aVar.a(str, zArr);
                    } else if (i16 == 73) {
                        int[] iArr = new int[iH];
                        while (i11 < iH) {
                            iArr[i11] = t(this.f73881b[H(i15 + 1)]);
                            i15 += 3;
                            i11++;
                        }
                        aVar.a(str, iArr);
                    } else if (i16 != 74) {
                        switch (i16) {
                            case 66:
                                byte[] bArr = new byte[iH];
                                while (i11 < iH) {
                                    bArr[i11] = (byte) t(this.f73881b[H(i15 + 1)]);
                                    i15 += 3;
                                    i11++;
                                }
                                aVar.a(str, bArr);
                                break;
                            case 67:
                                char[] cArr2 = new char[iH];
                                while (i11 < iH) {
                                    cArr2[i11] = (char) t(this.f73881b[H(i15 + 1)]);
                                    i15 += 3;
                                    i11++;
                                }
                                aVar.a(str, cArr2);
                                break;
                            case 68:
                                double[] dArr = new double[iH];
                                while (i11 < iH) {
                                    dArr[i11] = Double.longBitsToDouble(v(this.f73881b[H(i15 + 1)]));
                                    i15 += 3;
                                    i11++;
                                }
                                aVar.a(str, dArr);
                                break;
                            default:
                                return r(aVar.c(str), i10 + 1, false, cArr);
                        }
                    } else {
                        long[] jArr = new long[iH];
                        while (i11 < iH) {
                            jArr[i11] = v(this.f73881b[H(i15 + 1)]);
                            i15 += 3;
                            i11++;
                        }
                        aVar.a(str, jArr);
                    }
                    return i15;
                }
                switch (i14) {
                    case 66:
                        aVar.a(str, Byte.valueOf((byte) t(this.f73881b[H(i13)])));
                        break;
                    case 67:
                        aVar.a(str, Character.valueOf((char) t(this.f73881b[H(i13)])));
                        break;
                    case 68:
                        aVar.a(str, o(H(i13), cArr));
                        break;
                    default:
                        throw new IllegalArgumentException();
                }
            }
        }
        return i10 + 3;
    }

    private int r(a aVar, int i10, boolean z10, char[] cArr) {
        int iH = H(i10);
        int iQ = i10 + 2;
        if (!z10) {
            while (true) {
                int i11 = iH - 1;
                if (iH <= 0) {
                    break;
                }
                iQ = q(aVar, iQ, null, cArr);
                iH = i11;
            }
        } else {
            while (true) {
                int i12 = iH - 1;
                if (iH <= 0) {
                    break;
                }
                iQ = q(aVar, iQ + 2, G(iQ, cArr), cArr);
                iH = i12;
            }
        }
        if (aVar != null) {
            aVar.d();
        }
        return iQ;
    }

    private int s(f fVar, i iVar, int i10) {
        int i11;
        int i12;
        i iVar2 = iVar;
        char[] cArr = iVar2.f73919c;
        int iH = H(i10);
        String strG = G(i10 + 2, cArr);
        String strG2 = G(i10 + 4, cArr);
        int iH2 = H(i10 + 6);
        int i13 = i10 + 8;
        int i14 = iH;
        int i15 = 0;
        int i16 = 0;
        int i17 = 0;
        int i18 = 0;
        c cVarJ = null;
        String strG3 = null;
        Object objO = null;
        while (true) {
            int i19 = iH2 - 1;
            if (iH2 <= 0) {
                break;
            }
            String strG4 = G(i13, cArr);
            int iT = t(i13 + 2);
            int i20 = i13 + 6;
            if ("ConstantValue".equals(strG4)) {
                int iH3 = H(i20);
                objO = iH3 == 0 ? null : o(iH3, cArr);
            } else if (RequestParameters.SIGNATURE.equals(strG4)) {
                strG3 = G(i20, cArr);
            } else {
                if ("Deprecated".equals(strG4)) {
                    i12 = 131072 | i14;
                } else {
                    if ("Synthetic".equals(strG4)) {
                        i12 = i14 | 4096;
                    } else if ("RuntimeVisibleAnnotations".equals(strG4)) {
                        i18 = i20;
                        i11 = i18;
                    } else if ("RuntimeVisibleTypeAnnotations".equals(strG4)) {
                        i16 = i20;
                        i11 = i16;
                    } else if ("RuntimeInvisibleAnnotations".equals(strG4)) {
                        i17 = i20;
                        i11 = i17;
                    } else if ("RuntimeInvisibleTypeAnnotations".equals(strG4)) {
                        i15 = i20;
                        i11 = i15;
                    } else {
                        i11 = i20;
                        c cVar = cVarJ;
                        cVarJ = j(iVar2.f73917a, strG4, i11, iT, cArr, -1, null);
                        cVarJ.f73875c = cVar;
                        i17 = i17;
                        i18 = i18;
                        i15 = i15;
                        i16 = i16;
                    }
                    i13 = i11 + iT;
                    iVar2 = iVar;
                    iH2 = i19;
                }
                i14 = i12;
            }
            i11 = i20;
            i13 = i11 + iT;
            iVar2 = iVar;
            iH2 = i19;
        }
        c cVar2 = cVarJ;
        int i21 = i15;
        int i22 = i16;
        int i23 = i17;
        int i24 = i18;
        l lVarE = fVar.e(i14, strG, strG2, strG3, objO);
        if (lVarE == null) {
            return i13;
        }
        if (i24 != 0) {
            int iH4 = H(i24);
            int iR = i24 + 2;
            while (true) {
                int i25 = iH4 - 1;
                if (iH4 <= 0) {
                    break;
                }
                iR = r(lVarE.a(G(iR, cArr), true), iR + 2, true, cArr);
                iH4 = i25;
            }
        }
        if (i23 != 0) {
            int iH5 = H(i23);
            int iR2 = i23 + 2;
            while (true) {
                int i26 = iH5 - 1;
                if (iH5 <= 0) {
                    break;
                }
                iR2 = r(lVarE.a(G(iR2, cArr), false), iR2 + 2, true, cArr);
                iH5 = i26;
            }
        }
        if (i22 != 0) {
            int iH6 = H(i22);
            int iR3 = i22 + 2;
            while (true) {
                int i27 = iH6 - 1;
                if (iH6 <= 0) {
                    break;
                }
                int iE = E(iVar, iR3);
                iR3 = r(lVarE.d(iVar.f73924h, iVar.f73925i, G(iE, cArr), true), iE + 2, true, cArr);
                iH6 = i27;
            }
        }
        if (i21 != 0) {
            int iH7 = H(i21);
            int iR4 = i21 + 2;
            while (true) {
                int i28 = iH7 - 1;
                if (iH7 <= 0) {
                    break;
                }
                int iE2 = E(iVar, iR4);
                iR4 = r(lVarE.d(iVar.f73924h, iVar.f73925i, G(iE2, cArr), false), iE2 + 2, true, cArr);
                iH7 = i28;
            }
        }
        while (true) {
            c cVar3 = cVar2;
            if (cVar3 == null) {
                lVarE.c();
                return i13;
            }
            cVar2 = cVar3.f73875c;
            cVar3.f73875c = null;
            lVarE.b(cVar3);
        }
    }

    private int w(f fVar, i iVar, int i10) {
        int i11;
        int i12;
        char[] cArr = iVar.f73919c;
        iVar.f73920d = H(i10);
        iVar.f73921e = G(i10 + 2, cArr);
        int i13 = i10 + 4;
        iVar.f73922f = G(i13, cArr);
        int iH = H(i10 + 6);
        int i14 = i10 + 8;
        int i15 = 0;
        int i16 = 0;
        int i17 = 0;
        int i18 = 0;
        int i19 = 0;
        int i20 = 0;
        int iH2 = 0;
        c cVar = null;
        boolean z10 = false;
        int i21 = 0;
        String[] strArr = null;
        int i22 = 0;
        int i23 = 0;
        int i24 = 0;
        while (true) {
            int i25 = iH - 1;
            if (iH <= 0) {
                break;
            }
            String strG = G(i14, cArr);
            int iT = t(i14 + 2);
            iH2 = iH2;
            int i26 = i14 + 6;
            int i27 = i15;
            if (!"Code".equals(strG)) {
                if ("Exceptions".equals(strG)) {
                    int iH3 = H(i26);
                    String[] strArr2 = new String[iH3];
                    int i28 = i14 + 8;
                    i11 = i16;
                    for (int i29 = 0; i29 < iH3; i29++) {
                        strArr2[i29] = m(i28, cArr);
                        i28 += 2;
                    }
                    strArr = strArr2;
                    i21 = i26;
                    i12 = i21;
                } else {
                    i11 = i16;
                    if (RequestParameters.SIGNATURE.equals(strG)) {
                        i12 = i26;
                        i15 = i27;
                        i16 = i11;
                        iH2 = H(i26);
                    } else if ("Deprecated".equals(strG)) {
                        iVar.f73920d |= 131072;
                        i12 = i26;
                    } else if ("RuntimeVisibleAnnotations".equals(strG)) {
                        i18 = i26;
                        i12 = i18;
                    } else if ("RuntimeVisibleTypeAnnotations".equals(strG)) {
                        i16 = i26;
                        i12 = i16;
                        iH2 = iH2;
                        i15 = i27;
                    } else if ("AnnotationDefault".equals(strG)) {
                        i20 = i26;
                        i12 = i20;
                    } else if ("Synthetic".equals(strG)) {
                        iVar.f73920d |= 4096;
                        i12 = i26;
                        iH2 = iH2;
                        i15 = i27;
                        i16 = i11;
                        z10 = true;
                    } else if ("RuntimeInvisibleAnnotations".equals(strG)) {
                        i17 = i26;
                        i12 = i17;
                    } else if ("RuntimeInvisibleTypeAnnotations".equals(strG)) {
                        i15 = i26;
                        i12 = i15;
                        i16 = i11;
                    } else if ("RuntimeVisibleParameterAnnotations".equals(strG)) {
                        i22 = i26;
                        i12 = i22;
                    } else if ("RuntimeInvisibleParameterAnnotations".equals(strG)) {
                        i23 = i26;
                        i12 = i23;
                    } else if ("MethodParameters".equals(strG)) {
                        i19 = i26;
                        i12 = i19;
                    } else {
                        i12 = i26;
                        c cVarJ = j(iVar.f73917a, strG, i26, iT, cArr, -1, null);
                        cVarJ.f73875c = cVar;
                        cVar = cVarJ;
                        iH2 = iH2;
                        i15 = i27;
                        i16 = i11;
                        i17 = i17;
                        i18 = i18;
                        i19 = i19;
                        i20 = i20;
                    }
                }
                i15 = i27;
                i16 = i11;
            } else if ((iVar.f73918b & 1) == 0) {
                i24 = i26;
                i12 = i24;
                iH2 = iH2;
                i15 = i27;
            } else {
                i11 = i16;
                i12 = i26;
                i15 = i27;
                i16 = i11;
            }
            i14 = i12 + iT;
            iH = i25;
        }
        int i30 = i15;
        int i31 = i16;
        int i32 = i17;
        int i33 = i18;
        int i34 = i19;
        int i35 = i20;
        r rVarG = fVar.g(iVar.f73920d, iVar.f73921e, iVar.f73922f, iH2 == 0 ? null : J(iH2, cArr), strArr);
        if (rVarG == null) {
            return i14;
        }
        if (rVarG instanceof s) {
            if (((s) rVarG).H(this, i10, i14 - i10, z10, (iVar.f73920d & 131072) != 0, H(i13), iH2, i21)) {
                return i14;
            }
        }
        if (i34 != 0) {
            int iL = l(i34);
            int i36 = i34 + 1;
            while (true) {
                int i37 = iL - 1;
                if (iL <= 0) {
                    break;
                }
                rVarG.y(G(i36, cArr), H(i36 + 2));
                i36 += 4;
                iL = i37;
            }
        }
        if (i35 != 0) {
            a aVarC = rVarG.c();
            q(aVarC, i35, null, cArr);
            if (aVarC != null) {
                aVarC.d();
            }
        }
        if (i33 != 0) {
            int iH4 = H(i33);
            int iR = i33 + 2;
            while (true) {
                int i38 = iH4 - 1;
                if (iH4 <= 0) {
                    break;
                }
                iR = r(rVarG.b(G(iR, cArr), true), iR + 2, true, cArr);
                iH4 = i38;
            }
        }
        if (i32 != 0) {
            int iH5 = H(i32);
            int iR2 = i32 + 2;
            while (true) {
                int i39 = iH5 - 1;
                if (iH5 <= 0) {
                    break;
                }
                iR2 = r(rVarG.b(G(iR2, cArr), false), iR2 + 2, true, cArr);
                iH5 = i39;
            }
        }
        if (i31 != 0) {
            int iH6 = H(i31);
            int iR3 = i31 + 2;
            while (true) {
                int i40 = iH6 - 1;
                if (iH6 <= 0) {
                    break;
                }
                int iE = E(iVar, iR3);
                iR3 = r(rVarG.D(iVar.f73924h, iVar.f73925i, G(iE, cArr), true), iE + 2, true, cArr);
                iH6 = i40;
            }
        }
        if (i30 != 0) {
            int iH7 = H(i30);
            int iR4 = i30 + 2;
            while (true) {
                int i41 = iH7 - 1;
                if (iH7 <= 0) {
                    break;
                }
                int iE2 = E(iVar, iR4);
                iR4 = r(rVarG.D(iVar.f73924h, iVar.f73925i, G(iE2, cArr), false), iE2 + 2, true, cArr);
                iH7 = i41;
            }
        }
        int i42 = i22;
        if (i42 != 0) {
            A(rVarG, iVar, i42, true);
        }
        int i43 = i23;
        if (i43 != 0) {
            A(rVarG, iVar, i43, false);
        }
        while (cVar != null) {
            c cVar2 = cVar.f73875c;
            cVar.f73875c = null;
            rVarG.d(cVar);
            cVar = cVar2;
        }
        int i44 = i24;
        if (i44 != 0) {
            rVarG.e();
            n(rVarG, iVar, i44);
        }
        rVarG.f();
        return i14;
    }

    private void y(f fVar, i iVar, int i10, int i11, String str) {
        String[] strArr;
        char[] cArr = iVar.f73919c;
        int i12 = i10 + 6;
        t tVarH = fVar.h(x(i10, cArr), H(i10 + 2), G(i10 + 4, cArr));
        if (tVarH == null) {
            return;
        }
        if (str != null) {
            tVarH.c(str);
        }
        if (i11 != 0) {
            int iH = H(i11);
            int i13 = i11 + 2;
            while (true) {
                int i14 = iH - 1;
                if (iH <= 0) {
                    break;
                }
                tVarH.e(z(i13, cArr));
                i13 += 2;
                iH = i14;
            }
        }
        int iH2 = H(i12);
        int i15 = i10 + 8;
        while (true) {
            int i16 = iH2 - 1;
            if (iH2 <= 0) {
                break;
            }
            String strX = x(i15, cArr);
            int iH3 = H(i15 + 2);
            String strG = G(i15 + 4, cArr);
            i15 += 6;
            tVarH.g(strX, iH3, strG);
            iH2 = i16;
        }
        int iH4 = H(i15);
        int i17 = i15 + 2;
        while (true) {
            int i18 = iH4 - 1;
            String[] strArr2 = null;
            if (iH4 <= 0) {
                break;
            }
            String strZ = z(i17, cArr);
            int iH5 = H(i17 + 2);
            int iH6 = H(i17 + 4);
            i17 += 6;
            if (iH6 != 0) {
                strArr2 = new String[iH6];
                for (int i19 = 0; i19 < iH6; i19++) {
                    strArr2[i19] = x(i17, cArr);
                    i17 += 2;
                }
            }
            tVarH.b(strZ, iH5, strArr2);
            iH4 = i18;
        }
        int iH7 = H(i17);
        int i20 = i17 + 2;
        while (true) {
            int i21 = iH7 - 1;
            if (iH7 <= 0) {
                break;
            }
            String strZ2 = z(i20, cArr);
            int iH8 = H(i20 + 2);
            int iH9 = H(i20 + 4);
            i20 += 6;
            if (iH9 != 0) {
                strArr = new String[iH9];
                for (int i22 = 0; i22 < iH9; i22++) {
                    strArr[i22] = x(i20, cArr);
                    i20 += 2;
                }
            } else {
                strArr = null;
            }
            tVarH.d(strZ2, iH8, strArr);
            iH7 = i21;
        }
        int iH10 = H(i20);
        int i23 = i20 + 2;
        while (true) {
            int i24 = iH10 - 1;
            if (iH10 <= 0) {
                break;
            }
            tVarH.h(m(i23, cArr));
            i23 += 2;
            iH10 = i24;
        }
        int iH11 = H(i23);
        int i25 = i23 + 2;
        while (true) {
            int i26 = iH11 - 1;
            if (iH11 <= 0) {
                tVarH.a();
                return;
            }
            String strM = m(i25, cArr);
            int iH12 = H(i25 + 2);
            i25 += 4;
            String[] strArr3 = new String[iH12];
            for (int i27 = 0; i27 < iH12; i27++) {
                strArr3[i27] = m(i25, cArr);
                i25 += 2;
            }
            tVarH.f(strM, strArr3);
            iH11 = i26;
        }
    }

    public short B(int i10) {
        byte[] bArr = this.f73880a;
        return (short) ((bArr[i10 + 1] & 255) | ((bArr[i10] & 255) << 8));
    }

    public String G(int i10, char[] cArr) {
        int iH = H(i10);
        if (i10 == 0 || iH == 0) {
            return null;
        }
        return J(iH, cArr);
    }

    public int H(int i10) {
        byte[] bArr = this.f73880a;
        return (bArr[i10 + 1] & 255) | ((bArr[i10] & 255) << 8);
    }

    final String J(int i10, char[] cArr) {
        String[] strArr = this.f73882c;
        String str = strArr[i10];
        if (str != null) {
            return str;
        }
        int i11 = this.f73881b[i10];
        String strI = I(i11 + 2, H(i11), cArr);
        strArr[i10] = strI;
        return strI;
    }

    public void a(f fVar, c[] cVarArr, int i10) {
        int i11;
        i iVar = new i();
        iVar.f73917a = cVarArr;
        iVar.f73918b = i10;
        char[] cArr = new char[this.f73885f];
        iVar.f73919c = cArr;
        int i12 = this.f73886g;
        int iH = H(i12);
        String strM = m(i12 + 2, cArr);
        String strM2 = m(i12 + 4, cArr);
        int iH2 = H(i12 + 6);
        String[] strArr = new String[iH2];
        int i13 = i12 + 8;
        for (int i14 = 0; i14 < iH2; i14++) {
            strArr[i14] = m(i13, cArr);
            i13 += 2;
        }
        int iE = e();
        int i15 = iH;
        int iH3 = H(iE - 2);
        String strI = null;
        String strG = null;
        int i16 = 0;
        String strG2 = null;
        int i17 = 0;
        String strM3 = null;
        String strM4 = null;
        int i18 = 0;
        int i19 = 0;
        int i20 = 0;
        int i21 = 0;
        int i22 = 0;
        int i23 = 0;
        c cVar = null;
        int i24 = 0;
        while (iH3 > 0) {
            String strG3 = G(iE, cArr);
            int iT = t(iE + 2);
            int i25 = iE + 6;
            String str = strI;
            if ("SourceFile".equals(strG3)) {
                i11 = i25;
                strG = G(i25, cArr);
            } else if ("InnerClasses".equals(strG3)) {
                i24 = i25;
                i11 = i24;
            } else if ("EnclosingMethod".equals(strG3)) {
                i18 = i25;
                i11 = i18;
            } else if ("NestHost".equals(strG3)) {
                i11 = i25;
                strM4 = m(i25, cArr);
            } else if ("NestMembers".equals(strG3)) {
                i23 = i25;
                i11 = i23;
            } else {
                if (RequestParameters.SIGNATURE.equals(strG3)) {
                    strG2 = G(i25, cArr);
                } else if ("RuntimeVisibleAnnotations".equals(strG3)) {
                    i19 = i25;
                    i11 = i19;
                } else if ("RuntimeVisibleTypeAnnotations".equals(strG3)) {
                    i21 = i25;
                    i11 = i21;
                } else if ("Deprecated".equals(strG3)) {
                    i15 |= 131072;
                } else if ("Synthetic".equals(strG3)) {
                    i15 |= 4096;
                } else {
                    if ("SourceDebugExtension".equals(strG3)) {
                        strI = I(i25, iT, new char[iT]);
                        i11 = i25;
                    } else if ("RuntimeInvisibleAnnotations".equals(strG3)) {
                        i20 = i25;
                        i11 = i20;
                    } else if ("RuntimeInvisibleTypeAnnotations".equals(strG3)) {
                        i22 = i25;
                        i11 = i22;
                    } else if ("Module".equals(strG3)) {
                        i16 = i25;
                        i11 = i16;
                    } else if ("ModuleMainClass".equals(strG3)) {
                        strM3 = m(i25, cArr);
                    } else if ("ModulePackages".equals(strG3)) {
                        i17 = i25;
                        i11 = i17;
                    } else if ("BootstrapMethods".equals(strG3)) {
                        i11 = i25;
                        i13 = i13;
                        iT = iT;
                        strArr = strArr;
                        strI = str;
                    } else {
                        i11 = i25;
                        i13 = i13;
                        iT = iT;
                        strArr = strArr;
                        c cVarJ = j(cVarArr, strG3, i11, iT, cArr, -1, null);
                        cVarJ.f73875c = cVar;
                        cVar = cVarJ;
                        i15 = i15;
                        strI = str;
                        strG = strG;
                    }
                    iE = i11 + iT;
                    iH3--;
                    strArr = strArr;
                    i13 = i13;
                }
                i11 = i25;
            }
            strI = str;
            iE = i11 + iT;
            iH3--;
            strArr = strArr;
            i13 = i13;
        }
        String str2 = strI;
        String str3 = strG;
        int i26 = i13;
        String[] strArr2 = strArr;
        c cVar2 = cVar;
        fVar.a(t(this.f73881b[1] - 7), i15, strM, strG2, strM2, strArr2);
        if ((i10 & 2) == 0 && (str3 != null || str2 != null)) {
            fVar.l(str3, str2);
        }
        if (i16 != 0) {
            y(fVar, iVar, i16, i17, strM3);
        }
        String str4 = strM4;
        if (str4 != null) {
            fVar.i(str4);
        }
        int i27 = i18;
        if (i27 != 0) {
            String strM5 = m(i27, cArr);
            int iH4 = H(i27 + 2);
            fVar.k(strM5, iH4 == 0 ? null : G(this.f73881b[iH4], cArr), iH4 == 0 ? null : G(this.f73881b[iH4] + 2, cArr));
        }
        int i28 = i19;
        if (i28 != 0) {
            int iH5 = H(i28);
            int iR = i28 + 2;
            while (true) {
                int i29 = iH5 - 1;
                if (iH5 <= 0) {
                    break;
                }
                iR = r(fVar.b(G(iR, cArr), true), iR + 2, true, cArr);
                iH5 = i29;
            }
        }
        int i30 = i20;
        if (i30 != 0) {
            int iH6 = H(i30);
            int iR2 = i30 + 2;
            while (true) {
                int i31 = iH6 - 1;
                if (iH6 <= 0) {
                    break;
                }
                iR2 = r(fVar.b(G(iR2, cArr), false), iR2 + 2, true, cArr);
                iH6 = i31;
            }
        }
        int i32 = i21;
        if (i32 != 0) {
            int iH7 = H(i32);
            int iR3 = i32 + 2;
            while (true) {
                int i33 = iH7 - 1;
                if (iH7 <= 0) {
                    break;
                }
                int iE2 = E(iVar, iR3);
                iR3 = r(fVar.m(iVar.f73924h, iVar.f73925i, G(iE2, cArr), true), iE2 + 2, true, cArr);
                iH7 = i33;
            }
        }
        int i34 = i22;
        if (i34 != 0) {
            int iH8 = H(i34);
            int iR4 = i34 + 2;
            while (true) {
                int i35 = iH8 - 1;
                if (iH8 <= 0) {
                    break;
                }
                int iE3 = E(iVar, iR4);
                iR4 = r(fVar.m(iVar.f73924h, iVar.f73925i, G(iE3, cArr), false), iE3 + 2, true, cArr);
                iH8 = i35;
            }
        }
        while (cVar2 != null) {
            c cVar3 = cVar2.f73875c;
            cVar2.f73875c = null;
            fVar.c(cVar2);
            cVar2 = cVar3;
        }
        int i36 = i23;
        if (i36 != 0) {
            int iH9 = H(i36);
            int i37 = i36 + 2;
            while (true) {
                int i38 = iH9 - 1;
                if (iH9 <= 0) {
                    break;
                }
                fVar.j(m(i37, cArr));
                i37 += 2;
                iH9 = i38;
            }
        }
        int i39 = i24;
        if (i39 != 0) {
            int iH10 = H(i39);
            int i40 = i39 + 2;
            while (true) {
                int i41 = iH10 - 1;
                if (iH10 <= 0) {
                    break;
                }
                fVar.f(m(i40, cArr), m(i40 + 2, cArr), G(i40 + 4, cArr), H(i40 + 6));
                i40 += 8;
                iH10 = i41;
            }
        }
        int iH11 = H(i26);
        int iS = i26 + 2;
        while (true) {
            int i42 = iH11 - 1;
            if (iH11 <= 0) {
                break;
            }
            iS = s(fVar, iVar, iS);
            iH11 = i42;
        }
        int iH12 = H(iS);
        int iW = iS + 2;
        while (true) {
            int i43 = iH12 - 1;
            if (iH12 <= 0) {
                fVar.d();
                return;
            } else {
                iW = w(fVar, iVar, iW);
                iH12 = i43;
            }
        }
    }

    final int e() {
        int i10 = this.f73886g;
        int iH = i10 + 8 + (H(i10 + 6) * 2);
        int iH2 = H(iH);
        int iT = iH + 2;
        while (true) {
            int i11 = iH2 - 1;
            if (iH2 <= 0) {
                break;
            }
            int iH3 = H(iT + 6);
            iT += 8;
            while (true) {
                int i12 = iH3 - 1;
                if (iH3 > 0) {
                    iT += t(iT + 2) + 6;
                    iH3 = i12;
                }
            }
            iH2 = i11;
        }
        int iH4 = H(iT);
        int iT2 = iT + 2;
        while (true) {
            int i13 = iH4 - 1;
            if (iH4 <= 0) {
                return iT2 + 2;
            }
            int iH5 = H(iT2 + 6);
            iT2 += 8;
            while (true) {
                int i14 = iH5 - 1;
                if (iH5 > 0) {
                    iT2 += t(iT2 + 2) + 6;
                    iH5 = i14;
                }
            }
            iH4 = i13;
        }
    }

    public int f(int i10) {
        return this.f73881b[i10];
    }

    public int g() {
        return this.f73881b.length;
    }

    public int h() {
        return this.f73885f;
    }

    public int l(int i10) {
        return this.f73880a[i10] & 255;
    }

    public String m(int i10, char[] cArr) {
        return D(i10, cArr);
    }

    public Object o(int i10, char[] cArr) {
        int i11 = this.f73881b[i10];
        byte b10 = this.f73880a[i11 - 1];
        switch (b10) {
            case 3:
                return Integer.valueOf(t(i11));
            case 4:
                return Float.valueOf(Float.intBitsToFloat(t(i11)));
            case 5:
                return Long.valueOf(v(i11));
            case 6:
                return Double.valueOf(Double.longBitsToDouble(v(i11)));
            case 7:
                return y.k(G(i11, cArr));
            case 8:
                return G(i11, cArr);
            default:
                switch (b10) {
                    case 15:
                        int iL = l(i11);
                        int i12 = this.f73881b[H(i11 + 1)];
                        int i13 = this.f73881b[H(i12 + 2)];
                        return new o(iL, m(i12, cArr), G(i13, cArr), G(i13 + 2, cArr), this.f73880a[i12 - 1] == 11);
                    case 16:
                        return y.j(G(i11, cArr));
                    case 17:
                        return p(i10, cArr);
                    default:
                        throw new IllegalArgumentException();
                }
        }
    }

    public int t(int i10) {
        byte[] bArr = this.f73880a;
        return (bArr[i10 + 3] & 255) | ((bArr[i10] & 255) << 24) | ((bArr[i10 + 1] & 255) << 16) | ((bArr[i10 + 2] & 255) << 8);
    }

    protected q u(int i10, q[] qVarArr) {
        if (qVarArr[i10] == null) {
            qVarArr[i10] = new q();
        }
        return qVarArr[i10];
    }

    public long v(int i10) {
        return (((long) t(i10)) << 32) | (((long) t(i10 + 4)) & 4294967295L);
    }

    public String x(int i10, char[] cArr) {
        return D(i10, cArr);
    }

    public String z(int i10, char[] cArr) {
        return D(i10, cArr);
    }
}
