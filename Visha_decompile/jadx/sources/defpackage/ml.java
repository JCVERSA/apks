package defpackage;

import freemarker.core.Environment;
import freemarker.ext.dom.d;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import org.w3c.dom.Attr;

public class ml extends d implements mga {
    public ml(Attr attr) {
        super(attr);
    }

    @Override
    public String c() {
        String namespaceURI = this.b.getNamespaceURI();
        if (namespaceURI == null || namespaceURI.equals("")) {
            return this.b.getNodeName();
        }
        Environment environmentY0 = Environment.y0();
        String strB1 = namespaceURI.equals(environmentY0.F0()) ? "D" : environmentY0.b1(namespaceURI);
        if (strB1 == null) {
            return null;
        }
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append(strB1);
        stringBuffer.append(StringUtils.PROCESS_POSTFIX_DELIMITER);
        stringBuffer.append(this.b.getLocalName());
        return stringBuffer.toString();
    }

    @Override
    public String d() {
        String localName = this.b.getLocalName();
        return (localName == null || localName.equals("")) ? this.b.getNodeName() : localName;
    }

    @Override
    public String getAsString() {
        return ((Attr) this.b).getValue();
    }

    @Override
    public boolean isEmpty() {
        return true;
    }
}
