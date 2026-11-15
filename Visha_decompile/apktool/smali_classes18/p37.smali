.class public final Lp37;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lef5;


# instance fields
.field public final a:Lef5;

.field public final b:Lkotlinx/serialization/descriptors/a;


# direct methods
.method public constructor <init>(Lef5;)V
    .locals 1

    const-string v0, "serializer"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lp37;->a:Lef5;

    new-instance v0, Lfd9;

    invoke-interface {p1}, Lef5;->getDescriptor()Lkotlinx/serialization/descriptors/a;

    move-result-object p1

    invoke-direct {v0, p1}, Lfd9;-><init>(Lkotlinx/serialization/descriptors/a;)V

    iput-object v0, p0, Lp37;->b:Lkotlinx/serialization/descriptors/a;

    return-void
.end method


# virtual methods
.method public deserialize(Lhu1;)Ljava/lang/Object;
    .locals 1

    const-string v0, "decoder"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Lhu1;->E()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lp37;->a:Lef5;

    invoke-interface {p1, p0}, Lhu1;->B(Lk92;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Lhu1;->g()Ljava/lang/Void;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lp37;

    if-eq v3, v2, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Lp37;

    iget-object p0, p0, Lp37;->a:Lef5;

    iget-object p1, p1, Lp37;->a:Lef5;

    invoke-static {p0, p1}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    return v1

    :cond_2
    return v0

    :cond_3
    :goto_0
    return v1
.end method

.method public getDescriptor()Lkotlinx/serialization/descriptors/a;
    .locals 0

    iget-object p0, p0, Lp37;->b:Lkotlinx/serialization/descriptors/a;

    return-object p0
.end method

.method public hashCode()I
    .locals 0

    iget-object p0, p0, Lp37;->a:Lef5;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    return p0
.end method

.method public serialize(Lca3;Ljava/lang/Object;)V
    .locals 1

    const-string v0, "encoder"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    invoke-interface {p1}, Lca3;->E()V

    iget-object p0, p0, Lp37;->a:Lef5;

    invoke-interface {p1, p0, p2}, Lca3;->C(Lnd9;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Lca3;->A()V

    :goto_0
    return-void
.end method
