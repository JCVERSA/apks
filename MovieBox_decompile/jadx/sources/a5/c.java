package a5;

import com.alibaba.fastjson.JSONException;
import com.alibaba.fastjson.parser.Feature;
import com.cloud.tmc.kernel.constants.TmcConstants;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import java.io.Closeable;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.math.MathContext;
import java.util.Calendar;
import java.util.Date;
import java.util.Locale;
import java.util.TimeZone;
import okio.internal.Buffer;

public abstract class c implements b, Closeable {

    private static final ThreadLocal f155q = new ThreadLocal();

    protected static final char[] f156r = ("\"" + com.alibaba.fastjson.a.DEFAULT_TYPE_KEY + "\":\"").toCharArray();

    protected static final int[] f157s = new int[103];

    protected int f158a;

    protected int f159b;

    protected int f160c;

    protected char f161d;

    protected int f162e;

    protected int f163f;

    protected char[] f164g;

    protected int f165h;

    protected int f166i;

    protected boolean f167j;

    protected String f172o;

    protected Calendar f168k = null;

    protected TimeZone f169l = com.alibaba.fastjson.a.defaultTimeZone;

    protected Locale f170m = com.alibaba.fastjson.a.defaultLocale;

    public int f171n = 0;

    protected int f173p = 0;

    static {
        for (int i10 = 48; i10 <= 57; i10++) {
            f157s[i10] = i10 - 48;
        }
        for (int i11 = 97; i11 <= 102; i11++) {
            f157s[i11] = i11 - 87;
        }
        for (int i12 = 65; i12 <= 70; i12++) {
            f157s[i12] = i12 - 55;
        }
    }

    public c(int i10) {
        this.f172o = null;
        this.f160c = i10;
        if ((i10 & Feature.InitStringFieldAsEmpty.mask) != 0) {
            this.f172o = "";
        }
        char[] cArr = (char[]) f155q.get();
        this.f164g = cArr;
        if (cArr == null) {
            this.f164g = new char[512];
        }
    }

    public static boolean M0(char c10) {
        return c10 <= ' ' && (c10 == ' ' || c10 == '\n' || c10 == '\r' || c10 == '\t' || c10 == '\f' || c10 == '\b');
    }

    /* JADX WARN: Code duplicated, block: B:47:0x00f1  */
    public static String S0(char[] cArr, int i10) {
        int i11;
        int i12;
        int i13;
        int i14 = 5;
        char[] cArr2 = new char[i10];
        int i15 = 0;
        int i16 = 0;
        while (i15 < i10) {
            char c10 = cArr[i15];
            if (c10 != '\\') {
                cArr2[i16] = c10;
                i11 = i14;
                i16++;
            } else {
                int i17 = i15 + 1;
                char c11 = cArr[i17];
                if (c11 == '\"') {
                    i11 = i14;
                    i12 = i16 + 1;
                    cArr2[i16] = '\"';
                } else if (c11 == '\'') {
                    i11 = i14;
                    i12 = i16 + 1;
                    cArr2[i16] = '\'';
                } else if (c11 == 'F') {
                    i11 = i14;
                    i12 = i16 + 1;
                    cArr2[i16] = '\f';
                } else if (c11 == '\\') {
                    i11 = i14;
                    i12 = i16 + 1;
                    cArr2[i16] = '\\';
                } else if (c11 == 'b') {
                    i11 = i14;
                    i12 = i16 + 1;
                    cArr2[i16] = '\b';
                } else if (c11 == 'f') {
                    i11 = i14;
                    i12 = i16 + 1;
                    cArr2[i16] = '\f';
                } else if (c11 == 'n') {
                    i11 = i14;
                    i12 = i16 + 1;
                    cArr2[i16] = '\n';
                } else if (c11 == 'r') {
                    i11 = i14;
                    i12 = i16 + 1;
                    cArr2[i16] = '\r';
                } else if (c11 != 'x') {
                    switch (c11) {
                        case '/':
                            i11 = i14;
                            i12 = i16 + 1;
                            cArr2[i16] = '/';
                            break;
                        case AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE:
                            i11 = i14;
                            i12 = i16 + 1;
                            cArr2[i16] = 0;
                            break;
                        case AD_VALIDATION_TO_PRESENT_DURATION_MS_VALUE:
                            i11 = i14;
                            i12 = i16 + 1;
                            cArr2[i16] = 1;
                            break;
                        case '2':
                            i11 = i14;
                            i12 = i16 + 1;
                            cArr2[i16] = 2;
                            break;
                        case AD_REWARD_USER_VALUE:
                            i11 = i14;
                            i12 = i16 + 1;
                            cArr2[i16] = 3;
                            break;
                        case AD_REQUIRED_DOWNLOAD_DURATION_MS_VALUE:
                            i11 = i14;
                            i12 = i16 + 1;
                            cArr2[i16] = 4;
                            break;
                        case AD_OPTIONAL_DOWNLOAD_DURATION_MS_VALUE:
                            i12 = i16 + 1;
                            i11 = 5;
                            cArr2[i16] = 5;
                            break;
                        case AD_BACKGROUND_BEFORE_IMPRESSION_VALUE:
                            i13 = i16 + 1;
                            cArr2[i16] = 6;
                            i16 = i13;
                            i15 = i17;
                            i11 = 5;
                            break;
                        case AD_CLOSED_BEFORE_IMPRESSION_VALUE:
                            i13 = i16 + 1;
                            cArr2[i16] = 7;
                            i16 = i13;
                            i15 = i17;
                            i11 = 5;
                            break;
                        default:
                            switch (c11) {
                                case GZIP_ENCODE_ERROR_VALUE:
                                    i13 = i16 + 1;
                                    cArr2[i16] = '\t';
                                    i16 = i13;
                                    i15 = i17;
                                    i11 = 5;
                                    break;
                                case ASSET_FAILED_STATUS_CODE_VALUE:
                                    char c12 = cArr[i15 + 2];
                                    char c13 = cArr[i15 + 3];
                                    char c14 = cArr[i15 + 4];
                                    i15 += i14;
                                    cArr2[i16] = (char) Integer.parseInt(new String(new char[]{c12, c13, c14, cArr[i15]}), 16);
                                    i16++;
                                    i11 = 5;
                                    break;
                                case PROTOBUF_SERIALIZATION_ERROR_VALUE:
                                    cArr2[i16] = 11;
                                    i11 = i14;
                                    i16++;
                                    i15 = i17;
                                    break;
                                default:
                                    throw new JSONException("unclosed.str.lit");
                            }
                            break;
                    }
                } else {
                    i11 = i14;
                    int[] iArr = f157s;
                    int i18 = iArr[cArr[i15 + 2]] * 16;
                    i15 += 3;
                    cArr2[i16] = (char) (i18 + iArr[cArr[i15]]);
                    i16++;
                }
                i16 = i12;
                i15 = i17;
            }
            i15++;
            i14 = i11;
        }
        return new String(cArr2, 0, i16);
    }

    private void l1() {
        this.f166i = this.f162e;
        this.f167j = false;
        while (true) {
            char next = next();
            if (next == '\'') {
                this.f158a = 4;
                next();
                return;
            }
            if (next == 26) {
                if (L0()) {
                    throw new JSONException("unclosed single-quote string");
                }
                R0((char) 26);
            } else if (next == '\\') {
                if (!this.f167j) {
                    this.f167j = true;
                    int i10 = this.f165h;
                    char[] cArr = this.f164g;
                    if (i10 > cArr.length) {
                        char[] cArr2 = new char[i10 * 2];
                        System.arraycopy(cArr, 0, cArr2, 0, cArr.length);
                        this.f164g = cArr2;
                    }
                    H0(this.f166i + 1, this.f165h, this.f164g);
                }
                char next2 = next();
                if (next2 == '\"') {
                    R0('\"');
                } else if (next2 != '\'') {
                    if (next2 != 'F') {
                        if (next2 == '\\') {
                            R0('\\');
                        } else if (next2 == 'b') {
                            R0('\b');
                        } else if (next2 != 'f') {
                            if (next2 == 'n') {
                                R0('\n');
                            } else if (next2 == 'r') {
                                R0('\r');
                            } else if (next2 != 'x') {
                                switch (next2) {
                                    case '/':
                                        R0('/');
                                        break;
                                    case AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE:
                                        R0((char) 0);
                                        break;
                                    case AD_VALIDATION_TO_PRESENT_DURATION_MS_VALUE:
                                        R0((char) 1);
                                        break;
                                    case '2':
                                        R0((char) 2);
                                        break;
                                    case AD_REWARD_USER_VALUE:
                                        R0((char) 3);
                                        break;
                                    case AD_REQUIRED_DOWNLOAD_DURATION_MS_VALUE:
                                        R0((char) 4);
                                        break;
                                    case AD_OPTIONAL_DOWNLOAD_DURATION_MS_VALUE:
                                        R0((char) 5);
                                        break;
                                    case AD_BACKGROUND_BEFORE_IMPRESSION_VALUE:
                                        R0((char) 6);
                                        break;
                                    case AD_CLOSED_BEFORE_IMPRESSION_VALUE:
                                        R0((char) 7);
                                        break;
                                    default:
                                        switch (next2) {
                                            case GZIP_ENCODE_ERROR_VALUE:
                                                R0('\t');
                                                break;
                                            case ASSET_FAILED_STATUS_CODE_VALUE:
                                                R0((char) Integer.parseInt(new String(new char[]{next(), next(), next(), next()}), 16));
                                                break;
                                            case PROTOBUF_SERIALIZATION_ERROR_VALUE:
                                                R0((char) 11);
                                                break;
                                            default:
                                                this.f161d = next2;
                                                throw new JSONException("unclosed single-quote string");
                                        }
                                        break;
                                }
                            } else {
                                char next3 = next();
                                char next4 = next();
                                boolean z10 = (next3 >= '0' && next3 <= '9') || (next3 >= 'a' && next3 <= 'f') || (next3 >= 'A' && next3 <= 'F');
                                boolean z11 = (next4 >= '0' && next4 <= '9') || (next4 >= 'a' && next4 <= 'f') || (next4 >= 'A' && next4 <= 'F');
                                if (!z10 || !z11) {
                                    throw new JSONException("invalid escape character \\x" + next3 + next4);
                                }
                                int[] iArr = f157s;
                                R0((char) ((iArr[next3] * 16) + iArr[next4]));
                            }
                        }
                    }
                    R0('\f');
                } else {
                    R0('\'');
                }
            } else if (this.f167j) {
                int i11 = this.f165h;
                char[] cArr3 = this.f164g;
                if (i11 == cArr3.length) {
                    R0(next);
                } else {
                    this.f165h = i11 + 1;
                    cArr3[i11] = next;
                }
            } else {
                this.f165h++;
            }
        }
    }

    @Override
    public final Number B0(boolean z10) {
        char cG0 = G0((this.f166i + this.f165h) - 1);
        try {
            if (cG0 == 'F') {
                return Float.valueOf(Float.parseFloat(E0()));
            }
            if (cG0 == 'D') {
                return Double.valueOf(Double.parseDouble(E0()));
            }
            return z10 ? g0() : Double.valueOf(I0());
        } catch (NumberFormatException e10) {
            throw new JSONException(e10.getMessage() + ", " + k());
        }
    }

    @Override
    public Locale D0() {
        return this.f170m;
    }

    @Override
    public abstract String E0();

    public abstract char G0(int i10);

    protected abstract void H0(int i10, int i11, char[] cArr);

    public double I0() {
        return Double.parseDouble(E0());
    }

    public Calendar J0() {
        return this.f168k;
    }

    public abstract int K0(char c10, int i10);

    public abstract boolean L0();

    protected void N0(String str, Object... objArr) {
        this.f158a = 1;
    }

    public final boolean O0(char[] cArr) {
        while (!j(cArr)) {
            if (!M0(this.f161d)) {
                return false;
            }
            next();
        }
        int length = this.f162e + cArr.length;
        this.f162e = length;
        char cG0 = G0(length);
        this.f161d = cG0;
        if (cG0 == '{') {
            next();
            this.f158a = 12;
        } else if (cG0 == '[') {
            next();
            this.f158a = 14;
        } else if (cG0 == 'S' && G0(this.f162e + 1) == 'e' && G0(this.f162e + 2) == 't' && G0(this.f162e + 3) == '[') {
            int i10 = this.f162e + 3;
            this.f162e = i10;
            this.f161d = G0(i10);
            this.f158a = 21;
        } else {
            d0();
        }
        return true;
    }

    public final void P0() {
        while (M0(this.f161d)) {
            next();
        }
        char c10 = this.f161d;
        if (c10 == '_' || c10 == '$' || Character.isLetter(c10)) {
            i1();
        } else {
            d0();
        }
    }

    public final void Q0(char c10) {
        this.f165h = 0;
        while (true) {
            char c11 = this.f161d;
            if (c11 == c10) {
                next();
                d0();
                return;
            }
            if (c11 != ' ' && c11 != '\n' && c11 != '\r' && c11 != '\t' && c11 != '\f' && c11 != '\b') {
                throw new JSONException("not match " + c10 + " - " + this.f161d + ", info : " + k());
            }
            next();
        }
    }

    protected final void R0(char c10) {
        int i10 = this.f165h;
        char[] cArr = this.f164g;
        if (i10 >= cArr.length) {
            int length = cArr.length * 2;
            if (length < i10) {
                length = i10 + 1;
            }
            char[] cArr2 = new char[length];
            System.arraycopy(cArr, 0, cArr2, 0, cArr.length);
            this.f164g = cArr2;
        }
        char[] cArr3 = this.f164g;
        int i11 = this.f165h;
        this.f165h = i11 + 1;
        cArr3[i11] = c10;
    }

    @Override
    public Enum S(Class cls, i iVar, char c10) {
        String strM1 = m1(iVar, c10);
        if (strM1 == null) {
            return null;
        }
        return Enum.valueOf(cls, strM1);
    }

    @Override
    public final String T(i iVar) {
        if (this.f158a == 1 && this.f159b == 0 && this.f162e == 1) {
            this.f162e = 0;
        }
        boolean[] zArr = com.alibaba.fastjson.util.f.f17605d;
        int i10 = this.f161d;
        if (i10 < zArr.length && !zArr[i10]) {
            throw new JSONException("illegal identifier : " + this.f161d + k());
        }
        boolean[] zArr2 = com.alibaba.fastjson.util.f.f17606e;
        this.f166i = this.f162e;
        this.f165h = 1;
        while (true) {
            char next = next();
            if (next < zArr2.length && !zArr2[next]) {
                break;
            }
            i10 = (i10 * 31) + next;
            this.f165h++;
        }
        this.f161d = G0(this.f162e);
        this.f158a = 18;
        if (this.f165h == 4 && i10 == 3392903 && G0(this.f166i) == 'n' && G0(this.f166i + 1) == 'u' && G0(this.f166i + 2) == 'l' && G0(this.f166i + 3) == 'l') {
            return null;
        }
        return iVar == null ? r1(this.f166i, this.f165h) : b(this.f166i, this.f165h, i10, iVar);
    }

    public long T0(char[] cArr) {
        this.f171n = 0;
        if (!j(cArr)) {
            this.f171n = -2;
            return 0L;
        }
        int length = cArr.length;
        int i10 = length + 1;
        if (G0(this.f162e + length) != '\"') {
            this.f171n = -1;
            return 0L;
        }
        long j10 = -3750763034362895579L;
        while (true) {
            int i11 = i10 + 1;
            char cG0 = G0(this.f162e + i10);
            if (cG0 == '\"') {
                int i12 = i10 + 2;
                char cG1 = G0(this.f162e + i11);
                if (cG1 == ',') {
                    int i13 = this.f162e + i12;
                    this.f162e = i13;
                    this.f161d = G0(i13);
                    this.f171n = 3;
                    return j10;
                }
                if (cG1 != '}') {
                    this.f171n = -1;
                    return 0L;
                }
                int i14 = i10 + 3;
                char cG2 = G0(this.f162e + i12);
                if (cG2 == ',') {
                    this.f158a = 16;
                    int i15 = this.f162e + i14;
                    this.f162e = i15;
                    this.f161d = G0(i15);
                } else if (cG2 == ']') {
                    this.f158a = 15;
                    int i16 = this.f162e + i14;
                    this.f162e = i16;
                    this.f161d = G0(i16);
                } else if (cG2 == '}') {
                    this.f158a = 13;
                    int i17 = this.f162e + i14;
                    this.f162e = i17;
                    this.f161d = G0(i17);
                } else {
                    if (cG2 != 26) {
                        this.f171n = -1;
                        return 0L;
                    }
                    this.f158a = 20;
                    this.f162e += i10 + 2;
                    this.f161d = (char) 26;
                }
                this.f171n = 4;
                return j10;
            }
            j10 = (j10 ^ ((long) ((cG0 < 'A' || cG0 > 'Z') ? cG0 : cG0 + ' '))) * 1099511628211L;
            if (cG0 == '\\') {
                this.f171n = -1;
                return 0L;
            }
            i10 = i11;
        }
    }

    public final void U0() {
        if (this.f161d != 'f') {
            throw new JSONException("error parse false");
        }
        next();
        if (this.f161d != 'a') {
            throw new JSONException("error parse false");
        }
        next();
        if (this.f161d != 'l') {
            throw new JSONException("error parse false");
        }
        next();
        if (this.f161d != 's') {
            throw new JSONException("error parse false");
        }
        next();
        if (this.f161d != 'e') {
            throw new JSONException("error parse false");
        }
        next();
        char c10 = this.f161d;
        if (c10 != ' ' && c10 != ',' && c10 != '}' && c10 != ']' && c10 != '\n' && c10 != '\r' && c10 != '\t' && c10 != 26 && c10 != '\f' && c10 != '\b' && c10 != ':' && c10 != '/') {
            throw new JSONException("scan false error");
        }
        this.f158a = 7;
    }

    public BigInteger V0(char[] cArr) {
        int i10;
        char cG0;
        boolean z10;
        int length;
        int i11;
        BigInteger bigInteger;
        this.f171n = 0;
        if (!j(cArr)) {
            this.f171n = -2;
            return null;
        }
        int length2 = cArr.length;
        int i12 = length2 + 1;
        char cG1 = G0(this.f162e + length2);
        boolean z11 = cG1 == '\"';
        if (z11) {
            cG1 = G0(this.f162e + i12);
            i12 = length2 + 2;
        }
        boolean z12 = cG1 == '-';
        if (z12) {
            cG1 = G0(this.f162e + i12);
            i12++;
        }
        if (cG1 >= '0') {
            char c10 = '9';
            if (cG1 <= '9') {
                long j10 = cG1 - '0';
                while (true) {
                    i10 = i12 + 1;
                    cG0 = G0(this.f162e + i12);
                    if (cG0 < '0' || cG0 > c10) {
                        z10 = false;
                        break;
                    }
                    long j11 = (10 * j10) + ((long) (cG0 - '0'));
                    if (j11 < j10) {
                        z10 = true;
                        break;
                    }
                    j10 = j11;
                    i12 = i10;
                    c10 = '9';
                }
                if (!z11) {
                    int i13 = this.f162e;
                    length = cArr.length + i13;
                    i11 = ((i13 + i10) - length) - 1;
                } else {
                    if (cG0 != '\"') {
                        this.f171n = -1;
                        return null;
                    }
                    int i14 = i12 + 2;
                    cG0 = G0(this.f162e + i10);
                    int i15 = this.f162e;
                    length = cArr.length + i15 + 1;
                    i11 = ((i15 + i14) - length) - 2;
                    i10 = i14;
                }
                if (!z10 && (i11 < 20 || (z12 && i11 < 21))) {
                    if (z12) {
                        j10 = -j10;
                    }
                    bigInteger = BigInteger.valueOf(j10);
                } else {
                    if (i11 > 65535) {
                        throw new JSONException("scanInteger overflow");
                    }
                    bigInteger = new BigInteger(r1(length, i11), 10);
                }
                if (cG0 == ',') {
                    int i16 = this.f162e + i10;
                    this.f162e = i16;
                    this.f161d = G0(i16);
                    this.f171n = 3;
                    this.f158a = 16;
                    return bigInteger;
                }
                if (cG0 != '}') {
                    this.f171n = -1;
                    return null;
                }
                int i17 = i10 + 1;
                char cG2 = G0(this.f162e + i10);
                if (cG2 == ',') {
                    this.f158a = 16;
                    int i18 = this.f162e + i17;
                    this.f162e = i18;
                    this.f161d = G0(i18);
                } else if (cG2 == ']') {
                    this.f158a = 15;
                    int i19 = this.f162e + i17;
                    this.f162e = i19;
                    this.f161d = G0(i19);
                } else if (cG2 == '}') {
                    this.f158a = 13;
                    int i20 = this.f162e + i17;
                    this.f162e = i20;
                    this.f161d = G0(i20);
                } else {
                    if (cG2 != 26) {
                        this.f171n = -1;
                        return null;
                    }
                    this.f158a = 20;
                    this.f162e += i10;
                    this.f161d = (char) 26;
                }
                this.f171n = 4;
                return bigInteger;
            }
        }
        if (cG1 != 'n' || G0(this.f162e + i12) != 'u' || G0(this.f162e + i12 + 1) != 'l' || G0(this.f162e + i12 + 2) != 'l') {
            this.f171n = -1;
            return null;
        }
        this.f171n = 5;
        int i21 = i12 + 4;
        char cG3 = G0(this.f162e + i12 + 3);
        if (z11 && cG3 == '\"') {
            cG3 = G0(this.f162e + i21);
            i21 = i12 + 5;
        }
        while (cG3 != ',') {
            if (cG3 == '}') {
                int i22 = this.f162e + i21;
                this.f162e = i22;
                this.f161d = G0(i22);
                this.f171n = 5;
                this.f158a = 13;
                return null;
            }
            if (!M0(cG3)) {
                this.f171n = -1;
                return null;
            }
            cG3 = G0(this.f162e + i21);
            i21++;
        }
        int i23 = this.f162e + i21;
        this.f162e = i23;
        this.f161d = G0(i23);
        this.f171n = 5;
        this.f158a = 16;
        return null;
    }

    @Override
    public boolean W() {
        int i10 = 0;
        while (true) {
            char cG0 = G0(i10);
            if (cG0 == 26) {
                this.f158a = 20;
                return true;
            }
            if (!M0(cG0)) {
                return false;
            }
            i10++;
        }
    }

    public abstract boolean W0(char[] cArr);

    /* JADX WARN: Code duplicated, block: B:37:0x00a6  */
    /* JADX WARN: Code duplicated, block: B:39:0x00ac A[LOOP:0: B:34:0x0096->B:39:0x00ac, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:43:0x00b7 A[SYNTHETIC] */
    @Override
    public boolean X(char c10) {
        boolean z10 = false;
        this.f171n = 0;
        char cG0 = G0(this.f162e);
        int i10 = 5;
        if (cG0 != 't') {
            if (cG0 == 'f') {
                if (G0(this.f162e + 1) != 'a' || G0(this.f162e + 2) != 'l' || G0(this.f162e + 3) != 's' || G0(this.f162e + 4) != 'e') {
                    this.f171n = -1;
                    return false;
                }
                cG0 = G0(this.f162e + 5);
                i10 = 6;
            } else if (cG0 == '1') {
                cG0 = G0(this.f162e + 1);
                i10 = 2;
            } else if (cG0 == '0') {
                cG0 = G0(this.f162e + 1);
                i10 = 2;
            } else {
                i10 = 1;
            }
            while (cG0 != c10) {
                if (M0(cG0)) {
                    this.f171n = -1;
                    return z10;
                }
                cG0 = G0(this.f162e + i10);
                i10++;
            }
            int i11 = this.f162e + i10;
            this.f162e = i11;
            this.f161d = G0(i11);
            this.f171n = 3;
            return z10;
        }
        if (G0(this.f162e + 1) != 'r' || G0(this.f162e + 2) != 'u' || G0(this.f162e + 3) != 'e') {
            this.f171n = -1;
            return false;
        }
        cG0 = G0(this.f162e + 4);
        z10 = true;
        while (cG0 != c10) {
            if (M0(cG0)) {
                this.f171n = -1;
                return z10;
            }
            cG0 = G0(this.f162e + i10);
            i10++;
        }
        int i12 = this.f162e + i10;
        this.f162e = i12;
        this.f161d = G0(i12);
        this.f171n = 3;
        return z10;
    }

    public abstract Date X0(char[] cArr);

    public BigDecimal Y0(char[] cArr) {
        int i10;
        char cG0;
        int length;
        int i11;
        this.f171n = 0;
        if (!j(cArr)) {
            this.f171n = -2;
            return null;
        }
        int length2 = cArr.length;
        int i12 = length2 + 1;
        char cG1 = G0(this.f162e + length2);
        boolean z10 = cG1 == '\"';
        if (z10) {
            cG1 = G0(this.f162e + i12);
            i12 = length2 + 2;
        }
        if (cG1 == '-') {
            cG1 = G0(this.f162e + i12);
            i12++;
        }
        if (cG1 < '0' || cG1 > '9') {
            if (cG1 != 'n' || G0(this.f162e + i12) != 'u' || G0(this.f162e + i12 + 1) != 'l' || G0(this.f162e + i12 + 2) != 'l') {
                this.f171n = -1;
                return null;
            }
            this.f171n = 5;
            int i13 = i12 + 4;
            char cG2 = G0(this.f162e + i12 + 3);
            if (z10 && cG2 == '\"') {
                cG2 = G0(this.f162e + i13);
                i13 = i12 + 5;
            }
            while (cG2 != ',') {
                if (cG2 == '}') {
                    int i14 = this.f162e + i13;
                    this.f162e = i14;
                    this.f161d = G0(i14);
                    this.f171n = 5;
                    this.f158a = 13;
                    return null;
                }
                if (!M0(cG2)) {
                    this.f171n = -1;
                    return null;
                }
                cG2 = G0(this.f162e + i13);
                i13++;
            }
            int i15 = this.f162e + i13;
            this.f162e = i15;
            this.f161d = G0(i15);
            this.f171n = 5;
            this.f158a = 16;
            return null;
        }
        while (true) {
            i10 = i12 + 1;
            cG0 = G0(this.f162e + i12);
            if (cG0 < '0' || cG0 > '9') {
                break;
            }
            i12 = i10;
        }
        if (cG0 == '.') {
            int i16 = i12 + 2;
            char cG3 = G0(this.f162e + i10);
            if (cG3 < '0' || cG3 > '9') {
                this.f171n = -1;
                return null;
            }
            while (true) {
                i10 = i16 + 1;
                cG0 = G0(this.f162e + i16);
                if (cG0 < '0' || cG0 > '9') {
                    break;
                }
                i16 = i10;
            }
        }
        if (cG0 == 'e' || cG0 == 'E') {
            int i17 = i10 + 1;
            cG0 = G0(this.f162e + i10);
            if (cG0 == '+' || cG0 == '-') {
                i10 += 2;
                cG0 = G0(this.f162e + i17);
            } else {
                i10 = i17;
            }
            while (cG0 >= '0' && cG0 <= '9') {
                char cG4 = G0(this.f162e + i10);
                i10++;
                cG0 = cG4;
            }
        }
        if (!z10) {
            int i18 = this.f162e;
            length = cArr.length + i18;
            i11 = ((i18 + i10) - length) - 1;
        } else {
            if (cG0 != '\"') {
                this.f171n = -1;
                return null;
            }
            int i19 = i10 + 1;
            char cG5 = G0(this.f162e + i10);
            int i20 = this.f162e;
            length = cArr.length + i20 + 1;
            i11 = ((i20 + i19) - length) - 2;
            i10 = i19;
            cG0 = cG5;
        }
        if (i11 > 65535) {
            throw new JSONException("scan decimal overflow");
        }
        char[] cArrS1 = s1(length, i11);
        BigDecimal bigDecimal = new BigDecimal(cArrS1, 0, cArrS1.length, MathContext.UNLIMITED);
        if (cG0 == ',') {
            int i21 = this.f162e + i10;
            this.f162e = i21;
            this.f161d = G0(i21);
            this.f171n = 3;
            this.f158a = 16;
            return bigDecimal;
        }
        if (cG0 != '}') {
            this.f171n = -1;
            return null;
        }
        int i22 = i10 + 1;
        char cG6 = G0(this.f162e + i10);
        if (cG6 == ',') {
            this.f158a = 16;
            int i23 = this.f162e + i22;
            this.f162e = i23;
            this.f161d = G0(i23);
        } else if (cG6 == ']') {
            this.f158a = 15;
            int i24 = this.f162e + i22;
            this.f162e = i24;
            this.f161d = G0(i24);
        } else if (cG6 == '}') {
            this.f158a = 13;
            int i25 = this.f162e + i22;
            this.f162e = i25;
            this.f161d = G0(i25);
        } else {
            if (cG6 != 26) {
                this.f171n = -1;
                return null;
            }
            this.f158a = 20;
            this.f162e += i10;
            this.f161d = (char) 26;
        }
        this.f171n = 4;
        return bigDecimal;
    }

    public final double Z0(char[] cArr) {
        int i10;
        char cG0;
        long j10;
        int length;
        int i11;
        double d10;
        this.f171n = 0;
        if (!j(cArr)) {
            this.f171n = -2;
            return 0.0d;
        }
        int length2 = cArr.length;
        int i12 = length2 + 1;
        char cG1 = G0(this.f162e + length2);
        boolean z10 = cG1 == '\"';
        if (z10) {
            cG1 = G0(this.f162e + i12);
            i12 = length2 + 2;
        }
        boolean z11 = cG1 == '-';
        if (z11) {
            cG1 = G0(this.f162e + i12);
            i12++;
        }
        if (cG1 < '0' || cG1 > '9') {
            if (cG1 != 'n' || G0(this.f162e + i12) != 'u' || G0(this.f162e + i12 + 1) != 'l' || G0(this.f162e + i12 + 2) != 'l') {
                this.f171n = -1;
                return 0.0d;
            }
            this.f171n = 5;
            int i13 = i12 + 4;
            char cG2 = G0(this.f162e + i12 + 3);
            if (z10 && cG2 == '\"') {
                cG2 = G0(this.f162e + i13);
                i13 = i12 + 5;
            }
            while (cG2 != ',') {
                if (cG2 == '}') {
                    int i14 = this.f162e + i13;
                    this.f162e = i14;
                    this.f161d = G0(i14);
                    this.f171n = 5;
                    this.f158a = 13;
                    return 0.0d;
                }
                if (!M0(cG2)) {
                    this.f171n = -1;
                    return 0.0d;
                }
                cG2 = G0(this.f162e + i13);
                i13++;
            }
            int i15 = this.f162e + i13;
            this.f162e = i15;
            this.f161d = G0(i15);
            this.f171n = 5;
            this.f158a = 16;
            return 0.0d;
        }
        long j11 = cG1 - '0';
        while (true) {
            i10 = i12 + 1;
            cG0 = G0(this.f162e + i12);
            if (cG0 < '0' || cG0 > '9') {
                break;
            }
            j11 = (j11 * 10) + ((long) (cG0 - '0'));
            i12 = i10;
        }
        if (cG0 == '.') {
            int i16 = i12 + 2;
            char cG3 = G0(this.f162e + i10);
            if (cG3 < '0' || cG3 > '9') {
                this.f171n = -1;
                return 0.0d;
            }
            j11 = (j11 * 10) + ((long) (cG3 - '0'));
            j10 = 10;
            while (true) {
                i10 = i16 + 1;
                cG0 = G0(this.f162e + i16);
                if (cG0 < '0' || cG0 > '9') {
                    break;
                }
                j11 = (j11 * 10) + ((long) (cG0 - '0'));
                j10 *= 10;
                i16 = i10;
            }
        } else {
            j10 = 1;
        }
        boolean z12 = cG0 == 'e' || cG0 == 'E';
        if (z12) {
            int i17 = i10 + 1;
            cG0 = G0(this.f162e + i10);
            if (cG0 == '+' || cG0 == '-') {
                i10 += 2;
                cG0 = G0(this.f162e + i17);
            } else {
                i10 = i17;
            }
            while (cG0 >= '0' && cG0 <= '9') {
                cG0 = G0(this.f162e + i10);
                i10++;
            }
        }
        if (!z10) {
            int i18 = this.f162e;
            length = cArr.length + i18;
            i11 = ((i18 + i10) - length) - 1;
        } else {
            if (cG0 != '\"') {
                this.f171n = -1;
                return 0.0d;
            }
            int i19 = i10 + 1;
            cG0 = G0(this.f162e + i10);
            int i20 = this.f162e;
            length = cArr.length + i20 + 1;
            i11 = ((i20 + i19) - length) - 2;
            i10 = i19;
        }
        if (z12 || i11 >= 17) {
            d10 = Double.parseDouble(r1(length, i11));
        } else {
            d10 = j11 / j10;
            if (z11) {
                d10 = -d10;
            }
        }
        if (cG0 == ',') {
            int i21 = this.f162e + i10;
            this.f162e = i21;
            this.f161d = G0(i21);
            this.f171n = 3;
            this.f158a = 16;
            return d10;
        }
        if (cG0 != '}') {
            this.f171n = -1;
            return 0.0d;
        }
        int i22 = i10 + 1;
        char cG4 = G0(this.f162e + i10);
        if (cG4 == ',') {
            this.f158a = 16;
            int i23 = this.f162e + i22;
            this.f162e = i23;
            this.f161d = G0(i23);
        } else if (cG4 == ']') {
            this.f158a = 15;
            int i24 = this.f162e + i22;
            this.f162e = i24;
            this.f161d = G0(i24);
        } else if (cG4 == '}') {
            this.f158a = 13;
            int i25 = this.f162e + i22;
            this.f162e = i25;
            this.f161d = G0(i25);
        } else {
            if (cG4 != 26) {
                this.f171n = -1;
                return 0.0d;
            }
            this.f158a = 20;
            this.f162e += i10;
            this.f161d = (char) 26;
        }
        this.f171n = 4;
        return d10;
    }

    public final float a1(char[] cArr) {
        int i10;
        char cG0;
        long j10;
        int length;
        int i11;
        float f10;
        this.f171n = 0;
        if (!j(cArr)) {
            this.f171n = -2;
            return 0.0f;
        }
        int length2 = cArr.length;
        int i12 = length2 + 1;
        char cG1 = G0(this.f162e + length2);
        boolean z10 = cG1 == '\"';
        if (z10) {
            cG1 = G0(this.f162e + i12);
            i12 = length2 + 2;
        }
        boolean z11 = cG1 == '-';
        if (z11) {
            cG1 = G0(this.f162e + i12);
            i12++;
        }
        if (cG1 < '0' || cG1 > '9') {
            if (cG1 != 'n' || G0(this.f162e + i12) != 'u' || G0(this.f162e + i12 + 1) != 'l' || G0(this.f162e + i12 + 2) != 'l') {
                this.f171n = -1;
                return 0.0f;
            }
            this.f171n = 5;
            int i13 = i12 + 4;
            char cG2 = G0(this.f162e + i12 + 3);
            if (z10 && cG2 == '\"') {
                cG2 = G0(this.f162e + i13);
                i13 = i12 + 5;
            }
            while (cG2 != ',') {
                if (cG2 == '}') {
                    int i14 = this.f162e + i13;
                    this.f162e = i14;
                    this.f161d = G0(i14);
                    this.f171n = 5;
                    this.f158a = 13;
                    return 0.0f;
                }
                if (!M0(cG2)) {
                    this.f171n = -1;
                    return 0.0f;
                }
                cG2 = G0(this.f162e + i13);
                i13++;
            }
            int i15 = this.f162e + i13;
            this.f162e = i15;
            this.f161d = G0(i15);
            this.f171n = 5;
            this.f158a = 16;
            return 0.0f;
        }
        long j11 = cG1 - '0';
        while (true) {
            i10 = i12 + 1;
            cG0 = G0(this.f162e + i12);
            if (cG0 < '0' || cG0 > '9') {
                break;
            }
            j11 = (j11 * 10) + ((long) (cG0 - '0'));
            i12 = i10;
        }
        if (cG0 == '.') {
            int i16 = i12 + 2;
            char cG3 = G0(this.f162e + i10);
            if (cG3 < '0' || cG3 > '9') {
                this.f171n = -1;
                return 0.0f;
            }
            j11 = (j11 * 10) + ((long) (cG3 - '0'));
            j10 = 10;
            while (true) {
                i10 = i16 + 1;
                cG0 = G0(this.f162e + i16);
                if (cG0 < '0' || cG0 > '9') {
                    break;
                }
                j11 = (j11 * 10) + ((long) (cG0 - '0'));
                j10 *= 10;
                i16 = i10;
            }
        } else {
            j10 = 1;
        }
        boolean z12 = cG0 == 'e' || cG0 == 'E';
        if (z12) {
            int i17 = i10 + 1;
            cG0 = G0(this.f162e + i10);
            if (cG0 == '+' || cG0 == '-') {
                i10 += 2;
                cG0 = G0(this.f162e + i17);
            } else {
                i10 = i17;
            }
            while (cG0 >= '0' && cG0 <= '9') {
                char cG4 = G0(this.f162e + i10);
                i10++;
                cG0 = cG4;
            }
        }
        if (!z10) {
            int i18 = this.f162e;
            length = cArr.length + i18;
            i11 = ((i18 + i10) - length) - 1;
        } else {
            if (cG0 != '\"') {
                this.f171n = -1;
                return 0.0f;
            }
            int i19 = i10 + 1;
            cG0 = G0(this.f162e + i10);
            int i20 = this.f162e;
            length = cArr.length + i20 + 1;
            i11 = ((i20 + i19) - length) - 2;
            i10 = i19;
        }
        if (z12 || i11 >= 17) {
            f10 = Float.parseFloat(r1(length, i11));
        } else {
            f10 = (float) (j11 / j10);
            if (z11) {
                f10 = -f10;
            }
        }
        if (cG0 == ',') {
            int i21 = this.f162e + i10;
            this.f162e = i21;
            this.f161d = G0(i21);
            this.f171n = 3;
            this.f158a = 16;
            return f10;
        }
        if (cG0 != '}') {
            this.f171n = -1;
            return 0.0f;
        }
        int i22 = i10 + 1;
        char cG5 = G0(this.f162e + i10);
        if (cG5 == ',') {
            this.f158a = 16;
            int i23 = this.f162e + i22;
            this.f162e = i23;
            this.f161d = G0(i23);
        } else if (cG5 == ']') {
            this.f158a = 15;
            int i24 = this.f162e + i22;
            this.f162e = i24;
            this.f161d = G0(i24);
        } else if (cG5 == '}') {
            this.f158a = 13;
            int i25 = this.f162e + i22;
            this.f162e = i25;
            this.f161d = G0(i25);
        } else {
            if (cG5 != 26) {
                this.f171n = -1;
                return 0.0f;
            }
            this.f162e += i10;
            this.f158a = 20;
            this.f161d = (char) 26;
        }
        this.f171n = 4;
        return f10;
    }

    public abstract String b(int i10, int i11, int i12, i iVar);

    public final float[] b1(char[] cArr) {
        int i10;
        char cG0;
        int i11;
        float f10;
        float[] fArr;
        char c10;
        boolean z10;
        boolean z11 = false;
        this.f171n = 0;
        float[] fArr2 = null;
        if (!j(cArr)) {
            this.f171n = -2;
            return null;
        }
        int length = cArr.length;
        int i12 = length + 1;
        if (G0(this.f162e + length) != '[') {
            this.f171n = -2;
            return null;
        }
        int i13 = length + 2;
        char cG1 = G0(this.f162e + i12);
        float[] fArr3 = new float[16];
        int i14 = 0;
        while (true) {
            int i15 = this.f162e;
            int i16 = (i15 + i13) - 1;
            boolean z12 = cG1 == '-' ? true : z11;
            if (z12) {
                cG1 = G0(i15 + i13);
                i13++;
            }
            if (cG1 < '0' || cG1 > '9') {
                break;
            }
            int i17 = cG1 - '0';
            while (true) {
                i10 = i13 + 1;
                cG0 = G0(this.f162e + i13);
                if (cG0 < '0' || cG0 > '9') {
                    break;
                }
                i17 = (i17 * 10) + (cG0 - '0');
                i13 = i10;
            }
            if (cG0 == '.') {
                int i18 = i13 + 2;
                char cG2 = G0(this.f162e + i10);
                if (cG2 < '0' || cG2 > '9') {
                    this.f171n = -1;
                    return fArr2;
                }
                i17 = (i17 * 10) + (cG2 - '0');
                i11 = 10;
                while (true) {
                    i10 = i18 + 1;
                    cG0 = G0(this.f162e + i18);
                    if (cG0 < '0' || cG0 > '9') {
                        break;
                    }
                    i17 = (i17 * 10) + (cG0 - '0');
                    i11 *= 10;
                    i18 = i10;
                }
            } else {
                i11 = 1;
            }
            boolean z13 = cG0 == 'e' || cG0 == 'E';
            if (z13) {
                int i19 = i10 + 1;
                cG0 = G0(this.f162e + i10);
                if (cG0 == '+' || cG0 == '-') {
                    i10 += 2;
                    cG0 = G0(this.f162e + i19);
                } else {
                    i10 = i19;
                }
                while (cG0 >= '0' && cG0 <= '9') {
                    cG0 = G0(this.f162e + i10);
                    i10++;
                }
            }
            int i20 = ((this.f162e + i10) - i16) - 1;
            if (z13 || i20 >= 10) {
                f10 = Float.parseFloat(r1(i16, i20));
            } else {
                f10 = i17 / i11;
                if (z12) {
                    f10 = -f10;
                }
            }
            if (i14 >= fArr3.length) {
                float[] fArr4 = new float[(fArr3.length * 3) / 2];
                System.arraycopy(fArr3, 0, fArr4, 0, i14);
                fArr3 = fArr4;
            }
            int i21 = i14 + 1;
            fArr3[i14] = f10;
            if (cG0 == ',') {
                i13 = i10 + 1;
                cG0 = G0(this.f162e + i10);
                fArr = null;
                c10 = 16;
                z10 = false;
            } else {
                if (cG0 == ']') {
                    int i22 = i10 + 1;
                    char cG3 = G0(this.f162e + i10);
                    if (i21 != fArr3.length) {
                        float[] fArr5 = new float[i21];
                        System.arraycopy(fArr3, 0, fArr5, 0, i21);
                        fArr3 = fArr5;
                    }
                    if (cG3 == ',') {
                        this.f162e += i10;
                        next();
                        this.f171n = 3;
                        this.f158a = 16;
                        return fArr3;
                    }
                    if (cG3 != '}') {
                        this.f171n = -1;
                        return null;
                    }
                    char cG4 = G0(this.f162e + i22);
                    if (cG4 == ',') {
                        this.f158a = 16;
                        this.f162e += i10 + 1;
                        next();
                    } else if (cG4 == ']') {
                        this.f158a = 15;
                        this.f162e += i10 + 1;
                        next();
                    } else if (cG4 == '}') {
                        this.f158a = 13;
                        this.f162e += i10 + 1;
                        next();
                    } else {
                        if (cG4 != 26) {
                            this.f171n = -1;
                            return null;
                        }
                        this.f162e += i10 + 1;
                        this.f158a = 20;
                        this.f161d = (char) 26;
                    }
                    this.f171n = 4;
                    return fArr3;
                }
                fArr = null;
                c10 = 16;
                z10 = false;
                i13 = i10;
            }
            i14 = i21;
            cG1 = cG0;
            fArr2 = fArr;
            z11 = z10;
        }
        float[] fArr6 = fArr2;
        this.f171n = -1;
        return fArr6;
    }

    public final float[][] c1(char[] cArr) {
        int i10;
        char cG0;
        int i11;
        int i12;
        float f10;
        int i13;
        int i14;
        char cG1;
        int i15 = 0;
        this.f171n = 0;
        float[][] fArr = null;
        if (!j(cArr)) {
            this.f171n = -2;
            return null;
        }
        int length = cArr.length;
        int i16 = length + 1;
        char c10 = '[';
        if (G0(this.f162e + length) != '[') {
            this.f171n = -2;
            return null;
        }
        int i17 = length + 2;
        char cG2 = G0(this.f162e + i16);
        int i18 = 16;
        float[][] fArr2 = new float[16][];
        int i19 = 0;
        while (true) {
            int i20 = 1;
            if (cG2 != c10) {
                break;
            }
            int i21 = i17 + 1;
            char cG3 = G0(this.f162e + i17);
            float[] fArr3 = new float[i18];
            int i22 = i15;
            while (true) {
                int i23 = this.f162e;
                int i24 = (i23 + i21) - 1;
                int i25 = cG3 == '-' ? i20 : i15;
                if (i25 != 0) {
                    char cG4 = G0(i23 + i21);
                    i21++;
                    cG3 = cG4;
                }
                if (cG3 < '0' || cG3 > '9') {
                    this.f171n = -1;
                    return null;
                }
                int i26 = cG3 - '0';
                while (true) {
                    i10 = i21 + 1;
                    cG0 = G0(this.f162e + i21);
                    if (cG0 < '0' || cG0 > '9') {
                        break;
                    }
                    i26 = (i26 * 10) + (cG0 - '0');
                    i21 = i10;
                }
                if (cG0 == '.') {
                    int i27 = i21 + 2;
                    char cG5 = G0(this.f162e + i10);
                    if (cG5 < '0' || cG5 > '9') {
                        this.f171n = -1;
                        return fArr;
                    }
                    int i28 = (i26 * 10) + (cG5 - '0');
                    int i29 = 10;
                    while (true) {
                        i10 = i27 + 1;
                        cG1 = G0(this.f162e + i27);
                        if (cG1 < '0' || cG1 > '9') {
                            break;
                        }
                        i28 = (i28 * 10) + (cG1 - '0');
                        i29 *= 10;
                        i27 = i10;
                    }
                    int i30 = i28;
                    i12 = i29;
                    cG0 = cG1;
                    i11 = i30;
                } else {
                    i11 = i26;
                    i12 = 1;
                }
                boolean z10 = cG0 == 'e' || cG0 == 'E';
                if (z10) {
                    int i31 = i10 + 1;
                    cG0 = G0(this.f162e + i10);
                    if (cG0 == '+' || cG0 == '-') {
                        i10 += 2;
                        cG0 = G0(this.f162e + i31);
                    } else {
                        i10 = i31;
                    }
                    while (cG0 >= '0' && cG0 <= '9') {
                        cG0 = G0(this.f162e + i10);
                        i10++;
                    }
                }
                int i32 = ((this.f162e + i10) - i24) - 1;
                if (z10 || i32 >= 10) {
                    f10 = Float.parseFloat(r1(i24, i32));
                } else {
                    f10 = i11 / i12;
                    if (i25 != 0) {
                        f10 = -f10;
                    }
                }
                if (i22 >= fArr3.length) {
                    float[] fArr4 = new float[(fArr3.length * 3) / 2];
                    System.arraycopy(fArr3, 0, fArr4, 0, i22);
                    fArr3 = fArr4;
                }
                i13 = i22 + 1;
                fArr3[i22] = f10;
                if (cG0 == ',') {
                    cG0 = G0(this.f162e + i10);
                    i21 = i10 + 1;
                } else {
                    if (cG0 == ']') {
                        break;
                    }
                    i21 = i10;
                }
                i22 = i13;
                fArr = null;
                i20 = 1;
                cG3 = cG0;
                i15 = 0;
            }
            int i33 = i10 + 1;
            char cG6 = G0(this.f162e + i10);
            if (i13 != fArr3.length) {
                float[] fArr5 = new float[i13];
                i14 = 0;
                System.arraycopy(fArr3, 0, fArr5, 0, i13);
                fArr3 = fArr5;
            } else {
                i14 = 0;
            }
            if (i19 >= fArr2.length) {
                float[][] fArr6 = new float[(fArr2.length * 3) / 2][];
                System.arraycopy(fArr3, i14, fArr6, i14, i13);
                fArr2 = fArr6;
            }
            int i34 = i19 + 1;
            fArr2[i19] = fArr3;
            if (cG6 == ',') {
                cG2 = G0(this.f162e + i33);
                i17 = i10 + 2;
            } else {
                if (cG6 == ']') {
                    i17 = i10 + 2;
                    cG2 = G0(this.f162e + i33);
                    i19 = i34;
                    break;
                }
                cG2 = cG6;
                i17 = i33;
            }
            i19 = i34;
            i15 = 0;
            fArr = null;
            i18 = 16;
            c10 = '[';
        }
        if (i19 != fArr2.length) {
            float[][] fArr7 = new float[i19][];
            System.arraycopy(fArr2, 0, fArr7, 0, i19);
            fArr2 = fArr7;
        }
        if (cG2 == ',') {
            this.f162e += i17 - 1;
            next();
            this.f171n = 3;
            this.f158a = 16;
            return fArr2;
        }
        if (cG2 != '}') {
            this.f171n = -1;
            return null;
        }
        char cG7 = G0(this.f162e + i17);
        if (cG7 == ',') {
            this.f158a = 16;
            this.f162e += i17;
            next();
        } else if (cG7 == ']') {
            this.f158a = 15;
            this.f162e += i17;
            next();
        } else if (cG7 == '}') {
            this.f158a = 13;
            this.f162e += i17;
            next();
        } else {
            if (cG7 != 26) {
                this.f171n = -1;
                return null;
            }
            this.f162e += i17;
            this.f158a = 20;
            this.f161d = (char) 26;
        }
        this.f171n = 4;
        return fArr2;
    }

    @Override
    public void close() {
        char[] cArr = this.f164g;
        if (cArr.length <= 8192) {
            f155q.set(cArr);
        }
        this.f164g = null;
    }

    @Override
    public final char d() {
        return this.f161d;
    }

    @Override
    public final void d0() {
        this.f165h = 0;
        while (true) {
            this.f159b = this.f162e;
            char c10 = this.f161d;
            if (c10 == '/') {
                p1();
            } else {
                if (c10 == '\"') {
                    e0();
                    return;
                }
                if (c10 == ',') {
                    next();
                    this.f158a = 16;
                    return;
                }
                if (c10 >= '0' && c10 <= '9') {
                    q();
                    return;
                }
                if (c10 == '-') {
                    q();
                    return;
                }
                switch (c10) {
                    case '\b':
                    case '\t':
                    case '\n':
                    case '\f':
                    case '\r':
                    case ' ':
                        next();
                        break;
                    case '\'':
                        if (!o(Feature.AllowSingleQuotes)) {
                            throw new JSONException("Feature.AllowSingleQuotes is false");
                        }
                        l1();
                        return;
                    case '(':
                        next();
                        this.f158a = 10;
                        return;
                    case ')':
                        next();
                        this.f158a = 11;
                        return;
                    case '+':
                        next();
                        q();
                        return;
                    case '.':
                        next();
                        this.f158a = 25;
                        return;
                    case INIT_TO_FAIL_CALLBACK_DURATION_MS_VALUE:
                        next();
                        this.f158a = 17;
                        return;
                    case ';':
                        next();
                        this.f158a = 24;
                        return;
                    case 'N':
                    case TmcConstants.NOTIFY_ADDHOME_GUIDE_BACK_SHOW:
                    case 'T':
                    case ASSET_FAILED_STATUS_CODE_VALUE:
                        i1();
                        return;
                    case '[':
                        next();
                        this.f158a = 14;
                        return;
                    case ']':
                        next();
                        this.f158a = 15;
                        return;
                    case 'f':
                        U0();
                        return;
                    case 'n':
                        j1();
                        return;
                    case GZIP_ENCODE_ERROR_VALUE:
                        n1();
                        return;
                    case 'x':
                        h1();
                        return;
                    case INVALID_RI_ENDPOINT_VALUE:
                        next();
                        this.f158a = 12;
                        return;
                    case INVALID_METRICS_ENDPOINT_VALUE:
                        next();
                        this.f158a = 13;
                        return;
                    default:
                        if (L0()) {
                            if (this.f158a == 20) {
                                throw new JSONException("EOF error");
                            }
                            this.f158a = 20;
                            int i10 = this.f162e;
                            this.f159b = i10;
                            this.f163f = i10;
                            return;
                        }
                        char c11 = this.f161d;
                        if (c11 > 31 && c11 != 127) {
                            N0("illegal.char", String.valueOf((int) c11));
                            next();
                            return;
                        }
                        next();
                        break;
                        break;
                }
            }
        }
    }

    public abstract int d1(char[] cArr);

    @Override
    public final void e0() {
        this.f166i = this.f162e;
        this.f167j = false;
        while (true) {
            char next = next();
            if (next == '\"') {
                this.f158a = 4;
                this.f161d = next();
                return;
            }
            if (next == 26) {
                if (L0()) {
                    throw new JSONException("unclosed string : " + next);
                }
                R0((char) 26);
            } else if (next == '\\') {
                if (!this.f167j) {
                    this.f167j = true;
                    int i10 = this.f165h;
                    char[] cArr = this.f164g;
                    if (i10 >= cArr.length) {
                        int length = cArr.length * 2;
                        if (i10 <= length) {
                            i10 = length;
                        }
                        char[] cArr2 = new char[i10];
                        System.arraycopy(cArr, 0, cArr2, 0, cArr.length);
                        this.f164g = cArr2;
                    }
                    H0(this.f166i + 1, this.f165h, this.f164g);
                }
                char next2 = next();
                if (next2 == '\"') {
                    R0('\"');
                } else if (next2 != '\'') {
                    if (next2 != 'F') {
                        if (next2 == '\\') {
                            R0('\\');
                        } else if (next2 == 'b') {
                            R0('\b');
                        } else if (next2 != 'f') {
                            if (next2 == 'n') {
                                R0('\n');
                            } else if (next2 == 'r') {
                                R0('\r');
                            } else if (next2 != 'x') {
                                switch (next2) {
                                    case '/':
                                        R0('/');
                                        break;
                                    case AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE:
                                        R0((char) 0);
                                        break;
                                    case AD_VALIDATION_TO_PRESENT_DURATION_MS_VALUE:
                                        R0((char) 1);
                                        break;
                                    case '2':
                                        R0((char) 2);
                                        break;
                                    case AD_REWARD_USER_VALUE:
                                        R0((char) 3);
                                        break;
                                    case AD_REQUIRED_DOWNLOAD_DURATION_MS_VALUE:
                                        R0((char) 4);
                                        break;
                                    case AD_OPTIONAL_DOWNLOAD_DURATION_MS_VALUE:
                                        R0((char) 5);
                                        break;
                                    case AD_BACKGROUND_BEFORE_IMPRESSION_VALUE:
                                        R0((char) 6);
                                        break;
                                    case AD_CLOSED_BEFORE_IMPRESSION_VALUE:
                                        R0((char) 7);
                                        break;
                                    default:
                                        switch (next2) {
                                            case GZIP_ENCODE_ERROR_VALUE:
                                                R0('\t');
                                                break;
                                            case ASSET_FAILED_STATUS_CODE_VALUE:
                                                R0((char) Integer.parseInt(new String(new char[]{next(), next(), next(), next()}), 16));
                                                break;
                                            case PROTOBUF_SERIALIZATION_ERROR_VALUE:
                                                R0((char) 11);
                                                break;
                                            default:
                                                this.f161d = next2;
                                                throw new JSONException("unclosed string : " + next2);
                                        }
                                        break;
                                }
                            } else {
                                char next3 = next();
                                char next4 = next();
                                boolean z10 = (next3 >= '0' && next3 <= '9') || (next3 >= 'a' && next3 <= 'f') || (next3 >= 'A' && next3 <= 'F');
                                boolean z11 = (next4 >= '0' && next4 <= '9') || (next4 >= 'a' && next4 <= 'f') || (next4 >= 'A' && next4 <= 'F');
                                if (!z10 || !z11) {
                                    throw new JSONException("invalid escape character \\x" + next3 + next4);
                                }
                                int[] iArr = f157s;
                                R0((char) ((iArr[next3] * 16) + iArr[next4]));
                            }
                        }
                    }
                    R0('\f');
                } else {
                    R0('\'');
                }
            } else if (this.f167j) {
                int i11 = this.f165h;
                char[] cArr3 = this.f164g;
                if (i11 == cArr3.length) {
                    R0(next);
                } else {
                    this.f165h = i11 + 1;
                    cArr3[i11] = next;
                }
            } else {
                this.f165h++;
            }
        }
    }

    public final int[] e1(char[] cArr) {
        boolean z10;
        int i10;
        char cG0;
        int i11;
        char cG1;
        int i12;
        int[] iArr;
        this.f171n = 0;
        int[] iArr2 = null;
        if (!j(cArr)) {
            this.f171n = -2;
            return null;
        }
        int length = cArr.length;
        int i13 = length + 1;
        if (G0(this.f162e + length) != '[') {
            this.f171n = -2;
            return null;
        }
        int i14 = length + 2;
        char cG2 = G0(this.f162e + i13);
        int[] iArr3 = new int[16];
        if (cG2 == ']') {
            i12 = length + 3;
            cG1 = G0(this.f162e + i14);
            i11 = 0;
        } else {
            int i15 = 0;
            while (true) {
                if (cG2 == '-') {
                    cG2 = G0(this.f162e + i14);
                    i14++;
                    z10 = true;
                } else {
                    z10 = false;
                }
                if (cG2 < '0' || cG2 > '9') {
                    int[] iArr4 = iArr2;
                    this.f171n = -1;
                    return iArr4;
                }
                int i16 = cG2 - '0';
                while (true) {
                    i10 = i14 + 1;
                    cG0 = G0(this.f162e + i14);
                    if (cG0 < '0' || cG0 > '9') {
                        break;
                    }
                    i16 = (i16 * 10) + (cG0 - '0');
                    i14 = i10;
                }
                if (i15 >= iArr3.length) {
                    int[] iArr5 = new int[(iArr3.length * 3) / 2];
                    System.arraycopy(iArr3, 0, iArr5, 0, i15);
                    iArr3 = iArr5;
                }
                i11 = i15 + 1;
                if (z10) {
                    i16 = -i16;
                }
                iArr3[i15] = i16;
                if (cG0 == ',') {
                    i14 += 2;
                    cG2 = G0(this.f162e + i10);
                    iArr = null;
                } else {
                    if (cG0 == ']') {
                        cG1 = G0(this.f162e + i10);
                        i12 = i14 + 2;
                        break;
                    }
                    iArr = null;
                    cG2 = cG0;
                    i14 = i10;
                }
                iArr2 = iArr;
                i15 = i11;
            }
        }
        if (i11 != iArr3.length) {
            int[] iArr6 = new int[i11];
            System.arraycopy(iArr3, 0, iArr6, 0, i11);
            iArr3 = iArr6;
        }
        if (cG1 == ',') {
            this.f162e += i12 - 1;
            next();
            this.f171n = 3;
            this.f158a = 16;
            return iArr3;
        }
        if (cG1 != '}') {
            this.f171n = -1;
            return null;
        }
        char cG3 = G0(this.f162e + i12);
        if (cG3 == ',') {
            this.f158a = 16;
            this.f162e += i12;
            next();
        } else if (cG3 == ']') {
            this.f158a = 15;
            this.f162e += i12;
            next();
        } else if (cG3 == '}') {
            this.f158a = 13;
            this.f162e += i12;
            next();
        } else {
            if (cG3 != 26) {
                this.f171n = -1;
                return null;
            }
            this.f162e += i12;
            this.f158a = 20;
            this.f161d = (char) 26;
        }
        this.f171n = 4;
        return iArr3;
    }

    protected abstract void f(int i10, char[] cArr, int i11, int i12);

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:108:0x007b A[SYNTHETIC] */
    @Override
    public final void f0(int i10) {
        this.f165h = 0;
        while (true) {
            if (i10 == 2) {
                char c10 = this.f161d;
                if (c10 >= '0' && c10 <= '9') {
                    this.f159b = this.f162e;
                    q();
                    return;
                }
                if (c10 == '\"') {
                    this.f159b = this.f162e;
                    e0();
                    return;
                } else if (c10 == '[') {
                    this.f158a = 14;
                    next();
                    return;
                } else if (c10 == '{') {
                    this.f158a = 12;
                    next();
                    return;
                }
            } else if (i10 == 4) {
                char c11 = this.f161d;
                if (c11 == '\"') {
                    this.f159b = this.f162e;
                    e0();
                    return;
                }
                if (c11 >= '0' && c11 <= '9') {
                    this.f159b = this.f162e;
                    q();
                    return;
                } else if (c11 == '[') {
                    this.f158a = 14;
                    next();
                    return;
                } else if (c11 == '{') {
                    this.f158a = 12;
                    next();
                    return;
                }
            } else if (i10 == 12) {
                char c12 = this.f161d;
                if (c12 == '{') {
                    this.f158a = 12;
                    next();
                    return;
                } else if (c12 == '[') {
                    this.f158a = 14;
                    next();
                    return;
                }
            } else {
                if (i10 == 18) {
                    P0();
                    return;
                }
                if (i10 != 20) {
                    switch (i10) {
                        case 14:
                            char c13 = this.f161d;
                            if (c13 == '[') {
                                this.f158a = 14;
                                next();
                            } else if (c13 == '{') {
                                this.f158a = 12;
                                next();
                            }
                            break;
                        case 15:
                            if (this.f161d == ']') {
                                this.f158a = 15;
                                next();
                            }
                            if (this.f161d == 26) {
                                this.f158a = 20;
                            }
                            break;
                        case 16:
                            char c14 = this.f161d;
                            if (c14 == ',') {
                                this.f158a = 16;
                                next();
                            } else if (c14 == '}') {
                                this.f158a = 13;
                                next();
                            } else if (c14 == ']') {
                                this.f158a = 15;
                                next();
                            } else if (c14 == 26) {
                                this.f158a = 20;
                            } else if (c14 == 'n') {
                                k1(false);
                            }
                            break;
                    }
                    return;
                }
                if (this.f161d == 26) {
                    this.f158a = 20;
                    return;
                }
            }
            char c15 = this.f161d;
            if (c15 != ' ' && c15 != '\n' && c15 != '\r' && c15 != '\t' && c15 != '\f' && c15 != '\b') {
                d0();
                return;
            }
            next();
        }
    }

    public abstract long f1(char[] cArr);

    @Override
    public abstract BigDecimal g0();

    public abstract String g1(char[] cArr);

    @Override
    public final int h() {
        return this.f159b;
    }

    @Override
    public final String h0(i iVar) {
        x0();
        char c10 = this.f161d;
        if (c10 == '\"') {
            return w(iVar, '\"');
        }
        if (c10 == '\'') {
            if (o(Feature.AllowSingleQuotes)) {
                return w(iVar, '\'');
            }
            throw new JSONException("syntax error");
        }
        if (c10 == '}') {
            next();
            this.f158a = 13;
            return null;
        }
        if (c10 == ',') {
            next();
            this.f158a = 16;
            return null;
        }
        if (c10 == 26) {
            this.f158a = 20;
            return null;
        }
        if (o(Feature.AllowUnQuotedFieldNames)) {
            return T(iVar);
        }
        throw new JSONException("syntax error");
    }

    public final void h1() {
        char next;
        if (this.f161d != 'x') {
            throw new JSONException("illegal state. " + this.f161d);
        }
        next();
        if (this.f161d != '\'') {
            throw new JSONException("illegal state. " + this.f161d);
        }
        this.f166i = this.f162e;
        next();
        if (this.f161d == '\'') {
            next();
            this.f158a = 26;
            return;
        }
        while (true) {
            next = next();
            if ((next < '0' || next > '9') && (next < 'A' || next > 'F')) {
                break;
            } else {
                this.f165h++;
            }
        }
        if (next == '\'') {
            this.f165h++;
            next();
            this.f158a = 26;
        } else {
            throw new JSONException("illegal state. " + next);
        }
    }

    public final void i1() {
        this.f166i = this.f162e - 1;
        this.f167j = false;
        do {
            this.f165h++;
            next();
        } while (Character.isLetterOrDigit(this.f161d));
        String strO0 = o0();
        if ("null".equalsIgnoreCase(strO0)) {
            this.f158a = 8;
            return;
        }
        if ("new".equals(strO0)) {
            this.f158a = 9;
            return;
        }
        if ("true".equals(strO0)) {
            this.f158a = 6;
            return;
        }
        if ("false".equals(strO0)) {
            this.f158a = 7;
            return;
        }
        if ("undefined".equals(strO0)) {
            this.f158a = 23;
            return;
        }
        if ("Set".equals(strO0)) {
            this.f158a = 21;
        } else if ("TreeSet".equals(strO0)) {
            this.f158a = 22;
        } else {
            this.f158a = 18;
        }
    }

    @Override
    public final boolean isEnabled(int i10) {
        return (i10 & this.f160c) != 0;
    }

    protected abstract boolean j(char[] cArr);

    public final void j1() {
        k1(true);
    }

    @Override
    public abstract String k();

    public final void k1(boolean z10) {
        if (this.f161d != 'n') {
            throw new JSONException("error parse null or new");
        }
        next();
        char c10 = this.f161d;
        if (c10 != 'u') {
            if (c10 != 'e') {
                throw new JSONException("error parse new");
            }
            next();
            if (this.f161d != 'w') {
                throw new JSONException("error parse new");
            }
            next();
            char c11 = this.f161d;
            if (c11 != ' ' && c11 != ',' && c11 != '}' && c11 != ']' && c11 != '\n' && c11 != '\r' && c11 != '\t' && c11 != 26 && c11 != '\f' && c11 != '\b') {
                throw new JSONException("scan new error");
            }
            this.f158a = 9;
            return;
        }
        next();
        if (this.f161d != 'l') {
            throw new JSONException("error parse null");
        }
        next();
        if (this.f161d != 'l') {
            throw new JSONException("error parse null");
        }
        next();
        char c12 = this.f161d;
        if (c12 != ' ' && c12 != ',' && c12 != '}' && c12 != ']' && c12 != '\n' && c12 != '\r' && c12 != '\t' && c12 != 26 && ((c12 != ':' || !z10) && c12 != '\f' && c12 != '\b')) {
            throw new JSONException("scan null error");
        }
        this.f158a = 8;
    }

    /* JADX WARN: Code duplicated, block: B:14:0x0034  */
    /* JADX WARN: Code duplicated, block: B:32:0x0075  */
    /* JADX WARN: Code duplicated, block: B:34:0x007a A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:35:0x007b  */
    /* JADX WARN: Code duplicated, block: B:37:0x0085  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:25:0x005c -> B:11:0x002e). Please report as a decompilation issue!!! */
    @Override
    public final long l() {
        long j10;
        long j11;
        int i10;
        char cG0;
        boolean z10 = false;
        if (this.f166i == -1) {
            this.f166i = 0;
        }
        int i11 = this.f166i;
        int i12 = this.f165h + i11;
        if (G0(i11) == '-') {
            i11++;
            j10 = Long.MIN_VALUE;
            z10 = true;
        } else {
            j10 = C.TIME_UNSET;
        }
        if (i11 >= i12) {
            j11 = 0;
            if (i11 < i12) {
                i10 = i11 + 1;
                cG0 = G0(i11);
                if (cG0 != 'L' || cG0 == 'S' || cG0 == 'B') {
                    i11 = i10;
                } else {
                    int i13 = cG0 - '0';
                    if (j11 < Buffer.OVERFLOW_ZONE) {
                        throw new NumberFormatException(E0());
                    }
                    long j12 = j11 * 10;
                    long j13 = i13;
                    if (j12 < j10 + j13) {
                        throw new NumberFormatException(E0());
                    }
                    j11 = j12 - j13;
                }
            }
            if (z10) {
                return -j11;
            }
            if (i11 > this.f166i + 1) {
                return j11;
            }
            throw new NumberFormatException(E0());
        }
        i10 = i11 + 1;
        j11 = -(G0(i11) - '0');
        i11 = i10;
        if (i11 < i12) {
            i10 = i11 + 1;
            cG0 = G0(i11);
            if (cG0 != 'L') {
            }
            i11 = i10;
        }
        if (z10) {
            return -j11;
        }
        if (i11 > this.f166i + 1) {
            return j11;
        }
        throw new NumberFormatException(E0());
    }

    /* JADX WARN: Code duplicated, block: B:54:0x00c3 A[ADDED_TO_REGION] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:55:0x00c5 -> B:51:0x00b4). Please report as a decompilation issue!!! */
    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions stack size limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    @Override
    public final float m(char r21) {
        /*
            Method dump skipped, instruction units count: 426
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: a5.c.m(char):float");
    }

    public String m1(i iVar, char c10) {
        int i10 = 0;
        this.f171n = 0;
        char cG0 = G0(this.f162e);
        if (cG0 == 'n') {
            if (G0(this.f162e + 1) != 'u' || G0(this.f162e + 2) != 'l' || G0(this.f162e + 3) != 'l') {
                this.f171n = -1;
                return null;
            }
            if (G0(this.f162e + 4) != c10) {
                this.f171n = -1;
                return null;
            }
            int i11 = this.f162e + 5;
            this.f162e = i11;
            this.f161d = G0(i11);
            this.f171n = 3;
            return null;
        }
        if (cG0 != '\"') {
            this.f171n = -1;
            return null;
        }
        int i12 = 1;
        while (true) {
            int i13 = i12 + 1;
            char cG1 = G0(this.f162e + i12);
            if (cG1 == '\"') {
                int i14 = this.f162e;
                int i15 = i14 + 1;
                String strB = b(i15, ((i14 + i13) - i15) - 1, i10, iVar);
                int i16 = i12 + 2;
                char cG2 = G0(this.f162e + i13);
                while (cG2 != c10) {
                    if (!M0(cG2)) {
                        this.f171n = -1;
                        return strB;
                    }
                    cG2 = G0(this.f162e + i16);
                    i16++;
                }
                int i17 = this.f162e + i16;
                this.f162e = i17;
                this.f161d = G0(i17);
                this.f171n = 3;
                return strB;
            }
            i10 = (i10 * 31) + cG1;
            if (cG1 == '\\') {
                this.f171n = -1;
                return null;
            }
            i12 = i13;
        }
    }

    public final void n1() {
        if (this.f161d != 't') {
            throw new JSONException("error parse true");
        }
        next();
        if (this.f161d != 'r') {
            throw new JSONException("error parse true");
        }
        next();
        if (this.f161d != 'u') {
            throw new JSONException("error parse true");
        }
        next();
        if (this.f161d != 'e') {
            throw new JSONException("error parse true");
        }
        next();
        char c10 = this.f161d;
        if (c10 != ' ' && c10 != ',' && c10 != '}' && c10 != ']' && c10 != '\n' && c10 != '\r' && c10 != '\t' && c10 != 26 && c10 != '\f' && c10 != '\b' && c10 != ':' && c10 != '/') {
            throw new JSONException("scan true error");
        }
        this.f158a = 6;
    }

    @Override
    public abstract char next();

    @Override
    public final boolean o(Feature feature) {
        return isEnabled(feature.mask);
    }

    @Override
    public abstract String o0();

    public void o1(TimeZone timeZone) {
        this.f169l = timeZone;
    }

    @Override
    public final int p() {
        int i10;
        boolean z10;
        int i11 = 0;
        if (this.f166i == -1) {
            this.f166i = 0;
        }
        int i12 = this.f166i;
        int i13 = this.f165h + i12;
        if (G0(i12) == '-') {
            i12++;
            i10 = Integer.MIN_VALUE;
            z10 = true;
        } else {
            i10 = -2147483647;
            z10 = false;
        }
        if (i12 < i13) {
            i11 = -(G0(i12) - '0');
            i12++;
        }
        while (i12 < i13) {
            int i14 = i12 + 1;
            char cG0 = G0(i12);
            if (cG0 == 'L' || cG0 == 'S' || cG0 == 'B') {
                i12 = i14;
                break;
            }
            int i15 = cG0 - '0';
            if (i11 < -214748364) {
                throw new NumberFormatException(E0());
            }
            int i16 = i11 * 10;
            if (i16 < i10 + i15) {
                throw new NumberFormatException(E0());
            }
            i11 = i16 - i15;
            i12 = i14;
        }
        if (!z10) {
            return -i11;
        }
        if (i12 > this.f166i + 1) {
            return i11;
        }
        throw new NumberFormatException(E0());
    }

    @Override
    public TimeZone p0() {
        return this.f169l;
    }

    protected void p1() {
        char c10;
        next();
        char c11 = this.f161d;
        if (c11 == '/') {
            do {
                next();
                c10 = this.f161d;
                if (c10 == '\n') {
                    next();
                    return;
                }
            } while (c10 != 26);
            return;
        }
        if (c11 != '*') {
            throw new JSONException("invalid comment");
        }
        next();
        while (true) {
            char c12 = this.f161d;
            if (c12 == 26) {
                return;
            }
            if (c12 == '*') {
                next();
                if (this.f161d == '/') {
                    next();
                    return;
                }
            } else {
                next();
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:53:0x00c2  */
    /* JADX WARN: Code duplicated, block: B:54:0x00c6  */
    @Override
    public final void q() {
        char c10;
        boolean z10;
        char c11;
        this.f166i = this.f162e;
        boolean z11 = true;
        if (this.f161d == '-') {
            this.f165h++;
            next();
        }
        while (true) {
            c10 = this.f161d;
            if (c10 < '0' || c10 > '9') {
                break;
            }
            this.f165h++;
            next();
        }
        if (c10 == '.') {
            this.f165h++;
            next();
            while (true) {
                char c12 = this.f161d;
                if (c12 < '0' || c12 > '9') {
                    break;
                }
                this.f165h++;
                next();
            }
            z10 = true;
        } else {
            z10 = false;
        }
        int i10 = this.f165h;
        if (i10 > 65535) {
            throw new JSONException("scanNumber overflow");
        }
        char c13 = this.f161d;
        if (c13 != 'L' && c13 != 'S' && c13 != 'B') {
            if (c13 == 'F' || c13 == 'D') {
                this.f165h = i10 + 1;
                next();
            } else if (c13 == 'e' || c13 == 'E') {
                this.f165h = i10 + 1;
                next();
                char c14 = this.f161d;
                if (c14 == '+' || c14 == '-') {
                    this.f165h++;
                    next();
                }
                while (true) {
                    c11 = this.f161d;
                    if (c11 < '0' || c11 > '9') {
                        break;
                    }
                    this.f165h++;
                    next();
                }
                if (c11 == 'D' || c11 == 'F') {
                    this.f165h++;
                    next();
                }
            }
            if (z11) {
                this.f158a = 3;
            } else {
                this.f158a = 2;
            }
        }
        this.f165h = i10 + 1;
        next();
        z11 = z10;
        if (z11) {
            this.f158a = 3;
        } else {
            this.f158a = 2;
        }
    }

    public final String q1() {
        return this.f172o;
    }

    @Override
    public final void r(int i10) {
        Q0(':');
    }

    @Override
    public final Number r0() {
        char c10;
        long j10;
        long j11;
        boolean z10 = false;
        if (this.f166i == -1) {
            this.f166i = 0;
        }
        int i10 = this.f166i;
        int i11 = this.f165h + i10;
        char cG0 = G0(i11 - 1);
        if (cG0 == 'B') {
            i11--;
            c10 = 'B';
        } else if (cG0 == 'L') {
            i11--;
            c10 = 'L';
        } else if (cG0 != 'S') {
            c10 = ' ';
        } else {
            i11--;
            c10 = 'S';
        }
        if (G0(this.f166i) == '-') {
            i10++;
            j10 = Long.MIN_VALUE;
            z10 = true;
        } else {
            j10 = C.TIME_UNSET;
        }
        if (i10 < i11) {
            j11 = -(G0(i10) - '0');
            i10++;
        } else {
            j11 = 0;
        }
        while (i10 < i11) {
            int i12 = i10 + 1;
            int iG0 = G0(i10) - '0';
            if (j11 < Buffer.OVERFLOW_ZONE) {
                return new BigInteger(E0(), 10);
            }
            long j12 = j11 * 10;
            long j13 = iG0;
            if (j12 < j10 + j13) {
                return new BigInteger(E0(), 10);
            }
            j11 = j12 - j13;
            i10 = i12;
        }
        if (!z10) {
            long j14 = -j11;
            if (j14 > 2147483647L || c10 == 'L') {
                return Long.valueOf(j14);
            }
            if (c10 == 'S') {
                return Short.valueOf((short) j14);
            }
            return c10 == 'B' ? Byte.valueOf((byte) j14) : Integer.valueOf((int) j14);
        }
        if (i10 <= this.f166i + 1) {
            throw new JSONException("illegal number format : " + E0());
        }
        if (j11 < -2147483648L || c10 == 'L') {
            return Long.valueOf(j11);
        }
        if (c10 == 'S') {
            return Short.valueOf((short) j11);
        }
        return c10 == 'B' ? Byte.valueOf((byte) j11) : Integer.valueOf((int) j11);
    }

    public abstract String r1(int i10, int i11);

    @Override
    public int s() {
        return this.f160c;
    }

    @Override
    public float s0() {
        char cCharAt;
        String strE0 = E0();
        float f10 = Float.parseFloat(strE0);
        if ((f10 != 0.0f && f10 != Float.POSITIVE_INFINITY) || (cCharAt = strE0.charAt(0)) <= '0' || cCharAt > '9') {
            return f10;
        }
        throw new JSONException("float overflow : " + strE0);
    }

    protected abstract char[] s1(int i10, int i11);

    @Override
    public final int t0() {
        return this.f158a;
    }

    /* JADX WARN: Code duplicated, block: B:43:0x0097 A[ADDED_TO_REGION] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:44:0x0099 -> B:40:0x0089). Please report as a decompilation issue!!! */
    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions stack size limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    @Override
    public java.math.BigDecimal u(char r18) {
        /*
            Method dump skipped, instruction units count: 465
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: a5.c.u(char):java.math.BigDecimal");
    }

    @Override
    public String u0(char c10) {
        this.f171n = 0;
        char cG0 = G0(this.f162e);
        if (cG0 == 'n') {
            if (G0(this.f162e + 1) != 'u' || G0(this.f162e + 2) != 'l' || G0(this.f162e + 3) != 'l') {
                this.f171n = -1;
                return null;
            }
            if (G0(this.f162e + 4) != c10) {
                this.f171n = -1;
                return null;
            }
            int i10 = this.f162e + 5;
            this.f162e = i10;
            this.f161d = G0(i10);
            this.f171n = 3;
            return null;
        }
        int i11 = 1;
        while (cG0 != '\"') {
            if (!M0(cG0)) {
                this.f171n = -1;
                return q1();
            }
            cG0 = G0(this.f162e + i11);
            i11++;
        }
        int i12 = this.f162e + i11;
        int iK0 = K0('\"', i12);
        if (iK0 == -1) {
            throw new JSONException("unclosed str");
        }
        String strR1 = r1(this.f162e + i11, iK0 - i12);
        if (strR1.indexOf(92) != -1) {
            while (true) {
                int i13 = 0;
                for (int i14 = iK0 - 1; i14 >= 0 && G0(i14) == '\\'; i14--) {
                    i13++;
                }
                if (i13 % 2 == 0) {
                    break;
                }
                iK0 = K0('\"', iK0 + 1);
            }
            int i15 = iK0 - i12;
            strR1 = S0(s1(this.f162e + 1, i15), i15);
        }
        int i16 = i11 + (iK0 - i12) + 1;
        int i17 = i16 + 1;
        char cG1 = G0(this.f162e + i16);
        while (cG1 != c10) {
            if (!M0(cG1)) {
                if (cG1 == ']') {
                    int i18 = this.f162e + i17;
                    this.f162e = i18;
                    this.f161d = G0(i18);
                    this.f171n = -1;
                }
                return strR1;
            }
            cG1 = G0(this.f162e + i17);
            i17++;
        }
        int i19 = this.f162e + i17;
        this.f162e = i19;
        this.f161d = G0(i19);
        this.f171n = 3;
        this.f158a = 16;
        return strR1;
    }

    @Override
    public final void v() {
        Q0(':');
    }

    @Override
    public final String w(i iVar, char c10) {
        String strC;
        this.f166i = this.f162e;
        this.f165h = 0;
        boolean z10 = false;
        int i10 = 0;
        while (true) {
            char next = next();
            if (next == c10) {
                this.f158a = 4;
                if (z10) {
                    strC = iVar.c(this.f164g, 0, this.f165h, i10);
                } else {
                    int i11 = this.f166i;
                    strC = b(i11 == -1 ? 0 : i11 + 1, this.f165h, i10, iVar);
                }
                this.f165h = 0;
                next();
                return strC;
            }
            if (next == 26) {
                throw new JSONException("unclosed.str");
            }
            if (next == '\\') {
                if (!z10) {
                    int i12 = this.f165h;
                    char[] cArr = this.f164g;
                    if (i12 >= cArr.length) {
                        int length = cArr.length * 2;
                        if (i12 <= length) {
                            i12 = length;
                        }
                        char[] cArr2 = new char[i12];
                        System.arraycopy(cArr, 0, cArr2, 0, cArr.length);
                        this.f164g = cArr2;
                    }
                    f(this.f166i + 1, this.f164g, 0, this.f165h);
                    z10 = true;
                }
                char next2 = next();
                if (next2 == '\"') {
                    i10 = (i10 * 31) + 34;
                    R0('\"');
                } else if (next2 != '\'') {
                    if (next2 != 'F') {
                        if (next2 == '\\') {
                            i10 = (i10 * 31) + 92;
                            R0('\\');
                        } else if (next2 == 'b') {
                            i10 = (i10 * 31) + 8;
                            R0('\b');
                        } else if (next2 != 'f') {
                            if (next2 == 'n') {
                                i10 = (i10 * 31) + 10;
                                R0('\n');
                            } else if (next2 == 'r') {
                                i10 = (i10 * 31) + 13;
                                R0('\r');
                            } else if (next2 != 'x') {
                                switch (next2) {
                                    case '/':
                                        i10 = (i10 * 31) + 47;
                                        R0('/');
                                        break;
                                    case AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE:
                                        i10 = (i10 * 31) + next2;
                                        R0((char) 0);
                                        break;
                                    case AD_VALIDATION_TO_PRESENT_DURATION_MS_VALUE:
                                        i10 = (i10 * 31) + next2;
                                        R0((char) 1);
                                        break;
                                    case '2':
                                        i10 = (i10 * 31) + next2;
                                        R0((char) 2);
                                        break;
                                    case AD_REWARD_USER_VALUE:
                                        i10 = (i10 * 31) + next2;
                                        R0((char) 3);
                                        break;
                                    case AD_REQUIRED_DOWNLOAD_DURATION_MS_VALUE:
                                        i10 = (i10 * 31) + next2;
                                        R0((char) 4);
                                        break;
                                    case AD_OPTIONAL_DOWNLOAD_DURATION_MS_VALUE:
                                        i10 = (i10 * 31) + next2;
                                        R0((char) 5);
                                        break;
                                    case AD_BACKGROUND_BEFORE_IMPRESSION_VALUE:
                                        i10 = (i10 * 31) + next2;
                                        R0((char) 6);
                                        break;
                                    case AD_CLOSED_BEFORE_IMPRESSION_VALUE:
                                        i10 = (i10 * 31) + next2;
                                        R0((char) 7);
                                        break;
                                    default:
                                        switch (next2) {
                                            case GZIP_ENCODE_ERROR_VALUE:
                                                i10 = (i10 * 31) + 9;
                                                R0('\t');
                                                break;
                                            case ASSET_FAILED_STATUS_CODE_VALUE:
                                                int i13 = Integer.parseInt(new String(new char[]{next(), next(), next(), next()}), 16);
                                                i10 = (i10 * 31) + i13;
                                                R0((char) i13);
                                                break;
                                            case PROTOBUF_SERIALIZATION_ERROR_VALUE:
                                                i10 = (i10 * 31) + 11;
                                                R0((char) 11);
                                                break;
                                            default:
                                                this.f161d = next2;
                                                throw new JSONException("unclosed.str.lit");
                                        }
                                        break;
                                }
                            } else {
                                char next3 = next();
                                this.f161d = next3;
                                char next4 = next();
                                this.f161d = next4;
                                int[] iArr = f157s;
                                char c11 = (char) ((iArr[next3] * 16) + iArr[next4]);
                                i10 = (i10 * 31) + c11;
                                R0(c11);
                            }
                        }
                    }
                    i10 = (i10 * 31) + 12;
                    R0('\f');
                } else {
                    i10 = (i10 * 31) + 39;
                    R0('\'');
                }
            } else {
                i10 = (i10 * 31) + next;
                if (z10) {
                    int i14 = this.f165h;
                    char[] cArr3 = this.f164g;
                    if (i14 == cArr3.length) {
                        R0(next);
                    } else {
                        this.f165h = i14 + 1;
                        cArr3[i14] = next;
                    }
                } else {
                    this.f165h++;
                }
            }
        }
    }

    @Override
    public final String x() {
        return f.a(this.f158a);
    }

    @Override
    public final void x0() {
        while (true) {
            char c10 = this.f161d;
            if (c10 > '/') {
                return;
            }
            if (c10 == ' ' || c10 == '\r' || c10 == '\n' || c10 == '\t' || c10 == '\f' || c10 == '\b') {
                next();
            } else if (c10 != '/') {
                return;
            } else {
                p1();
            }
        }
    }

    @Override
    public final boolean y() {
        return this.f165h == 4 && G0(this.f166i + 1) == '$' && G0(this.f166i + 2) == 'r' && G0(this.f166i + 3) == 'e' && G0(this.f166i + 4) == 'f';
    }

    @Override
    public final void y0() {
        this.f165h = 0;
    }
}
