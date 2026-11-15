.class public abstract Lma5;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final synthetic a(Lc74;)Lkotlinx/serialization/descriptors/a;
    .locals 0

    invoke-static {p0}, Lma5;->f(Lc74;)Lkotlinx/serialization/descriptors/a;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic b(Lhu1;)V
    .locals 0

    invoke-static {p0}, Lma5;->g(Lhu1;)V

    return-void
.end method

.method public static final synthetic c(Lca3;)V
    .locals 0

    invoke-static {p0}, Lma5;->h(Lca3;)V

    return-void
.end method

.method public static final d(Lhu1;)Lia5;
    .locals 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p0, Lia5;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lia5;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "This serializer can be used only with Json format.Expected Decoder to be JsonDecoder, got "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-static {p0}, Lxq8;->b(Ljava/lang/Class;)Lde5;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final e(Lca3;)Lna5;
    .locals 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p0, Lna5;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lna5;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "This serializer can be used only with Json format.Expected Encoder to be JsonEncoder, got "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-static {p0}, Lxq8;->b(Ljava/lang/Class;)Lde5;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final f(Lc74;)Lkotlinx/serialization/descriptors/a;
    .locals 1

    new-instance v0, Lma5$a;

    invoke-direct {v0, p0}, Lma5$a;-><init>(Lc74;)V

    return-object v0
.end method

.method public static final g(Lhu1;)V
    .locals 0

    invoke-static {p0}, Lma5;->d(Lhu1;)Lia5;

    return-void
.end method

.method public static final h(Lca3;)V
    .locals 0

    invoke-static {p0}, Lma5;->e(Lca3;)Lna5;

    return-void
.end method
