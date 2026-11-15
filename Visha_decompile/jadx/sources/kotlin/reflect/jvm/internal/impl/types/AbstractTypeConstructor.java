package kotlin.reflect.jvm.internal.impl.types;

import defpackage.c74;
import defpackage.e74;
import defpackage.eh5;
import defpackage.hh5;
import defpackage.i81;
import defpackage.id3;
import defpackage.ox0;
import defpackage.px0;
import defpackage.sbb;
import defpackage.t6a;
import defpackage.vx9;
import defpackage.x17;
import defpackage.x71;
import defpackage.y45;
import defpackage.y71;
import defpackage.yi5;
import defpackage.zfb;
import java.util.Collection;
import java.util.List;
import kotlin.LazyThreadSafetyMode;

public abstract class AbstractTypeConstructor extends ox0 {
    public final x17 b;
    public final boolean c;

    public final class ModuleViewTypeConstructor implements sbb {
        public final kotlin.reflect.jvm.internal.impl.types.checker.c a;
        public final yi5 b;
        public final AbstractTypeConstructor c;

        public ModuleViewTypeConstructor(final AbstractTypeConstructor abstractTypeConstructor, kotlin.reflect.jvm.internal.impl.types.checker.c cVar) {
            y45.j(cVar, "kotlinTypeRefiner");
            this.c = abstractTypeConstructor;
            this.a = cVar;
            this.b = kotlin.b.b(LazyThreadSafetyMode.PUBLICATION, new c74() {
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(0);
                }

                @Override
                public final List<eh5> invoke() {
                    return hh5.b(this.this$0.a, abstractTypeConstructor.k());
                }
            });
        }

        @Override
        public sbb a(kotlin.reflect.jvm.internal.impl.types.checker.c cVar) {
            y45.j(cVar, "kotlinTypeRefiner");
            return this.c.a(cVar);
        }

        @Override
        public px0 c() {
            return this.c.c();
        }

        @Override
        public boolean d() {
            return this.c.d();
        }

        public boolean equals(Object obj) {
            return this.c.equals(obj);
        }

        public final List f() {
            return (List) this.b.getValue();
        }

        @Override
        public List k() {
            return f();
        }

        @Override
        public List getParameters() {
            List parameters = this.c.getParameters();
            y45.i(parameters, "this@AbstractTypeConstructor.parameters");
            return parameters;
        }

        public int hashCode() {
            return this.c.hashCode();
        }

        @Override
        public kotlin.reflect.jvm.internal.impl.builtins.d o() {
            kotlin.reflect.jvm.internal.impl.builtins.d dVarO = this.c.o();
            y45.i(dVarO, "this@AbstractTypeConstructor.builtIns");
            return dVarO;
        }

        public String toString() {
            return this.c.toString();
        }
    }

    public static final class a {
        public final Collection a;
        public List b;

        public a(Collection collection) {
            y45.j(collection, "allSupertypes");
            this.a = collection;
            this.b = x71.e(id3.a.l());
        }

        public final Collection a() {
            return this.a;
        }

        public final List b() {
            return this.b;
        }

        public final void c(List list) {
            y45.j(list, "<set-?>");
            this.b = list;
        }
    }

    public AbstractTypeConstructor(vx9 vx9Var) {
        y45.j(vx9Var, "storageManager");
        this.b = vx9Var.d(new c74() {
            {
                super(0);
            }

            @Override
            public final AbstractTypeConstructor.a invoke() {
                return new AbstractTypeConstructor.a(this.this$0.j());
            }
        }, new e74() {
            @Override
            public Object invoke(Object obj) {
                return invoke(((Boolean) obj).booleanValue());
            }

            public final AbstractTypeConstructor.a invoke(boolean z) {
                return new AbstractTypeConstructor.a(x71.e(id3.a.l()));
            }
        }, new e74() {
            {
                super(1);
            }

            @Override
            public Object invoke(Object obj) {
                invoke((AbstractTypeConstructor.a) obj);
                return zfb.a;
            }

            public final void invoke(AbstractTypeConstructor.a aVar) {
                y45.j(aVar, "supertypes");
                t6a t6aVarP = this.this$0.p();
                AbstractTypeConstructor abstractTypeConstructor = this.this$0;
                Collection collectionA = aVar.a();
                final AbstractTypeConstructor abstractTypeConstructor2 = this.this$0;
                e74 e74Var = new e74() {
                    {
                        super(1);
                    }

                    @Override
                    public final Iterable<eh5> invoke(sbb sbbVar) {
                        y45.j(sbbVar, "it");
                        return abstractTypeConstructor2.i(sbbVar, false);
                    }
                };
                final AbstractTypeConstructor abstractTypeConstructor3 = this.this$0;
                List listA = t6aVarP.a(abstractTypeConstructor, collectionA, e74Var, new e74() {
                    {
                        super(1);
                    }

                    @Override
                    public Object invoke(Object obj) {
                        invoke((eh5) obj);
                        return zfb.a;
                    }

                    public final void invoke(eh5 eh5Var) {
                        y45.j(eh5Var, "it");
                        abstractTypeConstructor3.t(eh5Var);
                    }
                });
                if (listA.isEmpty()) {
                    eh5 eh5VarL = this.this$0.l();
                    List listE = eh5VarL != null ? x71.e(eh5VarL) : null;
                    if (listE == null) {
                        listE = y71.k();
                    }
                    listA = listE;
                }
                if (this.this$0.n()) {
                    t6a t6aVarP2 = this.this$0.p();
                    final AbstractTypeConstructor abstractTypeConstructor4 = this.this$0;
                    e74 e74Var2 = new e74() {
                        {
                            super(1);
                        }

                        @Override
                        public final Iterable<eh5> invoke(sbb sbbVar) {
                            y45.j(sbbVar, "it");
                            return abstractTypeConstructor4.i(sbbVar, true);
                        }
                    };
                    final AbstractTypeConstructor abstractTypeConstructor5 = this.this$0;
                    t6aVarP2.a(abstractTypeConstructor4, listA, e74Var2, new e74() {
                        {
                            super(1);
                        }

                        @Override
                        public Object invoke(Object obj) {
                            invoke((eh5) obj);
                            return zfb.a;
                        }

                        public final void invoke(eh5 eh5Var) {
                            y45.j(eh5Var, "it");
                            abstractTypeConstructor5.s(eh5Var);
                        }
                    });
                }
                AbstractTypeConstructor abstractTypeConstructor6 = this.this$0;
                List listB1 = listA instanceof List ? (List) listA : null;
                if (listB1 == null) {
                    listB1 = i81.b1(listA);
                }
                aVar.c(abstractTypeConstructor6.r(listB1));
            }
        });
    }

    @Override
    public sbb a(kotlin.reflect.jvm.internal.impl.types.checker.c cVar) {
        y45.j(cVar, "kotlinTypeRefiner");
        return new ModuleViewTypeConstructor(this, cVar);
    }

    public final Collection i(sbb sbbVar, boolean z) {
        List listJ0;
        AbstractTypeConstructor abstractTypeConstructor = sbbVar instanceof AbstractTypeConstructor ? (AbstractTypeConstructor) sbbVar : null;
        if (abstractTypeConstructor != null && (listJ0 = i81.J0(((a) abstractTypeConstructor.b.invoke()).a(), abstractTypeConstructor.m(z))) != null) {
            return listJ0;
        }
        Collection collectionK = sbbVar.k();
        y45.i(collectionK, "supertypes");
        return collectionK;
    }

    public abstract Collection j();

    public abstract eh5 l();

    public Collection m(boolean z) {
        return y71.k();
    }

    public boolean n() {
        return this.c;
    }

    public abstract t6a p();

    @Override
    public List k() {
        return ((a) this.b.invoke()).b();
    }

    public List r(List list) {
        y45.j(list, "supertypes");
        return list;
    }

    public void s(eh5 eh5Var) {
        y45.j(eh5Var, "type");
    }

    public void t(eh5 eh5Var) {
        y45.j(eh5Var, "type");
    }
}
