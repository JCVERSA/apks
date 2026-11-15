package org.mvel2.util;

import com.cloud.tmc.offline.download.model.TaskResultKt;
import java.io.File;
import java.io.FileWriter;
import java.io.Serializable;
import java.lang.ref.WeakReference;
import java.lang.reflect.Constructor;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.math.MathContext;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.WeakHashMap;
import org.mvel2.CompileException;
import org.mvel2.OptimizationFailure;
import org.mvel2.ParserContext;
import org.mvel2.ast.ASTNode;
import org.mvel2.compiler.AbstractParser;
import org.mvel2.compiler.BlankLiteral;
import org.mvel2.compiler.CompiledExpression;
import org.mvel2.compiler.ExecutableAccessor;
import org.mvel2.compiler.ExecutableAccessorSafe;
import org.mvel2.compiler.ExecutableLiteral;
import org.mvel2.compiler.ExpressionCompiler;
import org.mvel2.integration.VariableResolverFactory;
import org.mvel2.integration.impl.ClassImportResolverFactory;

public class m {

    public static final Object[] f68901a = new Object[0];

    public static final Class[] f68902b = new Class[0];

    private static final Map f68903c = Collections.synchronizedMap(new WeakHashMap(10));

    private static final Map f68904d = Collections.synchronizedMap(new WeakHashMap(1, 1.0f));

    private static final Map f68905e = Collections.synchronizedMap(new WeakHashMap(10));

    private static final HashMap f68906f;

    private static final Map f68907g;

    static {
        HashMap map = new HashMap();
        f68906f = map;
        map.put(BigDecimal.class, 110);
        map.put(BigInteger.class, 111);
        map.put(String.class, 1);
        Class cls = Integer.TYPE;
        map.put(cls, 101);
        map.put(Integer.class, 106);
        Class cls2 = Short.TYPE;
        map.put(cls2, 100);
        map.put(Short.class, 105);
        Class cls3 = Float.TYPE;
        map.put(cls3, 104);
        Integer numValueOf = Integer.valueOf(TaskResultKt.ERROR_LOAD_RESPONSE_STR_EMPTY);
        map.put(Float.class, numValueOf);
        Class cls4 = Double.TYPE;
        map.put(cls4, 103);
        map.put(Double.class, 109);
        Class cls5 = Long.TYPE;
        map.put(cls5, 102);
        map.put(Long.class, 107);
        Class cls6 = Boolean.TYPE;
        map.put(cls6, 7);
        map.put(Boolean.class, 15);
        Class cls7 = Byte.TYPE;
        map.put(cls7, 9);
        map.put(Byte.class, 113);
        Class cls8 = Character.TYPE;
        map.put(cls8, 8);
        map.put(Character.class, 112);
        map.put(BlankLiteral.class, 200);
        HashMap map2 = new HashMap(30, 0.5f);
        f68907g = map2;
        map2.put(Integer.class, 106);
        map2.put(Double.class, 109);
        map2.put(Boolean.class, 15);
        map2.put(String.class, 1);
        map2.put(Long.class, 107);
        map2.put(Short.class, 105);
        map2.put(Float.class, numValueOf);
        map2.put(Byte.class, 113);
        map2.put(Character.class, 112);
        map2.put(BigDecimal.class, 110);
        map2.put(BigInteger.class, 111);
        map2.put(InternalNumber.class, 110);
        map2.put(cls, 101);
        map2.put(cls4, 103);
        map2.put(cls6, 7);
        map2.put(cls5, 102);
        map2.put(cls2, 100);
        map2.put(cls3, 104);
        map2.put(cls7, 9);
        map2.put(cls8, 8);
        map2.put(BlankLiteral.class, 200);
    }

    public static boolean A(char[] cArr, int i10, int i11, char[] cArr2) {
        if (cArr2.length > cArr.length) {
            return false;
        }
        int length = cArr2.length - 1;
        int i12 = (i10 + i11) - 1;
        while (length >= 0) {
            int i13 = i12 - 1;
            int i14 = length - 1;
            if (cArr[i12] != cArr2[length]) {
                return false;
            }
            i12 = i13;
            length = i14;
        }
        return true;
    }

    public static String A0(char c10, int i10) {
        char[] cArr = new char[i10];
        for (int i11 = 0; i11 < i10; i11++) {
            cArr[i11] = c10;
        }
        return new String(cArr);
    }

    public static int B(char[] cArr, int i10, int i11, char c10) {
        int i12 = i11 + i10;
        while (i10 < i12) {
            if (cArr[i10] == c10) {
                return i10;
            }
            i10++;
        }
        return -1;
    }

    public static int B0(Object obj) {
        if (obj == null) {
            return 0;
        }
        return a(obj.getClass());
    }

    public static int C(char[] cArr) {
        int i10 = 0;
        for (int length = cArr.length - 1; length >= 0; length--) {
            char c10 = cArr[length];
            if (c10 == ']') {
                i10++;
            }
            if (c10 == '[') {
                i10--;
            }
            if ((i10 == 0 && c10 == '.') || c10 == '[') {
                return length;
            }
        }
        return -1;
    }

    public static int C0(Class cls, Class cls2) {
        Class<?>[] interfaces;
        if (cls.isInterface() && (interfaces = cls2.getInterfaces()) != null) {
            for (Class<?> cls3 : interfaces) {
                if (cls3 == cls) {
                    return 1;
                }
                if (cls.isAssignableFrom(cls3)) {
                    return C0(cls, cls2.getSuperclass());
                }
            }
        }
        return 0;
    }

    public static Class D(VariableResolverFactory variableResolverFactory, String str, ParserContext parserContext) throws ClassNotFoundException {
        try {
            if (AbstractParser.LITERALS.containsKey(str)) {
                return (Class) AbstractParser.LITERALS.get(str);
            }
            if (variableResolverFactory == null || !variableResolverFactory.isResolveable(str)) {
                return (parserContext == null || !parserContext.hasImport(str)) ? v(str, parserContext) : parserContext.getImport(str);
            }
            return (Class) variableResolverFactory.getVariableResolver(str).getValue();
        } catch (ClassNotFoundException e10) {
            throw e10;
        } catch (Exception e11) {
            throw new RuntimeException("class not found: " + str, e11);
        }
    }

    public static float D0(String str, String str2) {
        float length;
        float f10 = 0.0f;
        if (str == null || str2 == null) {
            return (str == null && str2 == null) ? 1.0f : 0.0f;
        }
        char[] charArray = str.toCharArray();
        char[] charArray2 = str2.toCharArray();
        if (charArray.length > charArray2.length) {
            length = charArray.length;
        } else {
            length = charArray2.length;
            charArray2 = charArray;
            charArray = charArray2;
        }
        for (int i10 = 0; i10 < charArray.length && i10 < charArray2.length; i10++) {
            if (charArray[i10] == charArray2[i10]) {
                f10 += 1.0f;
            }
        }
        return f10 / length;
    }

    public static ClassImportResolverFactory E(VariableResolverFactory variableResolverFactory, ParserContext parserContext) {
        if (variableResolverFactory == null) {
            throw new OptimizationFailure("unable to import classes.  no variable resolver factory available.");
        }
        for (VariableResolverFactory nextFactory = variableResolverFactory; nextFactory != null; nextFactory = nextFactory.getNextFactory()) {
            if (nextFactory instanceof ClassImportResolverFactory) {
                return (ClassImportResolverFactory) nextFactory;
            }
        }
        return (ClassImportResolverFactory) yz.e.a(variableResolverFactory, new ClassImportResolverFactory(null, null, false));
    }

    public static int E0(char[] cArr, int i10) {
        int i11;
        while (i10 != cArr.length) {
            char c10 = cArr[i10];
            if (c10 != '\n' && c10 != '\r') {
                if (c10 != '/' || (i11 = i10 + 1) == cArr.length) {
                    if (!q0(c10)) {
                        break;
                    }
                } else {
                    char c11 = cArr[i11];
                    if (c11 == '*') {
                        int length = cArr.length - 1;
                        cArr[i10] = ' ';
                        i10 = i11;
                        while (i10 != length && (cArr[i10] != '*' || cArr[i10 + 1] != '/')) {
                            cArr[i10] = ' ';
                            i10++;
                        }
                        if (i10 != length) {
                            cArr[i10 + 1] = ' ';
                            cArr[i10] = ' ';
                            i10 += 2;
                        }
                    } else {
                        if (c11 != '/') {
                            break;
                        }
                        cArr[i10] = ' ';
                        i10 = i11;
                        while (i10 != cArr.length && cArr[i10] != '\n') {
                            cArr[i10] = ' ';
                            i10++;
                        }
                        if (i10 != cArr.length) {
                            cArr[i10] = ' ';
                            i10++;
                        }
                    }
                }
            }
            i10++;
        }
        return i10;
    }

    public static Class F(String str, ClassLoader classLoader, ClassNotFoundException classNotFoundException) throws ClassNotFoundException {
        while (true) {
            int iLastIndexOf = str.lastIndexOf(46);
            if (iLastIndexOf <= 0) {
                throw classNotFoundException;
            }
            str = str.substring(0, iLastIndexOf) + "$" + str.substring(iLastIndexOf + 1);
            try {
                return classLoader.loadClass(str);
            } catch (ClassNotFoundException unused) {
            }
        }
    }

    public static char[] F0(char[] cArr, int i10, int i11) {
        if (i10 >= i11) {
            return new char[0];
        }
        int i12 = i11 - i10;
        char[] cArr2 = new char[i12];
        for (int i13 = 0; i13 != i12; i13++) {
            cArr2[i13] = cArr[i13 + i10];
        }
        return cArr2;
    }

    public static int G(char[] cArr, int i10, int i11, char c10) {
        for (int i12 = i11 + i10; i12 >= i10; i12--) {
            if (cArr[i12] == c10) {
                return i12;
            }
        }
        return -1;
    }

    public static Serializable G0(String str, ParserContext parserContext) {
        return b(new ExpressionCompiler(str, parserContext)._compile());
    }

    public static Class H(String str, ClassLoader classLoader) {
        try {
            return classLoader.loadClass(str);
        } catch (ClassNotFoundException e10) {
            return F(str, classLoader, e10);
        }
    }

    public static Serializable H0(char[] cArr) {
        return b(new ExpressionCompiler(cArr)._compile());
    }

    public static Class I(Class cls) {
        while (cls.isArray()) {
            cls = cls.getComponentType();
        }
        return cls;
    }

    public static Serializable I0(char[] cArr, int i10, int i11, ParserContext parserContext) {
        return b(new ExpressionCompiler(cArr, i10, i11, parserContext)._compile());
    }

    public static Method J(Class[] clsArr, String str, Class cls, Method[] methodArr, boolean z10) {
        return K(clsArr, str, cls, methodArr, z10, false);
    }

    public static Serializable J0(char[] cArr, ParserContext parserContext) {
        return b(new ExpressionCompiler(cArr, parserContext)._compile());
    }

    /* JADX WARN: Code duplicated, block: B:34:0x0058  */
    public static Method K(Class[] clsArr, String str, Class cls, Method[] methodArr, boolean z10, boolean z11) {
        int iS;
        Method method = null;
        if (methodArr.length == 0) {
            return null;
        }
        int i10 = -1;
        boolean z12 = false;
        while (true) {
            for (Method method2 : methodArr) {
                if ((!z11 || Modifier.isStatic(method2.getModifiers())) && str.equals(method2.getName())) {
                    Class<?>[] parameterTypes = method2.getParameterTypes();
                    if (parameterTypes.length != 0 || clsArr.length != 0) {
                        boolean zIsVarArgs = method2.isVarArgs();
                        if (!Z(clsArr, parameterTypes, zIsVarArgs) && (iS = S(clsArr, z10, parameterTypes, zIsVarArgs)) != 0) {
                            if (iS > i10) {
                                method = method2;
                                i10 = iS;
                            } else if (iS == i10 && e0(method2, method) && !zIsVarArgs) {
                                method = method2;
                            }
                        }
                    } else if (method == null || e0(method2, method)) {
                        method = method2;
                    }
                }
            }
            if (method != null || z12 || !cls.isInterface()) {
                break;
            }
            Method[] methods = Object.class.getMethods();
            Method[] methodArr2 = new Method[methodArr.length + methods.length];
            for (int i11 = 0; i11 < methodArr.length; i11++) {
                methodArr2[i11] = methodArr[i11];
            }
            for (int i12 = 0; i12 < methods.length; i12++) {
                methodArr2[methodArr.length + i12] = methods[i12];
            }
            z12 = true;
            methodArr = methodArr2;
        }
        return method;
    }

    public static char[] K0(char[] cArr, int i10, int i11) {
        char[] cArr2 = new char[i11];
        for (int i12 = 0; i12 < i11; i12++) {
            cArr2[i12] = cArr[i12 + i10];
        }
        return cArr2;
    }

    public static Method L(Object[] objArr, String str, Class cls, Method[] methodArr, boolean z10) {
        Class[] clsArr = new Class[objArr.length];
        for (int i10 = 0; i10 != objArr.length; i10++) {
            Object obj = objArr[i10];
            clsArr[i10] = obj != null ? obj.getClass() : null;
        }
        return J(clsArr, str, cls, methodArr, z10);
    }

    public static char[] L0(char[] cArr, int i10, int i11) {
        if (i11 <= 0) {
            return new char[0];
        }
        int i12 = i11 + i10;
        while (i12 > 0 && q0(cArr[i12 - 1])) {
            i12--;
        }
        while (q0(cArr[i10]) && i10 < i12) {
            i10++;
        }
        int i13 = i12 - i10;
        return i13 == 0 ? new char[0] : K0(cArr, i10, i13);
    }

    public static Constructor M(Class[] clsArr, Class cls, boolean z10) {
        Constructor constructor = null;
        int i10 = 0;
        for (Constructor constructor2 : P(cls)) {
            boolean zIsVarArgs = constructor2.isVarArgs();
            Class[] clsArrO = O(constructor2);
            if (!Z(clsArr, clsArrO, zIsVarArgs)) {
                if (clsArr.length == 0 && clsArrO.length == 0) {
                    return constructor2;
                }
                int iS = S(clsArr, z10, clsArrO, zIsVarArgs);
                if (iS != 0 && iS > i10) {
                    constructor = constructor2;
                    i10 = iS;
                }
            }
        }
        return constructor;
    }

    public static int M0(char[] cArr, int i10, int i11) {
        if (i11 > cArr.length) {
            i11 = cArr.length;
        }
        while (i11 != 0 && i11 >= i10 && q0(cArr[i11 - 1])) {
            i11--;
        }
        return i11;
    }

    public static Constructor N(Object[] objArr, Class cls, boolean z10) {
        Class[] clsArr = new Class[objArr.length];
        for (int i10 = 0; i10 != objArr.length; i10++) {
            Object obj = objArr[i10];
            if (obj != null) {
                clsArr[i10] = obj.getClass();
            }
        }
        return M(clsArr, cls, z10);
    }

    public static int N0(char[] cArr, int i10) {
        while (i10 != cArr.length && q0(cArr[i10])) {
            i10++;
        }
        return i10;
    }

    private static Class[] O(Constructor constructor) {
        Class[] clsArr;
        Map map = f68903c;
        WeakReference weakReference = (WeakReference) map.get(constructor);
        if (weakReference != null && (clsArr = (Class[]) weakReference.get()) != null) {
            return clsArr;
        }
        Class<?>[] parameterTypes = constructor.getParameterTypes();
        map.put(constructor, new WeakReference(parameterTypes));
        return parameterTypes;
    }

    public static Class O0(Class cls) {
        if (cls == Integer.class || cls == Integer.TYPE) {
            return Integer.TYPE;
        }
        if (cls == Integer[].class || cls == int[].class) {
            return int[].class;
        }
        if (cls == Long.class || cls == Long.TYPE) {
            return Long.TYPE;
        }
        if (cls == Long[].class || cls == long[].class) {
            return long[].class;
        }
        if (cls == Character.class || cls == Character.TYPE) {
            return Character.TYPE;
        }
        if (cls == Character[].class || cls == char[].class) {
            return char[].class;
        }
        if (cls == Short.class || cls == Short.TYPE) {
            return Short.TYPE;
        }
        if (cls == Short[].class || cls == short[].class) {
            return short[].class;
        }
        if (cls == Double.class || cls == Double.TYPE) {
            return Double.TYPE;
        }
        if (cls == Double[].class || cls == double[].class) {
            return double[].class;
        }
        if (cls == Float.class || cls == Float.TYPE) {
            return Float.TYPE;
        }
        if (cls == Float[].class || cls == float[].class) {
            return float[].class;
        }
        if (cls == Boolean.class || cls == Boolean.TYPE) {
            return Boolean.TYPE;
        }
        if (cls == Boolean[].class || cls == boolean[].class) {
            return boolean[].class;
        }
        if (cls == Byte.class || cls == Byte.TYPE) {
            return Byte.TYPE;
        }
        return (cls == Byte[].class || cls == byte[].class) ? byte[].class : cls;
    }

    public static Constructor[] P(Class cls) {
        Constructor[] constructorArr;
        Map map = f68905e;
        WeakReference weakReference = (WeakReference) map.get(cls);
        if (weakReference != null && (constructorArr = (Constructor[]) weakReference.get()) != null) {
            return constructorArr;
        }
        Constructor<?>[] constructors = cls.getConstructors();
        map.put(cls, new WeakReference(constructors));
        return constructors;
    }

    public static FileWriter Q() {
        return new FileWriter(new File(org.mvel2.d.u()), true);
    }

    public static Method R(String str, Class[] clsArr, Class cls, Class cls2) {
        for (Method method : cls2.getMethods()) {
            if (str.equals(method.getName()) && cls == method.getReturnType()) {
                Class<?>[] parameterTypes = method.getParameterTypes();
                if (parameterTypes.length == clsArr.length) {
                    for (int i10 = 0; i10 < parameterTypes.length; i10++) {
                        if (parameterTypes[i10] == clsArr[i10]) {
                        }
                    }
                    return method;
                }
                continue;
            }
        }
        return null;
    }

    private static int S(Class[] clsArr, boolean z10, Class[] clsArr2, boolean z11) {
        Class cls;
        int i10 = 0;
        int i11 = 0;
        int iC0 = 0;
        while (true) {
            if (i11 == clsArr.length) {
                i10 = iC0;
                break;
            }
            Class componentType = (!z11 || i11 < clsArr2.length + (-1)) ? clsArr2[i11] : clsArr2[clsArr2.length - 1].getComponentType();
            Class cls2 = clsArr[i11];
            if (cls2 == null) {
                if (componentType.isPrimitive()) {
                    break;
                }
                iC0 += 7;
            } else if (componentType == cls2) {
                iC0 += 8;
            } else if ((componentType.isPrimitive() && f(componentType) == clsArr[i11]) || (clsArr[i11].isPrimitive() && O0(clsArr[i11]) == componentType)) {
                iC0 += 7;
            } else if (componentType.isAssignableFrom(clsArr[i11])) {
                iC0 += 6;
            } else if (l0(clsArr[i11], componentType)) {
                iC0 += 5;
            } else if (k0(clsArr[i11], componentType)) {
                iC0 += 4;
            } else if (!f(componentType).isAssignableFrom(f(clsArr[i11])) || Object.class == (cls = clsArr[i11])) {
                if (z10 || !org.mvel2.b.a(componentType, clsArr[i11])) {
                    if (componentType != Object.class && clsArr[i11] != l.class) {
                        break;
                    }
                } else if ((componentType.isArray() && clsArr[i11].isArray()) || (componentType == Character.TYPE && clsArr[i11] == String.class)) {
                    iC0++;
                }
                iC0++;
            } else {
                iC0 += C0(componentType, cls) + 3;
            }
            i11++;
        }
        return (i10 == 0 && z11 && clsArr2.length + (-1) == clsArr.length) ? i10 + 3 : i10;
    }

    public static Class T(Class cls) {
        return cls.isArray() ? cls.getComponentType() : cls;
    }

    public static Method U(Class cls, Method method) {
        if (Modifier.isStatic(method.getModifiers())) {
            return method;
        }
        Class<?>[] parameterTypes = method.getParameterTypes();
        String name = method.getName();
        Class<?> returnType = method.getReturnType();
        Method method2 = method;
        for (Class superclass = cls; superclass != null; superclass = superclass.getSuperclass()) {
            for (Class<?> cls2 : superclass.getInterfaces()) {
                Method methodR = R(name, parameterTypes, returnType, cls2);
                if (methodR != null) {
                    method2 = methodR;
                }
            }
        }
        if (method2 != method) {
            return method2;
        }
        while (cls != null) {
            Method methodR2 = R(name, parameterTypes, returnType, cls);
            if (methodR2 != null) {
                method2 = methodR2;
            }
            cls = cls.getSuperclass();
        }
        return method2;
    }

    public static Method V(Method method) {
        return U(method.getDeclaringClass(), method);
    }

    public static int W(char[] cArr, int i10) {
        char c10;
        int i11;
        int i12 = i10 - 1;
        cArr[i12] = 0;
        char c11 = cArr[i10];
        if (c11 == '\"') {
            cArr[i10] = '\"';
            return 1;
        }
        if (c11 == '\'') {
            cArr[i10] = '\'';
            return 1;
        }
        if (c11 == '\\') {
            cArr[i10] = '\\';
            return 1;
        }
        if (c11 == 'b') {
            cArr[i10] = '\b';
            return 1;
        }
        if (c11 == 'f') {
            cArr[i10] = '\f';
            return 1;
        }
        if (c11 == 'n') {
            cArr[i10] = '\n';
            return 1;
        }
        if (c11 == 'r') {
            cArr[i10] = '\r';
            return 1;
        }
        if (c11 == 't') {
            cArr[i10] = '\t';
            return 1;
        }
        if (c11 != 'u') {
            int i13 = i10;
            do {
                c10 = cArr[i13];
                if (c10 < '0' || c10 >= '8') {
                    throw new CompileException("illegal escape sequence: " + cArr[i13], cArr, i13);
                }
                if (i13 != i10 && cArr[i10] > '3') {
                    cArr[i12] = (char) Integer.decode("0" + new String(cArr, i10, (i13 - i10) + 1)).intValue();
                    cArr[i10] = 0;
                    cArr[i10 + 1] = 0;
                    return 2;
                }
                i11 = i13 - i10;
                if (i11 == 2) {
                    cArr[i12] = (char) Integer.decode("0" + new String(cArr, i10, i11 + 1)).intValue();
                    cArr[i10] = 0;
                    cArr[i10 + 1] = 0;
                    cArr[i10 + 2] = 0;
                    return 3;
                }
                i13++;
                if (i13 == cArr.length || c10 < '0') {
                    break;
                }
            } while (c10 <= '7');
            cArr[i12] = (char) Integer.decode("0" + new String(cArr, i10, i11 + 1)).intValue();
            cArr[i10] = 0;
            return 1;
        }
        int i14 = i10 + 4;
        if (i14 > cArr.length) {
            throw new CompileException("illegal unicode escape sequence", cArr, i10);
        }
        int i15 = i10;
        while (true) {
            i15++;
            if (i15 - i10 == 5) {
                StringBuilder sb2 = new StringBuilder();
                sb2.append("0x");
                int i16 = i10 + 1;
                sb2.append(new String(cArr, i16, 4));
                cArr[i12] = (char) Integer.decode(sb2.toString()).intValue();
                cArr[i10] = 0;
                cArr[i16] = 0;
                cArr[i10 + 2] = 0;
                cArr[i10 + 3] = 0;
                cArr[i14] = 0;
                return 5;
            }
            char c12 = cArr[i15];
            if (c12 <= '/' || c12 >= ':') {
                if (c12 <= '@' || c12 >= 'G') {
                    throw new CompileException("illegal unicode escape sequence", cArr, i15);
                }
            }
        }
    }

    public static Object X(char[] cArr, int i10, int i11) {
        if (i11 != 1 && cArr[i10] == '0' && cArr[i10 + 1] != '.') {
            int i12 = (i10 + i11) - 1;
            if (!b0(cArr[i12])) {
                char c10 = cArr[i12];
                if (c10 == 'B') {
                    return new BigDecimal(new String(cArr, i10, i11 - 1));
                }
                if (c10 == 'I') {
                    return new BigInteger(new String(cArr, i10, i11 - 1));
                }
                if (c10 == 'L' || c10 == 'l') {
                    return Long.decode(new String(cArr, i10, i11 - 1));
                }
            }
            return Integer.decode(new String(cArr, i10, i11));
        }
        int i13 = (i10 + i11) - 1;
        if (b0(cArr[i13])) {
            int iT0 = t0(cArr, i10, i11);
            if (iT0 == 110) {
                return new BigDecimal(cArr, MathContext.DECIMAL128);
            }
            switch (iT0) {
                case 101:
                    return Integer.valueOf(Integer.parseInt(new String(cArr, i10, i11)));
                case 102:
                    return Long.valueOf(Long.parseLong(new String(cArr, i10, i11)));
                case 103:
                    return Double.valueOf(Double.parseDouble(new String(cArr, i10, i11)));
                case 104:
                    return Float.valueOf(Float.parseFloat(new String(cArr, i10, i11)));
                default:
                    return new String(cArr, i10, i11);
            }
        }
        char c11 = cArr[i13];
        if (c11 != '.') {
            if (c11 == 'B') {
                return new BigDecimal(new String(cArr, i10, i11 - 1));
            }
            if (c11 != 'D') {
                if (c11 != 'F') {
                    if (c11 == 'I') {
                        return new BigInteger(new String(cArr, i10, i11 - 1));
                    }
                    if (c11 != 'L') {
                        if (c11 != 'd') {
                            if (c11 != 'f') {
                                if (c11 != 'l') {
                                    throw new CompileException("unrecognized numeric literal", cArr, i10);
                                }
                            }
                        }
                    }
                    return Long.valueOf(Long.parseLong(new String(cArr, i10, i11 - 1)));
                }
                return Float.valueOf(Float.parseFloat(new String(cArr, i10, i11 - 1)));
            }
        }
        return Double.valueOf(Double.parseDouble(new String(cArr, i10, i11 - 1)));
    }

    public static String Y(char[] cArr) {
        int i10 = 0;
        int iW = 0;
        while (i10 < cArr.length) {
            if (cArr[i10] == '\\') {
                i10++;
                iW += W(cArr, i10);
            }
            i10++;
        }
        if (iW == 0) {
            return new String(cArr);
        }
        char[] cArr2 = new char[cArr.length - iW];
        int i11 = 0;
        for (char c10 : cArr) {
            if (c10 != 0) {
                cArr2[i11] = c10;
                i11++;
            }
        }
        return new String(cArr2);
    }

    private static boolean Z(Class[] clsArr, Class[] clsArr2, boolean z10) {
        if (!z10 || clsArr2.length - 1 <= clsArr.length) {
            return (z10 || clsArr2.length == clsArr.length) ? false : true;
        }
        return true;
    }

    public static int a(Class cls) {
        Integer num = (Integer) f68907g.get(cls);
        if (num == null) {
            return (cls == null || !Collection.class.isAssignableFrom(cls)) ? 0 : 50;
        }
        return num.intValue();
    }

    public static boolean a0(char[] cArr, int i10, int i11) {
        if (i11 > i10 + 2) {
            int i12 = i11 - 2;
            if (n0(cArr, i10, i12) && cArr[i12] == '[' && cArr[i11 - 1] == ']') {
                return true;
            }
        }
        return false;
    }

    private static Serializable b(CompiledExpression compiledExpression) {
        if (!compiledExpression.isSingleNode()) {
            return compiledExpression;
        }
        ASTNode firstNode = compiledExpression.getFirstNode();
        if (!firstNode.isLiteral() || firstNode.isThisVal()) {
            return firstNode.canSerializeAccessor() ? new ExecutableAccessorSafe(firstNode, compiledExpression.getKnownEgressType()) : new ExecutableAccessor(firstNode, compiledExpression.getKnownEgressType());
        }
        return new ExecutableLiteral(firstNode.getLiteralValue());
    }

    public static boolean b0(int i10) {
        return i10 > 47 && i10 < 58;
    }

    public static int c(char[] cArr, int i10, char c10) {
        return d(cArr, i10, cArr.length, c10);
    }

    public static boolean c0(int i10) {
        return (i10 > 96 && i10 < 123) || (i10 > 64 && i10 < 91) || ((i10 > 47 && i10 < 58) || i10 == 95 || i10 == 36 || Character.isJavaIdentifierPart(i10));
    }

    public static int d(char[] cArr, int i10, int i11, char c10) {
        char c11;
        int iH;
        int i12;
        if (c10 == '(') {
            c11 = ')';
        } else if (c10 != '[') {
            c11 = c10 != '{' ? c10 : '}';
        } else {
            c11 = ']';
        }
        if (c10 == c11) {
            iH = i10 + 1;
            while (iH < i11) {
                if (cArr[iH] == c10) {
                    return iH;
                }
                iH++;
            }
        } else {
            iH = i10 + 1;
            int i13 = 1;
            while (iH < i11) {
                if (iH < i11 && cArr[iH] == '/') {
                    int i14 = iH + 1;
                    if (i14 == i11) {
                        return iH;
                    }
                    char c12 = cArr[i14];
                    if (c12 == '/') {
                        iH = i14;
                        while (iH < i11 && cArr[iH] != '\n') {
                            iH++;
                        }
                    } else if (c12 == '*') {
                        iH += 2;
                        while (iH < i11 && (cArr[iH] != '*' || (i12 = iH + 1) >= i11 || cArr[i12] != '/')) {
                            iH++;
                        }
                    }
                }
                if (iH == i11) {
                    return iH;
                }
                char c13 = cArr[iH];
                if (c13 == '\'' || c13 == '\"') {
                    iH = h(c13, cArr, iH, i11);
                } else if (c13 == c10) {
                    i13++;
                } else if (c13 == c11 && (i13 = i13 - 1) == 0) {
                    return iH;
                }
                iH++;
            }
        }
        if (c10 == '(') {
            throw new CompileException("unbalanced braces ( ... )", cArr, iH);
        }
        if (c10 == '[') {
            throw new CompileException("unbalanced braces [ ... ]", cArr, iH);
        }
        if (c10 != '{') {
            throw new CompileException("unterminated string literal", cArr, iH);
        }
        throw new CompileException("unbalanced braces { ... }", cArr, iH);
    }

    public static boolean d0(char c10) {
        if (c10 == '(' || c10 == '[') {
            return true;
        }
        return q0(c10);
    }

    /* JADX WARN: Code duplicated, block: B:56:0x0088  */
    public static int e(char[] cArr, int i10, int i11, char c10, ParserContext parserContext) {
        char c11;
        if (c10 == '(') {
            c11 = ')';
        } else if (c10 != '[') {
            c11 = c10 != '{' ? c10 : '}';
        } else {
            c11 = ']';
        }
        if (c10 == c11) {
            for (int i12 = i10 + 1; i12 != i11; i12++) {
                if (cArr[i12] == c10) {
                    return i12;
                }
            }
        } else {
            int iH = i10 + 1;
            int i13 = 0;
            int i14 = 1;
            while (iH < i11) {
                if (q0(cArr[iH])) {
                    char c12 = cArr[iH];
                    if (c12 != '\n') {
                        if (c12 == '\r') {
                            continue;
                        }
                        iH++;
                    } else {
                        if (parserContext != null) {
                            parserContext.setLineOffset((short) iH);
                        }
                        i13++;
                    }
                } else if (iH < i11 && cArr[iH] == '/') {
                    int i15 = iH + 1;
                    if (i15 == i11) {
                        return iH;
                    }
                    char c13 = cArr[i15];
                    if (c13 == '/') {
                        iH = i15;
                        while (iH < i11 && cArr[iH] != '\n') {
                            iH++;
                        }
                    } else if (c13 == '*') {
                        iH += 2;
                        while (iH != i11) {
                            char c14 = cArr[iH];
                            if (c14 == '\n' || c14 == '\r') {
                                if (parserContext != null) {
                                    parserContext.setLineOffset((short) iH);
                                }
                                i13++;
                            } else if (c14 == '*') {
                                int i16 = iH + 1;
                                if (i16 < i11 && cArr[i16] == '/') {
                                    break;
                                }
                                if (parserContext != null) {
                                    parserContext.setLineOffset((short) iH);
                                }
                                i13++;
                            } else {
                                continue;
                            }
                            iH++;
                        }
                    }
                }
                if (iH == i11) {
                    return iH;
                }
                char c15 = cArr[iH];
                if (c15 == '\'' || c15 == '\"') {
                    iH = h(c15, cArr, iH, i11);
                } else if (c15 == c10) {
                    i14++;
                } else if (c15 == c11 && (i14 = i14 - 1) == 0) {
                    if (parserContext != null) {
                        parserContext.incrementLineCount(i13);
                    }
                    return iH;
                }
                iH++;
            }
        }
        if (c10 == '(') {
            throw new CompileException("unbalanced braces ( ... )", cArr, i10);
        }
        if (c10 == '[') {
            throw new CompileException("unbalanced braces [ ... ]", cArr, i10);
        }
        if (c10 != '{') {
            throw new CompileException("unterminated string literal", cArr, i10);
        }
        throw new CompileException("unbalanced braces { ... }", cArr, i10);
    }

    private static boolean e0(Method method, Method method2) {
        return method2.getReturnType().isAssignableFrom(method.getReturnType()) && method2.getDeclaringClass().isAssignableFrom(method.getDeclaringClass());
    }

    public static Class f(Class cls) {
        Class cls2 = Integer.class;
        if (cls != Integer.TYPE && cls != cls2) {
            cls2 = Integer[].class;
            if (cls != int[].class && cls != cls2) {
                cls2 = Character.class;
                if (cls != Character.TYPE && cls != cls2) {
                    cls2 = Character[].class;
                    if (cls != char[].class && cls != cls2) {
                        cls2 = Long.class;
                        if (cls != Long.TYPE && cls != cls2) {
                            cls2 = Long[].class;
                            if (cls != long[].class && cls != cls2) {
                                cls2 = Short.class;
                                if (cls != Short.TYPE && cls != cls2) {
                                    cls2 = Short[].class;
                                    if (cls != short[].class && cls != cls2) {
                                        cls2 = Double.class;
                                        if (cls != Double.TYPE && cls != cls2) {
                                            cls2 = Double[].class;
                                            if (cls != double[].class && cls != cls2) {
                                                cls2 = Float.class;
                                                if (cls != Float.TYPE && cls != cls2) {
                                                    cls2 = Float[].class;
                                                    if (cls != float[].class && cls != cls2) {
                                                        cls2 = Boolean.class;
                                                        if (cls != Boolean.TYPE && cls != cls2) {
                                                            cls2 = Boolean[].class;
                                                            if (cls != boolean[].class && cls != cls2) {
                                                                cls2 = Byte.class;
                                                                if (cls != Byte.TYPE && cls != cls2) {
                                                                    cls2 = Byte[].class;
                                                                    if (cls != byte[].class && cls != cls2) {
                                                                        return cls;
                                                                    }
                                                                }
                                                            }
                                                        }
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        return cls2;
    }

    public static boolean f0(String str) {
        for (char c10 : str.toCharArray()) {
            if (c10 == '.' || !c0(c10)) {
                return true;
            }
        }
        return false;
    }

    public static String[] g(char[] cArr, int i10, int i11) {
        int i12 = i10 + i11;
        boolean z10 = false;
        int i13 = 0;
        for (int i14 = i10; i14 < i12; i14++) {
            char c10 = cArr[i14];
            if (c10 == '\"') {
                z10 = !z10;
            } else if (c10 == '(') {
                i13++;
            } else if (c10 == ')' && !z10) {
                int i15 = i13 - 1;
                if (1 == i13) {
                    int i16 = i14 + 1;
                    return new String[]{x(cArr, i10, i16 - i10), x(cArr, i16, i12 - i16)};
                }
                i13 = i15;
            }
        }
        return new String[]{new String(cArr, i10, i11)};
    }

    public static boolean g0(Object obj) {
        if (obj == null) {
            return false;
        }
        if (obj instanceof String) {
            return h0((String) obj);
        }
        if (obj instanceof char[]) {
            return h0(new String((char[]) obj));
        }
        return (obj instanceof Integer) || (obj instanceof BigDecimal) || (obj instanceof BigInteger) || (obj instanceof Float) || (obj instanceof Double) || (obj instanceof Long) || (obj instanceof Short) || (obj instanceof Character);
    }

    public static int h(char c10, char[] cArr, int i10, int i11) {
        int i12;
        char c11;
        while (true) {
            i12 = i10 + 1;
            if (i12 >= i11 || (c11 = cArr[i12]) == c10) {
                break;
            }
            i10 = c11 == '\\' ? i10 + 2 : i12;
        }
        if (i12 >= i11 || cArr[i12] != c10) {
            throw new CompileException("unterminated string literal", cArr, i12);
        }
        return i12;
    }

    /* JADX WARN: Code duplicated, block: B:12:0x0024  */
    /* JADX WARN: Code duplicated, block: B:6:0x0010  */
    public static boolean h0(String str) {
        boolean z10;
        int i10;
        int length = str.length();
        if (length <= 1) {
            z10 = true;
            i10 = 0;
        } else if (str.charAt(0) == '-') {
            i10 = 1;
            z10 = true;
        } else if (str.charAt(0) != '~') {
            z10 = true;
            i10 = 0;
        } else if (str.charAt(1) == '-') {
            i10 = 2;
            z10 = true;
        } else {
            i10 = 1;
            z10 = true;
        }
        while (i10 < length) {
            char cCharAt = str.charAt(i10);
            if (!b0(cCharAt)) {
                if (cCharAt != '.' || !z10) {
                    return false;
                }
                z10 = false;
            }
            i10++;
        }
        return length > 0;
    }

    /* JADX WARN: Code duplicated, block: B:24:0x002e  */
    public static int i(char[] cArr, int i10, int i11, ParserContext parserContext) {
        while (i10 != cArr.length) {
            char c10 = cArr[i10];
            if (c10 != '\"') {
                if (c10 != ',' && c10 != ';') {
                    if (c10 != '[' && c10 != '{') {
                        if (c10 != '}') {
                            if (c10 == '\'') {
                                i10 = h(c10, cArr, i10, cArr.length);
                            } else if (c10 != '(') {
                                continue;
                            }
                        }
                    }
                    i10 = e(cArr, i10, i11, c10, parserContext);
                    if (i10 >= cArr.length) {
                    }
                }
                return i10;
            }
            i10 = h(c10, cArr, i10, cArr.length);
            i10++;
        }
        return i10;
    }

    /* JADX WARN: Code duplicated, block: B:15:0x0021  */
    public static boolean i0(char[] cArr, int i10, int i11) {
        int i12;
        char c10;
        int i13;
        int i14;
        int i15 = i10 + i11;
        char c11 = '-';
        boolean z10 = true;
        if (i11 <= 1) {
            i12 = i10;
        } else {
            char c12 = cArr[i10];
            if (c12 == '-') {
                i14 = i10 + 1;
                if (cArr[i14] != '-') {
                }
                i12 = i14 + 1;
            } else if (c12 != '~') {
                i12 = i10;
            }
            i14 = i10;
            i12 = i14 + 1;
        }
        boolean z11 = true;
        while (i12 < i15) {
            char c13 = cArr[i12];
            if (b0(c13)) {
                c10 = c11;
            } else if (z11 && c13 == '.') {
                c10 = c11;
                z11 = false;
            } else {
                if (i11 != z10 && i12 == i15 - 1) {
                    if (c13 != '.') {
                        return c13 == 'B' || c13 == 'D' || c13 == 'F' || c13 == 'I' || c13 == 'L' || c13 == 'd' || c13 == 'f' || c13 == 'l';
                    }
                    throw new CompileException("invalid number literal: " + new String(cArr), cArr, i10);
                }
                if (i12 == i10 + 1 && c13 == 'x' && cArr[i10] == '0') {
                    int i16 = i12 + 1;
                    while (i16 < i15) {
                        char c14 = cArr[i16];
                        if (!b0(c14) && ((c14 < 'A' || c14 > 'F') && (c14 < 'a' || c14 > 'f'))) {
                            return i16 == i11 - 1 && (c14 == 'B' || c14 == 'I' || c14 == 'L' || c14 == 'l');
                        }
                        i16++;
                    }
                    return i11 + (-2) > 0;
                }
                if (i12 == i10 || (i13 = i12 + 1) >= i15 || !(c13 == 'E' || c13 == 'e')) {
                    if (i12 == i10) {
                        return false;
                    }
                    throw new CompileException("invalid number literal: " + new String(cArr, i10, i11), cArr, i10);
                }
                char c15 = cArr[i13];
                c10 = '-';
                i12 = (c15 == '-' || c15 == '+') ? i12 + 2 : i13;
                z10 = true;
            }
            i12 += z10 ? 1 : 0;
            c11 = c10;
        }
        if (i15 > i10) {
            return z10;
        }
        return false;
    }

    public static int j(char[] cArr, int i10, int i11, ParserContext parserContext) {
        char c10;
        while (i10 != cArr.length && (c10 = cArr[i10]) != '(') {
            if (c10 == '[') {
                i10 = e(cArr, i10, i11, '[', parserContext);
            } else {
                if (c10 == '{') {
                    break;
                }
                if (q0(c10)) {
                    return i10;
                }
            }
            i10++;
        }
        return i10;
    }

    public static boolean j0(Object obj) {
        if (obj == null) {
            return false;
        }
        Class<?> cls = obj instanceof Class ? (Class) obj : obj.getClass();
        return cls == Integer.TYPE || cls == Long.TYPE || cls == Short.TYPE || cls == Double.TYPE || cls == Float.TYPE || Number.class.isAssignableFrom(cls);
    }

    public static void k(String str) {
        if (o0(str)) {
            throw new RuntimeException("illegal use of reserved word: " + str);
        }
        if (b0(str.charAt(0))) {
            throw new RuntimeException("not an identifier: " + str);
        }
    }

    public static boolean k0(Class cls, Class cls2) {
        if ((cls.isPrimitive() ? f(cls) : cls) == null || !Number.class.isAssignableFrom(cls)) {
            return false;
        }
        if (cls2.isPrimitive()) {
            cls2 = f(cls2);
        }
        if (cls2 != null) {
            return Number.class.isAssignableFrom(cls2);
        }
        return false;
    }

    public static boolean l(Object obj, Object obj2) {
        if (obj == null) {
            return false;
        }
        if (obj instanceof String) {
            return ((String) obj).contains(String.valueOf(obj2));
        }
        if (obj instanceof Collection) {
            return ((Collection) obj).contains(obj2);
        }
        if (obj instanceof Map) {
            return ((Map) obj).containsKey(obj2);
        }
        if (obj.getClass().isArray()) {
            if (obj.getClass().getComponentType().isPrimitive()) {
                return t(obj, obj2);
            }
            for (Object obj3 : (Object[]) obj) {
                if ((obj2 == null && obj3 == null) || ((Boolean) a00.a.g(obj3, 18, obj2)).booleanValue()) {
                    return true;
                }
            }
        }
        return false;
    }

    private static boolean l0(Class cls, Class cls2) {
        Class cls3;
        if (!cls2.isPrimitive()) {
            return false;
        }
        Class clsO0 = O0(cls);
        if (clsO0.isPrimitive()) {
            return (cls2 == Double.TYPE && clsO0 == Float.TYPE) || (cls2 == Float.TYPE && clsO0 == Long.TYPE) || ((cls2 == Long.TYPE && clsO0 == Integer.TYPE) || ((cls2 == (cls3 = Integer.TYPE) && clsO0 == Character.TYPE) || ((cls2 == cls3 && clsO0 == Short.TYPE) || (cls2 == Short.TYPE && clsO0 == Byte.TYPE))));
        }
        return false;
    }

    private static boolean m(boolean[] zArr, Boolean bool) {
        boolean zBooleanValue = bool.booleanValue();
        for (boolean z10 : zArr) {
            if (z10 == zBooleanValue) {
                return true;
            }
        }
        return false;
    }

    public static boolean m0(Class cls) {
        return cls == Integer.class || cls == Boolean.class || cls == Long.class || cls == Double.class || cls == Float.class || cls == Character.class || cls == Short.class || cls == Byte.class;
    }

    private static boolean n(byte[] bArr, Byte b10) {
        byte bByteValue = b10.byteValue();
        for (byte b11 : bArr) {
            if (b11 == bByteValue) {
                return true;
            }
        }
        return false;
    }

    public static boolean n0(char[] cArr, int i10, int i11) {
        while (i10 < i11) {
            if (!c0(cArr[i10])) {
                return false;
            }
            i10++;
        }
        return true;
    }

    private static boolean o(char[] cArr, Character ch2) {
        char cCharValue = ch2.charValue();
        for (char c10 : cArr) {
            if (c10 == cCharValue) {
                return true;
            }
        }
        return false;
    }

    public static boolean o0(String str) {
        return AbstractParser.LITERALS.containsKey(str) || AbstractParser.OPERATORS.containsKey(str);
    }

    private static boolean p(double[] dArr, Double d10) {
        double dDoubleValue = d10.doubleValue();
        for (double d11 : dArr) {
            if (d11 == dDoubleValue) {
                return true;
            }
        }
        return false;
    }

    public static boolean p0(char[] cArr, int i10) {
        if (i10 >= cArr.length) {
            return false;
        }
        while (i10 != cArr.length && q0(cArr[i10])) {
            i10++;
        }
        return i10 == cArr.length || cArr[i10] != ';';
    }

    private static boolean q(float[] fArr, Float f10) {
        float fFloatValue = f10.floatValue();
        for (float f11 : fArr) {
            if (f11 == fFloatValue) {
                return true;
            }
        }
        return false;
    }

    public static boolean q0(char c10) {
        return c10 < '!';
    }

    private static boolean r(int[] iArr, Integer num) {
        int iIntValue = num.intValue();
        for (int i10 : iArr) {
            if (i10 == iIntValue) {
                return true;
            }
        }
        return false;
    }

    public static Object r0(BigDecimal bigDecimal, int i10) {
        if (i10 == 109 || bigDecimal.scale() > 0) {
            return Double.valueOf(bigDecimal.doubleValue());
        }
        return (i10 == 107 || bigDecimal.longValue() > 2147483647L) ? Long.valueOf(bigDecimal.longValue()) : Integer.valueOf(bigDecimal.intValue());
    }

    private static boolean s(long[] jArr, Long l10) {
        long jLongValue = l10.longValue();
        for (long j10 : jArr) {
            if (j10 == jLongValue) {
                return true;
            }
        }
        return false;
    }

    public static int s0(char[] cArr, int i10) {
        if (i10 + 1 >= cArr.length) {
            throw new CompileException("unexpected end of statement", cArr, i10);
        }
        while (i10 != cArr.length && q0(cArr[i10])) {
            i10++;
        }
        return i10;
    }

    private static boolean t(Object obj, Object obj2) {
        Class<?> componentType = obj.getClass().getComponentType();
        if (componentType == Boolean.TYPE) {
            return (obj2 instanceof Boolean) && m((boolean[]) obj, (Boolean) obj2);
        }
        if (componentType == Integer.TYPE) {
            return (obj2 instanceof Integer) && r((int[]) obj, (Integer) obj2);
        }
        if (componentType == Long.TYPE) {
            return (obj2 instanceof Long) && s((long[]) obj, (Long) obj2);
        }
        if (componentType == Double.TYPE) {
            return (obj2 instanceof Double) && p((double[]) obj, (Double) obj2);
        }
        if (componentType == Float.TYPE) {
            return (obj2 instanceof Float) && q((float[]) obj, (Float) obj2);
        }
        if (componentType == Character.TYPE) {
            return (obj2 instanceof Character) && o((char[]) obj, (Character) obj2);
        }
        if (componentType == Short.TYPE) {
            return (obj2 instanceof Short) && u((short[]) obj, (Short) obj2);
        }
        if (componentType == Byte.TYPE) {
            return (obj2 instanceof Byte) && n((byte[]) obj, (Byte) obj2);
        }
        return false;
    }

    /* JADX WARN: Code duplicated, block: B:12:0x0019  */
    public static int t0(char[] cArr, int i10, int i11) {
        int i12;
        if (i11 <= 1) {
            i12 = i10;
        } else {
            char c10 = cArr[i10];
            if (c10 == '-') {
                i12 = i10 + 1;
            } else if (c10 == '~') {
                i12 = i10 + 1;
                if (cArr[i12] == '-') {
                    i12 = i10 + 2;
                }
            } else {
                i12 = i10;
            }
        }
        int i13 = i10 + i11;
        boolean z10 = false;
        while (i12 < i13) {
            char c11 = cArr[i12];
            if (!b0(c11)) {
                if (c11 != '.') {
                    if (c11 != 'E' && c11 != 'e') {
                        return -1;
                    }
                    int i14 = i12 + 1;
                    i12 = (i12 >= i13 || cArr[i14] != '-') ? i14 : i12 + 2;
                }
                z10 = true;
            }
            i12++;
        }
        if (i11 == 0) {
            return -1;
        }
        if (z10) {
            return 103;
        }
        return i11 > 9 ? 102 : 101;
    }

    private static boolean u(short[] sArr, Short sh2) {
        short sShortValue = sh2.shortValue();
        for (short s10 : sArr) {
            if (s10 == sShortValue) {
                return true;
            }
        }
        return false;
    }

    public static int u0(char c10) {
        if (c10 == '%') {
            return 4;
        }
        if (c10 == '&') {
            return 6;
        }
        if (c10 == '*') {
            return 2;
        }
        if (c10 == '+') {
            return 0;
        }
        if (c10 == '/') {
            return 3;
        }
        if (c10 == '^') {
            return 8;
        }
        if (c10 == '|') {
            return 7;
        }
        if (c10 == 187) {
            return 9;
        }
        if (c10 != 171) {
            return c10 != 172 ? -1 : 11;
        }
        return 10;
    }

    public static Class v(String str, ParserContext parserContext) throws ClassNotFoundException {
        Class<?> cls;
        Class cls2;
        ClassLoader classLoader = parserContext != null ? parserContext.getClassLoader() : Thread.currentThread().getContextClassLoader();
        Map map = f68904d;
        Map mapSynchronizedMap = (Map) map.get(classLoader);
        if (mapSynchronizedMap == null) {
            mapSynchronizedMap = Collections.synchronizedMap(new WeakHashMap(10));
            map.put(classLoader, mapSynchronizedMap);
        }
        WeakReference weakReference = (WeakReference) mapSynchronizedMap.get(str);
        if (weakReference != null && (cls2 = (Class) weakReference.get()) != null) {
            return cls2;
        }
        try {
            cls = Class.forName(str, true, classLoader);
        } catch (ClassNotFoundException e10) {
            if (classLoader == Thread.currentThread().getContextClassLoader()) {
                throw e10;
            }
            cls = Class.forName(str, true, Thread.currentThread().getContextClassLoader());
        }
        mapSynchronizedMap.put(str, new WeakReference(cls));
        return cls;
    }

    public static Serializable v0(CompiledExpression compiledExpression) {
        return (!compiledExpression.isImportInjectionRequired() && compiledExpression.getParserConfiguration().isAllowBootstrapBypass() && compiledExpression.isSingleNode()) ? b(compiledExpression) : compiledExpression;
    }

    public static char[] w(String str, char[] cArr, int i10, int i11, int i12) {
        char c10;
        if (i12 == -1) {
            return cArr;
        }
        if (i12 == 0) {
            c10 = '+';
        } else if (i12 == 1) {
            c10 = '-';
        } else if (i12 == 2) {
            c10 = '*';
        } else if (i12 == 3) {
            c10 = '/';
        } else if (i12 == 4) {
            c10 = '%';
        } else if (i12 == 6) {
            c10 = '&';
        } else if (i12 == 7) {
            c10 = '|';
        } else if (i12 != 20) {
            switch (i12) {
                case 9:
                    c10 = 187;
                    break;
                case 10:
                    c10 = 171;
                    break;
                case 11:
                    c10 = 172;
                    break;
                default:
                    c10 = 0;
                    break;
            }
        } else {
            c10 = '#';
        }
        char[] charArray = str.toCharArray();
        char[] cArr2 = new char[str.length() + i11 + 1];
        System.arraycopy(charArray, 0, cArr2, 0, str.length());
        cArr2[str.length()] = c10;
        System.arraycopy(cArr, i10, cArr2, str.length() + 1, i11);
        return cArr2;
    }

    public static List w0(char[] cArr) {
        int i10;
        int i11 = 0;
        while (true) {
            if (i11 >= cArr.length) {
                i10 = -1;
                break;
            }
            if (cArr[i11] == '(') {
                i10 = i11 + 1;
                break;
            }
            i11++;
        }
        if (i10 == -1) {
            return Collections.emptyList();
        }
        int i12 = i10 - 1;
        return y0(cArr, i10, (c(cArr, i12, '(') - i12) - 1);
    }

    public static String x(char[] cArr, int i10, int i11) {
        int i12 = i11 + i10;
        if (i12 > cArr.length) {
            return new String(cArr);
        }
        while (i10 != i12 && cArr[i10] < '!') {
            i10++;
        }
        while (i12 != i10 && cArr[i12 - 1] < '!') {
            i12--;
        }
        return new String(cArr, i10, i12 - i10);
    }

    /* JADX WARN: Code duplicated, block: B:27:0x0045  */
    public static String[] x0(char[] cArr, int i10, int i11) {
        LinkedList linkedList = new LinkedList();
        if (i11 == -1) {
            i11 = cArr.length;
        }
        int i12 = i10 + i11;
        int i13 = i10;
        while (i10 < i12) {
            char c10 = cArr[i10];
            if (c10 == '\"') {
                i10 = h('\"', cArr, i10, cArr.length);
            } else if (c10 == ',') {
                if (i10 > i13) {
                    while (q0(cArr[i13])) {
                        i13++;
                    }
                    String str = new String(cArr, i13, i10 - i13);
                    k(str);
                    linkedList.add(str);
                }
                while (q0(cArr[i10])) {
                    i10++;
                }
                i13 = i10 + 1;
            } else if (c10 == '[' || c10 == '{') {
                i10 = c(cArr, i10, c10);
            } else if (c10 == '\'') {
                i10 = h('\'', cArr, i10, cArr.length);
            } else if (c10 == '(') {
                i10 = c(cArr, i10, c10);
            } else if (!q0(c10) && !c0(cArr[i10])) {
                throw new CompileException("expected parameter", cArr, i13);
            }
            i10++;
        }
        if (i13 < i12 && i10 > i13) {
            String strX = x(cArr, i13, i10 - i13);
            if (strX.length() > 0) {
                k(strX);
                linkedList.add(strX);
            }
        } else if (linkedList.size() == 0) {
            String strX2 = x(cArr, i13, i11);
            if (strX2.length() > 0) {
                k(strX2);
                linkedList.add(strX2);
            }
        }
        return (String[]) linkedList.toArray(new String[linkedList.size()]);
    }

    private static Method y(Class cls, Method method) {
        String name = method.getName();
        for (Class<?> cls2 : cls.getInterfaces()) {
            for (Method method2 : cls2.getMethods()) {
                if (method2.getParameterTypes().length == 0 && name.equals(method2.getName())) {
                    return method2;
                }
            }
        }
        if (cls.getSuperclass() != null) {
            return y(cls.getSuperclass(), method);
        }
        return null;
    }

    /* JADX WARN: Code duplicated, block: B:21:0x002f  */
    public static List y0(char[] cArr, int i10, int i11) {
        ArrayList arrayList = new ArrayList();
        if (i11 == -1) {
            i11 = cArr.length;
        }
        int i12 = i10 + i11;
        int i13 = i10;
        while (i10 < i12) {
            char c10 = cArr[i10];
            if (c10 == '\"') {
                i10 = h('\"', cArr, i10, cArr.length);
            } else if (c10 == ',') {
                if (i10 > i13) {
                    while (q0(cArr[i13])) {
                        i13++;
                    }
                    arrayList.add(L0(cArr, i13, i10 - i13));
                }
                while (q0(cArr[i10])) {
                    i10++;
                }
                i13 = i10 + 1;
            } else if (c10 == '[' || c10 == '{') {
                i10 = c(cArr, i10, c10);
            } else if (c10 == '\'') {
                i10 = h('\'', cArr, i10, cArr.length);
            } else if (c10 == '(') {
                i10 = c(cArr, i10, c10);
            }
            i10++;
        }
        if (i13 < i12 && i10 > i13) {
            char[] cArrL0 = L0(cArr, i13, i10 - i13);
            if (cArrL0.length > 0) {
                arrayList.add(cArrL0);
            }
        } else if (arrayList.size() == 0) {
            char[] cArrL1 = L0(cArr, i13, i11);
            if (cArrL1.length > 0) {
                arrayList.add(cArrL1);
            }
        }
        return arrayList;
    }

    public static Method z(Method method) {
        return y(method.getDeclaringClass(), method);
    }

    /* JADX WARN: Code duplicated, block: B:58:0x0106 A[PHI: r8
      0x0106: PHI (r8v8 int) = (r8v6 int), (r8v9 int) binds: [B:70:0x012e, B:57:0x0104] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:76:0x013b  */
    /* JADX WARN: Code duplicated, block: B:81:0x0148  */
    public static void z0(String str, char[] cArr, int i10, int i11, Object obj, VariableResolverFactory variableResolverFactory) {
        int i12;
        int i13 = i10 + i11;
        int iD = i10;
        int i14 = iD;
        String strTrim = "";
        int iU0 = -1;
        while (iD < i13) {
            char c10 = cArr[iD];
            if (c10 == '\"') {
                iD = d(cArr, iD, i13, c10);
            } else if (c10 == '%') {
                i12 = iD + 1;
                if (i12 < i13 && cArr[i12] == '=') {
                    iU0 = u0(c10);
                }
            } else if (c10 != '/') {
                if (c10 == '=') {
                    strTrim = new String(cArr, i14, (iD - i14) - (iU0 != -1 ? 1 : 0)).trim();
                    i14 = iD + 1;
                } else if (c10 != '[' && c10 != '{' && c10 != '\'' && c10 != '(') {
                    switch (c10) {
                        case '*':
                        case '+':
                        case '-':
                            i12 = iD + 1;
                            if (i12 < i13) {
                            }
                            break;
                        case ',':
                            if (strTrim == null) {
                                if (str == null) {
                                    try {
                                        org.mvel2.d.l(new String(cArr, i14, iD - i14), obj, variableResolverFactory);
                                    } catch (CompileException e10) {
                                        e10.setCursor(i14 + (e10.getCursor() - (e10.getExpr().length - i11)));
                                        e10.setExpr(cArr);
                                        throw e10;
                                    }
                                } else {
                                    StringBuilder sb2 = new StringBuilder(str);
                                    sb2.append('.');
                                    sb2.append(cArr, i14, iD - i14);
                                    org.mvel2.d.l(sb2.toString(), obj, variableResolverFactory);
                                }
                                iD++;
                            } else {
                                if (iU0 != -1) {
                                    if (str == null) {
                                        throw new CompileException("operative assignment not possible here", cArr, i10);
                                    }
                                    try {
                                        org.mvel2.d.y(obj, strTrim, org.mvel2.d.l(new String(w(str + "." + strTrim, cArr, i14, iD - i14, iU0)), obj, variableResolverFactory));
                                    } catch (CompileException e11) {
                                        e11.setCursor(i14 + (e11.getCursor() - (e11.getExpr().length - i11)));
                                        e11.setExpr(cArr);
                                        throw e11;
                                    }
                                    e11.setCursor(i14 + (e11.getCursor() - (e11.getExpr().length - i11)));
                                    e11.setExpr(cArr);
                                    throw e11;
                                }
                                org.mvel2.d.y(obj, strTrim, org.mvel2.d.o(cArr, i14, iD - i14, obj, variableResolverFactory));
                                iD++;
                                strTrim = null;
                            }
                            i14 = iD;
                            iU0 = -1;
                            break;
                    }
                } else {
                    iD = d(cArr, iD, i13, c10);
                }
            } else if (iD < i13 && cArr[iD + 1] == '/') {
                while (iD < i13 && cArr[iD] != '\n') {
                    cArr[iD] = ' ';
                    iD++;
                }
                if (strTrim == null) {
                    i14 = iD;
                }
            } else if (iD < i13 && cArr[iD + 1] == '*') {
                int i15 = i13 - 1;
                while (iD < i15 && (cArr[iD] != '*' || cArr[iD + 1] != '/')) {
                    cArr[iD] = ' ';
                    iD++;
                }
                int i16 = iD + 1;
                cArr[iD] = ' ';
                iD += 2;
                cArr[i16] = ' ';
                if (strTrim == null) {
                    i14 = iD;
                }
            } else if (iD < i13 && cArr[iD + 1] == '=') {
                iU0 = 3;
            }
            iD++;
        }
        if (i14 != i13) {
            if (strTrim != null) {
                try {
                    if (!"".equals(strTrim)) {
                        if (iU0 == -1) {
                            org.mvel2.d.y(obj, strTrim, org.mvel2.d.o(cArr, i14, i13 - i14, obj, variableResolverFactory));
                            return;
                        }
                        if (str == null) {
                            throw new CompileException("operative assignment not possible here", cArr, i10);
                        }
                        org.mvel2.d.y(obj, strTrim, org.mvel2.d.l(new String(w(str + "." + strTrim, cArr, i14, i13 - i14, iU0)), obj, variableResolverFactory));
                        return;
                    }
                } catch (CompileException e12) {
                    e12.setCursor(i14 + (e12.getCursor() - (e12.getExpr().length - i11)));
                    e12.setExpr(cArr);
                    throw e12;
                }
            }
            if (str == null) {
                org.mvel2.d.l(new String(cArr, i14, i13 - i14), obj, variableResolverFactory);
            } else {
                org.mvel2.d.l(new s(str).a('.').e(cArr, i14, i13 - i14).toString(), obj, variableResolverFactory);
            }
        }
    }
}
