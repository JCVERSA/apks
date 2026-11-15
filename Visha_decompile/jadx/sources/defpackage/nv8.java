package defpackage;

import freemarker.core.Environment;
import freemarker.template.TemplateModelException;
import freemarker.template.utility.UndeclaredThrowableException;
import java.util.Collection;

public class nv8 extends lv8.d {
    public final lv8.c b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public nv8(lv8.c cVar) {
        super();
        this.b = cVar;
    }

    @Override
    public Collection c() {
        try {
            return ((Environment) this.b.b).O0();
        } catch (TemplateModelException e) {
            throw new UndeclaredThrowableException(e);
        }
    }

    @Override
    public zfa get(String str) {
        return ((Environment) this.b.b).m1(str);
    }
}
