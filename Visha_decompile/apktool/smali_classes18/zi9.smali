.class public final Lzi9;
.super Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/AbstractSignatureParts;
.source "SourceFile"


# instance fields
.field public final a:Ldd;

.field public final b:Z

.field public final c:Lgj5;

.field public final d:Lkotlin/reflect/jvm/internal/impl/load/java/AnnotationQualifierApplicabilityType;

.field public final e:Z


# direct methods
.method public constructor <init>(Ldd;ZLgj5;Lkotlin/reflect/jvm/internal/impl/load/java/AnnotationQualifierApplicabilityType;Z)V
    .locals 1

    const-string v0, "containerContext"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "containerApplicabilityType"

    invoke-static {p4, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/AbstractSignatureParts;-><init>()V

    .line 3
    iput-object p1, p0, Lzi9;->a:Ldd;

    .line 4
    iput-boolean p2, p0, Lzi9;->b:Z

    .line 5
    iput-object p3, p0, Lzi9;->c:Lgj5;

    .line 6
    iput-object p4, p0, Lzi9;->d:Lkotlin/reflect/jvm/internal/impl/load/java/AnnotationQualifierApplicabilityType;

    .line 7
    iput-boolean p5, p0, Lzi9;->e:Z

    return-void
.end method

.method public synthetic constructor <init>(Ldd;ZLgj5;Lkotlin/reflect/jvm/internal/impl/load/java/AnnotationQualifierApplicabilityType;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 6

    and-int/lit8 p6, p6, 0x10

    if-eqz p6, :cond_0

    const/4 p5, 0x0

    :cond_0
    move v5, p5

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 1
    invoke-direct/range {v0 .. v5}, Lzi9;-><init>(Ldd;ZLgj5;Lkotlin/reflect/jvm/internal/impl/load/java/AnnotationQualifierApplicabilityType;Z)V

    return-void
.end method


# virtual methods
.method public A(Lgh5;)Z
    .locals 0

    const-string p0, "<this>"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Leh5;

    invoke-virtual {p1}, Leh5;->L0()Lmgb;

    move-result-object p0

    instance-of p0, p0, La27;

    return p0
.end method

.method public D(Lgd;Lgh5;)Z
    .locals 2

    const-string v0, "<this>"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p1, Lkd8;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lkd8;

    invoke-interface {v0}, Lkd8;->e()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    instance-of v0, p1, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaAnnotationDescriptor;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lzi9;->p()Z

    move-result v0

    if-nez v0, :cond_1

    move-object v0, p1

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaAnnotationDescriptor;

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaAnnotationDescriptor;->k()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lzi9;->m()Lkotlin/reflect/jvm/internal/impl/load/java/AnnotationQualifierApplicabilityType;

    move-result-object v0

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/load/java/AnnotationQualifierApplicabilityType;->TYPE_PARAMETER_BOUNDS:Lkotlin/reflect/jvm/internal/impl/load/java/AnnotationQualifierApplicabilityType;

    if-eq v0, v1, :cond_2

    :cond_1
    if-eqz p2, :cond_3

    check-cast p2, Leh5;

    invoke-static {p2}, Lkotlin/reflect/jvm/internal/impl/builtins/d;->q0(Leh5;)Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-virtual {p0}, Lzi9;->E()Lkd;

    move-result-object p2

    invoke-virtual {p2, p1}, Lkotlin/reflect/jvm/internal/impl/load/java/AbstractAnnotationTypeQualifierResolver;->m(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p0, p0, Lzi9;->c:Lgj5;

    invoke-virtual {p0}, Lgj5;->a()Le85;

    move-result-object p0

    invoke-virtual {p0}, Le85;->q()Lf85;

    move-result-object p0

    invoke-interface {p0}, Lf85;->d()Z

    move-result p0

    if-nez p0, :cond_3

    :cond_2
    const/4 p0, 0x1

    goto :goto_0

    :cond_3
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public E()Lkd;
    .locals 0

    iget-object p0, p0, Lzi9;->c:Lgj5;

    invoke-virtual {p0}, Lgj5;->a()Le85;

    move-result-object p0

    invoke-virtual {p0}, Le85;->a()Lkd;

    move-result-object p0

    return-object p0
.end method

.method public F(Lgh5;)Leh5;
    .locals 0

    const-string p0, "<this>"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Leh5;

    invoke-static {p1}, Lddb;->a(Leh5;)Leh5;

    move-result-object p0

    return-object p0
.end method

.method public G()Lvcb;
    .locals 0

    sget-object p0, Lyl9;->a:Lyl9;

    return-object p0
.end method

.method public bridge synthetic h(Ljava/lang/Object;Lgh5;)Z
    .locals 0

    check-cast p1, Lgd;

    invoke-virtual {p0, p1, p2}, Lzi9;->D(Lgd;Lgh5;)Z

    move-result p0

    return p0
.end method

.method public bridge synthetic i()Lkotlin/reflect/jvm/internal/impl/load/java/AbstractAnnotationTypeQualifierResolver;
    .locals 0

    invoke-virtual {p0}, Lzi9;->E()Lkd;

    move-result-object p0

    return-object p0
.end method

.method public j(Lgh5;)Ljava/lang/Iterable;
    .locals 0

    const-string p0, "<this>"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Leh5;

    invoke-virtual {p1}, Leh5;->getAnnotations()Lmd;

    move-result-object p0

    return-object p0
.end method

.method public l()Ljava/lang/Iterable;
    .locals 0

    iget-object p0, p0, Lzi9;->a:Ldd;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ldd;->getAnnotations()Lmd;

    move-result-object p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Ly71;->k()Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    :goto_0
    return-object p0
.end method

.method public m()Lkotlin/reflect/jvm/internal/impl/load/java/AnnotationQualifierApplicabilityType;
    .locals 0

    iget-object p0, p0, Lzi9;->d:Lkotlin/reflect/jvm/internal/impl/load/java/AnnotationQualifierApplicabilityType;

    return-object p0
.end method

.method public n()Lu85;
    .locals 0

    iget-object p0, p0, Lzi9;->c:Lgj5;

    invoke-virtual {p0}, Lgj5;->b()Lu85;

    move-result-object p0

    return-object p0
.end method

.method public o()Z
    .locals 1

    iget-object p0, p0, Lzi9;->a:Ldd;

    instance-of v0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/h;

    if-eqz v0, :cond_0

    check-cast p0, Lkotlin/reflect/jvm/internal/impl/descriptors/h;

    invoke-interface {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/h;->x0()Leh5;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public p()Z
    .locals 0

    iget-object p0, p0, Lzi9;->c:Lgj5;

    invoke-virtual {p0}, Lgj5;->a()Le85;

    move-result-object p0

    invoke-virtual {p0}, Le85;->q()Lf85;

    move-result-object p0

    invoke-interface {p0}, Lf85;->c()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic q(Lgh5;)Lgh5;
    .locals 0

    invoke-virtual {p0, p1}, Lzi9;->F(Lgh5;)Leh5;

    move-result-object p0

    return-object p0
.end method

.method public s(Lgh5;)Lp54;
    .locals 0

    const-string p0, "<this>"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Leh5;

    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/types/n;->f(Leh5;)Lqw0;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-static {p0}, Ly82;->m(Lxt1;)Lp54;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public u()Z
    .locals 0

    iget-boolean p0, p0, Lzi9;->e:Z

    return p0
.end method

.method public bridge synthetic v()Ltcb;
    .locals 0

    invoke-virtual {p0}, Lzi9;->G()Lvcb;

    move-result-object p0

    return-object p0
.end method

.method public w(Lgh5;)Z
    .locals 0

    const-string p0, "<this>"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Leh5;

    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/builtins/d;->e0(Leh5;)Z

    move-result p0

    return p0
.end method

.method public x()Z
    .locals 0

    iget-boolean p0, p0, Lzi9;->b:Z

    return p0
.end method

.method public y(Lgh5;Lgh5;)Z
    .locals 1

    const-string v0, "<this>"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "other"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lzi9;->c:Lgj5;

    invoke-virtual {p0}, Lgj5;->a()Le85;

    move-result-object p0

    invoke-virtual {p0}, Le85;->k()Lkotlin/reflect/jvm/internal/impl/types/checker/e;

    move-result-object p0

    check-cast p1, Leh5;

    check-cast p2, Leh5;

    invoke-interface {p0, p1, p2}, Lkotlin/reflect/jvm/internal/impl/types/checker/b;->b(Leh5;Leh5;)Z

    move-result p0

    return p0
.end method

.method public z(Lkcb;)Z
    .locals 0

    const-string p0, "<this>"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of p0, p1, Lij5;

    return p0
.end method
