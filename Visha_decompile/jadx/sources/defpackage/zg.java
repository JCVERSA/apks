package defpackage;

import java.util.ArrayList;
import java.util.List;
import kotlinx.serialization.descriptors.a;

public final class zg extends q71 {
    public final a b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zg(ef5 ef5Var) {
        super(ef5Var);
        y45.j(ef5Var, "element");
        this.b = new yg(ef5Var.getDescriptor());
    }

    @Override
    public a getDescriptor() {
        return this.b;
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
    public void n(ArrayList arrayList, int i, Object obj) {
        y45.j(arrayList, "<this>");
        arrayList.add(i, obj);
    }

    @Override
    public ArrayList k(List list) {
        y45.j(list, "<this>");
        ArrayList arrayList = list instanceof ArrayList ? (ArrayList) list : null;
        return arrayList == null ? new ArrayList(list) : arrayList;
    }

    @Override
    public List l(ArrayList arrayList) {
        y45.j(arrayList, "<this>");
        return arrayList;
    }
}
