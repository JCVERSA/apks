package androidx.compose.runtime;

import java.util.ArrayList;
import java.util.List;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;

public final class r1 {

    private final List f3571a;

    /* JADX WARN: Multi-variable type inference failed */
    public r1() {
        this(null, 1, 0 == true ? 1 : 0);
    }

    public final void a(int i10) {
        if (!this.f3571a.isEmpty()) {
            if (((Number) this.f3571a.get(0)).intValue() == i10) {
                return;
            }
            List list = this.f3571a;
            if (((Number) list.get(list.size() - 1)).intValue() == i10) {
                return;
            }
        }
        int size = this.f3571a.size();
        this.f3571a.add(Integer.valueOf(i10));
        while (size > 0) {
            int i11 = ((size + 1) >>> 1) - 1;
            int iIntValue = ((Number) this.f3571a.get(i11)).intValue();
            if (i10 <= iIntValue) {
                break;
            }
            this.f3571a.set(size, Integer.valueOf(iIntValue));
            size = i11;
        }
        this.f3571a.set(size, Integer.valueOf(i10));
    }

    public final boolean b() {
        return !this.f3571a.isEmpty();
    }

    public final int c() {
        return ((Number) CollectionsKt.i0(this.f3571a)).intValue();
    }

    public final int d() {
        int iIntValue;
        if (!(this.f3571a.size() > 0)) {
            k.r("Set is empty");
        }
        int iIntValue2 = ((Number) this.f3571a.get(0)).intValue();
        while (!this.f3571a.isEmpty() && ((Number) this.f3571a.get(0)).intValue() == iIntValue2) {
            List list = this.f3571a;
            list.set(0, CollectionsKt.u0(list));
            List list2 = this.f3571a;
            list2.remove(list2.size() - 1);
            int size = this.f3571a.size();
            int size2 = this.f3571a.size() >>> 1;
            int i10 = 0;
            while (i10 < size2) {
                int iIntValue3 = ((Number) this.f3571a.get(i10)).intValue();
                int i11 = (i10 + 1) * 2;
                int i12 = i11 - 1;
                int iIntValue4 = ((Number) this.f3571a.get(i12)).intValue();
                if (i11 < size && (iIntValue = ((Number) this.f3571a.get(i11)).intValue()) > iIntValue4) {
                    if (iIntValue <= iIntValue3) {
                        break;
                    }
                    this.f3571a.set(i10, Integer.valueOf(iIntValue));
                    this.f3571a.set(i11, Integer.valueOf(iIntValue3));
                    i10 = i11;
                } else {
                    if (iIntValue4 <= iIntValue3) {
                        break;
                    }
                    this.f3571a.set(i10, Integer.valueOf(iIntValue4));
                    this.f3571a.set(i12, Integer.valueOf(iIntValue3));
                    i10 = i12;
                }
            }
        }
        return iIntValue2;
    }

    public r1(List list) {
        this.f3571a = list;
    }

    public r1(List list, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this((i10 & 1) != 0 ? new ArrayList() : list);
    }
}
