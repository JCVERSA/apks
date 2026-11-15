package kd;

import com.google.zxing.DecodeHintType;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.nio.charset.UnsupportedCharsetException;
import java.util.Map;

public abstract class o {

    private static final Charset f63971a = Charset.defaultCharset();

    public static final Charset f63972b = Charset.forName("SJIS");

    public static final Charset f63973c;

    private static final Charset f63974d;

    private static final boolean f63975e;

    static {
        Charset charsetForName;
        try {
            charsetForName = Charset.forName("GB2312");
        } catch (UnsupportedCharsetException unused) {
            charsetForName = null;
        }
        f63973c = charsetForName;
        Charset charsetForName2 = Charset.forName("EUC_JP");
        f63974d = charsetForName2;
        Charset charset = f63972b;
        Charset charset2 = f63971a;
        f63975e = charset.equals(charset2) || charsetForName2.equals(charset2);
    }

    /* JADX WARN: Code duplicated, block: B:83:0x00d6  */
    public static Charset a(byte[] bArr, Map map) {
        int i10;
        byte b10;
        byte[] bArr2 = bArr;
        if (map != null) {
            DecodeHintType decodeHintType = DecodeHintType.CHARACTER_SET;
            if (map.containsKey(decodeHintType)) {
                return Charset.forName(map.get(decodeHintType).toString());
            }
        }
        boolean z10 = true;
        int i11 = 0;
        if (bArr2.length > 2 && (((b10 = bArr2[0]) == -2 && bArr2[1] == -1) || (b10 == -1 && bArr2[1] == -2))) {
            return StandardCharsets.UTF_16;
        }
        int length = bArr2.length;
        boolean z11 = bArr2.length > 3 && bArr2[0] == -17 && bArr2[1] == -69 && bArr2[2] == -65;
        boolean z12 = true;
        boolean z13 = true;
        int i12 = 0;
        int i13 = 0;
        int i14 = 0;
        int i15 = 0;
        int i16 = 0;
        int i17 = 0;
        int i18 = 0;
        int i19 = 0;
        int i20 = 0;
        int i21 = 0;
        int i22 = 0;
        while (i13 < length && (z10 || z12 || z13)) {
            byte b11 = bArr2[i13];
            int i23 = b11 & 255;
            if (z13) {
                if (i14 <= 0) {
                    i10 = length;
                    if ((b11 & 128) != 0) {
                        if ((b11 & 64) != 0) {
                            int i24 = i14 + 1;
                            if ((b11 & 32) == 0) {
                                i16++;
                            } else {
                                i24 = i14 + 2;
                                if ((b11 & 16) == 0) {
                                    i17++;
                                } else {
                                    i14 += 3;
                                    if ((b11 & 8) == 0) {
                                        i18++;
                                    }
                                }
                            }
                            i14 = i24;
                        }
                    }
                } else if ((b11 & 128) == 0) {
                    i10 = length;
                } else {
                    i14--;
                    i10 = length;
                }
                z13 = false;
            } else {
                i10 = length;
            }
            if (z10) {
                if (i23 > 127 && i23 < 160) {
                    z10 = false;
                } else if (i23 > 159 && (i23 < 192 || i23 == 215 || i23 == 247)) {
                    i20++;
                }
            }
            if (z12) {
                if (i15 > 0) {
                    if (i23 < 64 || i23 == 127 || i23 > 252) {
                        z12 = false;
                    } else {
                        i15--;
                    }
                } else if (i23 == 128 || i23 == 160 || i23 > 239) {
                    z12 = false;
                } else if (i23 <= 160 || i23 >= 224) {
                    if (i23 > 127) {
                        i15++;
                        int i25 = i21 + 1;
                        if (i25 > i11) {
                            i11 = i25;
                            i21 = i11;
                        } else {
                            i21 = i25;
                        }
                    } else {
                        i21 = 0;
                    }
                    i22 = 0;
                } else {
                    i12++;
                    int i26 = i22 + 1;
                    if (i26 > i19) {
                        i19 = i26;
                        i22 = i19;
                    } else {
                        i22 = i26;
                    }
                    i21 = 0;
                }
            }
            i13++;
            bArr2 = bArr;
            length = i10;
        }
        int i27 = length;
        if (z13 && i14 > 0) {
            z13 = false;
        }
        if (z12 && i15 > 0) {
            z12 = false;
        }
        if (z13 && (z11 || i16 + i17 + i18 > 0)) {
            return StandardCharsets.UTF_8;
        }
        if (z12 && (f63975e || i19 >= 3 || i11 >= 3)) {
            return f63972b;
        }
        if (z10 && z12) {
            return (!(i19 == 2 && i12 == 2) && i20 * 10 < i27) ? StandardCharsets.ISO_8859_1 : f63972b;
        }
        if (z10) {
            return StandardCharsets.ISO_8859_1;
        }
        if (z12) {
            return f63972b;
        }
        return z13 ? StandardCharsets.UTF_8 : f63971a;
    }
}
