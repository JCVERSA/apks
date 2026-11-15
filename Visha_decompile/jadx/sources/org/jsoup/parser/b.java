package org.jsoup.parser;

import com.transsion.apiinvoke.common.router.ProcessInfo;
import com.transsion.hubsdk.api.lighting.TranSceneConfig;
import defpackage.dnb;
import defpackage.nv0;
import defpackage.sw7;
import java.util.Arrays;
import org.apache.commons.lang3.CharUtils;
import org.jsoup.nodes.Entities;

public final class b {
    public static final char[] r;
    public static final int[] s;
    public final nv0 a;
    public final ParseErrorList b;
    public Token d;
    public Token.i i;
    public String o;
    public TokeniserState c = TokeniserState.Data;
    public boolean e = false;
    public String f = null;
    public StringBuilder g = new StringBuilder(1024);
    public StringBuilder h = new StringBuilder(1024);
    public Token.h j = new Token.h();
    public Token.g k = new Token.g();
    public Token.c l = new Token.c();
    public Token.e m = new Token.e();
    public Token.d n = new Token.d();
    public final int[] p = new int[1];
    public final int[] q = new int[2];

    static {
        char[] cArr = {'\t', '\n', CharUtils.CR, '\f', ' ', '<', '&'};
        r = cArr;
        s = new int[]{8364, 129, 8218, 402, 8222, 8230, 8224, 8225, 710, 8240, TranSceneConfig.SCENE_TYPE_GAME_HOK_KILL_1, 8249, 338, 141, 381, 143, 144, 8216, 8217, 8220, 8221, 8226, 8211, 8212, 732, 8482, TranSceneConfig.SCENE_TYPE_GAME_HOK_KILL_2, 8250, 339, 157, 382, 376};
        Arrays.sort(cArr);
    }

    public b(nv0 nv0Var, ParseErrorList parseErrorList) {
        this.a = nv0Var;
        this.b = parseErrorList;
    }

    public void a(TokeniserState tokeniserState) {
        this.a.a();
        this.c = tokeniserState;
    }

    public String b() {
        return this.o;
    }

    public final void c(String str) {
        if (this.b.canAddError()) {
            this.b.add(new sw7(this.a.J(), "Invalid character reference: %s", str));
        }
    }

    public int[] d(Character ch, boolean z) {
        int iIntValue;
        if (this.a.u()) {
            return null;
        }
        if ((ch != null && ch.charValue() == this.a.t()) || this.a.C(r)) {
            return null;
        }
        int[] iArr = this.p;
        this.a.w();
        if (this.a.x("#")) {
            boolean zY = this.a.y("X");
            nv0 nv0Var = this.a;
            String strI = zY ? nv0Var.i() : nv0Var.h();
            if (strI.length() == 0) {
                c("numeric reference with no numerals");
                this.a.L();
                return null;
            }
            this.a.N();
            if (!this.a.x(ProcessInfo.SPLIT_NEW_VERSION)) {
                c("missing semicolon");
            }
            try {
                iIntValue = Integer.valueOf(strI, zY ? 16 : 10).intValue();
            } catch (NumberFormatException unused) {
                iIntValue = -1;
            }
            if (iIntValue == -1 || ((iIntValue >= 55296 && iIntValue <= 57343) || iIntValue > 1114111)) {
                c("character outside of valid range");
                iArr[0] = 65533;
            } else {
                if (iIntValue >= 128) {
                    int[] iArr2 = s;
                    if (iIntValue < iArr2.length + 128) {
                        c("character is not a valid unicode code point");
                        iIntValue = iArr2[iIntValue - 128];
                    }
                }
                iArr[0] = iIntValue;
            }
            return iArr;
        }
        String strK = this.a.k();
        boolean z2 = this.a.z(';');
        if (!Entities.h(strK) && (!Entities.i(strK) || !z2)) {
            this.a.L();
            if (z2) {
                c("invalid named reference");
            }
            return null;
        }
        if (z && (this.a.G() || this.a.E() || this.a.B('=', '-', '_'))) {
            this.a.L();
            return null;
        }
        this.a.N();
        if (!this.a.x(ProcessInfo.SPLIT_NEW_VERSION)) {
            c("missing semicolon");
        }
        int iD = Entities.d(strK, this.q);
        if (iD == 1) {
            iArr[0] = this.q[0];
            return iArr;
        }
        if (iD == 2) {
            return this.q;
        }
        dnb.a("Unexpected characters returned for " + strK);
        return this.q;
    }

    public void e() {
        this.n.m();
        this.n.d = true;
    }

    public void f() {
        this.n.m();
    }

    public void g() {
        this.m.m();
    }

    public Token.i h(boolean z) {
        Token.i iVarM = z ? this.j.m() : this.k.m();
        this.i = iVarM;
        return iVarM;
    }

    public void i() {
        Token.n(this.h);
    }

    public void j(char c) {
        if (this.f == null) {
            this.f = String.valueOf(c);
            return;
        }
        if (this.g.length() == 0) {
            this.g.append(this.f);
        }
        this.g.append(c);
    }

    public void k(String str) {
        if (this.f == null) {
            this.f = str;
            return;
        }
        if (this.g.length() == 0) {
            this.g.append(this.f);
        }
        this.g.append(str);
    }

    public void l(StringBuilder sb) {
        if (this.f == null) {
            this.f = sb.toString();
            return;
        }
        if (this.g.length() == 0) {
            this.g.append(this.f);
        }
        this.g.append((CharSequence) sb);
    }

    public void m(Token token) {
        dnb.b(this.e);
        this.d = token;
        this.e = true;
        Token.TokenType tokenType = token.a;
        if (tokenType == Token.TokenType.StartTag) {
            this.o = ((Token.h) token).b;
        } else if (tokenType == Token.TokenType.EndTag && ((Token.g) token).A()) {
            s("Attributes incorrectly present on end tag");
        }
    }

    public void n(int[] iArr) {
        k(new String(iArr, 0, iArr.length));
    }

    public void o() {
        m(this.n);
    }

    public void p() {
        m(this.m);
    }

    public void q() {
        this.i.y();
        m(this.i);
    }

    public void r(TokeniserState tokeniserState) {
        if (this.b.canAddError()) {
            this.b.add(new sw7(this.a.J(), "Unexpectedly reached end of file (EOF) in input state [%s]", tokeniserState));
        }
    }

    public void s(String str) {
        if (this.b.canAddError()) {
            this.b.add(new sw7(this.a.J(), str));
        }
    }

    public void t(TokeniserState tokeniserState) {
        if (this.b.canAddError()) {
            this.b.add(new sw7(this.a.J(), "Unexpected character '%s' in input state [%s]", Character.valueOf(this.a.t()), tokeniserState));
        }
    }

    public boolean u() {
        return this.o != null && this.i.C().equalsIgnoreCase(this.o);
    }

    public Token v() {
        while (!this.e) {
            this.c.read(this, this.a);
        }
        StringBuilder sb = this.g;
        if (sb.length() != 0) {
            String string = sb.toString();
            sb.delete(0, sb.length());
            this.f = null;
            return this.l.p(string);
        }
        String str = this.f;
        if (str == null) {
            this.e = false;
            return this.d;
        }
        Token.c cVarP = this.l.p(str);
        this.f = null;
        return cVarP;
    }

    public void w(TokeniserState tokeniserState) {
        this.c = tokeniserState;
    }
}
