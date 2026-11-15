package defpackage;

import freemarker.template.TemplateModelException;

public class mm9 extends z22 {
    public static final mm9 k0 = new mm9();

    @Override
    public zfa T(Object obj) throws TemplateModelException {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("SimpleObjectWrapper deliberately won't wrap this type: ");
        stringBuffer.append(obj.getClass().getName());
        throw new TemplateModelException(stringBuffer.toString());
    }

    @Override
    public ofa a(Object obj) throws TemplateModelException {
        throw new TemplateModelException("SimpleObjectWrapper deliberately doesn't allow ?api.");
    }
}
