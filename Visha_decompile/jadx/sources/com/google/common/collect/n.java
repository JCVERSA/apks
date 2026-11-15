package com.google.common.collect;

import defpackage.at6;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.lang.reflect.Field;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;

public abstract class n {

    public static final class b {
        public final Field a;

        public void a(Object obj, int i) {
            try {
                this.a.set(obj, Integer.valueOf(i));
            } catch (IllegalAccessException e) {
                throw new AssertionError(e);
            }
        }

        public void b(Object obj, Object obj2) {
            try {
                this.a.set(obj, obj2);
            } catch (IllegalAccessException e) {
                throw new AssertionError(e);
            }
        }

        public b(Field field) {
            this.a = field;
            field.setAccessible(true);
        }
    }

    public static b a(Class cls, String str) {
        try {
            return new b(cls.getDeclaredField(str));
        } catch (NoSuchFieldException e) {
            throw new AssertionError(e);
        }
    }

    public static void b(Map map, ObjectInputStream objectInputStream) {
        c(map, objectInputStream, objectInputStream.readInt());
    }

    public static void c(Map map, ObjectInputStream objectInputStream, int i) {
        for (int i2 = 0; i2 < i; i2++) {
            map.put(objectInputStream.readObject(), objectInputStream.readObject());
        }
    }

    public static void d(at6 at6Var, ObjectInputStream objectInputStream) throws IOException {
        e(at6Var, objectInputStream, objectInputStream.readInt());
    }

    public static void e(at6 at6Var, ObjectInputStream objectInputStream, int i) throws IOException {
        for (int i2 = 0; i2 < i; i2++) {
            Collection collection = at6Var.get(objectInputStream.readObject());
            int i3 = objectInputStream.readInt();
            for (int i4 = 0; i4 < i3; i4++) {
                collection.add(objectInputStream.readObject());
            }
        }
    }

    public static void f(j jVar, ObjectInputStream objectInputStream) {
        g(jVar, objectInputStream, objectInputStream.readInt());
    }

    public static void g(j jVar, ObjectInputStream objectInputStream, int i) {
        for (int i2 = 0; i2 < i; i2++) {
            jVar.add(objectInputStream.readObject(), objectInputStream.readInt());
        }
    }

    public static int h(ObjectInputStream objectInputStream) {
        return objectInputStream.readInt();
    }

    public static void i(Map map, ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.writeInt(map.size());
        for (Map.Entry entry : map.entrySet()) {
            objectOutputStream.writeObject(entry.getKey());
            objectOutputStream.writeObject(entry.getValue());
        }
    }

    public static void j(at6 at6Var, ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.writeInt(at6Var.asMap().size());
        for (Map.Entry entry : at6Var.asMap().entrySet()) {
            objectOutputStream.writeObject(entry.getKey());
            objectOutputStream.writeInt(((Collection) entry.getValue()).size());
            Iterator it = ((Collection) entry.getValue()).iterator();
            while (it.hasNext()) {
                objectOutputStream.writeObject(it.next());
            }
        }
    }

    public static void k(j jVar, ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.writeInt(jVar.entrySet().size());
        for (j.a aVar : jVar.entrySet()) {
            objectOutputStream.writeObject(aVar.getElement());
            objectOutputStream.writeInt(aVar.getCount());
        }
    }
}
