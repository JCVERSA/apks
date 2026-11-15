package defpackage;

import freemarker.template.TemplateException;

public class j0d extends f0d {
    public j0d(TemplateException templateException) {
        super(templateException);
    }

    @Override
    public String a(Object obj) {
        return ((TemplateException) obj).getMessageWithoutStackTop();
    }
}
