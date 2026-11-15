.class public final Lb92$f;
.super Lj72;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb92;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# direct methods
.method public constructor <init>(Ltfc;)V
    .locals 0

    invoke-direct {p0, p1}, Lj72;-><init>(Ltfc;)V

    return-void
.end method

.method private static synthetic g(I)V
    .locals 6

    const/4 v0, 0x3

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x2

    if-eq p0, v2, :cond_2

    if-eq p0, v4, :cond_1

    if-eq p0, v0, :cond_0

    const-string v5, "what"

    aput-object v5, v1, v3

    goto :goto_0

    :cond_0
    const-string v5, "fromClass"

    aput-object v5, v1, v3

    goto :goto_0

    :cond_1
    const-string v5, "whatDeclaration"

    aput-object v5, v1, v3

    goto :goto_0

    :cond_2
    const-string v5, "from"

    aput-object v5, v1, v3

    :goto_0
    const-string v3, "kotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibilities$3"

    aput-object v3, v1, v2

    if-eq p0, v4, :cond_3

    if-eq p0, v0, :cond_3

    const-string p0, "isVisible"

    aput-object p0, v1, v4

    goto :goto_1

    :cond_3
    const-string p0, "doesReceiverFitForProtectedVisibility"

    aput-object p0, v1, v4

    :goto_1
    const-string p0, "Argument for @NotNull parameter \'%s\' of %s.%s must not be null"

    invoke-static {p0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public e(Lto8;Leu1;Lxt1;Z)Z
    .locals 5

    const/4 v0, 0x0

    if-nez p2, :cond_0

    invoke-static {v0}, Lb92$f;->g(I)V

    :cond_0
    const/4 v1, 0x1

    if-nez p3, :cond_1

    invoke-static {v1}, Lb92$f;->g(I)V

    :cond_1
    const-class v2, Lqw0;

    invoke-static {p2, v2}, Ly82;->q(Lxt1;Ljava/lang/Class;)Lxt1;

    move-result-object v3

    check-cast v3, Lqw0;

    invoke-static {p3, v2, v0}, Ly82;->r(Lxt1;Ljava/lang/Class;Z)Lxt1;

    move-result-object p3

    check-cast p3, Lqw0;

    if-nez p3, :cond_2

    return v0

    :cond_2
    if-eqz v3, :cond_3

    invoke-static {v3}, Ly82;->x(Lxt1;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-static {v3, v2}, Ly82;->q(Lxt1;Ljava/lang/Class;)Lxt1;

    move-result-object v3

    check-cast v3, Lqw0;

    if-eqz v3, :cond_3

    invoke-static {p3, v3}, Ly82;->H(Lqw0;Lqw0;)Z

    move-result v3

    if-eqz v3, :cond_3

    return v1

    :cond_3
    invoke-static {p2}, Ly82;->M(Leu1;)Leu1;

    move-result-object v3

    invoke-static {v3, v2}, Ly82;->q(Lxt1;Ljava/lang/Class;)Lxt1;

    move-result-object v2

    check-cast v2, Lqw0;

    if-nez v2, :cond_4

    return v0

    :cond_4
    invoke-static {p3, v2}, Ly82;->H(Lqw0;Lqw0;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0, p1, v3, p3}, Lb92$f;->h(Lto8;Leu1;Lqw0;)Z

    move-result v0

    if-eqz v0, :cond_5

    return v1

    :cond_5
    invoke-interface {p3}, Lqw0;->b()Lxt1;

    move-result-object p3

    invoke-virtual {p0, p1, p2, p3, p4}, Lb92$f;->e(Lto8;Leu1;Lxt1;Z)Z

    move-result p0

    return p0
.end method

.method public final h(Lto8;Leu1;Lqw0;)Z
    .locals 2

    if-nez p2, :cond_0

    const/4 p0, 0x2

    invoke-static {p0}, Lb92$f;->g(I)V

    :cond_0
    if-nez p3, :cond_1

    const/4 p0, 0x3

    invoke-static {p0}, Lb92$f;->g(I)V

    :cond_1
    sget-object p0, Lb92;->o:Lto8;

    const/4 v0, 0x0

    if-ne p1, p0, :cond_2

    return v0

    :cond_2
    instance-of p0, p2, Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;

    const/4 v1, 0x1

    if-nez p0, :cond_3

    return v1

    :cond_3
    instance-of p0, p2, Lkotlin/reflect/jvm/internal/impl/descriptors/c;

    if-eqz p0, :cond_4

    return v1

    :cond_4
    sget-object p0, Lb92;->n:Lto8;

    if-ne p1, p0, :cond_5

    return v1

    :cond_5
    invoke-static {}, Lb92;->b()Lto8;

    move-result-object p0

    if-eq p1, p0, :cond_8

    if-nez p1, :cond_6

    goto :goto_0

    :cond_6
    invoke-interface {p1}, Lto8;->getType()Leh5;

    move-result-object p0

    invoke-static {p0, p3}, Ly82;->I(Leh5;Lxt1;)Z

    move-result p1

    if-nez p1, :cond_7

    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/types/e;->a(Leh5;)Z

    move-result p0

    if-eqz p0, :cond_8

    :cond_7
    move v0, v1

    :cond_8
    :goto_0
    return v0
.end method
