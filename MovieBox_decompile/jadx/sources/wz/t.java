package wz;

import org.mvel2.compiler.BlankLiteral;

public class t implements org.mvel2.a {
    @Override
    public boolean a(Class cls) {
        return cls != BlankLiteral.class;
    }

    @Override
    public Object b(Object obj) {
        return String.valueOf(obj);
    }
}
