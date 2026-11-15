.class public abstract Lk9e;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Ld9e;Z)Lhre;
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    move-object p1, v0

    goto :goto_0

    :cond_0
    sget-object p1, Lbde;->a:Lzce;

    :goto_0
    new-instance v1, Ls9e;

    invoke-direct {v1}, Ls9e;-><init>()V

    invoke-virtual {v1, p0, p1}, Ls9e;->a(Ld9e;Lzce;)Lhre;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lhre;->a()I

    move-result p1

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    return-object p0

    :cond_2
    :goto_1
    return-object v0
.end method

.method public static b(Lu4h;)Lm9e;
    .locals 12

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lu4h;->m(I)V

    invoke-virtual {p0}, Lu4h;->I()I

    move-result v0

    invoke-virtual {p0}, Lu4h;->w()I

    move-result v1

    int-to-long v1, v1

    int-to-long v3, v0

    div-int/lit8 v0, v0, 0x12

    new-array v5, v0, [J

    new-array v6, v0, [J

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v0, :cond_1

    invoke-virtual {p0}, Lu4h;->N()J

    move-result-wide v8

    const-wide/16 v10, -0x1

    cmp-long v10, v8, v10

    if-nez v10, :cond_0

    invoke-static {v5, v7}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v5

    invoke-static {v6, v7}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v6

    goto :goto_1

    :cond_0
    aput-wide v8, v5, v7

    invoke-virtual {p0}, Lu4h;->N()J

    move-result-wide v8

    aput-wide v8, v6, v7

    const/4 v8, 0x2

    invoke-virtual {p0, v8}, Lu4h;->m(I)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    add-long/2addr v1, v3

    invoke-virtual {p0}, Lu4h;->w()I

    move-result v0

    int-to-long v3, v0

    sub-long/2addr v1, v3

    long-to-int v0, v1

    invoke-virtual {p0, v0}, Lu4h;->m(I)V

    new-instance p0, Lm9e;

    invoke-direct {p0, v5, v6}, Lm9e;-><init>([J[J)V

    return-object p0
.end method
