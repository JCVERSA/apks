package androidx.compose.foundation.lazy.layout;

import androidx.compose.runtime.g2;
import androidx.compose.runtime.i1;
import androidx.compose.runtime.saveable.SaveableStateRegistryKt;
import androidx.compose.runtime.saveable.SaverKt;
import androidx.compose.runtime.u2;
import androidx.compose.runtime.v1;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;

final class LazySaveableStateHolder implements androidx.compose.runtime.saveable.b, androidx.compose.runtime.saveable.a {

    public static final Companion f2693d = new Companion(null);

    private final androidx.compose.runtime.saveable.b f2694a;

    private final i1 f2695b;

    private final Set f2696c;

    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final androidx.compose.runtime.saveable.d a(final androidx.compose.runtime.saveable.b bVar) {
            return SaverKt.a(new Function2<androidx.compose.runtime.saveable.e, LazySaveableStateHolder, Map<String, ? extends List<? extends Object>>>() {
                @Override
                public final Map<String, List<Object>> invoke(androidx.compose.runtime.saveable.e eVar, LazySaveableStateHolder lazySaveableStateHolder) {
                    Map<String, List<Object>> mapE = lazySaveableStateHolder.e();
                    if (mapE.isEmpty()) {
                        return null;
                    }
                    return mapE;
                }
            }, new Function1<Map<String, ? extends List<? extends Object>>, LazySaveableStateHolder>() {
                {
                    super(1);
                }

                @Override
                public final LazySaveableStateHolder invoke(Map<String, ? extends List<? extends Object>> map) {
                    return new LazySaveableStateHolder(bVar, map);
                }
            });
        }

        private Companion() {
        }
    }

    public LazySaveableStateHolder(androidx.compose.runtime.saveable.b bVar) {
        this.f2694a = bVar;
        this.f2695b = u2.c(null, null, 2, null);
        this.f2696c = new LinkedHashSet();
    }

    @Override
    public boolean a(Object obj) {
        return this.f2694a.a(obj);
    }

    @Override
    public androidx.compose.runtime.saveable.b.a b(String str, Function0 function0) {
        return this.f2694a.b(str, function0);
    }

    @Override
    public void c(Object obj) {
        androidx.compose.runtime.saveable.a aVarH = h();
        if (aVarH == null) {
            throw new IllegalArgumentException("null wrappedHolder");
        }
        aVarH.c(obj);
    }

    @Override
    public void d(final Object obj, final Function2 function2, androidx.compose.runtime.i iVar, final int i10) {
        int i11;
        androidx.compose.runtime.i iVarG = iVar.g(-697180401);
        if ((i10 & 6) == 0) {
            i11 = (iVarG.A(obj) ? 4 : 2) | i10;
        } else {
            i11 = i10;
        }
        if ((i10 & 48) == 0) {
            i11 |= iVarG.A(function2) ? 32 : 16;
        }
        if ((i10 & 384) == 0) {
            i11 |= iVarG.A(this) ? 256 : 128;
        }
        if ((i11 & 147) == 146 && iVarG.h()) {
            iVarG.G();
        } else {
            if (androidx.compose.runtime.k.H()) {
                androidx.compose.runtime.k.Q(-697180401, i11, -1, "androidx.compose.foundation.lazy.layout.LazySaveableStateHolder.SaveableStateProvider (LazySaveableStateHolder.kt:82)");
            }
            androidx.compose.runtime.saveable.a aVarH = h();
            if (aVarH == null) {
                throw new IllegalArgumentException("null wrappedHolder");
            }
            int i12 = i11 & 14;
            aVarH.d(obj, function2, iVarG, i11 & 126);
            boolean zA = iVarG.A(this) | iVarG.A(obj);
            Object objY = iVarG.y();
            if (zA || objY == androidx.compose.runtime.i.f3427a.a()) {
                objY = new Function1<androidx.compose.runtime.d0, androidx.compose.runtime.c0>() {

                    public static final class a implements androidx.compose.runtime.c0 {

                        final LazySaveableStateHolder f2697a;

                        final Object f2698b;

                        public a(LazySaveableStateHolder lazySaveableStateHolder, Object obj) {
                            this.f2697a = lazySaveableStateHolder;
                            this.f2698b = obj;
                        }

                        @Override
                        public void dispose() {
                            this.f2697a.f2696c.add(this.f2698b);
                        }
                    }

                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(1);
                    }

                    @Override
                    public final androidx.compose.runtime.c0 invoke(androidx.compose.runtime.d0 d0Var) {
                        this.this$0.f2696c.remove(obj);
                        return new a(this.this$0, obj);
                    }
                };
                iVarG.p(objY);
            }
            androidx.compose.runtime.g0.a(obj, (Function1) objY, iVarG, i12);
            if (androidx.compose.runtime.k.H()) {
                androidx.compose.runtime.k.P();
            }
        }
        g2 g2VarJ = iVarG.j();
        if (g2VarJ != null) {
            g2VarJ.a(new Function2<androidx.compose.runtime.i, Integer, Unit>() {
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                /* JADX WARN: Multi-variable type inference failed */
                {
                    super(2);
                }

                @Override
                public Object invoke(Object obj2, Object obj3) {
                    invoke((androidx.compose.runtime.i) obj2, ((Number) obj3).intValue());
                    return Unit.f64096a;
                }

                public final void invoke(androidx.compose.runtime.i iVar2, int i13) {
                    this.$tmp1_rcvr.d(obj, function2, iVar2, v1.a(i10 | 1));
                }
            });
        }
    }

    @Override
    public Map e() {
        androidx.compose.runtime.saveable.a aVarH = h();
        if (aVarH != null) {
            Iterator it = this.f2696c.iterator();
            while (it.hasNext()) {
                aVarH.c(it.next());
            }
        }
        return this.f2694a.e();
    }

    @Override
    public Object f(String str) {
        return this.f2694a.f(str);
    }

    public final androidx.compose.runtime.saveable.a h() {
        return (androidx.compose.runtime.saveable.a) this.f2695b.getValue();
    }

    public final void i(androidx.compose.runtime.saveable.a aVar) {
        this.f2695b.setValue(aVar);
    }

    public LazySaveableStateHolder(final androidx.compose.runtime.saveable.b bVar, Map map) {
        this(SaveableStateRegistryKt.a(map, new Function1<Object, Boolean>() {
            {
                super(1);
            }

            @Override
            public final Boolean invoke(Object obj) {
                androidx.compose.runtime.saveable.b bVar2 = bVar;
                return Boolean.valueOf(bVar2 != null ? bVar2.a(obj) : true);
            }
        }));
    }
}
