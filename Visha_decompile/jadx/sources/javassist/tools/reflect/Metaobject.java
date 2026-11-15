package javassist.tools.reflect;

import defpackage.ho6;
import defpackage.ubc;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

public class Metaobject implements Serializable {
    private static final long serialVersionUID = 1;
    protected ho6 baseobject;
    protected ClassMetaobject classmetaobject;
    protected Method[] methods;

    public Metaobject(Object obj, Object[] objArr) {
        ubc.a(obj);
        throw null;
    }

    private void readObject(ObjectInputStream objectInputStream) throws IOException, ClassNotFoundException {
        ubc.a(objectInputStream.readObject());
        throw null;
    }

    private void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.writeObject(null);
    }

    public final ClassMetaobject getClassMetaobject() {
        return this.classmetaobject;
    }

    public final String getMethodName(int i) {
        int i2;
        String name = this.methods[i].getName();
        int i3 = 3;
        while (true) {
            i2 = i3 + 1;
            char cCharAt = name.charAt(i3);
            if (cCharAt < '0' || '9' < cCharAt) {
                break;
            }
            i3 = i2;
        }
        return name.substring(i2);
    }

    public final Object getObject() {
        return null;
    }

    public final Class<?>[] getParameterTypes(int i) {
        return this.methods[i].getParameterTypes();
    }

    public final Class<?> getReturnType(int i) {
        return this.methods[i].getReturnType();
    }

    public final void setObject(Object obj) {
        ubc.a(obj);
        throw null;
    }

    public Object trapFieldRead(String str) {
        try {
            return getClassMetaobject().getJavaClass().getField(str).get(getObject());
        } catch (IllegalAccessException e) {
            throw new RuntimeException(e.toString());
        } catch (NoSuchFieldException e2) {
            throw new RuntimeException(e2.toString());
        }
    }

    public void trapFieldWrite(String str, Object obj) {
        try {
            getClassMetaobject().getJavaClass().getField(str).set(getObject(), obj);
        } catch (IllegalAccessException e) {
            throw new RuntimeException(e.toString());
        } catch (NoSuchFieldException e2) {
            throw new RuntimeException(e2.toString());
        }
    }

    public Object trapMethodcall(int i, Object[] objArr) throws Throwable {
        try {
            return this.methods[i].invoke(getObject(), objArr);
        } catch (IllegalAccessException e) {
            throw new CannotInvokeException(e);
        } catch (InvocationTargetException e2) {
            throw e2.getTargetException();
        }
    }

    public Metaobject() {
        this.classmetaobject = null;
        this.methods = null;
    }
}
