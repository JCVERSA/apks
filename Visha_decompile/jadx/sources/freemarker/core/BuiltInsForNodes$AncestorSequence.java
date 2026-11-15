package freemarker.core;

import defpackage.gga;
import defpackage.n0a;
import defpackage.xfa;
import freemarker.template.SimpleSequence;
import freemarker.template.TemplateModelException;
import java.util.List;

class BuiltInsForNodes$AncestorSequence extends SimpleSequence implements xfa {
    private Environment env;

    public BuiltInsForNodes$AncestorSequence(Environment environment) {
        this.env = environment;
    }

    @Override
    public Object exec(List list) throws TemplateModelException {
        if (list == null || list.isEmpty()) {
            return this;
        }
        BuiltInsForNodes$AncestorSequence builtInsForNodes$AncestorSequence = new BuiltInsForNodes$AncestorSequence(this.env);
        for (int i = 0; i < size(); i++) {
            gga ggaVar = (gga) get(i);
            String strD = ggaVar.d();
            String strG = ggaVar.g();
            if (strG != null) {
                for (int i2 = 0; i2 < list.size(); i2++) {
                    if (n0a.N((String) list.get(i2), strD, strG, this.env)) {
                        builtInsForNodes$AncestorSequence.add(ggaVar);
                        break;
                    }
                }
            } else if (list.contains(strD)) {
                builtInsForNodes$AncestorSequence.add(ggaVar);
            }
        }
        return builtInsForNodes$AncestorSequence;
    }
}
