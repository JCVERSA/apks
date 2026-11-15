package n6;

import android.util.SparseIntArray;
import java.util.List;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

public abstract class a {

    private SparseIntArray f66934a;

    /* JADX WARN: Multi-variable type inference failed */
    public a() {
        this(null, 1, 0 == true ? 1 : 0);
    }

    public abstract int a(List list, int i10);

    public final int b(int i10) {
        int i11 = this.f66934a.get(i10);
        if (i11 != 0) {
            return i11;
        }
        throw new IllegalArgumentException(("ViewType: " + i10 + " found layoutResId，please use registerItemType() first!").toString());
    }

    public a(SparseIntArray layouts) {
        Intrinsics.h(layouts, "layouts");
        this.f66934a = layouts;
    }

    public a(SparseIntArray sparseIntArray, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this((i10 & 1) != 0 ? new SparseIntArray() : sparseIntArray);
    }
}
