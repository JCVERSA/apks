package org.mozilla.javascript.xmlimpl;

import org.mozilla.javascript.Context;
import org.mozilla.javascript.ScriptRuntime;
import org.mozilla.javascript.Scriptable;
import org.mozilla.javascript.Undefined;
import org.mozilla.javascript.xml.XMLObject;
import org.w3c.dom.Node;

class XML extends XMLObjectImpl {
    static final long serialVersionUID = -630969919086449092L;
    private XmlNode node;

    public XML(XMLLibImpl xMLLibImpl, Scriptable scriptable, XMLObject xMLObject, XmlNode xmlNode) {
        super(xMLLibImpl, scriptable, xMLObject);
        initialize(xmlNode);
    }

    @Override
    public void addMatches(XMLList xMLList, XMLName xMLName) {
        xMLName.addMatches(xMLList, this);
    }

    public XML addNamespace(Namespace namespace) {
        m(namespace);
        return this;
    }

    public XML appendChild(Object obj) {
        if (this.node.isParentType()) {
            XmlNode[] xmlNodeArrQ = q(obj);
            XmlNode xmlNode = this.node;
            xmlNode.insertChildrenAt(xmlNode.getChildCount(), xmlNodeArrQ);
        }
        return this;
    }

    @Override
    public XMLList child(XMLName xMLName) {
        XMLList xMLListNewXMLList = newXMLList();
        XmlNode[] matchingChildren = this.node.getMatchingChildren(XmlNode.a.c);
        for (int i = 0; i < matchingChildren.length; i++) {
            if (xMLName.matchesElement(matchingChildren[i].getQname())) {
                xMLListNewXMLList.addToList(r(matchingChildren[i]));
            }
        }
        xMLListNewXMLList.setTargets(this, xMLName.toQname());
        return xMLListNewXMLList;
    }

    public int childIndex() {
        return this.node.getChildIndex();
    }

    @Override
    public XMLList children() {
        XMLList xMLListNewXMLList = newXMLList();
        xMLListNewXMLList.setTargets(this, XMLName.formStar().toQname());
        for (XmlNode xmlNode : this.node.getMatchingChildren(XmlNode.a.d)) {
            xMLListNewXMLList.addToList(r(xmlNode));
        }
        return xMLListNewXMLList;
    }

    @Override
    public XMLList comments() {
        XMLList xMLListNewXMLList = newXMLList();
        this.node.addMatchingChildren(xMLListNewXMLList, XmlNode.a.a);
        return xMLListNewXMLList;
    }

    @Override
    public boolean contains(Object obj) {
        if (obj instanceof XML) {
            return equivalentXml(obj);
        }
        return false;
    }

    @Override
    public XMLObjectImpl copy() {
        return newXML(this.node.copy());
    }

    @Override
    public void delete(int i) {
        if (i == 0) {
            remove();
        }
    }

    @Override
    public void deleteXMLProperty(XMLName xMLName) {
        XMLList propertyList = getPropertyList(xMLName);
        for (int i = 0; i < propertyList.length(); i++) {
            propertyList.item(i).node.deleteMe();
        }
    }

    public final String ecmaClass() {
        if (this.node.isTextType()) {
            return "text";
        }
        if (this.node.isAttributeType()) {
            return "attribute";
        }
        if (this.node.isCommentType()) {
            return "comment";
        }
        if (this.node.isProcessingInstructionType()) {
            return "processing-instruction";
        }
        if (this.node.isElementType()) {
            return "element";
        }
        throw new RuntimeException("Unrecognized type: " + this.node);
    }

    @Override
    public XMLList elements(XMLName xMLName) {
        XMLList xMLListNewXMLList = newXMLList();
        xMLListNewXMLList.setTargets(this, xMLName.toQname());
        XmlNode[] matchingChildren = this.node.getMatchingChildren(XmlNode.a.c);
        for (int i = 0; i < matchingChildren.length; i++) {
            if (xMLName.matches(r(matchingChildren[i]))) {
                xMLListNewXMLList.addToList(r(matchingChildren[i]));
            }
        }
        return xMLListNewXMLList;
    }

    @Override
    public boolean equivalentXml(Object obj) {
        if (obj instanceof XML) {
            return this.node.toXmlString(getProcessor()).equals(((XML) obj).node.toXmlString(getProcessor()));
        }
        if (obj instanceof XMLList) {
            XMLList xMLList = (XMLList) obj;
            if (xMLList.length() == 1) {
                return equivalentXml(xMLList.getXML());
            }
            return false;
        }
        if (!hasSimpleContent()) {
            return false;
        }
        return toString().equals(ScriptRuntime.toString(obj));
    }

    @Override
    public Object get(int i, Scriptable scriptable) {
        return i == 0 ? this : Scriptable.NOT_FOUND;
    }

    public XmlNode getAnnotation() {
        return this.node;
    }

    public XML[] getAttributes() {
        XmlNode[] attributes = this.node.getAttributes();
        int length = attributes.length;
        XML[] xmlArr = new XML[length];
        for (int i = 0; i < length; i++) {
            xmlArr[i] = r(attributes[i]);
        }
        return xmlArr;
    }

    public XML[] getChildren() {
        if (!isElement()) {
            return null;
        }
        XmlNode[] matchingChildren = this.node.getMatchingChildren(XmlNode.a.d);
        int length = matchingChildren.length;
        XML[] xmlArr = new XML[length];
        for (int i = 0; i < length; i++) {
            xmlArr[i] = r(matchingChildren[i]);
        }
        return xmlArr;
    }

    @Override
    public String getClassName() {
        return "XML";
    }

    @Override
    public Scriptable getExtraMethodSource(Context context) {
        if (hasSimpleContent()) {
            return ScriptRuntime.toObjectOrNull(context, toString());
        }
        return null;
    }

    @Override
    public Object[] getIds() {
        return isPrototype() ? new Object[0] : new Object[]{0};
    }

    public XML getLastXmlChild() {
        int childCount = this.node.getChildCount() - 1;
        if (childCount < 0) {
            return null;
        }
        return getXmlChild(childCount);
    }

    public XmlNode.QName getNodeQname() {
        return this.node.getQname();
    }

    public XMLList getPropertyList(XMLName xMLName) {
        return xMLName.getMyValueOn(this);
    }

    @Override
    public final XML getXML() {
        return this;
    }

    @Override
    public Object getXMLProperty(XMLName xMLName) {
        return getPropertyList(xMLName);
    }

    public XML getXmlChild(int i) {
        XmlNode child = this.node.getChild(i);
        if (child.getXml() == null) {
            child.setXml(newXML(child));
        }
        return child.getXml();
    }

    @Override
    public boolean has(int i, Scriptable scriptable) {
        return i == 0;
    }

    @Override
    public boolean hasComplexContent() {
        return !hasSimpleContent();
    }

    @Override
    public boolean hasOwnProperty(XMLName xMLName) {
        if (isPrototype()) {
            if (findPrototypeId(xMLName.localName()) == 0) {
                return false;
            }
        } else if (getPropertyList(xMLName).length() <= 0) {
            return false;
        }
        return true;
    }

    @Override
    public boolean hasSimpleContent() {
        if (isComment() || isProcessingInstruction()) {
            return false;
        }
        if (isText() || this.node.isAttributeType()) {
            return true;
        }
        return !this.node.hasChildElement();
    }

    @Override
    public boolean hasXMLProperty(XMLName xMLName) {
        return getPropertyList(xMLName).length() > 0;
    }

    public Namespace[] inScopeNamespaces() {
        return createNamespaces(this.node.getInScopeNamespaces());
    }

    public void initialize(XmlNode xmlNode) {
        this.node = xmlNode;
        xmlNode.setXml(this);
    }

    public XML insertChildAfter(XML xml, Object obj) {
        if (xml == null) {
            prependChild(obj);
        } else {
            XmlNode[] xmlNodeArrQ = q(obj);
            int iP = p(xml);
            if (iP != -1) {
                this.node.insertChildrenAt(iP + 1, xmlNodeArrQ);
            }
        }
        return this;
    }

    public XML insertChildBefore(XML xml, Object obj) {
        if (xml == null) {
            appendChild(obj);
        } else {
            XmlNode[] xmlNodeArrQ = q(obj);
            int iP = p(xml);
            if (iP != -1) {
                this.node.insertChildrenAt(iP, xmlNodeArrQ);
            }
        }
        return this;
    }

    public boolean is(XML xml) {
        return this.node.isSameNode(xml.node);
    }

    public final boolean isAttribute() {
        return this.node.isAttributeType();
    }

    public final boolean isComment() {
        return this.node.isCommentType();
    }

    public final boolean isElement() {
        return this.node.isElementType();
    }

    public final boolean isProcessingInstruction() {
        return this.node.isProcessingInstructionType();
    }

    public final boolean isText() {
        return this.node.isTextType();
    }

    @Override
    public Object jsConstructor(Context context, boolean z, Object[] objArr) {
        Object obj;
        if (objArr.length == 0 || (obj = objArr[0]) == null || obj == Undefined.instance) {
            objArr = new Object[]{""};
        }
        XML xmlEcmaToXml = ecmaToXml(objArr[0]);
        return z ? xmlEcmaToXml.copy() : xmlEcmaToXml;
    }

    public final XmlNode.Namespace l(Namespace namespace) {
        return namespace.prefix() == null ? XmlNode.Namespace.create(namespace.uri()) : XmlNode.Namespace.create(namespace.prefix(), namespace.uri());
    }

    @Override
    public int length() {
        return 1;
    }

    public String localName() {
        if (name() == null) {
            return null;
        }
        return name().localName();
    }

    public final void m(Namespace namespace) {
        if (isElement() && namespace.prefix() != null) {
            if (namespace.prefix().length() == 0 && namespace.uri().length() == 0) {
                return;
            }
            if (this.node.getQname().getNamespace().getPrefix().equals(namespace.prefix())) {
                this.node.invalidateNamespacePrefix();
            }
            this.node.declareNamespace(namespace.prefix(), namespace.uri());
        }
    }

    public XML makeXmlFromString(XMLName xMLName, String str) {
        try {
            return newTextElementXML(this.node, xMLName.toQname(), str);
        } catch (Exception e) {
            throw ScriptRuntime.typeError(e.getMessage());
        }
    }

    public final String n() {
        if (isAttribute() || isText()) {
            return o();
        }
        if (!hasSimpleContent()) {
            return toXMLString();
        }
        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < this.node.getChildCount(); i++) {
            XmlNode child = this.node.getChild(i);
            if (!child.isProcessingInstructionType() && !child.isCommentType()) {
                sb.append(new XML(getLib(), getParentScope(), (XMLObject) getPrototype(), child).toString());
            }
        }
        return sb.toString();
    }

    public QName name() {
        if (isText() || isComment()) {
            return null;
        }
        return isProcessingInstruction() ? newQName("", this.node.getQname().getLocalName(), null) : newQName(this.node.getQname());
    }

    public Namespace namespace(String str) {
        return str == null ? createNamespace(this.node.getNamespaceDeclaration()) : createNamespace(this.node.getNamespaceDeclaration(str));
    }

    public Namespace[] namespaceDeclarations() {
        return createNamespaces(this.node.getNamespaceDeclarations());
    }

    public Object nodeKind() {
        return ecmaClass();
    }

    @Override
    public void normalize() {
        this.node.normalize();
    }

    public final String o() {
        return this.node.ecmaValue();
    }

    public final int p(XML xml) {
        for (int i = 0; i < this.node.getChildCount(); i++) {
            if (this.node.getChild(i).isSameNode(xml.node)) {
                return i;
            }
        }
        return -1;
    }

    @Override
    public Object parent() {
        if (this.node.parent() == null) {
            return null;
        }
        return newXML(this.node.parent());
    }

    public XML prependChild(Object obj) {
        if (this.node.isParentType()) {
            this.node.insertChildrenAt(0, q(obj));
        }
        return this;
    }

    @Override
    public XMLList processingInstructions(XMLName xMLName) {
        XMLList xMLListNewXMLList = newXMLList();
        this.node.addMatchingChildren(xMLListNewXMLList, XmlNode.a.a(xMLName));
        return xMLListNewXMLList;
    }

    @Override
    public boolean propertyIsEnumerable(Object obj) {
        if (obj instanceof Integer) {
            if (((Integer) obj).intValue() != 0) {
                return false;
            }
        } else {
            if (!(obj instanceof Number)) {
                return ScriptRuntime.toString(obj).equals("0");
            }
            double dDoubleValue = ((Number) obj).doubleValue();
            if (dDoubleValue != 0.0d || 1.0d / dDoubleValue <= 0.0d) {
                return false;
            }
        }
        return true;
    }

    @Override
    public void put(int i, Scriptable scriptable, Object obj) {
        throw ScriptRuntime.typeError("Assignment to indexed XML is not allowed");
    }

    @Override
    public void putXMLProperty(XMLName xMLName, Object obj) {
        if (isPrototype()) {
            return;
        }
        xMLName.setMyValueOn(this, obj);
    }

    public final XmlNode[] q(Object obj) {
        if (obj instanceof XML) {
            return new XmlNode[]{((XML) obj).node};
        }
        if (!(obj instanceof XMLList)) {
            return new XmlNode[]{XmlNode.createText(getProcessor(), ScriptRuntime.toString(obj))};
        }
        XMLList xMLList = (XMLList) obj;
        XmlNode[] xmlNodeArr = new XmlNode[xMLList.length()];
        for (int i = 0; i < xMLList.length(); i++) {
            xmlNodeArr[i] = xMLList.item(i).node;
        }
        return xmlNodeArr;
    }

    public final XML r(XmlNode xmlNode) {
        if (xmlNode.getXml() == null) {
            xmlNode.setXml(newXML(xmlNode));
        }
        return xmlNode.getXml();
    }

    public void remove() {
        this.node.deleteMe();
    }

    public void removeChild(int i) {
        this.node.removeChild(i);
    }

    public XML removeNamespace(Namespace namespace) {
        if (!isElement()) {
            return this;
        }
        this.node.removeNamespace(l(namespace));
        return this;
    }

    public XML replace(XMLName xMLName, Object obj) {
        putXMLProperty(xMLName, obj);
        return this;
    }

    public void replaceWith(XML xml) {
        if (this.node.parent() != null) {
            this.node.replaceWith(xml.node);
        } else {
            initialize(xml.node);
        }
    }

    public void setAttribute(XMLName xMLName, Object obj) {
        if (!isElement()) {
            throw new IllegalStateException("Can only set attributes on elements.");
        }
        if (xMLName.uri() == null && xMLName.localName().equals("*")) {
            throw ScriptRuntime.typeError("@* assignment not supported.");
        }
        this.node.setAttribute(xMLName.toQname(), ScriptRuntime.toString(obj));
    }

    public XML setChildren(Object obj) {
        if (!isElement()) {
            return this;
        }
        while (this.node.getChildCount() > 0) {
            this.node.removeChild(0);
        }
        this.node.insertChildrenAt(0, q(obj));
        return this;
    }

    public void setLocalName(String str) {
        if (isText() || isComment()) {
            return;
        }
        this.node.setLocalName(str);
    }

    public void setName(QName qName) {
        if (isText() || isComment()) {
            return;
        }
        if (isProcessingInstruction()) {
            this.node.setLocalName(qName.localName());
        } else {
            this.node.renameNode(qName.getDelegate());
        }
    }

    public void setNamespace(Namespace namespace) {
        if (isText() || isComment() || isProcessingInstruction()) {
            return;
        }
        setName(newQName(namespace.uri(), localName(), namespace.prefix()));
    }

    @Override
    public XMLList text() {
        XMLList xMLListNewXMLList = newXMLList();
        this.node.addMatchingChildren(xMLListNewXMLList, XmlNode.a.b);
        return xMLListNewXMLList;
    }

    public Node toDomNode() {
        return this.node.toDomNode();
    }

    @Override
    public String toSource(int i) {
        return toXMLString();
    }

    @Override
    public String toString() {
        return n();
    }

    @Override
    public String toXMLString() {
        return this.node.ecmaToXMLString(getProcessor());
    }

    @Override
    public Object valueOf() {
        return this;
    }

    public XML replace(int i, Object obj) {
        XMLList xMLListChild = child(i);
        if (xMLListChild.length() > 0) {
            insertChildAfter(xMLListChild.item(0), obj);
            removeChild(i);
        }
        return this;
    }

    @Override
    public XMLList child(int i) {
        XMLList xMLListNewXMLList = newXMLList();
        xMLListNewXMLList.setTargets(this, null);
        if (i >= 0 && i < this.node.getChildCount()) {
            xMLListNewXMLList.addToList(getXmlChild(i));
        }
        return xMLListNewXMLList;
    }
}
