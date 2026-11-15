package org.jsoup.parser;

import com.bytedance.sdk.openadsdk.TTAdConstant;
import com.transsion.gslb.Utils;
import java.util.Arrays;
import org.jsoup.nodes.Entities;

final class h {

    private static final char[] f68697r;

    static final int[] f68698s = {8364, 129, 8218, TTAdConstant.AD_ID_IS_NULL_CODE, 8222, 8230, 8224, 8225, 710, 8240, 352, 8249, 338, 141, 381, 143, 144, 8216, 8217, 8220, 8221, 8226, 8211, 8212, 732, 8482, 353, 8250, 339, 157, 382, 376};

    private final a f68699a;

    private final ParseErrorList f68700b;

    private Token f68702d;

    Token.i f68707i;

    private String f68713o;

    private TokeniserState f68701c = TokeniserState.Data;

    private boolean f68703e = false;

    private String f68704f = null;

    private StringBuilder f68705g = new StringBuilder(1024);

    StringBuilder f68706h = new StringBuilder(1024);

    Token.h f68708j = new Token.h();

    Token.g f68709k = new Token.g();

    Token.c f68710l = new Token.c();

    Token.e f68711m = new Token.e();

    Token.d f68712n = new Token.d();

    private final int[] f68714p = new int[1];

    private final int[] f68715q = new int[2];

    static {
        char[] cArr = {'\t', '\n', '\r', '\f', ' ', '<', '&'};
        f68697r = cArr;
        Arrays.sort(cArr);
    }

    h(a aVar, ParseErrorList parseErrorList) {
        this.f68699a = aVar;
        this.f68700b = parseErrorList;
    }

    private void c(String str) {
        if (this.f68700b.canAddError()) {
            this.f68700b.add(new c(this.f68699a.F(), "Invalid character reference: %s", str));
        }
    }

    void a(TokeniserState tokeniserState) {
        this.f68699a.a();
        this.f68701c = tokeniserState;
    }

    String b() {
        return this.f68713o;
    }

    int[] d(Character ch2, boolean z10) {
        int iIntValue;
        if (this.f68699a.r()) {
            return null;
        }
        if ((ch2 != null && ch2.charValue() == this.f68699a.q()) || this.f68699a.z(f68697r)) {
            return null;
        }
        int[] iArr = this.f68714p;
        this.f68699a.t();
        if (this.f68699a.u(Utils.SEPARATOR)) {
            boolean zV = this.f68699a.v("X");
            a aVar = this.f68699a;
            String strG = zV ? aVar.g() : aVar.f();
            if (strG.length() == 0) {
                c("numeric reference with no numerals");
                this.f68699a.H();
                return null;
            }
            if (!this.f68699a.u(";")) {
                c("missing semicolon");
            }
            try {
                iIntValue = Integer.valueOf(strG, zV ? 16 : 10).intValue();
            } catch (NumberFormatException unused) {
                iIntValue = -1;
            }
            if (iIntValue == -1 || ((iIntValue >= 55296 && iIntValue <= 57343) || iIntValue > 1114111)) {
                c("character outside of valid range");
                iArr[0] = 65533;
                return iArr;
            }
            if (iIntValue >= 128) {
                int[] iArr2 = f68698s;
                if (iIntValue < iArr2.length + 128) {
                    c("character is not a valid unicode code point");
                    iIntValue = iArr2[iIntValue - 128];
                }
            }
            iArr[0] = iIntValue;
            return iArr;
        }
        String strI = this.f68699a.i();
        boolean zW = this.f68699a.w(';');
        if (!Entities.f(strI) && (!Entities.g(strI) || !zW)) {
            this.f68699a.H();
            if (zW) {
                c(String.format("invalid named referenece '%s'", strI));
            }
            return null;
        }
        if (z10 && (this.f68699a.C() || this.f68699a.A() || this.f68699a.y('=', '-', '_'))) {
            this.f68699a.H();
            return null;
        }
        if (!this.f68699a.u(";")) {
            c("missing semicolon");
        }
        int iD = Entities.d(strI, this.f68715q);
        if (iD == 1) {
            iArr[0] = this.f68715q[0];
            return iArr;
        }
        if (iD == 2) {
            return this.f68715q;
        }
        org.jsoup.helper.d.a("Unexpected characters returned for " + strI);
        return this.f68715q;
    }

    void e() {
        this.f68712n.m();
    }

    void f() {
        this.f68711m.m();
    }

    Token.i g(boolean z10) {
        Token.i iVarM = z10 ? this.f68708j.m() : this.f68709k.m();
        this.f68707i = iVarM;
        return iVarM;
    }

    void h() {
        Token.n(this.f68706h);
    }

    void i(char c10) {
        j(String.valueOf(c10));
    }

    void j(String str) {
        if (this.f68704f == null) {
            this.f68704f = str;
            return;
        }
        if (this.f68705g.length() == 0) {
            this.f68705g.append(this.f68704f);
        }
        this.f68705g.append(str);
    }

    void k(Token token) {
        org.jsoup.helper.d.c(this.f68703e, "There is an unread token pending!");
        this.f68702d = token;
        this.f68703e = true;
        Token.TokenType tokenType = token.f68626a;
        if (tokenType == Token.TokenType.StartTag) {
            this.f68713o = ((Token.h) token).f68635b;
        } else {
            if (tokenType != Token.TokenType.EndTag || ((Token.g) token).f68643j == null) {
                return;
            }
            q("Attributes incorrectly present on end tag");
        }
    }

    void l(int[] iArr) {
        j(new String(iArr, 0, iArr.length));
    }

    void m() {
        k(this.f68712n);
    }

    void n() {
        k(this.f68711m);
    }

    void o() {
        this.f68707i.x();
        k(this.f68707i);
    }

    void p(TokeniserState tokeniserState) {
        if (this.f68700b.canAddError()) {
            this.f68700b.add(new c(this.f68699a.F(), "Unexpectedly reached end of file (EOF) in input state [%s]", tokeniserState));
        }
    }

    void q(String str) {
        if (this.f68700b.canAddError()) {
            this.f68700b.add(new c(this.f68699a.F(), str));
        }
    }

    void r(TokeniserState tokeniserState) {
        if (this.f68700b.canAddError()) {
            this.f68700b.add(new c(this.f68699a.F(), "Unexpected character '%s' in input state [%s]", Character.valueOf(this.f68699a.q()), tokeniserState));
        }
    }

    boolean s() {
        return this.f68713o != null && this.f68707i.A().equalsIgnoreCase(this.f68713o);
    }

    Token t() {
        while (!this.f68703e) {
            this.f68701c.read(this, this.f68699a);
        }
        if (this.f68705g.length() > 0) {
            String string = this.f68705g.toString();
            StringBuilder sb2 = this.f68705g;
            sb2.delete(0, sb2.length());
            this.f68704f = null;
            return this.f68710l.p(string);
        }
        String str = this.f68704f;
        if (str == null) {
            this.f68703e = false;
            return this.f68702d;
        }
        Token.c cVarP = this.f68710l.p(str);
        this.f68704f = null;
        return cVarP;
    }

    void u(TokeniserState tokeniserState) {
        this.f68701c = tokeniserState;
    }
}
