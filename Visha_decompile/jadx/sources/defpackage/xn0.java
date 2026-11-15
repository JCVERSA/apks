package defpackage;

import android.os.Bundle;
import android.util.SparseArray;
import com.google.android.exoplayer2.e;
import com.google.common.collect.ImmutableList;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;

public abstract class xn0 {
    public static void a(Bundle bundle) {
        if (bundle != null) {
            bundle.setClassLoader((ClassLoader) blb.j(xn0.class.getClassLoader()));
        }
    }

    public static ImmutableList b(e.a aVar, List list) {
        ImmutableList.a aVarBuilder = ImmutableList.builder();
        for (int i = 0; i < list.size(); i++) {
            aVarBuilder.a(aVar.fromBundle((Bundle) zi.e((Bundle) list.get(i))));
        }
        return aVarBuilder.e();
    }

    public static SparseArray c(e.a aVar, SparseArray sparseArray) {
        SparseArray sparseArray2 = new SparseArray(sparseArray.size());
        for (int i = 0; i < sparseArray.size(); i++) {
            sparseArray2.put(sparseArray.keyAt(i), aVar.fromBundle((Bundle) sparseArray.valueAt(i)));
        }
        return sparseArray2;
    }

    public static ArrayList d(Collection collection) {
        ArrayList arrayList = new ArrayList(collection.size());
        Iterator it = collection.iterator();
        while (it.hasNext()) {
            arrayList.add(((e) it.next()).toBundle());
        }
        return arrayList;
    }

    public static SparseArray e(SparseArray sparseArray) {
        SparseArray sparseArray2 = new SparseArray(sparseArray.size());
        for (int i = 0; i < sparseArray.size(); i++) {
            sparseArray2.put(sparseArray.keyAt(i), ((e) sparseArray.valueAt(i)).toBundle());
        }
        return sparseArray2;
    }
}
