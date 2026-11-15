package org.mozilla.javascript;

import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Member;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;

final class MemberBox implements Serializable {
    public static final Class[] c = {Boolean.TYPE, Byte.TYPE, Character.TYPE, Double.TYPE, Float.TYPE, Integer.TYPE, Long.TYPE, Short.TYPE, Void.TYPE};
    private static final long serialVersionUID = 6358550398665688245L;
    transient Class<?>[] argTypes;
    public transient Member b;
    transient Object delegateTo;
    transient boolean vararg;

    public MemberBox(Method method) {
        b(method);
    }

    public static Member c(ObjectInputStream objectInputStream) throws IOException {
        if (!objectInputStream.readBoolean()) {
            return null;
        }
        boolean z = objectInputStream.readBoolean();
        String str = (String) objectInputStream.readObject();
        Class cls = (Class) objectInputStream.readObject();
        Class<?>[] clsArrD = d(objectInputStream);
        try {
            return z ? cls.getMethod(str, clsArrD) : cls.getConstructor(clsArrD);
        } catch (NoSuchMethodException e) {
            throw new IOException("Cannot find member: " + e);
        }
    }

    public static Class[] d(ObjectInputStream objectInputStream) throws IOException {
        int i = objectInputStream.readShort();
        Class[] clsArr = new Class[i];
        for (int i2 = 0; i2 < i; i2++) {
            if (objectInputStream.readBoolean()) {
                clsArr[i2] = c[objectInputStream.readByte()];
            } else {
                clsArr[i2] = (Class) objectInputStream.readObject();
            }
        }
        return clsArr;
    }

    public static Method e(Method method, Class[] clsArr) {
        int modifiers = method.getModifiers();
        if (!Modifier.isPublic(modifiers) || Modifier.isStatic(modifiers)) {
            return null;
        }
        Class<?> declaringClass = method.getDeclaringClass();
        if (Modifier.isPublic(declaringClass.getModifiers())) {
            return null;
        }
        String name = method.getName();
        Class<?>[] interfaces = declaringClass.getInterfaces();
        int length = interfaces.length;
        for (int i = 0; i != length; i++) {
            Class<?> cls = interfaces[i];
            if (Modifier.isPublic(cls.getModifiers())) {
                try {
                    return cls.getMethod(name, clsArr);
                } catch (NoSuchMethodException | SecurityException unused) {
                    continue;
                }
            }
        }
        while (true) {
            declaringClass = declaringClass.getSuperclass();
            if (declaringClass == null) {
                return null;
            }
            if (Modifier.isPublic(declaringClass.getModifiers())) {
                try {
                    Method method2 = declaringClass.getMethod(name, clsArr);
                    int modifiers2 = method2.getModifiers();
                    if (Modifier.isPublic(modifiers2) && !Modifier.isStatic(modifiers2)) {
                        return method2;
                    }
                } catch (NoSuchMethodException | SecurityException unused2) {
                    continue;
                }
            }
        }
    }

    public static void f(ObjectOutputStream objectOutputStream, Member member) throws IOException {
        if (member == null) {
            objectOutputStream.writeBoolean(false);
            return;
        }
        objectOutputStream.writeBoolean(true);
        boolean z = member instanceof Method;
        if (!z && !(member instanceof Constructor)) {
            throw new IllegalArgumentException("not Method or Constructor");
        }
        objectOutputStream.writeBoolean(z);
        objectOutputStream.writeObject(member.getName());
        objectOutputStream.writeObject(member.getDeclaringClass());
        if (z) {
            g(objectOutputStream, ((Method) member).getParameterTypes());
        } else {
            g(objectOutputStream, ((Constructor) member).getParameterTypes());
        }
    }

    public static void g(ObjectOutputStream objectOutputStream, Class[] clsArr) throws IOException {
        objectOutputStream.writeShort(clsArr.length);
        for (Class cls : clsArr) {
            boolean zIsPrimitive = cls.isPrimitive();
            objectOutputStream.writeBoolean(zIsPrimitive);
            if (zIsPrimitive) {
                int i = 0;
                while (true) {
                    Class[] clsArr2 = c;
                    if (i >= clsArr2.length) {
                        throw new IllegalArgumentException("Primitive " + cls + " not found");
                    }
                    if (cls.equals(clsArr2[i])) {
                        objectOutputStream.writeByte(i);
                        break;
                    }
                    i++;
                }
            } else {
                objectOutputStream.writeObject(cls);
            }
        }
    }

    private void readObject(ObjectInputStream objectInputStream) throws ClassNotFoundException, IOException {
        objectInputStream.defaultReadObject();
        Member memberC = c(objectInputStream);
        if (memberC instanceof Method) {
            b((Method) memberC);
        } else {
            a((Constructor) memberC);
        }
    }

    private void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.defaultWriteObject();
        f(objectOutputStream, this.b);
    }

    public final void a(Constructor constructor) {
        this.b = constructor;
        this.argTypes = constructor.getParameterTypes();
        this.vararg = constructor.isVarArgs();
    }

    public final void b(Method method) {
        this.b = method;
        this.argTypes = method.getParameterTypes();
        this.vararg = method.isVarArgs();
    }

    public Constructor<?> ctor() {
        return (Constructor) this.b;
    }

    public Class<?> getDeclaringClass() {
        return this.b.getDeclaringClass();
    }

    public String getName() {
        return this.b.getName();
    }

    public Object invoke(Object obj, Object[] objArr) {
        Method method = method();
        try {
            try {
                return method.invoke(obj, objArr);
            } catch (IllegalAccessException e) {
                Method methodE = e(method, this.argTypes);
                if (methodE != null) {
                    this.b = methodE;
                    method = methodE;
                } else if (!VMBridge.instance.tryToMakeAccessible(method)) {
                    throw Context.throwAsScriptRuntimeEx(e);
                }
                return method.invoke(obj, objArr);
            }
        } catch (InvocationTargetException e2) {
            e = e2;
            do {
                e = ((InvocationTargetException) e).getTargetException();
            } while (e instanceof InvocationTargetException);
            if (e instanceof ContinuationPending) {
                throw ((ContinuationPending) e);
            }
            throw Context.throwAsScriptRuntimeEx(e);
        } catch (Exception e3) {
            throw Context.throwAsScriptRuntimeEx(e3);
        }
    }

    public boolean isCtor() {
        return this.b instanceof Constructor;
    }

    public boolean isMethod() {
        return this.b instanceof Method;
    }

    public boolean isPublic() {
        return Modifier.isPublic(this.b.getModifiers());
    }

    public boolean isStatic() {
        return Modifier.isStatic(this.b.getModifiers());
    }

    public Member member() {
        return this.b;
    }

    public Method method() {
        return (Method) this.b;
    }

    public Object newInstance(Object[] objArr) {
        Constructor<?> constructorCtor = ctor();
        try {
            try {
                return constructorCtor.newInstance(objArr);
            } catch (IllegalAccessException e) {
                if (VMBridge.instance.tryToMakeAccessible(constructorCtor)) {
                    return constructorCtor.newInstance(objArr);
                }
                throw Context.throwAsScriptRuntimeEx(e);
            }
        } catch (Exception e2) {
            throw Context.throwAsScriptRuntimeEx(e2);
        }
    }

    public String toJavaDeclaration() {
        StringBuilder sb = new StringBuilder();
        if (isMethod()) {
            Method method = method();
            sb.append(method.getReturnType());
            sb.append(' ');
            sb.append(method.getName());
        } else {
            String name = ctor().getDeclaringClass().getName();
            int iLastIndexOf = name.lastIndexOf(46);
            if (iLastIndexOf >= 0) {
                name = name.substring(iLastIndexOf + 1);
            }
            sb.append(name);
        }
        sb.append(f.p(this.argTypes));
        return sb.toString();
    }

    public String toString() {
        return this.b.toString();
    }

    public MemberBox(Constructor<?> constructor) {
        a(constructor);
    }
}
