package vz;

import androidx.core.view.ViewCompat;
import com.cloud.tmc.kernel.constants.TmcConstants;
import com.cloud.tmc.offline.download.model.TaskResultKt;
import com.mbridge.msdk.out.MBSupportMuteAdType;
import com.mbridge.msdk.playercommon.exoplayer2.extractor.ts.PsExtractor;
import com.mbridge.msdk.playercommon.exoplayer2.extractor.ts.TsExtractor;
import org.mvel2.ast.ASTNode;

class n {

    q f73952a;

    private int[] f73953b;

    private int[] f73954c;

    private int[] f73955d;

    private int[] f73956e;

    private short f73957f;

    private short f73958g;

    private int f73959h;

    private int[] f73960i;

    n(q qVar) {
        this.f73952a = qVar;
    }

    private void b(int i10) {
        if (this.f73960i == null) {
            this.f73960i = new int[2];
        }
        int length = this.f73960i.length;
        int i11 = this.f73959h;
        if (i11 >= length) {
            int[] iArr = new int[Math.max(i11 + 1, length * 2)];
            System.arraycopy(this.f73960i, 0, iArr, 0, length);
            this.f73960i = iArr;
        }
        int[] iArr2 = this.f73960i;
        int i12 = this.f73959h;
        this.f73959h = i12 + 1;
        iArr2[i12] = i10;
    }

    static int e(x xVar, Object obj) {
        if (obj instanceof Integer) {
            return ((Integer) obj).intValue() | 16777216;
        }
        return obj instanceof String ? f(xVar, y.k((String) obj).e(), 0) : xVar.K("", ((q) obj).f73976d) | 50331648;
    }

    private static int f(x xVar, String str, int i10) {
        char cCharAt = str.charAt(i10);
        int I = 16777218;
        if (cCharAt == 'F') {
            return 16777218;
        }
        if (cCharAt == 'L') {
            return xVar.I(str.substring(i10 + 1, str.length() - 1)) | ASTNode.PCTX_STORED;
        }
        if (cCharAt != 'S') {
            if (cCharAt == 'V') {
                return 0;
            }
            if (cCharAt != 'I') {
                if (cCharAt == 'J') {
                    return 16777220;
                }
                if (cCharAt != 'Z') {
                    if (cCharAt == '[') {
                        int i11 = i10 + 1;
                        while (str.charAt(i11) == '[') {
                            i11++;
                        }
                        char cCharAt2 = str.charAt(i11);
                        if (cCharAt2 != 'F') {
                            if (cCharAt2 == 'L') {
                                I = xVar.I(str.substring(i11 + 1, str.length() - 1)) | ASTNode.PCTX_STORED;
                            } else if (cCharAt2 == 'S') {
                                I = 16777228;
                            } else if (cCharAt2 == 'Z') {
                                I = 16777225;
                            } else if (cCharAt2 == 'I') {
                                I = 16777217;
                            } else if (cCharAt2 != 'J') {
                                switch (cCharAt2) {
                                    case 'B':
                                        I = 16777226;
                                        break;
                                    case 'C':
                                        I = 16777227;
                                        break;
                                    case 'D':
                                        I = 16777219;
                                        break;
                                    default:
                                        throw new IllegalArgumentException();
                                }
                            } else {
                                I = 16777220;
                            }
                        }
                        return ((i11 - i10) << 28) | I;
                    }
                    switch (cCharAt) {
                        case 'B':
                        case 'C':
                            break;
                        case 'D':
                            return 16777219;
                        default:
                            throw new IllegalArgumentException();
                    }
                }
            }
        }
        return 16777217;
    }

    static int g(x xVar, String str) {
        return xVar.I(str) | ASTNode.PCTX_STORED;
    }

    /* JADX WARN: Code duplicated, block: B:19:0x003b  */
    /* JADX WARN: Code duplicated, block: B:22:0x0045  */
    /* JADX WARN: Code duplicated, block: B:23:0x0051 A[LOOP:0: B:7:0x000d->B:23:0x0051, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:25:0x0037 A[SYNTHETIC] */
    private int h(x xVar, int i10) {
        int i11;
        int I;
        if (i10 == 16777222 || ((-16777216) & i10) == 50331648) {
            for (int i12 = 0; i12 < this.f73959h; i12++) {
                int i13 = this.f73960i[i12];
                int i14 = (-268435456) & i13;
                int i15 = 251658240 & i13;
                int i16 = i13 & 1048575;
                if (i15 == 67108864) {
                    i11 = this.f73953b[i16];
                } else {
                    if (i15 == 83886080) {
                        int[] iArr = this.f73954c;
                        i11 = iArr[iArr.length - i16];
                    }
                    if (i10 == i13) {
                        if (i10 == 16777222) {
                            I = xVar.I(xVar.O());
                        } else {
                            I = xVar.I(xVar.T(i10 & 1048575).f74045e);
                        }
                        return I | ASTNode.PCTX_STORED;
                    }
                }
                i13 = i11 + i14;
                if (i10 == i13) {
                    if (i10 == 16777222) {
                        I = xVar.I(xVar.O());
                    } else {
                        I = xVar.I(xVar.T(i10 & 1048575).f74045e);
                    }
                    return I | ASTNode.PCTX_STORED;
                }
            }
        }
        return i10;
    }

    private int j(int i10) {
        int[] iArr = this.f73955d;
        if (iArr == null || i10 >= iArr.length) {
            return i10 | 67108864;
        }
        int i11 = iArr[i10];
        if (i11 != 0) {
            return i11;
        }
        int i12 = i10 | 67108864;
        iArr[i10] = i12;
        return i12;
    }

    private static boolean k(x xVar, int i10, int[] iArr, int i11) {
        int iMin;
        int I;
        int i12 = iArr[i11];
        if (i12 == i10) {
            return false;
        }
        if ((268435455 & i10) == 16777221) {
            if (i12 == 16777221) {
                return false;
            }
            i10 = 16777221;
        }
        if (i12 == 0) {
            iArr[i11] = i10;
            return true;
        }
        int i13 = i12 & (-268435456);
        int iH = 16777216;
        if (i13 != 0 || (i12 & 251658240) == 33554432) {
            if (i10 == 16777221) {
                return false;
            }
            if ((i10 & ViewCompat.MEASURED_STATE_MASK) != ((-16777216) & i12)) {
                int i14 = i10 & (-268435456);
                if (i14 != 0 || (i10 & 251658240) == 33554432) {
                    if (i14 != 0 && (i10 & 251658240) != 33554432) {
                        i14 -= 268435456;
                    }
                    if (i13 != 0 && (i12 & 251658240) != 33554432) {
                        i13 -= 268435456;
                    }
                    iMin = Math.min(i14, i13) | ASTNode.PCTX_STORED;
                    I = xVar.I("java/lang/Object");
                    iH = iMin | I;
                }
            } else if ((i12 & 251658240) == 33554432) {
                iH = (i10 & (-268435456)) | ASTNode.PCTX_STORED | xVar.H(i10 & 1048575, 1048575 & i12);
            } else {
                iMin = ((i10 & (-268435456)) - 268435456) | ASTNode.PCTX_STORED;
                I = xVar.I("java/lang/Object");
                iH = iMin | I;
            }
        } else if (i12 == 16777221) {
            if ((i10 & (-268435456)) == 0 && (i10 & 251658240) != 33554432) {
                i10 = 16777216;
            }
            iH = i10;
        }
        if (iH == i12) {
            return false;
        }
        iArr[i11] = iH;
        return true;
    }

    private int m() {
        short s10 = this.f73958g;
        if (s10 <= 0) {
            short s11 = (short) (this.f73957f - 1);
            this.f73957f = s11;
            return (-s11) | 83886080;
        }
        int[] iArr = this.f73956e;
        short s12 = (short) (s10 - 1);
        this.f73958g = s12;
        return iArr[s12];
    }

    private void n(int i10) {
        short s10 = this.f73958g;
        if (s10 >= i10) {
            this.f73958g = (short) (s10 - i10);
        } else {
            this.f73957f = (short) (this.f73957f - (i10 - s10));
            this.f73958g = (short) 0;
        }
    }

    private void o(String str) {
        char cCharAt = str.charAt(0);
        if (cCharAt == '(') {
            n((y.c(str) >> 2) - 1);
        } else if (cCharAt == 'J' || cCharAt == 'D') {
            n(2);
        } else {
            n(1);
        }
    }

    private void p(int i10) {
        if (this.f73956e == null) {
            this.f73956e = new int[10];
        }
        int length = this.f73956e.length;
        short s10 = this.f73958g;
        if (s10 >= length) {
            int[] iArr = new int[Math.max(s10 + 1, length * 2)];
            System.arraycopy(this.f73956e, 0, iArr, 0, length);
            this.f73956e = iArr;
        }
        int[] iArr2 = this.f73956e;
        short s11 = this.f73958g;
        short s12 = (short) (s11 + 1);
        this.f73958g = s12;
        iArr2[s11] = i10;
        short s13 = (short) (this.f73957f + s12);
        q qVar = this.f73952a;
        if (s13 > qVar.f73980h) {
            qVar.f73980h = s13;
        }
    }

    private void q(x xVar, String str) {
        int iF = f(xVar, str, str.charAt(0) == '(' ? str.indexOf(41) + 1 : 0);
        if (iF != 0) {
            p(iF);
            if (iF == 16777220 || iF == 16777219) {
                p(16777216);
            }
        }
    }

    static void r(x xVar, int i10, d dVar) {
        int i11 = ((-268435456) & i10) >> 28;
        if (i11 == 0) {
            int i12 = i10 & 1048575;
            int i13 = i10 & 251658240;
            if (i13 == 16777216) {
                dVar.g(i12);
                return;
            } else if (i13 == 33554432) {
                dVar.g(7).k(xVar.e(xVar.T(i12).f74045e).f74041a);
                return;
            } else {
                if (i13 != 50331648) {
                    throw new AssertionError();
                }
                dVar.g(8).k((int) xVar.T(i12).f74046f);
                return;
            }
        }
        StringBuilder sb2 = new StringBuilder();
        while (true) {
            int i14 = i11 - 1;
            if (i11 <= 0) {
                break;
            }
            sb2.append('[');
            i11 = i14;
        }
        if ((i10 & 251658240) == 33554432) {
            sb2.append('L');
            sb2.append(xVar.T(i10 & 1048575).f74045e);
            sb2.append(';');
        } else {
            int i15 = i10 & 1048575;
            if (i15 == 1) {
                sb2.append('I');
            } else if (i15 == 2) {
                sb2.append('F');
            } else if (i15 == 3) {
                sb2.append('D');
            } else if (i15 != 4) {
                switch (i15) {
                    case 9:
                        sb2.append('Z');
                        break;
                    case 10:
                        sb2.append('B');
                        break;
                    case 11:
                        sb2.append('C');
                        break;
                    case 12:
                        sb2.append('S');
                        break;
                    default:
                        throw new AssertionError();
                }
            } else {
                sb2.append('J');
            }
        }
        dVar.g(7).k(xVar.e(sb2.toString()).f74041a);
    }

    private void u(int i10, int i11) {
        if (this.f73955d == null) {
            this.f73955d = new int[10];
        }
        int length = this.f73955d.length;
        if (i10 >= length) {
            int[] iArr = new int[Math.max(i10 + 1, length * 2)];
            System.arraycopy(this.f73955d, 0, iArr, 0, length);
            this.f73955d = iArr;
        }
        this.f73955d[i10] = i11;
    }

    final void a(s sVar) {
        int[] iArr = this.f73953b;
        int i10 = 0;
        int i11 = 0;
        int i12 = 0;
        int i13 = 0;
        while (true) {
            int i14 = 2;
            if (i11 >= iArr.length) {
                break;
            }
            int i15 = iArr[i11];
            if (i15 != 16777220 && i15 != 16777219) {
                i14 = 1;
            }
            i11 += i14;
            if (i15 == 16777216) {
                i13++;
            } else {
                i12 += i13 + 1;
                i13 = 0;
            }
        }
        int[] iArr2 = this.f73954c;
        int i16 = 0;
        int i17 = 0;
        while (i16 < iArr2.length) {
            int i18 = iArr2[i16];
            i16 += (i18 == 16777220 || i18 == 16777219) ? 2 : 1;
            i17++;
        }
        int iV = sVar.V(this.f73952a.f73976d, i12, i17);
        int i19 = 0;
        while (true) {
            int i20 = i12 - 1;
            if (i12 <= 0) {
                break;
            }
            int i21 = iArr[i19];
            i19 += (i21 == 16777220 || i21 == 16777219) ? 2 : 1;
            sVar.T(iV, i21);
            i12 = i20;
            iV++;
        }
        while (true) {
            int i22 = i17 - 1;
            if (i17 <= 0) {
                sVar.U();
                return;
            }
            int i23 = iArr2[i10];
            i10 += (i23 == 16777220 || i23 == 16777219) ? 2 : 1;
            sVar.T(iV, i23);
            iV++;
            i17 = i22;
        }
    }

    final void c(n nVar) {
        this.f73953b = nVar.f73953b;
        this.f73954c = nVar.f73954c;
        this.f73957f = (short) 0;
        this.f73955d = nVar.f73955d;
        this.f73956e = nVar.f73956e;
        this.f73958g = nVar.f73958g;
        this.f73959h = nVar.f73959h;
        this.f73960i = nVar.f73960i;
    }

    /* JADX WARN: Code duplicated, block: B:119:0x0344  */
    /* JADX WARN: Code duplicated, block: B:120:0x034b  */
    /* JADX WARN: Code duplicated, block: B:121:0x034f  */
    /* JADX WARN: Code duplicated, block: B:122:0x0356  */
    /* JADX WARN: Code duplicated, block: B:50:0x0147  */
    /* JADX WARN: Code duplicated, block: B:52:0x0152  */
    /* JADX WARN: Code duplicated, block: B:59:0x018e  */
    /* JADX WARN: Code duplicated, block: B:61:0x019c  */
    void d(int i10, int i11, w wVar, x xVar) {
        switch (i10) {
            case 0:
                return;
            case 1:
                p(16777221);
                return;
            case 2:
            case 3:
            case 4:
            case 5:
            case 6:
            case 7:
            case 8:
            case 16:
            case 17:
                p(16777217);
                return;
            case 9:
            case 10:
                p(16777220);
                p(16777216);
                return;
            case 11:
            case 12:
            case 13:
                p(16777218);
                return;
            case 14:
            case 15:
                p(16777219);
                p(16777216);
                return;
            case 18:
                int i12 = wVar.f74042b;
                switch (i12) {
                    case 3:
                        p(16777217);
                        return;
                    case 4:
                        p(16777218);
                        return;
                    case 5:
                        p(16777220);
                        p(16777216);
                        return;
                    case 6:
                        p(16777219);
                        p(16777216);
                        return;
                    case 7:
                        p(xVar.I("java/lang/Class") | ASTNode.PCTX_STORED);
                        return;
                    case 8:
                        p(xVar.I("java/lang/String") | ASTNode.PCTX_STORED);
                        return;
                    default:
                        switch (i12) {
                            case 15:
                                p(xVar.I("java/lang/invoke/MethodHandle") | ASTNode.PCTX_STORED);
                                return;
                            case 16:
                                p(xVar.I("java/lang/invoke/MethodType") | ASTNode.PCTX_STORED);
                                return;
                            case 17:
                                q(xVar, wVar.f74045e);
                                return;
                            default:
                                throw new AssertionError();
                        }
                }
            default:
                switch (i10) {
                    case 21:
                        p(16777217);
                        return;
                    case 22:
                        p(16777220);
                        p(16777216);
                        return;
                    case 23:
                        p(16777218);
                        return;
                    case 24:
                        p(16777219);
                        p(16777216);
                        return;
                    case 25:
                        p(j(i11));
                        return;
                    default:
                        switch (i10) {
                            case 46:
                            case AD_REWARD_USER_VALUE:
                            case AD_REQUIRED_DOWNLOAD_DURATION_MS_VALUE:
                            case AD_OPTIONAL_DOWNLOAD_DURATION_MS_VALUE:
                                n(2);
                                p(16777217);
                                return;
                            case 47:
                                n(2);
                                p(16777220);
                                p(16777216);
                                return;
                            case AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE:
                                n(2);
                                p(16777218);
                                return;
                            case AD_VALIDATION_TO_PRESENT_DURATION_MS_VALUE:
                                n(2);
                                p(16777219);
                                p(16777216);
                                return;
                            case 50:
                                n(1);
                                int iM = m();
                                if (iM != 16777221) {
                                    iM -= 268435456;
                                }
                                p(iM);
                                return;
                            case AD_BACKGROUND_BEFORE_IMPRESSION_VALUE:
                            case AD_VISIBILITY_VALUE:
                            case INIT_TO_FAIL_CALLBACK_DURATION_MS_VALUE:
                                u(i11, m());
                                if (i11 > 0) {
                                    int i13 = i11 - 1;
                                    int iJ = j(i13);
                                    if (iJ == 16777220 || iJ == 16777219) {
                                        u(i13, 16777216);
                                        return;
                                    }
                                    int i14 = iJ & 251658240;
                                    if (i14 == 67108864 || i14 == 83886080) {
                                        u(i13, iJ | 1048576);
                                        return;
                                    }
                                    return;
                                }
                                return;
                            case AD_CLOSED_BEFORE_IMPRESSION_VALUE:
                            case 57:
                                n(1);
                                u(i11, m());
                                u(i11 + 1, 16777216);
                                if (i11 > 0) {
                                    int i15 = i11 - 1;
                                    int iJ2 = j(i15);
                                    if (iJ2 == 16777220 || iJ2 == 16777219) {
                                        u(i15, 16777216);
                                        return;
                                    }
                                    int i16 = iJ2 & 251658240;
                                    if (i16 == 67108864 || i16 == 83886080) {
                                        u(i15, iJ2 | 1048576);
                                        return;
                                    }
                                    return;
                                }
                                return;
                            default:
                                switch (i10) {
                                    case 79:
                                    case TmcConstants.NOTIFY_ADDHOME_GUIDE_TOP_SHOW:
                                    case TmcConstants.NOTIFY_ADDHOME_GUIDE_BACK_SHOW:
                                    case 84:
                                    case 85:
                                    case 86:
                                        n(3);
                                        return;
                                    case 80:
                                    case TmcConstants.NOTIFY_ADDHOME_GUIDE_BOTTOM_SHOW:
                                        n(4);
                                        return;
                                    case 87:
                                    case 153:
                                    case 154:
                                    case 155:
                                    case 156:
                                    case 157:
                                    case 158:
                                    case 170:
                                    case 171:
                                    case 172:
                                    case 174:
                                    case 176:
                                    case 191:
                                    case 194:
                                    case 195:
                                        break;
                                    case 88:
                                    case 159:
                                    case 160:
                                    case 161:
                                    case 162:
                                    case 163:
                                    case 164:
                                    case 165:
                                    case 166:
                                    case 173:
                                    case 175:
                                        n(2);
                                        return;
                                    case TsExtractor.TS_STREAM_TYPE_DVBSUBS:
                                        int iM2 = m();
                                        p(iM2);
                                        p(iM2);
                                        return;
                                    case TmcConstants.NOTIFY_ADDHOME_API_SHOW:
                                        int iM3 = m();
                                        int iM4 = m();
                                        p(iM3);
                                        p(iM4);
                                        p(iM3);
                                        return;
                                    case 91:
                                        int iM5 = m();
                                        int iM6 = m();
                                        int iM7 = m();
                                        p(iM5);
                                        p(iM7);
                                        p(iM6);
                                        p(iM5);
                                        return;
                                    case 92:
                                        int iM8 = m();
                                        int iM9 = m();
                                        p(iM9);
                                        p(iM8);
                                        p(iM9);
                                        p(iM8);
                                        return;
                                    case 93:
                                        int iM10 = m();
                                        int iM11 = m();
                                        int iM12 = m();
                                        p(iM11);
                                        p(iM10);
                                        p(iM12);
                                        p(iM11);
                                        p(iM10);
                                        return;
                                    case MBSupportMuteAdType.REWARD_VIDEO:
                                        int iM13 = m();
                                        int iM14 = m();
                                        int iM15 = m();
                                        int iM16 = m();
                                        p(iM14);
                                        p(iM13);
                                        p(iM16);
                                        p(iM15);
                                        p(iM14);
                                        p(iM13);
                                        return;
                                    case 95:
                                        int iM17 = m();
                                        int iM18 = m();
                                        p(iM17);
                                        p(iM18);
                                        return;
                                    case 96:
                                    case 100:
                                    case 104:
                                    case TaskResultKt.ERROR_LOAD_RESPONSE_STR_EMPTY:
                                    case 112:
                                    case 120:
                                    case INVALID_ADS_ENDPOINT_VALUE:
                                    case INVALID_LOG_ERROR_ENDPOINT_VALUE:
                                    case 126:
                                    case 128:
                                    case 130:
                                    case PRIVACY_URL_ERROR_VALUE:
                                    case 142:
                                    case 149:
                                    case 150:
                                        n(2);
                                        p(16777217);
                                        return;
                                    case 97:
                                    case 101:
                                    case 105:
                                    case 109:
                                    case 113:
                                    case 127:
                                    case 129:
                                    case MRAID_JS_WRITE_FAILED_VALUE:
                                        n(4);
                                        p(16777220);
                                        p(16777216);
                                        return;
                                    case 98:
                                    case 102:
                                    case 106:
                                    case 110:
                                    case ASSET_WRITE_ERROR_VALUE:
                                    case TPAT_RETRY_FAILED_VALUE:
                                    case 144:
                                        n(2);
                                        p(16777218);
                                        return;
                                    case 99:
                                    case 103:
                                    case 107:
                                    case 111:
                                    case INVALID_INDEX_URL_VALUE:
                                        n(4);
                                        p(16777219);
                                        p(16777216);
                                        return;
                                    case GZIP_ENCODE_ERROR_VALUE:
                                    case ASSET_FAILED_STATUS_CODE_VALUE:
                                    case PROTOBUF_SERIALIZATION_ERROR_VALUE:
                                    case JSON_ENCODE_ERROR_VALUE:
                                    case 145:
                                    case 146:
                                    case 147:
                                    case 167:
                                    case 177:
                                        return;
                                    case TPAT_ERROR_VALUE:
                                    case INVALID_RI_ENDPOINT_VALUE:
                                    case INVALID_METRICS_ENDPOINT_VALUE:
                                        n(3);
                                        p(16777220);
                                        p(16777216);
                                        return;
                                    case OMSDK_DOWNLOAD_JS_ERROR_VALUE:
                                        u(i11, 16777217);
                                        return;
                                    case OMSDK_JS_WRITE_FAILED_VALUE:
                                    case 140:
                                        n(1);
                                        p(16777220);
                                        p(16777216);
                                        return;
                                    case 134:
                                        n(1);
                                        p(16777218);
                                        return;
                                    case 135:
                                    case 141:
                                        n(1);
                                        p(16777219);
                                        p(16777216);
                                        return;
                                    case 138:
                                        n(2);
                                        p(16777219);
                                        p(16777216);
                                        return;
                                    case 139:
                                    case 190:
                                    case 193:
                                        n(1);
                                        p(16777217);
                                        return;
                                    case 143:
                                        n(2);
                                        p(16777220);
                                        p(16777216);
                                        return;
                                    case 148:
                                    case 151:
                                    case 152:
                                        n(4);
                                        p(16777217);
                                        return;
                                    case 168:
                                    case 169:
                                        throw new IllegalArgumentException("JSR/RET are not supported with computeFrames option");
                                    case 178:
                                        q(xVar, wVar.f74045e);
                                        return;
                                    case 179:
                                        o(wVar.f74045e);
                                        return;
                                    case 180:
                                        n(1);
                                        q(xVar, wVar.f74045e);
                                        return;
                                    case 181:
                                        o(wVar.f74045e);
                                        m();
                                        return;
                                    case 182:
                                    case 183:
                                    case 184:
                                    case 185:
                                        o(wVar.f74045e);
                                        if (i10 != 184) {
                                            int iM19 = m();
                                            if (i10 == 183 && wVar.f74044d.charAt(0) == '<') {
                                                b(iM19);
                                            }
                                        }
                                        q(xVar, wVar.f74045e);
                                        return;
                                    case 186:
                                        o(wVar.f74045e);
                                        q(xVar, wVar.f74045e);
                                        return;
                                    case 187:
                                        p(xVar.K(wVar.f74045e, i11) | 50331648);
                                        return;
                                    case 188:
                                        m();
                                        switch (i11) {
                                            case 4:
                                                p(285212681);
                                                return;
                                            case 5:
                                                p(285212683);
                                                return;
                                            case 6:
                                                p(285212674);
                                                return;
                                            case 7:
                                                p(285212675);
                                                return;
                                            case 8:
                                                p(285212682);
                                                return;
                                            case 9:
                                                p(285212684);
                                                return;
                                            case 10:
                                                p(285212673);
                                                return;
                                            case 11:
                                                p(285212676);
                                                return;
                                            default:
                                                throw new IllegalArgumentException();
                                        }
                                    case PsExtractor.PRIVATE_STREAM_1:
                                        String str = wVar.f74045e;
                                        m();
                                        if (str.charAt(0) != '[') {
                                            p(xVar.I(str) | 301989888);
                                            return;
                                        }
                                        q(xVar, '[' + str);
                                        return;
                                    case PsExtractor.AUDIO_STREAM:
                                        String str2 = wVar.f74045e;
                                        m();
                                        if (str2.charAt(0) == '[') {
                                            q(xVar, str2);
                                            return;
                                        } else {
                                            p(xVar.I(str2) | ASTNode.PCTX_STORED);
                                            return;
                                        }
                                    default:
                                        switch (i10) {
                                            case 197:
                                                n(i11);
                                                q(xVar, wVar.f74045e);
                                                return;
                                            case 198:
                                            case 199:
                                                break;
                                            default:
                                                throw new IllegalArgumentException();
                                        }
                                        break;
                                }
                                n(1);
                                return;
                        }
                }
        }
    }

    final int i() {
        return this.f73954c.length;
    }

    /* JADX WARN: Code duplicated, block: B:22:0x0053  */
    /* JADX WARN: Code duplicated, block: B:23:0x0056 A[PHI: r8
      0x0056: PHI (r8v8 int) = (r8v7 int), (r8v7 int), (r8v9 int), (r8v9 int) binds: [B:26:0x0065, B:28:0x0069, B:19:0x004d, B:21:0x0051] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:64:0x00f8  */
    /* JADX WARN: Code duplicated, block: B:65:0x00fb A[PHI: r6
      0x00fb: PHI (r6v6 int) = (r6v5 int), (r6v5 int), (r6v9 int), (r6v9 int) binds: [B:68:0x010a, B:70:0x010e, B:61:0x00f2, B:63:0x00f6] A[DONT_GENERATE, DONT_INLINE]] */
    final boolean l(x xVar, n nVar, int i10) {
        boolean zK;
        boolean zK2;
        int i11;
        boolean z10;
        int iH;
        int i12;
        int i13;
        int length = this.f73953b.length;
        int length2 = this.f73954c.length;
        if (nVar.f73953b == null) {
            nVar.f73953b = new int[length];
            zK = true;
        } else {
            zK = false;
        }
        int i14 = 0;
        while (i14 < length) {
            int[] iArr = this.f73955d;
            if (iArr == null || i14 >= iArr.length || (i12 = iArr[i14]) == 0) {
                iH = this.f73953b[i14];
            } else {
                int i15 = i12 & (-268435456);
                int i16 = 251658240 & i12;
                if (i16 == 67108864) {
                    i13 = i15 + this.f73953b[i12 & 1048575];
                    if ((i12 & 1048576) == 0 || !(i13 == 16777220 || i13 == 16777219)) {
                        iH = i13;
                    } else {
                        iH = 16777216;
                    }
                } else if (i16 == 83886080) {
                    i13 = i15 + this.f73954c[length2 - (i12 & 1048575)];
                    if ((i12 & 1048576) == 0 || !(i13 == 16777220 || i13 == 16777219)) {
                        iH = i13;
                    } else {
                        iH = 16777216;
                    }
                } else {
                    iH = i12;
                }
            }
            if (this.f73960i != null) {
                iH = h(xVar, iH);
            }
            zK |= k(xVar, iH, nVar.f73953b, i14);
            i14++;
        }
        if (i10 > 0) {
            for (int i17 = 0; i17 < length; i17++) {
                zK |= k(xVar, this.f73953b[i17], nVar.f73953b, i17);
            }
            if (nVar.f73954c == null) {
                nVar.f73954c = new int[1];
                z10 = true;
            } else {
                z10 = zK;
            }
            return k(xVar, i10, nVar.f73954c, 0) | z10;
        }
        int length3 = this.f73954c.length + this.f73957f;
        if (nVar.f73954c == null) {
            nVar.f73954c = new int[this.f73958g + length3];
            zK2 = true;
        } else {
            zK2 = zK;
        }
        for (int i18 = 0; i18 < length3; i18++) {
            int iH2 = this.f73954c[i18];
            if (this.f73960i != null) {
                iH2 = h(xVar, iH2);
            }
            zK2 |= k(xVar, iH2, nVar.f73954c, i18);
        }
        for (int i19 = 0; i19 < this.f73958g; i19++) {
            int iH3 = this.f73956e[i19];
            int i20 = iH3 & (-268435456);
            int i21 = iH3 & 251658240;
            if (i21 == 67108864) {
                i11 = i20 + this.f73953b[iH3 & 1048575];
                if ((iH3 & 1048576) == 0 || !(i11 == 16777220 || i11 == 16777219)) {
                    iH3 = i11;
                } else {
                    iH3 = 16777216;
                }
            } else if (i21 == 83886080) {
                i11 = i20 + this.f73954c[length2 - (iH3 & 1048575)];
                if ((iH3 & 1048576) == 0 || !(i11 == 16777220 || i11 == 16777219)) {
                    iH3 = i11;
                } else {
                    iH3 = 16777216;
                }
            }
            if (this.f73960i != null) {
                iH3 = h(xVar, iH3);
            }
            zK2 |= k(xVar, iH3, nVar.f73954c, length3 + i19);
        }
        return zK2;
    }

    final void s(x xVar, int i10, Object[] objArr, int i11, Object[] objArr2) {
        int i12 = 0;
        for (int i13 = 0; i13 < i10; i13++) {
            int i14 = i12 + 1;
            this.f73953b[i12] = e(xVar, objArr[i13]);
            Object obj = objArr[i13];
            if (obj == v.f74038e || obj == v.f74037d) {
                i12 += 2;
                this.f73953b[i14] = 16777216;
            } else {
                i12 = i14;
            }
        }
        while (true) {
            int[] iArr = this.f73953b;
            if (i12 >= iArr.length) {
                break;
            }
            iArr[i12] = 16777216;
            i12++;
        }
        int i15 = 0;
        for (int i16 = 0; i16 < i11; i16++) {
            Object obj2 = objArr2[i16];
            if (obj2 == v.f74038e || obj2 == v.f74037d) {
                i15++;
            }
        }
        this.f73954c = new int[i15 + i11];
        int i17 = 0;
        for (int i18 = 0; i18 < i11; i18++) {
            int i19 = i17 + 1;
            this.f73954c[i17] = e(xVar, objArr2[i18]);
            Object obj3 = objArr2[i18];
            if (obj3 == v.f74038e || obj3 == v.f74037d) {
                i17 += 2;
                this.f73954c[i19] = 16777216;
            } else {
                i17 = i19;
            }
        }
        this.f73958g = (short) 0;
        this.f73959h = 0;
    }

    final void t(x xVar, int i10, String str, int i11) {
        int i12;
        int[] iArr = new int[i11];
        this.f73953b = iArr;
        this.f73954c = new int[0];
        if ((i10 & 8) == 0) {
            i12 = 1;
            if ((i10 & 262144) == 0) {
                iArr[0] = xVar.I(xVar.O()) | ASTNode.PCTX_STORED;
            } else {
                iArr[0] = 16777222;
            }
        } else {
            i12 = 0;
        }
        for (y yVar : y.b(str)) {
            int iF = f(xVar, yVar.e(), 0);
            int[] iArr2 = this.f73953b;
            int i13 = i12 + 1;
            iArr2[i12] = iF;
            if (iF == 16777220 || iF == 16777219) {
                i12 += 2;
                iArr2[i13] = 16777216;
            } else {
                i12 = i13;
            }
        }
        while (i12 < i11) {
            this.f73953b[i12] = 16777216;
            i12++;
        }
    }
}
