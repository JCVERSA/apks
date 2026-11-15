package freemarker.core;

import defpackage.jw7;
import defpackage.qu9;
import java.util.List;

public abstract class m extends qu9 {
    @Override
    public t0 J(String str, t0 t0Var, t0.a aVar) {
        t0 t0VarJ = super.J(str, t0Var, aVar);
        i0(t0VarJ, str, t0Var, aVar);
        return t0VarJ;
    }

    public abstract void h0(List list, Token token, Token token2);

    public abstract void i0(t0 t0Var, String str, t0 t0Var2, t0.a aVar);

    public abstract t0 j0(int i);

    public abstract List k0();

    public abstract int l0();

    public ParseException m0(String str, Token token, Token token2) {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("?");
        stringBuffer.append(this.i);
        stringBuffer.append("(...) ");
        stringBuffer.append(str);
        stringBuffer.append(" parameters");
        return new ParseException(stringBuffer.toString(), y(), token.beginLine, token.beginColumn, token2.endLine, token2.endColumn);
    }

    @Override
    public String o() {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append(super.o());
        stringBuffer.append("(");
        List listK0 = k0();
        int size = listK0.size();
        for (int i = 0; i < size; i++) {
            if (i != 0) {
                stringBuffer.append(", ");
            }
            stringBuffer.append(((t0) listK0.get(i)).o());
        }
        stringBuffer.append(")");
        return stringBuffer.toString();
    }

    @Override
    public String r() {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append(super.r());
        stringBuffer.append("(...)");
        return stringBuffer.toString();
    }

    @Override
    public int s() {
        return super.s() + l0();
    }

    @Override
    public jw7 t(int i) {
        int iS = super.s();
        if (i < iS) {
            return super.t(i);
        }
        if (i - iS < l0()) {
            return jw7.D;
        }
        throw new IndexOutOfBoundsException();
    }

    @Override
    public Object u(int i) {
        int iS = super.s();
        return i < iS ? super.u(i) : j0(i - iS);
    }
}
