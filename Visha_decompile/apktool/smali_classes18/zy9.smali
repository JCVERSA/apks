.class public abstract Lzy9;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/util/Set;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    sget-object v0, Lkeb;->c:Lkeb$a;

    invoke-static {v0}, Lqn0;->F(Lkeb$a;)Lef5;

    move-result-object v0

    invoke-interface {v0}, Lef5;->getDescriptor()Lkotlinx/serialization/descriptors/a;

    move-result-object v0

    sget-object v1, Lqeb;->c:Lqeb$a;

    invoke-static {v1}, Lqn0;->G(Lqeb$a;)Lef5;

    move-result-object v1

    invoke-interface {v1}, Lef5;->getDescriptor()Lkotlinx/serialization/descriptors/a;

    move-result-object v1

    sget-object v2, Lzdb;->c:Lzdb$a;

    invoke-static {v2}, Lqn0;->E(Lzdb$a;)Lef5;

    move-result-object v2

    invoke-interface {v2}, Lef5;->getDescriptor()Lkotlinx/serialization/descriptors/a;

    move-result-object v2

    sget-object v3, Lbfb;->c:Lbfb$a;

    invoke-static {v3}, Lqn0;->H(Lbfb$a;)Lef5;

    move-result-object v3

    invoke-interface {v3}, Lef5;->getDescriptor()Lkotlinx/serialization/descriptors/a;

    move-result-object v3

    const/4 v4, 0x4

    new-array v4, v4, [Lkotlinx/serialization/descriptors/a;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    const/4 v0, 0x1

    aput-object v1, v4, v0

    const/4 v0, 0x2

    aput-object v2, v4, v0

    const/4 v0, 0x3

    aput-object v3, v4, v0

    invoke-static {v4}, Lye9;->j([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lzy9;->a:Ljava/util/Set;

    return-void
.end method

.method public static final a(Lkotlinx/serialization/descriptors/a;)Z
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Lkotlinx/serialization/descriptors/a;->isInline()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lla5;->l()Lkotlinx/serialization/descriptors/a;

    move-result-object v0

    invoke-static {p0, v0}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static final b(Lkotlinx/serialization/descriptors/a;)Z
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Lkotlinx/serialization/descriptors/a;->isInline()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lzy9;->a:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
