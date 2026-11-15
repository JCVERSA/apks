package org.mozilla.javascript;

import androidx.media3.exoplayer.rtsp.SessionDescription;

final class Arguments extends IdScriptableObject {
    public static BaseFunction b = new BaseFunction() {
        private static final long serialVersionUID = 4239122318596177391L;

        @Override
        public Object call(Context context, Scriptable scriptable, Scriptable scriptable2, Object[] objArr) {
            return new NativeArrayIterator(scriptable, scriptable2, NativeArrayIterator.ARRAY_ITERATOR_TYPE.VALUES);
        }
    };
    private static final long serialVersionUID = 4275508002492040609L;
    private NativeCall activation;
    private Object[] args;
    private Object calleeObj;
    private Object callerObj;
    private Object lengthObj;
    private int callerAttr = 2;
    private int calleeAttr = 2;
    private int lengthAttr = 2;

    public static class ThrowTypeError extends BaseFunction {
        private static final long serialVersionUID = -744615873947395749L;
        private String propertyName;

        public ThrowTypeError(String str) {
            this.propertyName = str;
        }

        @Override
        public Object call(Context context, Scriptable scriptable, Scriptable scriptable2, Object[] objArr) {
            throw ScriptRuntime.typeError1("msg.arguments.not.access.strict", this.propertyName);
        }
    }

    public Arguments(NativeCall nativeCall) {
        this.activation = nativeCall;
        Scriptable parentScope = nativeCall.getParentScope();
        setParentScope(parentScope);
        setPrototype(ScriptableObject.getObjectPrototype(parentScope));
        Object[] objArr = nativeCall.originalArgs;
        this.args = objArr;
        this.lengthObj = Integer.valueOf(objArr.length);
        NativeFunction nativeFunction = nativeCall.function;
        this.calleeObj = nativeFunction;
        int languageVersion = nativeFunction.getLanguageVersion();
        if (languageVersion > 130 || languageVersion == 0) {
            this.callerObj = Scriptable.NOT_FOUND;
        } else {
            this.callerObj = null;
        }
        defineProperty(SymbolKey.ITERATOR, b, 2);
    }

    public final Object b(int i) {
        if (i >= 0) {
            Object[] objArr = this.args;
            if (objArr.length > i) {
                return objArr[i];
            }
        }
        return Scriptable.NOT_FOUND;
    }

    public final Object c(int i) {
        String paramOrVarName = this.activation.function.getParamOrVarName(i);
        Scriptable scriptable = this.activation;
        return scriptable.get(paramOrVarName, scriptable);
    }

    public void defineAttributesForStrictMode() {
        if (Context.getContext().isStrictMode()) {
            setGetterOrSetter("caller", 0, new ThrowTypeError("caller"), true);
            setGetterOrSetter("caller", 0, new ThrowTypeError("caller"), false);
            setGetterOrSetter("callee", 0, new ThrowTypeError("callee"), true);
            setGetterOrSetter("callee", 0, new ThrowTypeError("callee"), false);
            setAttributes("caller", 6);
            setAttributes("callee", 6);
            this.callerObj = null;
            this.calleeObj = null;
        }
    }

    @Override
    public void defineOwnProperty(Context context, Object obj, ScriptableObject scriptableObject, boolean z) {
        super.defineOwnProperty(context, obj, scriptableObject, z);
        if (ScriptRuntime.isSymbol(obj)) {
            return;
        }
        double number = ScriptRuntime.toNumber(obj);
        int i = (int) number;
        if (number != i) {
            return;
        }
        Object objB = b(i);
        Object obj2 = Scriptable.NOT_FOUND;
        if (objB == obj2) {
            return;
        }
        if (isAccessorDescriptor(scriptableObject)) {
            k(i);
            return;
        }
        Object property = ScriptableObject.getProperty(scriptableObject, ES6Iterator.VALUE_PROPERTY);
        if (property == obj2) {
            return;
        }
        l(i, property);
        if (ScriptableObject.isFalse(ScriptableObject.getProperty(scriptableObject, "writable"))) {
            k(i);
        }
    }

    @Override
    public void delete(int i) {
        if (i >= 0 && i < this.args.length) {
            k(i);
        }
        super.delete(i);
    }

    public final void f(int i, Object obj) {
        String paramOrVarName = this.activation.function.getParamOrVarName(i);
        Scriptable scriptable = this.activation;
        scriptable.put(paramOrVarName, scriptable, obj);
    }

    /* JADX WARN: Code duplicated, block: B:13:0x0028  */
    @Override
    public int findInstanceIdInfo(String str) {
        String str2;
        int i;
        int i2;
        if (str.length() != 6) {
            str2 = null;
            i = 0;
        } else {
            char cCharAt = str.charAt(5);
            if (cCharAt == 'e') {
                str2 = "callee";
                i = 1;
            } else if (cCharAt == 'h') {
                str2 = SessionDescription.ATTR_LENGTH;
                i = 2;
            } else if (cCharAt == 'r') {
                str2 = "caller";
                i = 3;
            } else {
                str2 = null;
                i = 0;
            }
        }
        int i3 = (str2 == null || str2 == str || str2.equals(str)) ? i : 0;
        if (Context.getContext().isStrictMode() && (i3 == 1 || i3 == 3)) {
            return super.findInstanceIdInfo(str);
        }
        if (i3 == 0) {
            return super.findInstanceIdInfo(str);
        }
        if (i3 == 1) {
            i2 = this.calleeAttr;
        } else if (i3 == 2) {
            i2 = this.lengthAttr;
        } else {
            if (i3 != 3) {
                throw new IllegalStateException();
            }
            i2 = this.callerAttr;
        }
        return IdScriptableObject.instanceIdInfo(i2, i3);
    }

    @Override
    public Object get(int i, Scriptable scriptable) {
        Object objB = b(i);
        if (objB == Scriptable.NOT_FOUND) {
            return super.get(i, scriptable);
        }
        return m(i) ? c(i) : objB;
    }

    @Override
    public String getClassName() {
        return "Arguments";
    }

    @Override
    public Object[] getIds(boolean z, boolean z2) {
        int iIntValue;
        Object[] ids = super.getIds(z, z2);
        Object[] objArr = this.args;
        if (objArr.length == 0) {
            return ids;
        }
        int length = objArr.length;
        boolean[] zArr = new boolean[length];
        int length2 = objArr.length;
        for (int i = 0; i != ids.length; i++) {
            Object obj = ids[i];
            if ((obj instanceof Integer) && (iIntValue = ((Integer) obj).intValue()) >= 0 && iIntValue < this.args.length && !zArr[iIntValue]) {
                zArr[iIntValue] = true;
                length2--;
            }
        }
        if (!z) {
            for (int i2 = 0; i2 < length; i2++) {
                if (!zArr[i2] && super.has(i2, this)) {
                    zArr[i2] = true;
                    length2--;
                }
            }
        }
        if (length2 == 0) {
            return ids;
        }
        Object[] objArr2 = new Object[ids.length + length2];
        System.arraycopy(ids, 0, objArr2, length2, ids.length);
        int i3 = 0;
        for (int i4 = 0; i4 != this.args.length; i4++) {
            if (!zArr[i4]) {
                objArr2[i3] = Integer.valueOf(i4);
                i3++;
            }
        }
        if (i3 != length2) {
            Kit.codeBug();
        }
        return objArr2;
    }

    @Override
    public String getInstanceIdName(int i) {
        if (i == 1) {
            return "callee";
        }
        if (i == 2) {
            return SessionDescription.ATTR_LENGTH;
        }
        if (i != 3) {
            return null;
        }
        return "caller";
    }

    @Override
    public Object getInstanceIdValue(int i) {
        Scriptable scriptable;
        if (i == 1) {
            return this.calleeObj;
        }
        if (i == 2) {
            return this.lengthObj;
        }
        if (i != 3) {
            return super.getInstanceIdValue(i);
        }
        Object obj = this.callerObj;
        if (obj == UniqueTag.NULL_VALUE) {
            return null;
        }
        return (obj != null || (scriptable = this.activation.parentActivationCall) == null) ? obj : scriptable.get("arguments", scriptable);
    }

    @Override
    public int getMaxInstanceId() {
        return 3;
    }

    @Override
    public ScriptableObject getOwnPropertyDescriptor(Context context, Object obj) {
        Object objB;
        if (ScriptRuntime.isSymbol(obj) || (obj instanceof Scriptable)) {
            return super.getOwnPropertyDescriptor(context, obj);
        }
        double number = ScriptRuntime.toNumber(obj);
        int i = (int) number;
        if (number == i && (objB = b(i)) != Scriptable.NOT_FOUND) {
            if (m(i)) {
                objB = c(i);
            }
            if (super.has(i, this)) {
                ScriptableObject ownPropertyDescriptor = super.getOwnPropertyDescriptor(context, obj);
                ownPropertyDescriptor.put(ES6Iterator.VALUE_PROPERTY, ownPropertyDescriptor, objB);
                return ownPropertyDescriptor;
            }
            Scriptable parentScope = getParentScope();
            if (parentScope != null) {
                this = parentScope;
            }
            return ScriptableObject.buildDataDescriptor(this, objB, 0);
        }
        return super.getOwnPropertyDescriptor(context, obj);
    }

    @Override
    public boolean has(int i, Scriptable scriptable) {
        if (b(i) != Scriptable.NOT_FOUND) {
            return true;
        }
        return super.has(i, scriptable);
    }

    public final void k(int i) {
        synchronized (this) {
            try {
                Object[] objArr = this.args;
                Object obj = objArr[i];
                Object obj2 = Scriptable.NOT_FOUND;
                if (obj != obj2) {
                    if (objArr == this.activation.originalArgs) {
                        this.args = (Object[]) objArr.clone();
                    }
                    this.args[i] = obj2;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void l(int i, Object obj) {
        if (m(i)) {
            f(i, obj);
        }
        synchronized (this) {
            try {
                Object[] objArr = this.args;
                if (objArr == this.activation.originalArgs) {
                    this.args = (Object[]) objArr.clone();
                }
                this.args[i] = obj;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final boolean m(int i) {
        NativeFunction nativeFunction;
        int paramCount;
        if (Context.getContext().isStrictMode() || i >= (paramCount = (nativeFunction = this.activation.function).getParamCount())) {
            return false;
        }
        if (i < paramCount - 1) {
            String paramOrVarName = nativeFunction.getParamOrVarName(i);
            for (int i2 = i + 1; i2 < paramCount; i2++) {
                if (paramOrVarName.equals(nativeFunction.getParamOrVarName(i2))) {
                    return false;
                }
            }
        }
        return true;
    }

    @Override
    public void put(int i, Scriptable scriptable, Object obj) {
        if (b(i) == Scriptable.NOT_FOUND) {
            super.put(i, scriptable, obj);
        } else {
            l(i, obj);
        }
    }

    @Override
    public void setInstanceIdAttributes(int i, int i2) {
        if (i == 1) {
            this.calleeAttr = i2;
            return;
        }
        if (i == 2) {
            this.lengthAttr = i2;
        } else if (i != 3) {
            super.setInstanceIdAttributes(i, i2);
        } else {
            this.callerAttr = i2;
        }
    }

    @Override
    public void setInstanceIdValue(int i, Object obj) {
        if (i == 1) {
            this.calleeObj = obj;
            return;
        }
        if (i == 2) {
            this.lengthObj = obj;
        } else {
            if (i != 3) {
                super.setInstanceIdValue(i, obj);
                return;
            }
            if (obj == null) {
                obj = UniqueTag.NULL_VALUE;
            }
            this.callerObj = obj;
        }
    }

    @Override
    public void put(String str, Scriptable scriptable, Object obj) {
        super.put(str, scriptable, obj);
    }
}
