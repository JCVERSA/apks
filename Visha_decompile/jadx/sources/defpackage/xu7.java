package defpackage;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.util.Enumeration;
import java.util.Hashtable;
import java.util.Vector;

public class xu7 implements wu7 {
    public Hashtable b;
    public Vector c;

    public xu7() {
        this(new Hashtable(), new Vector());
    }

    public void a(ObjectInputStream objectInputStream) throws ClassNotFoundException, IOException {
        Object object = objectInputStream.readObject();
        if (object instanceof Hashtable) {
            this.b = (Hashtable) object;
            this.c = (Vector) objectInputStream.readObject();
        } else {
            f1 f1Var = new f1((byte[]) object);
            while (true) {
                l1 l1Var = (l1) f1Var.D();
                if (l1Var == null) {
                    return;
                } else {
                    setBagAttribute(l1Var, f1Var.D());
                }
            }
        }
    }

    public void b(ObjectOutputStream objectOutputStream) throws IOException {
        if (this.c.size() == 0) {
            objectOutputStream.writeObject(new Hashtable());
            objectOutputStream.writeObject(new Vector());
            return;
        }
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        o1 o1VarA = o1.a(byteArrayOutputStream);
        Enumeration bagAttributeKeys = getBagAttributeKeys();
        while (bagAttributeKeys.hasMoreElements()) {
            l1 l1VarD = l1.D(bagAttributeKeys.nextElement());
            o1VarA.v(l1VarD);
            o1VarA.u((x0) this.b.get(l1VarD));
        }
        objectOutputStream.writeObject(byteArrayOutputStream.toByteArray());
    }

    @Override
    public x0 getBagAttribute(l1 l1Var) {
        return (x0) this.b.get(l1Var);
    }

    @Override
    public Enumeration getBagAttributeKeys() {
        return this.c.elements();
    }

    @Override
    public void setBagAttribute(l1 l1Var, x0 x0Var) {
        if (this.b.containsKey(l1Var)) {
            this.b.put(l1Var, x0Var);
        } else {
            this.b.put(l1Var, x0Var);
            this.c.addElement(l1Var);
        }
    }

    public xu7(Hashtable hashtable, Vector vector) {
        this.b = hashtable;
        this.c = vector;
    }
}
