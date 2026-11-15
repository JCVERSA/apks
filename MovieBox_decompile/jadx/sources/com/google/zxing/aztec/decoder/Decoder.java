package com.google.zxing.aztec.decoder;

import com.cloud.tmc.integration.params.TmcStartParams;
import com.cloud.tmc.kernel.utils.UrlUtils;
import com.cloud.tmc.miniapp.prepare.steps.PrepareException;
import com.google.zxing.FormatException;
import com.google.zxing.common.CharacterSetECI;
import com.google.zxing.common.reedsolomon.ReedSolomonException;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import com.transsion.gslb.Utils;
import java.io.ByteArrayOutputStream;
import java.io.UnsupportedEncodingException;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.util.Arrays;
import kd.d;
import md.c;

public final class Decoder {

    private static final String[] f31990b = {"CTRL_PS", " ", "A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z", "CTRL_LL", "CTRL_ML", "CTRL_DL", "CTRL_BS"};

    private static final String[] f31991c = {"CTRL_PS", " ", "a", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "c", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "e", "f", "g", "h", "i", "j", CampaignEx.JSON_KEY_AD_K, "l", "m", "n", "o", TtmlNode.TAG_P, CampaignEx.JSON_KEY_AD_Q, CampaignEx.JSON_KEY_AD_R, "s", "t", TmcStartParams.KEY_URL_SHORT, "v", "w", "x", "y", "z", "CTRL_US", "CTRL_ML", "CTRL_DL", "CTRL_BS"};

    private static final String[] f31992d = {"CTRL_PS", " ", "\u0001", "\u0002", "\u0003", "\u0004", "\u0005", "\u0006", "\u0007", "\b", "\t", "\n", "\u000b", "\f", "\r", "\u001b", "\u001c", "\u001d", "\u001e", "\u001f", "@", "\\", "^", "_", "`", "|", "~", "\u007f", "CTRL_LL", "CTRL_UL", "CTRL_PL", "CTRL_BS"};

    private static final String[] f31993e = {"FLG(n)", "\r", "\r\n", ". ", ", ", ": ", "!", "\"", Utils.SEPARATOR, "$", "%", UrlUtils.AND_MARK, "'", "(", ")", "*", "+", ",", "-", ".", "/", ":", ";", "<", UrlUtils.EQUAL_MARK, ">", UrlUtils.QUESTION_MARK, "[", "]", "{", "}", "CTRL_UL"};

    private static final String[] f31994f = {"CTRL_PS", " ", "0", "1", "2", "3", "4", "5", PrepareException.ERROR_NO_URL, "7", PrepareException.ERROR_MANIFEST_INFO, PrepareException.ERROR_MINI_APP_CLOSE, ",", ".", "CTRL_UL", "CTRL_US"};

    private static final Charset f31995g = StandardCharsets.ISO_8859_1;

    private gd.a f31996a;

    private enum Table {
        UPPER,
        LOWER,
        MIXED,
        DIGIT,
        PUNCT,
        BINARY
    }

    static class a {

        static final int[] f31997a;

        static {
            int[] iArr = new int[Table.values().length];
            f31997a = iArr;
            try {
                iArr[Table.UPPER.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f31997a[Table.LOWER.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f31997a[Table.MIXED.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f31997a[Table.PUNCT.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f31997a[Table.DIGIT.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
        }
    }

    static final class b {

        private final boolean[] f31998a;

        private final int f31999b;

        private final int f32000c;

        b(boolean[] zArr, int i10, int i11) {
            this.f31998a = zArr;
            this.f31999b = i10;
            this.f32000c = i11;
        }
    }

    static byte[] a(boolean[] zArr) {
        int length = (zArr.length + 7) / 8;
        byte[] bArr = new byte[length];
        for (int i10 = 0; i10 < length; i10++) {
            bArr[i10] = h(zArr, i10 * 8);
        }
        return bArr;
    }

    private b b(boolean[] zArr) throws FormatException {
        int i10;
        md.a aVar;
        if (this.f31996a.e() <= 2) {
            aVar = md.a.f66375j;
            i10 = 6;
        } else {
            i10 = 8;
            if (this.f31996a.e() <= 8) {
                aVar = md.a.f66379n;
            } else if (this.f31996a.e() <= 22) {
                aVar = md.a.f66374i;
                i10 = 10;
            } else {
                aVar = md.a.f66373h;
                i10 = 12;
            }
        }
        int iD = this.f31996a.d();
        int length = zArr.length / i10;
        if (length < iD) {
            throw FormatException.getFormatInstance();
        }
        int length2 = zArr.length % i10;
        int[] iArr = new int[length];
        int i11 = 0;
        while (i11 < length) {
            iArr[i11] = i(zArr, length2, i10);
            i11++;
            length2 += i10;
        }
        try {
            c cVar = new c(aVar);
            int i12 = length - iD;
            int iA = cVar.a(iArr, i12);
            int i13 = 1 << i10;
            int i14 = i13 - 1;
            int i15 = 0;
            for (int i16 = 0; i16 < iD; i16++) {
                int i17 = iArr[i16];
                if (i17 == 0 || i17 == i14) {
                    throw FormatException.getFormatInstance();
                }
                if (i17 == 1 || i17 == i13 - 2) {
                    i15++;
                }
            }
            boolean[] zArr2 = new boolean[(iD * i10) - i15];
            int i18 = 0;
            for (int i19 = 0; i19 < iD; i19++) {
                int i20 = iArr[i19];
                if (i20 == 1 || i20 == i13 - 2) {
                    Arrays.fill(zArr2, i18, (i18 + i10) - 1, i20 > 1);
                    i18 += i10 - 1;
                } else {
                    int i21 = i10 - 1;
                    while (i21 >= 0) {
                        int i22 = i18 + 1;
                        zArr2[i18] = (i20 & (1 << i21)) != 0;
                        i21--;
                        i18 = i22;
                    }
                }
            }
            return new b(zArr2, iA, (i12 * 100) / length);
        } catch (ReedSolomonException e10) {
            throw FormatException.getFormatInstance(e10);
        }
    }

    private boolean[] d(kd.b bVar) {
        boolean zF = this.f31996a.f();
        int iE = this.f31996a.e();
        int i10 = (zF ? 11 : 14) + (iE * 4);
        int[] iArr = new int[i10];
        boolean[] zArr = new boolean[j(iE, zF)];
        int i11 = 2;
        if (zF) {
            for (int i12 = 0; i12 < i10; i12++) {
                iArr[i12] = i12;
            }
        } else {
            int i13 = i10 / 2;
            int i14 = ((i10 + 1) + (((i13 - 1) / 15) * 2)) / 2;
            for (int i15 = 0; i15 < i13; i15++) {
                int i16 = (i15 / 15) + i15;
                iArr[(i13 - i15) - 1] = (i14 - i16) - 1;
                iArr[i13 + i15] = i16 + i14 + 1;
            }
        }
        int i17 = 0;
        int i18 = 0;
        while (i17 < iE) {
            int i19 = ((iE - i17) * 4) + (zF ? 9 : 12);
            int i20 = i17 * 2;
            int i21 = (i10 - 1) - i20;
            int i22 = 0;
            while (i22 < i19) {
                int i23 = i22 * 2;
                int i24 = 0;
                while (i24 < i11) {
                    int i25 = i20 + i24;
                    int i26 = i20 + i22;
                    zArr[i18 + i23 + i24] = bVar.h(iArr[i25], iArr[i26]);
                    int i27 = iArr[i26];
                    int i28 = i21 - i24;
                    zArr[(i19 * 2) + i18 + i23 + i24] = bVar.h(i27, iArr[i28]);
                    int i29 = i21 - i22;
                    zArr[(i19 * 4) + i18 + i23 + i24] = bVar.h(iArr[i28], iArr[i29]);
                    zArr[(i19 * 6) + i18 + i23 + i24] = bVar.h(iArr[i29], iArr[i25]);
                    i24++;
                    iE = iE;
                    zF = zF;
                    i11 = 2;
                }
                i22++;
                i11 = 2;
            }
            i18 += i19 * 8;
            i17++;
            i11 = 2;
        }
        return zArr;
    }

    private static String e(Table table, int i10) {
        int i11 = a.f31997a[table.ordinal()];
        if (i11 == 1) {
            return f31990b[i10];
        }
        if (i11 == 2) {
            return f31991c[i10];
        }
        if (i11 == 3) {
            return f31992d[i10];
        }
        if (i11 == 4) {
            return f31993e[i10];
        }
        if (i11 == 5) {
            return f31994f[i10];
        }
        throw new IllegalStateException("Bad table");
    }

    private static String f(boolean[] zArr) throws FormatException {
        int length = zArr.length;
        Table table = Table.UPPER;
        StringBuilder sb2 = new StringBuilder((zArr.length - 5) / 4);
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        Charset charset = f31995g;
        int i10 = 0;
        Table tableG = table;
        while (i10 < length) {
            if (table != Table.BINARY) {
                int i11 = table == Table.DIGIT ? 4 : 5;
                if (length - i10 < i11) {
                    break;
                }
                int i12 = i(zArr, i10, i11);
                i10 += i11;
                String strE = e(table, i12);
                if ("FLG(n)".equals(strE)) {
                    if (length - i10 < 3) {
                        break;
                    }
                    int i13 = i(zArr, i10, 3);
                    i10 += 3;
                    try {
                        sb2.append(byteArrayOutputStream.toString(charset.name()));
                        byteArrayOutputStream.reset();
                        if (i13 == 0) {
                            sb2.append((char) 29);
                        } else {
                            if (i13 == 7) {
                                throw FormatException.getFormatInstance();
                            }
                            if (length - i10 >= i13 * 4) {
                                int i14 = 0;
                                while (true) {
                                    int i15 = i13 - 1;
                                    if (i13 <= 0) {
                                        CharacterSetECI characterSetECIByValue = CharacterSetECI.getCharacterSetECIByValue(i14);
                                        if (characterSetECIByValue == null) {
                                            throw FormatException.getFormatInstance();
                                        }
                                        charset = characterSetECIByValue.getCharset();
                                        break;
                                    }
                                    int i16 = i(zArr, i10, 4);
                                    i10 += 4;
                                    if (i16 < 2 || i16 > 11) {
                                        throw FormatException.getFormatInstance();
                                    }
                                    i14 = (i14 * 10) + (i16 - 2);
                                    i13 = i15;
                                }
                            }
                        }
                    } catch (UnsupportedEncodingException e10) {
                        throw new IllegalStateException(e10);
                    }
                } else if (strE.startsWith("CTRL_")) {
                    tableG = g(strE.charAt(5));
                    if (strE.charAt(6) != 'L') {
                        tableG = table;
                        table = tableG;
                    }
                } else {
                    byte[] bytes = strE.getBytes(StandardCharsets.US_ASCII);
                    byteArrayOutputStream.write(bytes, 0, bytes.length);
                }
                table = tableG;
            } else {
                if (length - i10 < 5) {
                    break;
                }
                int i17 = i(zArr, i10, 5);
                int i18 = i10 + 5;
                if (i17 == 0) {
                    if (length - i18 < 11) {
                        break;
                    }
                    i17 = i(zArr, i18, 11) + 31;
                    i18 = i10 + 16;
                }
                int i19 = 0;
                while (true) {
                    if (i19 >= i17) {
                        i10 = i18;
                        break;
                    }
                    if (length - i18 < 8) {
                        i10 = length;
                        break;
                    }
                    byteArrayOutputStream.write((byte) i(zArr, i18, 8));
                    i18 += 8;
                    i19++;
                }
                table = tableG;
            }
        }
        try {
            sb2.append(byteArrayOutputStream.toString(charset.name()));
            return sb2.toString();
        } catch (UnsupportedEncodingException e11) {
            throw new IllegalStateException(e11);
        }
    }

    private static Table g(char c10) {
        if (c10 == 'B') {
            return Table.BINARY;
        }
        if (c10 == 'D') {
            return Table.DIGIT;
        }
        if (c10 == 'P') {
            return Table.PUNCT;
        }
        if (c10 != 'L') {
            return c10 != 'M' ? Table.UPPER : Table.MIXED;
        }
        return Table.LOWER;
    }

    private static byte h(boolean[] zArr, int i10) {
        int length = zArr.length - i10;
        return (byte) (length >= 8 ? i(zArr, i10, 8) : i(zArr, i10, length) << (8 - length));
    }

    private static int i(boolean[] zArr, int i10, int i11) {
        int i12 = 0;
        for (int i13 = i10; i13 < i10 + i11; i13++) {
            i12 <<= 1;
            if (zArr[i13]) {
                i12 |= 1;
            }
        }
        return i12;
    }

    private static int j(int i10, boolean z10) {
        return ((z10 ? 88 : 112) + (i10 * 16)) * i10;
    }

    public d c(gd.a aVar) throws FormatException {
        this.f31996a = aVar;
        b bVarB = b(d(aVar.a()));
        d dVar = new d(a(bVarB.f31998a), f(bVarB.f31998a), null, String.format("%d%%", Integer.valueOf(bVarB.f32000c)));
        dVar.o(bVarB.f31998a.length);
        dVar.n(Integer.valueOf(bVarB.f31999b));
        return dVar;
    }
}
