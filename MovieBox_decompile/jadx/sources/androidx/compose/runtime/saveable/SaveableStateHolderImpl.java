package androidx.compose.runtime.saveable;

import androidx.compose.runtime.CompositionLocalKt;
import androidx.compose.runtime.c0;
import androidx.compose.runtime.d0;
import androidx.compose.runtime.g0;
import androidx.compose.runtime.g2;
import androidx.compose.runtime.i;
import androidx.compose.runtime.k;
import androidx.compose.runtime.t1;
import androidx.compose.runtime.v1;
import com.vungle.ads.internal.protos.Sdk$SDKError;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.Unit;
import kotlin.collections.MapsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;

final class SaveableStateHolderImpl implements androidx.compose.runtime.saveable.a {

    public static final a f3585d = new a(null);

    private static final d f3586e = SaverKt.a(new Function2<e, SaveableStateHolderImpl, Map<Object, Map<String, ? extends List<? extends Object>>>>() {
        @Override
        public final Map<Object, Map<String, List<Object>>> invoke(e eVar, SaveableStateHolderImpl saveableStateHolderImpl) {
            return saveableStateHolderImpl.h();
        }
    }, new Function1<Map<Object, Map<String, ? extends List<? extends Object>>>, SaveableStateHolderImpl>() {
        @Override
        public final SaveableStateHolderImpl invoke(Map<Object, Map<String, List<Object>>> map) {
            return new SaveableStateHolderImpl(map);
        }
    });

    private final Map f3587a;

    private final Map f3588b;

    private b f3589c;

    public final class RegistryHolder {

        private final Object f3590a;

        private boolean f3591b = true;

        private final b f3592c;

        public RegistryHolder(Object obj) {
            this.f3590a = obj;
            this.f3592c = SaveableStateRegistryKt.a((Map) SaveableStateHolderImpl.this.f3587a.get(obj), new Function1<Object, Boolean>() {
                {
                    super(1);
                }

                @Override
                public final Boolean invoke(Object obj2) {
                    b bVarG = saveableStateHolderImpl.g();
                    return Boolean.valueOf(bVarG != null ? bVarG.a(obj2) : true);
                }
            });
        }

        public final b a() {
            return this.f3592c;
        }

        public final void b(Map map) {
            if (this.f3591b) {
                Map mapE = this.f3592c.e();
                if (mapE.isEmpty()) {
                    map.remove(this.f3590a);
                } else {
                    map.put(this.f3590a, mapE);
                }
            }
        }

        public final void c(boolean z10) {
            this.f3591b = z10;
        }
    }

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final d a() {
            return SaveableStateHolderImpl.f3586e;
        }

        private a() {
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public SaveableStateHolderImpl() {
        this(null, 1, 0 == true ? 1 : 0);
    }

    public final Map h() {
        Map mapW = MapsKt.w(this.f3587a);
        Iterator it = this.f3588b.values().iterator();
        while (it.hasNext()) {
            ((RegistryHolder) it.next()).b(mapW);
        }
        if (mapW.isEmpty()) {
            return null;
        }
        return mapW;
    }

    @Override
    public void c(Object obj) {
        RegistryHolder registryHolder = (RegistryHolder) this.f3588b.get(obj);
        if (registryHolder != null) {
            registryHolder.c(false);
        } else {
            this.f3587a.remove(obj);
        }
    }

    @Override
    public void d(final Object obj, final Function2 function2, i iVar, final int i10) {
        int i11;
        i iVarG = iVar.g(-1198538093);
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
            if (k.H()) {
                k.Q(-1198538093, i11, -1, "androidx.compose.runtime.saveable.SaveableStateHolderImpl.SaveableStateProvider (SaveableStateHolder.kt:75)");
            }
            iVarG.E(Sdk$SDKError.Reason.PLACEMENT_AD_TYPE_MISMATCH_VALUE, obj);
            Object objY = iVarG.y();
            i.a aVar = i.f3427a;
            if (objY == aVar.a()) {
                b bVar = this.f3589c;
                if (!(bVar != null ? bVar.a(obj) : true)) {
                    throw new IllegalArgumentException(("Type of the key " + obj + " is not supported. On Android you can only use types which can be stored inside the Bundle.").toString());
                }
                objY = new RegistryHolder(obj);
                iVarG.p(objY);
            }
            final RegistryHolder registryHolder = (RegistryHolder) objY;
            CompositionLocalKt.a(SaveableStateRegistryKt.d().d(registryHolder.a()), function2, iVarG, (i11 & 112) | t1.f3732i);
            Unit unit = Unit.f64096a;
            boolean zA = iVarG.A(this) | iVarG.A(obj) | iVarG.A(registryHolder);
            Object objY2 = iVarG.y();
            if (zA || objY2 == aVar.a()) {
                objY2 = new Function1<d0, c0>() {

                    public static final class a implements c0 {

                        final SaveableStateHolderImpl.RegistryHolder f3594a;

                        final SaveableStateHolderImpl f3595b;

                        final Object f3596c;

                        public a(SaveableStateHolderImpl.RegistryHolder registryHolder, SaveableStateHolderImpl saveableStateHolderImpl, Object obj) {
                            this.f3594a = registryHolder;
                            this.f3595b = saveableStateHolderImpl;
                            this.f3596c = obj;
                        }

                        @Override
                        public void dispose() {
                            this.f3594a.b(this.f3595b.f3587a);
                            this.f3595b.f3588b.remove(this.f3596c);
                        }
                    }

                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(1);
                    }

                    @Override
                    public final c0 invoke(d0 d0Var) {
                        boolean zContainsKey = this.this$0.f3588b.containsKey(obj);
                        Object obj2 = obj;
                        if (!zContainsKey) {
                            this.this$0.f3587a.remove(obj);
                            this.this$0.f3588b.put(obj, registryHolder);
                            return new a(registryHolder, this.this$0, obj);
                        }
                        throw new IllegalArgumentException(("Key " + obj2 + " was used multiple times ").toString());
                    }
                };
                iVarG.p(objY2);
            }
            g0.a(unit, (Function1) objY2, iVarG, 6);
            iVarG.w();
            if (k.H()) {
                k.P();
            }
        }
        g2 g2VarJ = iVarG.j();
        if (g2VarJ != null) {
            g2VarJ.a(new Function2<i, Integer, Unit>() {
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                /* JADX WARN: Multi-variable type inference failed */
                {
                    super(2);
                }

                @Override
                public Object invoke(Object obj2, Object obj3) {
                    invoke((i) obj2, ((Number) obj3).intValue());
                    return Unit.f64096a;
                }

                public final void invoke(i iVar2, int i12) {
                    this.$tmp0_rcvr.d(obj, function2, iVar2, v1.a(i10 | 1));
                }
            });
        }
    }

    public final b g() {
        return this.f3589c;
    }

    public final void i(b bVar) {
        this.f3589c = bVar;
    }

    public SaveableStateHolderImpl(Map map) {
        this.f3587a = map;
        this.f3588b = new LinkedHashMap();
    }

    public SaveableStateHolderImpl(Map map, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this((i10 & 1) != 0 ? new LinkedHashMap() : map);
    }
}
