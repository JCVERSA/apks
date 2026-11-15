.class public abstract Lca3$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lca3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method public static a(Lca3;Lkotlinx/serialization/descriptors/a;I)Lid1;
    .locals 0

    const-string p2, "descriptor"

    invoke-static {p1, p2}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0, p1}, Lca3;->b(Lkotlinx/serialization/descriptors/a;)Lid1;

    move-result-object p0

    return-object p0
.end method

.method public static b(Lca3;)V
    .locals 0

    return-void
.end method

.method public static c(Lca3;Lnd9;Ljava/lang/Object;)V
    .locals 1

    const-string v0, "serializer"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Lnd9;->getDescriptor()Lkotlinx/serialization/descriptors/a;

    move-result-object v0

    invoke-interface {v0}, Lkotlinx/serialization/descriptors/a;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0, p1, p2}, Lca3;->C(Lnd9;Ljava/lang/Object;)V

    return-void

    :cond_0
    if-nez p2, :cond_1

    invoke-interface {p0}, Lca3;->A()V

    goto :goto_0

    :cond_1
    invoke-interface {p0}, Lca3;->E()V

    invoke-interface {p0, p1, p2}, Lca3;->C(Lnd9;Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public static d(Lca3;Lnd9;Ljava/lang/Object;)V
    .locals 1

    const-string v0, "serializer"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1, p0, p2}, Lnd9;->serialize(Lca3;Ljava/lang/Object;)V

    return-void
.end method
