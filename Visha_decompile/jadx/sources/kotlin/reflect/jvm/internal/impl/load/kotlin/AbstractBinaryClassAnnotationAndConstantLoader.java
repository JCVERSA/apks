package kotlin.reflect.jvm.internal.impl.load.kotlin;

import androidx.media3.extractor.text.ttml.TtmlNode;
import defpackage.ay3;
import defpackage.by6;
import defpackage.e74;
import defpackage.ee5;
import defpackage.eh5;
import defpackage.fn6;
import defpackage.kgb;
import defpackage.od5;
import defpackage.ru9;
import defpackage.s74;
import defpackage.vg5;
import defpackage.vx9;
import defpackage.xw0;
import defpackage.y45;
import defpackage.yt9;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Property;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.AnnotatedCallableKind;
import org.mozilla.javascript.ES6Iterator;

public abstract class AbstractBinaryClassAnnotationAndConstantLoader extends AbstractBinaryClassAnnotationLoader implements kotlin.reflect.jvm.internal.impl.serialization.deserialization.a {
    public final fn6 b;

    public static final class a extends AbstractBinaryClassAnnotationLoader.a {
        public final Map a;
        public final Map b;
        public final Map c;

        public a(Map map, Map map2, Map map3) {
            y45.j(map, "memberAnnotations");
            y45.j(map2, "propertyConstants");
            y45.j(map3, "annotationParametersDefaultValues");
            this.a = map;
            this.b = map2;
            this.c = map3;
        }

        @Override
        public Map a() {
            return this.a;
        }

        public final Map b() {
            return this.c;
        }

        public final Map c() {
            return this.b;
        }
    }

    public static final class b implements c.d {
        public final HashMap b;
        public final c c;
        public final HashMap d;
        public final HashMap e;

        public final class a extends C0389b implements c.e {
            public final b d;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public a(b bVar, d dVar) {
                super(bVar, dVar);
                y45.j(dVar, "signature");
                this.d = bVar;
            }

            @Override
            public c.a b(int i, xw0 xw0Var, yt9 yt9Var) {
                y45.j(xw0Var, "classId");
                y45.j(yt9Var, "source");
                d dVarE = d.b.e(c(), i);
                List arrayList = (List) this.d.b.get(dVarE);
                if (arrayList == null) {
                    arrayList = new ArrayList();
                    this.d.b.put(dVarE, arrayList);
                }
                return AbstractBinaryClassAnnotationAndConstantLoader.this.x(xw0Var, yt9Var, arrayList);
            }
        }

        public class C0389b implements c.InterfaceC0394c {
            public final d a;
            public final ArrayList b;
            public final b c;

            public C0389b(b bVar, d dVar) {
                y45.j(dVar, "signature");
                this.c = bVar;
                this.a = dVar;
                this.b = new ArrayList();
            }

            @Override
            public c.a a(xw0 xw0Var, yt9 yt9Var) {
                y45.j(xw0Var, "classId");
                y45.j(yt9Var, "source");
                return AbstractBinaryClassAnnotationAndConstantLoader.this.x(xw0Var, yt9Var, this.b);
            }

            public final d c() {
                return this.a;
            }

            @Override
            public void visitEnd() {
                if (this.b.isEmpty()) {
                    return;
                }
                this.c.b.put(this.a, this.b);
            }
        }

        public b(HashMap map, c cVar, HashMap map2, HashMap map3) {
            this.b = map;
            this.c = cVar;
            this.d = map2;
            this.e = map3;
        }

        @Override
        public c.e a(by6 by6Var, String str) {
            y45.j(by6Var, "name");
            y45.j(str, "desc");
            d.a aVar = d.b;
            String strB = by6Var.b();
            y45.i(strB, "name.asString()");
            return new a(this, aVar.d(strB, str));
        }

        @Override
        public c.InterfaceC0394c b(by6 by6Var, String str, Object obj) {
            Object objF;
            y45.j(by6Var, "name");
            y45.j(str, "desc");
            d.a aVar = d.b;
            String strB = by6Var.b();
            y45.i(strB, "name.asString()");
            d dVarA = aVar.a(strB, str);
            if (obj != null && (objF = AbstractBinaryClassAnnotationAndConstantLoader.this.F(str, obj)) != null) {
                this.e.put(dVarA, objF);
            }
            return new C0389b(this, dVarA);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AbstractBinaryClassAnnotationAndConstantLoader(vx9 vx9Var, vg5 vg5Var) {
        super(vg5Var);
        y45.j(vx9Var, "storageManager");
        y45.j(vg5Var, "kotlinClassFinder");
        this.b = vx9Var.i(new e74() {
            {
                super(1);
            }

            @Override
            public final AbstractBinaryClassAnnotationAndConstantLoader.a invoke(c cVar) {
                y45.j(cVar, "kotlinClass");
                return this.this$0.E(cVar);
            }
        });
    }

    @Override
    public a p(c cVar) {
        y45.j(cVar, "binaryClass");
        return (a) this.b.invoke(cVar);
    }

    public final boolean D(xw0 xw0Var, Map map) {
        y45.j(xw0Var, "annotationClassId");
        y45.j(map, "arguments");
        if (!y45.e(xw0Var, ru9.a.a())) {
            return false;
        }
        Object obj = map.get(by6.g(ES6Iterator.VALUE_PROPERTY));
        ee5 ee5Var = obj instanceof ee5 ? (ee5) obj : null;
        if (ee5Var == null) {
            return false;
        }
        Object objB = ee5Var.b();
        ee5.b.C0341b c0341b = objB instanceof ee5.b.C0341b ? (ee5.b.C0341b) objB : null;
        if (c0341b == null) {
            return false;
        }
        return v(c0341b.b());
    }

    public final a E(c cVar) {
        HashMap map = new HashMap();
        HashMap map2 = new HashMap();
        HashMap map3 = new HashMap();
        cVar.a(new b(map, cVar, map3, map2), q(cVar));
        return new a(map, map2, map3);
    }

    public abstract Object F(String str, Object obj);

    public final Object G(kotlin.reflect.jvm.internal.impl.serialization.deserialization.d dVar, ProtoBuf$Property protoBuf$Property, AnnotatedCallableKind annotatedCallableKind, eh5 eh5Var, s74 s74Var) {
        Object objInvoke;
        c cVarO = o(dVar, u(dVar, true, true, ay3.A.d(protoBuf$Property.getFlags()), od5.f(protoBuf$Property)));
        if (cVarO == null) {
            return null;
        }
        d dVarR = r(protoBuf$Property, dVar.b(), dVar.d(), annotatedCallableKind, cVarO.b().d().d(DeserializedDescriptorResolver.b.a()));
        if (dVarR == null || (objInvoke = s74Var.invoke(this.b.invoke(cVarO), dVarR)) == null) {
            return null;
        }
        return kgb.d(eh5Var) ? H(objInvoke) : objInvoke;
    }

    public abstract Object H(Object obj);

    @Override
    public Object d(kotlin.reflect.jvm.internal.impl.serialization.deserialization.d dVar, ProtoBuf$Property protoBuf$Property, eh5 eh5Var) {
        y45.j(dVar, TtmlNode.RUBY_CONTAINER);
        y45.j(protoBuf$Property, "proto");
        y45.j(eh5Var, "expectedType");
        return G(dVar, protoBuf$Property, AnnotatedCallableKind.PROPERTY, eh5Var, new s74() {
            @Override
            public final Object invoke(AbstractBinaryClassAnnotationAndConstantLoader.a aVar, d dVar2) {
                y45.j(aVar, "$this$loadConstantFromProperty");
                y45.j(dVar2, "it");
                return aVar.c().get(dVar2);
            }
        });
    }

    @Override
    public Object j(kotlin.reflect.jvm.internal.impl.serialization.deserialization.d dVar, ProtoBuf$Property protoBuf$Property, eh5 eh5Var) {
        y45.j(dVar, TtmlNode.RUBY_CONTAINER);
        y45.j(protoBuf$Property, "proto");
        y45.j(eh5Var, "expectedType");
        return G(dVar, protoBuf$Property, AnnotatedCallableKind.PROPERTY_GETTER, eh5Var, new s74() {
            @Override
            public final Object invoke(AbstractBinaryClassAnnotationAndConstantLoader.a aVar, d dVar2) {
                y45.j(aVar, "$this$loadConstantFromProperty");
                y45.j(dVar2, "it");
                return aVar.b().get(dVar2);
            }
        });
    }
}
