package com.yandex.mobile.ads.impl;

import com.alibaba.android.arouter.utils.Consts;
import defpackage.g1a;
import defpackage.j1a;
import defpackage.y45;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import java.net.IDN;
import java.net.InetAddress;
import java.util.Arrays;
import java.util.Locale;
import okio.Buffer;

public final class jg0 {
    /* JADX WARN: Code duplicated, block: B:35:0x007b  */
    /* JADX WARN: Code duplicated, block: B:50:0x00a6 A[LOOP:2: B:25:0x0065->B:50:0x00a6, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:57:0x00ba  */
    /* JADX WARN: Code duplicated, block: B:59:0x00c4 A[LOOP:1: B:56:0x00b8->B:59:0x00c4, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:81:0x00ca A[EDGE_INSN: B:81:0x00ca->B:60:0x00ca BREAK  A[LOOP:1: B:56:0x00b8->B:59:0x00c4], SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:84:0x00b5 A[SYNTHETIC] */
    private static final InetAddress a(int i, int i2, String str) {
        int i3;
        int i4;
        char cCharAt;
        int i5;
        int i6;
        int iA;
        byte[] bArr = new byte[16];
        int i7 = 0;
        int i8 = i;
        int i9 = -1;
        int i10 = -1;
        while (i8 < i2) {
            if (i7 == 16) {
                return null;
            }
            int i11 = i8 + 2;
            if (i11 <= i2 && g1a.Q(str, "::", i8, false, 4, null)) {
                if (i9 != -1) {
                    return null;
                }
                i7 += 2;
                if (i11 == i2) {
                    i9 = i7;
                    break;
                }
                i10 = i11;
                i9 = i7;
                i8 = i10;
                i5 = 0;
                while (i8 < i2) {
                    iA = g92.a(str.charAt(i8));
                    if (iA != -1) {
                        break;
                        break;
                    }
                    i5 = (i5 << 4) + iA;
                    i8++;
                }
                i6 = i8 - i10;
                if (i6 != 0) {
                }
                return null;
            }
            if (i7 != 0) {
                if (!g1a.Q(str, StringUtils.PROCESS_POSTFIX_DELIMITER, i8, false, 4, null)) {
                    if (g1a.Q(str, Consts.DOT, i8, false, 4, null)) {
                        int i12 = i7 - 2;
                        int i13 = i12;
                        while (i10 < i2) {
                            if (i13 != 16) {
                                if (i13 == i12) {
                                    i3 = i10;
                                    i4 = 0;
                                    while (i3 < i2) {
                                        cCharAt = str.charAt(i3);
                                        if (y45.l(cCharAt, 48) < 0 || y45.l(cCharAt, 57) > 0) {
                                            break;
                                        }
                                        if ((i4 != 0 || i10 == i3) && (i4 = ((i4 * 10) + cCharAt) - 48) <= 255) {
                                            i3++;
                                        }
                                    }
                                    if (i3 - i10 == 0) {
                                        bArr[i13] = (byte) i4;
                                        i10 = i3;
                                        i13++;
                                    }
                                } else if (str.charAt(i10) == '.') {
                                    i10++;
                                    i3 = i10;
                                    i4 = 0;
                                    while (i3 < i2) {
                                        cCharAt = str.charAt(i3);
                                        if (y45.l(cCharAt, 48) < 0) {
                                            break;
                                        }
                                        break;
                                        break;
                                    }
                                    if (i3 - i10 == 0) {
                                        bArr[i13] = (byte) i4;
                                        i10 = i3;
                                        i13++;
                                    }
                                }
                            }
                        }
                        if (i13 == i7 + 2) {
                            i7 += 2;
                            break;
                        }
                    }
                    return null;
                }
                i8++;
            }
            i10 = i8;
            i8 = i10;
            i5 = 0;
            while (i8 < i2) {
                iA = g92.a(str.charAt(i8));
                if (iA != -1) {
                    break;
                }
                i5 = (i5 << 4) + iA;
                i8++;
            }
            i6 = i8 - i10;
            if (i6 != 0 || i6 > 4) {
                return null;
            }
            int i14 = i7 + 1;
            bArr[i7] = (byte) ((i5 >>> 8) & 255);
            i7 += 2;
            bArr[i14] = (byte) (i5 & 255);
        }
        if (i7 != 16) {
            if (i9 == -1) {
                return null;
            }
            int i15 = i7 - i9;
            System.arraycopy(bArr, i9, bArr, 16 - i15, i15);
            Arrays.fill(bArr, i9, (16 - i7) + i9, (byte) 0);
        }
        return InetAddress.getByAddress(bArr);
    }

    public static final String a(String str) {
        InetAddress inetAddressA;
        y45.j(str, "<this>");
        int i = 0;
        int i2 = -1;
        if (j1a.X(str, StringUtils.PROCESS_POSTFIX_DELIMITER, false, 2, null)) {
            if (g1a.R(str, "[", false, 2, null) && g1a.D(str, "]", false, 2, null)) {
                inetAddressA = a(1, str.length() - 1, str);
            } else {
                inetAddressA = a(0, str.length(), str);
            }
            if (inetAddressA == null) {
                return null;
            }
            byte[] address = inetAddressA.getAddress();
            if (address.length == 16) {
                y45.g(address);
                int i3 = 0;
                int i4 = 0;
                while (i3 < address.length) {
                    int i5 = i3;
                    while (i5 < 16 && address[i5] == 0 && address[i5 + 1] == 0) {
                        i5 += 2;
                    }
                    int i6 = i5 - i3;
                    if (i6 > i4 && i6 >= 4) {
                        i2 = i3;
                        i4 = i6;
                    }
                    i3 = i5 + 2;
                }
                Buffer buffer = new Buffer();
                while (i < address.length) {
                    if (i == i2) {
                        buffer.writeByte(58);
                        i += i4;
                        if (i == 16) {
                            buffer.writeByte(58);
                        }
                    } else {
                        if (i > 0) {
                            buffer.writeByte(58);
                        }
                        byte b = address[i];
                        byte[] bArr = g92.a;
                        buffer.writeHexadecimalUnsignedLong(((b & 255) << 8) | (address[i + 1] & 255));
                        i += 2;
                    }
                }
                return buffer.readUtf8();
            }
            if (address.length == 4) {
                return inetAddressA.getHostAddress();
            }
            throw new AssertionError("Invalid IPv6 address: '" + str + "'");
        }
        try {
            String ascii = IDN.toASCII(str);
            y45.i(ascii, "toASCII(...)");
            Locale locale = Locale.US;
            y45.i(locale, "US");
            String lowerCase = ascii.toLowerCase(locale);
            y45.i(lowerCase, "toLowerCase(...)");
            if (lowerCase.length() == 0) {
                return null;
            }
            int length = lowerCase.length();
            while (i < length) {
                char cCharAt = lowerCase.charAt(i);
                if (y45.l(cCharAt, 31) <= 0 || y45.l(cCharAt, 127) >= 0 || j1a.l0(" #%/:?@[\\]", cCharAt, 0, false, 6, null) != -1) {
                    return null;
                }
                i++;
            }
            return lowerCase;
        } catch (IllegalArgumentException unused) {
            return null;
        }
    }
}
