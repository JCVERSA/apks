package defpackage;

import java.util.Stack;
import org.schabi.newpipe.extractor.exceptions.ParsingException;
import org.schabi.newpipe.extractor.utils.jsextractor.Token;

public class nk5 {
    public final opa a;
    public final d b;
    public final Stack c;
    public final Stack d;

    public static class a {
        public static final int[] a;

        static {
            int[] iArr = new int[Token.values().length];
            a = iArr;
            try {
                iArr[Token.LP.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                a[Token.LC.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                a[Token.RP.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                a[Token.RC.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                a[Token.CASE.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                a[Token.COLON.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                a[Token.RETURN.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                a[Token.YIELD.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                a[Token.YIELD_STAR.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
        }
    }

    public static class b {
        public final boolean a;
        public final f b;

        public b(boolean z, f fVar) {
            this.a = z;
            this.b = fVar;
        }
    }

    public static class c extends e {
        public final b c;

        public c(Token token, int i, b bVar) {
            super(token, i);
            this.c = bVar;
        }
    }

    public static class d {
        public final e[] a = new e[3];

        public e a() {
            return this.a[0];
        }

        public boolean b(Token token) {
            e eVar = this.a[0];
            return eVar != null && eVar.a == token;
        }

        public void c(e eVar) {
            int i = 0;
            while (i < 3) {
                e[] eVarArr = this.a;
                e eVar2 = eVarArr[i];
                eVarArr[i] = eVar;
                i++;
                eVar = eVar2;
            }
        }

        public e d() {
            return this.a[2];
        }

        public e e() {
            return this.a[1];
        }

        public boolean f(Token token) {
            e eVar = this.a[1];
            return eVar != null && eVar.a == token;
        }
    }

    public static class e {
        public final Token a;
        public final int b;

        public e(Token token, int i) {
            this.a = token;
            this.b = i;
        }
    }

    public static class f {
        public final boolean a;
        public final boolean b;

        public f(boolean z, boolean z2) {
            this.a = z;
            this.b = z2;
        }
    }

    public static class g extends e {
        public final f c;

        public g(Token token, int i, f fVar) {
            super(token, i);
            this.c = fVar;
        }
    }

    public static class h {
        public final Token a;
        public final int b;
        public final int c;

        public h(Token token, int i, int i2) {
            this.a = token;
            this.b = i;
            this.c = i2;
        }
    }

    public nk5(String str, int i) {
        this.a = new opa(str, 0, i);
        this.b = new d();
        this.c = new Stack();
        this.d = new Stack();
    }

    public boolean a(Token token) {
        return token.isOp || token == Token.RETURN || token == Token.CASE;
    }

    public h b() throws ParsingException {
        Token tokenT = this.a.t();
        if ((tokenT == Token.DIV || tokenT == Token.ASSIGN_DIV) && h()) {
            this.a.w(tokenT);
            tokenT = Token.REGEXP;
        }
        opa opaVar = this.a;
        h hVar = new h(tokenT, opaVar.o, opaVar.p);
        i(hVar);
        return hVar;
    }

    public void c(int i) throws ParsingException {
        if (!this.c.isEmpty()) {
            this.b.c(new c(Token.RC, this.a.k, (b) this.c.pop()));
            return;
        }
        throw new ParsingException("unmatched closing brace at " + i);
    }

    public void d(int i) throws ParsingException {
        if (!this.d.isEmpty()) {
            this.b.c(new g(Token.RP, this.a.k, (f) this.d.pop()));
            return;
        }
        throw new ParsingException("unmached closing paren at " + i);
    }

    public void e() {
        boolean z = true;
        if (this.b.a() != null) {
            int i = a.a[this.b.a().a.ordinal()];
            if (i != 1 && i != 2) {
                switch (i) {
                    case 5:
                        z = false;
                        break;
                    case 6:
                        if (this.c.isEmpty() || !((b) this.c.lastElement()).a) {
                            z = false;
                        }
                        break;
                    case 7:
                    case 8:
                    case 9:
                        if (this.b.e() == null || this.b.e().b == this.a.k) {
                            z = false;
                        }
                        break;
                    default:
                        z = true ^ this.b.a().a.isOp;
                        break;
                }
            } else {
                z = false;
            }
        }
        b bVar = new b(z, ((this.b.a() instanceof g) && this.b.a().a == Token.RP) ? ((g) this.b.a()).c : null);
        this.c.push(bVar);
        this.b.c(new c(Token.LC, this.a.k, bVar));
    }

    public void f() {
        d dVar = this.b;
        Token token = Token.FUNCTION;
        f fVar = new f(!dVar.b(token) ? !(this.b.f(token) && this.b.d() != null && a(this.b.d().a)) : this.b.e() == null || !a(this.b.e().a), this.b.a() != null && this.b.a().a.isConditional());
        this.d.push(fVar);
        this.b.c(new g(Token.LP, this.a.k, fVar));
    }

    public boolean g() {
        return this.c.isEmpty() && this.d.isEmpty();
    }

    public boolean h() {
        if (this.b.a() == null) {
            return true;
        }
        Token token = this.b.a().a;
        if (token.isKeyw) {
            return token != Token.THIS;
        }
        if (token == Token.RP && (this.b.a() instanceof g)) {
            return ((g) this.b.a()).c.b;
        }
        if (token != Token.RC || !(this.b.a() instanceof c)) {
            return token.isPunct && token != Token.RB;
        }
        b bVar = ((c) this.b.a()).c;
        if (!bVar.a) {
            return false;
        }
        f fVar = bVar.b;
        if (fVar != null) {
            return !fVar.a;
        }
        return true;
    }

    public void i(h hVar) throws ParsingException {
        Token token = hVar.a;
        if (token.isPunct) {
            int i = a.a[token.ordinal()];
            if (i == 1) {
                f();
                return;
            }
            if (i == 2) {
                e();
                return;
            } else if (i == 3) {
                d(hVar.b);
                return;
            } else if (i == 4) {
                c(hVar.b);
                return;
            }
        }
        Token token2 = hVar.a;
        if (token2 != Token.COMMENT) {
            this.b.c(new e(token2, this.a.k));
        }
    }

    public nk5(String str) {
        this(str, 0);
    }
}
