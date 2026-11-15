package defpackage;

import java.util.ArrayList;
import java.util.Iterator;
import kotlinx.serialization.descriptors.a;

public final class mp8 extends n71 {
    public final de5 b;
    public final a c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public mp8(de5 de5Var, ef5 ef5Var) {
        super(ef5Var, null);
        y45.j(de5Var, "kClass");
        y45.j(ef5Var, "eSerializer");
        this.b = de5Var;
        this.c = new fg(ef5Var.getDescriptor());
    }

    @Override
    public a getDescriptor() {
        return this.c;
    }

    @Override
    public ArrayList a() {
        return new ArrayList();
    }

    @Override
    public int b(ArrayList arrayList) {
        y45.j(arrayList, "<this>");
        return arrayList.size();
    }

    @Override
    public void c(ArrayList arrayList, int i) {
        y45.j(arrayList, "<this>");
        arrayList.ensureCapacity(i);
    }

    @Override
    public Iterator d(Object[] objArr) {
        y45.j(objArr, "<this>");
        return xg.a(objArr);
    }

    @Override
    public int e(Object[] objArr) {
        y45.j(objArr, "<this>");
        return objArr.length;
    }

    @Override
    public void n(ArrayList arrayList, int i, Object obj) {
        y45.j(arrayList, "<this>");
        arrayList.add(i, obj);
    }

    @Override
    public ArrayList k(Object[] objArr) {
        y45.j(objArr, "<this>");
        return new ArrayList(fi.f(objArr));
    }

    @Override
    public Object[] l(ArrayList arrayList) {
        y45.j(arrayList, "<this>");
        return a28.m(arrayList, this.b);
    }
}
