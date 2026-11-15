.class public abstract Ly1/f;
.super Ljava/lang/Object;
.source "source.java"


# direct methods
.method public static a(Lz1/j;Ljava/lang/String;Lz1/i;ILjava/util/Map;)Lw1/h;
    .locals 2

    .line 1
    new-instance v0, Lw1/h$b;

    .line 2
    .line 3
    invoke-direct {v0}, Lw1/h$b;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p2, p1}, Lz1/i;->b(Ljava/lang/String;)Landroid/net/Uri;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-virtual {v0, p1}, Lw1/h$b;->i(Landroid/net/Uri;)Lw1/h$b;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    iget-wide v0, p2, Lz1/i;->a:J

    .line 15
    .line 16
    invoke-virtual {p1, v0, v1}, Lw1/h$b;->h(J)Lw1/h$b;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    iget-wide v0, p2, Lz1/i;->b:J

    .line 21
    .line 22
    invoke-virtual {p1, v0, v1}, Lw1/h$b;->g(J)Lw1/h$b;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-static {p0, p2}, Ly1/f;->g(Lz1/j;Lz1/i;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    invoke-virtual {p1, p0}, Lw1/h$b;->f(Ljava/lang/String;)Lw1/h$b;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    invoke-virtual {p0, p3}, Lw1/h$b;->b(I)Lw1/h$b;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    invoke-virtual {p0, p4}, Lw1/h$b;->e(Ljava/util/Map;)Lw1/h$b;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    invoke-virtual {p0}, Lw1/h$b;->a()Lw1/h;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    return-object p0
.end method

.method public static b(Landroidx/media3/datasource/a;ILz1/j;)Lk2/h;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-static {p0, p1, p2, v0}, Ly1/f;->c(Landroidx/media3/datasource/a;ILz1/j;I)Lk2/h;

    .line 3
    .line 4
    .line 5
    move-result-object p0

    .line 6
    return-object p0
.end method

.method public static c(Landroidx/media3/datasource/a;ILz1/j;I)Lk2/h;
    .locals 1

    .line 1
    invoke-virtual {p2}, Lz1/j;->m()Lz1/i;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const/4 p0, 0x0

    .line 8
    return-object p0

    .line 9
    :cond_0
    iget-object v0, p2, Lz1/j;->b:Landroidx/media3/common/r;

    .line 10
    .line 11
    invoke-static {p1, v0}, Ly1/f;->f(ILandroidx/media3/common/r;)Lg2/f;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    const/4 v0, 0x1

    .line 16
    :try_start_0
    invoke-static {p1, p0, p2, p3, v0}, Ly1/f;->e(Lg2/f;Landroidx/media3/datasource/a;Lz1/j;IZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    .line 18
    .line 19
    invoke-interface {p1}, Lg2/f;->release()V

    .line 20
    .line 21
    .line 22
    invoke-interface {p1}, Lg2/f;->b()Lk2/h;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    return-object p0

    .line 27
    :catchall_0
    move-exception p0

    .line 28
    invoke-interface {p1}, Lg2/f;->release()V

    .line 29
    .line 30
    .line 31
    throw p0
.end method

.method private static d(Landroidx/media3/datasource/a;Lz1/j;ILg2/f;Lz1/i;)V
    .locals 9

    .line 1
    iget-object v0, p1, Lz1/j;->c:Lcom/google/common/collect/ImmutableList;

    .line 2
    .line 3
    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p2

    .line 7
    check-cast p2, Lz1/b;

    .line 8
    .line 9
    iget-object p2, p2, Lz1/b;->a:Ljava/lang/String;

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->of()Lcom/google/common/collect/ImmutableMap;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-static {p1, p2, p4, v0, v1}, Ly1/f;->a(Lz1/j;Ljava/lang/String;Lz1/i;ILjava/util/Map;)Lw1/h;

    .line 17
    .line 18
    .line 19
    move-result-object v4

    .line 20
    new-instance p2, Lg2/l;

    .line 21
    .line 22
    iget-object v5, p1, Lz1/j;->b:Landroidx/media3/common/r;

    .line 23
    .line 24
    const/4 v6, 0x0

    .line 25
    const/4 v7, 0x0

    .line 26
    move-object v2, p2

    .line 27
    move-object v3, p0

    .line 28
    move-object v8, p3

    .line 29
    invoke-direct/range {v2 .. v8}, Lg2/l;-><init>(Landroidx/media3/datasource/a;Lw1/h;Landroidx/media3/common/r;ILjava/lang/Object;Lg2/f;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p2}, Lg2/l;->load()V

    .line 33
    .line 34
    .line 35
    return-void
.end method

.method private static e(Lg2/f;Landroidx/media3/datasource/a;Lz1/j;IZ)V
    .locals 2

    .line 1
    invoke-virtual {p2}, Lz1/j;->m()Lz1/i;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Lz1/i;

    .line 10
    .line 11
    if-eqz p4, :cond_2

    .line 12
    .line 13
    invoke-virtual {p2}, Lz1/j;->l()Lz1/i;

    .line 14
    .line 15
    .line 16
    move-result-object p4

    .line 17
    if-nez p4, :cond_0

    .line 18
    .line 19
    return-void

    .line 20
    :cond_0
    iget-object v1, p2, Lz1/j;->c:Lcom/google/common/collect/ImmutableList;

    .line 21
    .line 22
    invoke-interface {v1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    check-cast v1, Lz1/b;

    .line 27
    .line 28
    iget-object v1, v1, Lz1/b;->a:Ljava/lang/String;

    .line 29
    .line 30
    invoke-virtual {v0, p4, v1}, Lz1/i;->a(Lz1/i;Ljava/lang/String;)Lz1/i;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    if-nez v1, :cond_1

    .line 35
    .line 36
    invoke-static {p1, p2, p3, p0, v0}, Ly1/f;->d(Landroidx/media3/datasource/a;Lz1/j;ILg2/f;Lz1/i;)V

    .line 37
    .line 38
    .line 39
    move-object v0, p4

    .line 40
    goto :goto_0

    .line 41
    :cond_1
    move-object v0, v1

    .line 42
    :cond_2
    :goto_0
    invoke-static {p1, p2, p3, p0, v0}, Ly1/f;->d(Landroidx/media3/datasource/a;Lz1/j;ILg2/f;Lz1/i;)V

    .line 43
    .line 44
    .line 45
    return-void
.end method

.method private static f(ILandroidx/media3/common/r;)Lg2/f;
    .locals 3

    .line 1
    iget-object v0, p1, Landroidx/media3/common/r;->n:Ljava/lang/String;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    const-string v1, "video/webm"

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    const-string v1, "audio/webm"

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    :cond_0
    new-instance v0, Lc3/e;

    .line 22
    .line 23
    sget-object v1, Lh3/s$a;->a:Lh3/s$a;

    .line 24
    .line 25
    const/4 v2, 0x2

    .line 26
    invoke-direct {v0, v1, v2}, Lc3/e;-><init>(Lh3/s$a;I)V

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    new-instance v0, Le3/h;

    .line 31
    .line 32
    sget-object v1, Lh3/s$a;->a:Lh3/s$a;

    .line 33
    .line 34
    const/16 v2, 0x20

    .line 35
    .line 36
    invoke-direct {v0, v1, v2}, Le3/h;-><init>(Lh3/s$a;I)V

    .line 37
    .line 38
    .line 39
    :goto_0
    new-instance v1, Lg2/d;

    .line 40
    .line 41
    invoke-direct {v1, v0, p0, p1}, Lg2/d;-><init>(Lk2/r;ILandroidx/media3/common/r;)V

    .line 42
    .line 43
    .line 44
    return-object v1
.end method

.method public static g(Lz1/j;Lz1/i;)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lz1/j;->j()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    iget-object p0, p0, Lz1/j;->c:Lcom/google/common/collect/ImmutableList;

    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    check-cast p0, Lz1/b;

    .line 16
    .line 17
    iget-object p0, p0, Lz1/b;->a:Ljava/lang/String;

    .line 18
    .line 19
    invoke-virtual {p1, p0}, Lz1/i;->b(Ljava/lang/String;)Landroid/net/Uri;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    :goto_0
    return-object v0
.end method
