package kotlin.reflect.jvm.internal.impl.load.kotlin;

import androidx.media3.extractor.text.ttml.TtmlNode;
import defpackage.ax0;
import defpackage.ay3;
import defpackage.by6;
import defpackage.ch5;
import defpackage.cj8;
import defpackage.cy6;
import defpackage.fd5;
import defpackage.g1a;
import defpackage.id5;
import defpackage.ij8;
import defpackage.j1a;
import defpackage.jd5;
import defpackage.nd5;
import defpackage.o54;
import defpackage.od5;
import defpackage.ru9;
import defpackage.vg5;
import defpackage.wg5;
import defpackage.xcb;
import defpackage.xw0;
import defpackage.y45;
import defpackage.y71;
import defpackage.yt9;
import defpackage.z71;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Annotation;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Class;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Constructor;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$EnumEntry;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Function;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Property;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Type;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$TypeParameter;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$ValueParameter;
import kotlin.reflect.jvm.internal.impl.metadata.jvm.JvmProtoBuf;
import kotlin.reflect.jvm.internal.impl.protobuf.GeneratedMessageLite;
import kotlin.reflect.jvm.internal.impl.protobuf.g;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.AnnotatedCallableKind;
import org.apache.commons.io.IOUtils;

public abstract class AbstractBinaryClassAnnotationLoader implements kotlin.reflect.jvm.internal.impl.serialization.deserialization.c {
    public final vg5 a;

    public enum PropertyRelatedElement {
        PROPERTY,
        BACKING_FIELD,
        DELEGATE_FIELD
    }

    public static abstract class a {
        public abstract Map a();
    }

    public class b {
        public static final int[] a;

        static {
            int[] iArr = new int[AnnotatedCallableKind.values().length];
            try {
                iArr[AnnotatedCallableKind.PROPERTY_GETTER.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[AnnotatedCallableKind.PROPERTY_SETTER.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[AnnotatedCallableKind.PROPERTY.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            a = iArr;
        }
    }

    public static final class c implements kotlin.reflect.jvm.internal.impl.load.kotlin.c.InterfaceC0394c {
        public final ArrayList b;

        public c(ArrayList arrayList) {
            this.b = arrayList;
        }

        @Override
        public kotlin.reflect.jvm.internal.impl.load.kotlin.c.a a(xw0 xw0Var, yt9 yt9Var) {
            y45.j(xw0Var, "classId");
            y45.j(yt9Var, "source");
            return AbstractBinaryClassAnnotationLoader.this.x(xw0Var, yt9Var, this.b);
        }

        @Override
        public void visitEnd() {
        }
    }

    public AbstractBinaryClassAnnotationLoader(vg5 vg5Var) {
        y45.j(vg5Var, "kotlinClassFinder");
        this.a = vg5Var;
    }

    public static List n(AbstractBinaryClassAnnotationLoader abstractBinaryClassAnnotationLoader, kotlin.reflect.jvm.internal.impl.serialization.deserialization.d dVar, d dVar2, boolean z, boolean z2, Boolean bool, boolean z3, int i, Object obj) {
        if (obj == null) {
            return abstractBinaryClassAnnotationLoader.m(dVar, dVar2, (i & 4) != 0 ? false : z, (i & 8) != 0 ? false : z2, (i & 16) != 0 ? null : bool, (i & 32) != 0 ? false : z3);
        }
        throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: findClassAndLoadMemberAnnotations");
    }

    public static d s(AbstractBinaryClassAnnotationLoader abstractBinaryClassAnnotationLoader, g gVar, cy6 cy6Var, xcb xcbVar, AnnotatedCallableKind annotatedCallableKind, boolean z, int i, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: getCallableSignature");
        }
        if ((i & 16) != 0) {
            z = false;
        }
        return abstractBinaryClassAnnotationLoader.r(gVar, cy6Var, xcbVar, annotatedCallableKind, z);
    }

    public final kotlin.reflect.jvm.internal.impl.load.kotlin.c A(kotlin.reflect.jvm.internal.impl.serialization.deserialization.d.a aVar) {
        yt9 yt9VarC = aVar.c();
        ch5 ch5Var = yt9VarC instanceof ch5 ? (ch5) yt9VarC : null;
        if (ch5Var != null) {
            return ch5Var.d();
        }
        return null;
    }

    @Override
    public List a(kotlin.reflect.jvm.internal.impl.serialization.deserialization.d dVar, g gVar, AnnotatedCallableKind annotatedCallableKind, int i, ProtoBuf$ValueParameter protoBuf$ValueParameter) {
        y45.j(dVar, TtmlNode.RUBY_CONTAINER);
        y45.j(gVar, "callableProto");
        y45.j(annotatedCallableKind, "kind");
        y45.j(protoBuf$ValueParameter, "proto");
        d dVarS = s(this, gVar, dVar.b(), dVar.d(), annotatedCallableKind, false, 16, null);
        if (dVarS == null) {
            return y71.k();
        }
        return n(this, dVar, d.b.e(dVarS, i + l(dVar, gVar)), false, false, null, false, 60, null);
    }

    @Override
    public List b(kotlin.reflect.jvm.internal.impl.serialization.deserialization.d.a aVar) {
        y45.j(aVar, TtmlNode.RUBY_CONTAINER);
        kotlin.reflect.jvm.internal.impl.load.kotlin.c cVarA = A(aVar);
        if (cVarA != null) {
            ArrayList arrayList = new ArrayList(1);
            cVarA.d(new c(arrayList), q(cVarA));
            return arrayList;
        }
        throw new IllegalStateException(("Class for loading annotations is not found: " + aVar.a()).toString());
    }

    @Override
    public List c(kotlin.reflect.jvm.internal.impl.serialization.deserialization.d dVar, ProtoBuf$EnumEntry protoBuf$EnumEntry) {
        y45.j(dVar, TtmlNode.RUBY_CONTAINER);
        y45.j(protoBuf$EnumEntry, "proto");
        d.a aVar = d.b;
        String string = dVar.b().getString(protoBuf$EnumEntry.getName());
        String strC = ((kotlin.reflect.jvm.internal.impl.serialization.deserialization.d.a) dVar).e().c();
        y45.i(strC, "container as ProtoContai…Class).classId.asString()");
        return n(this, dVar, aVar.a(string, ax0.b(strC)), false, false, null, false, 60, null);
    }

    @Override
    public List e(ProtoBuf$TypeParameter protoBuf$TypeParameter, cy6 cy6Var) {
        y45.j(protoBuf$TypeParameter, "proto");
        y45.j(cy6Var, "nameResolver");
        Object extension = protoBuf$TypeParameter.getExtension(JvmProtoBuf.h);
        y45.i(extension, "proto.getExtension(JvmPr….typeParameterAnnotation)");
        Iterable<ProtoBuf$Annotation> iterable = (Iterable) extension;
        ArrayList arrayList = new ArrayList(z71.v(iterable, 10));
        for (ProtoBuf$Annotation protoBuf$Annotation : iterable) {
            y45.i(protoBuf$Annotation, "it");
            arrayList.add(z(protoBuf$Annotation, cy6Var));
        }
        return arrayList;
    }

    @Override
    public List f(kotlin.reflect.jvm.internal.impl.serialization.deserialization.d dVar, ProtoBuf$Property protoBuf$Property) {
        y45.j(dVar, TtmlNode.RUBY_CONTAINER);
        y45.j(protoBuf$Property, "proto");
        return y(dVar, protoBuf$Property, PropertyRelatedElement.BACKING_FIELD);
    }

    @Override
    public List g(kotlin.reflect.jvm.internal.impl.serialization.deserialization.d dVar, g gVar, AnnotatedCallableKind annotatedCallableKind) {
        y45.j(dVar, TtmlNode.RUBY_CONTAINER);
        y45.j(gVar, "proto");
        y45.j(annotatedCallableKind, "kind");
        d dVarS = s(this, gVar, dVar.b(), dVar.d(), annotatedCallableKind, false, 16, null);
        return dVarS != null ? n(this, dVar, d.b.e(dVarS, 0), false, false, null, false, 60, null) : y71.k();
    }

    @Override
    public List h(ProtoBuf$Type protoBuf$Type, cy6 cy6Var) {
        y45.j(protoBuf$Type, "proto");
        y45.j(cy6Var, "nameResolver");
        Object extension = protoBuf$Type.getExtension(JvmProtoBuf.f);
        y45.i(extension, "proto.getExtension(JvmProtoBuf.typeAnnotation)");
        Iterable<ProtoBuf$Annotation> iterable = (Iterable) extension;
        ArrayList arrayList = new ArrayList(z71.v(iterable, 10));
        for (ProtoBuf$Annotation protoBuf$Annotation : iterable) {
            y45.i(protoBuf$Annotation, "it");
            arrayList.add(z(protoBuf$Annotation, cy6Var));
        }
        return arrayList;
    }

    @Override
    public List i(kotlin.reflect.jvm.internal.impl.serialization.deserialization.d dVar, g gVar, AnnotatedCallableKind annotatedCallableKind) {
        y45.j(dVar, TtmlNode.RUBY_CONTAINER);
        y45.j(gVar, "proto");
        y45.j(annotatedCallableKind, "kind");
        if (annotatedCallableKind == AnnotatedCallableKind.PROPERTY) {
            return y(dVar, (ProtoBuf$Property) gVar, PropertyRelatedElement.PROPERTY);
        }
        d dVarS = s(this, gVar, dVar.b(), dVar.d(), annotatedCallableKind, false, 16, null);
        return dVarS == null ? y71.k() : n(this, dVar, dVarS, false, false, null, false, 60, null);
    }

    @Override
    public List k(kotlin.reflect.jvm.internal.impl.serialization.deserialization.d dVar, ProtoBuf$Property protoBuf$Property) {
        y45.j(dVar, TtmlNode.RUBY_CONTAINER);
        y45.j(protoBuf$Property, "proto");
        return y(dVar, protoBuf$Property, PropertyRelatedElement.DELEGATE_FIELD);
    }

    public final int l(kotlin.reflect.jvm.internal.impl.serialization.deserialization.d dVar, g gVar) {
        if (gVar instanceof ProtoBuf$Function) {
            if (!ij8.g((ProtoBuf$Function) gVar)) {
                return 0;
            }
        } else if (gVar instanceof ProtoBuf$Property) {
            if (!ij8.h((ProtoBuf$Property) gVar)) {
                return 0;
            }
        } else {
            if (!(gVar instanceof ProtoBuf$Constructor)) {
                throw new UnsupportedOperationException("Unsupported message: " + gVar.getClass());
            }
            y45.h(dVar, "null cannot be cast to non-null type org.jetbrains.kotlin.serialization.deserialization.ProtoContainer.Class");
            kotlin.reflect.jvm.internal.impl.serialization.deserialization.d.a aVar = (kotlin.reflect.jvm.internal.impl.serialization.deserialization.d.a) dVar;
            if (aVar.g() == ProtoBuf$Class.Kind.ENUM_CLASS) {
                return 2;
            }
            if (!aVar.i()) {
                return 0;
            }
        }
        return 1;
    }

    public final List m(kotlin.reflect.jvm.internal.impl.serialization.deserialization.d dVar, d dVar2, boolean z, boolean z2, Boolean bool, boolean z3) {
        List list;
        kotlin.reflect.jvm.internal.impl.load.kotlin.c cVarO = o(dVar, u(dVar, z, z2, bool, z3));
        return (cVarO == null || (list = (List) p(cVarO).a().get(dVar2)) == null) ? y71.k() : list;
    }

    public final kotlin.reflect.jvm.internal.impl.load.kotlin.c o(kotlin.reflect.jvm.internal.impl.serialization.deserialization.d dVar, kotlin.reflect.jvm.internal.impl.load.kotlin.c cVar) {
        y45.j(dVar, TtmlNode.RUBY_CONTAINER);
        if (cVar != null) {
            return cVar;
        }
        if (dVar instanceof kotlin.reflect.jvm.internal.impl.serialization.deserialization.d.a) {
            return A((kotlin.reflect.jvm.internal.impl.serialization.deserialization.d.a) dVar);
        }
        return null;
    }

    public abstract a p(kotlin.reflect.jvm.internal.impl.load.kotlin.c cVar);

    public byte[] q(kotlin.reflect.jvm.internal.impl.load.kotlin.c cVar) {
        y45.j(cVar, "kotlinClass");
        return null;
    }

    public final d r(g gVar, cy6 cy6Var, xcb xcbVar, AnnotatedCallableKind annotatedCallableKind, boolean z) {
        y45.j(gVar, "proto");
        y45.j(cy6Var, "nameResolver");
        y45.j(xcbVar, "typeTable");
        y45.j(annotatedCallableKind, "kind");
        if (gVar instanceof ProtoBuf$Constructor) {
            d.a aVar = d.b;
            id5.b bVarB = od5.a.b((ProtoBuf$Constructor) gVar, cy6Var, xcbVar);
            if (bVarB == null) {
                return null;
            }
            return aVar.b(bVarB);
        }
        if (gVar instanceof ProtoBuf$Function) {
            d.a aVar2 = d.b;
            id5.b bVarE = od5.a.e((ProtoBuf$Function) gVar, cy6Var, xcbVar);
            if (bVarE == null) {
                return null;
            }
            return aVar2.b(bVarE);
        }
        if (!(gVar instanceof ProtoBuf$Property)) {
            return null;
        }
        GeneratedMessageLite.e eVar = JvmProtoBuf.d;
        y45.i(eVar, "propertySignature");
        JvmProtoBuf.JvmPropertySignature jvmPropertySignature = (JvmProtoBuf.JvmPropertySignature) cj8.a((GeneratedMessageLite.ExtendableMessage) gVar, eVar);
        if (jvmPropertySignature == null) {
            return null;
        }
        int i = b.a[annotatedCallableKind.ordinal()];
        if (i == 1) {
            if (!jvmPropertySignature.hasGetter()) {
                return null;
            }
            d.a aVar3 = d.b;
            JvmProtoBuf.JvmMethodSignature getter = jvmPropertySignature.getGetter();
            y45.i(getter, "signature.getter");
            return aVar3.c(cy6Var, getter);
        }
        if (i != 2) {
            if (i != 3) {
                return null;
            }
            return kotlin.reflect.jvm.internal.impl.load.kotlin.a.a((ProtoBuf$Property) gVar, cy6Var, xcbVar, true, true, z);
        }
        if (!jvmPropertySignature.hasSetter()) {
            return null;
        }
        d.a aVar4 = d.b;
        JvmProtoBuf.JvmMethodSignature setter = jvmPropertySignature.getSetter();
        y45.i(setter, "signature.setter");
        return aVar4.c(cy6Var, setter);
    }

    public abstract jd5 t();

    public final kotlin.reflect.jvm.internal.impl.load.kotlin.c u(kotlin.reflect.jvm.internal.impl.serialization.deserialization.d dVar, boolean z, boolean z2, Boolean bool, boolean z3) {
        kotlin.reflect.jvm.internal.impl.serialization.deserialization.d.a aVarH;
        y45.j(dVar, TtmlNode.RUBY_CONTAINER);
        if (z) {
            if (bool == null) {
                throw new IllegalStateException(("isConst should not be null for property (container=" + dVar + ')').toString());
            }
            if (dVar instanceof kotlin.reflect.jvm.internal.impl.serialization.deserialization.d.a) {
                kotlin.reflect.jvm.internal.impl.serialization.deserialization.d.a aVar = (kotlin.reflect.jvm.internal.impl.serialization.deserialization.d.a) dVar;
                if (aVar.g() == ProtoBuf$Class.Kind.INTERFACE) {
                    vg5 vg5Var = this.a;
                    xw0 xw0VarD = aVar.e().d(by6.g("DefaultImpls"));
                    y45.i(xw0VarD, "container.classId.create…EFAULT_IMPLS_CLASS_NAME))");
                    return wg5.a(vg5Var, xw0VarD, t());
                }
            }
            if (bool.booleanValue() && (dVar instanceof kotlin.reflect.jvm.internal.impl.serialization.deserialization.d.b)) {
                yt9 yt9VarC = dVar.c();
                nd5 nd5Var = yt9VarC instanceof nd5 ? (nd5) yt9VarC : null;
                fd5 fd5VarF = nd5Var != null ? nd5Var.f() : null;
                if (fd5VarF != null) {
                    vg5 vg5Var2 = this.a;
                    String strF = fd5VarF.f();
                    y45.i(strF, "facadeClassName.internalName");
                    xw0 xw0VarM = xw0.m(new o54(g1a.M(strF, IOUtils.DIR_SEPARATOR_UNIX, '.', false, 4, null)));
                    y45.i(xw0VarM, "topLevel(FqName(facadeCl…lName.replace('/', '.')))");
                    return wg5.a(vg5Var2, xw0VarM, t());
                }
            }
        }
        if (z2 && (dVar instanceof kotlin.reflect.jvm.internal.impl.serialization.deserialization.d.a)) {
            kotlin.reflect.jvm.internal.impl.serialization.deserialization.d.a aVar2 = (kotlin.reflect.jvm.internal.impl.serialization.deserialization.d.a) dVar;
            if (aVar2.g() == ProtoBuf$Class.Kind.COMPANION_OBJECT && (aVarH = aVar2.h()) != null && (aVarH.g() == ProtoBuf$Class.Kind.CLASS || aVarH.g() == ProtoBuf$Class.Kind.ENUM_CLASS || (z3 && (aVarH.g() == ProtoBuf$Class.Kind.INTERFACE || aVarH.g() == ProtoBuf$Class.Kind.ANNOTATION_CLASS)))) {
                return A(aVarH);
            }
        }
        if (!(dVar instanceof kotlin.reflect.jvm.internal.impl.serialization.deserialization.d.b) || !(dVar.c() instanceof nd5)) {
            return null;
        }
        yt9 yt9VarC2 = dVar.c();
        y45.h(yt9VarC2, "null cannot be cast to non-null type org.jetbrains.kotlin.load.kotlin.JvmPackagePartSource");
        nd5 nd5Var2 = (nd5) yt9VarC2;
        kotlin.reflect.jvm.internal.impl.load.kotlin.c cVarG = nd5Var2.g();
        return cVarG == null ? wg5.a(this.a, nd5Var2.d(), t()) : cVarG;
    }

    public final boolean v(xw0 xw0Var) {
        kotlin.reflect.jvm.internal.impl.load.kotlin.c cVarA;
        y45.j(xw0Var, "classId");
        return xw0Var.g() != null && y45.e(xw0Var.j().b(), "Container") && (cVarA = wg5.a(this.a, xw0Var, t())) != null && ru9.a.c(cVarA);
    }

    public abstract kotlin.reflect.jvm.internal.impl.load.kotlin.c.a w(xw0 xw0Var, yt9 yt9Var, List list);

    public final kotlin.reflect.jvm.internal.impl.load.kotlin.c.a x(xw0 xw0Var, yt9 yt9Var, List list) {
        y45.j(xw0Var, "annotationClassId");
        y45.j(yt9Var, "source");
        y45.j(list, "result");
        if (ru9.a.b().contains(xw0Var)) {
            return null;
        }
        return w(xw0Var, yt9Var, list);
    }

    public final List y(kotlin.reflect.jvm.internal.impl.serialization.deserialization.d dVar, ProtoBuf$Property protoBuf$Property, PropertyRelatedElement propertyRelatedElement) {
        Boolean boolD = ay3.A.d(protoBuf$Property.getFlags());
        y45.i(boolD, "IS_CONST.get(proto.flags)");
        boolD.booleanValue();
        boolean zF = od5.f(protoBuf$Property);
        if (propertyRelatedElement == PropertyRelatedElement.PROPERTY) {
            d dVarB = kotlin.reflect.jvm.internal.impl.load.kotlin.a.b(protoBuf$Property, dVar.b(), dVar.d(), false, true, false, 40, null);
            return dVarB == null ? y71.k() : n(this, dVar, dVarB, true, false, boolD, zF, 8, null);
        }
        d dVarB2 = kotlin.reflect.jvm.internal.impl.load.kotlin.a.b(protoBuf$Property, dVar.b(), dVar.d(), true, false, false, 48, null);
        if (dVarB2 == null) {
            return y71.k();
        }
        return j1a.X(dVarB2.a(), "$delegate", false, 2, null) != (propertyRelatedElement == PropertyRelatedElement.DELEGATE_FIELD) ? y71.k() : m(dVar, dVarB2, true, true, boolD, zF);
    }

    public abstract Object z(ProtoBuf$Annotation protoBuf$Annotation, cy6 cy6Var);
}
