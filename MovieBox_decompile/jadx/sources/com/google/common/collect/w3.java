package com.google.common.collect;

import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.lang.reflect.Field;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;

abstract class w3 {

    static final class b {

        private final Field f30033a;

        void a(Object obj, int i10) {
            try {
                this.f30033a.set(obj, Integer.valueOf(i10));
            } catch (IllegalAccessException e10) {
                throw new AssertionError(e10);
            }
        }

        void b(Object obj, Object obj2) {
            try {
                this.f30033a.set(obj, obj2);
            } catch (IllegalAccessException e10) {
                throw new AssertionError(e10);
            }
        }

        private b(Field field) {
            this.f30033a = field;
            field.setAccessible(true);
        }
    }

    static b a(Class cls, String str) {
        try {
            return new b(cls.getDeclaredField(str));
        } catch (NoSuchFieldException e10) {
            throw new AssertionError(e10);
        }
    }

    static void b(Map map, ObjectInputStream objectInputStream) {
        c(map, objectInputStream, objectInputStream.readInt());
    }

    static void c(Map map, ObjectInputStream objectInputStream, int i10) {
        for (int i11 = 0; i11 < i10; i11++) {
            map.put(objectInputStream.readObject(), objectInputStream.readObject());
        }
    }

    static void d(j3 j3Var, ObjectInputStream objectInputStream) throws IOException {
        e(j3Var, objectInputStream, objectInputStream.readInt());
    }

    static void e(j3 j3Var, ObjectInputStream objectInputStream, int i10) throws IOException {
        for (int i11 = 0; i11 < i10; i11++) {
            Collection collection = j3Var.get(objectInputStream.readObject());
            int i12 = objectInputStream.readInt();
            for (int i13 = 0; i13 < i12; i13++) {
                collection.add(objectInputStream.readObject());
            }
        }
    }

    static void f(l3 l3Var, ObjectInputStream objectInputStream) {
        g(l3Var, objectInputStream, objectInputStream.readInt());
    }

    static void g(l3 l3Var, ObjectInputStream objectInputStream, int i10) {
        for (int i11 = 0; i11 < i10; i11++) {
            l3Var.add(objectInputStream.readObject(), objectInputStream.readInt());
        }
    }

    static int h(ObjectInputStream objectInputStream) {
        return objectInputStream.readInt();
    }

    static void i(Map map, ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.writeInt(map.size());
        for (Map.Entry entry : map.entrySet()) {
            objectOutputStream.writeObject(entry.getKey());
            objectOutputStream.writeObject(entry.getValue());
        }
    }

    static void j(j3 j3Var, ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.writeInt(j3Var.asMap().size());
        for (Map.Entry entry : j3Var.asMap().entrySet()) {
            objectOutputStream.writeObject(entry.getKey());
            objectOutputStream.writeInt(((Collection) entry.getValue()).size());
            Iterator it = ((Collection) entry.getValue()).iterator();
            while (it.hasNext()) {
                objectOutputStream.writeObject(it.next());
            }
        }
    }

    static void k(l3 l3Var, ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.writeInt(l3Var.entrySet().size());
        for (l3.a aVar : l3Var.entrySet()) {
            objectOutputStream.writeObject(aVar.getElement());
            objectOutputStream.writeInt(aVar.getCount());
        }
    }
}
