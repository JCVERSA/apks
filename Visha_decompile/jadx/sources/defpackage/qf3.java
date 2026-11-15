package defpackage;

import freemarker.core.f1;
import freemarker.template.TemplateModelException;
import java.util.List;

public final class qf3 implements yfa {
    @Override
    public Object exec(List list) throws TemplateModelException {
        int size = list.size();
        if (size == 0) {
            throw f1.k("?default", size, 1, Integer.MAX_VALUE);
        }
        for (int i = 0; i < size; i++) {
            zfa zfaVar = (zfa) list.get(i);
            if (zfaVar != null) {
                return zfaVar;
            }
        }
        return null;
    }
}
