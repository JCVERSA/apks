package defpackage;

import freemarker.ext.dom.d;
import freemarker.template.TemplateModelException;
import org.w3c.dom.DocumentType;

public class iw2 extends d {
    public iw2(DocumentType documentType) {
        super(documentType);
    }

    @Override
    public String d() {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("@document_type$");
        stringBuffer.append(((DocumentType) this.b).getNodeName());
        return stringBuffer.toString();
    }

    @Override
    public zfa get(String str) throws TemplateModelException {
        throw new TemplateModelException("accessing properties of a DTD is not currently supported");
    }

    @Override
    public boolean isEmpty() {
        return true;
    }
}
