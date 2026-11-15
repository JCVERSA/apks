package androidx.compose.foundation.lazy.layout;

import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;

public final class LazyLayoutItemContentFactory {

    private final androidx.compose.runtime.saveable.a f2669a;

    private final Function0 f2670b;

    private final Map f2671c = new LinkedHashMap();

    final class CachedItemContent {

        private final Object f2672a;

        private final Object f2673b;

        private int f2674c;

        private Function2 f2675d;

        public CachedItemContent(int i10, Object obj, Object obj2) {
            this.f2672a = obj;
            this.f2673b = obj2;
            this.f2674c = i10;
        }

        private final Function2 c() {
            final LazyLayoutItemContentFactory lazyLayoutItemContentFactory = LazyLayoutItemContentFactory.this;
            return androidx.compose.runtime.internal.b.b(1403994769, true, new Function2<androidx.compose.runtime.i, Integer, Unit>() {
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(2);
                }

                @Override
                public Object invoke(Object obj, Object obj2) {
                    invoke((androidx.compose.runtime.i) obj, ((Number) obj2).intValue());
                    return Unit.f64096a;
                }

                public final void invoke(androidx.compose.runtime.i iVar, int i10) {
                    if ((i10 & 3) == 2 && iVar.h()) {
                        iVar.G();
                        return;
                    }
                    if (androidx.compose.runtime.k.H()) {
                        androidx.compose.runtime.k.Q(1403994769, i10, -1, "androidx.compose.foundation.lazy.layout.LazyLayoutItemContentFactory.CachedItemContent.createContentLambda.<anonymous> (LazyLayoutItemContentFactory.kt:91)");
                    }
                    m mVar = (m) lazyLayoutItemContentFactory.d().invoke();
                    int iF = this.f();
                    if ((iF >= mVar.getItemCount() || !Intrinsics.c(mVar.b(iF), this.g())) && (iF = mVar.a(this.g())) != -1) {
                        this.f2674c = iF;
                    }
                    int i11 = iF;
                    if (i11 != -1) {
                        iVar.P(-660479623);
                        LazyLayoutItemContentFactoryKt.a(mVar, k0.a(lazyLayoutItemContentFactory.f2669a), i11, k0.a(this.g()), iVar, 0);
                        iVar.K();
                    } else {
                        iVar.P(-660272047);
                        iVar.K();
                    }
                    Object objG = this.g();
                    boolean zA = iVar.A(this);
                    final LazyLayoutItemContentFactory.CachedItemContent cachedItemContent = this;
                    Object objY = iVar.y();
                    if (zA || objY == androidx.compose.runtime.i.f3427a.a()) {
                        objY = new Function1<androidx.compose.runtime.d0, androidx.compose.runtime.c0>() {

                            public static final class a implements androidx.compose.runtime.c0 {

                                final LazyLayoutItemContentFactory.CachedItemContent f2677a;

                                public a(LazyLayoutItemContentFactory.CachedItemContent cachedItemContent) {
                                    this.f2677a = cachedItemContent;
                                }

                                @Override
                                public void dispose() {
                                    this.f2677a.f2675d = null;
                                }
                            }

                            {
                                super(1);
                            }

                            @Override
                            public final androidx.compose.runtime.c0 invoke(androidx.compose.runtime.d0 d0Var) {
                                return new a(cachedItemContent);
                            }
                        };
                        iVar.p(objY);
                    }
                    androidx.compose.runtime.g0.a(objG, (Function1) objY, iVar, 0);
                    if (androidx.compose.runtime.k.H()) {
                        androidx.compose.runtime.k.P();
                    }
                }
            });
        }

        public final Function2 d() {
            Function2 function2 = this.f2675d;
            if (function2 != null) {
                return function2;
            }
            Function2 function2C = c();
            this.f2675d = function2C;
            return function2C;
        }

        public final Object e() {
            return this.f2673b;
        }

        public final int f() {
            return this.f2674c;
        }

        public final Object g() {
            return this.f2672a;
        }
    }

    public LazyLayoutItemContentFactory(androidx.compose.runtime.saveable.a aVar, Function0 function0) {
        this.f2669a = aVar;
        this.f2670b = function0;
    }

    public final Function2 b(int i10, Object obj, Object obj2) {
        CachedItemContent cachedItemContent = (CachedItemContent) this.f2671c.get(obj);
        if (cachedItemContent != null && cachedItemContent.f() == i10 && Intrinsics.c(cachedItemContent.e(), obj2)) {
            return cachedItemContent.d();
        }
        CachedItemContent cachedItemContent2 = new CachedItemContent(i10, obj, obj2);
        this.f2671c.put(obj, cachedItemContent2);
        return cachedItemContent2.d();
    }

    public final Object c(Object obj) {
        if (obj == null) {
            return null;
        }
        CachedItemContent cachedItemContent = (CachedItemContent) this.f2671c.get(obj);
        if (cachedItemContent != null) {
            return cachedItemContent.e();
        }
        m mVar = (m) this.f2670b.invoke();
        int iA = mVar.a(obj);
        if (iA != -1) {
            return mVar.c(iA);
        }
        return null;
    }

    public final Function0 d() {
        return this.f2670b;
    }
}
