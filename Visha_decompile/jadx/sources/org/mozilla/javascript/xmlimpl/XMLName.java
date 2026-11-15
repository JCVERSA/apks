package org.mozilla.javascript.xmlimpl;

import org.mozilla.javascript.Context;
import org.mozilla.javascript.EcmaError;
import org.mozilla.javascript.Kit;
import org.mozilla.javascript.Ref;
import org.mozilla.javascript.ScriptRuntime;
import org.mozilla.javascript.Undefined;
import org.proninyaroslav.libretorrent.core.model.filetree.FileTree;

class XMLName extends Ref {
    static final long serialVersionUID = 3832176310755686977L;
    private boolean isAttributeName;
    private boolean isDescendants;
    private XmlNode.QName qname;
    private XMLObjectImpl xmlObject;

    private XMLName() {
    }

    public static boolean accept(Object obj) {
        try {
            String string = ScriptRuntime.toString(obj);
            int length = string.length();
            if (length == 0 || !e(string.charAt(0))) {
                return false;
            }
            for (int i = 1; i != length; i++) {
                if (!d(string.charAt(i))) {
                    return false;
                }
            }
            return true;
        } catch (EcmaError e) {
            if ("TypeError".equals(e.getName())) {
                return false;
            }
            throw e;
        }
    }

    public static XMLName create(String str, String str2) {
        if (str2 == null) {
            throw new IllegalArgumentException();
        }
        int length = str2.length();
        if (length != 0) {
            char cCharAt = str2.charAt(0);
            if (cCharAt == '*') {
                if (length == 1) {
                    return formStar();
                }
            } else if (cCharAt == '@') {
                XMLName xMLNameFormProperty = formProperty("", str2.substring(1));
                xMLNameFormProperty.setAttributeName();
                return xMLNameFormProperty;
            }
        }
        return formProperty(str, str2);
    }

    public static boolean d(int i) {
        if ((i & (-128)) != 0) {
            if ((i & (-8192)) == 0) {
                return e(i) || i == 183 || (768 <= i && i <= 879);
            }
            return e(i) || (8255 <= i && i <= 8256);
        }
        if (i >= 97) {
            return i <= 122;
        }
        if (i >= 65) {
            return i <= 90 || i == 95;
        }
        if (i >= 48) {
            return i <= 57;
        }
        return i == 45 || i == 46;
    }

    public static boolean e(int i) {
        if ((i & (-128)) == 0) {
            if (i >= 97) {
                return i <= 122;
            }
            if (i >= 65) {
                return i <= 90 || i == 95;
            }
        } else if ((i & (-8192)) == 0) {
            return (192 <= i && i <= 214) || (216 <= i && i <= 246) || ((248 <= i && i <= 767) || ((880 <= i && i <= 893) || 895 <= i));
        }
        return (8204 <= i && i <= 8205) || (8304 <= i && i <= 8591) || ((11264 <= i && i <= 12271) || ((12289 <= i && i <= 55295) || ((63744 <= i && i <= 64975) || ((65008 <= i && i <= 65533) || (65536 <= i && i <= 983039)))));
    }

    @Deprecated
    public static XMLName formProperty(XmlNode.Namespace namespace, String str) {
        if (str != null && str.equals("*")) {
            str = null;
        }
        XMLName xMLName = new XMLName();
        xMLName.qname = XmlNode.QName.create(namespace, str);
        return xMLName;
    }

    public static XMLName formStar() {
        XMLName xMLName = new XMLName();
        xMLName.qname = XmlNode.QName.create(null, null);
        return xMLName;
    }

    public final void a(XMLList xMLList, XML xml) {
        addMatchingAttributes(xMLList, xml);
    }

    public void addDescendants(XMLList xMLList, XML xml) {
        if (isAttributeName()) {
            matchDescendantAttributes(xMLList, xml);
        } else {
            matchDescendantChildren(xMLList, xml);
        }
    }

    public void addMatches(XMLList xMLList, XML xml) {
        if (isDescendants()) {
            addDescendants(xMLList, xml);
            return;
        }
        if (isAttributeName()) {
            a(xMLList, xml);
            return;
        }
        XML[] children = xml.getChildren();
        if (children != null) {
            for (int i = 0; i < children.length; i++) {
                if (matches(children[i])) {
                    xMLList.addToList(children[i]);
                }
            }
        }
        xMLList.setTargets(xml, toQname());
    }

    public void addMatchingAttributes(XMLList xMLList, XML xml) {
        if (xml.isElement()) {
            XML[] attributes = xml.getAttributes();
            for (int i = 0; i < attributes.length; i++) {
                if (matches(attributes[i])) {
                    xMLList.addToList(attributes[i]);
                }
            }
        }
    }

    public final void b(XMLList xMLList, XML xml) {
        if (xml.isElement()) {
            addMatchingAttributes(xMLList, xml);
            for (XML xml2 : xml.getChildren()) {
                b(xMLList, xml2);
            }
        }
    }

    public final void c(XMLList xMLList, XML xml) {
        if (xml.isElement()) {
            XML[] children = xml.getChildren();
            for (int i = 0; i < children.length; i++) {
                if (matches(children[i])) {
                    xMLList.addToList(children[i]);
                }
                c(xMLList, children[i]);
            }
        }
    }

    @Override
    public boolean delete(Context context) {
        XMLObjectImpl xMLObjectImpl = this.xmlObject;
        if (xMLObjectImpl == null) {
            return true;
        }
        xMLObjectImpl.deleteXMLProperty(this);
        return !this.xmlObject.hasXMLProperty(this);
    }

    @Override
    public Object get(Context context) {
        XMLObjectImpl xMLObjectImpl = this.xmlObject;
        if (xMLObjectImpl != null) {
            return xMLObjectImpl.getXMLProperty(this);
        }
        throw ScriptRuntime.undefReadError(Undefined.instance, toString());
    }

    public XMLList getMyValueOn(XML xml) {
        XMLList xMLListNewXMLList = xml.newXMLList();
        addMatches(xMLListNewXMLList, xml);
        return xMLListNewXMLList;
    }

    @Override
    public boolean has(Context context) {
        XMLObjectImpl xMLObjectImpl = this.xmlObject;
        if (xMLObjectImpl == null) {
            return false;
        }
        return xMLObjectImpl.hasXMLProperty(this);
    }

    public void initXMLObject(XMLObjectImpl xMLObjectImpl) {
        if (xMLObjectImpl == null) {
            throw new IllegalArgumentException();
        }
        if (this.xmlObject != null) {
            throw new IllegalStateException();
        }
        this.xmlObject = xMLObjectImpl;
    }

    public boolean isAttributeName() {
        return this.isAttributeName;
    }

    public boolean isDescendants() {
        return this.isDescendants;
    }

    public String localName() {
        return this.qname.getLocalName() == null ? "*" : this.qname.getLocalName();
    }

    public XMLList matchDescendantAttributes(XMLList xMLList, XML xml) {
        xMLList.setTargets(xml, null);
        b(xMLList, xml);
        return xMLList;
    }

    public XMLList matchDescendantChildren(XMLList xMLList, XML xml) {
        xMLList.setTargets(xml, null);
        c(xMLList, xml);
        return xMLList;
    }

    public final boolean matches(XML xml) {
        XmlNode.QName nodeQname = xml.getNodeQname();
        String uri = nodeQname.getNamespace() != null ? nodeQname.getNamespace().getUri() : null;
        if (this.isAttributeName) {
            if (xml.isAttribute()) {
                return (uri() == null || uri().equals(uri)) && (localName().equals("*") || localName().equals(nodeQname.getLocalName()));
            }
            return false;
        }
        if (uri() == null || (xml.isElement() && uri().equals(uri))) {
            if (localName().equals("*")) {
                return true;
            }
            if (xml.isElement() && localName().equals(nodeQname.getLocalName())) {
                return true;
            }
        }
        return false;
    }

    public final boolean matchesElement(XmlNode.QName qName) {
        if (uri() == null || uri().equals(qName.getNamespace().getUri())) {
            return localName().equals("*") || localName().equals(qName.getLocalName());
        }
        return false;
    }

    public final boolean matchesLocalName(String str) {
        return localName().equals("*") || localName().equals(str);
    }

    @Override
    public Object set(Context context, Object obj) {
        XMLObjectImpl xMLObjectImpl = this.xmlObject;
        if (xMLObjectImpl == null) {
            throw ScriptRuntime.undefWriteError(Undefined.instance, toString(), obj);
        }
        if (this.isDescendants) {
            throw Kit.codeBug();
        }
        xMLObjectImpl.putXMLProperty(this, obj);
        return obj;
    }

    public void setAttributeName() {
        this.isAttributeName = true;
    }

    @Deprecated
    public void setIsDescendants() {
        this.isDescendants = true;
    }

    public void setMyValueOn(XML xml, Object obj) {
        XMLObjectImpl xMLObjectImplMakeXmlFromString;
        if (obj == null) {
            obj = "null";
        } else if (obj instanceof Undefined) {
            obj = "undefined";
        }
        if (isAttributeName()) {
            xml.setAttribute(this, obj);
            return;
        }
        if (uri() == null && localName().equals("*")) {
            xml.setChildren(obj);
            return;
        }
        if (obj instanceof XMLObjectImpl) {
            xMLObjectImplMakeXmlFromString = (XMLObjectImpl) obj;
            if ((xMLObjectImplMakeXmlFromString instanceof XML) && ((XML) xMLObjectImplMakeXmlFromString).isAttribute()) {
                xMLObjectImplMakeXmlFromString = xml.makeXmlFromString(this, xMLObjectImplMakeXmlFromString.toString());
            }
            if (xMLObjectImplMakeXmlFromString instanceof XMLList) {
                for (int i = 0; i < xMLObjectImplMakeXmlFromString.length(); i++) {
                    XMLList xMLList = (XMLList) xMLObjectImplMakeXmlFromString;
                    XML xmlItem = xMLList.item(i);
                    if (xmlItem.isAttribute()) {
                        xMLList.replace(i, xml.makeXmlFromString(this, xmlItem.toString()));
                    }
                }
            }
        } else {
            xMLObjectImplMakeXmlFromString = xml.makeXmlFromString(this, ScriptRuntime.toString(obj));
        }
        XMLList propertyList = xml.getPropertyList(this);
        if (propertyList.length() == 0) {
            xml.appendChild(xMLObjectImplMakeXmlFromString);
            return;
        }
        for (int i2 = 1; i2 < propertyList.length(); i2++) {
            xml.removeChild(propertyList.item(i2).childIndex());
        }
        xml.replace(propertyList.item(0).childIndex(), xMLObjectImplMakeXmlFromString);
    }

    public final XmlNode.QName toQname() {
        return this.qname;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        if (this.isDescendants) {
            sb.append(FileTree.PARENT_DIR);
        }
        if (this.isAttributeName) {
            sb.append('@');
        }
        if (uri() == null) {
            sb.append('*');
            if (localName().equals("*")) {
                return sb.toString();
            }
        } else {
            sb.append('\"');
            sb.append(uri());
            sb.append('\"');
        }
        sb.append(':');
        sb.append(localName());
        return sb.toString();
    }

    public String uri() {
        if (this.qname.getNamespace() == null) {
            return null;
        }
        return this.qname.getNamespace().getUri();
    }

    public static XMLName formProperty(String str, String str2) {
        return formProperty(XmlNode.Namespace.create(str), str2);
    }

    public static XMLName create(XmlNode.QName qName, boolean z, boolean z2) {
        XMLName xMLName = new XMLName();
        xMLName.qname = qName;
        xMLName.isAttributeName = z;
        xMLName.isDescendants = z2;
        return xMLName;
    }

    @Deprecated
    public static XMLName create(XmlNode.QName qName) {
        return create(qName, false, false);
    }
}
