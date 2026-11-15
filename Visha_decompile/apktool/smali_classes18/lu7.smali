.class public final Llu7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lmx0;


# instance fields
.field public final a:Ljava/util/Map;

.field public final b:Lkotlin/reflect/jvm/internal/impl/types/checker/b$a;

.field public final c:Lkotlin/reflect/jvm/internal/impl/types/checker/c;

.field public final d:Lkotlin/reflect/jvm/internal/impl/types/checker/KotlinTypePreparator;

.field public final e:Ls74;


# direct methods
.method public constructor <init>(Ljava/util/Map;Lkotlin/reflect/jvm/internal/impl/types/checker/b$a;Lkotlin/reflect/jvm/internal/impl/types/checker/c;Lkotlin/reflect/jvm/internal/impl/types/checker/KotlinTypePreparator;Ls74;)V
    .locals 1

    const-string v0, "equalityAxioms"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "kotlinTypeRefiner"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "kotlinTypePreparator"

    invoke-static {p4, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Llu7;->a:Ljava/util/Map;

    iput-object p2, p0, Llu7;->b:Lkotlin/reflect/jvm/internal/impl/types/checker/b$a;

    iput-object p3, p0, Llu7;->c:Lkotlin/reflect/jvm/internal/impl/types/checker/c;

    iput-object p4, p0, Llu7;->d:Lkotlin/reflect/jvm/internal/impl/types/checker/KotlinTypePreparator;

    iput-object p5, p0, Llu7;->e:Ls74;

    return-void
.end method

.method public static final synthetic F0(Llu7;)Ls74;
    .locals 0

    iget-object p0, p0, Llu7;->e:Ls74;

    return-object p0
.end method


# virtual methods
.method public A(Ltbb;)Ljava/util/List;
    .locals 0

    invoke-static {p0, p1}, Lmx0$a;->r(Lmx0;Ltbb;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public A0(Ltbb;)Lp54;
    .locals 0

    invoke-static {p0, p1}, Lmx0$a;->p(Lmx0;Ltbb;)Lp54;

    move-result-object p0

    return-object p0
.end method

.method public B(Ltm9;)Z
    .locals 1

    const-string v0, "<this>"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0, p1}, Ltcb;->c(Ltm9;)Ltbb;

    move-result-object p1

    invoke-interface {p0, p1}, Ltcb;->U(Ltbb;)Z

    move-result p0

    return p0
.end method

.method public B0(Ltbb;)Lkotlin/reflect/jvm/internal/impl/builtins/PrimitiveType;
    .locals 0

    invoke-static {p0, p1}, Lmx0$a;->t(Lmx0;Ltbb;)Lkotlin/reflect/jvm/internal/impl/builtins/PrimitiveType;

    move-result-object p0

    return-object p0
.end method

.method public C(Lgh5;)Ltm9;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0, p1}, Ltcb;->I(Lgh5;)Liy3;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {p0, v0}, Ltcb;->e(Liy3;)Ltm9;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    invoke-interface {p0, p1}, Ltcb;->a(Lgh5;)Ltm9;

    move-result-object v0

    invoke-static {v0}, Ly45;->g(Ljava/lang/Object;)V

    :cond_1
    return-object v0
.end method

.method public C0(Lgh5;Z)Lgh5;
    .locals 0

    invoke-static {p0, p1, p2}, Lmx0$a;->o0(Lmx0;Lgh5;Z)Lgh5;

    move-result-object p0

    return-object p0
.end method

.method public D(Ltbb;)Ljava/util/Collection;
    .locals 0

    invoke-static {p0, p1}, Lmx0$a;->k0(Lmx0;Ltbb;)Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method

.method public D0(Lgh5;)Z
    .locals 1

    const-string v0, "<this>"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p1, Ltm9;

    if-eqz v0, :cond_0

    check-cast p1, Ltm9;

    invoke-interface {p0, p1}, Ltcb;->w(Ltm9;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public E(Ltm9;)Z
    .locals 0

    invoke-static {p0, p1}, Lmx0$a;->X(Lmx0;Ltm9;)Z

    move-result p0

    return p0
.end method

.method public E0(Ltm9;)Lh72;
    .locals 0

    invoke-static {p0, p1}, Lmx0$a;->e(Lmx0;Ltm9;)Lh72;

    move-result-object p0

    return-object p0
.end method

.method public F(Ljava/util/List;)Lgh5;
    .locals 0

    invoke-static {p0, p1}, Lmx0$a;->E(Lmx0;Ljava/util/List;)Lgh5;

    move-result-object p0

    return-object p0
.end method

.method public G(Lgh5;)Lgh5;
    .locals 2

    const-string v0, "<this>"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0, p1}, Ltcb;->a(Lgh5;)Ltm9;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-interface {p0, v0, v1}, Ltcb;->b(Ltm9;Z)Ltm9;

    move-result-object p0

    if-eqz p0, :cond_0

    move-object p1, p0

    :cond_0
    return-object p1
.end method

.method public final G0(Lsbb;Lsbb;)Z
    .locals 3

    iget-object v0, p0, Llu7;->b:Lkotlin/reflect/jvm/internal/impl/types/checker/b$a;

    invoke-interface {v0, p1, p2}, Lkotlin/reflect/jvm/internal/impl/types/checker/b$a;->a(Lsbb;Lsbb;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Llu7;->a:Ljava/util/Map;

    const/4 v2, 0x0

    if-nez v0, :cond_1

    return v2

    :cond_1
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsbb;

    iget-object p0, p0, Llu7;->a:Ljava/util/Map;

    invoke-interface {p0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lsbb;

    if-eqz v0, :cond_2

    invoke-static {v0, p2}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_4

    :cond_2
    if-eqz p0, :cond_3

    invoke-static {p0, p1}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    goto :goto_0

    :cond_3
    move v1, v2

    :cond_4
    :goto_0
    return v1
.end method

.method public H(Ltbb;Ltbb;)Z
    .locals 2

    const-string v0, "c1"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "c2"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p1, Lsbb;

    const-string v1, "Failed requirement."

    if-eqz v0, :cond_3

    instance-of v0, p2, Lsbb;

    if-eqz v0, :cond_2

    invoke-static {p0, p1, p2}, Lmx0$a;->a(Lmx0;Ltbb;Ltbb;)Z

    move-result v0

    if-nez v0, :cond_1

    check-cast p1, Lsbb;

    check-cast p2, Lsbb;

    invoke-virtual {p0, p1, p2}, Llu7;->G0(Lsbb;Lsbb;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public H0(ZZ)Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;
    .locals 7

    iget-object v0, p0, Llu7;->e:Ls74;

    if-nez v0, :cond_0

    iget-object v0, p0, Llu7;->c:Lkotlin/reflect/jvm/internal/impl/types/checker/c;

    iget-object v1, p0, Llu7;->d:Lkotlin/reflect/jvm/internal/impl/types/checker/KotlinTypePreparator;

    invoke-static {p1, p2, p0, v1, v0}, Lkotlin/reflect/jvm/internal/impl/types/checker/a;->a(ZZLmx0;Lkotlin/reflect/jvm/internal/impl/types/checker/KotlinTypePreparator;Lkotlin/reflect/jvm/internal/impl/types/checker/c;)Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object v4, p0, Llu7;->d:Lkotlin/reflect/jvm/internal/impl/types/checker/KotlinTypePreparator;

    iget-object v5, p0, Llu7;->c:Lkotlin/reflect/jvm/internal/impl/types/checker/c;

    new-instance v6, Llu7$a;

    move-object v0, v6

    move v1, p1

    move v2, p2

    move-object v3, p0

    invoke-direct/range {v0 .. v5}, Llu7$a;-><init>(ZZLlu7;Lkotlin/reflect/jvm/internal/impl/types/checker/KotlinTypePreparator;Lkotlin/reflect/jvm/internal/impl/types/checker/c;)V

    return-object v6
.end method

.method public I(Lgh5;)Liy3;
    .locals 0

    invoke-static {p0, p1}, Lmx0$a;->g(Lmx0;Lgh5;)Liy3;

    move-result-object p0

    return-object p0
.end method

.method public J(Lgh5;)Ltbb;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0, p1}, Ltcb;->a(Lgh5;)Ltm9;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-interface {p0, p1}, Ltcb;->C(Lgh5;)Ltm9;

    move-result-object v0

    :cond_0
    invoke-interface {p0, v0}, Ltcb;->c(Ltm9;)Ltbb;

    move-result-object p0

    return-object p0
.end method

.method public K(Ltbb;)Z
    .locals 0

    invoke-static {p0, p1}, Lmx0$a;->L(Lmx0;Ltbb;)Z

    move-result p0

    return p0
.end method

.method public L(Lh72;)Ltm9;
    .locals 0

    invoke-static {p0, p1}, Lmx0$a;->f0(Lmx0;Lh72;)Ltm9;

    move-result-object p0

    return-object p0
.end method

.method public M(Ltbb;)Z
    .locals 0

    invoke-static {p0, p1}, Lmx0$a;->F(Lmx0;Ltbb;)Z

    move-result p0

    return p0
.end method

.method public N(Lrr0;)Z
    .locals 0

    invoke-static {p0, p1}, Lmx0$a;->T(Lmx0;Lrr0;)Z

    move-result p0

    return p0
.end method

.method public O(Lgbb;I)Lhbb;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p1, Ltm9;

    if-eqz v0, :cond_0

    check-cast p1, Lgh5;

    invoke-interface {p0, p1, p2}, Ltcb;->k0(Lgh5;I)Lhbb;

    move-result-object p0

    goto :goto_0

    :cond_0
    instance-of p0, p1, Lkotlin/reflect/jvm/internal/impl/types/model/ArgumentList;

    if-eqz p0, :cond_1

    check-cast p1, Lkotlin/reflect/jvm/internal/impl/types/model/ArgumentList;

    invoke-virtual {p1, p2}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object p0

    const-string p1, "get(index)"

    invoke-static {p0, p1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lhbb;

    :goto_0
    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "unknown type argument list type: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-static {p1}, Lxq8;->b(Ljava/lang/Class;)Lde5;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public P(Ltm9;Ltm9;)Lgh5;
    .locals 0

    invoke-static {p0, p1, p2}, Lmx0$a;->m(Lmx0;Ltm9;Ltm9;)Lgh5;

    move-result-object p0

    return-object p0
.end method

.method public Q(Lrr0;)Z
    .locals 0

    invoke-static {p0, p1}, Lmx0$a;->R(Lmx0;Lrr0;)Z

    move-result p0

    return p0
.end method

.method public R(Lgbb;)I
    .locals 2

    const-string v0, "<this>"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p1, Ltm9;

    if-eqz v0, :cond_0

    check-cast p1, Lgh5;

    invoke-interface {p0, p1}, Ltcb;->o0(Lgh5;)I

    move-result p0

    goto :goto_0

    :cond_0
    instance-of p0, p1, Lkotlin/reflect/jvm/internal/impl/types/model/ArgumentList;

    if-eqz p0, :cond_1

    check-cast p1, Lkotlin/reflect/jvm/internal/impl/types/model/ArgumentList;

    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/types/model/ArgumentList;->size()I

    move-result p0

    :goto_0
    return p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unknown type argument list type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-static {p1}, Lxq8;->b(Ljava/lang/Class;)Lde5;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public S(Ltbb;)Z
    .locals 0

    invoke-static {p0, p1}, Lmx0$a;->M(Lmx0;Ltbb;)Z

    move-result p0

    return p0
.end method

.method public T(Ltbb;)Z
    .locals 0

    invoke-static {p0, p1}, Lmx0$a;->K(Lmx0;Ltbb;)Z

    move-result p0

    return p0
.end method

.method public U(Ltbb;)Z
    .locals 0

    invoke-static {p0, p1}, Lmx0$a;->G(Lmx0;Ltbb;)Z

    move-result p0

    return p0
.end method

.method public V(Lkcb;)Lkotlin/reflect/jvm/internal/impl/types/model/TypeVariance;
    .locals 0

    invoke-static {p0, p1}, Lmx0$a;->A(Lmx0;Lkcb;)Lkotlin/reflect/jvm/internal/impl/types/model/TypeVariance;

    move-result-object p0

    return-object p0
.end method

.method public W(Ltm9;)Ljava/util/Collection;
    .locals 0

    invoke-static {p0, p1}, Lmx0$a;->h0(Lmx0;Ltm9;)Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method

.method public X(Lrr0;)Lkotlin/reflect/jvm/internal/impl/types/model/CaptureStatus;
    .locals 0

    invoke-static {p0, p1}, Lmx0$a;->l(Lmx0;Lrr0;)Lkotlin/reflect/jvm/internal/impl/types/model/CaptureStatus;

    move-result-object p0

    return-object p0
.end method

.method public Y(Lgh5;)Z
    .locals 1

    const-string v0, "<this>"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0, p1}, Ltcb;->C(Lgh5;)Ltm9;

    move-result-object v0

    invoke-interface {p0, v0}, Ltcb;->w(Ltm9;)Z

    move-result v0

    invoke-interface {p0, p1}, Ltcb;->q(Lgh5;)Ltm9;

    move-result-object p1

    invoke-interface {p0, p1}, Ltcb;->w(Ltm9;)Z

    move-result p0

    if-eq v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public Z(Lgh5;)Z
    .locals 1

    const-string v0, "<this>"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0, p1}, Ltcb;->a(Lgh5;)Ltm9;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {p0, p1}, Ltcb;->E0(Ltm9;)Lh72;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    return p0
.end method

.method public a(Lgh5;)Ltm9;
    .locals 0

    invoke-static {p0, p1}, Lmx0$a;->i(Lmx0;Lgh5;)Ltm9;

    move-result-object p0

    return-object p0
.end method

.method public a0(Ltbb;)Lkcb;
    .locals 0

    invoke-static {p0, p1}, Lmx0$a;->w(Lmx0;Ltbb;)Lkcb;

    move-result-object p0

    return-object p0
.end method

.method public b(Ltm9;Z)Ltm9;
    .locals 0

    invoke-static {p0, p1, p2}, Lmx0$a;->p0(Lmx0;Ltm9;Z)Ltm9;

    move-result-object p0

    return-object p0
.end method

.method public b0(Liy3;)Ldo8;
    .locals 0

    invoke-static {p0, p1}, Lmx0$a;->h(Lmx0;Liy3;)Ldo8;

    move-result-object p0

    return-object p0
.end method

.method public c(Ltm9;)Ltbb;
    .locals 0

    invoke-static {p0, p1}, Lmx0$a;->m0(Lmx0;Ltm9;)Ltbb;

    move-result-object p0

    return-object p0
.end method

.method public c0(Ltbb;)I
    .locals 0

    invoke-static {p0, p1}, Lmx0$a;->g0(Lmx0;Ltbb;)I

    move-result p0

    return p0
.end method

.method public d(Ltm9;)Lrr0;
    .locals 0

    invoke-static {p0, p1}, Lmx0$a;->d(Lmx0;Ltm9;)Lrr0;

    move-result-object p0

    return-object p0
.end method

.method public d0(Lgh5;)Z
    .locals 0

    invoke-static {p0, p1}, Lmx0$a;->Z(Lmx0;Lgh5;)Z

    move-result p0

    return p0
.end method

.method public e(Liy3;)Ltm9;
    .locals 0

    invoke-static {p0, p1}, Lmx0$a;->b0(Lmx0;Liy3;)Ltm9;

    move-result-object p0

    return-object p0
.end method

.method public e0(Ltbb;I)Lkcb;
    .locals 0

    invoke-static {p0, p1, p2}, Lmx0$a;->q(Lmx0;Ltbb;I)Lkcb;

    move-result-object p0

    return-object p0
.end method

.method public f(Ltm9;)Z
    .locals 0

    invoke-static {p0, p1}, Lmx0$a;->U(Lmx0;Ltm9;)Z

    move-result p0

    return p0
.end method

.method public f0(Lgh5;)Z
    .locals 0

    invoke-static {p0, p1}, Lmx0$a;->O(Lmx0;Lgh5;)Z

    move-result p0

    return p0
.end method

.method public g(Liy3;)Ltm9;
    .locals 0

    invoke-static {p0, p1}, Lmx0$a;->n0(Lmx0;Liy3;)Ltm9;

    move-result-object p0

    return-object p0
.end method

.method public g0(Ltm9;I)Lhbb;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    if-ltz p2, :cond_0

    invoke-interface {p0, p1}, Ltcb;->o0(Lgh5;)I

    move-result v0

    if-ge p2, v0, :cond_0

    invoke-interface {p0, p1, p2}, Ltcb;->k0(Lgh5;I)Lhbb;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public h(Lkcb;)Ljava/util/List;
    .locals 0

    invoke-static {p0, p1}, Lmx0$a;->y(Lmx0;Lkcb;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public h0(Ltbb;)Z
    .locals 0

    invoke-static {p0, p1}, Lmx0$a;->P(Lmx0;Ltbb;)Z

    move-result p0

    return p0
.end method

.method public i(Lgh5;)Z
    .locals 1

    const-string v0, "<this>"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0, p1}, Ltcb;->I(Lgh5;)Liy3;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {p0, p1}, Ltcb;->y0(Liy3;)Lk43;

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public i0(Ltbb;)Z
    .locals 0

    invoke-static {p0, p1}, Lmx0$a;->H(Lmx0;Ltbb;)Z

    move-result p0

    return p0
.end method

.method public j(Lhbb;)Lgh5;
    .locals 0

    invoke-static {p0, p1}, Lmx0$a;->v(Lmx0;Lhbb;)Lgh5;

    move-result-object p0

    return-object p0
.end method

.method public j0(Ltm9;)Ltm9;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0, p1}, Ltcb;->E0(Ltm9;)Lh72;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {p0, v0}, Ltcb;->L(Lh72;)Ltm9;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    move-object p1, p0

    :cond_1
    :goto_0
    return-object p1
.end method

.method public k(Ltm9;Lkotlin/reflect/jvm/internal/impl/types/model/CaptureStatus;)Ltm9;
    .locals 0

    invoke-static {p0, p1, p2}, Lmx0$a;->k(Lmx0;Ltm9;Lkotlin/reflect/jvm/internal/impl/types/model/CaptureStatus;)Ltm9;

    move-result-object p0

    return-object p0
.end method

.method public k0(Lgh5;I)Lhbb;
    .locals 0

    invoke-static {p0, p1, p2}, Lmx0$a;->n(Lmx0;Lgh5;I)Lhbb;

    move-result-object p0

    return-object p0
.end method

.method public l(Lrr0;)Lgh5;
    .locals 0

    invoke-static {p0, p1}, Lmx0$a;->c0(Lmx0;Lrr0;)Lgh5;

    move-result-object p0

    return-object p0
.end method

.method public l0(Lgh5;)Z
    .locals 0

    invoke-static {p0, p1}, Lmx0$a;->Q(Lmx0;Lgh5;)Z

    move-result p0

    return p0
.end method

.method public m(Ltm9;)Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState$b;
    .locals 0

    invoke-static {p0, p1}, Lmx0$a;->j0(Lmx0;Ltm9;)Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState$b;

    move-result-object p0

    return-object p0
.end method

.method public m0(Lgh5;)Z
    .locals 0

    invoke-static {p0, p1}, Lmx0$a;->J(Lmx0;Lgh5;)Z

    move-result p0

    return p0
.end method

.method public n(Lgh5;)Ljava/util/List;
    .locals 0

    invoke-static {p0, p1}, Lmx0$a;->o(Lmx0;Lgh5;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public n0(Lkcb;Ltbb;)Z
    .locals 0

    invoke-static {p0, p1, p2}, Lmx0$a;->C(Lmx0;Lkcb;Ltbb;)Z

    move-result p0

    return p0
.end method

.method public o(Ltm9;)Z
    .locals 1

    const-string v0, "<this>"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0, p1}, Ltcb;->c(Ltm9;)Ltbb;

    move-result-object p1

    invoke-interface {p0, p1}, Ltcb;->K(Ltbb;)Z

    move-result p0

    return p0
.end method

.method public o0(Lgh5;)I
    .locals 0

    invoke-static {p0, p1}, Lmx0$a;->b(Lmx0;Lgh5;)I

    move-result p0

    return p0
.end method

.method public p(Ltm9;)Z
    .locals 0

    invoke-static {p0, p1}, Lmx0$a;->S(Lmx0;Ltm9;)Z

    move-result p0

    return p0
.end method

.method public p0(Lhbb;)Z
    .locals 0

    invoke-static {p0, p1}, Lmx0$a;->W(Lmx0;Lhbb;)Z

    move-result p0

    return p0
.end method

.method public q(Lgh5;)Ltm9;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0, p1}, Ltcb;->I(Lgh5;)Liy3;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {p0, v0}, Ltcb;->g(Liy3;)Ltm9;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    invoke-interface {p0, p1}, Ltcb;->a(Lgh5;)Ltm9;

    move-result-object v0

    invoke-static {v0}, Ly45;->g(Ljava/lang/Object;)V

    :cond_1
    return-object v0
.end method

.method public q0(Ltm9;)Lgbb;
    .locals 0

    invoke-static {p0, p1}, Lmx0$a;->c(Lmx0;Ltm9;)Lgbb;

    move-result-object p0

    return-object p0
.end method

.method public r(Ltbb;)Lkotlin/reflect/jvm/internal/impl/builtins/PrimitiveType;
    .locals 0

    invoke-static {p0, p1}, Lmx0$a;->s(Lmx0;Ltbb;)Lkotlin/reflect/jvm/internal/impl/builtins/PrimitiveType;

    move-result-object p0

    return-object p0
.end method

.method public r0(Ltm9;)Z
    .locals 0

    invoke-static {p0, p1}, Lmx0$a;->Y(Lmx0;Ltm9;)Z

    move-result p0

    return p0
.end method

.method public s(Lkcb;)Lgh5;
    .locals 0

    invoke-static {p0, p1}, Lmx0$a;->u(Lmx0;Lkcb;)Lgh5;

    move-result-object p0

    return-object p0
.end method

.method public s0(Lrr0;)Lqr0;
    .locals 0

    invoke-static {p0, p1}, Lmx0$a;->l0(Lmx0;Lrr0;)Lqr0;

    move-result-object p0

    return-object p0
.end method

.method public t(Lgh5;)Lhbb;
    .locals 0

    invoke-static {p0, p1}, Lmx0$a;->j(Lmx0;Lgh5;)Lhbb;

    move-result-object p0

    return-object p0
.end method

.method public t0(Ltbb;)Z
    .locals 0

    invoke-static {p0, p1}, Lmx0$a;->I(Lmx0;Ltbb;)Z

    move-result p0

    return p0
.end method

.method public u(Lqr0;)Lhbb;
    .locals 0

    invoke-static {p0, p1}, Lmx0$a;->i0(Lmx0;Lqr0;)Lhbb;

    move-result-object p0

    return-object p0
.end method

.method public u0(Lgh5;)Z
    .locals 1

    const-string v0, "<this>"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0, p1}, Ltcb;->J(Lgh5;)Ltbb;

    move-result-object v0

    invoke-interface {p0, v0}, Ltcb;->h0(Ltbb;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0, p1}, Ltcb;->l0(Lgh5;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public v(Ltm9;Ltm9;)Z
    .locals 0

    invoke-static {p0, p1, p2}, Lmx0$a;->D(Lmx0;Ltm9;Ltm9;)Z

    move-result p0

    return p0
.end method

.method public v0(Lgh5;)Z
    .locals 1

    const-string v0, "<this>"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0, p1}, Ltcb;->a(Lgh5;)Ltm9;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {p0, p1}, Ltcb;->d(Ltm9;)Lrr0;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    return p0
.end method

.method public w(Ltm9;)Z
    .locals 0

    invoke-static {p0, p1}, Lmx0$a;->N(Lmx0;Ltm9;)Z

    move-result p0

    return p0
.end method

.method public w0(Lgh5;)Lgh5;
    .locals 0

    invoke-static {p0, p1}, Lmx0$a;->d0(Lmx0;Lgh5;)Lgh5;

    move-result-object p0

    return-object p0
.end method

.method public x(Lgh5;Lo54;)Z
    .locals 0

    invoke-static {p0, p1, p2}, Lmx0$a;->B(Lmx0;Lgh5;Lo54;)Z

    move-result p0

    return p0
.end method

.method public x0(Ltbb;)Z
    .locals 0

    invoke-static {p0, p1}, Lmx0$a;->a0(Lmx0;Ltbb;)Z

    move-result p0

    return p0
.end method

.method public y(Ltm9;Ltbb;)Ljava/util/List;
    .locals 0

    const-string p0, "<this>"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "constructor"

    invoke-static {p2, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public y0(Liy3;)Lk43;
    .locals 0

    invoke-static {p0, p1}, Lmx0$a;->f(Lmx0;Liy3;)Lk43;

    const/4 p0, 0x0

    return-object p0
.end method

.method public z(Lhbb;)Lkotlin/reflect/jvm/internal/impl/types/model/TypeVariance;
    .locals 0

    invoke-static {p0, p1}, Lmx0$a;->z(Lmx0;Lhbb;)Lkotlin/reflect/jvm/internal/impl/types/model/TypeVariance;

    move-result-object p0

    return-object p0
.end method

.method public z0(Lgh5;)Lgh5;
    .locals 0

    invoke-static {p0, p1}, Lmx0$a;->x(Lmx0;Lgh5;)Lgh5;

    move-result-object p0

    return-object p0
.end method
