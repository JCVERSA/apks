package androidx.compose.foundation.lazy.layout;

import androidx.collection.p0;
import androidx.collection.q0;
import kotlin.Unit;
import kotlin.collections.ArraysKt;
import kotlin.jvm.functions.Function1;
import kotlin.ranges.IntRange;

public final class NearestRangeKeyIndexMap implements p {

    private final p0 f2699b;

    private final Object[] f2700c;

    private final int f2701d;

    public NearestRangeKeyIndexMap(IntRange intRange, j jVar) {
        b bVarC = jVar.c();
        final int first = intRange.getFirst();
        if (first < 0) {
            throw new IllegalStateException("negative nearestRange.first");
        }
        final int iMin = Math.min(intRange.getLast(), bVarC.getSize() - 1);
        if (iMin < first) {
            this.f2699b = q0.a();
            this.f2700c = new Object[0];
            this.f2701d = 0;
        } else {
            int i10 = (iMin - first) + 1;
            this.f2700c = new Object[i10];
            this.f2701d = first;
            final androidx.collection.k0 k0Var = new androidx.collection.k0(i10);
            bVarC.a(first, iMin, new Function1<b.a, Unit>() {
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(1);
                }

                @Override
                public Object invoke(Object obj) {
                    invoke((b.a) obj);
                    return Unit.f64096a;
                }

                /* JADX WARN: Code duplicated, block: B:7:0x0039  */
                public final void invoke(b.a aVar) {
                    Object objA;
                    Function1 key = ((j.a) aVar.c()).getKey();
                    int iMax = Math.max(first, aVar.b());
                    int iMin2 = Math.min(iMin, (aVar.b() + aVar.a()) - 1);
                    if (iMax > iMin2) {
                        return;
                    }
                    while (true) {
                        if (key == null) {
                            objA = b0.a(iMax);
                        } else {
                            objA = key.invoke(Integer.valueOf(iMax - aVar.b()));
                            if (objA == null) {
                                objA = b0.a(iMax);
                            }
                        }
                        k0Var.r(objA, iMax);
                        this.f2700c[iMax - this.f2701d] = objA;
                        if (iMax == iMin2) {
                            return;
                        } else {
                            iMax++;
                        }
                    }
                }
            });
            this.f2699b = k0Var;
        }
    }

    @Override
    public int a(Object obj) {
        p0 p0Var = this.f2699b;
        int iA = p0Var.a(obj);
        if (iA >= 0) {
            return p0Var.f2007c[iA];
        }
        return -1;
    }

    @Override
    public Object b(int i10) {
        Object[] objArr = this.f2700c;
        int i11 = i10 - this.f2701d;
        if (i11 < 0 || i11 > ArraysKt.Y(objArr)) {
            return null;
        }
        return objArr[i11];
    }
}
