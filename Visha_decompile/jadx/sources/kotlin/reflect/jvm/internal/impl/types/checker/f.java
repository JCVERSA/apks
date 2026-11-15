package kotlin.reflect.jvm.internal.impl.types.checker;

import androidx.media3.exoplayer.upstream.CmcdData;
import defpackage.eh5;
import defpackage.mgb;
import defpackage.y45;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.reflect.jvm.internal.impl.resolve.OverridingUtil;
import kotlin.reflect.jvm.internal.impl.types.AbstractTypeChecker;
import kotlin.reflect.jvm.internal.impl.types.TypeCheckerState;

public final class f implements e {
    public final c c;
    public final KotlinTypePreparator d;
    public final OverridingUtil e;

    public f(c cVar, KotlinTypePreparator kotlinTypePreparator) {
        y45.j(cVar, "kotlinTypeRefiner");
        y45.j(kotlinTypePreparator, "kotlinTypePreparator");
        this.c = cVar;
        this.d = kotlinTypePreparator;
        OverridingUtil overridingUtilM = OverridingUtil.m(d());
        y45.i(overridingUtilM, "createWithTypeRefiner(kotlinTypeRefiner)");
        this.e = overridingUtilM;
    }

    @Override
    public OverridingUtil a() {
        return this.e;
    }

    @Override
    public boolean b(eh5 eh5Var, eh5 eh5Var2) {
        y45.j(eh5Var, CmcdData.OBJECT_TYPE_AUDIO_ONLY);
        y45.j(eh5Var2, "b");
        return e(a.b(false, false, null, f(), d(), 6, null), eh5Var.L0(), eh5Var2.L0());
    }

    @Override
    public boolean c(eh5 eh5Var, eh5 eh5Var2) {
        y45.j(eh5Var, "subtype");
        y45.j(eh5Var2, "supertype");
        return g(a.b(true, false, null, f(), d(), 6, null), eh5Var.L0(), eh5Var2.L0());
    }

    @Override
    public c d() {
        return this.c;
    }

    public final boolean e(TypeCheckerState typeCheckerState, mgb mgbVar, mgb mgbVar2) {
        y45.j(typeCheckerState, "<this>");
        y45.j(mgbVar, CmcdData.OBJECT_TYPE_AUDIO_ONLY);
        y45.j(mgbVar2, "b");
        return AbstractTypeChecker.a.k(typeCheckerState, mgbVar, mgbVar2);
    }

    public KotlinTypePreparator f() {
        return this.d;
    }

    public final boolean g(TypeCheckerState typeCheckerState, mgb mgbVar, mgb mgbVar2) {
        y45.j(typeCheckerState, "<this>");
        y45.j(mgbVar, "subType");
        y45.j(mgbVar2, "superType");
        return AbstractTypeChecker.t(AbstractTypeChecker.a, typeCheckerState, mgbVar, mgbVar2, false, 8, null);
    }

    public f(c cVar, KotlinTypePreparator kotlinTypePreparator, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(cVar, (i & 2) != 0 ? KotlinTypePreparator.a.a : kotlinTypePreparator);
    }
}
