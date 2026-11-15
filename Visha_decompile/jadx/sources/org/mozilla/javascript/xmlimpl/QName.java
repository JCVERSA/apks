package org.mozilla.javascript.xmlimpl;

import org.mozilla.javascript.Context;
import org.mozilla.javascript.IdFunctionObject;
import org.mozilla.javascript.IdScriptableObject;
import org.mozilla.javascript.ScriptRuntime;
import org.mozilla.javascript.Scriptable;
import org.mozilla.javascript.Undefined;

final class QName extends IdScriptableObject {
    public static final Object b = "QName";
    static final long serialVersionUID = 416745167693026750L;
    private XmlNode.QName delegate;
    private XMLLibImpl lib;
    private QName prototype;

    private QName() {
    }

    private String c() {
        StringBuilder sb = new StringBuilder();
        sb.append('(');
        k(uri(), localName(), prefix(), sb);
        sb.append(')');
        return sb.toString();
    }

    public static QName create(XMLLibImpl xMLLibImpl, Scriptable scriptable, QName qName, XmlNode.QName qName2) {
        QName qName3 = new QName();
        qName3.lib = xMLLibImpl;
        qName3.setParentScope(scriptable);
        qName3.prototype = qName;
        qName3.setPrototype(qName);
        qName3.delegate = qName2;
        return qName3;
    }

    private Object jsConstructor(Context context, boolean z, Object[] objArr) {
        if (!z && objArr.length == 1) {
            return castToQName(this.lib, context, objArr[0]);
        }
        if (objArr.length == 0) {
            return constructQName(this.lib, context, Undefined.instance);
        }
        return objArr.length == 1 ? constructQName(this.lib, context, objArr[0]) : constructQName(this.lib, context, objArr[0], objArr[1]);
    }

    public static void k(String str, String str2, String str3, StringBuilder sb) {
        sb.append("new QName(");
        if (str == null && str3 == null) {
            if (!"*".equals(str2)) {
                sb.append("null, ");
            }
        } else if (str != null) {
            Namespace.toSourceImpl(str3, str, sb);
            sb.append(", ");
        }
        sb.append('\'');
        sb.append(ScriptRuntime.escapeString(str2, '\''));
        sb.append("')");
    }

    public final boolean b(QName qName) {
        return this.delegate.equals(qName.delegate);
    }

    public QName castToQName(XMLLibImpl xMLLibImpl, Context context, Object obj) {
        return obj instanceof QName ? (QName) obj : constructQName(xMLLibImpl, context, obj);
    }

    public QName constructQName(XMLLibImpl xMLLibImpl, Context context, Object obj, Object obj2) {
        Namespace namespaceNewNamespace;
        String strPrefix;
        if (obj2 instanceof QName) {
            if (obj == Undefined.instance) {
                return (QName) obj2;
            }
            ((QName) obj2).localName();
        }
        Object obj3 = Undefined.instance;
        String string = obj2 == obj3 ? "" : ScriptRuntime.toString(obj2);
        String strUri = null;
        if (obj == obj3) {
            obj = "*".equals(string) ? null : xMLLibImpl.getDefaultNamespace(context);
        }
        if (obj == null) {
            namespaceNewNamespace = null;
        } else {
            namespaceNewNamespace = obj instanceof Namespace ? (Namespace) obj : xMLLibImpl.newNamespace(ScriptRuntime.toString(obj));
        }
        if (obj == null) {
            strPrefix = null;
        } else {
            strUri = namespaceNewNamespace.uri();
            strPrefix = namespaceNewNamespace.prefix();
        }
        return newQName(xMLLibImpl, strUri, string, strPrefix);
    }

    public boolean equals(Object obj) {
        if (obj instanceof QName) {
            return b((QName) obj);
        }
        return false;
    }

    @Override
    public Object equivalentValues(Object obj) {
        if (obj instanceof QName) {
            return b((QName) obj) ? Boolean.TRUE : Boolean.FALSE;
        }
        return Scriptable.NOT_FOUND;
    }

    @Override
    public Object execIdCall(IdFunctionObject idFunctionObject, Context context, Scriptable scriptable, Scriptable scriptable2, Object[] objArr) {
        if (!idFunctionObject.hasTag(b)) {
            return super.execIdCall(idFunctionObject, context, scriptable, scriptable2, objArr);
        }
        int iMethodId = idFunctionObject.methodId();
        if (iMethodId == 1) {
            return jsConstructor(context, scriptable2 == null, objArr);
        }
        if (iMethodId == 2) {
            return f(scriptable2, idFunctionObject).toString();
        }
        if (iMethodId == 3) {
            return f(scriptable2, idFunctionObject).c();
        }
        throw new IllegalArgumentException(String.valueOf(iMethodId));
    }

    public void exportAsJSClass(boolean z) {
        exportAsJSClass(3, getParentScope(), z);
    }

    public final QName f(Scriptable scriptable, IdFunctionObject idFunctionObject) {
        if (scriptable instanceof QName) {
            return (QName) scriptable;
        }
        throw IdScriptableObject.incompatibleCallError(idFunctionObject);
    }

    @Override
    public int findInstanceIdInfo(String str) {
        String str2;
        int i;
        int length = str.length();
        if (length == 3) {
            str2 = "uri";
            i = 2;
        } else if (length == 9) {
            str2 = "localName";
            i = 1;
        } else {
            str2 = null;
            i = 0;
        }
        int i2 = (str2 == null || str2 == str || str2.equals(str)) ? i : 0;
        if (i2 == 0) {
            return super.findInstanceIdInfo(str);
        }
        if (i2 == 1 || i2 == 2) {
            return IdScriptableObject.instanceIdInfo(5, super.getMaxInstanceId() + i2);
        }
        throw new IllegalStateException();
    }

    /* JADX WARN: Code duplicated, block: B:13:0x0025  */
    @Override
    public int findPrototypeId(String str) {
        String str2;
        int i;
        int length = str.length();
        if (length == 8) {
            i = 3;
            char cCharAt = str.charAt(3);
            if (cCharAt == 'o') {
                str2 = "toSource";
            } else if (cCharAt == 't') {
                str2 = "toString";
                i = 2;
            } else {
                str2 = null;
                i = 0;
            }
        } else if (length == 11) {
            str2 = "constructor";
            i = 1;
        } else {
            str2 = null;
            i = 0;
        }
        if (str2 == null || str2 == str || str2.equals(str)) {
            return i;
        }
        return 0;
    }

    @Override
    public String getClassName() {
        return "QName";
    }

    @Override
    public Object getDefaultValue(Class<?> cls) {
        return toString();
    }

    public final XmlNode.QName getDelegate() {
        return this.delegate;
    }

    @Override
    public String getInstanceIdName(int i) {
        int maxInstanceId = i - super.getMaxInstanceId();
        if (maxInstanceId != 1) {
            return maxInstanceId != 2 ? super.getInstanceIdName(i) : "uri";
        }
        return "localName";
    }

    @Override
    public Object getInstanceIdValue(int i) {
        int maxInstanceId = i - super.getMaxInstanceId();
        if (maxInstanceId != 1) {
            return maxInstanceId != 2 ? super.getInstanceIdValue(i) : uri();
        }
        return localName();
    }

    @Override
    public int getMaxInstanceId() {
        return super.getMaxInstanceId() + 2;
    }

    public int hashCode() {
        return this.delegate.hashCode();
    }

    @Override
    public void initPrototypeId(int i) {
        String str;
        int i2;
        if (i != 1) {
            i2 = 0;
            if (i == 2) {
                str = "toString";
            } else {
                if (i != 3) {
                    throw new IllegalArgumentException(String.valueOf(i));
                }
                str = "toSource";
            }
        } else {
            str = "constructor";
            i2 = 2;
        }
        initPrototypeMethod(b, i, str, i2);
    }

    public String localName() {
        return this.delegate.getLocalName() == null ? "*" : this.delegate.getLocalName();
    }

    public QName newQName(XMLLibImpl xMLLibImpl, String str, String str2, String str3) {
        XmlNode.Namespace namespaceCreate;
        QName qName = this.prototype;
        if (qName == null) {
            qName = this;
        }
        if (str3 != null) {
            namespaceCreate = XmlNode.Namespace.create(str3, str);
        } else {
            namespaceCreate = str != null ? XmlNode.Namespace.create(str) : null;
        }
        if (str2 != null && str2.equals("*")) {
            str2 = null;
        }
        return create(xMLLibImpl, getParentScope(), qName, XmlNode.QName.create(namespaceCreate, str2));
    }

    public String prefix() {
        if (this.delegate.getNamespace() == null) {
            return null;
        }
        return this.delegate.getNamespace().getPrefix();
    }

    @Deprecated
    public final XmlNode.QName toNodeQname() {
        return this.delegate;
    }

    public String toString() {
        if (this.delegate.getNamespace() == null) {
            return "*::" + localName();
        }
        if (this.delegate.getNamespace().isGlobal()) {
            return localName();
        }
        return uri() + "::" + localName();
    }

    public String uri() {
        if (this.delegate.getNamespace() == null) {
            return null;
        }
        return this.delegate.getNamespace().getUri();
    }

    public QName constructQName(XMLLibImpl xMLLibImpl, Context context, Object obj) {
        return constructQName(xMLLibImpl, context, Undefined.instance, obj);
    }
}
