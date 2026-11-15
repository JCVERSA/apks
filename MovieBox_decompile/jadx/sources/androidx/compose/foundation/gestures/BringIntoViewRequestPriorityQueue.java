package androidx.compose.foundation.gestures;

import java.util.concurrent.CancellationException;
import kotlin.Result;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.IntRange;

public final class BringIntoViewRequestPriorityQueue {

    public static final int f2319b = androidx.compose.runtime.collection.b.f3371d;

    private final androidx.compose.runtime.collection.b f2320a = new androidx.compose.runtime.collection.b(new ContentInViewNode.a[16], 0);

    public final void b(Throwable th2) {
        androidx.compose.runtime.collection.b bVar = this.f2320a;
        int iN = bVar.n();
        kotlinx.coroutines.n[] nVarArr = new kotlinx.coroutines.n[iN];
        for (int i10 = 0; i10 < iN; i10++) {
            nVarArr[i10] = ((ContentInViewNode.a) bVar.m()[i10]).a();
        }
        for (int i11 = 0; i11 < iN; i11++) {
            nVarArr[i11].cancel(th2);
        }
        if (!this.f2320a.p()) {
            throw new IllegalStateException("uncancelled requests present");
        }
    }

    public final boolean c(final ContentInViewNode.a aVar) {
        y.i iVar = (y.i) aVar.b().invoke();
        if (iVar == null) {
            kotlinx.coroutines.n nVarA = aVar.a();
            Result.Companion companion = Result.INSTANCE;
            nVarA.resumeWith(Result.m453constructorimpl(Unit.f64096a));
            return false;
        }
        aVar.a().invokeOnCancellation(new Function1<Throwable, Unit>() {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override
            public Object invoke(Object obj) {
                invoke((Throwable) obj);
                return Unit.f64096a;
            }

            public final void invoke(Throwable th2) {
                this.this$0.f2320a.t(aVar);
            }
        });
        IntRange intRange = new IntRange(0, this.f2320a.n() - 1);
        int first = intRange.getFirst();
        int last = intRange.getLast();
        if (first <= last) {
            while (true) {
                y.i iVar2 = (y.i) ((ContentInViewNode.a) this.f2320a.m()[last]).b().invoke();
                if (iVar2 != null) {
                    y.i iVarM = iVar.m(iVar2);
                    if (!Intrinsics.c(iVarM, iVar)) {
                        if (!Intrinsics.c(iVarM, iVar2)) {
                            CancellationException cancellationException = new CancellationException("bringIntoView call interrupted by a newer, non-overlapping call");
                            int iN = this.f2320a.n() - 1;
                            if (iN <= last) {
                                while (true) {
                                    ((ContentInViewNode.a) this.f2320a.m()[last]).a().cancel(cancellationException);
                                    if (iN == last) {
                                        break;
                                    }
                                    iN++;
                                }
                            }
                        }
                    } else {
                        this.f2320a.a(last + 1, aVar);
                        return true;
                    }
                }
                if (last != first) {
                    last--;
                }
            }
        }
        this.f2320a.a(0, aVar);
        return true;
    }

    public final void d() {
        IntRange intRange = new IntRange(0, this.f2320a.n() - 1);
        int first = intRange.getFirst();
        int last = intRange.getLast();
        if (first <= last) {
            while (true) {
                ((ContentInViewNode.a) this.f2320a.m()[first]).a().resumeWith(Result.m453constructorimpl(Unit.f64096a));
                if (first == last) {
                    break;
                } else {
                    first++;
                }
            }
        }
        this.f2320a.h();
    }
}
