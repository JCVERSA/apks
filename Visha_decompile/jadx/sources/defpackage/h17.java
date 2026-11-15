package defpackage;

import freemarker.core.Environment;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import java.util.HashMap;
import org.w3c.dom.Attr;
import org.w3c.dom.Document;
import org.w3c.dom.DocumentType;
import org.w3c.dom.Element;
import org.w3c.dom.NamedNodeMap;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;

public class h17 {
    public Element a;
    public Environment b;
    public String c;
    public boolean d;
    public boolean e;
    public HashMap f = new HashMap();
    public String g;

    public h17(Node node) {
        if (node instanceof Element) {
            i((Element) node);
        } else if (node instanceof Attr) {
            i(((Attr) node).getOwnerElement());
        } else if (node instanceof Document) {
            i(((Document) node).getDocumentElement());
        }
    }

    public final void a(Node node) {
        String namespaceURI = node.getNamespaceURI();
        if (namespaceURI != null && namespaceURI.length() > 0) {
            this.f.put(namespaceURI, this.b.b1(namespaceURI));
        } else if (this.d && node.getNodeType() == 1) {
            this.f.put(this.c, "D");
            this.e = true;
        } else if (node.getNodeType() == 2 && this.d && this.c.equals(namespaceURI)) {
            this.f.put(this.c, "D");
            this.e = true;
        }
        NodeList childNodes = node.getChildNodes();
        for (int i = 0; i < childNodes.getLength(); i++) {
            a(childNodes.item(i));
        }
    }

    public final void b() {
        StringBuffer stringBuffer = new StringBuffer();
        if (this.e) {
            stringBuffer.append(" xmlns=\"");
            stringBuffer.append(this.c);
            stringBuffer.append("\"");
        }
        for (String str : this.f.keySet()) {
            if (str != null && str.length() != 0) {
                String str2 = (String) this.f.get(str);
                if (str2 == null) {
                    int i = 0;
                    while (i < 26) {
                        str2 = new String(new char[]{(char) (i + 97)});
                        if (this.b.V0(str2) == null) {
                            break;
                        }
                        i++;
                        str2 = null;
                    }
                    if (str2 == null) {
                        throw new RuntimeException("This will almost never happen!");
                    }
                    this.f.put(str, str2);
                }
                stringBuffer.append(" xmlns");
                if (str2.length() > 0) {
                    stringBuffer.append(StringUtils.PROCESS_POSTFIX_DELIMITER);
                    stringBuffer.append(str2);
                }
                stringBuffer.append("=\"");
                stringBuffer.append(str);
                stringBuffer.append("\"");
            }
        }
        this.g = stringBuffer.toString();
    }

    public String c(Element element) {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("</");
        h(element, stringBuffer);
        stringBuffer.append('>');
        return stringBuffer.toString();
    }

    public String d(Element element) {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append('<');
        h(element, stringBuffer);
        stringBuffer.append(this.g);
        e(element.getAttributes(), stringBuffer);
        stringBuffer.append('>');
        return stringBuffer.toString();
    }

    public void e(NamedNodeMap namedNodeMap, StringBuffer stringBuffer) {
        for (int i = 0; i < namedNodeMap.getLength(); i++) {
            Node nodeItem = namedNodeMap.item(i);
            if (nodeItem.getNodeType() != 2 || (!nodeItem.getNodeName().startsWith("xmlns:") && !nodeItem.getNodeName().equals("xmlns"))) {
                f(nodeItem, stringBuffer);
            }
        }
    }

    public void f(Node node, StringBuffer stringBuffer) {
        switch (node.getNodeType()) {
            case 1:
                stringBuffer.append('<');
                h(node, stringBuffer);
                if (node == this.a) {
                    stringBuffer.append(this.g);
                }
                e(node.getAttributes(), stringBuffer);
                if (node.getChildNodes().getLength() != 0) {
                    stringBuffer.append('>');
                    g(node.getChildNodes(), stringBuffer);
                    stringBuffer.append("</");
                    h(node, stringBuffer);
                    stringBuffer.append('>');
                } else {
                    stringBuffer.append(" />");
                }
                break;
            case 2:
                if (((Attr) node).getSpecified()) {
                    stringBuffer.append(' ');
                    h(node, stringBuffer);
                    stringBuffer.append("=\"");
                    stringBuffer.append(n0a.m(node.getNodeValue()));
                    stringBuffer.append('\"');
                }
                break;
            case 3:
            case 4:
                stringBuffer.append(n0a.l(node.getNodeValue()));
                break;
            case 5:
                stringBuffer.append('&');
                stringBuffer.append(node.getNodeName());
                stringBuffer.append(';');
                break;
            case 6:
                g(node.getChildNodes(), stringBuffer);
                break;
            case 7:
                stringBuffer.append("<?");
                stringBuffer.append(node.getNodeName());
                stringBuffer.append(' ');
                stringBuffer.append(node.getNodeValue());
                stringBuffer.append("?>");
                break;
            case 8:
                stringBuffer.append("<!--");
                stringBuffer.append(node.getNodeValue());
                stringBuffer.append("-->");
                break;
            case 9:
                g(node.getChildNodes(), stringBuffer);
                break;
            case 10:
                stringBuffer.append("<!DOCTYPE ");
                stringBuffer.append(node.getNodeName());
                DocumentType documentType = (DocumentType) node;
                if (documentType.getPublicId() != null) {
                    stringBuffer.append(" PUBLIC \"");
                    stringBuffer.append(documentType.getPublicId());
                    stringBuffer.append('\"');
                }
                if (documentType.getSystemId() != null) {
                    stringBuffer.append(" \"");
                    stringBuffer.append(documentType.getSystemId());
                    stringBuffer.append('\"');
                }
                if (documentType.getInternalSubset() != null) {
                    stringBuffer.append(" [");
                    stringBuffer.append(documentType.getInternalSubset());
                    stringBuffer.append(']');
                }
                stringBuffer.append('>');
                break;
        }
    }

    public void g(NodeList nodeList, StringBuffer stringBuffer) {
        for (int i = 0; i < nodeList.getLength(); i++) {
            f(nodeList.item(i), stringBuffer);
        }
    }

    public final void h(Node node, StringBuffer stringBuffer) {
        String namespaceURI = node.getNamespaceURI();
        if (namespaceURI == null || namespaceURI.length() == 0) {
            stringBuffer.append(node.getNodeName());
            return;
        }
        String str = (String) this.f.get(namespaceURI);
        if (str == null) {
            stringBuffer.append(node.getNodeName());
            return;
        }
        if (str.length() > 0) {
            stringBuffer.append(str);
            stringBuffer.append(':');
        }
        stringBuffer.append(node.getLocalName());
    }

    public final void i(Element element) {
        this.a = element;
        Environment environmentY0 = Environment.y0();
        this.b = environmentY0;
        String strF0 = environmentY0.F0();
        this.c = strF0;
        this.d = strF0 != null && strF0.length() > 0;
        this.f.put(null, "");
        this.f.put("", "");
        a(element);
        if (!this.e && this.d) {
            this.f.put(this.c, "");
        }
        b();
    }
}
