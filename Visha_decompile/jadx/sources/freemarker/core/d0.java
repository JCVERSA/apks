package freemarker.core;

import defpackage.nga;
import defpackage.zfa;
import freemarker.template.SimpleScalar;
import java.util.regex.Matcher;

public class d0 implements nga {
    public final Matcher b;
    public final g0.a c;

    public d0(g0.a aVar, Matcher matcher) {
        this.c = aVar;
        this.b = matcher;
    }

    @Override
    public zfa get(int i) throws _TemplateModelException {
        try {
            return new SimpleScalar(this.b.group(i));
        } catch (Exception e) {
            throw new _TemplateModelException(e, "Failed to read match group");
        }
    }

    @Override
    public int size() throws _TemplateModelException {
        try {
            return this.b.groupCount() + 1;
        } catch (Exception e) {
            throw new _TemplateModelException(e, "Failed to get match group count");
        }
    }
}
