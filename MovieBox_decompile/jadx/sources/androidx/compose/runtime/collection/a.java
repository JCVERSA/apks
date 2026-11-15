package androidx.compose.runtime.collection;

import android.util.SparseArray;
import kotlin.jvm.internal.DefaultConstructorMarker;

public final class a {

    private final SparseArray f3370a;

    private a(SparseArray sparseArray) {
        this.f3370a = sparseArray;
    }

    public final Object a(int i10) {
        return this.f3370a.get(i10);
    }

    public final void b(int i10, Object obj) {
        this.f3370a.put(i10, obj);
    }

    public a(int i10) {
        this(new SparseArray(i10));
    }

    public a(int i10, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this((i11 & 1) != 0 ? 10 : i10);
    }
}
