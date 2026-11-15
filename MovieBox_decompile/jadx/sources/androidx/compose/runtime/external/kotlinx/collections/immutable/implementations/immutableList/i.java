package androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableList;

import java.util.NoSuchElementException;
import kotlin.jvm.internal.Intrinsics;

public final class i extends a {

    private int f3413c;

    private Object[] f3414d;

    private boolean f3415e;

    /* JADX WARN: Type inference failed for: r5v1 */
    /* JADX WARN: Type inference failed for: r5v2, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r5v3 */
    public i(Object[] objArr, int i10, int i11, int i12) {
        super(i10, i11);
        this.f3413c = i12;
        Object[] objArr2 = new Object[i12];
        this.f3414d = objArr2;
        ?? r10 = i10 == i11 ? 1 : 0;
        this.f3415e = r10;
        objArr2[0] = objArr;
        l(i10 - r10, 1);
    }

    private final Object j() {
        int iE = e() & 31;
        Object obj = this.f3414d[this.f3413c - 1];
        Intrinsics.f(obj, "null cannot be cast to non-null type kotlin.Array<E of androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableList.TrieIterator>");
        return ((Object[]) obj)[iE];
    }

    private final void l(int i10, int i11) {
        int i12 = (this.f3413c - i11) * 5;
        while (i11 < this.f3413c) {
            Object[] objArr = this.f3414d;
            Object obj = objArr[i11 - 1];
            Intrinsics.f(obj, "null cannot be cast to non-null type kotlin.Array<kotlin.Any?>");
            objArr[i11] = ((Object[]) obj)[j.a(i10, i12)];
            i12 -= 5;
            i11++;
        }
    }

    private final void m(int i10) {
        int i11 = 0;
        while (j.a(e(), i11) == i10) {
            i11 += 5;
        }
        if (i11 > 0) {
            l(e(), ((this.f3413c - 1) - (i11 / 5)) + 1);
        }
    }

    /* JADX WARN: Type inference failed for: r0v2 */
    /* JADX WARN: Type inference failed for: r0v3, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r0v4 */
    public final void n(Object[] objArr, int i10, int i11, int i12) {
        h(i10);
        i(i11);
        this.f3413c = i12;
        if (this.f3414d.length < i12) {
            this.f3414d = new Object[i12];
        }
        this.f3414d[0] = objArr;
        ?? r10 = i10 == i11 ? 1 : 0;
        this.f3415e = r10;
        l(i10 - r10, 1);
    }

    @Override
    public Object next() {
        if (!hasNext()) {
            throw new NoSuchElementException();
        }
        Object objJ = j();
        h(e() + 1);
        if (e() == f()) {
            this.f3415e = true;
            return objJ;
        }
        m(0);
        return objJ;
    }

    @Override
    public Object previous() {
        if (!hasPrevious()) {
            throw new NoSuchElementException();
        }
        h(e() - 1);
        if (this.f3415e) {
            this.f3415e = false;
            return j();
        }
        m(31);
        return j();
    }
}
