.class public abstract Lmh1;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Lkotlinx/serialization/descriptors/a;)Lde5;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p0, Lqh1;

    if-eqz v0, :cond_0

    check-cast p0, Lqh1;

    iget-object p0, p0, Lqh1;->b:Lde5;

    goto :goto_0

    :cond_0
    instance-of v0, p0, Lfd9;

    if-eqz v0, :cond_1

    check-cast p0, Lfd9;

    invoke-virtual {p0}, Lfd9;->j()Lkotlinx/serialization/descriptors/a;

    move-result-object p0

    invoke-static {p0}, Lmh1;->a(Lkotlinx/serialization/descriptors/a;)Lde5;

    move-result-object p0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static final b(Ltd9;Lkotlinx/serialization/descriptors/a;)Lkotlinx/serialization/descriptors/a;
    .locals 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "descriptor"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lmh1;->a(Lkotlinx/serialization/descriptors/a;)Lde5;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const/4 v1, 0x2

    invoke-static {p0, p1, v0, v1, v0}, Ltd9;->c(Ltd9;Lde5;Ljava/util/List;ILjava/lang/Object;)Lef5;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lef5;->getDescriptor()Lkotlinx/serialization/descriptors/a;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public static final c(Lkotlinx/serialization/descriptors/a;Lde5;)Lkotlinx/serialization/descriptors/a;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lqh1;

    invoke-direct {v0, p0, p1}, Lqh1;-><init>(Lkotlinx/serialization/descriptors/a;Lde5;)V

    return-object v0
.end method
