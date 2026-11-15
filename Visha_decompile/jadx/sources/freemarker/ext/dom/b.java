package freemarker.ext.dom;

import defpackage.h17;
import defpackage.mga;
import defpackage.n0a;
import defpackage.nga;
import defpackage.zfa;
import freemarker.core.Environment;
import freemarker.template.SimpleScalar;
import freemarker.template.TemplateModelException;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import org.w3c.dom.Attr;
import org.w3c.dom.Element;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;

public class b extends d implements mga {
    public b(Element element) {
        super(element);
    }

    @Override
    public String c() {
        String strD = d();
        String strG = g();
        if (strG == null || strG.length() == 0) {
            return strD;
        }
        Environment environmentY0 = Environment.y0();
        String strF0 = environmentY0.F0();
        String strB1 = (strF0 == null || !strF0.equals(strG)) ? environmentY0.b1(strG) : "D";
        if (strB1 == null) {
            return null;
        }
        if (strB1.length() > 0) {
            StringBuffer stringBuffer = new StringBuffer();
            stringBuffer.append(strB1);
            stringBuffer.append(StringUtils.PROCESS_POSTFIX_DELIMITER);
            strB1 = stringBuffer.toString();
        }
        StringBuffer stringBuffer2 = new StringBuffer();
        stringBuffer2.append(strB1);
        stringBuffer2.append(strD);
        return stringBuffer2.toString();
    }

    @Override
    public String d() {
        String localName = this.b.getLocalName();
        return (localName == null || localName.equals("")) ? this.b.getNodeName() : localName;
    }

    @Override
    public zfa get(String str) throws TemplateModelException {
        if (str.equals("*")) {
            NodeListModel nodeListModel = new NodeListModel(this);
            nga ngaVarK = k();
            for (int i = 0; i < ngaVarK.size(); i++) {
                d dVar = (d) ngaVarK.get(i);
                if (dVar.b.getNodeType() == 1) {
                    nodeListModel.add(dVar);
                }
            }
            return nodeListModel;
        }
        if (str.equals("**")) {
            return new NodeListModel(((Element) this.b).getElementsByTagName("*"), this);
        }
        if (str.startsWith("@")) {
            if (str.equals("@@") || str.equals("@*")) {
                return new NodeListModel(this.b.getAttributes(), this);
            }
            if (str.equals("@@start_tag")) {
                return new SimpleScalar(new h17(this.b).d((Element) this.b));
            }
            if (str.equals("@@end_tag")) {
                return new SimpleScalar(new h17(this.b).c((Element) this.b));
            }
            if (str.equals("@@attributes_markup")) {
                StringBuffer stringBuffer = new StringBuffer();
                new h17(this.b).e(this.b.getAttributes(), stringBuffer);
                return new SimpleScalar(stringBuffer.toString().trim());
            }
            if (n0a.B(str.substring(1))) {
                Attr attrR = r(str.substring(1));
                return attrR == null ? new NodeListModel(this) : d.q(attrR);
            }
        }
        if (!n0a.B(str)) {
            return super.get(str);
        }
        NodeListModel nodeListModelFilterByName = ((NodeListModel) k()).filterByName(str);
        return nodeListModelFilterByName.size() == 1 ? nodeListModelFilterByName.get(0) : nodeListModelFilterByName;
    }

    @Override
    public String getAsString() throws TemplateModelException {
        NodeList childNodes = this.b.getChildNodes();
        String string = "";
        for (int i = 0; i < childNodes.getLength(); i++) {
            Node nodeItem = childNodes.item(i);
            short nodeType = nodeItem.getNodeType();
            if (nodeType == 1) {
                StringBuffer stringBuffer = new StringBuffer();
                stringBuffer.append("Only elements with no child elements can be processed as text.\nThis element with name \"");
                stringBuffer.append(this.b.getNodeName());
                stringBuffer.append("\" has a child element named: ");
                stringBuffer.append(nodeItem.getNodeName());
                throw new TemplateModelException(stringBuffer.toString());
            }
            if (nodeType == 3 || nodeType == 4) {
                StringBuffer stringBuffer2 = new StringBuffer();
                stringBuffer2.append(string);
                stringBuffer2.append(nodeItem.getNodeValue());
                string = stringBuffer2.toString();
            }
        }
        return string;
    }

    @Override
    public boolean isEmpty() {
        return false;
    }

    public final Attr r(String str) {
        int iIndexOf;
        Element element = (Element) this.b;
        Attr attributeNode = element.getAttributeNode(str);
        if (attributeNode != null || (iIndexOf = str.indexOf(58)) <= 0) {
            return attributeNode;
        }
        String strSubstring = str.substring(0, iIndexOf);
        String strF0 = strSubstring.equals("D") ? Environment.y0().F0() : Environment.y0().V0(strSubstring);
        return strF0 != null ? element.getAttributeNodeNS(strF0, str.substring(iIndexOf + 1)) : attributeNode;
    }

    public boolean s(String str, Environment environment) {
        return n0a.N(str, d(), g(), environment);
    }
}
