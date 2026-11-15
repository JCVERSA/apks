package org.mozilla.javascript;

import java.util.AbstractCollection;
import java.util.AbstractSet;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.Set;

public class NativeObject extends IdScriptableObject implements Map {
    private static final int ConstructorId_assign = -15;
    private static final int ConstructorId_create = -9;
    private static final int ConstructorId_defineProperties = -8;
    private static final int ConstructorId_defineProperty = -5;
    private static final int ConstructorId_freeze = -13;
    private static final int ConstructorId_getOwnPropertyDescriptor = -4;
    private static final int ConstructorId_getOwnPropertyNames = -3;
    private static final int ConstructorId_getOwnPropertySymbols = -14;
    private static final int ConstructorId_getPrototypeOf = -1;
    private static final int ConstructorId_is = -16;
    private static final int ConstructorId_isExtensible = -6;
    private static final int ConstructorId_isFrozen = -11;
    private static final int ConstructorId_isSealed = -10;
    private static final int ConstructorId_keys = -2;
    private static final int ConstructorId_preventExtensions = -7;
    private static final int ConstructorId_seal = -12;
    private static final int ConstructorId_setPrototypeOf = -17;
    private static final int Id___defineGetter__ = 9;
    private static final int Id___defineSetter__ = 10;
    private static final int Id___lookupGetter__ = 11;
    private static final int Id___lookupSetter__ = 12;
    private static final int Id_constructor = 1;
    private static final int Id_hasOwnProperty = 5;
    private static final int Id_isPrototypeOf = 7;
    private static final int Id_propertyIsEnumerable = 6;
    private static final int Id_toLocaleString = 3;
    private static final int Id_toSource = 8;
    private static final int Id_toString = 2;
    private static final int Id_valueOf = 4;
    private static final int MAX_PROTOTYPE_ID = 12;
    private static final Object OBJECT_TAG = "Object";
    private static final long serialVersionUID = -6345305608474346996L;

    public class a extends AbstractSet {

        public class C0440a implements Iterator {
            public Object[] b;
            public Object c = null;
            public int d = 0;

            public class C0441a implements Map.Entry {
                public final Object b;
                public final Object c;

                public C0441a(Object obj, Object obj2) {
                    this.b = obj;
                    this.c = obj2;
                }

                @Override
                public boolean equals(Object obj) {
                    if (!(obj instanceof Map.Entry)) {
                        return false;
                    }
                    Map.Entry entry = (Map.Entry) obj;
                    Object obj2 = this.b;
                    if (obj2 == null) {
                        if (entry.getKey() != null) {
                            return false;
                        }
                    } else if (!obj2.equals(entry.getKey())) {
                        return false;
                    }
                    Object obj3 = this.c;
                    if (obj3 == null) {
                        if (entry.getValue() != null) {
                            return false;
                        }
                    } else if (!obj3.equals(entry.getValue())) {
                        return false;
                    }
                    return true;
                }

                @Override
                public Object getKey() {
                    return this.b;
                }

                @Override
                public Object getValue() {
                    return this.c;
                }

                @Override
                public int hashCode() {
                    Object obj = this.b;
                    int iHashCode = obj == null ? 0 : obj.hashCode();
                    Object obj2 = this.c;
                    return iHashCode ^ (obj2 != null ? obj2.hashCode() : 0);
                }

                @Override
                public Object setValue(Object obj) {
                    throw new UnsupportedOperationException();
                }

                public String toString() {
                    return this.b + "=" + this.c;
                }
            }

            public C0440a() {
                this.b = NativeObject.this.getIds();
            }

            @Override
            public Map.Entry next() {
                Object[] objArr = this.b;
                int i = this.d;
                this.d = i + 1;
                Object obj = objArr[i];
                this.c = obj;
                return new C0441a(obj, NativeObject.this.get(obj));
            }

            @Override
            public boolean hasNext() {
                return this.d < this.b.length;
            }

            @Override
            public void remove() {
                Object obj = this.c;
                if (obj == null) {
                    throw new IllegalStateException();
                }
                NativeObject.this.remove(obj);
                this.c = null;
            }
        }

        public a() {
        }

        @Override
        public Iterator iterator() {
            return new C0440a();
        }

        @Override
        public int size() {
            return NativeObject.this.size();
        }
    }

    public class b extends AbstractSet {

        public class a implements Iterator {
            public Object[] b;
            public Object c;
            public int d = 0;

            public a() {
                this.b = NativeObject.this.getIds();
            }

            @Override
            public boolean hasNext() {
                return this.d < this.b.length;
            }

            @Override
            public Object next() {
                try {
                    Object[] objArr = this.b;
                    int i = this.d;
                    this.d = i + 1;
                    Object obj = objArr[i];
                    this.c = obj;
                    return obj;
                } catch (ArrayIndexOutOfBoundsException unused) {
                    this.c = null;
                    throw new NoSuchElementException();
                }
            }

            @Override
            public void remove() {
                Object obj = this.c;
                if (obj == null) {
                    throw new IllegalStateException();
                }
                NativeObject.this.remove(obj);
                this.c = null;
            }
        }

        public b() {
        }

        @Override
        public boolean contains(Object obj) {
            return NativeObject.this.containsKey(obj);
        }

        @Override
        public Iterator iterator() {
            return new a();
        }

        @Override
        public int size() {
            return NativeObject.this.size();
        }
    }

    public class c extends AbstractCollection {

        public class a implements Iterator {
            public Object[] b;
            public Object c;
            public int d = 0;

            public a() {
                this.b = NativeObject.this.getIds();
            }

            @Override
            public boolean hasNext() {
                return this.d < this.b.length;
            }

            @Override
            public Object next() {
                NativeObject nativeObject = NativeObject.this;
                Object[] objArr = this.b;
                int i = this.d;
                this.d = i + 1;
                Object obj = objArr[i];
                this.c = obj;
                return nativeObject.get(obj);
            }

            @Override
            public void remove() {
                Object obj = this.c;
                if (obj == null) {
                    throw new IllegalStateException();
                }
                NativeObject.this.remove(obj);
                this.c = null;
            }
        }

        public c() {
        }

        @Override
        public Iterator iterator() {
            return new a();
        }

        @Override
        public int size() {
            return NativeObject.this.size();
        }
    }

    private static Scriptable getCompatibleObject(Context context, Scriptable scriptable, Object obj) {
        return context.getLanguageVersion() >= 200 ? ScriptableObject.ensureScriptable(ScriptRuntime.toObject(context, scriptable, obj)) : ScriptableObject.ensureScriptable(obj);
    }

    public static void init(Scriptable scriptable, boolean z) {
        new NativeObject().exportAsJSClass(12, scriptable, z);
    }

    @Override
    public void clear() {
        throw new UnsupportedOperationException();
    }

    @Override
    public boolean containsKey(Object obj) {
        if (obj instanceof String) {
            return has((String) obj, this);
        }
        if (obj instanceof Number) {
            return has(((Number) obj).intValue(), this);
        }
        return false;
    }

    @Override
    public boolean containsValue(Object obj) {
        for (Object obj2 : values()) {
            if (obj == obj2) {
                return true;
            }
            if (obj != null && obj.equals(obj2)) {
                return true;
            }
        }
        return false;
    }

    @Override
    public Set<Map.Entry<Object, Object>> entrySet() {
        return new a();
    }

    /* JADX WARN: Code duplicated, block: B:127:0x0198 A[PHI: r0
      0x0198: PHI (r0v168 boolean) = (r0v163 boolean), (r0v163 boolean), (r0v170 boolean), (r0v170 boolean) binds: [B:129:0x019e, B:131:0x01a2, B:119:0x0182, B:121:0x0186] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code restructure failed: missing block: B:112:0x016e, code lost:
    
        if ((((org.mozilla.javascript.ScriptableObject) r20).getAttributes(r0) & 2) == 0) goto L113;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v38, types: [java.lang.Object, org.mozilla.javascript.ScriptableObject] */
    /* JADX WARN: Type inference failed for: r16v0, types: [org.mozilla.javascript.IdScriptableObject, org.mozilla.javascript.NativeObject, org.mozilla.javascript.ScriptableObject] */
    /* JADX WARN: Type inference failed for: r1v101 */
    /* JADX WARN: Type inference failed for: r1v103 */
    /* JADX WARN: Type inference failed for: r1v104 */
    /* JADX WARN: Type inference failed for: r1v21, types: [java.lang.Object, org.mozilla.javascript.ScriptableObject] */
    /* JADX WARN: Type inference failed for: r1v71, types: [org.mozilla.javascript.ScriptRuntime$c] */
    /* JADX WARN: Type inference failed for: r1v73 */
    /* JADX WARN: Type inference failed for: r1v74, types: [org.mozilla.javascript.ScriptRuntime$c] */
    /* JADX WARN: Type inference failed for: r1v79 */
    /* JADX WARN: Type inference failed for: r6v5, types: [org.mozilla.javascript.Scriptable, org.mozilla.javascript.ScriptableObject] */
    /* JADX WARN: Type inference failed for: r7v4, types: [org.mozilla.javascript.Scriptable, org.mozilla.javascript.ScriptableObject] */
    @Override
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public Object execIdCall(IdFunctionObject idFunctionObject, Context context, Scriptable scriptable, Scriptable scriptable2, Object[] objArr) {
        int int32;
        Object obj;
        Object obj2;
        boolean zHas;
        ?? stringIdOrIndex;
        boolean zHas2;
        char c2;
        Object getterOrSetter;
        Scriptable prototype;
        if (!idFunctionObject.hasTag(OBJECT_TAG)) {
            return super.execIdCall(idFunctionObject, context, scriptable, scriptable2, objArr);
        }
        int iMethodId = idFunctionObject.methodId();
        z = false;
        z = false;
        boolean z = false;
        z = false;
        z = false;
        z = false;
        boolean z2 = false;
        switch (iMethodId) {
            case -17:
                if (objArr.length < 2) {
                    throw ScriptRuntime.typeError1("msg.incompat.call", "setPrototypeOf");
                }
                Object obj3 = objArr[1];
                Scriptable scriptableEnsureScriptable = obj3 == null ? null : ScriptableObject.ensureScriptable(obj3);
                if (scriptableEnsureScriptable instanceof Symbol) {
                    throw ScriptRuntime.typeError1("msg.arg.not.object", ScriptRuntime.typeof(scriptableEnsureScriptable));
                }
                Object obj4 = objArr[0];
                if (context.getLanguageVersion() >= 200) {
                    ScriptRuntimeES6.requireObjectCoercible(context, obj4, idFunctionObject);
                }
                if (!(obj4 instanceof ScriptableObject)) {
                    return obj4;
                }
                ScriptableObject scriptableObject = (ScriptableObject) obj4;
                if (!scriptableObject.isExtensible()) {
                    throw ScriptRuntime.typeError0("msg.not.extensible");
                }
                for (Scriptable prototype2 = scriptableEnsureScriptable; prototype2 != null; prototype2 = prototype2.getPrototype()) {
                    if (prototype2 == scriptableObject) {
                        throw ScriptRuntime.typeError1("msg.object.cyclic.prototype", scriptableObject.getClass().getSimpleName());
                    }
                }
                scriptableObject.setPrototype(scriptableEnsureScriptable);
                return scriptableObject;
            case -16:
                return ScriptRuntime.wrapBoolean(ScriptRuntime.same(objArr.length < 1 ? Undefined.instance : objArr[0], objArr.length < 2 ? Undefined.instance : objArr[1]));
            case -15:
                if (objArr.length < 1) {
                    throw ScriptRuntime.typeError1("msg.incompat.call", "assign");
                }
                Scriptable object = ScriptRuntime.toObject(context, scriptable2, objArr[0]);
                for (int i = 1; i < objArr.length; i++) {
                    Object obj5 = objArr[i];
                    if (obj5 != null && !Undefined.isUndefined(obj5)) {
                        Scriptable object2 = ScriptRuntime.toObject(context, scriptable2, objArr[i]);
                        for (Object obj6 : object2.getIds()) {
                            if (obj6 instanceof String) {
                                String str = (String) obj6;
                                Object obj7 = object2.get(str, object2);
                                if (obj7 != Scriptable.NOT_FOUND && !Undefined.isUndefined(obj7)) {
                                    object.put(str, object, obj7);
                                }
                            } else if ((obj6 instanceof Number) && (obj = object2.get((int32 = ScriptRuntime.toInt32(obj6)), object2)) != Scriptable.NOT_FOUND && !Undefined.isUndefined(obj)) {
                                object.put(int32, object, obj);
                            }
                        }
                    }
                }
                return object;
            case -14:
                Object[] ids = ScriptableObject.ensureScriptableObject(getCompatibleObject(context, scriptable, objArr.length < 1 ? Undefined.instance : objArr[0])).getIds(true, true);
                ArrayList arrayList = new ArrayList();
                for (Object obj8 : ids) {
                    if (obj8 instanceof Symbol) {
                        arrayList.add(obj8);
                    }
                }
                return context.newArray(scriptable, arrayList.toArray());
            case -13:
                Object obj9 = objArr.length < 1 ? Undefined.instance : objArr[0];
                if (context.getLanguageVersion() >= 200 && !(obj9 instanceof ScriptableObject)) {
                    return obj9;
                }
                ?? EnsureScriptableObject = ScriptableObject.ensureScriptableObject(obj9);
                for (Object obj10 : EnsureScriptableObject.getIds(true, true)) {
                    ?? ownPropertyDescriptor = EnsureScriptableObject.getOwnPropertyDescriptor(context, obj10);
                    if (isDataDescriptor(ownPropertyDescriptor) && Boolean.TRUE.equals(ownPropertyDescriptor.get("writable"))) {
                        ownPropertyDescriptor.put("writable", ownPropertyDescriptor, Boolean.FALSE);
                    }
                    if (Boolean.TRUE.equals(ownPropertyDescriptor.get("configurable"))) {
                        ownPropertyDescriptor.put("configurable", ownPropertyDescriptor, Boolean.FALSE);
                    }
                    EnsureScriptableObject.defineOwnProperty(context, obj10, ownPropertyDescriptor, false);
                }
                EnsureScriptableObject.preventExtensions();
                return EnsureScriptableObject;
            case -12:
                Object obj11 = objArr.length < 1 ? Undefined.instance : objArr[0];
                if (context.getLanguageVersion() >= 200 && !(obj11 instanceof ScriptableObject)) {
                    return obj11;
                }
                ?? EnsureScriptableObject2 = ScriptableObject.ensureScriptableObject(obj11);
                for (Object obj12 : EnsureScriptableObject2.getAllIds()) {
                    ?? ownPropertyDescriptor2 = EnsureScriptableObject2.getOwnPropertyDescriptor(context, obj12);
                    if (Boolean.TRUE.equals(ownPropertyDescriptor2.get("configurable"))) {
                        ownPropertyDescriptor2.put("configurable", ownPropertyDescriptor2, Boolean.FALSE);
                        EnsureScriptableObject2.defineOwnProperty(context, obj12, ownPropertyDescriptor2, false);
                    }
                }
                EnsureScriptableObject2.preventExtensions();
                return EnsureScriptableObject2;
            case -11:
                Object obj13 = objArr.length < 1 ? Undefined.instance : objArr[0];
                if (context.getLanguageVersion() >= 200 && !(obj13 instanceof ScriptableObject)) {
                    return Boolean.TRUE;
                }
                ScriptableObject scriptableObjectEnsureScriptableObject = ScriptableObject.ensureScriptableObject(obj13);
                if (scriptableObjectEnsureScriptableObject.isExtensible()) {
                    return Boolean.FALSE;
                }
                for (Object obj14 : scriptableObjectEnsureScriptableObject.getAllIds()) {
                    ScriptableObject ownPropertyDescriptor3 = scriptableObjectEnsureScriptableObject.getOwnPropertyDescriptor(context, obj14);
                    Boolean bool = Boolean.TRUE;
                    if (bool.equals(ownPropertyDescriptor3.get("configurable"))) {
                        return Boolean.FALSE;
                    }
                    if (isDataDescriptor(ownPropertyDescriptor3) && bool.equals(ownPropertyDescriptor3.get("writable"))) {
                        return Boolean.FALSE;
                    }
                }
                return Boolean.TRUE;
            case -10:
                Object obj15 = objArr.length < 1 ? Undefined.instance : objArr[0];
                if (context.getLanguageVersion() >= 200 && !(obj15 instanceof ScriptableObject)) {
                    return Boolean.TRUE;
                }
                ScriptableObject scriptableObjectEnsureScriptableObject2 = ScriptableObject.ensureScriptableObject(obj15);
                if (scriptableObjectEnsureScriptableObject2.isExtensible()) {
                    return Boolean.FALSE;
                }
                for (Object obj16 : scriptableObjectEnsureScriptableObject2.getAllIds()) {
                    if (Boolean.TRUE.equals(scriptableObjectEnsureScriptableObject2.getOwnPropertyDescriptor(context, obj16).get("configurable"))) {
                        return Boolean.FALSE;
                    }
                }
                return Boolean.TRUE;
            case -9:
                Object obj17 = objArr.length < 1 ? Undefined.instance : objArr[0];
                Scriptable scriptableEnsureScriptable2 = obj17 == null ? null : ScriptableObject.ensureScriptable(obj17);
                NativeObject nativeObject = new NativeObject();
                nativeObject.setParentScope(scriptable);
                nativeObject.setPrototype(scriptableEnsureScriptable2);
                if (objArr.length > 1 && !Undefined.isUndefined(objArr[1])) {
                    nativeObject.defineOwnProperties(context, ScriptableObject.ensureScriptableObject(Context.toObject(objArr[1], scriptable)));
                }
                return nativeObject;
            case -8:
                ScriptableObject scriptableObjectEnsureScriptableObject3 = ScriptableObject.ensureScriptableObject(objArr.length < 1 ? Undefined.instance : objArr[0]);
                scriptableObjectEnsureScriptableObject3.defineOwnProperties(context, ScriptableObject.ensureScriptableObject(Context.toObject(objArr.length < 2 ? Undefined.instance : objArr[1], scriptable)));
                return scriptableObjectEnsureScriptableObject3;
            case -7:
                Object obj18 = objArr.length < 1 ? Undefined.instance : objArr[0];
                if (context.getLanguageVersion() >= 200 && !(obj18 instanceof ScriptableObject)) {
                    return obj18;
                }
                ScriptableObject scriptableObjectEnsureScriptableObject4 = ScriptableObject.ensureScriptableObject(obj18);
                scriptableObjectEnsureScriptableObject4.preventExtensions();
                return scriptableObjectEnsureScriptableObject4;
            case -6:
                Object obj19 = objArr.length < 1 ? Undefined.instance : objArr[0];
                return (context.getLanguageVersion() < 200 || (obj19 instanceof ScriptableObject)) ? Boolean.valueOf(ScriptableObject.ensureScriptableObject(obj19).isExtensible()) : Boolean.FALSE;
            case -5:
                ScriptableObject scriptableObjectEnsureScriptableObject5 = ScriptableObject.ensureScriptableObject(objArr.length < 1 ? Undefined.instance : objArr[0]);
                scriptableObjectEnsureScriptableObject5.defineOwnProperty(context, objArr.length < 2 ? Undefined.instance : objArr[1], ScriptableObject.ensureScriptableObject(objArr.length < 3 ? Undefined.instance : objArr[2]));
                return scriptableObjectEnsureScriptableObject5;
            case -4:
                ScriptableObject ownPropertyDescriptor4 = ScriptableObject.ensureScriptableObject(getCompatibleObject(context, scriptable, objArr.length < 1 ? Undefined.instance : objArr[0])).getOwnPropertyDescriptor(context, objArr.length < 2 ? Undefined.instance : objArr[1]);
                return ownPropertyDescriptor4 == null ? Undefined.instance : ownPropertyDescriptor4;
            case -3:
                Object[] ids2 = ScriptableObject.ensureScriptableObject(getCompatibleObject(context, scriptable, objArr.length < 1 ? Undefined.instance : objArr[0])).getIds(true, false);
                for (int i2 = 0; i2 < ids2.length; i2++) {
                    ids2[i2] = ScriptRuntime.toString(ids2[i2]);
                }
                return context.newArray(scriptable, ids2);
            case -2:
                Object[] ids3 = getCompatibleObject(context, scriptable, objArr.length < 1 ? Undefined.instance : objArr[0]).getIds();
                for (int i3 = 0; i3 < ids3.length; i3++) {
                    ids3[i3] = ScriptRuntime.toString(ids3[i3]);
                }
                return context.newArray(scriptable, ids3);
            case -1:
                return getCompatibleObject(context, scriptable, objArr.length < 1 ? Undefined.instance : objArr[0]).getPrototype();
            case 0:
            default:
                throw new IllegalArgumentException(String.valueOf(iMethodId));
            case 1:
                if (scriptable2 != null) {
                    return idFunctionObject.construct(context, scriptable, objArr);
                }
                return (objArr.length == 0 || (obj2 = objArr[0]) == null || Undefined.isUndefined(obj2)) ? new NativeObject() : ScriptRuntime.toObject(context, scriptable, objArr[0]);
            case 2:
                if (!context.hasFeature(4)) {
                    return ScriptRuntime.defaultObjectToString(scriptable2);
                }
                String strDefaultObjectToSource = ScriptRuntime.defaultObjectToSource(context, scriptable, scriptable2, objArr);
                int length = strDefaultObjectToSource.length();
                if (length == 0 || strDefaultObjectToSource.charAt(0) != '(') {
                    return strDefaultObjectToSource;
                }
                int i4 = length - 1;
                return strDefaultObjectToSource.charAt(i4) == ')' ? strDefaultObjectToSource.substring(1, i4) : strDefaultObjectToSource;
            case 3:
                Object property = ScriptableObject.getProperty(scriptable2, "toString");
                if (property instanceof Callable) {
                    return ((Callable) property).call(context, scriptable, scriptable2, ScriptRuntime.emptyArgs);
                }
                throw ScriptRuntime.notFunctionError(property);
            case 4:
                if (context.getLanguageVersion() < 180 || !(scriptable2 == null || Undefined.isUndefined(scriptable2))) {
                    return scriptable2;
                }
                StringBuilder sb = new StringBuilder();
                sb.append("msg.");
                sb.append(scriptable2 == null ? "null" : "undef");
                sb.append(".to.object");
                throw ScriptRuntime.typeError0(sb.toString());
            case 5:
                if (context.getLanguageVersion() >= 180 && (scriptable2 == null || Undefined.isUndefined(scriptable2))) {
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append("msg.");
                    sb2.append(scriptable2 == null ? "null" : "undef");
                    sb2.append(".to.object");
                    throw ScriptRuntime.typeError0(sb2.toString());
                }
                Object obj20 = objArr.length < 1 ? Undefined.instance : objArr[0];
                if (obj20 instanceof Symbol) {
                    zHas = ScriptableObject.ensureSymbolScriptable(scriptable2).has((Symbol) obj20, scriptable2);
                } else {
                    ScriptRuntime.c stringIdOrIndex2 = ScriptRuntime.toStringIdOrIndex(context, obj20);
                    String str2 = stringIdOrIndex2.a;
                    zHas = str2 == null ? scriptable2.has(stringIdOrIndex2.b, scriptable2) : scriptable2.has(str2, scriptable2);
                }
                return ScriptRuntime.wrapBoolean(zHas);
            case 6:
                if (context.getLanguageVersion() >= 180 && (scriptable2 == null || Undefined.isUndefined(scriptable2))) {
                    StringBuilder sb3 = new StringBuilder();
                    sb3.append("msg.");
                    sb3.append(scriptable2 == null ? "null" : "undef");
                    sb3.append(".to.object");
                    throw ScriptRuntime.typeError0(sb3.toString());
                }
                Object obj21 = objArr.length < 1 ? Undefined.instance : objArr[0];
                if (obj21 instanceof Symbol) {
                    Symbol symbol = (Symbol) obj21;
                    boolean zHas3 = ((SymbolScriptable) scriptable2).has(symbol, scriptable2);
                    if (zHas3 && (scriptable2 instanceof ScriptableObject)) {
                        c2 = 2;
                        break;
                    } else {
                        z2 = zHas3;
                    }
                    return ScriptRuntime.wrapBoolean(z2);
                }
                stringIdOrIndex = ScriptRuntime.toStringIdOrIndex(context, obj21);
                try {
                    String str3 = stringIdOrIndex.a;
                    if (str3 == null) {
                        zHas2 = scriptable2.has(stringIdOrIndex.b, scriptable2);
                        if (zHas2 && (scriptable2 instanceof ScriptableObject)) {
                            int attributes = ((ScriptableObject) scriptable2).getAttributes(stringIdOrIndex.b);
                            stringIdOrIndex = 2;
                            c2 = 2;
                            if ((attributes & 2) == 0) {
                            }
                        } else {
                            z2 = zHas2;
                            stringIdOrIndex = stringIdOrIndex;
                        }
                    } else {
                        zHas2 = scriptable2.has(str3, scriptable2);
                        if (zHas2 && (scriptable2 instanceof ScriptableObject)) {
                            int attributes2 = ((ScriptableObject) scriptable2).getAttributes(stringIdOrIndex.a);
                            c2 = 2;
                            stringIdOrIndex = 2;
                            if ((attributes2 & 2) == 0) {
                            }
                        } else {
                            z2 = zHas2;
                            stringIdOrIndex = stringIdOrIndex;
                        }
                    }
                    break;
                } catch (EvaluatorException e) {
                    String message = e.getMessage();
                    String string = stringIdOrIndex.a;
                    if (string == null) {
                        string = Integer.toString(stringIdOrIndex.b);
                    }
                    if (!message.startsWith(ScriptRuntime.getMessage1("msg.prop.not.found", string))) {
                        throw e;
                    }
                }
                return ScriptRuntime.wrapBoolean(z2);
                z2 = true;
                stringIdOrIndex = c2;
                return ScriptRuntime.wrapBoolean(z2);
            case 7:
                if (context.getLanguageVersion() >= 180 && (scriptable2 == null || Undefined.isUndefined(scriptable2))) {
                    StringBuilder sb4 = new StringBuilder();
                    sb4.append("msg.");
                    sb4.append(scriptable2 == null ? "null" : "undef");
                    sb4.append(".to.object");
                    throw ScriptRuntime.typeError0(sb4.toString());
                }
                if (objArr.length != 0) {
                    Object obj22 = objArr[0];
                    if (obj22 instanceof Scriptable) {
                        Scriptable prototype3 = (Scriptable) obj22;
                        do {
                            prototype3 = prototype3.getPrototype();
                            if (prototype3 == scriptable2) {
                                z = true;
                            }
                        } while (prototype3 != null);
                    }
                }
                return ScriptRuntime.wrapBoolean(z);
            case 8:
                return ScriptRuntime.defaultObjectToSource(context, scriptable, scriptable2, objArr);
            case 9:
            case 10:
                if (objArr.length < 2 || !(objArr[1] instanceof Callable)) {
                    throw ScriptRuntime.notFunctionError(objArr.length >= 2 ? objArr[1] : Undefined.instance);
                }
                if (!(scriptable2 instanceof ScriptableObject)) {
                    throw Context.reportRuntimeError2("msg.extend.scriptable", scriptable2 != null ? scriptable2.getClass().getName() : "null", String.valueOf(objArr[0]));
                }
                ScriptableObject scriptableObject2 = (ScriptableObject) scriptable2;
                ScriptRuntime.c stringIdOrIndex3 = ScriptRuntime.toStringIdOrIndex(context, objArr[0]);
                String str4 = stringIdOrIndex3.a;
                scriptableObject2.setGetterOrSetter(str4, str4 != null ? 0 : stringIdOrIndex3.b, (Callable) objArr[1], iMethodId == 10);
                if (scriptableObject2 instanceof NativeArray) {
                    ((NativeArray) scriptableObject2).setDenseOnly(false);
                }
                return Undefined.instance;
            case 11:
            case 12:
                if (objArr.length < 1 || !(scriptable2 instanceof ScriptableObject)) {
                    return Undefined.instance;
                }
                ScriptableObject scriptableObject3 = (ScriptableObject) scriptable2;
                ScriptRuntime.c stringIdOrIndex4 = ScriptRuntime.toStringIdOrIndex(context, objArr[0]);
                int i5 = stringIdOrIndex4.a != null ? 0 : stringIdOrIndex4.b;
                boolean z3 = iMethodId == 12;
                while (true) {
                    getterOrSetter = scriptableObject3.getGetterOrSetter(stringIdOrIndex4.a, i5, z3);
                    if (getterOrSetter == null && (prototype = scriptableObject3.getPrototype()) != null && (prototype instanceof ScriptableObject)) {
                        scriptableObject3 = (ScriptableObject) prototype;
                    }
                }
                return getterOrSetter != null ? getterOrSetter : Undefined.instance;
        }
    }

    @Override
    public void fillConstructorProperties(IdFunctionObject idFunctionObject) {
        Object obj = OBJECT_TAG;
        addIdFunctionProperty(idFunctionObject, obj, -1, "getPrototypeOf", 1);
        if (Context.getCurrentContext().version >= 200) {
            addIdFunctionProperty(idFunctionObject, obj, -17, "setPrototypeOf", 2);
        }
        addIdFunctionProperty(idFunctionObject, obj, -2, "keys", 1);
        addIdFunctionProperty(idFunctionObject, obj, -3, "getOwnPropertyNames", 1);
        addIdFunctionProperty(idFunctionObject, obj, -14, "getOwnPropertySymbols", 1);
        addIdFunctionProperty(idFunctionObject, obj, -4, "getOwnPropertyDescriptor", 2);
        addIdFunctionProperty(idFunctionObject, obj, -5, "defineProperty", 3);
        addIdFunctionProperty(idFunctionObject, obj, -6, "isExtensible", 1);
        addIdFunctionProperty(idFunctionObject, obj, -7, "preventExtensions", 1);
        addIdFunctionProperty(idFunctionObject, obj, -8, "defineProperties", 2);
        addIdFunctionProperty(idFunctionObject, obj, -9, "create", 2);
        addIdFunctionProperty(idFunctionObject, obj, -10, "isSealed", 1);
        addIdFunctionProperty(idFunctionObject, obj, -11, "isFrozen", 1);
        addIdFunctionProperty(idFunctionObject, obj, -12, "seal", 1);
        addIdFunctionProperty(idFunctionObject, obj, -13, "freeze", 1);
        addIdFunctionProperty(idFunctionObject, obj, -15, "assign", 2);
        addIdFunctionProperty(idFunctionObject, obj, -16, "is", 2);
        super.fillConstructorProperties(idFunctionObject);
    }

    /* JADX WARN: Code duplicated, block: B:44:0x0089  */
    @Override
    public int findPrototypeId(String str) {
        String str2;
        int length = str.length();
        int i = 7;
        if (length == 7) {
            str2 = "valueOf";
            i = 4;
        } else if (length == 8) {
            char cCharAt = str.charAt(3);
            if (cCharAt == 'o') {
                str2 = "toSource";
                i = 8;
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
        } else if (length == 16) {
            char cCharAt2 = str.charAt(2);
            if (cCharAt2 == 'd') {
                char cCharAt3 = str.charAt(8);
                if (cCharAt3 == 'G') {
                    str2 = "__defineGetter__";
                    i = 9;
                } else if (cCharAt3 == 'S') {
                    str2 = "__defineSetter__";
                    i = 10;
                } else {
                    str2 = null;
                    i = 0;
                }
            } else if (cCharAt2 != 'l') {
                str2 = null;
                i = 0;
            } else {
                char cCharAt4 = str.charAt(8);
                if (cCharAt4 == 'G') {
                    str2 = "__lookupGetter__";
                    i = 11;
                } else if (cCharAt4 == 'S') {
                    str2 = "__lookupSetter__";
                    i = 12;
                } else {
                    str2 = null;
                    i = 0;
                }
            }
        } else if (length == 20) {
            str2 = "propertyIsEnumerable";
            i = 6;
        } else if (length == 13) {
            str2 = "isPrototypeOf";
        } else if (length == 14) {
            char cCharAt5 = str.charAt(0);
            if (cCharAt5 == 'h') {
                str2 = "hasOwnProperty";
                i = 5;
            } else if (cCharAt5 == 't') {
                str2 = "toLocaleString";
                i = 3;
            } else {
                str2 = null;
                i = 0;
            }
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
        return "Object";
    }

    @Override
    public void initPrototypeId(int i) {
        String str;
        String str2;
        int i2 = 1;
        switch (i) {
            case 1:
                str = "constructor";
                initPrototypeMethod(OBJECT_TAG, i, str, i2);
                return;
            case 2:
                str = "toString";
                i2 = 0;
                initPrototypeMethod(OBJECT_TAG, i, str, i2);
                return;
            case 3:
                str = "toLocaleString";
                i2 = 0;
                initPrototypeMethod(OBJECT_TAG, i, str, i2);
                return;
            case 4:
                str = "valueOf";
                i2 = 0;
                initPrototypeMethod(OBJECT_TAG, i, str, i2);
                return;
            case 5:
                str = "hasOwnProperty";
                initPrototypeMethod(OBJECT_TAG, i, str, i2);
                return;
            case 6:
                str = "propertyIsEnumerable";
                initPrototypeMethod(OBJECT_TAG, i, str, i2);
                return;
            case 7:
                str = "isPrototypeOf";
                initPrototypeMethod(OBJECT_TAG, i, str, i2);
                return;
            case 8:
                str = "toSource";
                i2 = 0;
                initPrototypeMethod(OBJECT_TAG, i, str, i2);
                return;
            case 9:
                str2 = "__defineGetter__";
                i2 = 2;
                str = str2;
                initPrototypeMethod(OBJECT_TAG, i, str, i2);
                return;
            case 10:
                str2 = "__defineSetter__";
                i2 = 2;
                str = str2;
                initPrototypeMethod(OBJECT_TAG, i, str, i2);
                return;
            case 11:
                str = "__lookupGetter__";
                initPrototypeMethod(OBJECT_TAG, i, str, i2);
                return;
            case 12:
                str = "__lookupSetter__";
                initPrototypeMethod(OBJECT_TAG, i, str, i2);
                return;
            default:
                throw new IllegalArgumentException(String.valueOf(i));
        }
    }

    @Override
    public Set<Object> keySet() {
        return new b();
    }

    @Override
    public Object put(Object obj, Object obj2) {
        throw new UnsupportedOperationException();
    }

    @Override
    public void putAll(Map map) {
        throw new UnsupportedOperationException();
    }

    @Override
    public Object remove(Object obj) {
        Object obj2 = get(obj);
        if (obj instanceof String) {
            delete((String) obj);
        } else if (obj instanceof Number) {
            delete(((Number) obj).intValue());
        }
        return obj2;
    }

    public String toString() {
        return ScriptRuntime.defaultObjectToString(this);
    }

    @Override
    public Collection<Object> values() {
        return new c();
    }
}
