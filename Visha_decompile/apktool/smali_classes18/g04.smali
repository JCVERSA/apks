.class public abstract synthetic Lg04;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Lnz3;Lwh1;)Ljava/lang/Object;
    .locals 1

    sget-object v0, Ls17;->b:Ls17;

    invoke-interface {p0, v0, p1}, Lnz3;->collect(Loz3;Lwh1;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {}, Lz45;->f()Ljava/lang/Object;

    move-result-object p1

    if-ne p0, p1, :cond_0

    return-object p0

    :cond_0
    sget-object p0, Lzfb;->a:Lzfb;

    return-object p0
.end method

.method public static final b(Lnz3;Ls74;Lwh1;)Ljava/lang/Object;
    .locals 2

    invoke-static {p0, p1}, Lsz3;->v(Lnz3;Ls74;)Lnz3;

    move-result-object p0

    const/4 p1, 0x0

    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-static {p0, v1, p1, v0, p1}, Lsz3;->c(Lnz3;ILkotlinx/coroutines/channels/BufferOverflow;ILjava/lang/Object;)Lnz3;

    move-result-object p0

    invoke-static {p0, p2}, Lsz3;->f(Lnz3;Lwh1;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {}, Lz45;->f()Ljava/lang/Object;

    move-result-object p1

    if-ne p0, p1, :cond_0

    return-object p0

    :cond_0
    sget-object p0, Lzfb;->a:Lzfb;

    return-object p0
.end method

.method public static final c(Loz3;Lnz3;Lwh1;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0}, Lsz3;->n(Loz3;)V

    invoke-interface {p1, p0, p2}, Lnz3;->collect(Loz3;Lwh1;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {}, Lz45;->f()Ljava/lang/Object;

    move-result-object p1

    if-ne p0, p1, :cond_0

    return-object p0

    :cond_0
    sget-object p0, Lzfb;->a:Lzfb;

    return-object p0
.end method
