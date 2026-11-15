package org.mozilla.javascript.xmlimpl;

import androidx.media3.exoplayer.rtsp.SessionDescription;
import org.mozilla.javascript.Context;
import org.mozilla.javascript.IdFunctionObject;
import org.mozilla.javascript.IdScriptableObject;
import org.mozilla.javascript.Kit;
import org.mozilla.javascript.NativeWith;
import org.mozilla.javascript.Ref;
import org.mozilla.javascript.ScriptRuntime;
import org.mozilla.javascript.Scriptable;
import org.mozilla.javascript.Undefined;
import org.mozilla.javascript.xml.XMLObject;

abstract class XMLObjectImpl extends XMLObject {
    public static final Object b = "XMLObject";
    private static final long serialVersionUID = -2553684605738101761L;
    private XMLLibImpl lib;
    private boolean prototypeFlag;

    public XMLObjectImpl(XMLLibImpl xMLLibImpl, Scriptable scriptable, XMLObject xMLObject) {
        initialize(xMLLibImpl, scriptable, xMLObject);
    }

    public static Object b(Object[] objArr, int i) {
        return i < objArr.length ? objArr[i] : Undefined.instance;
    }

    public abstract void addMatches(XMLList xMLList, XMLName xMLName);

    @Override
    public final Object addValues(Context context, boolean z, Object obj) {
        XMLObject xMLObject;
        XMLObject xMLObject2;
        if (!(obj instanceof XMLObject)) {
            return obj == Undefined.instance ? ScriptRuntime.toString(this) : super.addValues(context, z, obj);
        }
        if (z) {
            xMLObject2 = (XMLObject) obj;
            xMLObject = this;
        } else {
            xMLObject = (XMLObject) obj;
            xMLObject2 = this;
        }
        return this.lib.addXMLObjects(context, xMLObject, xMLObject2);
    }

    public final XMLList c(XMLName xMLName) {
        XMLList xMLListNewXMLList = newXMLList();
        addMatches(xMLListNewXMLList, xMLName);
        return xMLListNewXMLList;
    }

    public abstract XMLList child(int i);

    public abstract XMLList child(XMLName xMLName);

    public abstract XMLList children();

    public abstract XMLList comments();

    public abstract boolean contains(Object obj);

    public abstract XMLObjectImpl copy();

    public final XML createEmptyXML() {
        return newXML(XmlNode.createEmpty(getProcessor()));
    }

    public final Namespace createNamespace(XmlNode.Namespace namespace) {
        if (namespace == null) {
            return null;
        }
        return this.lib.createNamespaces(new XmlNode.Namespace[]{namespace})[0];
    }

    public final Namespace[] createNamespaces(XmlNode.Namespace[] namespaceArr) {
        return this.lib.createNamespaces(namespaceArr);
    }

    @Override
    public final boolean delete(Context context, Object obj) {
        if (context == null) {
            context = Context.getCurrentContext();
        }
        XMLName xMLNameOrIndex = this.lib.toXMLNameOrIndex(context, obj);
        if (xMLNameOrIndex == null) {
            delete((int) ScriptRuntime.lastUint32Result(context));
            return true;
        }
        deleteXMLProperty(xMLNameOrIndex);
        return true;
    }

    public abstract void deleteXMLProperty(XMLName xMLName);

    public final String ecmaEscapeAttributeValue(String str) {
        String strEscapeAttributeValue = this.lib.escapeAttributeValue(str);
        return strEscapeAttributeValue.substring(1, strEscapeAttributeValue.length() - 1);
    }

    public final XML ecmaToXml(Object obj) {
        return this.lib.ecmaToXml(obj);
    }

    public abstract XMLList elements(XMLName xMLName);

    @Override
    public NativeWith enterDotQuery(Scriptable scriptable) {
        XMLWithScope xMLWithScope = new XMLWithScope(this.lib, scriptable, this);
        xMLWithScope.initAsDotQuery();
        return xMLWithScope;
    }

    @Override
    public NativeWith enterWith(Scriptable scriptable) {
        return new XMLWithScope(this.lib, scriptable, this);
    }

    @Override
    public final Object equivalentValues(Object obj) {
        return equivalentXml(obj) ? Boolean.TRUE : Boolean.FALSE;
    }

    public abstract boolean equivalentXml(Object obj);

    @Override
    public Object execIdCall(IdFunctionObject idFunctionObject, Context context, Scriptable scriptable, Scriptable scriptable2, Object[] objArr) {
        if (!idFunctionObject.hasTag(b)) {
            return super.execIdCall(idFunctionObject, context, scriptable, scriptable2, objArr);
        }
        int iMethodId = idFunctionObject.methodId();
        if (iMethodId == 1) {
            return jsConstructor(context, scriptable2 == null, objArr);
        }
        if (!(scriptable2 instanceof XMLObjectImpl)) {
            throw IdScriptableObject.incompatibleCallError(idFunctionObject);
        }
        XMLObjectImpl xMLObjectImpl = (XMLObjectImpl) scriptable2;
        XML xml = xMLObjectImpl.getXML();
        switch (iMethodId) {
            case 2:
                if (xml == null) {
                    k(xMLObjectImpl, "addNamespace");
                }
                return xml.addNamespace(this.lib.castToNamespace(context, b(objArr, 0)));
            case 3:
                if (xml == null) {
                    k(xMLObjectImpl, "appendChild");
                }
                return xml.appendChild(b(objArr, 0));
            case 4:
                return xMLObjectImpl.c(XMLName.create(this.lib.toNodeQName(context, b(objArr, 0), true), true, false));
            case 5:
                return xMLObjectImpl.c(XMLName.create(XmlNode.QName.create(null, null), true, false));
            case 6:
                XMLName xMLNameOrIndex = this.lib.toXMLNameOrIndex(context, b(objArr, 0));
                return xMLNameOrIndex == null ? xMLObjectImpl.child((int) ScriptRuntime.lastUint32Result(context)) : xMLObjectImpl.child(xMLNameOrIndex);
            case 7:
                if (xml == null) {
                    k(xMLObjectImpl, "childIndex");
                }
                return ScriptRuntime.wrapInt(xml.childIndex());
            case 8:
                return xMLObjectImpl.children();
            case 9:
                return xMLObjectImpl.comments();
            case 10:
                return ScriptRuntime.wrapBoolean(xMLObjectImpl.contains(b(objArr, 0)));
            case 11:
                return xMLObjectImpl.copy();
            case 12:
                return xMLObjectImpl.c(XMLName.create(objArr.length == 0 ? XmlNode.QName.create(null, null) : this.lib.toNodeQName(context, objArr[0], false), false, true));
            case 13:
                return xMLObjectImpl.elements(objArr.length == 0 ? XMLName.formStar() : this.lib.toXMLName(context, objArr[0]));
            case 14:
                if (xml == null) {
                    k(xMLObjectImpl, "inScopeNamespaces");
                }
                return context.newArray(scriptable, f(xml.inScopeNamespaces()));
            case 15:
                if (xml == null) {
                    k(xMLObjectImpl, "insertChildAfter");
                }
                Object objB = b(objArr, 0);
                return (objB == null || (objB instanceof XML)) ? xml.insertChildAfter((XML) objB, b(objArr, 1)) : Undefined.instance;
            case 16:
                if (xml == null) {
                    k(xMLObjectImpl, "insertChildBefore");
                }
                Object objB2 = b(objArr, 0);
                return (objB2 == null || (objB2 instanceof XML)) ? xml.insertChildBefore((XML) objB2, b(objArr, 1)) : Undefined.instance;
            case 17:
                return ScriptRuntime.wrapBoolean(xMLObjectImpl.hasOwnProperty(this.lib.toXMLName(context, b(objArr, 0))));
            case 18:
                return ScriptRuntime.wrapBoolean(xMLObjectImpl.hasComplexContent());
            case 19:
                return ScriptRuntime.wrapBoolean(xMLObjectImpl.hasSimpleContent());
            case 20:
                return ScriptRuntime.wrapInt(xMLObjectImpl.length());
            case 21:
                if (xml == null) {
                    k(xMLObjectImpl, "localName");
                }
                return xml.localName();
            case 22:
                if (xml == null) {
                    k(xMLObjectImpl, "name");
                }
                return xml.name();
            case 23:
                if (xml == null) {
                    k(xMLObjectImpl, "namespace");
                }
                Namespace namespace = xml.namespace(objArr.length > 0 ? ScriptRuntime.toString(objArr[0]) : null);
                return namespace == null ? Undefined.instance : namespace;
            case 24:
                if (xml == null) {
                    k(xMLObjectImpl, "namespaceDeclarations");
                }
                return context.newArray(scriptable, f(xml.namespaceDeclarations()));
            case 25:
                if (xml == null) {
                    k(xMLObjectImpl, "nodeKind");
                }
                return xml.nodeKind();
            case 26:
                xMLObjectImpl.normalize();
                return Undefined.instance;
            case 27:
                return xMLObjectImpl.parent();
            case 28:
                if (xml == null) {
                    k(xMLObjectImpl, "prependChild");
                }
                return xml.prependChild(b(objArr, 0));
            case 29:
                return xMLObjectImpl.processingInstructions(objArr.length > 0 ? this.lib.toXMLName(context, objArr[0]) : XMLName.formStar());
            case 30:
                return ScriptRuntime.wrapBoolean(xMLObjectImpl.propertyIsEnumerable(b(objArr, 0)));
            case 31:
                if (xml == null) {
                    k(xMLObjectImpl, "removeNamespace");
                }
                return xml.removeNamespace(this.lib.castToNamespace(context, b(objArr, 0)));
            case 32:
                if (xml == null) {
                    k(xMLObjectImpl, "replace");
                }
                XMLName xMLNameOrIndex2 = this.lib.toXMLNameOrIndex(context, b(objArr, 0));
                Object objB3 = b(objArr, 1);
                return xMLNameOrIndex2 == null ? xml.replace((int) ScriptRuntime.lastUint32Result(context), objB3) : xml.replace(xMLNameOrIndex2, objB3);
            case 33:
                if (xml == null) {
                    k(xMLObjectImpl, "setChildren");
                }
                return xml.setChildren(b(objArr, 0));
            case 34:
                if (xml == null) {
                    k(xMLObjectImpl, "setLocalName");
                }
                Object objB4 = b(objArr, 0);
                xml.setLocalName(objB4 instanceof QName ? ((QName) objB4).localName() : ScriptRuntime.toString(objB4));
                return Undefined.instance;
            case 35:
                if (xml == null) {
                    k(xMLObjectImpl, "setName");
                }
                xml.setName(this.lib.constructQName(context, objArr.length != 0 ? objArr[0] : Undefined.instance));
                return Undefined.instance;
            case 36:
                if (xml == null) {
                    k(xMLObjectImpl, "setNamespace");
                }
                xml.setNamespace(this.lib.castToNamespace(context, b(objArr, 0)));
                return Undefined.instance;
            case 37:
                return xMLObjectImpl.text();
            case 38:
                return xMLObjectImpl.toString();
            case 39:
                return xMLObjectImpl.toSource(ScriptRuntime.toInt32(objArr, 0));
            case 40:
                return xMLObjectImpl.toXMLString();
            case 41:
                return xMLObjectImpl.valueOf();
            default:
                throw new IllegalArgumentException(String.valueOf(iMethodId));
        }
    }

    public final void exportAsJSClass(boolean z) {
        this.prototypeFlag = true;
        exportAsJSClass(41, getParentScope(), z);
    }

    public final Object[] f(Object[] objArr) {
        int length = objArr.length;
        Object[] objArr2 = new Object[length];
        for (int i = 0; i < length; i++) {
            objArr2[i] = objArr[i];
        }
        return objArr2;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:101:0x0199  */
    @Override
    public int findPrototypeId(String str) {
        String str2;
        int i;
        switch (str.length()) {
            case 4:
                char cCharAt = str.charAt(0);
                if (cCharAt == 'c') {
                    str2 = "copy";
                    i = 11;
                } else if (cCharAt == 'n') {
                    str2 = "name";
                    i = 22;
                } else if (cCharAt != 't') {
                    str2 = null;
                    i = 0;
                } else {
                    str2 = "text";
                    i = 37;
                }
                break;
            case 5:
                str2 = "child";
                i = 6;
                break;
            case 6:
                char cCharAt2 = str.charAt(0);
                if (cCharAt2 == 'l') {
                    str2 = SessionDescription.ATTR_LENGTH;
                    i = 20;
                } else if (cCharAt2 != 'p') {
                    str2 = null;
                    i = 0;
                } else {
                    str2 = "parent";
                    i = 27;
                }
                break;
            case 7:
                char cCharAt3 = str.charAt(0);
                if (cCharAt3 == 'r') {
                    str2 = "replace";
                    i = 32;
                } else if (cCharAt3 == 's') {
                    str2 = "setName";
                    i = 35;
                } else if (cCharAt3 != 'v') {
                    str2 = null;
                    i = 0;
                } else {
                    str2 = "valueOf";
                    i = 41;
                }
                break;
            case 8:
                char cCharAt4 = str.charAt(2);
                if (cCharAt4 == 'S') {
                    char cCharAt5 = str.charAt(7);
                    if (cCharAt5 == 'e') {
                        str2 = "toSource";
                        i = 39;
                    } else if (cCharAt5 != 'g') {
                        str2 = null;
                        i = 0;
                    } else {
                        str2 = "toString";
                        i = 38;
                    }
                } else if (cCharAt4 == 'i') {
                    str2 = "children";
                    i = 8;
                } else if (cCharAt4 == 'd') {
                    str2 = "nodeKind";
                    i = 25;
                } else if (cCharAt4 == 'e') {
                    str2 = "elements";
                    i = 13;
                } else if (cCharAt4 == 'm') {
                    str2 = "comments";
                    i = 9;
                } else if (cCharAt4 == 'n') {
                    str2 = "contains";
                    i = 10;
                } else {
                    str2 = null;
                    i = 0;
                }
                break;
            case 9:
                char cCharAt6 = str.charAt(2);
                if (cCharAt6 == 'c') {
                    str2 = "localName";
                    i = 21;
                } else if (cCharAt6 == 'm') {
                    str2 = "namespace";
                    i = 23;
                } else if (cCharAt6 == 'r') {
                    str2 = "normalize";
                    i = 26;
                } else if (cCharAt6 == 't') {
                    str2 = "attribute";
                    i = 4;
                } else {
                    str2 = null;
                    i = 0;
                }
                break;
            case 10:
                char cCharAt7 = str.charAt(0);
                if (cCharAt7 == 'a') {
                    str2 = "attributes";
                    i = 5;
                } else if (cCharAt7 != 'c') {
                    str2 = null;
                    i = 0;
                } else {
                    str2 = "childIndex";
                    i = 7;
                }
                break;
            case 11:
                char cCharAt8 = str.charAt(0);
                if (cCharAt8 == 'a') {
                    str2 = "appendChild";
                    i = 3;
                } else if (cCharAt8 == 'c') {
                    str2 = "constructor";
                    i = 1;
                } else if (cCharAt8 == 'd') {
                    str2 = "descendants";
                    i = 12;
                } else if (cCharAt8 == 's') {
                    str2 = "setChildren";
                    i = 33;
                } else if (cCharAt8 == 't') {
                    str2 = "toXMLString";
                    i = 40;
                } else {
                    str2 = null;
                    i = 0;
                }
                break;
            case 12:
                char cCharAt9 = str.charAt(0);
                if (cCharAt9 == 'a') {
                    str2 = "addNamespace";
                    i = 2;
                } else if (cCharAt9 == 'p') {
                    str2 = "prependChild";
                    i = 28;
                } else if (cCharAt9 == 's') {
                    char cCharAt10 = str.charAt(3);
                    if (cCharAt10 == 'L') {
                        str2 = "setLocalName";
                        i = 34;
                    } else if (cCharAt10 != 'N') {
                        str2 = null;
                        i = 0;
                    } else {
                        str2 = "setNamespace";
                        i = 36;
                    }
                } else {
                    str2 = null;
                    i = 0;
                }
                break;
            case 13:
            case 18:
            case 19:
            default:
                str2 = null;
                i = 0;
                break;
            case 14:
                str2 = "hasOwnProperty";
                i = 17;
                break;
            case 15:
                str2 = "removeNamespace";
                i = 31;
                break;
            case 16:
                char cCharAt11 = str.charAt(0);
                if (cCharAt11 == 'h') {
                    str2 = "hasSimpleContent";
                    i = 19;
                } else if (cCharAt11 != 'i') {
                    str2 = null;
                    i = 0;
                } else {
                    str2 = "insertChildAfter";
                    i = 15;
                }
                break;
            case 17:
                char cCharAt12 = str.charAt(3);
                if (cCharAt12 == 'C') {
                    str2 = "hasComplexContent";
                    i = 18;
                } else if (cCharAt12 == 'c') {
                    str2 = "inScopeNamespaces";
                    i = 14;
                } else if (cCharAt12 != 'e') {
                    str2 = null;
                    i = 0;
                } else {
                    str2 = "insertChildBefore";
                    i = 16;
                }
                break;
            case 20:
                str2 = "propertyIsEnumerable";
                i = 30;
                break;
            case 21:
                str2 = "namespaceDeclarations";
                i = 24;
                break;
            case 22:
                str2 = "processingInstructions";
                i = 29;
                break;
        }
        if (str2 == null || str2 == str || str2.equals(str)) {
            return i;
        }
        return 0;
    }

    @Override
    public final Object get(Context context, Object obj) {
        if (context == null) {
            context = Context.getCurrentContext();
        }
        XMLName xMLNameOrIndex = this.lib.toXMLNameOrIndex(context, obj);
        if (xMLNameOrIndex != null) {
            return getXMLProperty(xMLNameOrIndex);
        }
        Object obj2 = get((int) ScriptRuntime.lastUint32Result(context), this);
        return obj2 == Scriptable.NOT_FOUND ? Undefined.instance : obj2;
    }

    @Override
    public final Object getDefaultValue(Class<?> cls) {
        return toString();
    }

    @Override
    public Object getFunctionProperty(Context context, int i) {
        if (isPrototype()) {
            return super.get(i, this);
        }
        Scriptable prototype = getPrototype();
        return prototype instanceof XMLObject ? ((XMLObject) prototype).getFunctionProperty(context, i) : Scriptable.NOT_FOUND;
    }

    public XMLLibImpl getLib() {
        return this.lib;
    }

    @Override
    public final Scriptable getParentScope() {
        return super.getParentScope();
    }

    public final XmlProcessor getProcessor() {
        return this.lib.getProcessor();
    }

    @Override
    public final Scriptable getPrototype() {
        return super.getPrototype();
    }

    public abstract XML getXML();

    public abstract Object getXMLProperty(XMLName xMLName);

    @Override
    public final boolean has(Context context, Object obj) {
        if (context == null) {
            context = Context.getCurrentContext();
        }
        XMLName xMLNameOrIndex = this.lib.toXMLNameOrIndex(context, obj);
        return xMLNameOrIndex == null ? has((int) ScriptRuntime.lastUint32Result(context), this) : hasXMLProperty(xMLNameOrIndex);
    }

    public abstract boolean hasComplexContent();

    @Override
    public final boolean hasInstance(Scriptable scriptable) {
        return super.hasInstance(scriptable);
    }

    public abstract boolean hasOwnProperty(XMLName xMLName);

    public abstract boolean hasSimpleContent();

    public abstract boolean hasXMLProperty(XMLName xMLName);

    @Override
    public void initPrototypeId(int i) {
        String str;
        String str2;
        int i2 = 1;
        switch (i) {
            case 1:
                initPrototypeConstructor(this instanceof XML ? new XMLCtor((XML) this, b, i, 1) : new IdFunctionObject(this, b, i, 1));
                return;
            case 2:
                str = "addNamespace";
                initPrototypeMethod(b, i, str, i2);
                return;
            case 3:
                str = "appendChild";
                initPrototypeMethod(b, i, str, i2);
                return;
            case 4:
                str = "attribute";
                initPrototypeMethod(b, i, str, i2);
                return;
            case 5:
                str = "attributes";
                i2 = 0;
                initPrototypeMethod(b, i, str, i2);
                return;
            case 6:
                str = "child";
                initPrototypeMethod(b, i, str, i2);
                return;
            case 7:
                str = "childIndex";
                i2 = 0;
                initPrototypeMethod(b, i, str, i2);
                return;
            case 8:
                str = "children";
                i2 = 0;
                initPrototypeMethod(b, i, str, i2);
                return;
            case 9:
                str = "comments";
                i2 = 0;
                initPrototypeMethod(b, i, str, i2);
                return;
            case 10:
                str = "contains";
                initPrototypeMethod(b, i, str, i2);
                return;
            case 11:
                str = "copy";
                i2 = 0;
                initPrototypeMethod(b, i, str, i2);
                return;
            case 12:
                str = "descendants";
                initPrototypeMethod(b, i, str, i2);
                return;
            case 13:
                str = "elements";
                initPrototypeMethod(b, i, str, i2);
                return;
            case 14:
                str = "inScopeNamespaces";
                i2 = 0;
                initPrototypeMethod(b, i, str, i2);
                return;
            case 15:
                str2 = "insertChildAfter";
                i2 = 2;
                str = str2;
                initPrototypeMethod(b, i, str, i2);
                return;
            case 16:
                str2 = "insertChildBefore";
                i2 = 2;
                str = str2;
                initPrototypeMethod(b, i, str, i2);
                return;
            case 17:
                str = "hasOwnProperty";
                initPrototypeMethod(b, i, str, i2);
                return;
            case 18:
                str = "hasComplexContent";
                i2 = 0;
                initPrototypeMethod(b, i, str, i2);
                return;
            case 19:
                str = "hasSimpleContent";
                i2 = 0;
                initPrototypeMethod(b, i, str, i2);
                return;
            case 20:
                str = SessionDescription.ATTR_LENGTH;
                i2 = 0;
                initPrototypeMethod(b, i, str, i2);
                return;
            case 21:
                str = "localName";
                i2 = 0;
                initPrototypeMethod(b, i, str, i2);
                return;
            case 22:
                str = "name";
                i2 = 0;
                initPrototypeMethod(b, i, str, i2);
                return;
            case 23:
                str = "namespace";
                initPrototypeMethod(b, i, str, i2);
                return;
            case 24:
                str = "namespaceDeclarations";
                i2 = 0;
                initPrototypeMethod(b, i, str, i2);
                return;
            case 25:
                str = "nodeKind";
                i2 = 0;
                initPrototypeMethod(b, i, str, i2);
                return;
            case 26:
                str = "normalize";
                i2 = 0;
                initPrototypeMethod(b, i, str, i2);
                return;
            case 27:
                str = "parent";
                i2 = 0;
                initPrototypeMethod(b, i, str, i2);
                return;
            case 28:
                str = "prependChild";
                initPrototypeMethod(b, i, str, i2);
                return;
            case 29:
                str = "processingInstructions";
                initPrototypeMethod(b, i, str, i2);
                return;
            case 30:
                str = "propertyIsEnumerable";
                initPrototypeMethod(b, i, str, i2);
                return;
            case 31:
                str = "removeNamespace";
                initPrototypeMethod(b, i, str, i2);
                return;
            case 32:
                str2 = "replace";
                i2 = 2;
                str = str2;
                initPrototypeMethod(b, i, str, i2);
                return;
            case 33:
                str = "setChildren";
                initPrototypeMethod(b, i, str, i2);
                return;
            case 34:
                str = "setLocalName";
                initPrototypeMethod(b, i, str, i2);
                return;
            case 35:
                str = "setName";
                initPrototypeMethod(b, i, str, i2);
                return;
            case 36:
                str = "setNamespace";
                initPrototypeMethod(b, i, str, i2);
                return;
            case 37:
                str = "text";
                i2 = 0;
                initPrototypeMethod(b, i, str, i2);
                return;
            case 38:
                str = "toString";
                i2 = 0;
                initPrototypeMethod(b, i, str, i2);
                return;
            case 39:
                str = "toSource";
                initPrototypeMethod(b, i, str, i2);
                return;
            case 40:
                str = "toXMLString";
                initPrototypeMethod(b, i, str, i2);
                return;
            case 41:
                str = "valueOf";
                i2 = 0;
                initPrototypeMethod(b, i, str, i2);
                return;
            default:
                throw new IllegalArgumentException(String.valueOf(i));
        }
    }

    public final void initialize(XMLLibImpl xMLLibImpl, Scriptable scriptable, XMLObject xMLObject) {
        setParentScope(scriptable);
        setPrototype(xMLObject);
        this.prototypeFlag = xMLObject == null;
        this.lib = xMLLibImpl;
    }

    public final boolean isPrototype() {
        return this.prototypeFlag;
    }

    public abstract Object jsConstructor(Context context, boolean z, Object[] objArr);

    public final void k(Object obj, String str) {
        throw ScriptRuntime.notFunctionError(obj, str);
    }

    public abstract int length();

    @Override
    public Ref memberRef(Context context, Object obj, int i) {
        boolean z = (i & 2) != 0;
        boolean z2 = (i & 4) != 0;
        if (!z && !z2) {
            throw Kit.codeBug();
        }
        XMLName xMLNameCreate = XMLName.create(this.lib.toNodeQName(context, obj, z), z, z2);
        xMLNameCreate.initXMLObject(this);
        return xMLNameCreate;
    }

    public final QName newQName(String str, String str2, String str3) {
        return this.lib.newQName(str, str2, str3);
    }

    public final XML newTextElementXML(XmlNode xmlNode, XmlNode.QName qName, String str) {
        return this.lib.newTextElementXML(xmlNode, qName, str);
    }

    public final XML newXML(XmlNode xmlNode) {
        return this.lib.newXML(xmlNode);
    }

    public final XML newXMLFromJs(Object obj) {
        return this.lib.newXMLFromJs(obj);
    }

    public final XMLList newXMLList() {
        return this.lib.newXMLList();
    }

    public final XMLList newXMLListFrom(Object obj) {
        return this.lib.newXMLListFrom(obj);
    }

    public abstract void normalize();

    public abstract Object parent();

    public abstract XMLList processingInstructions(XMLName xMLName);

    public abstract boolean propertyIsEnumerable(Object obj);

    @Override
    public final void put(Context context, Object obj, Object obj2) {
        if (context == null) {
            context = Context.getCurrentContext();
        }
        XMLName xMLNameOrIndex = this.lib.toXMLNameOrIndex(context, obj);
        if (xMLNameOrIndex == null) {
            put((int) ScriptRuntime.lastUint32Result(context), this, obj2);
        } else {
            putXMLProperty(xMLNameOrIndex, obj2);
        }
    }

    public abstract void putXMLProperty(XMLName xMLName, Object obj);

    @Override
    public final void setParentScope(Scriptable scriptable) {
        super.setParentScope(scriptable);
    }

    @Override
    public final void setPrototype(Scriptable scriptable) {
        super.setPrototype(scriptable);
    }

    public abstract XMLList text();

    public abstract String toSource(int i);

    public abstract String toString();

    public abstract String toXMLString();

    public abstract Object valueOf();

    public XML xmlFromNode(XmlNode xmlNode) {
        if (xmlNode.getXml() == null) {
            xmlNode.setXml(newXML(xmlNode));
        }
        return xmlNode.getXml();
    }

    public final QName newQName(XmlNode.QName qName) {
        return this.lib.newQName(qName);
    }

    @Override
    public Ref memberRef(Context context, Object obj, Object obj2, int i) {
        XMLName xMLNameCreate = XMLName.create(this.lib.toNodeQName(context, obj, obj2), (i & 2) != 0, (i & 4) != 0);
        xMLNameCreate.initXMLObject(this);
        return xMLNameCreate;
    }

    @Override
    public void delete(String str) {
        deleteXMLProperty(this.lib.toXMLNameFromString(Context.getCurrentContext(), str));
    }

    @Override
    public boolean has(String str, Scriptable scriptable) {
        return hasXMLProperty(this.lib.toXMLNameFromString(Context.getCurrentContext(), str));
    }

    @Override
    public void put(String str, Scriptable scriptable, Object obj) {
        putXMLProperty(this.lib.toXMLNameFromString(Context.getCurrentContext(), str), obj);
    }

    @Override
    public Object getFunctionProperty(Context context, String str) {
        if (isPrototype()) {
            return super.get(str, this);
        }
        Scriptable prototype = getPrototype();
        if (prototype instanceof XMLObject) {
            return ((XMLObject) prototype).getFunctionProperty(context, str);
        }
        return Scriptable.NOT_FOUND;
    }

    @Override
    public Object get(String str, Scriptable scriptable) {
        return getXMLProperty(this.lib.toXMLNameFromString(Context.getCurrentContext(), str));
    }
}
