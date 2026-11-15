.class public abstract Lyp3;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Ltp3;Z)Ltp3;
    .locals 1

    if-eqz p0, :cond_3

    sget-object v0, Ltp3$b;->d:Ltp3$b;

    invoke-static {p0, v0}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Ltp3$c;->d:Ltp3$c;

    invoke-static {p0, v0}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    instance-of v0, p0, Ltp3$e;

    if-eqz v0, :cond_1

    new-instance v0, Ltp3$e;

    check-cast p0, Ltp3$e;

    iget-object p0, p0, Ltp3$e;->d:Ljava/lang/Object;

    invoke-direct {v0, p1, p0}, Ltp3$e;-><init>(ZLjava/lang/Object;)V

    goto :goto_1

    :cond_1
    instance-of v0, p0, Ltp3$d;

    if-eqz v0, :cond_2

    new-instance v0, Ltp3$d;

    check-cast p0, Ltp3$d;

    iget-object p0, p0, Ltp3$d;->d:Ljava/lang/String;

    invoke-direct {v0, p1, p0}, Ltp3$d;-><init>(ZLjava/lang/String;)V

    goto :goto_1

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Unknown field type"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    :goto_0
    sget-object p0, Ltp3;->c:Ltp3$a;

    invoke-virtual {p0, p1}, Ltp3$a;->a(Z)Ltp3;

    move-result-object v0

    :goto_1
    return-object v0
.end method
