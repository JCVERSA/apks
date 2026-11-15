package org.mozilla.javascript.xmlimpl;

import io.appmetrica.analytics.coreutils.internal.StringUtils;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.mozilla.javascript.Undefined;
import org.w3c.dom.Attr;
import org.w3c.dom.Comment;
import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.NamedNodeMap;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;
import org.w3c.dom.ProcessingInstruction;
import org.w3c.dom.Text;
import org.w3c.dom.UserDataHandler;
import org.xml.sax.SAXException;

class XmlNode implements Serializable {
    public static final String b = "org.mozilla.javascript.xmlimpl.XmlNode";
    private static final long serialVersionUID = 1;
    private Node dom;
    private UserDataHandler events = new XmlNodeUserDataHandler();
    private XML xml;

    public static class XmlNodeUserDataHandler implements UserDataHandler, Serializable {
        private static final long serialVersionUID = 4666895518900769588L;

        @Override
        public void handle(short s, String str, Object obj, Node node, Node node2) {
        }
    }

    public static abstract class a {
        public static final a a = new C0445a();
        public static final a b = new b();
        public static a c = new d();
        public static a d = new e();

        public static class C0445a extends a {
            @Override
            public boolean b(Node node) {
                return node.getNodeType() == 8;
            }
        }

        public static class b extends a {
            @Override
            public boolean b(Node node) {
                return node.getNodeType() == 3;
            }
        }

        public static class c extends a {
            public final XMLName e;

            public c(XMLName xMLName) {
                this.e = xMLName;
            }

            @Override
            public boolean b(Node node) {
                if (node.getNodeType() == 7) {
                    return this.e.matchesLocalName(((ProcessingInstruction) node).getTarget());
                }
                return false;
            }
        }

        public static class d extends a {
            @Override
            public boolean b(Node node) {
                return node.getNodeType() == 1;
            }
        }

        public static class e extends a {
            @Override
            public boolean b(Node node) {
                return true;
            }
        }

        public static a a(XMLName xMLName) {
            return new c(xMLName);
        }

        public abstract boolean b(Node node);
    }

    public static class b {
        public Map a = new HashMap();
        public Map b = new HashMap();

        public void a(Namespace namespace) {
            if (this.a.get(namespace.prefix) == null) {
                this.a.put(namespace.prefix, namespace.uri);
            }
            if (this.b.get(namespace.uri) == null) {
                this.b.put(namespace.uri, namespace.prefix);
            }
        }

        public Namespace b(String str) {
            if (this.a.get(str) == null) {
                return null;
            }
            return Namespace.create(str, (String) this.a.get(str));
        }

        public Namespace[] c() {
            ArrayList arrayList = new ArrayList();
            for (Map.Entry entry : this.a.entrySet()) {
                Namespace namespaceCreate = Namespace.create((String) entry.getKey(), (String) entry.getValue());
                if (!namespaceCreate.isEmpty()) {
                    arrayList.add(namespaceCreate);
                }
            }
            return (Namespace[]) arrayList.toArray(new Namespace[arrayList.size()]);
        }
    }

    private XmlNode() {
    }

    public static XmlNode b(XmlNode xmlNode) {
        return c(xmlNode.dom.cloneNode(true));
    }

    public static XmlNode c(Node node) {
        if (node instanceof Document) {
            throw new IllegalArgumentException();
        }
        if (i(node) != null) {
            return i(node);
        }
        XmlNode xmlNode = new XmlNode();
        xmlNode.dom = node;
        k(node, xmlNode);
        return xmlNode;
    }

    public static XmlNode createElement(XmlProcessor xmlProcessor, String str, String str2) throws SAXException {
        return c(xmlProcessor.toXml(str, str2));
    }

    public static XmlNode createElementFromNode(Node node) {
        if (node instanceof Document) {
            node = ((Document) node).getDocumentElement();
        }
        return c(node);
    }

    public static XmlNode createEmpty(XmlProcessor xmlProcessor) {
        return createText(xmlProcessor, "");
    }

    public static XmlNode createText(XmlProcessor xmlProcessor, String str) {
        return c(xmlProcessor.newDocument().createTextNode(str));
    }

    public static XmlNode i(Node node) {
        return (XmlNode) node.getUserData(b);
    }

    public static void k(Node node, XmlNode xmlNode) {
        node.setUserData(b, xmlNode, xmlNode.events);
    }

    public static XmlNode newElementWithText(XmlProcessor xmlProcessor, XmlNode xmlNode, QName qName, String str) {
        if (xmlNode instanceof Document) {
            throw new IllegalArgumentException("Cannot use Document node as reference");
        }
        Document ownerDocument = xmlNode != null ? xmlNode.dom.getOwnerDocument() : xmlProcessor.newDocument();
        Node node = xmlNode != null ? xmlNode.dom : null;
        Namespace namespace = qName.getNamespace();
        Element elementCreateElementNS = (namespace == null || namespace.getUri().length() == 0) ? ownerDocument.createElementNS(null, qName.getLocalName()) : ownerDocument.createElementNS(namespace.getUri(), qName.qualify(node));
        if (str != null) {
            elementCreateElementNS.appendChild(ownerDocument.createTextNode(str));
        }
        return c(elementCreateElementNS);
    }

    public final void a(b bVar, Element element) {
        if (element == null) {
            throw new RuntimeException("element must not be null");
        }
        String strL = l(element.lookupNamespaceURI(null));
        if (!strL.equals(element.getParentNode() != null ? l(element.getParentNode().lookupNamespaceURI(null)) : "") || !(element.getParentNode() instanceof Element)) {
            bVar.a(Namespace.create("", strL));
        }
        NamedNodeMap attributes = element.getAttributes();
        for (int i = 0; i < attributes.getLength(); i++) {
            Attr attr = (Attr) attributes.item(i);
            if (attr.getPrefix() != null && attr.getPrefix().equals("xmlns")) {
                bVar.a(Namespace.create(attr.getLocalName(), attr.getValue()));
            }
        }
    }

    public void addMatchingChildren(XMLList xMLList, a aVar) {
        NodeList childNodes = this.dom.getChildNodes();
        for (int i = 0; i < childNodes.getLength(); i++) {
            Node nodeItem = childNodes.item(i);
            XmlNode xmlNodeC = c(nodeItem);
            if (aVar.b(nodeItem)) {
                xMLList.addToList(xmlNodeC);
            }
        }
    }

    public final XmlNode copy() {
        return b(this);
    }

    public final void d(Element element, String str, String str2) {
        if (str.length() <= 0) {
            element.setAttribute("xmlns", str2);
            return;
        }
        element.setAttributeNS("http://www.w3.org/2000/xmlns/", "xmlns:" + str, str2);
    }

    public String debug() {
        XmlProcessor xmlProcessor = new XmlProcessor();
        xmlProcessor.setIgnoreComments(false);
        xmlProcessor.setIgnoreProcessingInstructions(false);
        xmlProcessor.setIgnoreWhitespace(false);
        xmlProcessor.setPrettyPrinting(false);
        return xmlProcessor.ecmaToXmlString(this.dom);
    }

    public void declareNamespace(String str, String str2) {
        Node node = this.dom;
        if (!(node instanceof Element)) {
            throw new IllegalStateException();
        }
        if (node.lookupNamespaceURI(str2) == null || !this.dom.lookupNamespaceURI(str2).equals(str)) {
            d((Element) this.dom, str, str2);
        }
    }

    public void deleteMe() {
        Node node = this.dom;
        if (node instanceof Attr) {
            Attr attr = (Attr) node;
            attr.getOwnerElement().getAttributes().removeNamedItemNS(attr.getNamespaceURI(), attr.getLocalName());
        } else if (node.getParentNode() != null) {
            this.dom.getParentNode().removeChild(this.dom);
        }
    }

    public final b e() {
        b bVar = new b();
        Node parentNode = this.dom;
        if (parentNode instanceof Attr) {
            parentNode = ((Attr) parentNode).getOwnerElement();
        }
        while (parentNode != null) {
            if (parentNode instanceof Element) {
                a(bVar, (Element) parentNode);
            }
            parentNode = parentNode.getParentNode();
        }
        bVar.a(Namespace.create("", ""));
        return bVar;
    }

    public String ecmaToXMLString(XmlProcessor xmlProcessor) {
        if (!isElementType()) {
            return xmlProcessor.ecmaToXmlString(this.dom);
        }
        Element element = (Element) this.dom.cloneNode(true);
        Namespace[] inScopeNamespaces = getInScopeNamespaces();
        for (int i = 0; i < inScopeNamespaces.length; i++) {
            d(element, inScopeNamespaces[i].getPrefix(), inScopeNamespaces[i].getUri());
        }
        return xmlProcessor.ecmaToXmlString(element);
    }

    public String ecmaValue() {
        if (isTextType()) {
            return ((Text) this.dom).getData();
        }
        if (isAttributeType()) {
            return ((Attr) this.dom).getValue();
        }
        if (isProcessingInstructionType()) {
            return ((ProcessingInstruction) this.dom).getData();
        }
        if (isCommentType()) {
            return ((Comment) this.dom).getNodeValue();
        }
        if (isElementType()) {
            throw new RuntimeException("Unimplemented ecmaValue() for elements.");
        }
        throw new RuntimeException("Unimplemented for node " + this.dom);
    }

    public final Namespace f() {
        return Namespace.create("", this.dom.lookupNamespaceURI(null) == null ? "" : this.dom.lookupNamespaceURI(null));
    }

    public final String g(Namespace namespace) {
        return f().getUri().equals(namespace.getUri()) ? "" : this.dom.lookupPrefix(namespace.getUri());
    }

    public String getAttributeValue() {
        return ((Attr) this.dom).getValue();
    }

    public XmlNode[] getAttributes() {
        NamedNodeMap attributes = this.dom.getAttributes();
        if (attributes == null) {
            throw new IllegalStateException("Must be element.");
        }
        XmlNode[] xmlNodeArr = new XmlNode[attributes.getLength()];
        for (int i = 0; i < attributes.getLength(); i++) {
            xmlNodeArr[i] = c(attributes.item(i));
        }
        return xmlNodeArr;
    }

    public XmlNode getChild(int i) {
        return c(this.dom.getChildNodes().item(i));
    }

    public int getChildCount() {
        return this.dom.getChildNodes().getLength();
    }

    public int getChildIndex() {
        if (isAttributeType() || parent() == null) {
            return -1;
        }
        NodeList childNodes = this.dom.getParentNode().getChildNodes();
        for (int i = 0; i < childNodes.getLength(); i++) {
            if (childNodes.item(i) == this.dom) {
                return i;
            }
        }
        throw new RuntimeException("Unreachable.");
    }

    public Namespace[] getInScopeNamespaces() {
        return e().c();
    }

    public XmlNode[] getMatchingChildren(a aVar) {
        ArrayList arrayList = new ArrayList();
        NodeList childNodes = this.dom.getChildNodes();
        for (int i = 0; i < childNodes.getLength(); i++) {
            Node nodeItem = childNodes.item(i);
            if (aVar.b(nodeItem)) {
                arrayList.add(c(nodeItem));
            }
        }
        return (XmlNode[]) arrayList.toArray(new XmlNode[arrayList.size()]);
    }

    public Namespace getNamespace() {
        return h();
    }

    public Namespace getNamespaceDeclaration(String str) {
        return (str.equals("") && (this.dom instanceof Attr)) ? Namespace.create("", "") : e().b(str);
    }

    public Namespace[] getNamespaceDeclarations() {
        if (!(this.dom instanceof Element)) {
            return new Namespace[0];
        }
        b bVar = new b();
        a(bVar, (Element) this.dom);
        return bVar.c();
    }

    public final QName getQname() {
        return QName.create(this.dom.getNamespaceURI() == null ? "" : this.dom.getNamespaceURI(), this.dom.getLocalName(), this.dom.getPrefix() != null ? this.dom.getPrefix() : "");
    }

    public XML getXml() {
        return this.xml;
    }

    public final Namespace h() {
        String namespaceURI = this.dom.getNamespaceURI();
        String prefix = this.dom.getPrefix();
        if (namespaceURI == null) {
            namespaceURI = "";
        }
        if (prefix == null) {
            prefix = "";
        }
        return Namespace.create(prefix, namespaceURI);
    }

    public boolean hasChildElement() {
        NodeList childNodes = this.dom.getChildNodes();
        for (int i = 0; i < childNodes.getLength(); i++) {
            if (childNodes.item(i).getNodeType() == 1) {
                return true;
            }
        }
        return false;
    }

    public void insertChildAt(int i, XmlNode xmlNode) {
        Node node = this.dom;
        Node nodeImportNode = node.getOwnerDocument().importNode(xmlNode.dom, true);
        if (node.getChildNodes().getLength() >= i) {
            if (node.getChildNodes().getLength() == i) {
                node.appendChild(nodeImportNode);
                return;
            } else {
                node.insertBefore(nodeImportNode, node.getChildNodes().item(i));
                return;
            }
        }
        throw new IllegalArgumentException("index=" + i + " length=" + node.getChildNodes().getLength());
    }

    public void insertChildrenAt(int i, XmlNode[] xmlNodeArr) {
        for (int i2 = 0; i2 < xmlNodeArr.length; i2++) {
            insertChildAt(i + i2, xmlNodeArr[i2]);
        }
    }

    public void invalidateNamespacePrefix() {
        Node node = this.dom;
        if (!(node instanceof Element)) {
            throw new IllegalStateException();
        }
        String prefix = node.getPrefix();
        renameNode(QName.create(this.dom.getNamespaceURI(), this.dom.getLocalName(), null));
        NamedNodeMap attributes = this.dom.getAttributes();
        for (int i = 0; i < attributes.getLength(); i++) {
            if (attributes.item(i).getPrefix().equals(prefix)) {
                c(attributes.item(i)).renameNode(QName.create(attributes.item(i).getNamespaceURI(), attributes.item(i).getLocalName(), null));
            }
        }
    }

    public final boolean isAttributeType() {
        return this.dom.getNodeType() == 2;
    }

    public final boolean isCommentType() {
        return this.dom.getNodeType() == 8;
    }

    public final boolean isElementType() {
        return this.dom.getNodeType() == 1;
    }

    public final boolean isParentType() {
        return isElementType();
    }

    public final boolean isProcessingInstructionType() {
        return this.dom.getNodeType() == 7;
    }

    public boolean isSameNode(XmlNode xmlNode) {
        return this.dom == xmlNode.dom;
    }

    public final boolean isTextType() {
        return this.dom.getNodeType() == 3 || this.dom.getNodeType() == 4;
    }

    public final void j(String str) {
        ProcessingInstruction processingInstruction = (ProcessingInstruction) this.dom;
        processingInstruction.getParentNode().replaceChild(processingInstruction, processingInstruction.getOwnerDocument().createProcessingInstruction(str, processingInstruction.getData()));
    }

    public final String l(String str) {
        return str == null ? "" : str;
    }

    public void normalize() {
        this.dom.normalize();
    }

    public XmlNode parent() {
        Node parentNode = this.dom.getParentNode();
        if ((parentNode instanceof Document) || parentNode == null) {
            return null;
        }
        return c(parentNode);
    }

    public void removeChild(int i) {
        Node node = this.dom;
        node.removeChild(node.getChildNodes().item(i));
    }

    public void removeNamespace(Namespace namespace) {
        if (namespace.is(h())) {
            return;
        }
        NamedNodeMap attributes = this.dom.getAttributes();
        for (int i = 0; i < attributes.getLength(); i++) {
            if (namespace.is(c(attributes.item(i)).h())) {
                return;
            }
        }
        String strG = g(namespace);
        if (strG != null) {
            if (namespace.isUnspecifiedPrefix()) {
                declareNamespace(strG, f().getUri());
            } else if (strG.equals(namespace.getPrefix())) {
                declareNamespace(strG, f().getUri());
            }
        }
    }

    public final void renameNode(QName qName) {
        this.dom = this.dom.getOwnerDocument().renameNode(this.dom, qName.getNamespace().getUri(), qName.qualify(this.dom));
    }

    public void replaceWith(XmlNode xmlNode) {
        Node nodeImportNode = xmlNode.dom;
        if (nodeImportNode.getOwnerDocument() != this.dom.getOwnerDocument()) {
            nodeImportNode = this.dom.getOwnerDocument().importNode(nodeImportNode, true);
        }
        this.dom.getParentNode().replaceChild(nodeImportNode, this.dom);
    }

    public void setAttribute(QName qName, String str) {
        Node node = this.dom;
        if (!(node instanceof Element)) {
            throw new IllegalStateException("Can only set attribute on elements.");
        }
        qName.setAttribute((Element) node, str);
    }

    public final void setLocalName(String str) {
        Node node = this.dom;
        if (node instanceof ProcessingInstruction) {
            j(str);
            return;
        }
        String prefix = node.getPrefix();
        if (prefix == null) {
            prefix = "";
        }
        Document ownerDocument = this.dom.getOwnerDocument();
        Node node2 = this.dom;
        this.dom = ownerDocument.renameNode(node2, node2.getNamespaceURI(), QName.qualify(prefix, str));
    }

    public void setXml(XML xml) {
        this.xml = xml;
    }

    public Node toDomNode() {
        return this.dom;
    }

    public String toString() {
        return "XmlNode: type=" + ((int) this.dom.getNodeType()) + " dom=" + this.dom.toString();
    }

    public String toXmlString(XmlProcessor xmlProcessor) {
        return xmlProcessor.ecmaToXmlString(this.dom);
    }

    public static class InternalList implements Serializable {
        private static final long serialVersionUID = -3633151157292048978L;
        private List<XmlNode> list = new ArrayList();

        public final void a(XmlNode xmlNode) {
            this.list.add(xmlNode);
        }

        public void add(InternalList internalList) {
            for (int i = 0; i < internalList.length(); i++) {
                a(internalList.item(i));
            }
        }

        public void addToList(Object obj) {
            if (obj instanceof Undefined) {
                return;
            }
            if (obj instanceof XMLList) {
                XMLList xMLList = (XMLList) obj;
                for (int i = 0; i < xMLList.length(); i++) {
                    a(xMLList.item(i).getAnnotation());
                }
                return;
            }
            if (obj instanceof XML) {
                a(((XML) obj).getAnnotation());
            } else if (obj instanceof XmlNode) {
                a((XmlNode) obj);
            }
        }

        public XmlNode item(int i) {
            return this.list.get(i);
        }

        public int length() {
            return this.list.size();
        }

        public void remove(int i) {
            this.list.remove(i);
        }

        public void add(InternalList internalList, int i, int i2) {
            while (i < i2) {
                a(internalList.item(i));
                i++;
            }
        }

        public void add(XmlNode xmlNode) {
            a(xmlNode);
        }

        public void add(XML xml) {
            a(xml.getAnnotation());
        }
    }

    public static class QName implements Serializable {
        private static final long serialVersionUID = -6587069811691451077L;
        private String localName;
        private Namespace namespace;

        private QName() {
        }

        public static QName create(Namespace namespace, String str) {
            if (str != null && str.equals("*")) {
                throw new RuntimeException("* is not valid localName");
            }
            QName qName = new QName();
            qName.namespace = namespace;
            qName.localName = str;
            return qName;
        }

        public static String qualify(String str, String str2) {
            if (str == null) {
                throw new IllegalArgumentException("prefix must not be null");
            }
            if (str.length() <= 0) {
                return str2;
            }
            return str + StringUtils.PROCESS_POSTFIX_DELIMITER + str2;
        }

        public final boolean a(String str, String str2) {
            if (str == null && str2 == null) {
                return true;
            }
            if (str == null || str2 == null) {
                return false;
            }
            return str.equals(str2);
        }

        public final boolean b(Namespace namespace, Namespace namespace2) {
            if (namespace == null && namespace2 == null) {
                return true;
            }
            if (namespace == null || namespace2 == null) {
                return false;
            }
            return a(namespace.getUri(), namespace2.getUri());
        }

        public final boolean equals(QName qName) {
            return b(this.namespace, qName.namespace) && a(this.localName, qName.localName);
        }

        public String getLocalName() {
            return this.localName;
        }

        public Namespace getNamespace() {
            return this.namespace;
        }

        public int hashCode() {
            String str = this.localName;
            if (str == null) {
                return 0;
            }
            return str.hashCode();
        }

        public void lookupPrefix(Node node) {
            if (node == null) {
                throw new IllegalArgumentException("node must not be null");
            }
            String strLookupPrefix = node.lookupPrefix(this.namespace.getUri());
            if (strLookupPrefix == null) {
                String strLookupNamespaceURI = node.lookupNamespaceURI(null);
                if (strLookupNamespaceURI == null) {
                    strLookupNamespaceURI = "";
                }
                if (this.namespace.getUri().equals(strLookupNamespaceURI)) {
                    strLookupPrefix = "";
                }
            }
            int i = 0;
            while (strLookupPrefix == null) {
                StringBuilder sb = new StringBuilder();
                sb.append("e4x_");
                int i2 = i + 1;
                sb.append(i);
                String string = sb.toString();
                if (node.lookupNamespaceURI(string) == null) {
                    Node parentNode = node;
                    while (parentNode.getParentNode() != null && (parentNode.getParentNode() instanceof Element)) {
                        parentNode = parentNode.getParentNode();
                    }
                    ((Element) parentNode).setAttributeNS("http://www.w3.org/2000/xmlns/", "xmlns:" + string, this.namespace.getUri());
                    strLookupPrefix = string;
                }
                i = i2;
            }
            this.namespace.a(strLookupPrefix);
        }

        public void setAttribute(Element element, String str) {
            if (this.namespace.getPrefix() == null) {
                lookupPrefix(element);
            }
            element.setAttributeNS(this.namespace.getUri(), qualify(this.namespace.getPrefix(), this.localName), str);
        }

        public String toString() {
            return "XmlNode.QName [" + this.localName + StringUtils.COMMA + this.namespace + "]";
        }

        public boolean equals(Object obj) {
            if (obj instanceof QName) {
                return equals((QName) obj);
            }
            return false;
        }

        public String qualify(Node node) {
            if (this.namespace.getPrefix() == null) {
                if (node != null) {
                    lookupPrefix(node);
                } else {
                    this.namespace.a("");
                }
            }
            return qualify(this.namespace.getPrefix(), this.localName);
        }

        @Deprecated
        public static QName create(String str, String str2, String str3) {
            return create(Namespace.create(str3, str), str2);
        }
    }

    public static class Namespace implements Serializable {
        static final Namespace GLOBAL = create("", "");
        private static final long serialVersionUID = 4073904386884677090L;
        private String prefix;
        private String uri;

        private Namespace() {
        }

        public static Namespace create(String str, String str2) {
            if (str == null) {
                throw new IllegalArgumentException("Empty string represents default namespace prefix");
            }
            if (str2 == null) {
                throw new IllegalArgumentException("Namespace may not lack a URI");
            }
            Namespace namespace = new Namespace();
            namespace.prefix = str;
            namespace.uri = str2;
            return namespace;
        }

        public final void a(String str) {
            if (str == null) {
                throw new IllegalArgumentException();
            }
            this.prefix = str;
        }

        public String getPrefix() {
            return this.prefix;
        }

        public String getUri() {
            return this.uri;
        }

        public boolean is(Namespace namespace) {
            String str;
            String str2 = this.prefix;
            return str2 != null && (str = namespace.prefix) != null && str2.equals(str) && this.uri.equals(namespace.uri);
        }

        public boolean isDefault() {
            String str = this.prefix;
            return str != null && str.equals("");
        }

        public boolean isEmpty() {
            String str = this.prefix;
            return str != null && str.equals("") && this.uri.equals("");
        }

        public boolean isGlobal() {
            String str = this.uri;
            return str != null && str.equals("");
        }

        public boolean isUnspecifiedPrefix() {
            return this.prefix == null;
        }

        public String toString() {
            if (this.prefix == null) {
                return "XmlNode.Namespace [" + this.uri + "]";
            }
            return "XmlNode.Namespace [" + this.prefix + "{" + this.uri + "}]";
        }

        public static Namespace create(String str) {
            Namespace namespace = new Namespace();
            namespace.uri = str;
            if (str == null || str.length() == 0) {
                namespace.prefix = "";
            }
            return namespace;
        }
    }

    public Namespace getNamespaceDeclaration() {
        return this.dom.getPrefix() == null ? getNamespaceDeclaration("") : getNamespaceDeclaration(this.dom.getPrefix());
    }
}
