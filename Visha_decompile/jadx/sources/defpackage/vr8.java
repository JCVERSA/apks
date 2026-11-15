package defpackage;

import android.view.View;
import androidx.collection.SparseArrayCompat;
import com.yandex.div.R;

public abstract class vr8 {
    /* JADX WARN: Multi-variable type inference failed */
    public static final qj3 a(View view) {
        y45.j(view, "<this>");
        if (view instanceof qj3) {
            return (qj3) view;
        }
        int i = R.id.div_releasable_list;
        Object tag = view.getTag(i);
        SparseArrayCompat sparseArrayCompat = tag instanceof SparseArrayCompat ? (SparseArrayCompat) tag : null;
        if (sparseArrayCompat == null) {
            sparseArrayCompat = new SparseArrayCompat();
            view.setTag(i, sparseArrayCompat);
        }
        Object obj = sparseArrayCompat.get(0);
        qj3 qj3Var = obj instanceof qj3 ? (qj3) obj : null;
        if (qj3Var != null) {
            return qj3Var;
        }
        rj3 rj3Var = new rj3();
        sparseArrayCompat.put(0, rj3Var);
        return rj3Var;
    }

    public static final Iterable b(View view) {
        y45.j(view, "<this>");
        Object tag = view.getTag(R.id.div_releasable_list);
        SparseArrayCompat sparseArrayCompat = tag instanceof SparseArrayCompat ? (SparseArrayCompat) tag : null;
        if (sparseArrayCompat != null) {
            return ou9.a(sparseArrayCompat);
        }
        return null;
    }
}
