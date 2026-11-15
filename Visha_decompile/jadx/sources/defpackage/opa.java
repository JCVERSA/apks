package defpackage;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.cloud.hisavana.sdk.data.bean.response.ccofig.ClientABTestDTOKt;
import io.appmetrica.analytics.BuildConfig;
import io.appmetrica.analytics.plugins.PluginErrorDetails;
import org.apache.commons.lang3.BooleanUtils;
import org.apache.commons.text.lookup.StringLookupFactory;
import org.greenrobot.greendao.generator.Schema;
import org.mozilla.classfile.ByteCode;
import org.mozilla.javascript.Kit;
import org.mozilla.javascript.ObjToIntMap;
import org.mozilla.javascript.ScriptRuntime;
import org.schabi.newpipe.extractor.exceptions.ParsingException;
import org.schabi.newpipe.extractor.utils.jsextractor.Token;

public class opa {
    public boolean a;
    public int d;
    public int g;
    public int k;
    public final String l;
    public int o;
    public int p;
    public final int q;
    public String b = "";
    public char[] c = new char[128];
    public final ObjToIntMap e = new ObjToIntMap(50);
    public final int[] f = new int[3];
    public boolean h = false;
    public int i = 0;
    public int j = -1;
    public int m = 0;
    public int n = 0;

    public opa(String str, int i, int i2) {
        this.l = str;
        this.k = i;
        this.q = i2;
    }

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    public static Token A(String str) {
        str.hashCode();
        byte b = -1;
        switch (str.hashCode()) {
            case -1888027236:
                if (str.equals("volatile")) {
                    b = 0;
                }
                break;
            case -1466596076:
                if (str.equals("synchronized")) {
                    b = 1;
                }
                break;
            case -1335458389:
                if (str.equals("delete")) {
                    b = 2;
                }
                break;
            case -1325958191:
                if (str.equals("double")) {
                    b = 3;
                }
                break;
            case -1305664359:
                if (str.equals("extends")) {
                    b = 4;
                }
                break;
            case -1289153612:
                if (str.equals("export")) {
                    b = 5;
                }
                break;
            case -1184795739:
                if (str.equals("import")) {
                    b = 6;
                }
                break;
            case -1052618729:
                if (str.equals(PluginErrorDetails.Platform.NATIVE)) {
                    b = 7;
                }
                break;
            case -977423767:
                if (str.equals(BuildConfig.SDK_BUILD_FLAVOR)) {
                    b = 8;
                }
                break;
            case -934396624:
                if (str.equals("return")) {
                    b = 9;
                }
                break;
            case -915384400:
                if (str.equals("implements")) {
                    b = 10;
                }
                break;
            case -892481938:
                if (str.equals("static")) {
                    b = ByteCode.T_LONG;
                }
                break;
            case -889473228:
                if (str.equals(ClientABTestDTOKt.SWITCH)) {
                    b = 12;
                }
                break;
            case -874432947:
                if (str.equals("throws")) {
                    b = 13;
                }
                break;
            case -858802543:
                if (str.equals("typeof")) {
                    b = 14;
                }
                break;
            case -853259901:
                if (str.equals("finally")) {
                    b = 15;
                }
                break;
            case -807062458:
                if (str.equals("package")) {
                    b = 16;
                }
                break;
            case -608539730:
                if (str.equals("protected")) {
                    b = 17;
                }
                break;
            case -567202649:
                if (str.equals("continue")) {
                    b = 18;
                }
                break;
            case -314497661:
                if (str.equals("private")) {
                    b = 19;
                }
                break;
            case 3211:
                if (str.equals("do")) {
                    b = 20;
                }
                break;
            case 3357:
                if (str.equals("if")) {
                    b = 21;
                }
                break;
            case 3365:
                if (str.equals("in")) {
                    b = 22;
                }
                break;
            case 101577:
                if (str.equals("for")) {
                    b = 23;
                }
                break;
            case 104431:
                if (str.equals("int")) {
                    b = 24;
                }
                break;
            case 107035:
                if (str.equals("let")) {
                    b = 25;
                }
                break;
            case 108960:
                if (str.equals("new")) {
                    b = 26;
                }
                break;
            case 115131:
                if (str.equals("try")) {
                    b = 27;
                }
                break;
            case 116519:
                if (str.equals("var")) {
                    b = 28;
                }
                break;
            case 3039496:
                if (str.equals("byte")) {
                    b = 29;
                }
                break;
            case 3046192:
                if (str.equals("case")) {
                    b = 30;
                }
                break;
            case 3052374:
                if (str.equals("char")) {
                    b = 31;
                }
                break;
            case 3116345:
                if (str.equals("else")) {
                    b = 32;
                }
                break;
            case 3118337:
                if (str.equals("enum")) {
                    b = 33;
                }
                break;
            case 3178851:
                if (str.equals("goto")) {
                    b = 34;
                }
                break;
            case 3327612:
                if (str.equals("long")) {
                    b = 35;
                }
                break;
            case 3392903:
                if (str.equals("null")) {
                    b = 36;
                }
                break;
            case 3559070:
                if (str.equals("this")) {
                    b = 37;
                }
                break;
            case 3569038:
                if (str.equals(BooleanUtils.TRUE)) {
                    b = 38;
                }
                break;
            case 3625364:
                if (str.equals("void")) {
                    b = 39;
                }
                break;
            case 3649734:
                if (str.equals("with")) {
                    b = 40;
                }
                break;
            case 64711720:
                if (str.equals(TypedValues.Custom.S_BOOLEAN)) {
                    b = 41;
                }
                break;
            case 94001407:
                if (str.equals("break")) {
                    b = 42;
                }
                break;
            case 94432955:
                if (str.equals("catch")) {
                    b = 43;
                }
                break;
            case 94742904:
                if (str.equals("class")) {
                    b = 44;
                }
                break;
            case 94844771:
                if (str.equals(StringLookupFactory.KEY_CONST)) {
                    b = 45;
                }
                break;
            case 97196323:
                if (str.equals(BooleanUtils.FALSE)) {
                    b = 46;
                }
                break;
            case 97436022:
                if (str.equals("final")) {
                    b = 47;
                }
                break;
            case 97526364:
                if (str.equals(TypedValues.Custom.S_FLOAT)) {
                    b = 48;
                }
                break;
            case 109413500:
                if (str.equals("short")) {
                    b = 49;
                }
                break;
            case 109801339:
                if (str.equals("super")) {
                    b = 50;
                }
                break;
            case 110339814:
                if (str.equals("throw")) {
                    b = 51;
                }
                break;
            case 113101617:
                if (str.equals("while")) {
                    b = 52;
                }
                break;
            case 114974605:
                if (str.equals("yield")) {
                    b = 53;
                }
                break;
            case 502623545:
                if (str.equals("interface")) {
                    b = 54;
                }
                break;
            case 547812385:
                if (str.equals("debugger")) {
                    b = 55;
                }
                break;
            case 902025516:
                if (str.equals("instanceof")) {
                    b = 56;
                }
                break;
            case 1052746378:
                if (str.equals("transient")) {
                    b = 57;
                }
                break;
            case 1380938712:
                if (str.equals("function")) {
                    b = 58;
                }
                break;
            case 1544803905:
                if (str.equals(Schema.DEFAULT_NAME)) {
                    b = 59;
                }
                break;
            case 1732898850:
                if (str.equals("abstract")) {
                    b = 60;
                }
                break;
        }
        switch (b) {
            case 0:
            case 1:
            case 3:
            case 4:
            case 6:
            case 7:
            case 8:
            case 10:
            case 11:
            case 13:
            case 16:
            case 17:
            case 19:
            case 24:
            case 29:
            case 31:
            case 33:
            case 34:
            case 35:
            case 41:
            case 44:
            case 47:
            case 48:
            case 49:
            case 50:
            case 54:
            case 57:
            case 60:
                return Token.RESERVED;
            case 2:
                return Token.DELPROP;
            case 5:
                return Token.EXPORT;
            case 9:
                return Token.RETURN;
            case 12:
                return Token.SWITCH;
            case 14:
                return Token.TYPEOF;
            case 15:
                return Token.FINALLY;
            case 18:
                return Token.CONTINUE;
            case 20:
                return Token.DO;
            case 21:
                return Token.IF;
            case 22:
                return Token.IN;
            case 23:
                return Token.FOR;
            case 25:
                return Token.LET;
            case 26:
                return Token.NEW;
            case 27:
                return Token.TRY;
            case 28:
                return Token.VAR;
            case 30:
                return Token.CASE;
            case 32:
                return Token.ELSE;
            case 36:
                return Token.NULL;
            case 37:
                return Token.THIS;
            case 38:
                return Token.TRUE;
            case 39:
                return Token.VOID;
            case 40:
                return Token.WITH;
            case 42:
                return Token.BREAK;
            case 43:
                return Token.CATCH;
            case 45:
                return Token.CONST;
            case 46:
                return Token.FALSE;
            case 51:
                return Token.THROW;
            case 52:
                return Token.WHILE;
            case 53:
                return Token.YIELD;
            case 55:
                return Token.DEBUGGER;
            case 56:
                return Token.INSTANCEOF;
            case 58:
                return Token.FUNCTION;
            case 59:
                return Token.DEFAULT;
            default:
                return Token.EOF;
        }
    }

    public static String b(String str) {
        int length = str.length() - 1;
        StringBuilder sb = new StringBuilder(str.substring(0, length));
        sb.append("\\u");
        String hexString = Integer.toHexString(str.charAt(length));
        for (int i = 0; i < 4 - hexString.length(); i++) {
            sb.append('0');
        }
        sb.append(hexString);
        return sb.toString();
    }

    public static boolean j(int i) {
        if (i <= 90) {
            return 65 <= i;
        }
        return 97 <= i && i <= 122;
    }

    public static boolean k(int i) {
        return 48 <= i && i <= 57;
    }

    public static boolean l(int i, int i2) {
        return (i == 10 && k(i2)) || (i == 16 && n(i2)) || ((i == 8 && r(i2)) || (i == 2 && m(i2)));
    }

    public static boolean m(int i) {
        return 48 == i || i == 49;
    }

    public static boolean n(int i) {
        return (48 <= i && i <= 57) || (97 <= i && i <= 102) || (65 <= i && i <= 70);
    }

    public static boolean o(int i) {
        return i > 127 && Character.getType((char) i) == 16;
    }

    public static boolean p(int i) {
        if (i <= 127) {
            return i == 32 || i == 9 || i == 12 || i == 11;
        }
        return i == 160 || i == 65279 || Character.getType((char) i) == 12;
    }

    public static boolean q(String str, int i, boolean z) {
        return Token.EOF != y(str, i, z);
    }

    public static boolean r(int i) {
        return 48 <= i && i <= 55;
    }

    public static Token y(String str, int i, boolean z) {
        return i < 200 ? A(str) : z(str, z);
    }

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    public static Token z(String str, boolean z) {
        str.hashCode();
        byte b = -1;
        switch (str.hashCode()) {
            case -1335458389:
                if (str.equals("delete")) {
                    b = 0;
                }
                break;
            case -1305664359:
                if (str.equals("extends")) {
                    b = 1;
                }
                break;
            case -1289153612:
                if (str.equals("export")) {
                    b = 2;
                }
                break;
            case -1184795739:
                if (str.equals("import")) {
                    b = 3;
                }
                break;
            case -977423767:
                if (str.equals(BuildConfig.SDK_BUILD_FLAVOR)) {
                    b = 4;
                }
                break;
            case -934396624:
                if (str.equals("return")) {
                    b = 5;
                }
                break;
            case -915384400:
                if (str.equals("implements")) {
                    b = 6;
                }
                break;
            case -892481938:
                if (str.equals("static")) {
                    b = 7;
                }
                break;
            case -889473228:
                if (str.equals(ClientABTestDTOKt.SWITCH)) {
                    b = 8;
                }
                break;
            case -858802543:
                if (str.equals("typeof")) {
                    b = 9;
                }
                break;
            case -853259901:
                if (str.equals("finally")) {
                    b = 10;
                }
                break;
            case -807062458:
                if (str.equals("package")) {
                    b = ByteCode.T_LONG;
                }
                break;
            case -608539730:
                if (str.equals("protected")) {
                    b = 12;
                }
                break;
            case -567202649:
                if (str.equals("continue")) {
                    b = 13;
                }
                break;
            case -314497661:
                if (str.equals("private")) {
                    b = 14;
                }
                break;
            case 3211:
                if (str.equals("do")) {
                    b = 15;
                }
                break;
            case 3357:
                if (str.equals("if")) {
                    b = 16;
                }
                break;
            case 3365:
                if (str.equals("in")) {
                    b = 17;
                }
                break;
            case 101577:
                if (str.equals("for")) {
                    b = 18;
                }
                break;
            case 107035:
                if (str.equals("let")) {
                    b = 19;
                }
                break;
            case 108960:
                if (str.equals("new")) {
                    b = 20;
                }
                break;
            case 115131:
                if (str.equals("try")) {
                    b = 21;
                }
                break;
            case 116519:
                if (str.equals("var")) {
                    b = 22;
                }
                break;
            case 3046192:
                if (str.equals("case")) {
                    b = 23;
                }
                break;
            case 3116345:
                if (str.equals("else")) {
                    b = 24;
                }
                break;
            case 3118337:
                if (str.equals("enum")) {
                    b = 25;
                }
                break;
            case 3392903:
                if (str.equals("null")) {
                    b = 26;
                }
                break;
            case 3559070:
                if (str.equals("this")) {
                    b = 27;
                }
                break;
            case 3569038:
                if (str.equals(BooleanUtils.TRUE)) {
                    b = 28;
                }
                break;
            case 3625364:
                if (str.equals("void")) {
                    b = 29;
                }
                break;
            case 3649734:
                if (str.equals("with")) {
                    b = 30;
                }
                break;
            case 93223254:
                if (str.equals("await")) {
                    b = 31;
                }
                break;
            case 94001407:
                if (str.equals("break")) {
                    b = 32;
                }
                break;
            case 94432955:
                if (str.equals("catch")) {
                    b = 33;
                }
                break;
            case 94742904:
                if (str.equals("class")) {
                    b = 34;
                }
                break;
            case 94844771:
                if (str.equals(StringLookupFactory.KEY_CONST)) {
                    b = 35;
                }
                break;
            case 97196323:
                if (str.equals(BooleanUtils.FALSE)) {
                    b = 36;
                }
                break;
            case 109801339:
                if (str.equals("super")) {
                    b = 37;
                }
                break;
            case 110339814:
                if (str.equals("throw")) {
                    b = 38;
                }
                break;
            case 113101617:
                if (str.equals("while")) {
                    b = 39;
                }
                break;
            case 114974605:
                if (str.equals("yield")) {
                    b = 40;
                }
                break;
            case 502623545:
                if (str.equals("interface")) {
                    b = 41;
                }
                break;
            case 547812385:
                if (str.equals("debugger")) {
                    b = 42;
                }
                break;
            case 902025516:
                if (str.equals("instanceof")) {
                    b = 43;
                }
                break;
            case 1380938712:
                if (str.equals("function")) {
                    b = 44;
                }
                break;
            case 1544803905:
                if (str.equals(Schema.DEFAULT_NAME)) {
                    b = 45;
                }
                break;
        }
        switch (b) {
            case 0:
                return Token.DELPROP;
            case 1:
            case 25:
            case 31:
            case 34:
            case 37:
                return Token.RESERVED;
            case 2:
                return Token.EXPORT;
            case 3:
                return Token.IMPORT;
            case 4:
            case 6:
            case 7:
            case 11:
            case 12:
            case 14:
            case 41:
                if (z) {
                    return Token.RESERVED;
                }
                break;
            case 5:
                return Token.RETURN;
            case 8:
                return Token.SWITCH;
            case 9:
                return Token.TYPEOF;
            case 10:
                return Token.FINALLY;
            case 13:
                return Token.CONTINUE;
            case 15:
                return Token.DO;
            case 16:
                return Token.IF;
            case 17:
                return Token.IN;
            case 18:
                return Token.FOR;
            case 19:
                return Token.LET;
            case 20:
                return Token.NEW;
            case 21:
                return Token.TRY;
            case 22:
                return Token.VAR;
            case 23:
                return Token.CASE;
            case 24:
                return Token.ELSE;
            case 26:
                return Token.NULL;
            case 27:
                return Token.THIS;
            case 28:
                return Token.TRUE;
            case 29:
                return Token.VOID;
            case 30:
                return Token.WITH;
            case 32:
                return Token.BREAK;
            case 33:
                return Token.CATCH;
            case 35:
                return Token.CONST;
            case 36:
                return Token.FALSE;
            case 38:
                return Token.THROW;
            case 39:
                return Token.WHILE;
            case 40:
                return Token.YIELD;
            case 42:
                return Token.DEBUGGER;
            case 43:
                return Token.INSTANCEOF;
            case 44:
                return Token.FUNCTION;
            case 45:
                return Token.DEFAULT;
        }
        return Token.EOF;
    }

    public final void B(int i) {
        int i2 = this.g;
        if (i2 != 0 && this.f[i2 - 1] == 10) {
            Kit.codeBug();
        }
        int[] iArr = this.f;
        int i3 = this.g;
        this.g = i3 + 1;
        iArr[i3] = i;
        this.n--;
    }

    public final void C(int i) {
        int[] iArr = this.f;
        int i2 = this.g;
        this.g = i2 + 1;
        iArr[i2] = i;
        this.n--;
    }

    public final void a(int i) {
        int i2 = this.d;
        char[] cArr = this.c;
        if (i2 == cArr.length) {
            char[] cArr2 = new char[cArr.length * 2];
            System.arraycopy(cArr, 0, cArr2, 0, i2);
            this.c = cArr2;
        }
        this.c[i2] = (char) i;
        this.d = i2 + 1;
    }

    public final int c() {
        return e(true, false);
    }

    public final int d(boolean z) {
        return e(z, false);
    }

    public final int e(boolean z, boolean z2) {
        int i;
        int i2 = this.g;
        if (i2 != 0) {
            this.n++;
            int[] iArr = this.f;
            int i3 = i2 - 1;
            this.g = i3;
            return iArr[i3];
        }
        while (this.m != this.l.length()) {
            this.n++;
            String str = this.l;
            int i4 = this.m;
            this.m = i4 + 1;
            char cCharAt = str.charAt(i4);
            if (!z2 && (i = this.j) >= 0) {
                if (i == 13 && cCharAt == '\n') {
                    this.j = 10;
                } else {
                    this.j = -1;
                    this.i = this.m - 1;
                    this.k++;
                }
            }
            if (cCharAt <= 127) {
                if (cCharAt != '\n' && cCharAt != '\r') {
                    return cCharAt;
                }
                this.j = cCharAt;
            } else {
                if (cCharAt == 65279) {
                    return cCharAt;
                }
                if (!z || !o(cCharAt)) {
                    if (!ScriptRuntime.isJSLineTerminator(cCharAt)) {
                        return cCharAt;
                    }
                    this.j = cCharAt;
                }
            }
            return 10;
        }
        this.h = true;
        return -1;
    }

    public final int f() {
        return e(true, true);
    }

    public final int g(boolean z) {
        return e(z, true);
    }

    public final String h() {
        this.p = this.n;
        return new String(this.c, 0, this.d);
    }

    /* JADX WARN: Code duplicated, block: B:204:0x0261 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:206:0x0264  */
    /* JADX WARN: Code duplicated, block: B:307:0x034e  */
    /* JADX WARN: Code duplicated, block: B:490:0x026a A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:491:0x0276 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:492:0x0258 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:493:0x0271 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:494:0x0268 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:497:0x025b A[SYNTHETIC] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:204:0x0261 -> B:200:0x0258). Please report as a decompilation issue!!! */
    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions stack size limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    public final org.schabi.newpipe.extractor.utils.jsextractor.Token i() throws org.schabi.newpipe.extractor.exceptions.ParsingException {
        /*
            Method dump skipped, instruction units count: 1414
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.opa.i():org.schabi.newpipe.extractor.utils.jsextractor.Token");
    }

    public final boolean s(int i) {
        int iF = f();
        if (iF == i) {
            this.p = this.n;
            return true;
        }
        C(iF);
        return false;
    }

    public Token t() throws ParsingException {
        Token tokenI = i();
        while (true) {
            if (tokenI != Token.EOL && tokenI != Token.COMMENT) {
                return tokenI;
            }
            tokenI = i();
        }
    }

    public final int u() {
        int iC = c();
        B(iC);
        return iC;
    }

    public final int v(int i, int i2) {
        if (l(i, i2)) {
            a(i2);
            i2 = c();
            if (i2 == -1) {
                return -1;
            }
            while (true) {
                if (i2 == 95) {
                    i2 = c();
                    if (i2 == 10 || i2 == -1) {
                        return -2;
                    }
                    if (!l(i, i2)) {
                        B(i2);
                        return 95;
                    }
                    a(95);
                } else if (l(i, i2)) {
                    a(i2);
                    i2 = c();
                    if (i2 == -1) {
                        return -1;
                    }
                }
            }
        }
        return i2;
    }

    public void w(Token token) throws ParsingException {
        int iF;
        int i = this.o;
        this.d = 0;
        if (token == Token.ASSIGN_DIV) {
            a(61);
        } else {
            if (token != Token.DIV) {
                Kit.codeBug();
            }
            if (u() == 42) {
                this.p = this.n - 1;
                this.b = new String(this.c, 0, this.d);
                throw new ParsingException("msg.unterminated.re.lit");
            }
        }
        boolean z = false;
        while (true) {
            int iC = c();
            if (iC == 47 && !z) {
                int i2 = this.d;
                while (true) {
                    iF = f();
                    if ("gimysu".indexOf(iF) == -1) {
                        break;
                    } else {
                        a(iF);
                    }
                }
                if (j(iF)) {
                    throw new ParsingException("msg.invalid.re.flag");
                }
                C(iF);
                this.p = i + this.d + 2;
                this.b = new String(this.c, 0, i2);
                return;
            }
            if (iC == 10 || iC == -1) {
                throw new ParsingException("msg.unterminated.re.lit");
            }
            if (iC == 92) {
                a(iC);
                iC = c();
                if (iC == 10 || iC == -1) {
                    break;
                }
            } else if (iC == 91) {
                z = true;
            } else if (iC == 93) {
                z = false;
            }
            a(iC);
        }
        throw new ParsingException("msg.unterminated.re.lit");
    }

    public final void x() {
        int iC;
        do {
            iC = c();
            if (iC == -1) {
                break;
            }
        } while (iC != 10);
        B(iC);
        this.p = this.n;
    }
}
