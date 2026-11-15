package defpackage;

import java.util.List;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.reflect.jvm.internal.impl.descriptors.NotFoundClasses;
import kotlin.reflect.jvm.internal.impl.protobuf.d;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.ClassDeserializer;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.a;
import kotlin.reflect.jvm.internal.impl.types.c;
import kotlin.reflect.jvm.internal.impl.types.checker.e;

public final class e92 {
    public final vx9 a;
    public final qq6 b;
    public final h92 c;
    public final pw0 d;
    public final a e;
    public final fv7 f;
    public final on5 g;
    public final ed3 h;
    public final qr5 i;
    public final gy3 j;
    public final Iterable k;
    public final NotFoundClasses l;
    public final zh1 m;
    public final n8 n;
    public final v18 o;
    public final d p;
    public final e q;
    public final e19 r;
    public final x18 s;
    public final List t;
    public final ClassDeserializer u;

    public e92(vx9 vx9Var, qq6 qq6Var, h92 h92Var, pw0 pw0Var, a aVar, fv7 fv7Var, on5 on5Var, ed3 ed3Var, qr5 qr5Var, gy3 gy3Var, Iterable iterable, NotFoundClasses notFoundClasses, zh1 zh1Var, n8 n8Var, v18 v18Var, d dVar, e eVar, e19 e19Var, x18 x18Var, List list) {
        y45.j(vx9Var, "storageManager");
        y45.j(qq6Var, "moduleDescriptor");
        y45.j(h92Var, "configuration");
        y45.j(pw0Var, "classDataFinder");
        y45.j(aVar, "annotationAndConstantLoader");
        y45.j(fv7Var, "packageFragmentProvider");
        y45.j(on5Var, "localClassifierTypeSettings");
        y45.j(ed3Var, "errorReporter");
        y45.j(qr5Var, "lookupTracker");
        y45.j(gy3Var, "flexibleTypeDeserializer");
        y45.j(iterable, "fictitiousClassDescriptorFactories");
        y45.j(notFoundClasses, "notFoundClasses");
        y45.j(zh1Var, "contractDeserializer");
        y45.j(n8Var, "additionalClassPartsProvider");
        y45.j(v18Var, "platformDependentDeclarationFilter");
        y45.j(dVar, "extensionRegistryLite");
        y45.j(eVar, "kotlinTypeChecker");
        y45.j(e19Var, "samConversionResolver");
        y45.j(x18Var, "platformDependentTypeTransformer");
        y45.j(list, "typeAttributeTranslators");
        this.a = vx9Var;
        this.b = qq6Var;
        this.c = h92Var;
        this.d = pw0Var;
        this.e = aVar;
        this.f = fv7Var;
        this.g = on5Var;
        this.h = ed3Var;
        this.i = qr5Var;
        this.j = gy3Var;
        this.k = iterable;
        this.l = notFoundClasses;
        this.m = zh1Var;
        this.n = n8Var;
        this.o = v18Var;
        this.p = dVar;
        this.q = eVar;
        this.r = e19Var;
        this.s = x18Var;
        this.t = list;
        this.u = new ClassDeserializer(this);
    }

    public final i92 a(dv7 dv7Var, cy6 cy6Var, xcb xcbVar, qob qobVar, se0 se0Var, p92 p92Var) {
        y45.j(dv7Var, "descriptor");
        y45.j(cy6Var, "nameResolver");
        y45.j(xcbVar, "typeTable");
        y45.j(qobVar, "versionRequirementTable");
        y45.j(se0Var, "metadataVersion");
        return new i92(this, cy6Var, dv7Var, xcbVar, qobVar, se0Var, p92Var, null, y71.k());
    }

    public final qw0 b(xw0 xw0Var) {
        y45.j(xw0Var, "classId");
        return ClassDeserializer.e(this.u, xw0Var, null, 2, null);
    }

    public final n8 c() {
        return this.n;
    }

    public final a d() {
        return this.e;
    }

    public final pw0 e() {
        return this.d;
    }

    public final ClassDeserializer f() {
        return this.u;
    }

    public final h92 g() {
        return this.c;
    }

    public final zh1 h() {
        return this.m;
    }

    public final ed3 i() {
        return this.h;
    }

    public final d j() {
        return this.p;
    }

    public final Iterable k() {
        return this.k;
    }

    public final gy3 l() {
        return this.j;
    }

    public final e m() {
        return this.q;
    }

    public final on5 n() {
        return this.g;
    }

    public final qr5 o() {
        return this.i;
    }

    public final qq6 p() {
        return this.b;
    }

    public final NotFoundClasses q() {
        return this.l;
    }

    public final fv7 r() {
        return this.f;
    }

    public final v18 s() {
        return this.o;
    }

    public final x18 t() {
        return this.s;
    }

    public final vx9 u() {
        return this.a;
    }

    public final List v() {
        return this.t;
    }

    public e92(vx9 vx9Var, qq6 qq6Var, h92 h92Var, pw0 pw0Var, a aVar, fv7 fv7Var, on5 on5Var, ed3 ed3Var, qr5 qr5Var, gy3 gy3Var, Iterable iterable, NotFoundClasses notFoundClasses, zh1 zh1Var, n8 n8Var, v18 v18Var, d dVar, e eVar, e19 e19Var, x18 x18Var, List list, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(vx9Var, qq6Var, h92Var, pw0Var, aVar, fv7Var, on5Var, ed3Var, qr5Var, gy3Var, iterable, notFoundClasses, zh1Var, (i & 8192) != 0 ? n8.a.a : n8Var, (i & 16384) != 0 ? v18.a.a : v18Var, dVar, (65536 & i) != 0 ? e.b.a() : eVar, e19Var, (262144 & i) != 0 ? x18.a.a : x18Var, (i & 524288) != 0 ? x71.e(c.a) : list);
    }
}
