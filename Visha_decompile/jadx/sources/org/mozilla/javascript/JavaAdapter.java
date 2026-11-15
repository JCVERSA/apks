package org.mozilla.javascript;

import androidx.media3.exoplayer.rtsp.SessionDescription;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.security.CodeSource;
import java.security.ProtectionDomain;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Map;
import javassist.compiler.ast.MethodDecl;
import org.apache.commons.io.IOUtils;
import org.mozilla.classfile.ByteCode;
import org.mozilla.classfile.ClassFileWriter;
import org.mozilla.javascript.Context;
import org.mozilla.javascript.JavaAdapter;

public final class JavaAdapter implements IdFunctionCall {
    private static final Object FTAG = "JavaAdapter";
    private static final int Id_JavaAdapter = 1;

    public static class a {
        public Class a;
        public Class[] b;
        public ObjToIntMap c;

        public a(Class cls, Class[] clsArr, ObjToIntMap objToIntMap) {
            this.a = cls;
            this.b = clsArr;
            this.c = objToIntMap;
        }

        public boolean equals(Object obj) {
            if (!(obj instanceof a)) {
                return false;
            }
            a aVar = (a) obj;
            if (this.a != aVar.a) {
                return false;
            }
            Class[] clsArr = this.b;
            Class[] clsArr2 = aVar.b;
            if (clsArr != clsArr2) {
                if (clsArr.length == clsArr2.length) {
                    int i = 0;
                    while (true) {
                        Class[] clsArr3 = this.b;
                        if (i >= clsArr3.length) {
                            break;
                        }
                        if (clsArr3[i] != aVar.b[i]) {
                            return false;
                        }
                        i++;
                    }
                } else {
                    return false;
                }
            }
            if (this.c.size() != aVar.c.size()) {
                return false;
            }
            ObjToIntMap.Iterator iterator = new ObjToIntMap.Iterator(this.c);
            iterator.start();
            while (!iterator.done()) {
                String str = (String) iterator.getKey();
                int value = iterator.getValue();
                if (value != aVar.c.get(str, value + 1)) {
                    return false;
                }
                iterator.next();
            }
            return true;
        }

        public int hashCode() {
            return this.c.size() ^ (this.a.hashCode() + Arrays.hashCode(this.b));
        }
    }

    public static int appendMethodSignature(Class<?>[] clsArr, Class<?> cls, StringBuilder sb) {
        sb.append('(');
        int length = clsArr.length + 1;
        for (Class<?> cls2 : clsArr) {
            appendTypeString(sb, cls2);
            if (cls2 == Long.TYPE || cls2 == Double.TYPE) {
                length++;
            }
        }
        sb.append(')');
        appendTypeString(sb, cls);
        return length;
    }

    private static void appendOverridableMethods(Class<?> cls, ArrayList<Method> arrayList, HashSet<String> hashSet) {
        Method[] declaredMethods = cls.getDeclaredMethods();
        for (int i = 0; i < declaredMethods.length; i++) {
            StringBuilder sb = new StringBuilder();
            sb.append(declaredMethods[i].getName());
            Method method = declaredMethods[i];
            sb.append(getMethodSignature(method, method.getParameterTypes()));
            String string = sb.toString();
            if (!hashSet.contains(string)) {
                int modifiers = declaredMethods[i].getModifiers();
                if (!Modifier.isStatic(modifiers)) {
                    if (Modifier.isFinal(modifiers)) {
                        hashSet.add(string);
                    } else if (Modifier.isPublic(modifiers) || Modifier.isProtected(modifiers)) {
                        arrayList.add(declaredMethods[i]);
                        hashSet.add(string);
                    }
                }
            }
        }
    }

    private static StringBuilder appendTypeString(StringBuilder sb, Class<?> cls) {
        char upperCase;
        while (cls.isArray()) {
            sb.append('[');
            cls = cls.getComponentType();
        }
        if (cls.isPrimitive()) {
            if (cls == Boolean.TYPE) {
                upperCase = 'Z';
            } else {
                upperCase = cls == Long.TYPE ? 'J' : Character.toUpperCase(cls.getName().charAt(0));
            }
            sb.append(upperCase);
        } else {
            sb.append('L');
            sb.append(cls.getName().replace('.', IOUtils.DIR_SEPARATOR_UNIX));
            sb.append(';');
        }
        return sb;
    }

    public static Object callMethod(ContextFactory contextFactory, final Scriptable scriptable, final Function function, final Object[] objArr, final long j) {
        if (function == null) {
            return null;
        }
        if (contextFactory == null) {
            contextFactory = ContextFactory.getGlobal();
        }
        final Scriptable parentScope = function.getParentScope();
        if (j == 0) {
            return Context.call(contextFactory, function, parentScope, scriptable, objArr);
        }
        Context currentContext = Context.getCurrentContext();
        return currentContext != null ? doCall(currentContext, parentScope, scriptable, function, objArr, j) : contextFactory.call(new ContextAction() {
            @Override
            public final Object run(Context context) {
                return JavaAdapter.lambda$callMethod$0(parentScope, scriptable, function, objArr, j, context);
            }
        });
    }

    public static Object convertResult(Object obj, Class<?> cls) {
        if (obj != Undefined.instance || cls == ScriptRuntime.ObjectClass || cls == ScriptRuntime.StringClass) {
            return Context.jsToJava(obj, cls);
        }
        return null;
    }

    /* JADX WARN: Code duplicated, block: B:34:0x00a2  */
    /* JADX WARN: Code duplicated, block: B:43:0x00d6  */
    /* JADX WARN: Code duplicated, block: B:54:0x0122  */
    public static byte[] createAdapterCode(ObjToIntMap objToIntMap, String str, Class<?> cls, Class<?>[] clsArr, String str2) {
        Method[] methodArr;
        String str3;
        ClassFileWriter classFileWriter = new ClassFileWriter(str, cls.getName(), "<adapter>");
        classFileWriter.addField("factory", "Lorg/mozilla/javascript/ContextFactory;", (short) 17);
        classFileWriter.addField("delegee", "Lorg/mozilla/javascript/Scriptable;", (short) 17);
        classFileWriter.addField("self", "Lorg/mozilla/javascript/Scriptable;", (short) 17);
        int length = clsArr == null ? 0 : clsArr.length;
        for (int i = 0; i < length; i++) {
            Class<?> cls2 = clsArr[i];
            if (cls2 != null) {
                classFileWriter.addInterface(cls2.getName());
            }
        }
        String strReplace = cls.getName().replace('.', IOUtils.DIR_SEPARATOR_UNIX);
        for (Constructor<?> constructor : cls.getDeclaredConstructors()) {
            int modifiers = constructor.getModifiers();
            if (Modifier.isPublic(modifiers) || Modifier.isProtected(modifiers)) {
                generateCtor(classFileWriter, str, strReplace, constructor);
            }
        }
        generateSerialCtor(classFileWriter, str, strReplace);
        if (str2 != null) {
            generateEmptyCtor(classFileWriter, str, strReplace, str2);
        }
        ObjToIntMap objToIntMap2 = new ObjToIntMap();
        ObjToIntMap objToIntMap3 = new ObjToIntMap();
        for (int i2 = 0; i2 < length; i2++) {
            int i3 = 0;
            for (Method[] methods = clsArr[i2].getMethods(); i3 < methods.length; methods = methods) {
                Method method = methods[i3];
                int modifiers2 = method.getModifiers();
                if (!Modifier.isStatic(modifiers2) && !Modifier.isFinal(modifiers2) && !method.isDefault()) {
                    String name = method.getName();
                    Class<?>[] parameterTypes = method.getParameterTypes();
                    if (!objToIntMap.has(name)) {
                        try {
                            cls.getMethod(name, parameterTypes);
                        } catch (NoSuchMethodException unused) {
                            str3 = name + getMethodSignature(method, parameterTypes);
                            if (!objToIntMap2.has(str3)) {
                                generateMethod(classFileWriter, str, name, parameterTypes, method.getReturnType(), true);
                                objToIntMap2.put(str3, 0);
                                objToIntMap3.put(name, 0);
                            }
                            i3++;
                        }
                    }
                    str3 = name + getMethodSignature(method, parameterTypes);
                    if (!objToIntMap2.has(str3)) {
                        generateMethod(classFileWriter, str, name, parameterTypes, method.getReturnType(), true);
                        objToIntMap2.put(str3, 0);
                        objToIntMap3.put(name, 0);
                    }
                }
                i3++;
            }
        }
        Method[] overridableMethods = getOverridableMethods(cls);
        int i4 = 0;
        while (i4 < overridableMethods.length) {
            Method method2 = overridableMethods[i4];
            boolean zIsAbstract = Modifier.isAbstract(method2.getModifiers());
            String name2 = method2.getName();
            if (zIsAbstract || objToIntMap.has(name2)) {
                Class<?>[] parameterTypes2 = method2.getParameterTypes();
                String methodSignature = getMethodSignature(method2, parameterTypes2);
                String str4 = name2 + methodSignature;
                if (objToIntMap2.has(str4)) {
                    methodArr = overridableMethods;
                } else {
                    methodArr = overridableMethods;
                    generateMethod(classFileWriter, str, name2, parameterTypes2, method2.getReturnType(), true);
                    objToIntMap2.put(str4, 0);
                    objToIntMap3.put(name2, 0);
                    if (!zIsAbstract) {
                        generateSuper(classFileWriter, str, strReplace, name2, methodSignature, parameterTypes2, method2.getReturnType());
                    }
                }
            } else {
                methodArr = overridableMethods;
            }
            i4++;
            overridableMethods = methodArr;
        }
        ObjToIntMap.Iterator iterator = new ObjToIntMap.Iterator(objToIntMap);
        iterator.start();
        while (!iterator.done()) {
            String str5 = (String) iterator.getKey();
            if (!objToIntMap3.has(str5)) {
                int value = iterator.getValue();
                Class[] clsArr2 = new Class[value];
                for (int i5 = 0; i5 < value; i5++) {
                    clsArr2[i5] = ScriptRuntime.ObjectClass;
                }
                generateMethod(classFileWriter, str, str5, clsArr2, ScriptRuntime.ObjectClass, false);
            }
            iterator.next();
        }
        return classFileWriter.toByteArray();
    }

    public static Scriptable createAdapterWrapper(Scriptable scriptable, Object obj) {
        NativeJavaObject nativeJavaObject = new NativeJavaObject(ScriptableObject.getTopLevelScope(scriptable), obj, null, true);
        nativeJavaObject.setPrototype(scriptable);
        return nativeJavaObject;
    }

    private static Object doCall(Context context, Scriptable scriptable, Scriptable scriptable2, Function function, Object[] objArr, long j) {
        for (int i = 0; i != objArr.length; i++) {
            if (0 != (((long) (1 << i)) & j)) {
                Object obj = objArr[i];
                if (!(obj instanceof Scriptable)) {
                    objArr[i] = context.getWrapFactory().wrap(context, scriptable, obj, null);
                }
            }
        }
        return function.call(context, scriptable, scriptable2, objArr);
    }

    private static void generateCtor(ClassFileWriter classFileWriter, String str, String str2, Constructor<?> constructor) {
        Class<?>[] parameterTypes = constructor.getParameterTypes();
        short sGeneratePushParam = 3;
        if (parameterTypes.length == 0) {
            classFileWriter.startMethod(MethodDecl.initName, "(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/ContextFactory;)V", (short) 1);
            classFileWriter.add(42);
            classFileWriter.addInvoke(183, str2, MethodDecl.initName, "()V");
        } else {
            StringBuilder sb = new StringBuilder("(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/ContextFactory;");
            int length = sb.length();
            for (Class<?> cls : parameterTypes) {
                appendTypeString(sb, cls);
            }
            sb.append(")V");
            classFileWriter.startMethod(MethodDecl.initName, sb.toString(), (short) 1);
            classFileWriter.add(42);
            for (Class<?> cls2 : parameterTypes) {
                sGeneratePushParam = (short) (sGeneratePushParam + generatePushParam(classFileWriter, sGeneratePushParam, cls2));
            }
            sb.delete(1, length);
            classFileWriter.addInvoke(183, str2, MethodDecl.initName, sb.toString());
        }
        classFileWriter.add(42);
        classFileWriter.add(43);
        classFileWriter.add(181, str, "delegee", "Lorg/mozilla/javascript/Scriptable;");
        classFileWriter.add(42);
        classFileWriter.add(44);
        classFileWriter.add(181, str, "factory", "Lorg/mozilla/javascript/ContextFactory;");
        classFileWriter.add(42);
        classFileWriter.add(43);
        classFileWriter.add(42);
        classFileWriter.addInvoke(184, "org/mozilla/javascript/JavaAdapter", "createAdapterWrapper", "(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;");
        classFileWriter.add(181, str, "self", "Lorg/mozilla/javascript/Scriptable;");
        classFileWriter.add(177);
        classFileWriter.stopMethod(sGeneratePushParam);
    }

    private static void generateEmptyCtor(ClassFileWriter classFileWriter, String str, String str2, String str3) {
        classFileWriter.startMethod(MethodDecl.initName, "()V", (short) 1);
        classFileWriter.add(42);
        classFileWriter.addInvoke(183, str2, MethodDecl.initName, "()V");
        classFileWriter.add(42);
        classFileWriter.add(1);
        classFileWriter.add(181, str, "factory", "Lorg/mozilla/javascript/ContextFactory;");
        classFileWriter.add(187, str3);
        classFileWriter.add(89);
        classFileWriter.addInvoke(183, str3, MethodDecl.initName, "()V");
        classFileWriter.addInvoke(184, "org/mozilla/javascript/JavaAdapter", "runScript", "(Lorg/mozilla/javascript/Script;)Lorg/mozilla/javascript/Scriptable;");
        classFileWriter.add(76);
        classFileWriter.add(42);
        classFileWriter.add(43);
        classFileWriter.add(181, str, "delegee", "Lorg/mozilla/javascript/Scriptable;");
        classFileWriter.add(42);
        classFileWriter.add(43);
        classFileWriter.add(42);
        classFileWriter.addInvoke(184, "org/mozilla/javascript/JavaAdapter", "createAdapterWrapper", "(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;");
        classFileWriter.add(181, str, "self", "Lorg/mozilla/javascript/Scriptable;");
        classFileWriter.add(177);
        classFileWriter.stopMethod((short) 2);
    }

    private static void generateMethod(ClassFileWriter classFileWriter, String str, String str2, Class<?>[] clsArr, Class<?> cls, boolean z) {
        StringBuilder sb = new StringBuilder();
        int iAppendMethodSignature = appendMethodSignature(clsArr, cls, sb);
        classFileWriter.startMethod(str2, sb.toString(), (short) 1);
        classFileWriter.add(42);
        classFileWriter.add(180, str, "factory", "Lorg/mozilla/javascript/ContextFactory;");
        classFileWriter.add(42);
        classFileWriter.add(180, str, "self", "Lorg/mozilla/javascript/Scriptable;");
        classFileWriter.add(42);
        classFileWriter.add(180, str, "delegee", "Lorg/mozilla/javascript/Scriptable;");
        classFileWriter.addPush(str2);
        classFileWriter.addInvoke(184, "org/mozilla/javascript/JavaAdapter", "getFunction", "(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Lorg/mozilla/javascript/Function;");
        generatePushWrappedArgs(classFileWriter, clsArr, clsArr.length);
        if (clsArr.length > 64) {
            throw Context.reportRuntimeError0("JavaAdapter can not subclass methods with more then 64 arguments.");
        }
        long j = 0;
        for (int i = 0; i != clsArr.length; i++) {
            if (!clsArr[i].isPrimitive()) {
                j |= (long) (1 << i);
            }
        }
        classFileWriter.addPush(j);
        classFileWriter.addInvoke(184, "org/mozilla/javascript/JavaAdapter", "callMethod", "(Lorg/mozilla/javascript/ContextFactory;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Function;[Ljava/lang/Object;J)Ljava/lang/Object;");
        generateReturnResult(classFileWriter, cls, z);
        classFileWriter.stopMethod((short) iAppendMethodSignature);
    }

    private static void generatePopResult(ClassFileWriter classFileWriter, Class<?> cls) {
        if (!cls.isPrimitive()) {
            classFileWriter.add(176);
            return;
        }
        char cCharAt = cls.getName().charAt(0);
        if (cCharAt == 'f') {
            classFileWriter.add(ByteCode.FRETURN);
            return;
        }
        if (cCharAt != 'i') {
            if (cCharAt == 'l') {
                classFileWriter.add(ByteCode.LRETURN);
                return;
            } else if (cCharAt != 's' && cCharAt != 'z') {
                switch (cCharAt) {
                    case 'd':
                        classFileWriter.add(ByteCode.DRETURN);
                        break;
                }
                return;
            }
        }
        classFileWriter.add(172);
    }

    private static int generatePushParam(ClassFileWriter classFileWriter, int i, Class<?> cls) {
        if (!cls.isPrimitive()) {
            classFileWriter.addALoad(i);
            return 1;
        }
        char cCharAt = cls.getName().charAt(0);
        if (cCharAt == 'f') {
            classFileWriter.addFLoad(i);
            return 1;
        }
        if (cCharAt != 'i') {
            if (cCharAt == 'l') {
                classFileWriter.addLLoad(i);
                return 2;
            }
            if (cCharAt != 's' && cCharAt != 'z') {
                switch (cCharAt) {
                    case 'b':
                    case 'c':
                        break;
                    case 'd':
                        classFileWriter.addDLoad(i);
                        return 2;
                    default:
                        throw Kit.codeBug();
                }
            }
        }
        classFileWriter.addILoad(i);
        return 1;
    }

    public static void generatePushWrappedArgs(ClassFileWriter classFileWriter, Class<?>[] clsArr, int i) {
        classFileWriter.addPush(i);
        classFileWriter.add(189, "java/lang/Object");
        int iGenerateWrapArg = 1;
        for (int i2 = 0; i2 != clsArr.length; i2++) {
            classFileWriter.add(89);
            classFileWriter.addPush(i2);
            iGenerateWrapArg += generateWrapArg(classFileWriter, iGenerateWrapArg, clsArr[i2]);
            classFileWriter.add(83);
        }
    }

    public static void generateReturnResult(ClassFileWriter classFileWriter, Class<?> cls, boolean z) {
        if (cls == Void.TYPE) {
            classFileWriter.add(87);
            classFileWriter.add(177);
            return;
        }
        if (cls == Boolean.TYPE) {
            classFileWriter.addInvoke(184, "org/mozilla/javascript/Context", "toBoolean", "(Ljava/lang/Object;)Z");
            classFileWriter.add(172);
            return;
        }
        if (cls == Character.TYPE) {
            classFileWriter.addInvoke(184, "org/mozilla/javascript/Context", "toString", "(Ljava/lang/Object;)Ljava/lang/String;");
            classFileWriter.add(3);
            classFileWriter.addInvoke(182, "java/lang/String", "charAt", "(I)C");
            classFileWriter.add(172);
            return;
        }
        if (!cls.isPrimitive()) {
            String name = cls.getName();
            if (z) {
                classFileWriter.addLoadConstant(name);
                classFileWriter.addInvoke(184, "java/lang/Class", "forName", "(Ljava/lang/String;)Ljava/lang/Class;");
                classFileWriter.addInvoke(184, "org/mozilla/javascript/JavaAdapter", "convertResult", "(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;");
            }
            classFileWriter.add(192, name);
            classFileWriter.add(176);
            return;
        }
        classFileWriter.addInvoke(184, "org/mozilla/javascript/Context", "toNumber", "(Ljava/lang/Object;)D");
        char cCharAt = cls.getName().charAt(0);
        if (cCharAt != 'b') {
            if (cCharAt == 'd') {
                classFileWriter.add(ByteCode.DRETURN);
                return;
            }
            if (cCharAt == 'f') {
                classFileWriter.add(144);
                classFileWriter.add(ByteCode.FRETURN);
                return;
            } else if (cCharAt != 'i') {
                if (cCharAt == 'l') {
                    classFileWriter.add(143);
                    classFileWriter.add(ByteCode.LRETURN);
                    return;
                } else if (cCharAt != 's') {
                    throw new RuntimeException("Unexpected return type " + cls);
                }
            }
        }
        classFileWriter.add(142);
        classFileWriter.add(172);
    }

    private static void generateSerialCtor(ClassFileWriter classFileWriter, String str, String str2) {
        classFileWriter.startMethod(MethodDecl.initName, "(Lorg/mozilla/javascript/ContextFactory;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;)V", (short) 1);
        classFileWriter.add(42);
        classFileWriter.addInvoke(183, str2, MethodDecl.initName, "()V");
        classFileWriter.add(42);
        classFileWriter.add(43);
        classFileWriter.add(181, str, "factory", "Lorg/mozilla/javascript/ContextFactory;");
        classFileWriter.add(42);
        classFileWriter.add(44);
        classFileWriter.add(181, str, "delegee", "Lorg/mozilla/javascript/Scriptable;");
        classFileWriter.add(42);
        classFileWriter.add(45);
        classFileWriter.add(181, str, "self", "Lorg/mozilla/javascript/Scriptable;");
        classFileWriter.add(177);
        classFileWriter.stopMethod((short) 4);
    }

    private static void generateSuper(ClassFileWriter classFileWriter, String str, String str2, String str3, String str4, Class<?>[] clsArr, Class<?> cls) {
        classFileWriter.startMethod("super$" + str3, str4, (short) 1);
        classFileWriter.add(25, 0);
        int iGeneratePushParam = 1;
        for (Class<?> cls2 : clsArr) {
            iGeneratePushParam += generatePushParam(classFileWriter, iGeneratePushParam, cls2);
        }
        classFileWriter.addInvoke(183, str2, str3, str4);
        if (cls.equals(Void.TYPE)) {
            classFileWriter.add(177);
        } else {
            generatePopResult(classFileWriter, cls);
        }
        classFileWriter.stopMethod((short) (iGeneratePushParam + 1));
    }

    /* JADX WARN: Code duplicated, block: B:28:0x0088  */
    private static int generateWrapArg(ClassFileWriter classFileWriter, int i, Class<?> cls) {
        int i2 = 1;
        if (!cls.isPrimitive()) {
            classFileWriter.add(25, i);
        } else if (cls == Boolean.TYPE) {
            classFileWriter.add(187, "java/lang/Boolean");
            classFileWriter.add(89);
            classFileWriter.add(21, i);
            classFileWriter.addInvoke(183, "java/lang/Boolean", MethodDecl.initName, "(Z)V");
        } else if (cls == Character.TYPE) {
            classFileWriter.add(21, i);
            classFileWriter.addInvoke(184, "java/lang/String", "valueOf", "(C)Ljava/lang/String;");
        } else {
            classFileWriter.add(187, "java/lang/Double");
            classFileWriter.add(89);
            char cCharAt = cls.getName().charAt(0);
            if (cCharAt == 'b') {
                classFileWriter.add(21, i);
                classFileWriter.add(135);
            } else {
                if (cCharAt == 'd') {
                    classFileWriter.add(24, i);
                } else if (cCharAt == 'f') {
                    classFileWriter.add(23, i);
                    classFileWriter.add(141);
                } else if (cCharAt == 'i') {
                    classFileWriter.add(21, i);
                    classFileWriter.add(135);
                } else if (cCharAt == 'l') {
                    classFileWriter.add(22, i);
                    classFileWriter.add(138);
                } else if (cCharAt == 's') {
                    classFileWriter.add(21, i);
                    classFileWriter.add(135);
                }
                i2 = 2;
            }
            classFileWriter.addInvoke(183, "java/lang/Double", MethodDecl.initName, "(D)V");
        }
        return i2;
    }

    private static Class<?> getAdapterClass(Scriptable scriptable, Class<?> cls, Class<?>[] clsArr, Scriptable scriptable2) {
        ClassCache classCache = ClassCache.get(scriptable);
        Map<a, Class<?>> interfaceAdapterCacheMap = classCache.getInterfaceAdapterCacheMap();
        ObjToIntMap objectFunctionNames = getObjectFunctionNames(scriptable2);
        a aVar = new a(cls, clsArr, objectFunctionNames);
        Class<?> clsLoadAdapterClass = interfaceAdapterCacheMap.get(aVar);
        if (clsLoadAdapterClass == null) {
            String str = "adapter" + classCache.newClassSerialNumber();
            clsLoadAdapterClass = loadAdapterClass(str, createAdapterCode(objectFunctionNames, str, cls, clsArr, null));
            if (classCache.isCachingEnabled()) {
                interfaceAdapterCacheMap.put(aVar, clsLoadAdapterClass);
            }
        }
        return clsLoadAdapterClass;
    }

    public static Object getAdapterSelf(Class<?> cls, Object obj) throws IllegalAccessException, NoSuchFieldException {
        return cls.getDeclaredField("self").get(obj);
    }

    public static int[] getArgsToConvert(Class<?>[] clsArr) {
        int i = 0;
        for (int i2 = 0; i2 != clsArr.length; i2++) {
            if (!clsArr[i2].isPrimitive()) {
                i++;
            }
        }
        if (i == 0) {
            return null;
        }
        int[] iArr = new int[i];
        int i3 = 0;
        for (int i4 = 0; i4 != clsArr.length; i4++) {
            if (!clsArr[i4].isPrimitive()) {
                iArr[i3] = i4;
                i3++;
            }
        }
        return iArr;
    }

    public static Function getFunction(Scriptable scriptable, String str) {
        Object property = ScriptableObject.getProperty(scriptable, str);
        if (property == Scriptable.NOT_FOUND) {
            return null;
        }
        if (property instanceof Function) {
            return (Function) property;
        }
        throw ScriptRuntime.notFunctionError(property, str);
    }

    private static String getMethodSignature(Method method, Class<?>[] clsArr) {
        StringBuilder sb = new StringBuilder();
        appendMethodSignature(clsArr, method.getReturnType(), sb);
        return sb.toString();
    }

    private static ObjToIntMap getObjectFunctionNames(Scriptable scriptable) {
        Object[] propertyIds = ScriptableObject.getPropertyIds(scriptable);
        ObjToIntMap objToIntMap = new ObjToIntMap(propertyIds.length);
        for (int i = 0; i != propertyIds.length; i++) {
            Object obj = propertyIds[i];
            if (obj instanceof String) {
                String str = (String) obj;
                Object property = ScriptableObject.getProperty(scriptable, str);
                if (property instanceof Function) {
                    int int32 = ScriptRuntime.toInt32(ScriptableObject.getProperty((Function) property, SessionDescription.ATTR_LENGTH));
                    if (int32 < 0) {
                        int32 = 0;
                    }
                    objToIntMap.put(str, int32);
                }
            }
        }
        return objToIntMap;
    }

    public static Method[] getOverridableMethods(Class<?> cls) {
        ArrayList arrayList = new ArrayList();
        HashSet hashSet = new HashSet();
        for (Class<?> superclass = cls; superclass != null; superclass = superclass.getSuperclass()) {
            appendOverridableMethods(superclass, arrayList, hashSet);
        }
        while (cls != null) {
            for (Class<?> cls2 : cls.getInterfaces()) {
                appendOverridableMethods(cls2, arrayList, hashSet);
            }
            cls = cls.getSuperclass();
        }
        return (Method[]) arrayList.toArray(new Method[arrayList.size()]);
    }

    public static void init(Context context, Scriptable scriptable, boolean z) {
        IdFunctionObject idFunctionObject = new IdFunctionObject(new JavaAdapter(), FTAG, 1, "JavaAdapter", 1, scriptable);
        idFunctionObject.markAsConstructor(null);
        if (z) {
            idFunctionObject.sealObject();
        }
        idFunctionObject.exportAsScopeProperty();
    }

    public static Object js_createAdapter(Context context, Scriptable scriptable, Object[] objArr) {
        Object objNewInstance;
        int length = objArr.length;
        if (length == 0) {
            throw ScriptRuntime.typeError0("msg.adapter.zero.args");
        }
        int i = 0;
        while (i < length - 1) {
            Object obj = objArr[i];
            if (obj instanceof NativeObject) {
                break;
            }
            if (!(obj instanceof NativeJavaClass)) {
                throw ScriptRuntime.typeError2("msg.not.java.class.arg", String.valueOf(i), ScriptRuntime.toString(obj));
            }
            i++;
        }
        Class[] clsArr = new Class[i];
        Class<?> cls = null;
        int i2 = 0;
        for (int i3 = 0; i3 < i; i3++) {
            Class<?> classObject = ((NativeJavaClass) objArr[i3]).getClassObject();
            if (classObject.isInterface()) {
                clsArr[i2] = classObject;
                i2++;
            } else {
                if (cls != null) {
                    throw ScriptRuntime.typeError2("msg.only.one.super", cls.getName(), classObject.getName());
                }
                cls = classObject;
            }
        }
        if (cls == null) {
            cls = ScriptRuntime.ObjectClass;
        }
        Class[] clsArr2 = new Class[i2];
        System.arraycopy(clsArr, 0, clsArr2, 0, i2);
        Scriptable scriptableEnsureScriptable = ScriptableObject.ensureScriptable(objArr[i]);
        Class<?> adapterClass = getAdapterClass(scriptable, cls, clsArr2, scriptableEnsureScriptable);
        int i4 = length - i;
        int i5 = i4 - 1;
        try {
            if (i5 > 0) {
                Object[] objArr2 = new Object[i4 + 1];
                objArr2[0] = scriptableEnsureScriptable;
                objArr2[1] = context.getFactory();
                System.arraycopy(objArr, i + 1, objArr2, 2, i5);
                NativeJavaMethod nativeJavaMethod = new NativeJavaClass(scriptable, adapterClass, true).members.f;
                int iFindCachedFunction = nativeJavaMethod.findCachedFunction(context, objArr2);
                if (iFindCachedFunction < 0) {
                    throw Context.reportRuntimeError2("msg.no.java.ctor", adapterClass.getName(), NativeJavaMethod.scriptSignature(objArr));
                }
                objNewInstance = NativeJavaClass.constructInternal(objArr2, nativeJavaMethod.methods[iFindCachedFunction]);
            } else {
                objNewInstance = adapterClass.getConstructor(ScriptRuntime.ScriptableClass, ScriptRuntime.ContextFactoryClass).newInstance(scriptableEnsureScriptable, context.getFactory());
            }
            Object adapterSelf = getAdapterSelf(adapterClass, objNewInstance);
            if (adapterSelf instanceof Wrapper) {
                Object objUnwrap = ((Wrapper) adapterSelf).unwrap();
                if (objUnwrap instanceof Scriptable) {
                    if (objUnwrap instanceof ScriptableObject) {
                        ScriptRuntime.setObjectProtoAndParent((ScriptableObject) objUnwrap, scriptable);
                    }
                    return objUnwrap;
                }
            }
            return adapterSelf;
        } catch (Exception e) {
            throw Context.throwAsScriptRuntimeEx(e);
        }
    }

    public static Object lambda$callMethod$0(Scriptable scriptable, Scriptable scriptable2, Function function, Object[] objArr, long j, Context context) {
        return doCall(context, scriptable, scriptable2, function, objArr, j);
    }

    public static ScriptableObject lambda$runScript$1(Script script, Context context) {
        ScriptableObject global = ScriptRuntime.getGlobal(context);
        script.exec(context, global);
        return global;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x000e  */
    /* JADX WARN: Multi-variable type inference failed */
    public static Class<?> loadAdapterClass(String str, byte[] bArr) {
        ProtectionDomain codeSource;
        ProtectionDomain protectionDomain;
        Class<?> staticSecurityDomainClass = SecurityController.getStaticSecurityDomainClass();
        if (staticSecurityDomainClass == CodeSource.class || staticSecurityDomainClass == ProtectionDomain.class) {
            ProtectionDomain scriptProtectionDomain = SecurityUtilities.getScriptProtectionDomain();
            codeSource = scriptProtectionDomain;
            if (scriptProtectionDomain == null) {
                protectionDomain = JavaAdapter.class.getProtectionDomain();
            }
            if (staticSecurityDomainClass == CodeSource.class) {
                if (codeSource == 0) {
                    codeSource = 0;
                } else {
                    codeSource = codeSource.getCodeSource();
                }
            }
        } else {
            codeSource = 0;
        }
        codeSource = protectionDomain;
        GeneratedClassLoader generatedClassLoaderCreateLoader = SecurityController.createLoader(null, codeSource);
        Class<?> clsDefineClass = generatedClassLoaderCreateLoader.defineClass(str, bArr);
        generatedClassLoaderCreateLoader.linkClass(clsDefineClass);
        return clsDefineClass;
    }

    public static Object readAdapterObject(Scriptable scriptable, ObjectInputStream objectInputStream) throws ClassNotFoundException, IOException {
        Context currentContext = Context.getCurrentContext();
        ContextFactory factory = currentContext != null ? currentContext.getFactory() : null;
        Class<?> cls = Class.forName((String) objectInputStream.readObject());
        String[] strArr = (String[]) objectInputStream.readObject();
        Class[] clsArr = new Class[strArr.length];
        for (int i = 0; i < strArr.length; i++) {
            clsArr[i] = Class.forName(strArr[i]);
        }
        Scriptable scriptable2 = (Scriptable) objectInputStream.readObject();
        Class<?> adapterClass = getAdapterClass(scriptable, cls, clsArr, scriptable2);
        Class<?> cls2 = ScriptRuntime.ContextFactoryClass;
        Class<Scriptable> cls3 = ScriptRuntime.ScriptableClass;
        try {
            return adapterClass.getConstructor(cls2, cls3, cls3).newInstance(factory, scriptable2, scriptable);
        } catch (IllegalAccessException | InstantiationException | NoSuchMethodException | InvocationTargetException unused) {
            throw new ClassNotFoundException("adapter");
        }
    }

    public static Scriptable runScript(final Script script) {
        return (Scriptable) ContextFactory.getGlobal().call(new ContextAction() {
            @Override
            public final Object run(Context context) {
                return JavaAdapter.lambda$runScript$1(script, context);
            }
        });
    }

    public static void writeAdapterObject(Object obj, ObjectOutputStream objectOutputStream) throws IOException {
        Class<?> cls = obj.getClass();
        objectOutputStream.writeObject(cls.getSuperclass().getName());
        Class<?>[] interfaces = cls.getInterfaces();
        String[] strArr = new String[interfaces.length];
        for (int i = 0; i < interfaces.length; i++) {
            strArr[i] = interfaces[i].getName();
        }
        objectOutputStream.writeObject(strArr);
        try {
            objectOutputStream.writeObject(cls.getField("delegee").get(obj));
        } catch (IllegalAccessException | NoSuchFieldException unused) {
            throw new IOException();
        }
    }

    @Override
    public Object execIdCall(IdFunctionObject idFunctionObject, Context context, Scriptable scriptable, Scriptable scriptable2, Object[] objArr) {
        if (idFunctionObject.hasTag(FTAG) && idFunctionObject.methodId() == 1) {
            return js_createAdapter(context, scriptable, objArr);
        }
        throw idFunctionObject.unknown();
    }
}
