package androidx.compose.foundation.lazy;

import androidx.compose.foundation.lazy.layout.LazyLayoutPinnableItemKt;
import androidx.compose.runtime.g2;
import androidx.compose.runtime.v1;
import java.util.List;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;

final class LazyListItemProviderImpl implements k {

    private final LazyListState f2582a;

    private final LazyListIntervalContent f2583b;

    private final c f2584c;

    private final androidx.compose.foundation.lazy.layout.p f2585d;

    public LazyListItemProviderImpl(LazyListState lazyListState, LazyListIntervalContent lazyListIntervalContent, c cVar, androidx.compose.foundation.lazy.layout.p pVar) {
        this.f2582a = lazyListState;
        this.f2583b = lazyListIntervalContent;
        this.f2584c = cVar;
        this.f2585d = pVar;
    }

    @Override
    public int a(Object obj) {
        return e().a(obj);
    }

    @Override
    public Object b(int i10) {
        Object objB = e().b(i10);
        return objB == null ? this.f2583b.e(i10) : objB;
    }

    @Override
    public Object c(int i10) {
        return this.f2583b.b(i10);
    }

    @Override
    public c d() {
        return this.f2584c;
    }

    @Override
    public androidx.compose.foundation.lazy.layout.p e() {
        return this.f2585d;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof LazyListItemProviderImpl) {
            return Intrinsics.c(this.f2583b, ((LazyListItemProviderImpl) obj).f2583b);
        }
        return false;
    }

    @Override
    public List f() {
        return this.f2583b.f();
    }

    @Override
    public void g(final int i10, final Object obj, androidx.compose.runtime.i iVar, final int i11) {
        int i12;
        androidx.compose.runtime.i iVarG = iVar.g(-462424778);
        if ((i11 & 6) == 0) {
            i12 = (iVarG.c(i10) ? 4 : 2) | i11;
        } else {
            i12 = i11;
        }
        if ((i11 & 48) == 0) {
            i12 |= iVarG.A(obj) ? 32 : 16;
        }
        if ((i11 & 384) == 0) {
            i12 |= iVarG.O(this) ? 256 : 128;
        }
        if ((i12 & 147) == 146 && iVarG.h()) {
            iVarG.G();
        } else {
            if (androidx.compose.runtime.k.H()) {
                androidx.compose.runtime.k.Q(-462424778, i12, -1, "androidx.compose.foundation.lazy.LazyListItemProviderImpl.Item (LazyListItemProvider.kt:75)");
            }
            LazyLayoutPinnableItemKt.a(obj, i10, this.f2582a.w(), androidx.compose.runtime.internal.b.d(-824725566, true, new Function2<androidx.compose.runtime.i, Integer, Unit>() {
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(2);
                }

                @Override
                public Object invoke(Object obj2, Object obj3) {
                    invoke((androidx.compose.runtime.i) obj2, ((Number) obj3).intValue());
                    return Unit.f64096a;
                }

                public final void invoke(androidx.compose.runtime.i iVar2, int i13) {
                    if ((i13 & 3) == 2 && iVar2.h()) {
                        iVar2.G();
                        return;
                    }
                    if (androidx.compose.runtime.k.H()) {
                        androidx.compose.runtime.k.Q(-824725566, i13, -1, "androidx.compose.foundation.lazy.LazyListItemProviderImpl.Item.<anonymous> (LazyListItemProvider.kt:77)");
                    }
                    LazyListIntervalContent lazyListIntervalContent = this.this$0.f2583b;
                    int i14 = i10;
                    LazyListItemProviderImpl lazyListItemProviderImpl = this.this$0;
                    androidx.compose.foundation.lazy.layout.b.a aVar = lazyListIntervalContent.c().get(i14);
                    ((i) aVar.c()).a().invoke(lazyListItemProviderImpl.d(), Integer.valueOf(i14 - aVar.b()), iVar2, 0);
                    if (androidx.compose.runtime.k.H()) {
                        androidx.compose.runtime.k.P();
                    }
                }
            }, iVarG, 54), iVarG, ((i12 >> 3) & 14) | 3072 | ((i12 << 3) & 112));
            if (androidx.compose.runtime.k.H()) {
                androidx.compose.runtime.k.P();
            }
        }
        g2 g2VarJ = iVarG.j();
        if (g2VarJ != null) {
            g2VarJ.a(new Function2<androidx.compose.runtime.i, Integer, Unit>() {
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(2);
                }

                @Override
                public Object invoke(Object obj2, Object obj3) {
                    invoke((androidx.compose.runtime.i) obj2, ((Number) obj3).intValue());
                    return Unit.f64096a;
                }

                public final void invoke(androidx.compose.runtime.i iVar2, int i13) {
                    this.$tmp0_rcvr.g(i10, obj, iVar2, v1.a(i11 | 1));
                }
            });
        }
    }

    @Override
    public int getItemCount() {
        return this.f2583b.d();
    }

    public int hashCode() {
        return this.f2583b.hashCode();
    }
}
