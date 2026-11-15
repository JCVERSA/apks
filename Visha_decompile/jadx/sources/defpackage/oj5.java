package defpackage;

import java.util.AbstractList;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.List;
import java.util.RandomAccess;
import kotlin.reflect.jvm.internal.impl.protobuf.f;

public class oj5 extends AbstractList implements RandomAccess, pj5 {
    public static final pj5 c = new oj5().getUnmodifiableView();
    public final List b;

    public oj5() {
        this.b = new ArrayList();
    }

    public static po0 c(Object obj) {
        if (obj instanceof po0) {
            return (po0) obj;
        }
        return obj instanceof String ? po0.k((String) obj) : po0.i((byte[]) obj);
    }

    public static String f(Object obj) {
        if (obj instanceof String) {
            return (String) obj;
        }
        return obj instanceof po0 ? ((po0) obj).w() : f.b((byte[]) obj);
    }

    @Override
    public boolean addAll(Collection collection) {
        return addAll(size(), collection);
    }

    @Override
    public void add(int i, String str) {
        this.b.add(i, str);
        ((AbstractList) this).modCount++;
    }

    @Override
    public void clear() {
        this.b.clear();
        ((AbstractList) this).modCount++;
    }

    @Override
    public void g(po0 po0Var) {
        this.b.add(po0Var);
        ((AbstractList) this).modCount++;
    }

    @Override
    public po0 getByteString(int i) {
        Object obj = this.b.get(i);
        po0 po0VarC = c(obj);
        if (po0VarC != obj) {
            this.b.set(i, po0VarC);
        }
        return po0VarC;
    }

    @Override
    public List getUnderlyingElements() {
        return Collections.unmodifiableList(this.b);
    }

    @Override
    public pj5 getUnmodifiableView() {
        return new egb(this);
    }

    @Override
    public String get(int i) {
        Object obj = this.b.get(i);
        if (obj instanceof String) {
            return (String) obj;
        }
        if (obj instanceof po0) {
            po0 po0Var = (po0) obj;
            String strW = po0Var.w();
            if (po0Var.p()) {
                this.b.set(i, strW);
            }
            return strW;
        }
        byte[] bArr = (byte[]) obj;
        String strB = f.b(bArr);
        if (f.a(bArr)) {
            this.b.set(i, strB);
        }
        return strB;
    }

    @Override
    public String remove(int i) {
        Object objRemove = this.b.remove(i);
        ((AbstractList) this).modCount++;
        return f(objRemove);
    }

    @Override
    public String set(int i, String str) {
        return f(this.b.set(i, str));
    }

    @Override
    public int size() {
        return this.b.size();
    }

    @Override
    public boolean addAll(int i, Collection collection) {
        if (collection instanceof pj5) {
            collection = ((pj5) collection).getUnderlyingElements();
        }
        boolean zAddAll = this.b.addAll(i, collection);
        ((AbstractList) this).modCount++;
        return zAddAll;
    }

    public oj5(pj5 pj5Var) {
        this.b = new ArrayList(pj5Var.size());
        addAll(pj5Var);
    }
}
