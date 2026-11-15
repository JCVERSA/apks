.class public abstract Lva5;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Lu95;Le74;)Lu95;
    .locals 1

    const-string v0, "from"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "builderAction"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lz95;

    invoke-direct {v0, p0}, Lz95;-><init>(Lu95;)V

    invoke-interface {p1, v0}, Le74;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Lz95;->a()Lda5;

    move-result-object p0

    new-instance p1, Lta5;

    invoke-virtual {v0}, Lz95;->b()Ltd9;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Lta5;-><init>(Lda5;Ltd9;)V

    return-object p1
.end method

.method public static synthetic b(Lu95;Le74;ILjava/lang/Object;)Lu95;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    sget-object p0, Lu95;->d:Lu95$a;

    :cond_0
    invoke-static {p0, p1}, Lva5;->a(Lu95;Le74;)Lu95;

    move-result-object p0

    return-object p0
.end method
