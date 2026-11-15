package defpackage;

import com.transsion.hubsdk.api.provider.TranSearchIndexablesContract;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import kotlinx.serialization.SerializationException;
import kotlinx.serialization.descriptors.a;

public abstract class e28 {
    public static final a[] a = new a[0];

    public static final Set a(a aVar) {
        y45.j(aVar, "<this>");
        if (aVar instanceof gq0) {
            return ((gq0) aVar).a();
        }
        HashSet hashSet = new HashSet(aVar.e());
        int iE = aVar.e();
        for (int i = 0; i < iE; i++) {
            hashSet.add(aVar.f(i));
        }
        return hashSet;
    }

    public static final a[] b(List list) {
        a[] aVarArr;
        List list2 = list;
        if (list2 == null || list2.isEmpty()) {
            list = null;
        }
        return (list == null || (aVarArr = (a[]) list.toArray(new a[0])) == null) ? a : aVarArr;
    }

    public static final de5 c(ff5 ff5Var) {
        y45.j(ff5Var, "<this>");
        he5 he5VarJ = ff5Var.j();
        if (he5VarJ instanceof de5) {
            return (de5) he5VarJ;
        }
        if (!(he5VarJ instanceof hf5)) {
            throw new IllegalStateException(("Only KClass supported as classifier, got " + he5VarJ).toString());
        }
        throw new IllegalStateException(("Captured type parameter " + he5VarJ + " from generic non-reified function. Such functionality cannot be supported as " + he5VarJ + " is erased, either specify serializer explicitly or make calling function inline with reified " + he5VarJ).toString());
    }

    public static final String d(de5 de5Var) {
        y45.j(de5Var, "<this>");
        String strO = de5Var.o();
        if (strO == null) {
            strO = "<local class name not available>";
        }
        return e(strO);
    }

    public static final String e(String str) {
        y45.j(str, TranSearchIndexablesContract.TranBaseColumns.COLUMN_CLASS_NAME);
        return "Serializer for class '" + str + "' is not found.\nPlease ensure that class is marked as '@Serializable' and that the serialization compiler plugin is applied.\n";
    }

    public static final Void f(de5 de5Var) {
        y45.j(de5Var, "<this>");
        throw new SerializationException(d(de5Var));
    }
}
