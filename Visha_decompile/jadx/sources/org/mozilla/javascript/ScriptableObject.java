package org.mozilla.javascript;

import androidx.media3.exoplayer.rtsp.SessionDescription;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.lang.annotation.Annotation;
import java.lang.reflect.AccessibleObject;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Member;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.util.Arrays;
import java.util.Comparator;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import org.mozilla.javascript.annotations.JSConstructor;
import org.mozilla.javascript.annotations.JSFunction;
import org.mozilla.javascript.annotations.JSGetter;
import org.mozilla.javascript.annotations.JSSetter;
import org.mozilla.javascript.annotations.JSStaticFunction;
import org.mozilla.javascript.debug.DebuggableObject;

public abstract class ScriptableObject implements Scriptable, SymbolScriptable, Serializable, DebuggableObject, ConstProperties {
    static final boolean $assertionsDisabled = false;
    public static final int CONST = 13;
    public static final int DONTENUM = 2;
    public static final int EMPTY = 0;
    private static final Method GET_ARRAY_LENGTH;
    private static final Comparator<Object> KEY_COMPARATOR;
    public static final int PERMANENT = 4;
    public static final int READONLY = 1;
    public static final int UNINITIALIZED_CONST = 8;
    private static final long serialVersionUID = 2829861078851942586L;
    private volatile Map<Object, Object> associatedValues;
    private transient ExternalArrayData externalData;
    private boolean isExtensible;
    private boolean isSealed;
    private Scriptable parentScopeObject;
    private Scriptable prototypeObject;
    private transient g slotMap;

    public static final class GetterSlot extends Slot {
        private static final long serialVersionUID = -4900574849788797588L;
        Object getter;
        Object setter;

        public GetterSlot(Object obj, int i, int i2) {
            super(obj, i, i2);
        }

        @Override
        public ScriptableObject getPropertyDescriptor(Context context, Scriptable scriptable) {
            int attributes = getAttributes();
            NativeObject nativeObject = new NativeObject();
            ScriptRuntime.setBuiltinProtoAndParent(nativeObject, scriptable, TopLevel.Builtins.Object);
            nativeObject.defineProperty("enumerable", Boolean.valueOf((attributes & 2) == 0), 0);
            nativeObject.defineProperty("configurable", Boolean.valueOf((attributes & 4) == 0), 0);
            if (this.getter == null && this.setter == null) {
                nativeObject.defineProperty("writable", Boolean.valueOf((attributes & 1) == 0), 0);
            }
            Object obj = this.name;
            String string = obj == null ? "f" : obj.toString();
            Object obj2 = this.getter;
            if (obj2 != null) {
                if (obj2 instanceof MemberBox) {
                    nativeObject.defineProperty("get", new FunctionObject(string, ((MemberBox) this.getter).member(), scriptable), 0);
                } else if (obj2 instanceof Member) {
                    nativeObject.defineProperty("get", new FunctionObject(string, (Member) this.getter, scriptable), 0);
                } else {
                    nativeObject.defineProperty("get", obj2, 0);
                }
            }
            Object obj3 = this.setter;
            if (obj3 != null) {
                if (obj3 instanceof MemberBox) {
                    nativeObject.defineProperty("set", new FunctionObject(string, ((MemberBox) this.setter).member(), scriptable), 0);
                } else if (obj3 instanceof Member) {
                    nativeObject.defineProperty("set", new FunctionObject(string, (Member) this.setter, scriptable), 0);
                } else {
                    nativeObject.defineProperty("set", obj3, 0);
                }
            }
            return nativeObject;
        }

        @Override
        public Object getValue(Scriptable scriptable) {
            Object obj;
            Object[] objArr;
            Object obj2 = this.getter;
            if (obj2 != null) {
                if (obj2 instanceof MemberBox) {
                    MemberBox memberBox = (MemberBox) obj2;
                    Object obj3 = memberBox.delegateTo;
                    if (obj3 == null) {
                        objArr = ScriptRuntime.emptyArgs;
                        obj = scriptable;
                    } else {
                        Object[] objArr2 = {scriptable};
                        obj = obj3;
                        objArr = objArr2;
                    }
                    return memberBox.invoke(obj, objArr);
                }
                if (obj2 instanceof Function) {
                    Function function = (Function) obj2;
                    return function.call(Context.getContext(), function.getParentScope(), scriptable, ScriptRuntime.emptyArgs);
                }
            }
            Object obj4 = this.value;
            if (!(obj4 instanceof LazilyLoadedCtor)) {
                return obj4;
            }
            LazilyLoadedCtor lazilyLoadedCtor = (LazilyLoadedCtor) obj4;
            try {
                lazilyLoadedCtor.init();
                return lazilyLoadedCtor.getValue();
            } finally {
                this.value = lazilyLoadedCtor.getValue();
            }
        }

        @Override
        public boolean setValue(Object obj, Scriptable scriptable, Scriptable scriptable2) {
            Object obj2;
            Object[] objArr;
            String str;
            if (this.setter == null) {
                if (this.getter == null) {
                    return super.setValue(obj, scriptable, scriptable2);
                }
                Context context = Context.getContext();
                if (!context.isStrictMode() && !context.hasFeature(11)) {
                    return true;
                }
                if (this.name != null) {
                    str = "[" + scriptable2.getClassName() + "]." + this.name;
                } else {
                    str = "";
                }
                throw ScriptRuntime.typeError2("msg.set.prop.no.setter", str, Context.toString(obj));
            }
            Context context2 = Context.getContext();
            Object obj3 = this.setter;
            if (obj3 instanceof MemberBox) {
                MemberBox memberBox = (MemberBox) obj3;
                Class<?>[] clsArr = memberBox.argTypes;
                Object objConvertArg = FunctionObject.convertArg(context2, scriptable2, obj, FunctionObject.getTypeTag(clsArr[clsArr.length - 1]));
                Object obj4 = memberBox.delegateTo;
                if (obj4 == null) {
                    objArr = new Object[]{objConvertArg};
                    obj2 = scriptable2;
                } else {
                    Object[] objArr2 = {scriptable2, objConvertArg};
                    obj2 = obj4;
                    objArr = objArr2;
                }
                memberBox.invoke(obj2, objArr);
            } else if (obj3 instanceof Function) {
                Function function = (Function) obj3;
                function.call(context2, function.getParentScope(), scriptable2, new Object[]{obj});
            }
            return true;
        }
    }

    public static final class KeyComparator implements Comparator<Object>, Serializable {
        private static final long serialVersionUID = 6411335891523988149L;

        @Override
        public int compare(Object obj, Object obj2) {
            int iIntValue;
            int iIntValue2;
            if (!(obj instanceof Integer)) {
                return obj2 instanceof Integer ? 1 : 0;
            }
            if (!(obj2 instanceof Integer) || (iIntValue = ((Integer) obj).intValue()) < (iIntValue2 = ((Integer) obj2).intValue())) {
                return -1;
            }
            return iIntValue > iIntValue2 ? 1 : 0;
        }
    }

    public static class Slot implements Serializable {
        private static final long serialVersionUID = -6090581677123995491L;
        private short attributes;
        int indexOrHash;
        Object name;
        transient Slot next;
        transient Slot orderedNext;
        Object value;

        public Slot(Object obj, int i, int i2) {
            this.name = obj;
            this.indexOrHash = i;
            this.attributes = (short) i2;
        }

        private void readObject(ObjectInputStream objectInputStream) throws ClassNotFoundException, IOException {
            objectInputStream.defaultReadObject();
            Object obj = this.name;
            if (obj != null) {
                this.indexOrHash = obj.hashCode();
            }
        }

        public int getAttributes() {
            return this.attributes;
        }

        public ScriptableObject getPropertyDescriptor(Context context, Scriptable scriptable) {
            return ScriptableObject.buildDataDescriptor(scriptable, this.value, this.attributes);
        }

        public Object getValue(Scriptable scriptable) {
            return this.value;
        }

        public synchronized void setAttributes(int i) {
            ScriptableObject.checkValidAttributes(i);
            this.attributes = (short) i;
        }

        public boolean setValue(Object obj, Scriptable scriptable, Scriptable scriptable2) {
            if ((this.attributes & 1) != 0) {
                if (Context.getContext().isStrictMode()) {
                    throw ScriptRuntime.typeError1("msg.modify.readonly", this.name);
                }
                return true;
            }
            if (scriptable != scriptable2) {
                return false;
            }
            this.value = obj;
            return true;
        }
    }

    public enum SlotAccess {
        QUERY,
        MODIFY,
        MODIFY_CONST,
        MODIFY_GETTER_SETTER,
        CONVERT_ACCESSOR_TO_DATA
    }

    static {
        try {
            GET_ARRAY_LENGTH = ScriptableObject.class.getMethod("getExternalArrayLength", null);
            KEY_COMPARATOR = new KeyComparator();
        } catch (NoSuchMethodException e) {
            throw new RuntimeException(e);
        }
    }

    public ScriptableObject() {
        this.isExtensible = true;
        this.isSealed = false;
        this.slotMap = createSlotMap(0);
    }

    /* JADX WARN: Code duplicated, block: B:114:0x01b8  */
    /* JADX WARN: Code duplicated, block: B:115:0x01bd  */
    /* JADX WARN: Code duplicated, block: B:117:0x01c5  */
    /* JADX WARN: Code duplicated, block: B:118:0x01ca  */
    /* JADX WARN: Code duplicated, block: B:120:0x01d2  */
    /* JADX WARN: Code duplicated, block: B:121:0x01d7  */
    /* JADX WARN: Code duplicated, block: B:124:0x01e0  */
    /* JADX WARN: Code duplicated, block: B:127:0x01e7  */
    /* JADX WARN: Code duplicated, block: B:129:0x01ef  */
    /* JADX WARN: Code duplicated, block: B:130:0x01f2  */
    /* JADX WARN: Code duplicated, block: B:132:0x01f8  */
    /* JADX WARN: Code duplicated, block: B:133:0x01fc  */
    /* JADX WARN: Code duplicated, block: B:135:0x0202  */
    /* JADX WARN: Code duplicated, block: B:136:0x0206  */
    /* JADX WARN: Code duplicated, block: B:142:0x0212  */
    /* JADX WARN: Code duplicated, block: B:144:0x0215  */
    /* JADX WARN: Code duplicated, block: B:145:0x021a  */
    /* JADX WARN: Code duplicated, block: B:148:0x0228  */
    /* JADX WARN: Code duplicated, block: B:151:0x0231  */
    /* JADX WARN: Code duplicated, block: B:171:0x0271  */
    /* JADX WARN: Code duplicated, block: B:173:0x0279  */
    /* JADX WARN: Code duplicated, block: B:174:0x027b  */
    /* JADX WARN: Code duplicated, block: B:201:0x02aa A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:204:0x029b A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:58:0x00e6  */
    public static <T extends Scriptable> BaseFunction buildClassCtor(Scriptable scriptable, Class<T> cls, boolean z, boolean z2) throws IllegalAccessException, InstantiationException, InvocationTargetException {
        Constructor<?> constructor;
        Scriptable objectPrototype;
        HashSet hashSet;
        HashSet hashSet2;
        Annotation annotation;
        String str;
        boolean z3;
        HashSet hashSet3;
        String propertyName;
        char c;
        Method methodFindSetterMethod;
        int i;
        Constructor<?> constructor2;
        Method methodFindSingleMethod;
        String strDefineClass;
        BaseFunction baseFunction;
        Object prototypeProperty;
        Method[] methodList = FunctionObject.getMethodList(cls);
        int i2 = 0;
        while (true) {
            int i3 = 3;
            Method method = null;
            if (i2 >= methodList.length) {
                Constructor<?>[] constructors = cls.getConstructors();
                int i4 = 0;
                while (true) {
                    if (i4 >= constructors.length) {
                        constructor = null;
                        break;
                    }
                    if (constructors[i4].getParameterTypes().length == 0) {
                        constructor = constructors[i4];
                        break;
                    }
                    i4++;
                }
                if (constructor == null) {
                    throw Context.reportRuntimeError1("msg.zero.arg.ctor", cls.getName());
                }
                Scriptable scriptable2 = (Scriptable) constructor.newInstance(ScriptRuntime.emptyArgs);
                String className = scriptable2.getClassName();
                Object property = getProperty(getTopLevelScope(scriptable), className);
                if ((property instanceof BaseFunction) && (prototypeProperty = (baseFunction = (BaseFunction) property).getPrototypeProperty()) != null) {
                    if (cls.equals(prototypeProperty.getClass())) {
                        return baseFunction;
                    }
                }
                if (z2) {
                    Class<? super T> superclass = cls.getSuperclass();
                    if (!ScriptRuntime.ScriptableClass.isAssignableFrom(superclass) || Modifier.isAbstract(superclass.getModifiers()) || (strDefineClass = defineClass(scriptable, extendsScriptable(superclass), z, z2)) == null) {
                        objectPrototype = null;
                    } else {
                        objectPrototype = getClassPrototype(scriptable, strDefineClass);
                    }
                } else {
                    objectPrototype = null;
                }
                if (objectPrototype == null) {
                    objectPrototype = getObjectPrototype(scriptable);
                }
                scriptable2.setPrototype(objectPrototype);
                Member memberFindAnnotatedMember = findAnnotatedMember(methodList, JSConstructor.class);
                Member memberFindAnnotatedMember2 = memberFindAnnotatedMember;
                if (memberFindAnnotatedMember == null) {
                    memberFindAnnotatedMember2 = findAnnotatedMember(constructors, JSConstructor.class);
                }
                String str2 = "jsConstructor";
                Member member = memberFindAnnotatedMember2;
                if (memberFindAnnotatedMember2 == null) {
                    methodFindSingleMethod = FunctionObject.findSingleMethod(methodList, "jsConstructor");
                }
                if (member == null) {
                    if (constructors.length == 1) {
                        constructor2 = constructors[0];
                    } else if (constructors.length == 2) {
                        if (constructors[0].getParameterTypes().length == 0) {
                            member = methodFindSingleMethod;
                            member = member;
                            member = constructors[1];
                        } else if (constructors[1].getParameterTypes().length == 0) {
                            member = methodFindSingleMethod;
                            member = member;
                            member = member;
                            member = constructors[0];
                        }
                    }
                    if (member == null) {
                        member = methodFindSingleMethod;
                        member = constructor2;
                        throw Context.reportRuntimeError1("msg.ctor.multiple.parms", cls.getName());
                    }
                }
                member = methodFindSingleMethod;
                member = constructor2;
                member = methodFindSingleMethod;
                FunctionObject functionObject = new FunctionObject(className, member, scriptable);
                if (functionObject.isVarArgsMethod()) {
                    throw Context.reportRuntimeError1("msg.varargs.ctor", member.getName());
                }
                functionObject.initAsConstructor(scriptable, scriptable2);
                HashSet hashSet4 = new HashSet();
                HashSet hashSet5 = new HashSet();
                int length = methodList.length;
                int i5 = 0;
                while (i5 < length) {
                    Method method2 = methodList[i5];
                    if (method2 == member) {
                        hashSet = hashSet4;
                        hashSet2 = hashSet5;
                    } else {
                        String name = method2.getName();
                        if (name.equals("finishInit")) {
                            Class<?>[] parameterTypes = method2.getParameterTypes();
                            hashSet = hashSet4;
                            if (parameterTypes.length == i3) {
                                Class<?> cls2 = parameterTypes[0];
                                Class<Scriptable> cls3 = ScriptRuntime.ScriptableClass;
                                if (cls2 == cls3) {
                                    hashSet2 = hashSet5;
                                    if (parameterTypes[1] == FunctionObject.class && parameterTypes[2] == cls3 && Modifier.isStatic(method2.getModifiers())) {
                                        method = method2;
                                    }
                                }
                                if (name.indexOf(36) == -1 && !name.equals(str2)) {
                                    if (method2.isAnnotationPresent(JSFunction.class)) {
                                        annotation = method2.getAnnotation(JSFunction.class);
                                    } else if (method2.isAnnotationPresent(JSStaticFunction.class)) {
                                        annotation = method2.getAnnotation(JSStaticFunction.class);
                                    } else if (method2.isAnnotationPresent(JSGetter.class)) {
                                        annotation = method2.getAnnotation(JSGetter.class);
                                    } else if (!method2.isAnnotationPresent(JSSetter.class)) {
                                        annotation = null;
                                    }
                                    if (annotation == null) {
                                        str = "jsFunction_";
                                        if (!name.startsWith("jsFunction_")) {
                                            if (name.startsWith("jsStaticFunction_")) {
                                                str = "jsStaticFunction_";
                                            } else if (name.startsWith("jsGet_")) {
                                                str = "jsGet_";
                                            }
                                        }
                                    } else {
                                        str = null;
                                    }
                                    if (!(annotation instanceof JSStaticFunction) || str == "jsStaticFunction_") {
                                        z3 = true;
                                    } else {
                                        z3 = false;
                                    }
                                    if (z3) {
                                        hashSet3 = hashSet;
                                    } else {
                                        hashSet3 = hashSet2;
                                    }
                                    propertyName = getPropertyName(name, str, annotation);
                                    if (!hashSet3.contains(propertyName)) {
                                        throw Context.reportRuntimeError2("duplicate.defineClass.name", name, propertyName);
                                    }
                                    hashSet3.add(propertyName);
                                    if (!(annotation instanceof JSGetter) || str == "jsGet_") {
                                        c = 2;
                                        if (!(scriptable2 instanceof ScriptableObject)) {
                                            throw Context.reportRuntimeError2("msg.extend.scriptable", scriptable2.getClass().toString(), propertyName);
                                        }
                                        methodFindSetterMethod = findSetterMethod(methodList, propertyName, "jsSet_");
                                        if (methodFindSetterMethod != null) {
                                            i = 0;
                                        } else {
                                            i = 1;
                                        }
                                        ((ScriptableObject) scriptable2).defineProperty(propertyName, null, method2, methodFindSetterMethod, i | 6);
                                    } else {
                                        if (z3 && !Modifier.isStatic(method2.getModifiers())) {
                                            throw Context.reportRuntimeError("jsStaticFunction must be used with static method.");
                                        }
                                        FunctionObject functionObject2 = new FunctionObject(propertyName, method2, scriptable2);
                                        if (functionObject2.isVarArgsConstructor()) {
                                            throw Context.reportRuntimeError1("msg.varargs.fun", member.getName());
                                        }
                                        Scriptable scriptable3 = z3 ? functionObject : scriptable2;
                                        c = 2;
                                        defineProperty(scriptable3, propertyName, functionObject2, 2);
                                        if (z) {
                                            functionObject2.sealObject();
                                        }
                                    }
                                    i5++;
                                    hashSet4 = hashSet;
                                    hashSet5 = hashSet2;
                                    str2 = str2;
                                    length = length;
                                    i3 = 3;
                                }
                            }
                        } else {
                            hashSet = hashSet4;
                        }
                        hashSet2 = hashSet5;
                        if (name.indexOf(36) == -1) {
                            if (method2.isAnnotationPresent(JSFunction.class)) {
                                annotation = method2.getAnnotation(JSFunction.class);
                            } else if (method2.isAnnotationPresent(JSStaticFunction.class)) {
                                annotation = method2.getAnnotation(JSStaticFunction.class);
                            } else if (method2.isAnnotationPresent(JSGetter.class)) {
                                annotation = method2.getAnnotation(JSGetter.class);
                            } else if (!method2.isAnnotationPresent(JSSetter.class)) {
                                annotation = null;
                            }
                            if (annotation == null) {
                                str = "jsFunction_";
                                if (!name.startsWith("jsFunction_")) {
                                    if (name.startsWith("jsStaticFunction_")) {
                                        str = "jsStaticFunction_";
                                    } else if (name.startsWith("jsGet_")) {
                                        str = "jsGet_";
                                    }
                                }
                            } else {
                                str = null;
                            }
                            if (annotation instanceof JSStaticFunction) {
                                z3 = true;
                            } else {
                                z3 = true;
                            }
                            if (z3) {
                                hashSet3 = hashSet;
                            } else {
                                hashSet3 = hashSet2;
                            }
                            propertyName = getPropertyName(name, str, annotation);
                            if (!hashSet3.contains(propertyName)) {
                                throw Context.reportRuntimeError2("duplicate.defineClass.name", name, propertyName);
                            }
                            hashSet3.add(propertyName);
                            if (annotation instanceof JSGetter) {
                                c = 2;
                                if (!(scriptable2 instanceof ScriptableObject)) {
                                    throw Context.reportRuntimeError2("msg.extend.scriptable", scriptable2.getClass().toString(), propertyName);
                                }
                                methodFindSetterMethod = findSetterMethod(methodList, propertyName, "jsSet_");
                                if (methodFindSetterMethod != null) {
                                    i = 0;
                                } else {
                                    i = 1;
                                }
                                ((ScriptableObject) scriptable2).defineProperty(propertyName, null, method2, methodFindSetterMethod, i | 6);
                            } else {
                                c = 2;
                                if (!(scriptable2 instanceof ScriptableObject)) {
                                    throw Context.reportRuntimeError2("msg.extend.scriptable", scriptable2.getClass().toString(), propertyName);
                                }
                                methodFindSetterMethod = findSetterMethod(methodList, propertyName, "jsSet_");
                                if (methodFindSetterMethod != null) {
                                    i = 0;
                                } else {
                                    i = 1;
                                }
                                ((ScriptableObject) scriptable2).defineProperty(propertyName, null, method2, methodFindSetterMethod, i | 6);
                            }
                            i5++;
                            hashSet4 = hashSet;
                            hashSet5 = hashSet2;
                            str2 = str2;
                            length = length;
                            i3 = 3;
                        }
                    }
                    length = length;
                    c = 2;
                    i5++;
                    hashSet4 = hashSet;
                    hashSet5 = hashSet2;
                    str2 = str2;
                    length = length;
                    i3 = 3;
                }
                if (method != null) {
                    method.invoke(null, scriptable, functionObject, scriptable2);
                }
                if (z) {
                    functionObject.sealObject();
                    if (scriptable2 instanceof ScriptableObject) {
                        ((ScriptableObject) scriptable2).sealObject();
                    }
                }
                return functionObject;
            }
            Method method3 = methodList[i2];
            if (method3.getName().equals("init")) {
                Class<?>[] parameterTypes2 = method3.getParameterTypes();
                if (parameterTypes2.length == 3 && parameterTypes2[0] == ScriptRuntime.ContextClass && parameterTypes2[1] == ScriptRuntime.ScriptableClass && parameterTypes2[2] == Boolean.TYPE && Modifier.isStatic(method3.getModifiers())) {
                    method3.invoke(null, Context.getContext(), scriptable, z ? Boolean.TRUE : Boolean.FALSE);
                    return null;
                }
                if (parameterTypes2.length == 1 && parameterTypes2[0] == ScriptRuntime.ScriptableClass && Modifier.isStatic(method3.getModifiers())) {
                    method3.invoke(null, scriptable);
                    return null;
                }
            }
            i2++;
        }
    }

    public static ScriptableObject buildDataDescriptor(Scriptable scriptable, Object obj, int i) {
        NativeObject nativeObject = new NativeObject();
        ScriptRuntime.setBuiltinProtoAndParent(nativeObject, scriptable, TopLevel.Builtins.Object);
        nativeObject.defineProperty(ES6Iterator.VALUE_PROPERTY, obj, 0);
        nativeObject.defineProperty("writable", Boolean.valueOf((i & 1) == 0), 0);
        nativeObject.defineProperty("enumerable", Boolean.valueOf((i & 2) == 0), 0);
        nativeObject.defineProperty("configurable", Boolean.valueOf((i & 4) == 0), 0);
        return nativeObject;
    }

    public static Object callMethod(Scriptable scriptable, String str, Object[] objArr) {
        return callMethod(null, scriptable, str, objArr);
    }

    private void checkNotSealed(Object obj, int i) {
        if (isSealed()) {
            throw Context.reportRuntimeError1("msg.modify.sealed", obj != null ? obj.toString() : Integer.toString(i));
        }
    }

    public static void checkValidAttributes(int i) {
        if ((i & (-16)) != 0) {
            throw new IllegalArgumentException(String.valueOf(i));
        }
    }

    private static g createSlotMap(int i) {
        Context currentContext = Context.getCurrentContext();
        return (currentContext == null || !currentContext.hasFeature(17)) ? new g(i) : new h(i);
    }

    public static <T extends Scriptable> void defineClass(Scriptable scriptable, Class<T> cls) throws IllegalAccessException, InstantiationException, InvocationTargetException {
        defineClass(scriptable, cls, false, false);
    }

    public static void defineConstProperty(Scriptable scriptable, String str) {
        if (scriptable instanceof ConstProperties) {
            ((ConstProperties) scriptable).defineConst(str, scriptable);
        } else {
            defineProperty(scriptable, str, Undefined.instance, 13);
        }
    }

    public static boolean deleteProperty(Scriptable scriptable, String str) {
        Scriptable base = getBase(scriptable, str);
        if (base == null) {
            return true;
        }
        base.delete(str);
        return !base.has(str, scriptable);
    }

    public static Scriptable ensureScriptable(Object obj) {
        if (obj instanceof Scriptable) {
            return (Scriptable) obj;
        }
        throw ScriptRuntime.typeError1("msg.arg.not.object", ScriptRuntime.typeof(obj));
    }

    public static ScriptableObject ensureScriptableObject(Object obj) {
        if (obj instanceof ScriptableObject) {
            return (ScriptableObject) obj;
        }
        throw ScriptRuntime.typeError1("msg.arg.not.object", ScriptRuntime.typeof(obj));
    }

    public static SymbolScriptable ensureSymbolScriptable(Object obj) {
        if (obj instanceof SymbolScriptable) {
            return (SymbolScriptable) obj;
        }
        throw ScriptRuntime.typeError1("msg.object.not.symbolscriptable", ScriptRuntime.typeof(obj));
    }

    /* JADX WARN: Multi-variable type inference failed */
    private static <T extends Scriptable> Class<T> extendsScriptable(Class<?> cls) {
        if (ScriptRuntime.ScriptableClass.isAssignableFrom(cls)) {
            return cls;
        }
        return null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private static Member findAnnotatedMember(AccessibleObject[] accessibleObjectArr, Class<? extends Annotation> cls) {
        for (Method method : accessibleObjectArr) {
            if (method.isAnnotationPresent(cls)) {
                return method;
            }
        }
        return null;
    }

    private Slot findAttributeSlot(String str, int i, SlotAccess slotAccess) {
        Slot slot = this.slotMap.get(str, i, slotAccess);
        if (slot != null) {
            return slot;
        }
        if (str == null) {
            str = Integer.toString(i);
        }
        throw Context.reportRuntimeError1("msg.prop.not.found", str);
    }

    private static Method findSetterMethod(Method[] methodArr, String str, String str2) {
        StringBuilder sb = new StringBuilder();
        sb.append("set");
        sb.append(Character.toUpperCase(str.charAt(0)));
        sb.append(str.substring(1));
        String string = sb.toString();
        for (Method method : methodArr) {
            JSSetter jSSetter = (JSSetter) method.getAnnotation(JSSetter.class);
            if (jSSetter != null && (str.equals(jSSetter.value()) || ("".equals(jSSetter.value()) && string.equals(method.getName())))) {
                return method;
            }
        }
        String str3 = str2 + str;
        for (Method method2 : methodArr) {
            if (str3.equals(method2.getName())) {
                return method2;
            }
        }
        return null;
    }

    public static Scriptable getArrayPrototype(Scriptable scriptable) {
        return TopLevel.getBuiltinPrototype(getTopLevelScope(scriptable), TopLevel.Builtins.Array);
    }

    private static Scriptable getBase(Scriptable scriptable, String str) {
        while (!scriptable.has(str, scriptable) && (scriptable = scriptable.getPrototype()) != null) {
        }
        return scriptable;
    }

    public static Scriptable getClassPrototype(Scriptable scriptable, String str) {
        Object prototypeProperty;
        Object property = getProperty(getTopLevelScope(scriptable), str);
        if (!(property instanceof BaseFunction)) {
            if (property instanceof Scriptable) {
                Scriptable scriptable2 = (Scriptable) property;
                prototypeProperty = scriptable2.get("prototype", scriptable2);
            }
            return null;
        }
        prototypeProperty = ((BaseFunction) property).getPrototypeProperty();
        if (prototypeProperty instanceof Scriptable) {
            return (Scriptable) prototypeProperty;
        }
        return null;
    }

    public static Scriptable getFunctionPrototype(Scriptable scriptable) {
        return TopLevel.getBuiltinPrototype(getTopLevelScope(scriptable), TopLevel.Builtins.Function);
    }

    public static Scriptable getGeneratorFunctionPrototype(Scriptable scriptable) {
        return TopLevel.getBuiltinPrototype(getTopLevelScope(scriptable), TopLevel.Builtins.GeneratorFunction);
    }

    public static Scriptable getObjectPrototype(Scriptable scriptable) {
        return TopLevel.getBuiltinPrototype(getTopLevelScope(scriptable), TopLevel.Builtins.Object);
    }

    public static Object getProperty(Scriptable scriptable, String str) {
        Object obj;
        Scriptable prototype = scriptable;
        do {
            obj = prototype.get(str, scriptable);
            if (obj != Scriptable.NOT_FOUND) {
                break;
            }
            prototype = prototype.getPrototype();
        } while (prototype != null);
        return obj;
    }

    public static Object[] getPropertyIds(Scriptable scriptable) {
        if (scriptable == null) {
            return ScriptRuntime.emptyArgs;
        }
        Object[] ids = scriptable.getIds();
        ObjToIntMap objToIntMap = null;
        while (true) {
            scriptable = scriptable.getPrototype();
            if (scriptable == null) {
                break;
            }
            Object[] ids2 = scriptable.getIds();
            if (ids2.length != 0) {
                if (objToIntMap == null) {
                    if (ids.length == 0) {
                        ids = ids2;
                    } else {
                        objToIntMap = new ObjToIntMap(ids.length + ids2.length);
                        for (int i = 0; i != ids.length; i++) {
                            objToIntMap.intern(ids[i]);
                        }
                        ids = null;
                    }
                }
                for (int i2 = 0; i2 != ids2.length; i2++) {
                    objToIntMap.intern(ids2[i2]);
                }
            }
        }
        return objToIntMap != null ? objToIntMap.getKeys() : ids;
    }

    private static String getPropertyName(String str, String str2, Annotation annotation) {
        String strValue;
        if (str2 != null) {
            return str.substring(str2.length());
        }
        if (annotation instanceof JSGetter) {
            strValue = ((JSGetter) annotation).value();
            if ((strValue == null || strValue.length() == 0) && str.length() > 3 && str.startsWith("get")) {
                strValue = str.substring(3);
                if (Character.isUpperCase(strValue.charAt(0))) {
                    if (strValue.length() == 1) {
                        strValue = strValue.toLowerCase();
                    } else if (!Character.isUpperCase(strValue.charAt(1))) {
                        strValue = Character.toLowerCase(strValue.charAt(0)) + strValue.substring(1);
                    }
                }
            }
        } else if (annotation instanceof JSFunction) {
            strValue = ((JSFunction) annotation).value();
        } else {
            strValue = annotation instanceof JSStaticFunction ? ((JSStaticFunction) annotation).value() : null;
        }
        return (strValue == null || strValue.length() == 0) ? str : strValue;
    }

    public static Scriptable getTopLevelScope(Scriptable scriptable) {
        while (true) {
            Scriptable parentScope = scriptable.getParentScope();
            if (parentScope == null) {
                return scriptable;
            }
            scriptable = parentScope;
        }
    }

    public static Object getTopScopeValue(Scriptable scriptable, Object obj) {
        Object associatedValue;
        Scriptable topLevelScope = getTopLevelScope(scriptable);
        do {
            if ((topLevelScope instanceof ScriptableObject) && (associatedValue = ((ScriptableObject) topLevelScope).getAssociatedValue(obj)) != null) {
                return associatedValue;
            }
            topLevelScope = topLevelScope.getPrototype();
        } while (topLevelScope != null);
        return null;
    }

    public static <T> T getTypedProperty(Scriptable scriptable, int i, Class<T> cls) {
        Object property = getProperty(scriptable, i);
        if (property == Scriptable.NOT_FOUND) {
            property = null;
        }
        return cls.cast(Context.jsToJava(property, cls));
    }

    public static boolean hasProperty(Scriptable scriptable, String str) {
        return getBase(scriptable, str) != null;
    }

    public static boolean isFalse(Object obj) {
        return !isTrue(obj);
    }

    public static boolean isTrue(Object obj) {
        return obj != Scriptable.NOT_FOUND && ScriptRuntime.toBoolean(obj);
    }

    private boolean putConstImpl(String str, int i, Scriptable scriptable, Object obj, int i2) {
        Slot slotQuery;
        if (!this.isExtensible && Context.getContext().isStrictMode()) {
            throw ScriptRuntime.typeError0("msg.not.extensible");
        }
        if (this != scriptable) {
            slotQuery = this.slotMap.query(str, i);
            if (slotQuery == null) {
                return false;
            }
        } else {
            if (isExtensible()) {
                checkNotSealed(str, i);
                Slot slot = this.slotMap.get(str, i, SlotAccess.MODIFY_CONST);
                int attributes = slot.getAttributes();
                if ((attributes & 1) == 0) {
                    throw Context.reportRuntimeError1("msg.var.redecl", str);
                }
                if ((attributes & 8) != 0) {
                    slot.value = obj;
                    if (i2 != 8) {
                        slot.setAttributes(attributes & (-9));
                    }
                }
                return true;
            }
            slotQuery = this.slotMap.query(str, i);
            if (slotQuery == null) {
                return true;
            }
        }
        return slotQuery.setValue(obj, this, scriptable);
    }

    public static void putConstProperty(Scriptable scriptable, String str, Object obj) {
        Scriptable base = getBase(scriptable, str);
        if (base == null) {
            base = scriptable;
        }
        if (base instanceof ConstProperties) {
            ((ConstProperties) base).putConst(str, scriptable, obj);
        }
    }

    private boolean putImpl(Object obj, int i, Scriptable scriptable, Object obj2) {
        Slot slotQuery;
        if (this != scriptable) {
            slotQuery = this.slotMap.query(obj, i);
            if (!this.isExtensible && ((slotQuery == null || (!(slotQuery instanceof GetterSlot) && (slotQuery.getAttributes() & 1) != 0)) && Context.getContext().isStrictMode())) {
                throw ScriptRuntime.typeError0("msg.not.extensible");
            }
            if (slotQuery == null) {
                return false;
            }
        } else if (this.isExtensible) {
            if (this.isSealed) {
                checkNotSealed(obj, i);
            }
            slotQuery = this.slotMap.get(obj, i, SlotAccess.MODIFY);
        } else {
            slotQuery = this.slotMap.query(obj, i);
            if ((slotQuery == null || !((slotQuery instanceof GetterSlot) || (slotQuery.getAttributes() & 1) == 0)) && Context.getContext().isStrictMode()) {
                throw ScriptRuntime.typeError0("msg.not.extensible");
            }
            if (slotQuery == null) {
                return true;
            }
        }
        return slotQuery.setValue(obj2, this, scriptable);
    }

    public static void putProperty(Scriptable scriptable, String str, Object obj) {
        Scriptable base = getBase(scriptable, str);
        if (base == null) {
            base = scriptable;
        }
        base.put(str, scriptable, obj);
    }

    private void readObject(ObjectInputStream objectInputStream) throws ClassNotFoundException, IOException {
        objectInputStream.defaultReadObject();
        int i = objectInputStream.readInt();
        this.slotMap = createSlotMap(i);
        for (int i2 = 0; i2 < i; i2++) {
            this.slotMap.addSlot((Slot) objectInputStream.readObject());
        }
    }

    public static void redefineProperty(Scriptable scriptable, String str, boolean z) {
        Scriptable base = getBase(scriptable, str);
        if (base == null) {
            return;
        }
        if ((base instanceof ConstProperties) && ((ConstProperties) base).isConst(str)) {
            throw ScriptRuntime.typeError1("msg.const.redecl", str);
        }
        if (z) {
            throw ScriptRuntime.typeError1("msg.var.redecl", str);
        }
    }

    private void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.defaultWriteObject();
        long jF = this.slotMap.f();
        try {
            int iC = this.slotMap.c();
            if (iC == 0) {
                objectOutputStream.writeInt(0);
            } else {
                objectOutputStream.writeInt(iC);
                Iterator<Slot> it = this.slotMap.iterator();
                while (it.hasNext()) {
                    objectOutputStream.writeObject(it.next());
                }
            }
        } finally {
            this.slotMap.i(jF);
        }
    }

    public void addLazilyInitializedValue(String str, int i, LazilyLoadedCtor lazilyLoadedCtor, int i2) {
        if (str != null && i != 0) {
            throw new IllegalArgumentException(str);
        }
        checkNotSealed(str, i);
        GetterSlot getterSlot = (GetterSlot) this.slotMap.get(str, i, SlotAccess.MODIFY_GETTER_SETTER);
        getterSlot.setAttributes(i2);
        getterSlot.getter = null;
        getterSlot.setter = null;
        getterSlot.value = lazilyLoadedCtor;
    }

    public int applyDescriptorToAttributeBitset(int i, ScriptableObject scriptableObject) {
        Object property = getProperty(scriptableObject, "enumerable");
        Object obj = Scriptable.NOT_FOUND;
        if (property != obj) {
            i = ScriptRuntime.toBoolean(property) ? i & (-3) : i | 2;
        }
        Object property2 = getProperty(scriptableObject, "writable");
        if (property2 != obj) {
            i = ScriptRuntime.toBoolean(property2) ? i & (-2) : i | 1;
        }
        Object property3 = getProperty(scriptableObject, "configurable");
        if (property3 != obj) {
            return ScriptRuntime.toBoolean(property3) ? i & (-5) : i | 4;
        }
        return i;
    }

    public final synchronized Object associateValue(Object obj, Object obj2) {
        Map map;
        try {
            if (obj2 == null) {
                throw new IllegalArgumentException();
            }
            map = this.associatedValues;
            if (map == null) {
                map = new HashMap();
                this.associatedValues = map;
            }
        } catch (Throwable th) {
            throw th;
        }
        return Kit.initHash(map, obj, obj2);
    }

    public boolean avoidObjectDetection() {
        return false;
    }

    public void checkPropertyChange(Object obj, ScriptableObject scriptableObject, ScriptableObject scriptableObject2) {
        if (scriptableObject == null) {
            if (!isExtensible()) {
                throw ScriptRuntime.typeError0("msg.not.extensible");
            }
            return;
        }
        if (isFalse(scriptableObject.get("configurable", scriptableObject))) {
            if (isTrue(getProperty(scriptableObject2, "configurable"))) {
                throw ScriptRuntime.typeError1("msg.change.configurable.false.to.true", obj);
            }
            if (isTrue(scriptableObject.get("enumerable", scriptableObject)) != isTrue(getProperty(scriptableObject2, "enumerable"))) {
                throw ScriptRuntime.typeError1("msg.change.enumerable.with.configurable.false", obj);
            }
            boolean zIsDataDescriptor = isDataDescriptor(scriptableObject2);
            boolean zIsAccessorDescriptor = isAccessorDescriptor(scriptableObject2);
            if (zIsDataDescriptor || zIsAccessorDescriptor) {
                if (zIsDataDescriptor && isDataDescriptor(scriptableObject)) {
                    if (isFalse(scriptableObject.get("writable", scriptableObject))) {
                        if (isTrue(getProperty(scriptableObject2, "writable"))) {
                            throw ScriptRuntime.typeError1("msg.change.writable.false.to.true.with.configurable.false", obj);
                        }
                        if (!sameValue(getProperty(scriptableObject2, ES6Iterator.VALUE_PROPERTY), scriptableObject.get(ES6Iterator.VALUE_PROPERTY, scriptableObject))) {
                            throw ScriptRuntime.typeError1("msg.change.value.with.writable.false", obj);
                        }
                        return;
                    }
                    return;
                }
                if (!zIsAccessorDescriptor || !isAccessorDescriptor(scriptableObject)) {
                    if (!isDataDescriptor(scriptableObject)) {
                        throw ScriptRuntime.typeError1("msg.change.property.accessor.to.data.with.configurable.false", obj);
                    }
                    throw ScriptRuntime.typeError1("msg.change.property.data.to.accessor.with.configurable.false", obj);
                }
                if (!sameValue(getProperty(scriptableObject2, "set"), scriptableObject.get("set", scriptableObject))) {
                    throw ScriptRuntime.typeError1("msg.change.setter.with.configurable.false", obj);
                }
                if (!sameValue(getProperty(scriptableObject2, "get"), scriptableObject.get("get", scriptableObject))) {
                    throw ScriptRuntime.typeError1("msg.change.getter.with.configurable.false", obj);
                }
            }
        }
    }

    public void checkPropertyDefinition(ScriptableObject scriptableObject) {
        Object property = getProperty(scriptableObject, "get");
        Object obj = Scriptable.NOT_FOUND;
        if (property != obj && property != Undefined.instance && !(property instanceof Callable)) {
            throw ScriptRuntime.notFunctionError(property);
        }
        Object property2 = getProperty(scriptableObject, "set");
        if (property2 != obj && property2 != Undefined.instance && !(property2 instanceof Callable)) {
            throw ScriptRuntime.notFunctionError(property2);
        }
        if (isDataDescriptor(scriptableObject) && isAccessorDescriptor(scriptableObject)) {
            throw ScriptRuntime.typeError0("msg.both.data.and.accessor.desc");
        }
    }

    @Override
    public void defineConst(String str, Scriptable scriptable) {
        if (putConstImpl(str, 0, scriptable, Undefined.instance, 8)) {
            return;
        }
        if (scriptable == this) {
            throw Kit.codeBug();
        }
        if (scriptable instanceof ConstProperties) {
            ((ConstProperties) scriptable).defineConst(str, scriptable);
        }
    }

    public void defineFunctionProperties(String[] strArr, Class<?> cls, int i) {
        Method[] methodList = FunctionObject.getMethodList(cls);
        for (String str : strArr) {
            Method methodFindSingleMethod = FunctionObject.findSingleMethod(methodList, str);
            if (methodFindSingleMethod == null) {
                throw Context.reportRuntimeError2("msg.method.not.found", str, cls.getName());
            }
            defineProperty(str, new FunctionObject(str, methodFindSingleMethod, this), i);
        }
    }

    public void defineOwnProperties(Context context, ScriptableObject scriptableObject) {
        Object[] ids = scriptableObject.getIds(false, true);
        ScriptableObject[] scriptableObjectArr = new ScriptableObject[ids.length];
        int length = ids.length;
        for (int i = 0; i < length; i++) {
            ScriptableObject scriptableObjectEnsureScriptableObject = ensureScriptableObject(ScriptRuntime.getObjectElem((Scriptable) scriptableObject, ids[i], context));
            checkPropertyDefinition(scriptableObjectEnsureScriptableObject);
            scriptableObjectArr[i] = scriptableObjectEnsureScriptableObject;
        }
        int length2 = ids.length;
        for (int i2 = 0; i2 < length2; i2++) {
            defineOwnProperty(context, ids[i2], scriptableObjectArr[i2]);
        }
    }

    public void defineOwnProperty(Context context, Object obj, ScriptableObject scriptableObject) {
        checkPropertyDefinition(scriptableObject);
        defineOwnProperty(context, obj, scriptableObject, true);
    }

    public void defineProperty(String str, Object obj, int i) {
        checkNotSealed(str, 0);
        put(str, this, obj);
        setAttributes(str, i);
    }

    @Override
    public void delete(String str) {
        checkNotSealed(str, 0);
        this.slotMap.remove(str, 0);
    }

    public Object equivalentValues(Object obj) {
        return this == obj ? Boolean.TRUE : Scriptable.NOT_FOUND;
    }

    @Override
    public Object get(String str, Scriptable scriptable) {
        Slot slotQuery = this.slotMap.query(str, 0);
        return slotQuery == null ? Scriptable.NOT_FOUND : slotQuery.getValue(scriptable);
    }

    @Override
    public Object[] getAllIds() {
        return getIds(true, false);
    }

    public final Object getAssociatedValue(Object obj) {
        Map<Object, Object> map = this.associatedValues;
        if (map == null) {
            return null;
        }
        return map.get(obj);
    }

    @Deprecated
    public final int getAttributes(String str, Scriptable scriptable) {
        return getAttributes(str);
    }

    @Override
    public abstract String getClassName();

    @Override
    public Object getDefaultValue(Class<?> cls) {
        return getDefaultValue(this, cls);
    }

    public ExternalArrayData getExternalArrayData() {
        return this.externalData;
    }

    public Object getExternalArrayLength() {
        ExternalArrayData externalArrayData = this.externalData;
        return Integer.valueOf(externalArrayData == null ? 0 : externalArrayData.getArrayLength());
    }

    public Object getGetterOrSetter(String str, int i, boolean z) {
        if (str != null && i != 0) {
            throw new IllegalArgumentException(str);
        }
        Slot slotQuery = this.slotMap.query(str, i);
        if (slotQuery == null) {
            return null;
        }
        if (!(slotQuery instanceof GetterSlot)) {
            return Undefined.instance;
        }
        GetterSlot getterSlot = (GetterSlot) slotQuery;
        Object obj = z ? getterSlot.setter : getterSlot.getter;
        return obj != null ? obj : Undefined.instance;
    }

    @Override
    public Object[] getIds() {
        return getIds(false, false);
    }

    public ScriptableObject getOwnPropertyDescriptor(Context context, Object obj) {
        Slot slot = getSlot(context, obj, SlotAccess.QUERY);
        if (slot == null) {
            return null;
        }
        Scriptable parentScope = getParentScope();
        if (parentScope != null) {
            this = parentScope;
        }
        return slot.getPropertyDescriptor(context, this);
    }

    @Override
    public Scriptable getParentScope() {
        return this.parentScopeObject;
    }

    @Override
    public Scriptable getPrototype() {
        return this.prototypeObject;
    }

    public Slot getSlot(Context context, Object obj, SlotAccess slotAccess) {
        if (obj instanceof Symbol) {
            return this.slotMap.get(obj, 0, slotAccess);
        }
        ScriptRuntime.c stringIdOrIndex = ScriptRuntime.toStringIdOrIndex(context, obj);
        String str = stringIdOrIndex.a;
        return str == null ? this.slotMap.get(null, stringIdOrIndex.b, slotAccess) : this.slotMap.get(str, 0, slotAccess);
    }

    public String getTypeOf() {
        return avoidObjectDetection() ? "undefined" : "object";
    }

    @Override
    public boolean has(String str, Scriptable scriptable) {
        return this.slotMap.query(str, 0) != null;
    }

    @Override
    public boolean hasInstance(Scriptable scriptable) {
        return ScriptRuntime.jsDelegatesTo(scriptable, this);
    }

    public boolean isAccessorDescriptor(ScriptableObject scriptableObject) {
        return hasProperty(scriptableObject, "get") || hasProperty(scriptableObject, "set");
    }

    @Override
    public boolean isConst(String str) {
        Slot slotQuery = this.slotMap.query(str, 0);
        return slotQuery != null && (slotQuery.getAttributes() & 5) == 5;
    }

    public boolean isDataDescriptor(ScriptableObject scriptableObject) {
        return hasProperty(scriptableObject, ES6Iterator.VALUE_PROPERTY) || hasProperty(scriptableObject, "writable");
    }

    public boolean isEmpty() {
        return this.slotMap.isEmpty();
    }

    public boolean isExtensible() {
        return this.isExtensible;
    }

    public boolean isGenericDescriptor(ScriptableObject scriptableObject) {
        return (isDataDescriptor(scriptableObject) || isAccessorDescriptor(scriptableObject)) ? false : true;
    }

    public boolean isGetterOrSetter(String str, int i, boolean z) {
        Slot slotQuery = this.slotMap.query(str, i);
        if (!(slotQuery instanceof GetterSlot)) {
            return false;
        }
        if (!z || ((GetterSlot) slotQuery).setter == null) {
            return (z || ((GetterSlot) slotQuery).getter == null) ? false : true;
        }
        return true;
    }

    public final boolean isSealed() {
        return this.isSealed;
    }

    public void preventExtensions() {
        this.isExtensible = false;
    }

    @Override
    public void put(String str, Scriptable scriptable, Object obj) {
        if (putImpl(str, 0, scriptable, obj)) {
            return;
        }
        if (scriptable == this) {
            throw Kit.codeBug();
        }
        scriptable.put(str, scriptable, obj);
    }

    @Override
    public void putConst(String str, Scriptable scriptable, Object obj) {
        if (putConstImpl(str, 0, scriptable, obj, 1)) {
            return;
        }
        if (scriptable == this) {
            throw Kit.codeBug();
        }
        if (scriptable instanceof ConstProperties) {
            ((ConstProperties) scriptable).putConst(str, scriptable, obj);
        } else {
            scriptable.put(str, scriptable, obj);
        }
    }

    public boolean sameValue(Object obj, Object obj2) {
        Object obj3 = Scriptable.NOT_FOUND;
        if (obj == obj3) {
            return true;
        }
        if (obj2 == obj3) {
            obj2 = Undefined.instance;
        }
        if ((obj2 instanceof Number) && (obj instanceof Number)) {
            double dDoubleValue = ((Number) obj2).doubleValue();
            double dDoubleValue2 = ((Number) obj).doubleValue();
            if (Double.isNaN(dDoubleValue) && Double.isNaN(dDoubleValue2)) {
                return true;
            }
            if (dDoubleValue == 0.0d && Double.doubleToLongBits(dDoubleValue) != Double.doubleToLongBits(dDoubleValue2)) {
                return false;
            }
        }
        return ScriptRuntime.shallowEq(obj2, obj);
    }

    public void sealObject() {
        if (this.isSealed) {
            return;
        }
        long jF = this.slotMap.f();
        try {
            for (Slot slot : this.slotMap) {
                Object obj = slot.value;
                if (obj instanceof LazilyLoadedCtor) {
                    LazilyLoadedCtor lazilyLoadedCtor = (LazilyLoadedCtor) obj;
                    try {
                        lazilyLoadedCtor.init();
                        slot.value = lazilyLoadedCtor.getValue();
                    } catch (Throwable th) {
                        slot.value = lazilyLoadedCtor.getValue();
                        throw th;
                    }
                }
            }
            this.isSealed = true;
            this.slotMap.i(jF);
        } catch (Throwable th2) {
            this.slotMap.i(jF);
            throw th2;
        }
    }

    @Deprecated
    public final void setAttributes(String str, Scriptable scriptable, int i) {
        setAttributes(str, i);
    }

    public void setExternalArrayData(ExternalArrayData externalArrayData) {
        this.externalData = externalArrayData;
        if (externalArrayData == null) {
            delete(SessionDescription.ATTR_LENGTH);
        } else {
            defineProperty(SessionDescription.ATTR_LENGTH, null, GET_ARRAY_LENGTH, null, 3);
        }
    }

    public void setGetterOrSetter(String str, int i, Callable callable, boolean z) {
        setGetterOrSetter(str, i, callable, z, false);
    }

    @Override
    public void setParentScope(Scriptable scriptable) {
        this.parentScopeObject = scriptable;
    }

    @Override
    public void setPrototype(Scriptable scriptable) {
        if (!isExtensible() && Context.getContext().getLanguageVersion() >= 180) {
            throw ScriptRuntime.typeError0("msg.not.extensible");
        }
        this.prototypeObject = scriptable;
    }

    public int size() {
        return this.slotMap.size();
    }

    public static Object callMethod(Context context, Scriptable scriptable, String str, Object[] objArr) {
        Object property = getProperty(scriptable, str);
        if (!(property instanceof Function)) {
            throw ScriptRuntime.notFunctionError(scriptable, str);
        }
        Function function = (Function) property;
        Scriptable topLevelScope = getTopLevelScope(scriptable);
        return context != null ? function.call(context, topLevelScope, scriptable, objArr) : Context.call(null, function, topLevelScope, scriptable, objArr);
    }

    public static <T extends Scriptable> void defineClass(Scriptable scriptable, Class<T> cls, boolean z) throws IllegalAccessException, InstantiationException, InvocationTargetException {
        defineClass(scriptable, cls, z, false);
    }

    public static Object getDefaultValue(Scriptable scriptable, Class<?> cls) {
        Context context = null;
        for (int i = 0; i < 2; i++) {
            boolean z = true;
            if (cls != ScriptRuntime.StringClass ? i != 1 : i != 0) {
                z = false;
            }
            Object property = getProperty(scriptable, z ? "toString" : "valueOf");
            if (property instanceof Function) {
                Function function = (Function) property;
                if (context == null) {
                    context = Context.getContext();
                }
                Object objCall = function.call(context, function.getParentScope(), scriptable, ScriptRuntime.emptyArgs);
                if (objCall != null) {
                    if (!(objCall instanceof Scriptable)) {
                        return objCall;
                    }
                    if (cls != ScriptRuntime.ScriptableClass && cls != ScriptRuntime.FunctionClass) {
                        if (z && (objCall instanceof Wrapper)) {
                            objCall = ((Wrapper) objCall).unwrap();
                            if (objCall instanceof String) {
                            }
                        }
                    }
                    return objCall;
                }
                continue;
            }
        }
        throw ScriptRuntime.typeError1("msg.default.value", cls == null ? "undefined" : cls.getName());
    }

    public static boolean hasProperty(Scriptable scriptable, int i) {
        return getBase(scriptable, i) != null;
    }

    private void setGetterOrSetter(String str, int i, Callable callable, boolean z, boolean z2) {
        GetterSlot getterSlot;
        if (str != null && i != 0) {
            throw new IllegalArgumentException(str);
        }
        if (!z2) {
            checkNotSealed(str, i);
        }
        if (isExtensible()) {
            getterSlot = (GetterSlot) this.slotMap.get(str, i, SlotAccess.MODIFY_GETTER_SETTER);
        } else {
            Slot slotQuery = this.slotMap.query(str, i);
            if (!(slotQuery instanceof GetterSlot)) {
                return;
            } else {
                getterSlot = (GetterSlot) slotQuery;
            }
        }
        if (!z2 && (getterSlot.getAttributes() & 1) != 0) {
            throw Context.reportRuntimeError1("msg.modify.readonly", str);
        }
        if (z) {
            getterSlot.setter = callable;
        } else {
            getterSlot.getter = callable;
        }
        getterSlot.value = Undefined.instance;
    }

    @Deprecated
    public final int getAttributes(int i, Scriptable scriptable) {
        return getAttributes(i);
    }

    public Object[] getIds(boolean z, boolean z2) {
        Object[] objArr;
        ExternalArrayData externalArrayData = this.externalData;
        int arrayLength = externalArrayData == null ? 0 : externalArrayData.getArrayLength();
        if (arrayLength == 0) {
            objArr = ScriptRuntime.emptyArgs;
        } else {
            objArr = new Object[arrayLength];
            for (int i = 0; i < arrayLength; i++) {
                objArr[i] = Integer.valueOf(i);
            }
        }
        if (this.slotMap.isEmpty()) {
            return objArr;
        }
        long jF = this.slotMap.f();
        try {
            int i2 = arrayLength;
            for (Slot slot : this.slotMap) {
                if (z || (slot.getAttributes() & 2) == 0) {
                    if (z2 || !(slot.name instanceof Symbol)) {
                        if (i2 == arrayLength) {
                            Object[] objArr2 = new Object[this.slotMap.c() + arrayLength];
                            if (objArr != null) {
                                System.arraycopy(objArr, 0, objArr2, 0, arrayLength);
                            }
                            objArr = objArr2;
                        }
                        int i3 = i2 + 1;
                        Object objValueOf = slot.name;
                        if (objValueOf == null) {
                            objValueOf = Integer.valueOf(slot.indexOrHash);
                        }
                        objArr[i2] = objValueOf;
                        i2 = i3;
                    }
                }
            }
            this.slotMap.i(jF);
            if (i2 != objArr.length + arrayLength) {
                Object[] objArr3 = new Object[i2];
                System.arraycopy(objArr, 0, objArr3, 0, i2);
                objArr = objArr3;
            }
            Context currentContext = Context.getCurrentContext();
            if (currentContext != null && currentContext.hasFeature(16)) {
                Arrays.sort(objArr, KEY_COMPARATOR);
            }
            return objArr;
        } catch (Throwable th) {
            this.slotMap.i(jF);
            throw th;
        }
    }

    @Override
    public boolean has(int i, Scriptable scriptable) {
        ExternalArrayData externalArrayData = this.externalData;
        if (externalArrayData != null) {
            return i < externalArrayData.getArrayLength();
        }
        return this.slotMap.query(null, i) != null;
    }

    @Deprecated
    public void setAttributes(int i, Scriptable scriptable, int i2) {
        setAttributes(i, i2);
    }

    public static <T extends Scriptable> String defineClass(Scriptable scriptable, Class<T> cls, boolean z, boolean z2) throws IllegalAccessException, InstantiationException, InvocationTargetException {
        BaseFunction baseFunctionBuildClassCtor = buildClassCtor(scriptable, cls, z, z2);
        if (baseFunctionBuildClassCtor == null) {
            return null;
        }
        String className = baseFunctionBuildClassCtor.getClassPrototype().getClassName();
        defineProperty(scriptable, className, baseFunctionBuildClassCtor, 2);
        return className;
    }

    private static Scriptable getBase(Scriptable scriptable, int i) {
        while (!scriptable.has(i, scriptable) && (scriptable = scriptable.getPrototype()) != null) {
        }
        return scriptable;
    }

    public static boolean hasProperty(Scriptable scriptable, Symbol symbol) {
        return getBase(scriptable, symbol) != null;
    }

    public static void putProperty(Scriptable scriptable, Symbol symbol, Object obj) {
        Scriptable base = getBase(scriptable, symbol);
        if (base == null) {
            base = scriptable;
        }
        ensureSymbolScriptable(base).put(symbol, scriptable, obj);
    }

    public void defineOwnProperty(Context context, Object obj, ScriptableObject scriptableObject, boolean z) {
        int iApplyDescriptorToAttributeBitset;
        Slot slot = getSlot(context, obj, SlotAccess.QUERY);
        boolean z2 = slot == null;
        if (z) {
            checkPropertyChange(obj, slot == null ? null : slot.getPropertyDescriptor(context, this), scriptableObject);
        }
        boolean zIsAccessorDescriptor = isAccessorDescriptor(scriptableObject);
        if (slot == null) {
            slot = getSlot(context, obj, zIsAccessorDescriptor ? SlotAccess.MODIFY_GETTER_SETTER : SlotAccess.MODIFY);
            iApplyDescriptorToAttributeBitset = applyDescriptorToAttributeBitset(7, scriptableObject);
        } else {
            iApplyDescriptorToAttributeBitset = applyDescriptorToAttributeBitset(slot.getAttributes(), scriptableObject);
        }
        if (zIsAccessorDescriptor) {
            if (!(slot instanceof GetterSlot)) {
                slot = getSlot(context, obj, SlotAccess.MODIFY_GETTER_SETTER);
            }
            GetterSlot getterSlot = (GetterSlot) slot;
            Object property = getProperty(scriptableObject, "get");
            Object obj2 = Scriptable.NOT_FOUND;
            if (property != obj2) {
                getterSlot.getter = property;
            }
            Object property2 = getProperty(scriptableObject, "set");
            if (property2 != obj2) {
                getterSlot.setter = property2;
            }
            getterSlot.value = Undefined.instance;
            getterSlot.setAttributes(iApplyDescriptorToAttributeBitset);
            return;
        }
        if ((slot instanceof GetterSlot) && isDataDescriptor(scriptableObject)) {
            slot = getSlot(context, obj, SlotAccess.CONVERT_ACCESSOR_TO_DATA);
        }
        Object property3 = getProperty(scriptableObject, ES6Iterator.VALUE_PROPERTY);
        if (property3 != Scriptable.NOT_FOUND) {
            slot.value = property3;
        } else if (z2) {
            slot.value = Undefined.instance;
        }
        slot.setAttributes(iApplyDescriptorToAttributeBitset);
    }

    @Override
    public void delete(int i) {
        checkNotSealed(null, i);
        this.slotMap.remove(null, i);
    }

    public int getAttributes(String str) {
        return findAttributeSlot(str, 0, SlotAccess.QUERY).getAttributes();
    }

    public void setAttributes(String str, int i) {
        checkNotSealed(str, 0);
        findAttributeSlot(str, 0, SlotAccess.MODIFY).setAttributes(i);
    }

    public static boolean deleteProperty(Scriptable scriptable, int i) {
        Scriptable base = getBase(scriptable, i);
        if (base == null) {
            return true;
        }
        base.delete(i);
        return !base.has(i, scriptable);
    }

    private Slot findAttributeSlot(Symbol symbol, SlotAccess slotAccess) {
        Slot slot = this.slotMap.get(symbol, 0, slotAccess);
        if (slot != null) {
            return slot;
        }
        throw Context.reportRuntimeError1("msg.prop.not.found", symbol);
    }

    public static Object getProperty(Scriptable scriptable, Symbol symbol) {
        Object obj;
        Scriptable prototype = scriptable;
        do {
            obj = ensureSymbolScriptable(prototype).get(symbol, scriptable);
            if (obj != Scriptable.NOT_FOUND) {
                break;
            }
            prototype = prototype.getPrototype();
        } while (prototype != null);
        return obj;
    }

    public static <T> T getTypedProperty(Scriptable scriptable, String str, Class<T> cls) {
        Object property = getProperty(scriptable, str);
        if (property == Scriptable.NOT_FOUND) {
            property = null;
        }
        return cls.cast(Context.jsToJava(property, cls));
    }

    public void defineProperty(Symbol symbol, Object obj, int i) {
        checkNotSealed(symbol, 0);
        put(symbol, this, obj);
        setAttributes(symbol, i);
    }

    @Override
    public Object get(int i, Scriptable scriptable) {
        ExternalArrayData externalArrayData = this.externalData;
        if (externalArrayData != null) {
            if (i < externalArrayData.getArrayLength()) {
                return this.externalData.getArrayElement(i);
            }
            return Scriptable.NOT_FOUND;
        }
        Slot slotQuery = this.slotMap.query(null, i);
        if (slotQuery == null) {
            return Scriptable.NOT_FOUND;
        }
        return slotQuery.getValue(scriptable);
    }

    public int getAttributes(int i) {
        return findAttributeSlot(null, i, SlotAccess.QUERY).getAttributes();
    }

    @Override
    public void put(int i, Scriptable scriptable, Object obj) {
        ExternalArrayData externalArrayData = this.externalData;
        if (externalArrayData != null) {
            if (i < externalArrayData.getArrayLength()) {
                this.externalData.setArrayElement(i, obj);
                return;
            }
            throw new JavaScriptException(ScriptRuntime.newNativeError(Context.getCurrentContext(), this, TopLevel.NativeErrors.RangeError, new Object[]{"External array index out of bounds "}), null, 0);
        }
        if (putImpl(null, i, scriptable, obj)) {
            return;
        }
        if (scriptable != this) {
            scriptable.put(i, scriptable, obj);
            return;
        }
        throw Kit.codeBug();
    }

    public ScriptableObject(Scriptable scriptable, Scriptable scriptable2) {
        this.isExtensible = true;
        this.isSealed = false;
        if (scriptable != null) {
            this.parentScopeObject = scriptable;
            this.prototypeObject = scriptable2;
            this.slotMap = createSlotMap(0);
            return;
        }
        throw new IllegalArgumentException();
    }

    private static Scriptable getBase(Scriptable scriptable, Symbol symbol) {
        while (!ensureSymbolScriptable(scriptable).has(symbol, scriptable) && (scriptable = scriptable.getPrototype()) != null) {
        }
        return scriptable;
    }

    public static void putProperty(Scriptable scriptable, int i, Object obj) {
        Scriptable base = getBase(scriptable, i);
        if (base == null) {
            base = scriptable;
        }
        base.put(i, scriptable, obj);
    }

    public void delete(Symbol symbol) {
        checkNotSealed(symbol, 0);
        this.slotMap.remove(symbol, 0);
    }

    public int getAttributes(Symbol symbol) {
        return findAttributeSlot(symbol, SlotAccess.QUERY).getAttributes();
    }

    public boolean has(Symbol symbol, Scriptable scriptable) {
        return this.slotMap.query(symbol, 0) != null;
    }

    public void setAttributes(int i, int i2) {
        checkNotSealed(null, i);
        findAttributeSlot(null, i, SlotAccess.MODIFY).setAttributes(i2);
    }

    public static void defineProperty(Scriptable scriptable, String str, Object obj, int i) {
        if (!(scriptable instanceof ScriptableObject)) {
            scriptable.put(str, scriptable, obj);
        } else {
            ((ScriptableObject) scriptable).defineProperty(str, obj, i);
        }
    }

    public static Object getProperty(Scriptable scriptable, int i) {
        Object obj;
        Scriptable prototype = scriptable;
        do {
            obj = prototype.get(i, scriptable);
            if (obj != Scriptable.NOT_FOUND) {
                break;
            }
            prototype = prototype.getPrototype();
        } while (prototype != null);
        return obj;
    }

    public void setAttributes(Symbol symbol, int i) {
        checkNotSealed(symbol, 0);
        findAttributeSlot(symbol, SlotAccess.MODIFY).setAttributes(i);
    }

    public void defineProperty(String str, Class<?> cls, int i) {
        int length = str.length();
        if (length != 0) {
            char[] cArr = new char[length + 3];
            str.getChars(0, length, cArr, 3);
            cArr[3] = Character.toUpperCase(cArr[3]);
            cArr[0] = 'g';
            cArr[1] = 'e';
            cArr[2] = 't';
            String str2 = new String(cArr);
            cArr[0] = 's';
            String str3 = new String(cArr);
            Method[] methodList = FunctionObject.getMethodList(cls);
            Method methodFindSingleMethod = FunctionObject.findSingleMethod(methodList, str2);
            Method methodFindSingleMethod2 = FunctionObject.findSingleMethod(methodList, str3);
            if (methodFindSingleMethod2 == null) {
                i |= 1;
            }
            int i2 = i;
            if (methodFindSingleMethod2 == null) {
                methodFindSingleMethod2 = null;
            }
            defineProperty(str, null, methodFindSingleMethod, methodFindSingleMethod2, i2);
            return;
        }
        throw new IllegalArgumentException();
    }

    public Object get(Symbol symbol, Scriptable scriptable) {
        Slot slotQuery = this.slotMap.query(symbol, 0);
        if (slotQuery == null) {
            return Scriptable.NOT_FOUND;
        }
        return slotQuery.getValue(scriptable);
    }

    public void put(Symbol symbol, Scriptable scriptable, Object obj) {
        if (putImpl(symbol, 0, scriptable, obj)) {
            return;
        }
        if (scriptable != this) {
            ensureSymbolScriptable(scriptable).put(symbol, scriptable, obj);
            return;
        }
        throw Kit.codeBug();
    }

    public Object get(Object obj) {
        Object obj2;
        if (obj instanceof String) {
            obj2 = get((String) obj, this);
        } else if (obj instanceof Symbol) {
            obj2 = get((Symbol) obj, this);
        } else {
            obj2 = obj instanceof Number ? get(((Number) obj).intValue(), this) : null;
        }
        if (obj2 == Scriptable.NOT_FOUND || obj2 == Undefined.instance) {
            return null;
        }
        return obj2 instanceof Wrapper ? ((Wrapper) obj2).unwrap() : obj2;
    }

    /* JADX WARN: Code duplicated, block: B:15:0x002d  */
    public void defineProperty(String str, Object obj, Method method, Method method2, int i) {
        MemberBox memberBox;
        boolean z;
        boolean z2;
        String str2;
        Class<?> cls;
        MemberBox memberBox2 = null;
        str = null;
        String str3 = null;
        if (method != null) {
            memberBox = new MemberBox(method);
            if (!Modifier.isStatic(method.getModifiers())) {
                boolean z3 = obj != null;
                memberBox.delegateTo = obj;
                z2 = z3;
            } else {
                memberBox.delegateTo = Void.TYPE;
                z2 = true;
            }
            Class<?>[] parameterTypes = method.getParameterTypes();
            if (parameterTypes.length == 0) {
                if (z2) {
                    str2 = "msg.obj.getter.parms";
                } else {
                    str2 = null;
                }
            } else if (parameterTypes.length == 1 && (((cls = parameterTypes[0]) == ScriptRuntime.ScriptableClass || cls == ScriptRuntime.ScriptableObjectClass) && z2)) {
                str2 = null;
            } else {
                str2 = "msg.bad.getter.parms";
            }
            if (str2 != null) {
                throw Context.reportRuntimeError1(str2, method.toString());
            }
        } else {
            memberBox = null;
        }
        if (method2 != null) {
            Class<?> returnType = method2.getReturnType();
            Class<?> cls2 = Void.TYPE;
            if (returnType == cls2) {
                MemberBox memberBox3 = new MemberBox(method2);
                if (!Modifier.isStatic(method2.getModifiers())) {
                    boolean z4 = obj != null;
                    memberBox3.delegateTo = obj;
                    z = z4;
                } else {
                    memberBox3.delegateTo = cls2;
                    z = true;
                }
                Class<?>[] parameterTypes2 = method2.getParameterTypes();
                if (parameterTypes2.length == 1) {
                    if (z) {
                        str3 = "msg.setter2.expected";
                    }
                } else if (parameterTypes2.length == 2) {
                    Class<?> cls3 = parameterTypes2[0];
                    if (cls3 != ScriptRuntime.ScriptableClass && cls3 != ScriptRuntime.ScriptableObjectClass) {
                        str3 = "msg.setter2.parms";
                    } else if (!z) {
                        str3 = "msg.setter1.parms";
                    }
                } else {
                    str3 = "msg.setter.parms";
                }
                if (str3 != null) {
                    throw Context.reportRuntimeError1(str3, method2.toString());
                }
                memberBox2 = memberBox3;
            } else {
                throw Context.reportRuntimeError1("msg.setter.return", method2.toString());
            }
        }
        GetterSlot getterSlot = (GetterSlot) this.slotMap.get(str, 0, SlotAccess.MODIFY_GETTER_SETTER);
        getterSlot.setAttributes(i);
        getterSlot.getter = memberBox;
        getterSlot.setter = memberBox2;
    }
}
