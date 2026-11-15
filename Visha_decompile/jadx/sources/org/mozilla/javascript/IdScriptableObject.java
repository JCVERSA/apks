package org.mozilla.javascript;

import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;

public abstract class IdScriptableObject extends ScriptableObject implements IdFunctionCall {
    private static final long serialVersionUID = -3744239272168621609L;
    private transient PrototypeValues prototypeValues;

    public static final class PrototypeValues implements Serializable {
        private static final long serialVersionUID = 3038645279153854371L;
        private short[] attributeArray;
        private IdFunctionObject constructor;
        private short constructorAttrs;
        int constructorId;
        private int maxId;
        private IdScriptableObject obj;
        private Object[] valueArray;

        public PrototypeValues(IdScriptableObject idScriptableObject, int i) {
            if (idScriptableObject == null) {
                throw new IllegalArgumentException();
            }
            if (i < 1) {
                throw new IllegalArgumentException();
            }
            this.obj = idScriptableObject;
            this.maxId = i;
        }

        public final Object a(int i) {
            Object[] objArr = this.valueArray;
            if (objArr == null) {
                synchronized (this) {
                    try {
                        objArr = this.valueArray;
                        if (objArr == null) {
                            int i2 = this.maxId;
                            Object[] objArr2 = new Object[i2 * 2];
                            this.valueArray = objArr2;
                            this.attributeArray = new short[i2];
                            objArr = objArr2;
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                }
            }
            int i3 = (i - 1) * 2;
            Object obj = objArr[i3];
            if (obj == null) {
                int i4 = this.constructorId;
                if (i == i4) {
                    b(i4, "constructor", this.constructor, this.constructorAttrs);
                    this.constructor = null;
                } else {
                    this.obj.initPrototypeId(i);
                }
                obj = objArr[i3];
                if (obj == null) {
                    throw new IllegalStateException(this.obj.getClass().getName() + ".initPrototypeId(int id) did not initialize id=" + i);
                }
            }
            return obj;
        }

        public final void b(int i, Object obj, Object obj2, int i2) {
            Object[] objArr = this.valueArray;
            if (objArr == null) {
                throw new IllegalStateException();
            }
            if (obj2 == null) {
                obj2 = UniqueTag.NULL_VALUE;
            }
            int i3 = i - 1;
            int i4 = i3 * 2;
            synchronized (this) {
                try {
                    if (objArr[i4] == null) {
                        objArr[i4] = obj2;
                        objArr[i4 + 1] = obj;
                        this.attributeArray[i3] = (short) i2;
                    } else if (!obj.equals(objArr[i4 + 1])) {
                        throw new IllegalStateException();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }

        public final IdFunctionObject createPrecachedConstructor() {
            if (this.constructorId != 0) {
                throw new IllegalStateException();
            }
            int iFindPrototypeId = this.obj.findPrototypeId("constructor");
            this.constructorId = iFindPrototypeId;
            if (iFindPrototypeId == 0) {
                throw new IllegalStateException("No id for constructor property");
            }
            this.obj.initPrototypeId(iFindPrototypeId);
            IdFunctionObject idFunctionObject = this.constructor;
            if (idFunctionObject != null) {
                idFunctionObject.initFunction(this.obj.getClassName(), ScriptableObject.getTopLevelScope(this.obj));
                this.constructor.markAsConstructor(this.obj);
                return this.constructor;
            }
            throw new IllegalStateException(this.obj.getClass().getName() + ".initPrototypeId() did not initialize id=" + this.constructorId);
        }

        public final void delete(int i) {
            a(i);
            int i2 = i - 1;
            if ((this.attributeArray[i2] & 4) != 0) {
                if (Context.getContext().isStrictMode()) {
                    throw ScriptRuntime.typeError1("msg.delete.property.with.configurable.false", (String) this.valueArray[(i2 * 2) + 1]);
                }
            } else {
                int i3 = i2 * 2;
                synchronized (this) {
                    this.valueArray[i3] = Scriptable.NOT_FOUND;
                    this.attributeArray[i2] = 0;
                }
            }
        }

        public final int findId(String str) {
            return this.obj.findPrototypeId(str);
        }

        public final Object get(int i) {
            Object objA = a(i);
            if (objA == UniqueTag.NULL_VALUE) {
                return null;
            }
            return objA;
        }

        public final int getAttributes(int i) {
            a(i);
            return this.attributeArray[i - 1];
        }

        public final int getMaxId() {
            return this.maxId;
        }

        public final Object[] getNames(boolean z, boolean z2, Object[] objArr) {
            int i;
            Object[] objArr2 = null;
            int i2 = 0;
            for (int i3 = 1; i3 <= this.maxId; i3++) {
                Object objA = a(i3);
                if ((z || (this.attributeArray[i3 - 1] & 2) == 0) && objA != Scriptable.NOT_FOUND) {
                    Object obj = this.valueArray[((i3 - 1) * 2) + 1];
                    if (obj instanceof String) {
                        if (objArr2 == null) {
                            objArr2 = new Object[this.maxId];
                        }
                        i = i2 + 1;
                        objArr2[i2] = obj;
                    } else if (z2 && (obj instanceof Symbol)) {
                        if (objArr2 == null) {
                            objArr2 = new Object[this.maxId];
                        }
                        i = i2 + 1;
                        objArr2[i2] = obj.toString();
                    }
                    i2 = i;
                }
            }
            if (i2 == 0) {
                return objArr;
            }
            if (objArr == null || objArr.length == 0) {
                if (i2 == objArr2.length) {
                    return objArr2;
                }
                Object[] objArr3 = new Object[i2];
                System.arraycopy(objArr2, 0, objArr3, 0, i2);
                return objArr3;
            }
            int length = objArr.length;
            Object[] objArr4 = new Object[length + i2];
            System.arraycopy(objArr, 0, objArr4, 0, length);
            System.arraycopy(objArr2, 0, objArr4, length, i2);
            return objArr4;
        }

        public final boolean has(int i) {
            Object obj;
            Object[] objArr = this.valueArray;
            return objArr == null || (obj = objArr[(i - 1) * 2]) == null || obj != Scriptable.NOT_FOUND;
        }

        public final void initValue(int i, String str, Object obj, int i2) {
            if (1 > i || i > this.maxId) {
                throw new IllegalArgumentException();
            }
            if (str == null) {
                throw new IllegalArgumentException();
            }
            if (obj == Scriptable.NOT_FOUND) {
                throw new IllegalArgumentException();
            }
            ScriptableObject.checkValidAttributes(i2);
            if (this.obj.findPrototypeId(str) != i) {
                throw new IllegalArgumentException(str);
            }
            if (i != this.constructorId) {
                b(i, str, obj, i2);
            } else {
                if (!(obj instanceof IdFunctionObject)) {
                    throw new IllegalArgumentException("consructor should be initialized with IdFunctionObject");
                }
                this.constructor = (IdFunctionObject) obj;
                this.constructorAttrs = (short) i2;
            }
        }

        public final void set(int i, Scriptable scriptable, Object obj) {
            if (obj == Scriptable.NOT_FOUND) {
                throw new IllegalArgumentException();
            }
            a(i);
            int i2 = i - 1;
            if ((this.attributeArray[i2] & 1) == 0) {
                if (scriptable == this.obj) {
                    if (obj == null) {
                        obj = UniqueTag.NULL_VALUE;
                    }
                    int i3 = i2 * 2;
                    synchronized (this) {
                        this.valueArray[i3] = obj;
                    }
                    return;
                }
                Object obj2 = this.valueArray[(i2 * 2) + 1];
                if (!(obj2 instanceof Symbol)) {
                    scriptable.put((String) obj2, scriptable, obj);
                } else if (scriptable instanceof SymbolScriptable) {
                    ((SymbolScriptable) scriptable).put((Symbol) obj2, scriptable, obj);
                }
            }
        }

        public final void setAttributes(int i, int i2) {
            ScriptableObject.checkValidAttributes(i2);
            a(i);
            synchronized (this) {
                this.attributeArray[i - 1] = (short) i2;
            }
        }

        public final int findId(Symbol symbol) {
            return this.obj.findPrototypeId(symbol);
        }

        public final void initValue(int i, Symbol symbol, Object obj, int i2) {
            if (1 > i || i > this.maxId) {
                throw new IllegalArgumentException();
            }
            if (symbol != null) {
                if (obj != Scriptable.NOT_FOUND) {
                    ScriptableObject.checkValidAttributes(i2);
                    if (this.obj.findPrototypeId(symbol) == i) {
                        if (i == this.constructorId) {
                            if (obj instanceof IdFunctionObject) {
                                this.constructor = (IdFunctionObject) obj;
                                this.constructorAttrs = (short) i2;
                                return;
                            }
                            throw new IllegalArgumentException("consructor should be initialized with IdFunctionObject");
                        }
                        b(i, symbol, obj, i2);
                        return;
                    }
                    throw new IllegalArgumentException(symbol.toString());
                }
                throw new IllegalArgumentException();
            }
            throw new IllegalArgumentException();
        }
    }

    public IdScriptableObject() {
    }

    private ScriptableObject getBuiltInDescriptor(String str) {
        int iFindId;
        Scriptable parentScope = getParentScope();
        if (parentScope == null) {
            parentScope = this;
        }
        int iFindInstanceIdInfo = findInstanceIdInfo(str);
        if (iFindInstanceIdInfo != 0) {
            return ScriptableObject.buildDataDescriptor(parentScope, getInstanceIdValue(65535 & iFindInstanceIdInfo), iFindInstanceIdInfo >>> 16);
        }
        PrototypeValues prototypeValues = this.prototypeValues;
        if (prototypeValues == null || (iFindId = prototypeValues.findId(str)) == 0) {
            return null;
        }
        return ScriptableObject.buildDataDescriptor(parentScope, this.prototypeValues.get(iFindId), this.prototypeValues.getAttributes(iFindId));
    }

    public static EcmaError incompatibleCallError(IdFunctionObject idFunctionObject) {
        throw ScriptRuntime.typeError1("msg.incompat.call", idFunctionObject.getFunctionName());
    }

    public static int instanceIdInfo(int i, int i2) {
        return (i << 16) | i2;
    }

    private IdFunctionObject newIdFunction(Object obj, int i, String str, int i2, Scriptable scriptable) {
        IdFunctionObject idFunctionObject = Context.getContext().getLanguageVersion() < 200 ? new IdFunctionObject(this, obj, i, str, i2, scriptable) : new IdFunctionObjectES6(this, obj, i, str, i2, scriptable);
        if (isSealed()) {
            idFunctionObject.sealObject();
        }
        return idFunctionObject;
    }

    private void readObject(ObjectInputStream objectInputStream) throws ClassNotFoundException, IOException {
        objectInputStream.defaultReadObject();
        int i = objectInputStream.readInt();
        if (i != 0) {
            activatePrototypeMap(i);
        }
    }

    private void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.defaultWriteObject();
        PrototypeValues prototypeValues = this.prototypeValues;
        objectOutputStream.writeInt(prototypeValues != null ? prototypeValues.getMaxId() : 0);
    }

    public final void activatePrototypeMap(int i) {
        PrototypeValues prototypeValues = new PrototypeValues(this, i);
        synchronized (this) {
            try {
                if (this.prototypeValues != null) {
                    throw new IllegalStateException();
                }
                this.prototypeValues = prototypeValues;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public void addIdFunctionProperty(Scriptable scriptable, Object obj, int i, String str, int i2) {
        newIdFunction(obj, i, str, i2, ScriptableObject.getTopLevelScope(scriptable)).addAsProperty(scriptable);
    }

    public final Object defaultGet(String str) {
        return super.get(str, this);
    }

    public final boolean defaultHas(String str) {
        return super.has(str, this);
    }

    public final void defaultPut(String str, Object obj) {
        super.put(str, this, obj);
    }

    @Override
    public void defineOwnProperty(Context context, Object obj, ScriptableObject scriptableObject) {
        int iFindId;
        if (obj instanceof String) {
            String str = (String) obj;
            int iFindInstanceIdInfo = findInstanceIdInfo(str);
            if (iFindInstanceIdInfo != 0) {
                int i = 65535 & iFindInstanceIdInfo;
                if (!isAccessorDescriptor(scriptableObject)) {
                    checkPropertyDefinition(scriptableObject);
                    checkPropertyChange(str, getOwnPropertyDescriptor(context, obj), scriptableObject);
                    int i2 = iFindInstanceIdInfo >>> 16;
                    Object property = ScriptableObject.getProperty(scriptableObject, ES6Iterator.VALUE_PROPERTY);
                    if (property != Scriptable.NOT_FOUND && (i2 & 1) == 0 && !sameValue(property, getInstanceIdValue(i))) {
                        setInstanceIdValue(i, property);
                    }
                    setAttributes(str, applyDescriptorToAttributeBitset(i2, scriptableObject));
                    return;
                }
                delete(i);
            }
            PrototypeValues prototypeValues = this.prototypeValues;
            if (prototypeValues != null && (iFindId = prototypeValues.findId(str)) != 0) {
                if (!isAccessorDescriptor(scriptableObject)) {
                    checkPropertyDefinition(scriptableObject);
                    checkPropertyChange(str, getOwnPropertyDescriptor(context, obj), scriptableObject);
                    int attributes = this.prototypeValues.getAttributes(iFindId);
                    Object property2 = ScriptableObject.getProperty(scriptableObject, ES6Iterator.VALUE_PROPERTY);
                    if (property2 != Scriptable.NOT_FOUND && (attributes & 1) == 0 && !sameValue(property2, this.prototypeValues.get(iFindId))) {
                        this.prototypeValues.set(iFindId, this, property2);
                    }
                    this.prototypeValues.setAttributes(iFindId, applyDescriptorToAttributeBitset(attributes, scriptableObject));
                    if (super.has(str, this)) {
                        super.delete(str);
                        return;
                    }
                    return;
                }
                this.prototypeValues.delete(iFindId);
            }
        }
        super.defineOwnProperty(context, obj, scriptableObject);
    }

    @Override
    public void delete(String str) {
        int iFindId;
        int iFindInstanceIdInfo = findInstanceIdInfo(str);
        if (iFindInstanceIdInfo != 0 && !isSealed()) {
            if (((iFindInstanceIdInfo >>> 16) & 4) == 0) {
                setInstanceIdValue(65535 & iFindInstanceIdInfo, Scriptable.NOT_FOUND);
                return;
            } else {
                if (Context.getContext().isStrictMode()) {
                    throw ScriptRuntime.typeError1("msg.delete.property.with.configurable.false", str);
                }
                return;
            }
        }
        PrototypeValues prototypeValues = this.prototypeValues;
        if (prototypeValues == null || (iFindId = prototypeValues.findId(str)) == 0) {
            super.delete(str);
        } else {
            if (isSealed()) {
                return;
            }
            this.prototypeValues.delete(iFindId);
        }
    }

    public Object execIdCall(IdFunctionObject idFunctionObject, Context context, Scriptable scriptable, Scriptable scriptable2, Object[] objArr) {
        throw idFunctionObject.unknown();
    }

    public final IdFunctionObject exportAsJSClass(int i, Scriptable scriptable, boolean z) {
        if (scriptable != this && scriptable != null) {
            setParentScope(scriptable);
            setPrototype(ScriptableObject.getObjectPrototype(scriptable));
        }
        activatePrototypeMap(i);
        IdFunctionObject idFunctionObjectCreatePrecachedConstructor = this.prototypeValues.createPrecachedConstructor();
        if (z) {
            sealObject();
        }
        fillConstructorProperties(idFunctionObjectCreatePrecachedConstructor);
        if (z) {
            idFunctionObjectCreatePrecachedConstructor.sealObject();
        }
        idFunctionObjectCreatePrecachedConstructor.exportAsScopeProperty();
        return idFunctionObjectCreatePrecachedConstructor;
    }

    public void fillConstructorProperties(IdFunctionObject idFunctionObject) {
    }

    public int findInstanceIdInfo(String str) {
        return 0;
    }

    public int findPrototypeId(Symbol symbol) {
        return 0;
    }

    @Override
    public Object get(String str, Scriptable scriptable) {
        int iFindId;
        Object obj;
        Object instanceIdValue;
        Object obj2 = super.get(str, scriptable);
        Object obj3 = Scriptable.NOT_FOUND;
        if (obj2 != obj3) {
            return obj2;
        }
        int iFindInstanceIdInfo = findInstanceIdInfo(str);
        if (iFindInstanceIdInfo != 0 && (instanceIdValue = getInstanceIdValue(iFindInstanceIdInfo & 65535)) != obj3) {
            return instanceIdValue;
        }
        PrototypeValues prototypeValues = this.prototypeValues;
        return (prototypeValues == null || (iFindId = prototypeValues.findId(str)) == 0 || (obj = this.prototypeValues.get(iFindId)) == obj3) ? obj3 : obj;
    }

    @Override
    public int getAttributes(String str) {
        int iFindId;
        int iFindInstanceIdInfo = findInstanceIdInfo(str);
        if (iFindInstanceIdInfo != 0) {
            return iFindInstanceIdInfo >>> 16;
        }
        PrototypeValues prototypeValues = this.prototypeValues;
        return (prototypeValues == null || (iFindId = prototypeValues.findId(str)) == 0) ? super.getAttributes(str) : this.prototypeValues.getAttributes(iFindId);
    }

    @Override
    public Object[] getIds(boolean z, boolean z2) {
        Object[] ids = super.getIds(z, z2);
        PrototypeValues prototypeValues = this.prototypeValues;
        if (prototypeValues != null) {
            ids = prototypeValues.getNames(z, z2, ids);
        }
        int maxInstanceId = getMaxInstanceId();
        if (maxInstanceId == 0) {
            return ids;
        }
        Object[] objArr = null;
        int i = 0;
        while (maxInstanceId != 0) {
            String instanceIdName = getInstanceIdName(maxInstanceId);
            int iFindInstanceIdInfo = findInstanceIdInfo(instanceIdName);
            if (iFindInstanceIdInfo != 0) {
                int i2 = iFindInstanceIdInfo >>> 16;
                if (((i2 & 4) != 0 || Scriptable.NOT_FOUND != getInstanceIdValue(maxInstanceId)) && (z || (i2 & 2) == 0)) {
                    if (i == 0) {
                        objArr = new Object[maxInstanceId];
                    }
                    objArr[i] = instanceIdName;
                    i++;
                }
            }
            maxInstanceId--;
        }
        if (i == 0) {
            return ids;
        }
        if (ids.length == 0 && objArr.length == i) {
            return objArr;
        }
        Object[] objArr2 = new Object[ids.length + i];
        System.arraycopy(ids, 0, objArr2, 0, ids.length);
        System.arraycopy(objArr, 0, objArr2, ids.length, i);
        return objArr2;
    }

    public String getInstanceIdName(int i) {
        throw new IllegalArgumentException(String.valueOf(i));
    }

    public Object getInstanceIdValue(int i) {
        throw new IllegalStateException(String.valueOf(i));
    }

    public int getMaxInstanceId() {
        return 0;
    }

    @Override
    public ScriptableObject getOwnPropertyDescriptor(Context context, Object obj) {
        ScriptableObject ownPropertyDescriptor = super.getOwnPropertyDescriptor(context, obj);
        if (ownPropertyDescriptor != null) {
            return ownPropertyDescriptor;
        }
        if (obj instanceof String) {
            return getBuiltInDescriptor((String) obj);
        }
        return ScriptRuntime.isSymbol(obj) ? getBuiltInDescriptor(((NativeSymbol) obj).getKey()) : ownPropertyDescriptor;
    }

    @Override
    public boolean has(String str, Scriptable scriptable) {
        int iFindId;
        int iFindInstanceIdInfo = findInstanceIdInfo(str);
        if (iFindInstanceIdInfo == 0) {
            PrototypeValues prototypeValues = this.prototypeValues;
            return (prototypeValues == null || (iFindId = prototypeValues.findId(str)) == 0) ? super.has(str, scriptable) : this.prototypeValues.has(iFindId);
        }
        if (((iFindInstanceIdInfo >>> 16) & 4) != 0) {
            return true;
        }
        return Scriptable.NOT_FOUND != getInstanceIdValue(65535 & iFindInstanceIdInfo);
    }

    public final boolean hasPrototypeMap() {
        return this.prototypeValues != null;
    }

    public final void initPrototypeConstructor(IdFunctionObject idFunctionObject) {
        int i = this.prototypeValues.constructorId;
        if (i == 0) {
            throw new IllegalStateException();
        }
        if (idFunctionObject.methodId() != i) {
            throw new IllegalArgumentException();
        }
        if (isSealed()) {
            idFunctionObject.sealObject();
        }
        this.prototypeValues.initValue(i, "constructor", idFunctionObject, 2);
    }

    public void initPrototypeId(int i) {
        throw new IllegalStateException(String.valueOf(i));
    }

    public final IdFunctionObject initPrototypeMethod(Object obj, int i, String str, int i2) {
        return initPrototypeMethod(obj, i, str, str, i2);
    }

    public final void initPrototypeValue(int i, String str, Object obj, int i2) {
        this.prototypeValues.initValue(i, str, obj, i2);
    }

    @Override
    public void put(String str, Scriptable scriptable, Object obj) {
        int iFindId;
        int iFindInstanceIdInfo = findInstanceIdInfo(str);
        if (iFindInstanceIdInfo != 0) {
            if (scriptable == this && isSealed()) {
                throw Context.reportRuntimeError1("msg.modify.sealed", str);
            }
            if (((iFindInstanceIdInfo >>> 16) & 1) == 0) {
                if (scriptable == this) {
                    setInstanceIdValue(65535 & iFindInstanceIdInfo, obj);
                    return;
                } else {
                    scriptable.put(str, scriptable, obj);
                    return;
                }
            }
            return;
        }
        PrototypeValues prototypeValues = this.prototypeValues;
        if (prototypeValues == null || (iFindId = prototypeValues.findId(str)) == 0) {
            super.put(str, scriptable, obj);
        } else {
            if (scriptable == this && isSealed()) {
                throw Context.reportRuntimeError1("msg.modify.sealed", str);
            }
            this.prototypeValues.set(iFindId, scriptable, obj);
        }
    }

    @Override
    public void setAttributes(String str, int i) {
        int iFindId;
        ScriptableObject.checkValidAttributes(i);
        int iFindInstanceIdInfo = findInstanceIdInfo(str);
        if (iFindInstanceIdInfo != 0) {
            int i2 = 65535 & iFindInstanceIdInfo;
            if (i != (iFindInstanceIdInfo >>> 16)) {
                setInstanceIdAttributes(i2, i);
                return;
            }
            return;
        }
        PrototypeValues prototypeValues = this.prototypeValues;
        if (prototypeValues == null || (iFindId = prototypeValues.findId(str)) == 0) {
            super.setAttributes(str, i);
        } else {
            this.prototypeValues.setAttributes(iFindId, i);
        }
    }

    public void setInstanceIdAttributes(int i, int i2) {
        throw ScriptRuntime.constructError("InternalError", "Changing attributes not supported for " + getClassName() + " " + getInstanceIdName(i) + " property");
    }

    public void setInstanceIdValue(int i, Object obj) {
        throw new IllegalStateException(String.valueOf(i));
    }

    public IdScriptableObject(Scriptable scriptable, Scriptable scriptable2) {
        super(scriptable, scriptable2);
    }

    public int findInstanceIdInfo(Symbol symbol) {
        return 0;
    }

    public int findPrototypeId(String str) {
        throw new IllegalStateException(str);
    }

    public final IdFunctionObject initPrototypeMethod(Object obj, int i, String str, String str2, int i2) {
        IdFunctionObject idFunctionObjectNewIdFunction = newIdFunction(obj, i, str2 != null ? str2 : str, i2, ScriptableObject.getTopLevelScope(this));
        this.prototypeValues.initValue(i, str, idFunctionObjectNewIdFunction, 2);
        return idFunctionObjectNewIdFunction;
    }

    public final void initPrototypeValue(int i, Symbol symbol, Object obj, int i2) {
        this.prototypeValues.initValue(i, symbol, obj, i2);
    }

    public final IdFunctionObject initPrototypeMethod(Object obj, int i, Symbol symbol, String str, int i2) {
        IdFunctionObject idFunctionObjectNewIdFunction = newIdFunction(obj, i, str, i2, ScriptableObject.getTopLevelScope(this));
        this.prototypeValues.initValue(i, symbol, idFunctionObjectNewIdFunction, 2);
        return idFunctionObjectNewIdFunction;
    }

    @Override
    public int getAttributes(Symbol symbol) {
        int iFindId;
        int iFindInstanceIdInfo = findInstanceIdInfo(symbol);
        if (iFindInstanceIdInfo != 0) {
            return iFindInstanceIdInfo >>> 16;
        }
        PrototypeValues prototypeValues = this.prototypeValues;
        if (prototypeValues != null && (iFindId = prototypeValues.findId(symbol)) != 0) {
            return this.prototypeValues.getAttributes(iFindId);
        }
        return super.getAttributes(symbol);
    }

    @Override
    public boolean has(Symbol symbol, Scriptable scriptable) {
        int iFindId;
        int iFindInstanceIdInfo = findInstanceIdInfo(symbol);
        if (iFindInstanceIdInfo != 0) {
            if (((iFindInstanceIdInfo >>> 16) & 4) != 0) {
                return true;
            }
            return Scriptable.NOT_FOUND != getInstanceIdValue(65535 & iFindInstanceIdInfo);
        }
        PrototypeValues prototypeValues = this.prototypeValues;
        if (prototypeValues != null && (iFindId = prototypeValues.findId(symbol)) != 0) {
            return this.prototypeValues.has(iFindId);
        }
        return super.has(symbol, scriptable);
    }

    @Override
    public Object get(Symbol symbol, Scriptable scriptable) {
        int iFindId;
        Object obj;
        Object instanceIdValue;
        Object obj2 = super.get(symbol, scriptable);
        Object obj3 = Scriptable.NOT_FOUND;
        if (obj2 != obj3) {
            return obj2;
        }
        int iFindInstanceIdInfo = findInstanceIdInfo(symbol);
        if (iFindInstanceIdInfo != 0 && (instanceIdValue = getInstanceIdValue(iFindInstanceIdInfo & 65535)) != obj3) {
            return instanceIdValue;
        }
        PrototypeValues prototypeValues = this.prototypeValues;
        return (prototypeValues == null || (iFindId = prototypeValues.findId(symbol)) == 0 || (obj = this.prototypeValues.get(iFindId)) == obj3) ? obj3 : obj;
    }

    private ScriptableObject getBuiltInDescriptor(Symbol symbol) {
        int iFindId;
        Scriptable parentScope = getParentScope();
        if (parentScope == null) {
            parentScope = this;
        }
        PrototypeValues prototypeValues = this.prototypeValues;
        if (prototypeValues == null || (iFindId = prototypeValues.findId(symbol)) == 0) {
            return null;
        }
        return ScriptableObject.buildDataDescriptor(parentScope, this.prototypeValues.get(iFindId), this.prototypeValues.getAttributes(iFindId));
    }

    @Override
    public void delete(Symbol symbol) {
        int iFindId;
        int iFindInstanceIdInfo = findInstanceIdInfo(symbol);
        if (iFindInstanceIdInfo != 0 && !isSealed()) {
            if (((iFindInstanceIdInfo >>> 16) & 4) != 0) {
                if (Context.getContext().isStrictMode()) {
                    throw ScriptRuntime.typeError0("msg.delete.property.with.configurable.false");
                }
                return;
            } else {
                setInstanceIdValue(65535 & iFindInstanceIdInfo, Scriptable.NOT_FOUND);
                return;
            }
        }
        PrototypeValues prototypeValues = this.prototypeValues;
        if (prototypeValues != null && (iFindId = prototypeValues.findId(symbol)) != 0) {
            if (isSealed()) {
                return;
            }
            this.prototypeValues.delete(iFindId);
            return;
        }
        super.delete(symbol);
    }

    @Override
    public void put(Symbol symbol, Scriptable scriptable, Object obj) {
        int iFindId;
        int iFindInstanceIdInfo = findInstanceIdInfo(symbol);
        if (iFindInstanceIdInfo != 0) {
            if (scriptable == this && isSealed()) {
                throw Context.reportRuntimeError0("msg.modify.sealed");
            }
            if (((iFindInstanceIdInfo >>> 16) & 1) == 0) {
                if (scriptable == this) {
                    setInstanceIdValue(65535 & iFindInstanceIdInfo, obj);
                    return;
                } else {
                    ScriptableObject.ensureSymbolScriptable(scriptable).put(symbol, scriptable, obj);
                    return;
                }
            }
            return;
        }
        PrototypeValues prototypeValues = this.prototypeValues;
        if (prototypeValues != null && (iFindId = prototypeValues.findId(symbol)) != 0) {
            if (scriptable == this && isSealed()) {
                throw Context.reportRuntimeError0("msg.modify.sealed");
            }
            this.prototypeValues.set(iFindId, scriptable, obj);
            return;
        }
        super.put(symbol, scriptable, obj);
    }
}
