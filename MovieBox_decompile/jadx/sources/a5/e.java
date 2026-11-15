package a5;

import com.alibaba.fastjson.JSONException;
import com.alibaba.fastjson.parser.Feature;
import com.cloud.tmc.miniutils.constant.TimeConstants;
import java.math.BigDecimal;
import java.math.MathContext;
import java.util.Calendar;
import java.util.Date;
import java.util.SimpleTimeZone;
import java.util.TimeZone;
import okhttp3.internal.http2.Settings;

public final class e extends c {

    private final String f174t;

    private final int f175u;

    public e(String str) {
        this(str, com.alibaba.fastjson.a.DEFAULT_PARSER_FEATURE);
    }

    static boolean t1(String str, int i10, char[] cArr) {
        int length = cArr.length;
        if (length + i10 > str.length()) {
            return false;
        }
        for (int i11 = 0; i11 < length; i11++) {
            if (cArr[i11] != str.charAt(i10 + i11)) {
                return false;
            }
        }
        return true;
    }

    static boolean u1(char c10, char c11, char c12, char c13, char c14, char c15, int i10, int i11) {
        if (c10 >= '0' && c10 <= '9' && c11 >= '0' && c11 <= '9' && c12 >= '0' && c12 <= '9' && c13 >= '0' && c13 <= '9') {
            if (c14 == '0') {
                if (c15 < '1' || c15 > '9') {
                    return false;
                }
            } else if (c14 != '1' || (c15 != '0' && c15 != '1' && c15 != '2')) {
                return false;
            }
            if (i10 == 48) {
                return i11 >= 49 && i11 <= 57;
            }
            if (i10 != 49 && i10 != 50) {
                return i10 == 51 && (i11 == 48 || i11 == 49);
            }
            if (i11 >= 48 && i11 <= 57) {
                return true;
            }
        }
        return false;
    }

    private boolean v1(char c10, char c11, char c12, char c13, char c14, char c15) {
        if (c10 == '0') {
            if (c11 < '0' || c11 > '9') {
                return false;
            }
        } else {
            if (c10 != '1') {
                if (c10 == '2' && c11 >= '0' && c11 <= '4') {
                }
                return false;
            }
            if (c11 < '0' || c11 > '9') {
                return false;
            }
        }
        if (c12 < '0' || c12 > '5') {
            if (c12 != '6' || c13 != '0') {
                return false;
            }
        } else if (c13 < '0' || c13 > '9') {
            return false;
        }
        if (c14 < '0' || c14 > '5') {
            return c14 == '6' && c15 == '0';
        }
        return c15 >= '0' && c15 <= '9';
    }

    private boolean y1(boolean z10, int i10) {
        int i11;
        boolean z11;
        char c10;
        char cG0;
        char c11;
        char c12;
        char c13;
        int i12;
        int i13;
        int i14;
        int i15;
        char c14;
        char c15;
        char cG1;
        char c16;
        char c17;
        char c18;
        int i16;
        int i17;
        char c19;
        int i18;
        int i19;
        char cG2;
        char cG3;
        char cG4;
        char cG5;
        char cG6;
        char cG7;
        if (i10 < 8) {
            return false;
        }
        char cG8 = G0(this.f162e);
        char cG9 = G0(this.f162e + 1);
        char cG10 = G0(this.f162e + 2);
        int i20 = 3;
        char cG11 = G0(this.f162e + 3);
        char cG12 = G0(this.f162e + 4);
        int i21 = 5;
        char cG13 = G0(this.f162e + 5);
        char cG14 = G0(this.f162e + 6);
        char cG15 = G0(this.f162e + 7);
        if (!z10) {
            if (i10 > 13) {
                char cG16 = G0((this.f162e + i10) - 1);
                char cG17 = G0((this.f162e + i10) - 2);
                if (cG8 == '/' && cG9 == 'D' && cG10 == 'a' && cG11 == 't' && cG12 == 'e' && cG13 == '(' && cG16 == '/' && cG17 == ')') {
                    int i22 = -1;
                    for (int i23 = 6; i23 < i10; i23++) {
                        char cG18 = G0(this.f162e + i23);
                        if (cG18 != '+') {
                            if (cG18 < '0' || cG18 > '9') {
                                break;
                            }
                        } else {
                            i22 = i23;
                        }
                    }
                    if (i22 == -1) {
                        return false;
                    }
                    int i24 = this.f162e;
                    int i25 = i24 + 6;
                    long j10 = Long.parseLong(r1(i25, (i24 + i22) - i25));
                    Calendar calendar = Calendar.getInstance(this.f169l, this.f170m);
                    this.f168k = calendar;
                    calendar.setTimeInMillis(j10);
                    this.f158a = 5;
                    return true;
                }
            }
            i21 = 5;
        }
        if (i10 == 8 || i10 == 14) {
            i11 = i21;
            z11 = false;
            c10 = ':';
        } else {
            if (!(i10 == 16 && ((cG7 = G0(this.f162e + 10)) == 'T' || cG7 == ' ')) && (i10 != 17 || G0(this.f162e + 6) == '-')) {
                if (i10 < 9) {
                    return false;
                }
                char cG19 = G0(this.f162e + 8);
                char cG20 = G0(this.f162e + 9);
                if ((cG12 == '-' && cG15 == '-') || (cG12 == '/' && cG15 == '/')) {
                    if (cG20 == ' ') {
                        c19 = '0';
                        i17 = 9;
                        cG9 = cG19;
                        cG13 = cG14;
                        cG10 = cG10;
                    } else {
                        i17 = 10;
                        c19 = cG19;
                        cG13 = cG14;
                        cG10 = cG10;
                        cG13 = cG13;
                        cG9 = cG9;
                        cG9 = cG20;
                    }
                } else if (cG12 == '-' && cG14 == '-') {
                    if (cG19 == ' ') {
                        cG13 = '0';
                        i17 = 8;
                        cG9 = cG15;
                        cG11 = cG11;
                        c19 = '0';
                    } else {
                        cG13 = '0';
                        i17 = 9;
                        cG13 = cG13;
                        cG9 = cG9;
                        cG9 = cG19;
                        c19 = cG15;
                        cG11 = cG11;
                    }
                } else if ((cG10 == '.' && cG13 == '.') || (cG10 == '-' && cG13 == '-')) {
                    cG9 = cG15;
                    cG11 = cG20;
                    cG13 = cG11;
                    c19 = cG8;
                    i17 = 10;
                    cG13 = cG12;
                    cG8 = cG14;
                    cG10 = cG19;
                } else {
                    if (cG19 == 'T') {
                        cG13 = cG12;
                        cG13 = cG13;
                        cG8 = cG8;
                        cG9 = cG9;
                        i17 = 8;
                        cG9 = cG15;
                        cG11 = cG11;
                        c19 = cG14;
                    } else {
                        if (cG12 != 24180 && cG12 != 45380) {
                            return false;
                        }
                        if (cG15 != 26376 && cG15 != 50900) {
                            if (cG14 != 26376 && cG14 != 50900) {
                                return false;
                            }
                            if (cG19 == 26085 || cG19 == 51068) {
                                i17 = 10;
                                cG13 = '0';
                                cG9 = cG15;
                                cG11 = cG11;
                                c19 = '0';
                            } else {
                                if (cG20 != 26085 && cG20 != 51068) {
                                    return false;
                                }
                                i17 = 10;
                                cG13 = '0';
                                cG13 = cG13;
                                cG9 = cG9;
                                cG9 = cG19;
                                c19 = cG15;
                                cG11 = cG11;
                            }
                        } else if (cG20 == 26085 || cG20 == 51068) {
                            i17 = 10;
                            c19 = '0';
                            cG9 = cG19;
                            cG13 = cG14;
                        } else {
                            if (G0(this.f162e + 10) != 26085 && G0(this.f162e + 10) != 51068) {
                                return false;
                            }
                            i17 = 11;
                            c19 = cG19;
                            cG13 = cG14;
                            cG10 = cG10;
                            cG13 = cG13;
                            cG9 = cG9;
                            cG9 = cG20;
                        }
                    }
                    cG10 = cG10;
                }
                if (!u1(cG8, cG9, cG10, cG11, cG13, cG13, c19, cG9)) {
                    return false;
                }
                z1(cG8, cG9, cG10, cG11, cG13, cG13, c19, cG9);
                char cG21 = G0(this.f162e + i17);
                char c20 = 'T';
                if (cG21 == 'T') {
                    if (i10 == 16 && i17 == 8 && G0(this.f162e + 15) == 'Z') {
                        char cG22 = G0(this.f162e + i17 + 1);
                        char cG23 = G0(this.f162e + i17 + 2);
                        char cG24 = G0(this.f162e + i17 + 3);
                        char cG25 = G0(this.f162e + i17 + 4);
                        char cG26 = G0(this.f162e + i17 + 5);
                        char cG27 = G0(this.f162e + i17 + 6);
                        if (!v1(cG22, cG23, cG24, cG25, cG26, cG27)) {
                            return false;
                        }
                        A1(cG22, cG23, cG24, cG25, cG26, cG27);
                        this.f168k.set(14, 0);
                        if (this.f168k.getTimeZone().getRawOffset() != 0) {
                            String[] availableIDs = TimeZone.getAvailableIDs(0);
                            if (availableIDs.length > 0) {
                                this.f168k.setTimeZone(TimeZone.getTimeZone(availableIDs[0]));
                            }
                        }
                        this.f158a = 5;
                        return true;
                    }
                    c20 = 'T';
                }
                if (cG21 != c20 && (cG21 != ' ' || z10)) {
                    if (cG21 == '\"' || cG21 == 26 || cG21 == 26085 || cG21 == 51068) {
                        this.f168k.set(11, 0);
                        this.f168k.set(12, 0);
                        this.f168k.set(13, 0);
                        this.f168k.set(14, 0);
                        int i26 = this.f162e + i17;
                        this.f162e = i26;
                        this.f161d = G0(i26);
                        this.f158a = 5;
                        return true;
                    }
                    if ((cG21 != '+' && cG21 != '-') || this.f175u != i17 + 6 || G0(this.f162e + i17 + 3) != ':' || G0(this.f162e + i17 + 4) != '0' || G0(this.f162e + i17 + 5) != '0') {
                        return false;
                    }
                    A1('0', '0', '0', '0', '0', '0');
                    this.f168k.set(14, 0);
                    B1(cG21, G0(this.f162e + i17 + 1), G0(this.f162e + i17 + 2));
                    return true;
                }
                if (i10 < i17 + 9 || G0(this.f162e + i17 + 3) != ':' || G0(this.f162e + i17 + 6) != ':') {
                    return false;
                }
                char cG28 = G0(this.f162e + i17 + 1);
                char cG29 = G0(this.f162e + i17 + 2);
                char cG30 = G0(this.f162e + i17 + 4);
                char cG31 = G0(this.f162e + i17 + 5);
                char cG32 = G0(this.f162e + i17 + 7);
                char cG33 = G0(this.f162e + i17 + 8);
                if (!v1(cG28, cG29, cG30, cG31, cG32, cG33)) {
                    return false;
                }
                A1(cG28, cG29, cG30, cG31, cG32, cG33);
                if (G0(this.f162e + i17 + 9) == '.') {
                    int i27 = i17 + 11;
                    if (i10 < i27 || (cG4 = G0(this.f162e + i17 + 10)) < '0' || cG4 > '9') {
                        return false;
                    }
                    int i28 = cG4 - '0';
                    if (i10 <= i27 || (cG6 = G0(this.f162e + i17 + 11)) < '0' || cG6 > '9') {
                        i18 = 1;
                    } else {
                        i28 = (i28 * 10) + (cG6 - '0');
                        i18 = 2;
                    }
                    if (i18 != 2 || (cG5 = G0(this.f162e + i17 + 12)) < '0' || cG5 > '9') {
                        i19 = i28;
                    } else {
                        i19 = (cG5 - '0') + (i28 * 10);
                        i18 = 3;
                    }
                } else {
                    i18 = -1;
                    i19 = 0;
                }
                this.f168k.set(14, i19);
                char cG34 = G0(this.f162e + i17 + 10 + i18);
                if (cG34 == ' ') {
                    i18++;
                    cG34 = G0(this.f162e + i17 + 10 + i18);
                }
                char c21 = cG34;
                if (c21 == '+' || c21 == '-') {
                    char cG35 = G0(this.f162e + i17 + 10 + i18 + 1);
                    if (cG35 < '0' || cG35 > '1' || (cG2 = G0(this.f162e + i17 + 10 + i18 + 2)) < '0' || cG2 > '9') {
                        return false;
                    }
                    char cG36 = G0(this.f162e + i17 + 10 + i18 + 3);
                    char c22 = '3';
                    if (cG36 == ':') {
                        char cG37 = G0(this.f162e + i17 + 10 + i18 + 4);
                        cG3 = G0(this.f162e + i17 + 10 + i18 + 5);
                        if (cG37 == '4' && cG3 == '5') {
                            if (cG35 != '1' || (cG2 != '2' && cG2 != '3')) {
                                if (cG35 != '0') {
                                    return false;
                                }
                                if (cG2 != '5' && cG2 != '8') {
                                    return false;
                                }
                            }
                        } else if ((cG37 != '0' && cG37 != '3') || cG3 != '0') {
                            return false;
                        }
                        c22 = cG37;
                        i20 = 6;
                    } else {
                        if (cG36 == '0') {
                            char cG38 = G0(this.f162e + i17 + 10 + i18 + 4);
                            if (cG38 != '0' && cG38 != '3') {
                                return false;
                            }
                            c22 = cG38;
                        } else {
                            if (cG36 != '3' || G0(this.f162e + i17 + 10 + i18 + 4) != '0') {
                                if (cG36 == '4' && G0(this.f162e + i17 + 10 + i18 + 4) == '5') {
                                    cG3 = '5';
                                    i20 = 5;
                                    c22 = '4';
                                } else {
                                    c22 = '0';
                                }
                            }
                            cG3 = '0';
                        }
                        i20 = 5;
                        cG3 = '0';
                    }
                    C1(c21, cG35, cG2, c22, cG3);
                } else if (c21 == 'Z') {
                    if (this.f168k.getTimeZone().getRawOffset() != 0) {
                        String[] availableIDs2 = TimeZone.getAvailableIDs(0);
                        if (availableIDs2.length > 0) {
                            this.f168k.setTimeZone(TimeZone.getTimeZone(availableIDs2[0]));
                        }
                    }
                    i20 = 1;
                } else {
                    i20 = 0;
                }
                int i29 = i17 + 10 + i18 + i20;
                char cG39 = G0(this.f162e + i29);
                if (cG39 != 26 && cG39 != '\"') {
                    return false;
                }
                int i30 = this.f162e + i29;
                this.f162e = i30;
                this.f161d = G0(i30);
                this.f158a = 5;
                return true;
            }
            z11 = false;
            c10 = ':';
            i11 = 5;
        }
        if (z10) {
            return z11;
        }
        char cG40 = G0(this.f162e + 8);
        boolean z12 = cG12 == '-' && cG15 == '-';
        boolean z13 = z12 && i10 == 16;
        boolean z14 = z12 && i10 == 17;
        if (z14 || z13) {
            cG0 = G0(this.f162e + 9);
            c11 = cG13;
            c12 = cG14;
            c13 = cG40;
        } else if (cG12 == '-' && cG14 == '-') {
            c12 = cG13;
            cG0 = cG15;
            c11 = '0';
            c13 = '0';
        } else {
            c11 = cG12;
            c12 = cG13;
            c13 = cG14;
            cG0 = cG15;
        }
        if (!u1(cG8, cG9, cG10, cG11, c11, c12, c13, cG0)) {
            return false;
        }
        z1(cG8, cG9, cG10, cG11, c11, c12, c13, cG0);
        if (i10 != 8) {
            char cG41 = G0(this.f162e + 9);
            char cG42 = G0(this.f162e + 10);
            char cG43 = G0(this.f162e + 11);
            char cG44 = G0(this.f162e + 12);
            char cG45 = G0(this.f162e + 13);
            if ((z14 && cG42 == 'T' && cG45 == c10 && G0(this.f162e + 16) == 'Z') || (z13 && ((cG42 == ' ' || cG42 == 'T') && cG45 == c10))) {
                char cG46 = G0(this.f162e + 14);
                cG1 = G0(this.f162e + 15);
                c15 = cG46;
                c17 = cG43;
                c14 = cG44;
                c18 = '0';
                c16 = '0';
            } else {
                c14 = cG41;
                c15 = cG42;
                cG1 = cG43;
                c16 = cG45;
                c17 = cG40;
                c18 = cG44;
            }
            if (!v1(c17, c14, c15, cG1, c18, c16)) {
                return false;
            }
            if (i10 != 17 || z14) {
                i16 = 0;
            } else {
                char cG47 = G0(this.f162e + 14);
                char cG48 = G0(this.f162e + 15);
                char cG49 = G0(this.f162e + 16);
                if (cG47 < '0' || cG47 > '9' || cG48 < '0' || cG48 > '9' || cG49 < '0' || cG49 > '9') {
                    return false;
                }
                i16 = ((cG47 - '0') * 100) + ((cG48 - '0') * 10) + (cG49 - '0');
            }
            i13 = ((c18 - '0') * 10) + (c16 - '0');
            i15 = ((c17 - '0') * 10) + (c14 - '0');
            i14 = i16;
            i12 = ((c15 - '0') * 10) + (cG1 - '0');
        } else {
            i12 = 0;
            i13 = 0;
            i14 = 0;
            i15 = 0;
        }
        this.f168k.set(11, i15);
        this.f168k.set(12, i12);
        this.f168k.set(13, i13);
        this.f168k.set(14, i14);
        this.f158a = i11;
        return true;
    }

    private void z1(char c10, char c11, char c12, char c13, char c14, char c15, char c16, char c17) {
        Calendar calendar = Calendar.getInstance(this.f169l, this.f170m);
        this.f168k = calendar;
        calendar.set(1, ((c10 - '0') * 1000) + ((c11 - '0') * 100) + ((c12 - '0') * 10) + (c13 - '0'));
        this.f168k.set(2, (((c14 - '0') * 10) + (c15 - '0')) - 1);
        this.f168k.set(5, ((c16 - '0') * 10) + (c17 - '0'));
    }

    @Override
    public long A0(char c10) {
        int i10;
        char cG0;
        this.f171n = 0;
        int i11 = this.f162e;
        int i12 = i11 + 1;
        char cG1 = G0(i11);
        boolean z10 = cG1 == '\"';
        if (z10) {
            cG1 = G0(i12);
            i12 = i11 + 2;
        }
        boolean z11 = cG1 == '-';
        if (z11) {
            cG1 = G0(i12);
            i12++;
        }
        if (cG1 >= '0' && cG1 <= '9') {
            long j10 = cG1 - '0';
            while (true) {
                i10 = i12 + 1;
                cG0 = G0(i12);
                if (cG0 < '0' || cG0 > '9') {
                    break;
                }
                j10 = (j10 * 10) + ((long) (cG0 - '0'));
                i12 = i10;
            }
            if (cG0 == '.') {
                this.f171n = -1;
                return 0L;
            }
            if (z10) {
                if (cG0 != '\"') {
                    this.f171n = -1;
                    return 0L;
                }
                cG0 = G0(i10);
                i10 = i12 + 2;
            }
            if (j10 < 0 && (j10 != Long.MIN_VALUE || !z11)) {
                this.f171n = -1;
                return 0L;
            }
            while (cG0 != c10) {
                if (!c.M0(cG0)) {
                    this.f171n = -1;
                    return j10;
                }
                cG0 = G0(i10);
                i10++;
            }
            this.f162e = i10;
            this.f161d = G0(i10);
            this.f171n = 3;
            this.f158a = 16;
            return z11 ? -j10 : j10;
        }
        if (cG1 == 'n') {
            int i13 = i12 + 1;
            if (G0(i12) == 'u') {
                int i14 = i12 + 2;
                if (G0(i13) == 'l') {
                    int i15 = i12 + 3;
                    if (G0(i14) == 'l') {
                        this.f171n = 5;
                        int i16 = i12 + 4;
                        char cG2 = G0(i15);
                        if (z10 && cG2 == '\"') {
                            cG2 = G0(i16);
                            i16 = i12 + 5;
                        }
                        while (cG2 != ',') {
                            if (cG2 == ']') {
                                this.f162e = i16;
                                this.f161d = G0(i16);
                                this.f171n = 5;
                                this.f158a = 15;
                                return 0L;
                            }
                            if (!c.M0(cG2)) {
                                this.f171n = -1;
                                return 0L;
                            }
                            char cG3 = G0(i16);
                            i16++;
                            cG2 = cG3;
                        }
                        this.f162e = i16;
                        this.f161d = G0(i16);
                        this.f171n = 5;
                        this.f158a = 16;
                        return 0L;
                    }
                }
            }
        }
        this.f171n = -1;
        return 0L;
    }

    protected void A1(char c10, char c11, char c12, char c13, char c14, char c15) {
        this.f168k.set(11, ((c10 - '0') * 10) + (c11 - '0'));
        this.f168k.set(12, ((c12 - '0') * 10) + (c13 - '0'));
        this.f168k.set(13, ((c14 - '0') * 10) + (c15 - '0'));
    }

    protected void B1(char c10, char c11, char c12) {
        C1(c10, c11, c12, '0', '0');
    }

    protected void C1(char c10, char c11, char c12, char c13, char c14) {
        int i10 = ((((c11 - '0') * 10) + (c12 - '0')) * TimeConstants.HOUR) + ((((c13 - '0') * 10) + (c14 - '0')) * 60000);
        if (c10 == '-') {
            i10 = -i10;
        }
        if (this.f168k.getTimeZone().getRawOffset() != i10) {
            this.f168k.setTimeZone(new SimpleTimeZone(i10, Integer.toString(i10)));
        }
    }

    public final void D1(boolean z10) {
        int i10 = this.f162e;
        boolean z11 = false;
        int i11 = 0;
        while (i10 < this.f174t.length()) {
            char cCharAt = this.f174t.charAt(i10);
            if (cCharAt == '\\') {
                if (i10 >= this.f175u - 1) {
                    this.f161d = cCharAt;
                    this.f162e = i10;
                    throw new JSONException("illegal str, " + k());
                }
                i10++;
            } else if (cCharAt == '\"') {
                z11 = !z11;
            } else if (cCharAt != '[') {
                if (cCharAt == '{' && z10) {
                    int i12 = this.f162e + 1;
                    this.f162e = i12;
                    this.f161d = i12 < this.f174t.length() ? this.f174t.charAt(i12) : (char) 26;
                    E1(z10);
                } else if (cCharAt == ']' && !z11 && (i11 = i11 - 1) == -1) {
                    int i13 = i10 + 1;
                    this.f162e = i13;
                    if (i13 == this.f174t.length()) {
                        this.f161d = (char) 26;
                        this.f158a = 20;
                        return;
                    } else {
                        this.f161d = this.f174t.charAt(this.f162e);
                        f0(16);
                        return;
                    }
                }
            } else if (!z11) {
                i11++;
            }
            i10++;
        }
        if (i10 != this.f174t.length()) {
            return;
        }
        throw new JSONException("illegal str, " + k());
    }

    @Override
    public final String E0() {
        char cG0 = G0((this.f166i + this.f165h) - 1);
        int i10 = this.f165h;
        if (cG0 == 'L' || cG0 == 'S' || cG0 == 'B' || cG0 == 'F' || cG0 == 'D') {
            i10--;
        }
        return r1(this.f166i, i10);
    }

    public final void E1(boolean z10) {
        int i10 = this.f162e;
        boolean z11 = false;
        int i11 = 0;
        while (i10 < this.f174t.length()) {
            char cCharAt = this.f174t.charAt(i10);
            if (cCharAt == '\\') {
                if (i10 >= this.f175u - 1) {
                    this.f161d = cCharAt;
                    this.f162e = i10;
                    throw new JSONException("illegal str, " + k());
                }
                i10++;
            } else if (cCharAt == '\"') {
                z11 = !z11;
            } else if (cCharAt != '{') {
                if (cCharAt == '}' && !z11 && (i11 = i11 - 1) == -1) {
                    int i12 = i10 + 1;
                    this.f162e = i12;
                    if (i12 == this.f174t.length()) {
                        this.f161d = (char) 26;
                        this.f158a = 20;
                        return;
                    }
                    char cCharAt2 = this.f174t.charAt(this.f162e);
                    this.f161d = cCharAt2;
                    if (cCharAt2 == ',') {
                        this.f158a = 16;
                        int i13 = this.f162e + 1;
                        this.f162e = i13;
                        this.f161d = i13 < this.f174t.length() ? this.f174t.charAt(i13) : (char) 26;
                        return;
                    }
                    if (cCharAt2 == '}') {
                        this.f158a = 13;
                        next();
                        return;
                    } else if (cCharAt2 != ']') {
                        f0(16);
                        return;
                    } else {
                        this.f158a = 15;
                        next();
                        return;
                    }
                }
            } else if (!z11) {
                i11++;
            }
            i10++;
        }
        for (int i14 = 0; i14 < this.f162e; i14++) {
            if (i14 < this.f174t.length() && this.f174t.charAt(i14) == ' ') {
                i10++;
            }
        }
        if (i10 != this.f174t.length()) {
            return;
        }
        throw new JSONException("illegal str, " + k());
    }

    @Override
    public final char G0(int i10) {
        if (i10 >= this.f175u) {
            return (char) 26;
        }
        return this.f174t.charAt(i10);
    }

    @Override
    protected final void H0(int i10, int i11, char[] cArr) {
        this.f174t.getChars(i10, i11 + i10, cArr, 0);
    }

    @Override
    public final int K0(char c10, int i10) {
        return this.f174t.indexOf(c10, i10);
    }

    @Override
    public boolean L0() {
        int i10 = this.f162e;
        int i11 = this.f175u;
        if (i10 != i11) {
            return this.f161d == 26 && i10 + 1 >= i11;
        }
        return true;
    }

    /* JADX WARN: Code duplicated, block: B:101:0x0165  */
    /* JADX WARN: Code duplicated, block: B:103:0x016b A[LOOP:0: B:78:0x00ed->B:103:0x016b, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:108:0x0108 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:109:0x0176 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:112:0x0162 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:114:0x0125 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:115:0x0137 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:116:0x014b A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:81:0x0104  */
    /* JADX WARN: Code duplicated, block: B:86:0x0121  */
    /* JADX WARN: Code duplicated, block: B:89:0x0135 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:91:0x0147  */
    /* JADX WARN: Code duplicated, block: B:96:0x0152  */
    /* JADX WARN: Code duplicated, block: B:98:0x0158 A[LOOP:1: B:84:0x0111->B:98:0x0158, LOOP_END] */
    @Override
    public boolean W0(char[] cArr) {
        char cG0;
        boolean z10;
        char cG1;
        this.f171n = 0;
        if (!t1(this.f174t, this.f162e, cArr)) {
            this.f171n = -2;
            return false;
        }
        int i10 = this.f162e;
        int length = cArr.length + i10;
        int i11 = length + 1;
        char cG2 = G0(length);
        boolean z11 = cG2 == '\"';
        if (z11) {
            cG2 = G0(i11);
            i11 = length + 2;
        }
        if (cG2 != 't') {
            if (cG2 == 'f') {
                int i12 = i11 + 1;
                if (G0(i11) != 'a') {
                    this.f171n = -1;
                    return false;
                }
                int i13 = i11 + 2;
                if (G0(i12) != 'l') {
                    this.f171n = -1;
                    return false;
                }
                int i14 = i11 + 3;
                if (G0(i13) != 's') {
                    this.f171n = -1;
                    return false;
                }
                int i15 = i11 + 4;
                if (G0(i14) != 'e') {
                    this.f171n = -1;
                    return false;
                }
                if (z11) {
                    int i16 = i11 + 5;
                    if (G0(i15) != '\"') {
                        this.f171n = -1;
                        return false;
                    }
                    i15 = i16;
                }
                this.f162e = i15;
                cG0 = G0(i15);
            } else if (cG2 == '1') {
                if (z11) {
                    int i17 = i11 + 1;
                    if (G0(i11) != '\"') {
                        this.f171n = -1;
                        return false;
                    }
                    i11 = i17;
                }
                this.f162e = i11;
                cG0 = G0(i11);
            } else {
                if (cG2 != '0') {
                    this.f171n = -1;
                    return false;
                }
                if (z11) {
                    int i18 = i11 + 1;
                    if (G0(i11) != '\"') {
                        this.f171n = -1;
                        return false;
                    }
                    i11 = i18;
                }
                this.f162e = i11;
                cG0 = G0(i11);
            }
            z10 = false;
            while (cG0 != ',') {
                if (cG0 == '}') {
                    int i19 = this.f162e + 1;
                    this.f162e = i19;
                    cG1 = G0(i19);
                    while (cG1 != ',') {
                        if (cG1 == ']') {
                            this.f158a = 15;
                            int i20 = this.f162e + 1;
                            this.f162e = i20;
                            this.f161d = G0(i20);
                        } else if (cG1 == '}') {
                            this.f158a = 13;
                            int i21 = this.f162e + 1;
                            this.f162e = i21;
                            this.f161d = G0(i21);
                        } else if (cG1 == 26) {
                            this.f158a = 20;
                        } else {
                            if (c.M0(cG1)) {
                                this.f171n = -1;
                                return false;
                            }
                            int i22 = this.f162e + 1;
                            this.f162e = i22;
                            cG1 = G0(i22);
                        }
                        this.f171n = 4;
                        return z10;
                    }
                    this.f158a = 16;
                    int i23 = this.f162e + 1;
                    this.f162e = i23;
                    this.f161d = G0(i23);
                    this.f171n = 4;
                    return z10;
                }
                if (c.M0(cG0)) {
                    this.f162e = i10;
                    G0(i10);
                    this.f171n = -1;
                    return false;
                }
                int i24 = this.f162e + 1;
                this.f162e = i24;
                cG0 = G0(i24);
            }
            int i25 = this.f162e + 1;
            this.f162e = i25;
            this.f161d = G0(i25);
            this.f171n = 3;
            this.f158a = 16;
            return z10;
        }
        int i26 = i11 + 1;
        if (G0(i11) != 'r') {
            this.f171n = -1;
            return false;
        }
        int i27 = i11 + 2;
        if (G0(i26) != 'u') {
            this.f171n = -1;
            return false;
        }
        int i28 = i11 + 3;
        if (G0(i27) != 'e') {
            this.f171n = -1;
            return false;
        }
        if (z11) {
            int i29 = i11 + 4;
            if (G0(i28) != '\"') {
                this.f171n = -1;
                return false;
            }
            i28 = i29;
        }
        this.f162e = i28;
        cG0 = G0(i28);
        z10 = true;
        while (cG0 != ',') {
            if (cG0 == '}') {
                int i110 = this.f162e + 1;
                this.f162e = i110;
                cG1 = G0(i110);
                while (cG1 != ',') {
                    if (cG1 == ']') {
                        this.f158a = 15;
                        int i210 = this.f162e + 1;
                        this.f162e = i210;
                        this.f161d = G0(i210);
                    } else if (cG1 == '}') {
                        this.f158a = 13;
                        int i211 = this.f162e + 1;
                        this.f162e = i211;
                        this.f161d = G0(i211);
                    } else if (cG1 == 26) {
                        this.f158a = 20;
                    } else {
                        if (c.M0(cG1)) {
                            this.f171n = -1;
                            return false;
                        }
                        int i212 = this.f162e + 1;
                        this.f162e = i212;
                        cG1 = G0(i212);
                    }
                    this.f171n = 4;
                    return z10;
                }
                this.f158a = 16;
                int i213 = this.f162e + 1;
                this.f162e = i213;
                this.f161d = G0(i213);
                this.f171n = 4;
                return z10;
            }
            if (c.M0(cG0)) {
                this.f162e = i10;
                G0(i10);
                this.f171n = -1;
                return false;
            }
            int i214 = this.f162e + 1;
            this.f162e = i214;
            cG0 = G0(i214);
        }
        int i215 = this.f162e + 1;
        this.f162e = i215;
        this.f161d = G0(i215);
        this.f171n = 3;
        this.f158a = 16;
        return z10;
    }

    @Override
    public Date X0(char[] cArr) {
        long j10;
        Date date;
        char cG0;
        char cG1;
        boolean z10 = false;
        this.f171n = 0;
        int i10 = this.f162e;
        char c10 = this.f161d;
        if (!t1(this.f174t, i10, cArr)) {
            this.f171n = -2;
            return null;
        }
        int length = this.f162e + cArr.length;
        int i11 = length + 1;
        char cG2 = G0(length);
        if (cG2 == '\"') {
            int iK0 = K0('\"', i11);
            if (iK0 == -1) {
                throw new JSONException("unclosed str");
            }
            this.f162e = i11;
            if (!y1(false, iK0 - i11)) {
                this.f162e = i10;
                this.f171n = -1;
                return null;
            }
            date = this.f168k.getTime();
            cG0 = G0(iK0 + 1);
            this.f162e = i10;
            while (cG0 != ',' && cG0 != '}') {
                if (!c.M0(cG0)) {
                    this.f171n = -1;
                    return null;
                }
                int i12 = iK0 + 1;
                char cG3 = G0(iK0 + 2);
                iK0 = i12;
                cG0 = cG3;
            }
            this.f162e = iK0 + 1;
            this.f161d = cG0;
        } else {
            char c11 = '9';
            char c12 = '0';
            if (cG2 != '-' && (cG2 < '0' || cG2 > '9')) {
                this.f171n = -1;
                return null;
            }
            if (cG2 == '-') {
                cG2 = G0(i11);
                i11 = length + 2;
                z10 = true;
            }
            if (cG2 < '0' || cG2 > '9') {
                j10 = 0;
            } else {
                long j11 = cG2 - '0';
                while (true) {
                    int i13 = i11 + 1;
                    cG1 = G0(i11);
                    if (cG1 < c12 || cG1 > c11) {
                        break;
                    }
                    j11 = (j11 * 10) + ((long) (cG1 - '0'));
                    i11 = i13;
                    c11 = '9';
                    c12 = '0';
                }
                if (cG1 == ',' || cG1 == '}') {
                    this.f162e = i11;
                }
                long j12 = j11;
                cG2 = cG1;
                j10 = j12;
            }
            if (j10 < 0) {
                this.f171n = -1;
                return null;
            }
            if (z10) {
                j10 = -j10;
            }
            date = new Date(j10);
            cG0 = cG2;
        }
        if (cG0 == ',') {
            int i14 = this.f162e + 1;
            this.f162e = i14;
            this.f161d = G0(i14);
            this.f171n = 3;
            this.f158a = 16;
            return date;
        }
        int i15 = this.f162e + 1;
        this.f162e = i15;
        char cG4 = G0(i15);
        if (cG4 == ',') {
            this.f158a = 16;
            int i16 = this.f162e + 1;
            this.f162e = i16;
            this.f161d = G0(i16);
        } else if (cG4 == ']') {
            this.f158a = 15;
            int i17 = this.f162e + 1;
            this.f162e = i17;
            this.f161d = G0(i17);
        } else if (cG4 == '}') {
            this.f158a = 13;
            int i18 = this.f162e + 1;
            this.f162e = i18;
            this.f161d = G0(i18);
        } else {
            if (cG4 != 26) {
                this.f162e = i10;
                this.f161d = c10;
                this.f171n = -1;
                return null;
            }
            this.f158a = 20;
        }
        this.f171n = 4;
        return date;
    }

    @Override
    public final String b(int i10, int i11, int i12, i iVar) {
        return iVar.a(this.f174t, i10, i11, i12);
    }

    @Override
    public int d1(char[] cArr) {
        int i10;
        char cG0;
        this.f171n = 0;
        int i11 = this.f162e;
        char c10 = this.f161d;
        if (!t1(this.f174t, i11, cArr)) {
            this.f171n = -2;
            return 0;
        }
        int length = this.f162e + cArr.length;
        int i12 = length + 1;
        char cG1 = G0(length);
        boolean z10 = cG1 == '\"';
        if (z10) {
            cG1 = G0(i12);
            i12 = length + 2;
        }
        boolean z11 = cG1 == '-';
        if (z11) {
            cG1 = G0(i12);
            i12++;
        }
        if (cG1 < '0' || cG1 > '9') {
            this.f171n = -1;
            return 0;
        }
        int i13 = cG1 - '0';
        while (true) {
            i10 = i12 + 1;
            cG0 = G0(i12);
            if (cG0 < '0' || cG0 > '9') {
                break;
            }
            int i14 = i13 * 10;
            if (i14 < i13) {
                this.f171n = -1;
                return 0;
            }
            i13 = i14 + (cG0 - '0');
            i12 = i10;
        }
        if (cG0 == '.') {
            this.f171n = -1;
            return 0;
        }
        if (i13 < 0) {
            this.f171n = -1;
            return 0;
        }
        if (z10) {
            if (cG0 != '\"') {
                this.f171n = -1;
                return 0;
            }
            int i15 = i12 + 2;
            cG0 = G0(i10);
            i10 = i15;
        }
        while (cG0 != ',' && cG0 != '}') {
            if (!c.M0(cG0)) {
                this.f171n = -1;
                return 0;
            }
            int i16 = i10 + 1;
            cG0 = G0(i10);
            i10 = i16;
        }
        this.f162e = i10 - 1;
        if (cG0 == ',') {
            this.f162e = i10;
            this.f161d = G0(i10);
            this.f171n = 3;
            this.f158a = 16;
            return z11 ? -i13 : i13;
        }
        if (cG0 == '}') {
            this.f162e = i10;
            char cG2 = G0(i10);
            while (true) {
                if (cG2 == ',') {
                    this.f158a = 16;
                    int i17 = this.f162e + 1;
                    this.f162e = i17;
                    this.f161d = G0(i17);
                    break;
                }
                if (cG2 == ']') {
                    this.f158a = 15;
                    int i18 = this.f162e + 1;
                    this.f162e = i18;
                    this.f161d = G0(i18);
                    break;
                }
                if (cG2 == '}') {
                    this.f158a = 13;
                    int i19 = this.f162e + 1;
                    this.f162e = i19;
                    this.f161d = G0(i19);
                    break;
                }
                if (cG2 == 26) {
                    this.f158a = 20;
                    break;
                }
                if (!c.M0(cG2)) {
                    this.f162e = i11;
                    this.f161d = c10;
                    this.f171n = -1;
                    return 0;
                }
                int i20 = this.f162e + 1;
                this.f162e = i20;
                cG2 = G0(i20);
            }
            this.f171n = 4;
        }
        return z11 ? -i13 : i13;
    }

    @Override
    protected final void f(int i10, char[] cArr, int i11, int i12) {
        this.f174t.getChars(i10, i12 + i10, cArr, i11);
    }

    @Override
    public long f1(char[] cArr) {
        int i10;
        char cG0;
        boolean z10 = false;
        this.f171n = 0;
        int i11 = this.f162e;
        char c10 = this.f161d;
        if (!t1(this.f174t, i11, cArr)) {
            this.f171n = -2;
            return 0L;
        }
        int length = this.f162e + cArr.length;
        int i12 = length + 1;
        char cG1 = G0(length);
        boolean z11 = cG1 == '\"';
        if (z11) {
            cG1 = G0(i12);
            i12 = length + 2;
        }
        if (cG1 == '-') {
            cG1 = G0(i12);
            i12++;
            z10 = true;
        }
        if (cG1 < '0' || cG1 > '9') {
            this.f162e = i11;
            this.f161d = c10;
            this.f171n = -1;
            return 0L;
        }
        long j10 = cG1 - '0';
        while (true) {
            i10 = i12 + 1;
            cG0 = G0(i12);
            if (cG0 < '0' || cG0 > '9') {
                break;
            }
            j10 = (j10 * 10) + ((long) (cG0 - '0'));
            i12 = i10;
        }
        if (cG0 == '.') {
            this.f171n = -1;
            return 0L;
        }
        if (z11) {
            if (cG0 != '\"') {
                this.f171n = -1;
                return 0L;
            }
            cG0 = G0(i10);
            i10 = i12 + 2;
        }
        if (cG0 == ',' || cG0 == '}') {
            this.f162e = i10 - 1;
        }
        if (j10 < 0 && (j10 != Long.MIN_VALUE || !z10)) {
            this.f162e = i11;
            this.f161d = c10;
            this.f171n = -1;
            return 0L;
        }
        while (cG0 != ',') {
            if (cG0 == '}') {
                int i13 = 1;
                int i14 = this.f162e + 1;
                this.f162e = i14;
                char cG2 = G0(i14);
                while (true) {
                    if (cG2 == ',') {
                        this.f158a = 16;
                        int i15 = this.f162e + i13;
                        this.f162e = i15;
                        this.f161d = G0(i15);
                        break;
                    }
                    if (cG2 == ']') {
                        this.f158a = 15;
                        int i16 = this.f162e + i13;
                        this.f162e = i16;
                        this.f161d = G0(i16);
                        break;
                    }
                    if (cG2 == '}') {
                        this.f158a = 13;
                        int i17 = this.f162e + i13;
                        this.f162e = i17;
                        this.f161d = G0(i17);
                        break;
                    }
                    if (cG2 == 26) {
                        this.f158a = 20;
                        break;
                    }
                    if (!c.M0(cG2)) {
                        this.f162e = i11;
                        this.f161d = c10;
                        this.f171n = -1;
                        return 0L;
                    }
                    int i18 = this.f162e + 1;
                    this.f162e = i18;
                    cG2 = G0(i18);
                    i13 = 1;
                }
                this.f171n = 4;
                return z10 ? -j10 : j10;
            }
            if (!c.M0(cG0)) {
                this.f171n = -1;
                return 0L;
            }
            this.f162e = i10;
            cG0 = G0(i10);
            i10++;
        }
        int i19 = this.f162e + 1;
        this.f162e = i19;
        this.f161d = G0(i19);
        this.f171n = 3;
        this.f158a = 16;
        return z10 ? -j10 : j10;
    }

    @Override
    public final BigDecimal g0() {
        char cG0 = G0((this.f166i + this.f165h) - 1);
        int i10 = this.f165h;
        if (cG0 == 'L' || cG0 == 'S' || cG0 == 'B' || cG0 == 'F' || cG0 == 'D') {
            i10--;
        }
        if (i10 > 65535) {
            throw new JSONException("decimal overflow");
        }
        int i11 = this.f166i;
        char[] cArr = this.f164g;
        if (i10 < cArr.length) {
            this.f174t.getChars(i11, i11 + i10, cArr, 0);
            return new BigDecimal(this.f164g, 0, i10, MathContext.UNLIMITED);
        }
        char[] cArr2 = new char[i10];
        this.f174t.getChars(i11, i11 + i10, cArr2, 0);
        return new BigDecimal(cArr2, 0, i10, MathContext.UNLIMITED);
    }

    @Override
    public String g1(char[] cArr) {
        this.f171n = 0;
        int i10 = this.f162e;
        char c10 = this.f161d;
        while (!t1(this.f174t, this.f162e, cArr)) {
            if (!c.M0(this.f161d)) {
                this.f171n = -2;
                return q1();
            }
            next();
            while (c.M0(this.f161d)) {
                next();
            }
        }
        int length = this.f162e + cArr.length;
        int i11 = length + 1;
        char cG0 = G0(length);
        int i12 = 0;
        if (cG0 != '\"') {
            while (c.M0(cG0)) {
                i12++;
                int i13 = i11 + 1;
                char cG1 = G0(i11);
                i11 = i13;
                cG0 = cG1;
            }
            if (cG0 != '\"') {
                this.f171n = -1;
                return q1();
            }
        }
        int iK0 = K0('\"', i11);
        if (iK0 == -1) {
            throw new JSONException("unclosed str");
        }
        String strR1 = r1(i11, iK0 - i11);
        if (strR1.indexOf(92) != -1) {
            while (true) {
                int i14 = 0;
                for (int i15 = iK0 - 1; i15 >= 0 && G0(i15) == '\\'; i15--) {
                    i14++;
                }
                if (i14 % 2 == 0) {
                    break;
                }
                iK0 = K0('\"', iK0 + 1);
            }
            int i16 = this.f162e;
            int length2 = iK0 - (((cArr.length + i16) + 1) + i12);
            strR1 = c.S0(s1(i16 + cArr.length + 1 + i12, length2), length2);
        }
        if ((this.f160c & Feature.TrimStringFieldValue.mask) != 0) {
            strR1 = strR1.trim();
        }
        char cG2 = G0(iK0 + 1);
        while (cG2 != ',' && cG2 != '}') {
            if (!c.M0(cG2)) {
                this.f171n = -1;
                return q1();
            }
            char cG3 = G0(iK0 + 2);
            iK0++;
            cG2 = cG3;
        }
        this.f162e = iK0 + 1;
        this.f161d = cG2;
        if (cG2 == ',') {
            int i17 = iK0 + 2;
            this.f162e = i17;
            this.f161d = G0(i17);
            this.f171n = 3;
            return strR1;
        }
        int i18 = iK0 + 2;
        this.f162e = i18;
        char cG4 = G0(i18);
        if (cG4 == ',') {
            this.f158a = 16;
            int i19 = this.f162e + 1;
            this.f162e = i19;
            this.f161d = G0(i19);
        } else if (cG4 == ']') {
            this.f158a = 15;
            int i20 = this.f162e + 1;
            this.f162e = i20;
            this.f161d = G0(i20);
        } else if (cG4 == '}') {
            this.f158a = 13;
            int i21 = this.f162e + 1;
            this.f162e = i21;
            this.f161d = G0(i21);
        } else {
            if (cG4 != 26) {
                this.f162e = i10;
                this.f161d = c10;
                this.f171n = -1;
                return q1();
            }
            this.f158a = 20;
        }
        this.f171n = 4;
        return strR1;
    }

    @Override
    public final boolean j(char[] cArr) {
        return t1(this.f174t, this.f162e, cArr);
    }

    @Override
    public final int j0(char c10) {
        int i10;
        char cG0;
        this.f171n = 0;
        int i11 = this.f162e;
        int i12 = i11 + 1;
        char cG1 = G0(i11);
        while (c.M0(cG1)) {
            cG1 = G0(i12);
            i12++;
        }
        boolean z10 = cG1 == '\"';
        if (z10) {
            cG1 = G0(i12);
            i12++;
        }
        boolean z11 = cG1 == '-';
        if (z11) {
            cG1 = G0(i12);
            i12++;
        }
        if (cG1 < '0' || cG1 > '9') {
            if (cG1 == 'n') {
                int i13 = i12 + 1;
                if (G0(i12) == 'u') {
                    int i14 = i12 + 2;
                    if (G0(i13) == 'l') {
                        int i15 = i12 + 3;
                        if (G0(i14) == 'l') {
                            this.f171n = 5;
                            int i16 = i12 + 4;
                            char cG2 = G0(i15);
                            if (z10 && cG2 == '\"') {
                                cG2 = G0(i16);
                                i16 = i12 + 5;
                            }
                            while (cG2 != ',') {
                                if (cG2 == ']') {
                                    this.f162e = i16;
                                    this.f161d = G0(i16);
                                    this.f171n = 5;
                                    this.f158a = 15;
                                    return 0;
                                }
                                if (!c.M0(cG2)) {
                                    this.f171n = -1;
                                    return 0;
                                }
                                char cG3 = G0(i16);
                                i16++;
                                cG2 = cG3;
                            }
                            this.f162e = i16;
                            this.f161d = G0(i16);
                            this.f171n = 5;
                            this.f158a = 16;
                            return 0;
                        }
                    }
                }
            }
            this.f171n = -1;
            return 0;
        }
        int i17 = cG1 - '0';
        while (true) {
            i10 = i12 + 1;
            cG0 = G0(i12);
            if (cG0 < '0' || cG0 > '9') {
                break;
            }
            int i18 = i17 * 10;
            if (i18 < i17) {
                throw new JSONException("parseInt error : " + r1(i11, i12));
            }
            i17 = i18 + (cG0 - '0');
            i12 = i10;
        }
        if (cG0 == '.') {
            this.f171n = -1;
            return 0;
        }
        if (z10) {
            if (cG0 != '\"') {
                this.f171n = -1;
                return 0;
            }
            cG0 = G0(i10);
            i10 = i12 + 2;
        }
        if (i17 < 0) {
            this.f171n = -1;
            return 0;
        }
        while (cG0 != c10) {
            if (!c.M0(cG0)) {
                this.f171n = -1;
                return z11 ? -i17 : i17;
            }
            cG0 = G0(i10);
            i10++;
        }
        this.f162e = i10;
        this.f161d = G0(i10);
        this.f171n = 3;
        this.f158a = 16;
        return z11 ? -i17 : i17;
    }

    @Override
    public String k() {
        StringBuilder sb2 = new StringBuilder();
        int i10 = 1;
        int i11 = 1;
        int i12 = 0;
        while (i12 < this.f162e) {
            if (this.f174t.charAt(i12) == '\n') {
                i10++;
                i11 = 1;
            }
            i12++;
            i11++;
        }
        sb2.append("pos ");
        sb2.append(this.f162e);
        sb2.append(", line ");
        sb2.append(i10);
        sb2.append(", column ");
        sb2.append(i11);
        if (this.f174t.length() < 65535) {
            sb2.append(this.f174t);
        } else {
            sb2.append(this.f174t.substring(0, Settings.DEFAULT_INITIAL_WINDOW_SIZE));
        }
        return sb2.toString();
    }

    @Override
    public byte[] l0() {
        if (this.f158a != 26) {
            return !this.f167j ? com.alibaba.fastjson.util.f.d(this.f174t, this.f166i + 1, this.f165h) : com.alibaba.fastjson.util.f.c(new String(this.f164g, 0, this.f165h));
        }
        int i10 = this.f166i + 1;
        int i11 = this.f165h;
        if (i11 % 2 != 0) {
            throw new JSONException("illegal state. " + i11);
        }
        int i12 = i11 / 2;
        byte[] bArr = new byte[i12];
        for (int i13 = 0; i13 < i12; i13++) {
            int i14 = (i13 * 2) + i10;
            char cCharAt = this.f174t.charAt(i14);
            char cCharAt2 = this.f174t.charAt(i14 + 1);
            char c10 = '7';
            int i15 = cCharAt - (cCharAt <= '9' ? '0' : '7');
            if (cCharAt2 <= '9') {
                c10 = '0';
            }
            bArr[i13] = (byte) ((i15 << 4) | (cCharAt2 - c10));
        }
        return bArr;
    }

    @Override
    public String n(i iVar) {
        int iIndexOf;
        if (!this.f174t.startsWith("\"@type\":\"", this.f162e) || (iIndexOf = this.f174t.indexOf(34, this.f162e + 9)) == -1) {
            return null;
        }
        int i10 = this.f162e + 9;
        this.f162e = i10;
        int iCharAt = 0;
        while (i10 < iIndexOf) {
            iCharAt = (iCharAt * 31) + this.f174t.charAt(i10);
            i10++;
        }
        int i11 = this.f162e;
        String strB = b(i11, iIndexOf - i11, iCharAt, iVar);
        char cCharAt = this.f174t.charAt(iIndexOf + 1);
        if (cCharAt != ',' && cCharAt != ']') {
            return null;
        }
        int i12 = iIndexOf + 2;
        this.f162e = i12;
        this.f161d = this.f174t.charAt(i12);
        return strB;
    }

    @Override
    public final char next() {
        int i10 = this.f162e + 1;
        this.f162e = i10;
        char cCharAt = i10 >= this.f175u ? (char) 26 : this.f174t.charAt(i10);
        this.f161d = cCharAt;
        return cCharAt;
    }

    @Override
    public final String o0() {
        return !this.f167j ? r1(this.f166i + 1, this.f165h) : new String(this.f164g, 0, this.f165h);
    }

    @Override
    public final String r1(int i10, int i11) {
        if (!com.alibaba.fastjson.util.b.f17579b) {
            return this.f174t.substring(i10, i11 + i10);
        }
        char[] cArr = this.f164g;
        if (i11 < cArr.length) {
            this.f174t.getChars(i10, i10 + i11, cArr, 0);
            return new String(this.f164g, 0, i11);
        }
        char[] cArr2 = new char[i11];
        this.f174t.getChars(i10, i11 + i10, cArr2, 0);
        return new String(cArr2);
    }

    @Override
    public final char[] s1(int i10, int i11) {
        if (com.alibaba.fastjson.util.b.f17579b) {
            char[] cArr = this.f164g;
            if (i11 < cArr.length) {
                this.f174t.getChars(i10, i11 + i10, cArr, 0);
                return this.f164g;
            }
        }
        char[] cArr2 = new char[i11];
        this.f174t.getChars(i10, i11 + i10, cArr2, 0);
        return cArr2;
    }

    @Override
    public double t(char c10) {
        int i10;
        char cG0;
        long j10;
        int i11;
        int i12;
        double d10;
        char cG1;
        this.f171n = 0;
        int i13 = this.f162e;
        int i14 = i13 + 1;
        char cG2 = G0(i13);
        boolean z10 = cG2 == '\"';
        if (z10) {
            cG2 = G0(i14);
            i14 = i13 + 2;
        }
        boolean z11 = cG2 == '-';
        if (z11) {
            cG2 = G0(i14);
            i14++;
        }
        if (cG2 >= '0') {
            char c11 = '9';
            if (cG2 <= '9') {
                long j11 = cG2 - '0';
                while (true) {
                    i10 = i14 + 1;
                    cG0 = G0(i14);
                    if (cG0 < '0' || cG0 > '9') {
                        break;
                    }
                    j11 = (j11 * 10) + ((long) (cG0 - '0'));
                    i14 = i10;
                }
                if (cG0 == '.') {
                    int i15 = i14 + 2;
                    char cG3 = G0(i10);
                    if (cG3 < '0' || cG3 > '9') {
                        this.f171n = -1;
                        return 0.0d;
                    }
                    j11 = (j11 * 10) + ((long) (cG3 - '0'));
                    long j12 = 10;
                    while (true) {
                        i10 = i15 + 1;
                        cG1 = G0(i15);
                        if (cG1 < '0' || cG1 > c11) {
                            break;
                        }
                        j11 = (j11 * 10) + ((long) (cG1 - '0'));
                        j12 *= 10;
                        i15 = i10;
                        c11 = '9';
                    }
                    long j13 = j12;
                    cG0 = cG1;
                    j10 = j13;
                } else {
                    j10 = 1;
                }
                boolean z12 = cG0 == 'e' || cG0 == 'E';
                if (z12) {
                    int i16 = i10 + 1;
                    char cG4 = G0(i10);
                    if (cG4 == '+' || cG4 == '-') {
                        i10 += 2;
                        cG0 = G0(i16);
                    } else {
                        i10 = i16;
                        cG0 = cG4;
                    }
                    while (cG0 >= '0' && cG0 <= '9') {
                        int i17 = i10 + 1;
                        char cG5 = G0(i10);
                        i10 = i17;
                        cG0 = cG5;
                    }
                }
                if (!z10) {
                    i11 = this.f162e;
                    i12 = (i10 - i11) - 1;
                } else {
                    if (cG0 != '\"') {
                        this.f171n = -1;
                        return 0.0d;
                    }
                    int i18 = i10 + 1;
                    char cG6 = G0(i10);
                    i11 = this.f162e + 1;
                    i12 = (i18 - i11) - 2;
                    i10 = i18;
                    cG0 = cG6;
                }
                if (z12 || i12 >= 18) {
                    d10 = Double.parseDouble(r1(i11, i12));
                } else {
                    d10 = j11 / j10;
                    if (z11) {
                        d10 = -d10;
                    }
                }
                if (cG0 != c10) {
                    this.f171n = -1;
                    return d10;
                }
                this.f162e = i10;
                this.f161d = G0(i10);
                this.f171n = 3;
                this.f158a = 16;
                return d10;
            }
        }
        if (cG2 == 'n') {
            int i19 = i14 + 1;
            if (G0(i14) == 'u') {
                int i20 = i14 + 2;
                if (G0(i19) == 'l') {
                    int i21 = i14 + 3;
                    if (G0(i20) == 'l') {
                        this.f171n = 5;
                        int i22 = i14 + 4;
                        char cG7 = G0(i21);
                        if (z10 && cG7 == '\"') {
                            cG7 = G0(i22);
                            i22 = i14 + 5;
                        }
                        while (cG7 != ',') {
                            if (cG7 == ']') {
                                this.f162e = i22;
                                this.f161d = G0(i22);
                                this.f171n = 5;
                                this.f158a = 15;
                                return 0.0d;
                            }
                            if (!c.M0(cG7)) {
                                this.f171n = -1;
                                return 0.0d;
                            }
                            char cG8 = G0(i22);
                            i22++;
                            cG7 = cG8;
                        }
                        this.f162e = i22;
                        this.f161d = G0(i22);
                        this.f171n = 5;
                        this.f158a = 16;
                        return 0.0d;
                    }
                }
            }
        }
        this.f171n = -1;
        return 0.0d;
    }

    public boolean w1() {
        return x1(true);
    }

    public boolean x1(boolean z10) {
        return y1(z10, this.f175u - this.f162e);
    }

    public e(String str, int i10) {
        super(i10);
        this.f174t = str;
        this.f175u = str.length();
        this.f162e = -1;
        next();
        if (this.f161d == 65279) {
            next();
        }
    }

    public e(char[] cArr, int i10, int i11) {
        this(new String(cArr, 0, i10), i11);
    }
}
