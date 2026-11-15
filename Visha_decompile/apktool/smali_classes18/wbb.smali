.class public abstract Lwbb;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lwbb$a;
    }
.end annotation


# static fields
.field public static final a:Lmd;

.field public static final b:Lva3;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lva3;

    sget-object v1, Lyc5;->u:Lo54;

    const-string v2, "ENHANCED_NULLABILITY_ANNOTATION"

    invoke-static {v1, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lva3;-><init>(Lo54;)V

    sput-object v0, Lwbb;->a:Lmd;

    new-instance v0, Lva3;

    sget-object v1, Lyc5;->v:Lo54;

    const-string v2, "ENHANCED_MUTABILITY_ANNOTATION"

    invoke-static {v1, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lva3;-><init>(Lo54;)V

    sput-object v0, Lwbb;->b:Lva3;

    return-void
.end method

.method public static final synthetic a(Ljava/util/List;)Lmd;
    .locals 0

    invoke-static {p0}, Lwbb;->e(Ljava/util/List;)Lmd;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic b(Lpx0;Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/a;Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/TypeComponentPosition;)Lpx0;
    .locals 0

    invoke-static {p0, p1, p2}, Lwbb;->f(Lpx0;Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/a;Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/TypeComponentPosition;)Lpx0;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic c()Lva3;
    .locals 1

    sget-object v0, Lwbb;->b:Lva3;

    return-object v0
.end method

.method public static final synthetic d(Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/a;Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/TypeComponentPosition;)Ljava/lang/Boolean;
    .locals 0

    invoke-static {p0, p1}, Lwbb;->h(Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/a;Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/TypeComponentPosition;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static final e(Ljava/util/List;)Lmd;
    .locals 2

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/CompositeAnnotations;

    check-cast p0, Ljava/lang/Iterable;

    invoke-static {p0}, Li81;->b1(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/CompositeAnnotations;-><init>(Ljava/util/List;)V

    goto :goto_0

    :cond_0
    invoke-static {p0}, Li81;->O0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Lmd;

    :goto_0
    return-object v0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "At least one Annotations object expected"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final f(Lpx0;Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/a;Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/TypeComponentPosition;)Lpx0;
    .locals 4

    sget-object v0, Ln85;->a:Ln85;

    invoke-static {p2}, Lrbb;->a(Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/TypeComponentPosition;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    instance-of v1, p0, Lqw0;

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/a;->c()Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/MutabilityQualifier;

    move-result-object v1

    sget-object v3, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/MutabilityQualifier;->READ_ONLY:Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/MutabilityQualifier;

    if-ne v1, v3, :cond_2

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/TypeComponentPosition;->FLEXIBLE_LOWER:Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/TypeComponentPosition;

    if-ne p2, v1, :cond_2

    move-object v1, p0

    check-cast v1, Lqw0;

    invoke-virtual {v0, v1}, Ln85;->c(Lqw0;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v0, v1}, Ln85;->a(Lqw0;)Lqw0;

    move-result-object v2

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/a;->c()Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/MutabilityQualifier;

    move-result-object p1

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/MutabilityQualifier;->MUTABLE:Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/MutabilityQualifier;

    if-ne p1, v1, :cond_3

    sget-object p1, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/TypeComponentPosition;->FLEXIBLE_UPPER:Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/TypeComponentPosition;

    if-ne p2, p1, :cond_3

    check-cast p0, Lqw0;

    invoke-virtual {v0, p0}, Ln85;->d(Lqw0;)Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {v0, p0}, Ln85;->b(Lqw0;)Lqw0;

    move-result-object v2

    :cond_3
    :goto_0
    return-object v2
.end method

.method public static final g()Lmd;
    .locals 1

    sget-object v0, Lwbb;->a:Lmd;

    return-object v0
.end method

.method public static final h(Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/a;Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/TypeComponentPosition;)Ljava/lang/Boolean;
    .locals 1

    invoke-static {p1}, Lrbb;->a(Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/TypeComponentPosition;)Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/a;->d()Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/NullabilityQualifier;

    move-result-object p0

    if-nez p0, :cond_1

    const/4 p0, -0x1

    goto :goto_0

    :cond_1
    sget-object p1, Lwbb$a;->a:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, p1, p0

    :goto_0
    const/4 p1, 0x1

    if-eq p0, p1, :cond_3

    const/4 p1, 0x2

    if-eq p0, p1, :cond_2

    goto :goto_1

    :cond_2
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_1

    :cond_3
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_1
    return-object v0
.end method

.method public static final i(Leh5;)Z
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lyl9;->a:Lyl9;

    invoke-static {v0, p0}, Lxbb;->c(Lkotlin/reflect/jvm/internal/impl/types/m;Lgh5;)Z

    move-result p0

    return p0
.end method
