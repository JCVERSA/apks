package kotlin.reflect.jvm.internal.impl.serialization.deserialization;

import androidx.media3.extractor.text.ttml.TtmlNode;
import defpackage.cj8;
import defpackage.cy6;
import defpackage.eh5;
import defpackage.id;
import defpackage.pf1;
import defpackage.qq6;
import defpackage.rd9;
import defpackage.y45;
import defpackage.y71;
import defpackage.z71;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.reflect.jvm.internal.impl.descriptors.NotFoundClasses;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Annotation;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Constructor;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$EnumEntry;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Function;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Property;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Type;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$TypeParameter;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$ValueParameter;
import kotlin.reflect.jvm.internal.impl.protobuf.GeneratedMessageLite;
import kotlin.reflect.jvm.internal.impl.protobuf.g;

public final class b implements kotlin.reflect.jvm.internal.impl.serialization.deserialization.a {
    public final rd9 a;
    public final id b;

    public class a {
        public static final int[] a;

        static {
            int[] iArr = new int[AnnotatedCallableKind.values().length];
            try {
                iArr[AnnotatedCallableKind.PROPERTY.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[AnnotatedCallableKind.PROPERTY_GETTER.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[AnnotatedCallableKind.PROPERTY_SETTER.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            a = iArr;
        }
    }

    public b(qq6 qq6Var, NotFoundClasses notFoundClasses, rd9 rd9Var) {
        y45.j(qq6Var, "module");
        y45.j(notFoundClasses, "notFoundClasses");
        y45.j(rd9Var, "protocol");
        this.a = rd9Var;
        this.b = new id(qq6Var, notFoundClasses);
    }

    @Override
    public List a(d dVar, g gVar, AnnotatedCallableKind annotatedCallableKind, int i, ProtoBuf$ValueParameter protoBuf$ValueParameter) {
        y45.j(dVar, TtmlNode.RUBY_CONTAINER);
        y45.j(gVar, "callableProto");
        y45.j(annotatedCallableKind, "kind");
        y45.j(protoBuf$ValueParameter, "proto");
        List listK = (List) protoBuf$ValueParameter.getExtension(this.a.h());
        if (listK == null) {
            listK = y71.k();
        }
        List list = listK;
        ArrayList arrayList = new ArrayList(z71.v(list, 10));
        Iterator it = list.iterator();
        while (it.hasNext()) {
            arrayList.add(this.b.a((ProtoBuf$Annotation) it.next(), dVar.b()));
        }
        return arrayList;
    }

    @Override
    public List b(d.a aVar) {
        y45.j(aVar, TtmlNode.RUBY_CONTAINER);
        List listK = (List) aVar.f().getExtension(this.a.a());
        if (listK == null) {
            listK = y71.k();
        }
        List list = listK;
        ArrayList arrayList = new ArrayList(z71.v(list, 10));
        Iterator it = list.iterator();
        while (it.hasNext()) {
            arrayList.add(this.b.a((ProtoBuf$Annotation) it.next(), aVar.b()));
        }
        return arrayList;
    }

    @Override
    public List c(d dVar, ProtoBuf$EnumEntry protoBuf$EnumEntry) {
        y45.j(dVar, TtmlNode.RUBY_CONTAINER);
        y45.j(protoBuf$EnumEntry, "proto");
        List listK = (List) protoBuf$EnumEntry.getExtension(this.a.d());
        if (listK == null) {
            listK = y71.k();
        }
        List list = listK;
        ArrayList arrayList = new ArrayList(z71.v(list, 10));
        Iterator it = list.iterator();
        while (it.hasNext()) {
            arrayList.add(this.b.a((ProtoBuf$Annotation) it.next(), dVar.b()));
        }
        return arrayList;
    }

    @Override
    public List e(ProtoBuf$TypeParameter protoBuf$TypeParameter, cy6 cy6Var) {
        y45.j(protoBuf$TypeParameter, "proto");
        y45.j(cy6Var, "nameResolver");
        List listK = (List) protoBuf$TypeParameter.getExtension(this.a.p());
        if (listK == null) {
            listK = y71.k();
        }
        List list = listK;
        ArrayList arrayList = new ArrayList(z71.v(list, 10));
        Iterator it = list.iterator();
        while (it.hasNext()) {
            arrayList.add(this.b.a((ProtoBuf$Annotation) it.next(), cy6Var));
        }
        return arrayList;
    }

    @Override
    public List f(d dVar, ProtoBuf$Property protoBuf$Property) {
        y45.j(dVar, TtmlNode.RUBY_CONTAINER);
        y45.j(protoBuf$Property, "proto");
        GeneratedMessageLite.e eVarJ = this.a.j();
        List listK = eVarJ != null ? (List) protoBuf$Property.getExtension(eVarJ) : null;
        if (listK == null) {
            listK = y71.k();
        }
        List list = listK;
        ArrayList arrayList = new ArrayList(z71.v(list, 10));
        Iterator it = list.iterator();
        while (it.hasNext()) {
            arrayList.add(this.b.a((ProtoBuf$Annotation) it.next(), dVar.b()));
        }
        return arrayList;
    }

    @Override
    public List g(d dVar, g gVar, AnnotatedCallableKind annotatedCallableKind) {
        y45.j(dVar, TtmlNode.RUBY_CONTAINER);
        y45.j(gVar, "proto");
        y45.j(annotatedCallableKind, "kind");
        List listK = null;
        if (gVar instanceof ProtoBuf$Function) {
            GeneratedMessageLite.e eVarG = this.a.g();
            if (eVarG != null) {
                listK = (List) ((ProtoBuf$Function) gVar).getExtension(eVarG);
            }
        } else {
            if (!(gVar instanceof ProtoBuf$Property)) {
                throw new IllegalStateException(("Unknown message: " + gVar).toString());
            }
            int i = a.a[annotatedCallableKind.ordinal()];
            if (i != 1 && i != 2 && i != 3) {
                throw new IllegalStateException(("Unsupported callable kind with property proto for receiver annotations: " + annotatedCallableKind).toString());
            }
            GeneratedMessageLite.e eVarL = this.a.l();
            if (eVarL != null) {
                listK = (List) ((ProtoBuf$Property) gVar).getExtension(eVarL);
            }
        }
        if (listK == null) {
            listK = y71.k();
        }
        List list = listK;
        ArrayList arrayList = new ArrayList(z71.v(list, 10));
        Iterator it = list.iterator();
        while (it.hasNext()) {
            arrayList.add(this.b.a((ProtoBuf$Annotation) it.next(), dVar.b()));
        }
        return arrayList;
    }

    @Override
    public List h(ProtoBuf$Type protoBuf$Type, cy6 cy6Var) {
        y45.j(protoBuf$Type, "proto");
        y45.j(cy6Var, "nameResolver");
        List listK = (List) protoBuf$Type.getExtension(this.a.o());
        if (listK == null) {
            listK = y71.k();
        }
        List list = listK;
        ArrayList arrayList = new ArrayList(z71.v(list, 10));
        Iterator it = list.iterator();
        while (it.hasNext()) {
            arrayList.add(this.b.a((ProtoBuf$Annotation) it.next(), cy6Var));
        }
        return arrayList;
    }

    @Override
    public List i(d dVar, g gVar, AnnotatedCallableKind annotatedCallableKind) {
        List listK;
        y45.j(dVar, TtmlNode.RUBY_CONTAINER);
        y45.j(gVar, "proto");
        y45.j(annotatedCallableKind, "kind");
        if (gVar instanceof ProtoBuf$Constructor) {
            listK = (List) ((ProtoBuf$Constructor) gVar).getExtension(this.a.c());
        } else if (gVar instanceof ProtoBuf$Function) {
            listK = (List) ((ProtoBuf$Function) gVar).getExtension(this.a.f());
        } else {
            if (!(gVar instanceof ProtoBuf$Property)) {
                throw new IllegalStateException(("Unknown message: " + gVar).toString());
            }
            int i = a.a[annotatedCallableKind.ordinal()];
            if (i == 1) {
                listK = (List) ((ProtoBuf$Property) gVar).getExtension(this.a.i());
            } else if (i == 2) {
                listK = (List) ((ProtoBuf$Property) gVar).getExtension(this.a.m());
            } else {
                if (i != 3) {
                    throw new IllegalStateException("Unsupported callable kind with property proto");
                }
                listK = (List) ((ProtoBuf$Property) gVar).getExtension(this.a.n());
            }
        }
        if (listK == null) {
            listK = y71.k();
        }
        List list = listK;
        ArrayList arrayList = new ArrayList(z71.v(list, 10));
        Iterator it = list.iterator();
        while (it.hasNext()) {
            arrayList.add(this.b.a((ProtoBuf$Annotation) it.next(), dVar.b()));
        }
        return arrayList;
    }

    @Override
    public List k(d dVar, ProtoBuf$Property protoBuf$Property) {
        y45.j(dVar, TtmlNode.RUBY_CONTAINER);
        y45.j(protoBuf$Property, "proto");
        GeneratedMessageLite.e eVarK = this.a.k();
        List listK = eVarK != null ? (List) protoBuf$Property.getExtension(eVarK) : null;
        if (listK == null) {
            listK = y71.k();
        }
        List list = listK;
        ArrayList arrayList = new ArrayList(z71.v(list, 10));
        Iterator it = list.iterator();
        while (it.hasNext()) {
            arrayList.add(this.b.a((ProtoBuf$Annotation) it.next(), dVar.b()));
        }
        return arrayList;
    }

    @Override
    public pf1 j(d dVar, ProtoBuf$Property protoBuf$Property, eh5 eh5Var) {
        y45.j(dVar, TtmlNode.RUBY_CONTAINER);
        y45.j(protoBuf$Property, "proto");
        y45.j(eh5Var, "expectedType");
        return null;
    }

    @Override
    public pf1 d(d dVar, ProtoBuf$Property protoBuf$Property, eh5 eh5Var) {
        y45.j(dVar, TtmlNode.RUBY_CONTAINER);
        y45.j(protoBuf$Property, "proto");
        y45.j(eh5Var, "expectedType");
        ProtoBuf$Annotation.Argument.Value value = (ProtoBuf$Annotation.Argument.Value) cj8.a(protoBuf$Property, this.a.b());
        if (value == null) {
            return null;
        }
        return this.b.f(eh5Var, value, dVar.b());
    }
}
