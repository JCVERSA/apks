package defpackage;

import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.reflect.jvm.internal.impl.builtins.ReflectionTypes;
import kotlin.reflect.jvm.internal.impl.load.java.JavaTypeEnhancementState;
import kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement.SignatureEnhancement;
import kotlin.reflect.jvm.internal.impl.load.kotlin.DeserializedDescriptorResolver;
import kotlin.reflect.jvm.internal.impl.types.checker.e;

public final class e85 {
    public final vx9 a;
    public final x65 b;
    public final vg5 c;
    public final DeserializedDescriptorResolver d;
    public final aj9 e;
    public final ed3 f;
    public final d85 g;
    public final b85 h;
    public final e19 i;
    public final j85 j;
    public final nq6 k;
    public final lv7 l;
    public final t6a m;
    public final qr5 n;
    public final qq6 o;
    public final ReflectionTypes p;
    public final kd q;
    public final SignatureEnhancement r;
    public final z65 s;
    public final f85 t;
    public final e u;
    public final JavaTypeEnhancementState v;
    public final u75 w;
    public final i8a x;

    public e85(vx9 vx9Var, x65 x65Var, vg5 vg5Var, DeserializedDescriptorResolver deserializedDescriptorResolver, aj9 aj9Var, ed3 ed3Var, d85 d85Var, b85 b85Var, e19 e19Var, j85 j85Var, nq6 nq6Var, lv7 lv7Var, t6a t6aVar, qr5 qr5Var, qq6 qq6Var, ReflectionTypes reflectionTypes, kd kdVar, SignatureEnhancement signatureEnhancement, z65 z65Var, f85 f85Var, e eVar, JavaTypeEnhancementState javaTypeEnhancementState, u75 u75Var, i8a i8aVar) {
        y45.j(vx9Var, "storageManager");
        y45.j(x65Var, "finder");
        y45.j(vg5Var, "kotlinClassFinder");
        y45.j(deserializedDescriptorResolver, "deserializedDescriptorResolver");
        y45.j(aj9Var, "signaturePropagator");
        y45.j(ed3Var, "errorReporter");
        y45.j(d85Var, "javaResolverCache");
        y45.j(b85Var, "javaPropertyInitializerEvaluator");
        y45.j(e19Var, "samConversionResolver");
        y45.j(j85Var, "sourceElementFactory");
        y45.j(nq6Var, "moduleClassResolver");
        y45.j(lv7Var, "packagePartProvider");
        y45.j(t6aVar, "supertypeLoopChecker");
        y45.j(qr5Var, "lookupTracker");
        y45.j(qq6Var, "module");
        y45.j(reflectionTypes, "reflectionTypes");
        y45.j(kdVar, "annotationTypeQualifierResolver");
        y45.j(signatureEnhancement, "signatureEnhancement");
        y45.j(z65Var, "javaClassesTracker");
        y45.j(f85Var, "settings");
        y45.j(eVar, "kotlinTypeChecker");
        y45.j(javaTypeEnhancementState, "javaTypeEnhancementState");
        y45.j(u75Var, "javaModuleResolver");
        y45.j(i8aVar, "syntheticPartsProvider");
        this.a = vx9Var;
        this.b = x65Var;
        this.c = vg5Var;
        this.d = deserializedDescriptorResolver;
        this.e = aj9Var;
        this.f = ed3Var;
        this.g = d85Var;
        this.h = b85Var;
        this.i = e19Var;
        this.j = j85Var;
        this.k = nq6Var;
        this.l = lv7Var;
        this.m = t6aVar;
        this.n = qr5Var;
        this.o = qq6Var;
        this.p = reflectionTypes;
        this.q = kdVar;
        this.r = signatureEnhancement;
        this.s = z65Var;
        this.t = f85Var;
        this.u = eVar;
        this.v = javaTypeEnhancementState;
        this.w = u75Var;
        this.x = i8aVar;
    }

    public final kd a() {
        return this.q;
    }

    public final DeserializedDescriptorResolver b() {
        return this.d;
    }

    public final ed3 c() {
        return this.f;
    }

    public final x65 d() {
        return this.b;
    }

    public final z65 e() {
        return this.s;
    }

    public final u75 f() {
        return this.w;
    }

    public final b85 g() {
        return this.h;
    }

    public final d85 h() {
        return this.g;
    }

    public final JavaTypeEnhancementState i() {
        return this.v;
    }

    public final vg5 j() {
        return this.c;
    }

    public final e k() {
        return this.u;
    }

    public final qr5 l() {
        return this.n;
    }

    public final qq6 m() {
        return this.o;
    }

    public final nq6 n() {
        return this.k;
    }

    public final lv7 o() {
        return this.l;
    }

    public final ReflectionTypes p() {
        return this.p;
    }

    public final f85 q() {
        return this.t;
    }

    public final SignatureEnhancement r() {
        return this.r;
    }

    public final aj9 s() {
        return this.e;
    }

    public final j85 t() {
        return this.j;
    }

    public final vx9 u() {
        return this.a;
    }

    public final t6a v() {
        return this.m;
    }

    public final i8a w() {
        return this.x;
    }

    public final e85 x(d85 d85Var) {
        y45.j(d85Var, "javaResolverCache");
        return new e85(this.a, this.b, this.c, this.d, this.e, this.f, d85Var, this.h, this.i, this.j, this.k, this.l, this.m, this.n, this.o, this.p, this.q, this.r, this.s, this.t, this.u, this.v, this.w, null, 8388608, null);
    }

    public e85(vx9 vx9Var, x65 x65Var, vg5 vg5Var, DeserializedDescriptorResolver deserializedDescriptorResolver, aj9 aj9Var, ed3 ed3Var, d85 d85Var, b85 b85Var, e19 e19Var, j85 j85Var, nq6 nq6Var, lv7 lv7Var, t6a t6aVar, qr5 qr5Var, qq6 qq6Var, ReflectionTypes reflectionTypes, kd kdVar, SignatureEnhancement signatureEnhancement, z65 z65Var, f85 f85Var, e eVar, JavaTypeEnhancementState javaTypeEnhancementState, u75 u75Var, i8a i8aVar, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(vx9Var, x65Var, vg5Var, deserializedDescriptorResolver, aj9Var, ed3Var, d85Var, b85Var, e19Var, j85Var, nq6Var, lv7Var, t6aVar, qr5Var, qq6Var, reflectionTypes, kdVar, signatureEnhancement, z65Var, f85Var, eVar, javaTypeEnhancementState, u75Var, (i & 8388608) != 0 ? i8a.a.a() : i8aVar);
    }
}
