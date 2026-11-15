package org.mozilla.javascript;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import defpackage.ut8;
import java.lang.reflect.Array;
import java.lang.reflect.Method;
import java.util.concurrent.CopyOnWriteArrayList;

public class NativeJavaMethod extends BaseFunction {
    private static final int PREFERENCE_AMBIGUOUS = 3;
    private static final int PREFERENCE_EQUAL = 0;
    private static final int PREFERENCE_FIRST_ARG = 1;
    private static final int PREFERENCE_SECOND_ARG = 2;
    private static final boolean debug = false;
    private static final long serialVersionUID = -3440381785576412928L;
    private String functionName;
    MemberBox[] methods;
    private final transient CopyOnWriteArrayList<ut8> overloadCache;

    public NativeJavaMethod(MemberBox[] memberBoxArr) {
        this.overloadCache = new CopyOnWriteArrayList<>();
        this.functionName = memberBoxArr[0].getName();
        this.methods = memberBoxArr;
    }

    /* JADX WARN: Code duplicated, block: B:52:0x008e  */
    public static int findFunction(Context context, MemberBox[] memberBoxArr, Object[] objArr) {
        int i = -1;
        if (memberBoxArr.length == 0) {
            return -1;
        }
        int i2 = 0;
        if (memberBoxArr.length == 1) {
            MemberBox memberBox = memberBoxArr[0];
            Class<?>[] clsArr = memberBox.argTypes;
            int length = clsArr.length;
            if (memberBox.vararg) {
                length--;
                if (length > objArr.length) {
                    return -1;
                }
            } else if (length != objArr.length) {
                return -1;
            }
            for (int i3 = 0; i3 != length; i3++) {
                if (!NativeJavaObject.canConvert(objArr[i3], clsArr[i3])) {
                    return -1;
                }
            }
            return 0;
        }
        int[] iArr = null;
        int i4 = -1;
        int i5 = 0;
        int i6 = 0;
        while (i5 < memberBoxArr.length) {
            MemberBox memberBox2 = memberBoxArr[i5];
            Class<?>[] clsArr2 = memberBox2.argTypes;
            int length2 = clsArr2.length;
            if (!memberBox2.vararg ? length2 == objArr.length : (length2 = length2 - 1) <= objArr.length) {
                int i7 = i2;
                while (true) {
                    if (i7 >= length2) {
                        if (i4 >= 0) {
                            int i8 = i;
                            int i9 = i2;
                            int i10 = i9;
                            while (true) {
                                if (i8 != i6) {
                                    MemberBox memberBox3 = memberBoxArr[i8 == i ? i4 : iArr[i8]];
                                    if (!context.hasFeature(13) || memberBox3.isPublic() == memberBox2.isPublic()) {
                                        int iPreferSignature = preferSignature(objArr, clsArr2, memberBox2.vararg, memberBox3.argTypes, memberBox3.vararg);
                                        if (iPreferSignature != 3) {
                                            if (iPreferSignature == 1) {
                                                i9++;
                                            } else {
                                                if (iPreferSignature != 2) {
                                                    if (iPreferSignature != 0) {
                                                        Kit.codeBug();
                                                    }
                                                    if (memberBox3.isStatic() && memberBox3.getDeclaringClass().isAssignableFrom(memberBox2.getDeclaringClass())) {
                                                        if (i8 != -1) {
                                                            iArr[i8] = i5;
                                                        }
                                                    }
                                                }
                                                i10++;
                                            }
                                        }
                                    } else if (memberBox3.isPublic()) {
                                        i10++;
                                    } else {
                                        i9++;
                                    }
                                    i8++;
                                    i = -1;
                                }
                                int i11 = i6 + 1;
                                if (i9 == i11) {
                                    i4 = i5;
                                    i6 = 0;
                                } else if (i10 != i11) {
                                    if (iArr == null) {
                                        iArr = new int[memberBoxArr.length - 1];
                                    }
                                    iArr[i6] = i5;
                                    i6 = i11;
                                }
                            }
                        }
                        i4 = i5;
                    } else if (NativeJavaObject.canConvert(objArr[i7], clsArr2[i7])) {
                        i7++;
                    }
                }
            }
            i5++;
            i = -1;
            i2 = 0;
        }
        if (i4 < 0) {
            return -1;
        }
        if (i6 == 0) {
            return i4;
        }
        StringBuilder sb = new StringBuilder();
        int i12 = -1;
        while (i12 != i6) {
            int i13 = i12 == -1 ? i4 : iArr[i12];
            sb.append("\n    ");
            sb.append(memberBoxArr[i13].toJavaDeclaration());
            i12++;
        }
        MemberBox memberBox4 = memberBoxArr[i4];
        String name = memberBox4.getName();
        String name2 = memberBox4.getDeclaringClass().getName();
        if (memberBoxArr[0].isCtor()) {
            throw Context.reportRuntimeError3("msg.constructor.ambiguous", name, scriptSignature(objArr), sb.toString());
        }
        throw Context.reportRuntimeError4("msg.method.ambiguous", name2, name, scriptSignature(objArr), sb.toString());
    }

    /* JADX WARN: Code duplicated, block: B:23:0x0032  */
    /* JADX WARN: Code duplicated, block: B:31:0x0044  */
    private static int preferSignature(Object[] objArr, Class<?>[] clsArr, boolean z, Class<?>[] clsArr2, boolean z2) {
        int i = 0;
        int i2 = 0;
        while (i < objArr.length) {
            int i3 = 1;
            Class<?> cls = (!z || i < clsArr.length) ? clsArr[i] : clsArr[clsArr.length - 1];
            Class<?> cls2 = (!z2 || i < clsArr2.length) ? clsArr2[i] : clsArr2[clsArr2.length - 1];
            if (cls != cls2) {
                Object obj = objArr[i];
                int conversionWeight = NativeJavaObject.getConversionWeight(obj, cls);
                int conversionWeight2 = NativeJavaObject.getConversionWeight(obj, cls2);
                if (conversionWeight >= conversionWeight2) {
                    if (conversionWeight > conversionWeight2) {
                        i3 = 2;
                    } else if (conversionWeight != 0) {
                        i3 = 3;
                    } else if (cls.isAssignableFrom(cls2)) {
                        i3 = 2;
                    } else if (!cls2.isAssignableFrom(cls)) {
                        i3 = 3;
                    }
                }
                i2 |= i3;
                if (i2 == 3) {
                    break;
                }
            }
            i++;
        }
        return i2;
    }

    private static void printDebug(String str, MemberBox memberBox, Object[] objArr) {
    }

    public static String scriptSignature(Object[] objArr) {
        String strO;
        StringBuilder sb = new StringBuilder();
        for (int i = 0; i != objArr.length; i++) {
            Object obj = objArr[i];
            if (obj == null) {
                strO = "null";
            } else if (obj instanceof Boolean) {
                strO = TypedValues.Custom.S_BOOLEAN;
            } else if (obj instanceof String) {
                strO = "string";
            } else if (obj instanceof Number) {
                strO = "number";
            } else if (!(obj instanceof Scriptable)) {
                strO = f.o(obj.getClass());
            } else if (obj instanceof Undefined) {
                strO = "undefined";
            } else if (obj instanceof Wrapper) {
                strO = ((Wrapper) obj).unwrap().getClass().getName();
            } else {
                strO = obj instanceof Function ? "function" : "object";
            }
            if (i != 0) {
                sb.append(',');
            }
            sb.append(strO);
        }
        return sb.toString();
    }

    @Override
    public Object call(Context context, Scriptable scriptable, Scriptable scriptable2, Object[] objArr) {
        Object[] objArr2;
        Object obj;
        Object objJsToJava;
        if (this.methods.length == 0) {
            throw new RuntimeException("No methods defined for call");
        }
        int iFindCachedFunction = findCachedFunction(context, objArr);
        int i = 0;
        if (iFindCachedFunction < 0) {
            throw Context.reportRuntimeError1("msg.java.no_such_method", this.methods[0].method().getDeclaringClass().getName() + '.' + getFunctionName() + '(' + scriptSignature(objArr) + ')');
        }
        MemberBox memberBox = this.methods[iFindCachedFunction];
        Class<?>[] clsArr = memberBox.argTypes;
        if (memberBox.vararg) {
            objArr2 = new Object[clsArr.length];
            for (int i2 = 0; i2 < clsArr.length - 1; i2++) {
                objArr2[i2] = Context.jsToJava(objArr[i2], clsArr[i2]);
            }
            if (objArr.length == clsArr.length && (objArr[objArr.length - 1] == null || (objArr[objArr.length - 1] instanceof NativeArray) || (objArr[objArr.length - 1] instanceof NativeJavaArray))) {
                objJsToJava = Context.jsToJava(objArr[objArr.length - 1], clsArr[clsArr.length - 1]);
            } else {
                Class<?> componentType = clsArr[clsArr.length - 1].getComponentType();
                Object objNewInstance = Array.newInstance(componentType, (objArr.length - clsArr.length) + 1);
                while (i < Array.getLength(objNewInstance)) {
                    Array.set(objNewInstance, i, Context.jsToJava(objArr[(clsArr.length - 1) + i], componentType));
                    i++;
                }
                objJsToJava = objNewInstance;
            }
            objArr2[clsArr.length - 1] = objJsToJava;
        } else {
            objArr2 = objArr;
            while (i < objArr2.length) {
                Object obj2 = objArr2[i];
                Object objJsToJava2 = Context.jsToJava(obj2, clsArr[i]);
                if (objJsToJava2 != obj2) {
                    if (objArr == objArr2) {
                        objArr2 = (Object[]) objArr2.clone();
                    }
                    objArr2[i] = objJsToJava2;
                }
                i++;
            }
        }
        if (memberBox.isStatic()) {
            obj = null;
        } else {
            Class<?> declaringClass = memberBox.getDeclaringClass();
            Scriptable prototype = scriptable2;
            while (true) {
                if (prototype == null) {
                    throw Context.reportRuntimeError3("msg.nonjava.method", getFunctionName(), ScriptRuntime.toString(scriptable2), declaringClass.getName());
                }
                if (prototype instanceof Wrapper) {
                    Object objUnwrap = ((Wrapper) prototype).unwrap();
                    if (declaringClass.isInstance(objUnwrap)) {
                        obj = objUnwrap;
                        break;
                    }
                }
                prototype = prototype.getPrototype();
            }
        }
        Object objInvoke = memberBox.invoke(obj, objArr2);
        Class<?> returnType = memberBox.method().getReturnType();
        Object objWrap = context.getWrapFactory().wrap(context, scriptable, objInvoke, returnType);
        return (objWrap == null && returnType == Void.TYPE) ? Undefined.instance : objWrap;
    }

    @Override
    public String decompile(int i, int i2) {
        StringBuilder sb = new StringBuilder();
        boolean z = (i2 & 1) != 0;
        if (!z) {
            sb.append("function ");
            sb.append(getFunctionName());
            sb.append("() {");
        }
        sb.append("/*\n");
        sb.append(toString());
        sb.append(z ? "*/\n" : "*/}\n");
        return sb.toString();
    }

    public int findCachedFunction(Context context, Object[] objArr) {
        MemberBox[] memberBoxArr = this.methods;
        if (memberBoxArr.length <= 1) {
            return findFunction(context, memberBoxArr, objArr);
        }
        for (ut8 ut8Var : this.overloadCache) {
            if (ut8Var.a(objArr)) {
                return ut8Var.b;
            }
        }
        int iFindFunction = findFunction(context, this.methods, objArr);
        if (this.overloadCache.size() < this.methods.length * 2) {
            this.overloadCache.addIfAbsent(new ut8(objArr, iFindFunction));
        }
        return iFindFunction;
    }

    @Override
    public String getFunctionName() {
        return this.functionName;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        int length = this.methods.length;
        for (int i = 0; i != length; i++) {
            if (this.methods[i].isMethod()) {
                Method method = this.methods[i].method();
                sb.append(f.o(method.getReturnType()));
                sb.append(' ');
                sb.append(method.getName());
            } else {
                sb.append(this.methods[i].getName());
            }
            sb.append(f.p(this.methods[i].argTypes));
            sb.append('\n');
        }
        return sb.toString();
    }

    public NativeJavaMethod(MemberBox[] memberBoxArr, String str) {
        this.overloadCache = new CopyOnWriteArrayList<>();
        this.functionName = str;
        this.methods = memberBoxArr;
    }

    public NativeJavaMethod(MemberBox memberBox, String str) {
        this.overloadCache = new CopyOnWriteArrayList<>();
        this.functionName = str;
        this.methods = new MemberBox[]{memberBox};
    }

    public NativeJavaMethod(Method method, String str) {
        this(new MemberBox(method), str);
    }
}
