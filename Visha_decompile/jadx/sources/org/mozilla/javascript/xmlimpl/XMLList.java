package org.mozilla.javascript.xmlimpl;

import androidx.core.app.NotificationCompat;
import java.util.ArrayList;
import org.mozilla.javascript.Callable;
import org.mozilla.javascript.Context;
import org.mozilla.javascript.Function;
import org.mozilla.javascript.ScriptRuntime;
import org.mozilla.javascript.Scriptable;
import org.mozilla.javascript.ScriptableObject;
import org.mozilla.javascript.Undefined;
import org.mozilla.javascript.xml.XMLObject;

class XMLList extends XMLObjectImpl implements Function {
    static final long serialVersionUID = -4543618751670781135L;
    private XmlNode.InternalList _annos;
    private XMLObjectImpl targetObject;
    private XmlNode.QName targetProperty;

    public XMLList(XMLLibImpl xMLLibImpl, Scriptable scriptable, XMLObject xMLObject) {
        super(xMLLibImpl, scriptable, xMLObject);
        this.targetObject = null;
        this.targetProperty = null;
        this._annos = new XmlNode.InternalList();
    }

    private XMLList getPropertyList(XMLName xMLName) {
        XMLList xMLListNewXMLList = newXMLList();
        xMLListNewXMLList.setTargets(this, (xMLName.isDescendants() || xMLName.isAttributeName()) ? null : xMLName.toQname());
        for (int i = 0; i < length(); i++) {
            xMLListNewXMLList.addToList(n(i).getPropertyList(xMLName));
        }
        return xMLListNewXMLList;
    }

    private void setAttribute(XMLName xMLName, Object obj) {
        for (int i = 0; i < length(); i++) {
            n(i).setAttribute(xMLName, obj);
        }
    }

    @Override
    public void addMatches(XMLList xMLList, XMLName xMLName) {
        for (int i = 0; i < length(); i++) {
            n(i).addMatches(xMLList, xMLName);
        }
    }

    public void addToList(Object obj) {
        this._annos.addToList(obj);
    }

    @Override
    public Object call(Context context, Scriptable scriptable, Scriptable scriptable2, Object[] objArr) {
        Scriptable scriptable3;
        XMLObject xMLObject;
        XmlNode.QName qName = this.targetProperty;
        if (qName == null) {
            throw ScriptRuntime.notFunctionError(this);
        }
        String localName = qName.getLocalName();
        boolean zEquals = localName.equals("apply");
        if (zEquals || localName.equals(NotificationCompat.CATEGORY_CALL)) {
            return l(zEquals, context, scriptable, scriptable2, objArr);
        }
        if (!(scriptable2 instanceof XMLObject)) {
            throw ScriptRuntime.typeError1("msg.incompat.call", localName);
        }
        Object functionProperty = null;
        loop0: while (true) {
            scriptable3 = scriptable2;
            do {
                if (!(scriptable2 instanceof XMLObject) || (functionProperty = (xMLObject = (XMLObject) scriptable2).getFunctionProperty(context, localName)) != Scriptable.NOT_FOUND) {
                    break loop0;
                }
                scriptable2 = xMLObject.getExtraMethodSource(context);
            } while (scriptable2 == null);
            if (!(scriptable2 instanceof XMLObject)) {
                functionProperty = ScriptableObject.getProperty(scriptable2, localName);
            }
        }
        if (functionProperty instanceof Callable) {
            return ((Callable) functionProperty).call(context, scriptable, scriptable3, objArr);
        }
        throw ScriptRuntime.notFunctionError(scriptable3, functionProperty, localName);
    }

    @Override
    public XMLList child(int i) {
        XMLList xMLListNewXMLList = newXMLList();
        for (int i2 = 0; i2 < length(); i2++) {
            xMLListNewXMLList.addToList(n(i2).child(i));
        }
        return xMLListNewXMLList;
    }

    @Override
    public XMLList children() {
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < length(); i++) {
            XML xmlN = n(i);
            if (xmlN != null) {
                XMLList xMLListChildren = xmlN.children();
                int length = xMLListChildren.length();
                for (int i2 = 0; i2 < length; i2++) {
                    arrayList.add(xMLListChildren.item(i2));
                }
            }
        }
        XMLList xMLListNewXMLList = newXMLList();
        int size = arrayList.size();
        for (int i3 = 0; i3 < size; i3++) {
            xMLListNewXMLList.addToList(arrayList.get(i3));
        }
        return xMLListNewXMLList;
    }

    @Override
    public XMLList comments() {
        XMLList xMLListNewXMLList = newXMLList();
        for (int i = 0; i < length(); i++) {
            xMLListNewXMLList.addToList(n(i).comments());
        }
        return xMLListNewXMLList;
    }

    @Override
    public Scriptable construct(Context context, Scriptable scriptable, Object[] objArr) {
        throw ScriptRuntime.typeError1("msg.not.ctor", "XMLList");
    }

    @Override
    public boolean contains(Object obj) {
        for (int i = 0; i < length(); i++) {
            if (n(i).equivalentXml(obj)) {
                return true;
            }
        }
        return false;
    }

    @Override
    public XMLObjectImpl copy() {
        XMLList xMLListNewXMLList = newXMLList();
        for (int i = 0; i < length(); i++) {
            xMLListNewXMLList.addToList(n(i).copy());
        }
        return xMLListNewXMLList;
    }

    @Override
    public void delete(int i) {
        if (i < 0 || i >= length()) {
            return;
        }
        n(i).remove();
        p(i);
    }

    @Override
    public void deleteXMLProperty(XMLName xMLName) {
        for (int i = 0; i < length(); i++) {
            XML xmlN = n(i);
            if (xmlN.isElement()) {
                xmlN.deleteXMLProperty(xMLName);
            }
        }
    }

    @Override
    public XMLList elements(XMLName xMLName) {
        XMLList xMLListNewXMLList = newXMLList();
        for (int i = 0; i < length(); i++) {
            xMLListNewXMLList.addToList(n(i).elements(xMLName));
        }
        return xMLListNewXMLList;
    }

    @Override
    public boolean equivalentXml(Object obj) {
        if ((obj instanceof Undefined) && length() == 0) {
            return true;
        }
        if (length() == 1) {
            return n(0).equivalentXml(obj);
        }
        if (obj instanceof XMLList) {
            XMLList xMLList = (XMLList) obj;
            if (xMLList.length() == length()) {
                for (int i = 0; i < length(); i++) {
                    if (n(i).equivalentXml(xMLList.n(i))) {
                    }
                }
                return true;
            }
        }
        return false;
    }

    @Override
    public Object get(int i, Scriptable scriptable) {
        return (i < 0 || i >= length()) ? Scriptable.NOT_FOUND : n(i);
    }

    @Override
    public String getClassName() {
        return "XMLList";
    }

    @Override
    public Scriptable getExtraMethodSource(Context context) {
        if (length() == 1) {
            return n(0);
        }
        return null;
    }

    @Override
    public Object[] getIds() {
        if (isPrototype()) {
            return new Object[0];
        }
        int length = length();
        Object[] objArr = new Object[length];
        for (int i = 0; i < length; i++) {
            objArr[i] = Integer.valueOf(i);
        }
        return objArr;
    }

    public Object[] getIdsForDebug() {
        return getIds();
    }

    public XmlNode.InternalList getNodeList() {
        return this._annos;
    }

    @Override
    public XML getXML() {
        if (length() == 1) {
            return n(0);
        }
        return null;
    }

    @Override
    public Object getXMLProperty(XMLName xMLName) {
        return getPropertyList(xMLName);
    }

    @Override
    public boolean has(int i, Scriptable scriptable) {
        return i >= 0 && i < length();
    }

    @Override
    public boolean hasComplexContent() {
        int length = length();
        if (length == 0) {
            return false;
        }
        if (length == 1) {
            return n(0).hasComplexContent();
        }
        for (int i = 0; i < length; i++) {
            if (n(i).isElement()) {
                return true;
            }
        }
        return false;
    }

    @Override
    public boolean hasOwnProperty(XMLName xMLName) {
        if (isPrototype()) {
            return findPrototypeId(xMLName.localName()) != 0;
        }
        return getPropertyList(xMLName).length() > 0;
    }

    @Override
    public boolean hasSimpleContent() {
        if (length() == 0) {
            return true;
        }
        if (length() == 1) {
            return n(0).hasSimpleContent();
        }
        for (int i = 0; i < length(); i++) {
            if (n(i).isElement()) {
                return false;
            }
        }
        return true;
    }

    @Override
    public boolean hasXMLProperty(XMLName xMLName) {
        return getPropertyList(xMLName).length() > 0;
    }

    public XML item(int i) {
        return this._annos != null ? n(i) : createEmptyXML();
    }

    @Override
    public Object jsConstructor(Context context, boolean z, Object[] objArr) {
        if (objArr.length == 0) {
            return newXMLList();
        }
        Object obj = objArr[0];
        return (z || !(obj instanceof XMLList)) ? newXMLListFrom(obj) : obj;
    }

    public final Object l(boolean z, Context context, Scriptable scriptable, Scriptable scriptable2, Object[] objArr) {
        String str = z ? "apply" : NotificationCompat.CATEGORY_CALL;
        if (!(scriptable2 instanceof XMLList) || ((XMLList) scriptable2).targetProperty == null) {
            throw ScriptRuntime.typeError1("msg.isnt.function", str);
        }
        return ScriptRuntime.applyOrCall(z, context, scriptable, scriptable2, objArr);
    }

    @Override
    public int length() {
        XmlNode.InternalList internalList = this._annos;
        if (internalList != null) {
            return internalList.length();
        }
        return 0;
    }

    public final XML m(XmlNode.InternalList internalList, int i) {
        if (i < 0 || i >= length()) {
            return null;
        }
        return xmlFromNode(internalList.item(i));
    }

    public final XML n(int i) {
        return m(this._annos, i);
    }

    @Override
    public void normalize() {
        for (int i = 0; i < length(); i++) {
            n(i).normalize();
        }
    }

    public final void o(int i, XML xml) {
        if (i < length()) {
            XmlNode.InternalList internalList = new XmlNode.InternalList();
            internalList.add(this._annos, 0, i);
            internalList.add(xml);
            internalList.add(this._annos, i, length());
            this._annos = internalList;
        }
    }

    public final void p(int i) {
        this._annos.remove(i);
    }

    @Override
    public Object parent() {
        if (length() == 0) {
            return Undefined.instance;
        }
        XML xml = null;
        for (int i = 0; i < length(); i++) {
            Object objParent = n(i).parent();
            if (!(objParent instanceof XML)) {
                return Undefined.instance;
            }
            XML xml2 = (XML) objParent;
            if (i == 0) {
                xml = xml2;
            } else if (!xml.is(xml2)) {
                return Undefined.instance;
            }
        }
        return xml;
    }

    @Override
    public XMLList processingInstructions(XMLName xMLName) {
        XMLList xMLListNewXMLList = newXMLList();
        for (int i = 0; i < length(); i++) {
            xMLListNewXMLList.addToList(n(i).processingInstructions(xMLName));
        }
        return xMLListNewXMLList;
    }

    @Override
    public boolean propertyIsEnumerable(Object obj) {
        long jTestUint32String;
        if (obj instanceof Integer) {
            jTestUint32String = ((Integer) obj).intValue();
        } else if (obj instanceof Number) {
            double dDoubleValue = ((Number) obj).doubleValue();
            long j = (long) dDoubleValue;
            if (j != dDoubleValue) {
                return false;
            }
            if (j == 0 && 1.0d / dDoubleValue < 0.0d) {
                return false;
            }
            jTestUint32String = j;
        } else {
            jTestUint32String = ScriptRuntime.testUint32String(ScriptRuntime.toString(obj));
        }
        return 0 <= jTestUint32String && jTestUint32String < ((long) length());
    }

    @Override
    public void put(int i, Scriptable scriptable, Object obj) {
        Object objNewXMLFromJs;
        XMLObjectImpl xMLObjectImpl;
        Object obj2 = Undefined.instance;
        if (obj == null) {
            obj = "null";
        } else if (obj instanceof Undefined) {
            obj = "undefined";
        }
        if (obj instanceof XMLObject) {
            objNewXMLFromJs = (XMLObject) obj;
        } else if (this.targetProperty == null) {
            objNewXMLFromJs = newXMLFromJs(obj.toString());
        } else {
            XMLObjectImpl xMLObjectImplItem = item(i);
            if (xMLObjectImplItem == null) {
                XML xmlItem = item(0);
                xMLObjectImplItem = xmlItem == null ? newTextElementXML(null, this.targetProperty, null) : xmlItem.copy();
            }
            ((XML) xMLObjectImplItem).setChildren(obj);
            objNewXMLFromJs = xMLObjectImplItem;
        }
        Object objParent = i < length() ? item(i).parent() : (length() != 0 || (xMLObjectImpl = this.targetObject) == null) ? parent() : xMLObjectImpl.getXML();
        if (!(objParent instanceof XML)) {
            if (i >= length()) {
                addToList(objNewXMLFromJs);
                return;
            }
            XML xmlM = m(this._annos, i);
            if (objNewXMLFromJs instanceof XML) {
                q(xmlM, (XML) objNewXMLFromJs);
                replace(i, xmlM);
                return;
            }
            if (objNewXMLFromJs instanceof XMLList) {
                XMLList xMLList = (XMLList) objNewXMLFromJs;
                if (xMLList.length() > 0) {
                    q(xmlM, xMLList.item(0));
                    replace(i, xMLList.item(0));
                    for (int i2 = 1; i2 < xMLList.length(); i2++) {
                        o(i + i2, xMLList.item(i2));
                    }
                    return;
                }
                return;
            }
            return;
        }
        XML xml = (XML) objParent;
        if (i >= length()) {
            xml.appendChild(objNewXMLFromJs);
            addToList(xml.getLastXmlChild());
            return;
        }
        XML xmlN = n(i);
        if (objNewXMLFromJs instanceof XML) {
            q(xmlN, (XML) objNewXMLFromJs);
            replace(i, xmlN);
            return;
        }
        if (objNewXMLFromJs instanceof XMLList) {
            XMLList xMLList2 = (XMLList) objNewXMLFromJs;
            if (xMLList2.length() > 0) {
                int iChildIndex = xmlN.childIndex();
                q(xmlN, xMLList2.item(0));
                replace(i, xMLList2.item(0));
                for (int i3 = 1; i3 < xMLList2.length(); i3++) {
                    xml.insertChildAfter(xml.getXmlChild(iChildIndex), xMLList2.item(i3));
                    iChildIndex++;
                    o(i + i3, xMLList2.item(i3));
                }
            }
        }
    }

    @Override
    public void putXMLProperty(XMLName xMLName, Object obj) {
        XmlNode.QName qName;
        if (obj == null) {
            obj = "null";
        } else if (obj instanceof Undefined) {
            obj = "undefined";
        }
        if (length() > 1) {
            throw ScriptRuntime.typeError("Assignment to lists with more than one item is not supported");
        }
        if (length() != 0) {
            if (xMLName.isAttributeName()) {
                setAttribute(xMLName, obj);
                return;
            } else {
                item(0).putXMLProperty(xMLName, obj);
                replace(0, item(0));
                return;
            }
        }
        if (this.targetObject == null || (qName = this.targetProperty) == null || qName.getLocalName() == null || this.targetProperty.getLocalName().length() <= 0) {
            throw ScriptRuntime.typeError("Assignment to empty XMLList without targets not supported");
        }
        addToList(newTextElementXML(null, this.targetProperty, null));
        if (xMLName.isAttributeName()) {
            setAttribute(xMLName, obj);
        } else {
            item(0).putXMLProperty(xMLName, obj);
            replace(0, item(0));
        }
        this.targetObject.putXMLProperty(XMLName.formProperty(this.targetProperty.getNamespace().getUri(), this.targetProperty.getLocalName()), this);
        replace(0, this.targetObject.getXML().getLastXmlChild());
    }

    public final void q(XML xml, XML xml2) {
        xml.replaceWith(xml2);
    }

    public void remove() {
        for (int length = length() - 1; length >= 0; length--) {
            XML xmlN = n(length);
            if (xmlN != null) {
                xmlN.remove();
                p(length);
            }
        }
    }

    public void replace(int i, XML xml) {
        if (i < length()) {
            XmlNode.InternalList internalList = new XmlNode.InternalList();
            internalList.add(this._annos, 0, i);
            internalList.add(xml);
            internalList.add(this._annos, i + 1, length());
            this._annos = internalList;
        }
    }

    public void setTargets(XMLObjectImpl xMLObjectImpl, XmlNode.QName qName) {
        this.targetObject = xMLObjectImpl;
        this.targetProperty = qName;
    }

    @Override
    public XMLList text() {
        XMLList xMLListNewXMLList = newXMLList();
        for (int i = 0; i < length(); i++) {
            xMLListNewXMLList.addToList(n(i).text());
        }
        return xMLListNewXMLList;
    }

    @Override
    public String toSource(int i) {
        return toXMLString();
    }

    @Override
    public String toString() {
        if (!hasSimpleContent()) {
            return toXMLString();
        }
        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < length(); i++) {
            XML xmlN = n(i);
            if (!xmlN.isComment() && !xmlN.isProcessingInstruction()) {
                sb.append(xmlN.toString());
            }
        }
        return sb.toString();
    }

    @Override
    public String toXMLString() {
        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < length(); i++) {
            if (getProcessor().isPrettyPrinting() && i != 0) {
                sb.append('\n');
            }
            sb.append(n(i).toXMLString());
        }
        return sb.toString();
    }

    @Override
    public Object valueOf() {
        return this;
    }

    @Override
    public XMLList child(XMLName xMLName) {
        XMLList xMLListNewXMLList = newXMLList();
        for (int i = 0; i < length(); i++) {
            xMLListNewXMLList.addToList(n(i).child(xMLName));
        }
        return xMLListNewXMLList;
    }
}
