.class public final Lb92$e;
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
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq p0, v2, :cond_0

    const-string p0, "what"

    aput-object p0, v0, v1

    goto :goto_0

    :cond_0
    const-string p0, "from"

    aput-object p0, v0, v1

    :goto_0
    const-string p0, "kotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibilities$2"

    aput-object p0, v0, v2

    const/4 p0, 0x2

    const-string v1, "isVisible"

    aput-object v1, v0, p0

    const-string p0, "Argument for @NotNull parameter \'%s\' of %s.%s must not be null"

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public e(Lto8;Leu1;Lxt1;Z)Z
    .locals 2

    const/4 p0, 0x0

    if-nez p2, :cond_0

    invoke-static {p0}, Lb92$e;->g(I)V

    :cond_0
    const/4 v0, 0x1

    if-nez p3, :cond_1

    invoke-static {v0}, Lb92$e;->g(I)V

    :cond_1
    sget-object v1, Lb92;->a:Lc92;

    invoke-virtual {v1, p1, p2, p3, p4}, Lc92;->e(Lto8;Leu1;Lxt1;Z)Z

    move-result p3

    if-eqz p3, :cond_4

    sget-object p3, Lb92;->n:Lto8;

    if-ne p1, p3, :cond_2

    return v0

    :cond_2
    invoke-static {}, Lb92;->b()Lto8;

    move-result-object p3

    if-ne p1, p3, :cond_3

    return p0

    :cond_3
    const-class p3, Lqw0;

    invoke-static {p2, p3}, Ly82;->q(Lxt1;Ljava/lang/Class;)Lxt1;

    move-result-object p2

    if-eqz p2, :cond_4

    instance-of p3, p1, Lwha;

    if-eqz p3, :cond_4

    check-cast p1, Lwha;

    invoke-interface {p1}, Lwha;->k()Lqw0;

    move-result-object p0

    invoke-interface {p0}, Lqw0;->a()Lqw0;

    move-result-object p0

    invoke-interface {p2}, Lxt1;->a()Lxt1;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    :cond_4
    return p0
.end method
