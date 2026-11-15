.class public Lbu7;
.super Lhu7;
.source "SourceFile"


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    invoke-direct {p0, p1}, Lhu7;-><init>(Z)V

    return-void
.end method


# virtual methods
.method public b([Ljava/lang/Class;[I)V
    .locals 0

    return-void
.end method

.method public f(Ljava/util/List;Lfreemarker/ext/beans/b;)Lf96;
    .locals 9

    if-nez p1, :cond_0

    sget-object p1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p0}, Lhu7;->j()[[Ljava/lang/Class;

    move-result-object v1

    array-length v2, v1

    if-gt v2, v0, :cond_1

    sget-object p0, Ls93;->d:Ls93;

    return-object p0

    :cond_1
    aget-object v1, v1, v0

    if-nez v1, :cond_2

    sget-object p0, Ls93;->d:Ls93;

    return-object p0

    :cond_2
    new-array v2, v0, [Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lhu7;->i(I)[I

    move-result-object v3

    sget-object v4, Lhu7;->g:[I

    if-ne v3, v4, :cond_3

    const/4 v3, 0x0

    :cond_3
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v0, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lzfa;

    aget-object v7, v1, v5

    if-eqz v3, :cond_4

    aget v8, v3, v5

    goto :goto_1

    :cond_4
    move v8, v4

    :goto_1
    invoke-virtual {p2, v6, v7, v8}, Lfreemarker/ext/beans/b;->M(Lzfa;Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v6

    sget-object v7, Lhc7;->d:Ljava/lang/Object;

    if-ne v6, v7, :cond_5

    add-int/lit8 v5, v5, 0x1

    invoke-static {v5}, Ls93;->f(I)Ls93;

    move-result-object p0

    return-object p0

    :cond_5
    aput-object v6, v2, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_6
    invoke-virtual {p0, v2, v4}, Lhu7;->g([Ljava/lang/Object;Z)Le96;

    move-result-object p1

    instance-of p2, p1, Lqq0;

    if-eqz p2, :cond_9

    check-cast p1, Lqq0;

    iget-boolean p2, p0, Lhu7;->f:Z

    if-eqz p2, :cond_7

    if-eqz v3, :cond_8

    invoke-virtual {p1}, Lqq0;->b()[Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p0, v2, p2, v3}, Lhu7;->d([Ljava/lang/Object;[Ljava/lang/Class;[I)V

    goto :goto_2

    :cond_7
    invoke-virtual {p1}, Lqq0;->b()[Ljava/lang/Class;

    move-result-object p0

    invoke-static {p0, v2}, Lfreemarker/ext/beans/b;->k([Ljava/lang/Class;[Ljava/lang/Object;)V

    :cond_8
    :goto_2
    new-instance p0, Lan6;

    invoke-direct {p0, p1, v2}, Lan6;-><init>(Lqq0;[Ljava/lang/Object;)V

    return-object p0

    :cond_9
    check-cast p1, Lo93;

    invoke-static {p1, v2}, Ls93;->b(Lo93;[Ljava/lang/Object;)Lf96;

    move-result-object p0

    return-object p0
.end method

.method public l(Lqq0;)[Ljava/lang/Class;
    .locals 0

    invoke-virtual {p1}, Lqq0;->b()[Ljava/lang/Class;

    move-result-object p0

    return-object p0
.end method
