package androidx.compose.foundation.lazy.layout;

import androidx.compose.runtime.a3;
import androidx.compose.runtime.g2;
import androidx.compose.runtime.r2;
import androidx.compose.runtime.v1;
import androidx.compose.ui.layout.SubcomposeLayoutKt;
import androidx.compose.ui.layout.SubcomposeLayoutState;
import androidx.compose.ui.layout.o0;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;

public abstract class LazyLayoutKt {
    public static final void a(final Function0 function0, final androidx.compose.ui.f fVar, final x xVar, final Function2 function2, androidx.compose.runtime.i iVar, final int i10, final int i11) {
        int i12;
        androidx.compose.runtime.i iVarG = iVar.g(2002163445);
        if ((i11 & 1) != 0) {
            i12 = i10 | 6;
        } else if ((i10 & 6) == 0) {
            i12 = (iVarG.A(function0) ? 4 : 2) | i10;
        } else {
            i12 = i10;
        }
        int i13 = i11 & 2;
        if (i13 != 0) {
            i12 |= 48;
        } else if ((i10 & 48) == 0) {
            i12 |= iVarG.O(fVar) ? 32 : 16;
        }
        int i14 = i11 & 4;
        if (i14 != 0) {
            i12 |= 384;
        } else if ((i10 & 384) == 0) {
            i12 |= iVarG.O(xVar) ? 256 : 128;
        }
        if ((i11 & 8) != 0) {
            i12 |= 3072;
        } else if ((i10 & 3072) == 0) {
            i12 |= iVarG.A(function2) ? 2048 : 1024;
        }
        if ((i12 & 1171) == 1170 && iVarG.h()) {
            iVarG.G();
        } else {
            if (i13 != 0) {
                fVar = androidx.compose.ui.f.f3869a;
            }
            if (i14 != 0) {
                xVar = null;
            }
            if (androidx.compose.runtime.k.H()) {
                androidx.compose.runtime.k.Q(2002163445, i12, -1, "androidx.compose.foundation.lazy.layout.LazyLayout (LazyLayout.kt:78)");
            }
            final a3 a3VarI = r2.i(function0, iVarG, i12 & 14);
            LazySaveableStateHolderKt.a(androidx.compose.runtime.internal.b.d(-1488997347, true, new Function3<androidx.compose.runtime.saveable.a, androidx.compose.runtime.i, Integer, Unit>() {
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                /* JADX WARN: Multi-variable type inference failed */
                {
                    super(3);
                }

                @Override
                public Object invoke(Object obj, Object obj2, Object obj3) {
                    invoke((androidx.compose.runtime.saveable.a) obj, (androidx.compose.runtime.i) obj2, ((Number) obj3).intValue());
                    return Unit.f64096a;
                }

                public final void invoke(androidx.compose.runtime.saveable.a aVar, androidx.compose.runtime.i iVar2, int i15) {
                    if (androidx.compose.runtime.k.H()) {
                        androidx.compose.runtime.k.Q(-1488997347, i15, -1, "androidx.compose.foundation.lazy.layout.LazyLayout.<anonymous> (LazyLayout.kt:82)");
                    }
                    final a3 a3Var = a3VarI;
                    Object objY = iVar2.y();
                    androidx.compose.runtime.i.a aVar2 = androidx.compose.runtime.i.f3427a;
                    if (objY == aVar2.a()) {
                        objY = new LazyLayoutItemContentFactory(aVar, new Function0<m>() {
                            {
                                super(0);
                            }

                            @Override
                            public final m invoke() {
                                return (m) ((Function0) a3Var.getValue()).invoke();
                            }
                        });
                        iVar2.p(objY);
                    }
                    final LazyLayoutItemContentFactory lazyLayoutItemContentFactory = (LazyLayoutItemContentFactory) objY;
                    Object objY2 = iVar2.y();
                    if (objY2 == aVar2.a()) {
                        objY2 = new SubcomposeLayoutState(new o(lazyLayoutItemContentFactory));
                        iVar2.p(objY2);
                    }
                    final SubcomposeLayoutState subcomposeLayoutState = (SubcomposeLayoutState) objY2;
                    if (xVar != null) {
                        iVar2.P(205264983);
                        final i0 i0VarD = xVar.d();
                        if (i0VarD == null) {
                            iVar2.P(6622915);
                            i0VarD = j0.a(iVar2, 0);
                        } else {
                            iVar2.P(6621830);
                        }
                        iVar2.K();
                        Object[] objArr = {xVar, lazyLayoutItemContentFactory, subcomposeLayoutState, i0VarD};
                        boolean zO = iVar2.O(xVar) | iVar2.A(lazyLayoutItemContentFactory) | iVar2.A(subcomposeLayoutState) | iVar2.A(i0VarD);
                        final x xVar2 = xVar;
                        Object objY3 = iVar2.y();
                        if (zO || objY3 == aVar2.a()) {
                            objY3 = new Function1<androidx.compose.runtime.d0, androidx.compose.runtime.c0>() {

                                public static final class a implements androidx.compose.runtime.c0 {

                                    final x f2678a;

                                    public a(x xVar) {
                                        this.f2678a = xVar;
                                    }

                                    @Override
                                    public void dispose() {
                                        this.f2678a.f(null);
                                    }
                                }

                                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                                {
                                    super(1);
                                }

                                @Override
                                public final androidx.compose.runtime.c0 invoke(androidx.compose.runtime.d0 d0Var) {
                                    xVar2.f(new PrefetchHandleProvider(lazyLayoutItemContentFactory, subcomposeLayoutState, i0VarD));
                                    return new a(xVar2);
                                }
                            };
                            iVar2.p(objY3);
                        }
                        androidx.compose.runtime.g0.b(objArr, (Function1) objY3, iVar2, 0);
                        iVar2.K();
                    } else {
                        iVar2.P(205858881);
                        iVar2.K();
                    }
                    androidx.compose.ui.f fVarB = y.b(fVar, xVar);
                    boolean zO2 = iVar2.O(lazyLayoutItemContentFactory) | iVar2.O(function2);
                    final Function2<q, o0.b, androidx.compose.ui.layout.v> function3 = function2;
                    Object objY4 = iVar2.y();
                    if (zO2 || objY4 == aVar2.a()) {
                        objY4 = new Function2<o0, o0.b, androidx.compose.ui.layout.v>() {
                            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                            /* JADX WARN: Multi-variable type inference failed */
                            {
                                super(2);
                            }

                            @Override
                            public Object invoke(Object obj, Object obj2) {
                                return m47invoke0kLqBqw((o0) obj, ((o0.b) obj2).r());
                            }

                            public final androidx.compose.ui.layout.v m47invoke0kLqBqw(o0 o0Var, long j10) {
                                return (androidx.compose.ui.layout.v) function3.invoke(new r(lazyLayoutItemContentFactory, o0Var), o0.b.a(j10));
                            }
                        };
                        iVar2.p(objY4);
                    }
                    SubcomposeLayoutKt.b(subcomposeLayoutState, fVarB, (Function2) objY4, iVar2, SubcomposeLayoutState.f4843f, 0);
                    if (androidx.compose.runtime.k.H()) {
                        androidx.compose.runtime.k.P();
                    }
                }
            }, iVarG, 54), iVarG, 6);
            if (androidx.compose.runtime.k.H()) {
                androidx.compose.runtime.k.P();
            }
        }
        final androidx.compose.ui.f fVar2 = fVar;
        final x xVar2 = xVar;
        g2 g2VarJ = iVarG.j();
        if (g2VarJ != null) {
            g2VarJ.a(new Function2<androidx.compose.runtime.i, Integer, Unit>() {
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                /* JADX WARN: Multi-variable type inference failed */
                {
                    super(2);
                }

                @Override
                public Object invoke(Object obj, Object obj2) {
                    invoke((androidx.compose.runtime.i) obj, ((Number) obj2).intValue());
                    return Unit.f64096a;
                }

                public final void invoke(androidx.compose.runtime.i iVar2, int i15) {
                    LazyLayoutKt.a(function0, fVar2, xVar2, function2, iVar2, v1.a(i10 | 1), i11);
                }
            });
        }
    }
}
