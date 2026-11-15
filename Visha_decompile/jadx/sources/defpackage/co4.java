package defpackage;

import freemarker.ext.beans.b;
import freemarker.template.TemplateModelException;
import freemarker.template.utility.UndeclaredThrowableException;
import java.util.AbstractMap;
import java.util.Set;

public class co4 extends AbstractMap implements aga {
    public final b b;
    public final ofa c;
    public Set d;

    public co4(ofa ofaVar, b bVar) {
        this.c = ofaVar;
        this.b = bVar;
    }

    @Override
    public zfa b() {
        return this.c;
    }

    @Override
    public boolean containsKey(Object obj) {
        if (get(obj) != null) {
            return true;
        }
        return super.containsKey(obj);
    }

    public final pfa d() {
        ofa ofaVar = this.c;
        if (ofaVar instanceof pfa) {
            return (pfa) ofaVar;
        }
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("Operation supported only on TemplateHashModelEx. ");
        stringBuffer.append(this.c.getClass().getName());
        stringBuffer.append(" does not implement it though.");
        throw new UnsupportedOperationException(stringBuffer.toString());
    }

    @Override
    public Set entrySet() {
        Set set = this.d;
        if (set != null) {
            return set;
        }
        bo4 bo4Var = new bo4(this);
        this.d = bo4Var;
        return bo4Var;
    }

    @Override
    public Object get(Object obj) {
        try {
            return this.b.b(this.c.get(String.valueOf(obj)));
        } catch (TemplateModelException e) {
            throw new UndeclaredThrowableException(e);
        }
    }

    @Override
    public boolean isEmpty() {
        try {
            return this.c.isEmpty();
        } catch (TemplateModelException e) {
            throw new UndeclaredThrowableException(e);
        }
    }
}
