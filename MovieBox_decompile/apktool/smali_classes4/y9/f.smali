.class public abstract Ly9/f;
.super Ljava/lang/Object;
.source "source.java"


# direct methods
.method public static a(Lz9/j;Ljava/lang/String;Lz9/i;I)Lcom/google/android/exoplayer2/upstream/n;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/exoplayer2/upstream/n$b;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/android/exoplayer2/upstream/n$b;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p2, p1}, Lz9/i;->b(Ljava/lang/String;)Landroid/net/Uri;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/upstream/n$b;->i(Landroid/net/Uri;)Lcom/google/android/exoplayer2/upstream/n$b;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    iget-wide v0, p2, Lz9/i;->a:J

    .line 15
    .line 16
    invoke-virtual {p1, v0, v1}, Lcom/google/android/exoplayer2/upstream/n$b;->h(J)Lcom/google/android/exoplayer2/upstream/n$b;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    iget-wide v0, p2, Lz9/i;->b:J

    .line 21
    .line 22
    invoke-virtual {p1, v0, v1}, Lcom/google/android/exoplayer2/upstream/n$b;->g(J)Lcom/google/android/exoplayer2/upstream/n$b;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-static {p0, p2}, Ly9/f;->g(Lz9/j;Lz9/i;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    invoke-virtual {p1, p0}, Lcom/google/android/exoplayer2/upstream/n$b;->f(Ljava/lang/String;)Lcom/google/android/exoplayer2/upstream/n$b;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    invoke-virtual {p0, p3}, Lcom/google/android/exoplayer2/upstream/n$b;->b(I)Lcom/google/android/exoplayer2/upstream/n$b;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/upstream/n$b;->a()Lcom/google/android/exoplayer2/upstream/n;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    return-object p0
.end method

.method public static b(Lcom/google/android/exoplayer2/upstream/k;ILz9/j;)Li9/d;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-static {p0, p1, p2, v0}, Ly9/f;->c(Lcom/google/android/exoplayer2/upstream/k;ILz9/j;I)Li9/d;

    .line 3
    .line 4
    .line 5
    move-result-object p0

    .line 6
    return-object p0
.end method

.method public static c(Lcom/google/android/exoplayer2/upstream/k;ILz9/j;I)Li9/d;
    .locals 1

    .line 1
    invoke-virtual {p2}, Lz9/j;->m()Lz9/i;

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
    iget-object v0, p2, Lz9/j;->b:Lcom/google/android/exoplayer2/p1;

    .line 10
    .line 11
    invoke-static {p1, v0}, Ly9/f;->f(ILcom/google/android/exoplayer2/p1;)Lx9/g;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    const/4 v0, 0x1

    .line 16
    :try_start_0
    invoke-static {p1, p0, p2, p3, v0}, Ly9/f;->e(Lx9/g;Lcom/google/android/exoplayer2/upstream/k;Lz9/j;IZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    .line 18
    .line 19
    invoke-interface {p1}, Lx9/g;->release()V

    .line 20
    .line 21
    .line 22
    invoke-interface {p1}, Lx9/g;->b()Li9/d;

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
    invoke-interface {p1}, Lx9/g;->release()V

    .line 29
    .line 30
    .line 31
    throw p0
.end method

.method private static d(Lcom/google/android/exoplayer2/upstream/k;Lz9/j;ILx9/g;Lz9/i;)V
    .locals 8

    .line 1
    iget-object v0, p1, Lz9/j;->c:Lcom/google/common/collect/ImmutableList;

    .line 2
    .line 3
    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p2

    .line 7
    check-cast p2, Lz9/b;

    .line 8
    .line 9
    iget-object p2, p2, Lz9/b;->a:Ljava/lang/String;

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    invoke-static {p1, p2, p4, v0}, Ly9/f;->a(Lz9/j;Ljava/lang/String;Lz9/i;I)Lcom/google/android/exoplayer2/upstream/n;

    .line 13
    .line 14
    .line 15
    move-result-object v3

    .line 16
    new-instance p2, Lx9/m;

    .line 17
    .line 18
    iget-object v4, p1, Lz9/j;->b:Lcom/google/android/exoplayer2/p1;

    .line 19
    .line 20
    const/4 v5, 0x0

    .line 21
    const/4 v6, 0x0

    .line 22
    move-object v1, p2

    .line 23
    move-object v2, p0

    .line 24
    move-object v7, p3

    .line 25
    invoke-direct/range {v1 .. v7}, Lx9/m;-><init>(Lcom/google/android/exoplayer2/upstream/k;Lcom/google/android/exoplayer2/upstream/n;Lcom/google/android/exoplayer2/p1;ILjava/lang/Object;Lx9/g;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p2}, Lx9/m;->load()V

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method private static e(Lx9/g;Lcom/google/android/exoplayer2/upstream/k;Lz9/j;IZ)V
    .locals 2

    .line 1
    invoke-virtual {p2}, Lz9/j;->m()Lz9/i;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Lz9/i;

    .line 10
    .line 11
    if-eqz p4, :cond_2

    .line 12
    .line 13
    invoke-virtual {p2}, Lz9/j;->l()Lz9/i;

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
    iget-object v1, p2, Lz9/j;->c:Lcom/google/common/collect/ImmutableList;

    .line 21
    .line 22
    invoke-interface {v1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    check-cast v1, Lz9/b;

    .line 27
    .line 28
    iget-object v1, v1, Lz9/b;->a:Ljava/lang/String;

    .line 29
    .line 30
    invoke-virtual {v0, p4, v1}, Lz9/i;->a(Lz9/i;Ljava/lang/String;)Lz9/i;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    if-nez v1, :cond_1

    .line 35
    .line 36
    invoke-static {p1, p2, p3, p0, v0}, Ly9/f;->d(Lcom/google/android/exoplayer2/upstream/k;Lz9/j;ILx9/g;Lz9/i;)V

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
    invoke-static {p1, p2, p3, p0, v0}, Ly9/f;->d(Lcom/google/android/exoplayer2/upstream/k;Lz9/j;ILx9/g;Lz9/i;)V

    .line 43
    .line 44
    .line 45
    return-void
.end method

.method private static f(ILcom/google/android/exoplayer2/p1;)Lx9/g;
    .locals 2

    .line 1
    iget-object v0, p1, Lcom/google/android/exoplayer2/p1;->k:Ljava/lang/String;

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
    new-instance v0, Lo9/e;

    .line 22
    .line 23
    invoke-direct {v0}, Lo9/e;-><init>()V

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_1
    new-instance v0, Lq9/g;

    .line 28
    .line 29
    invoke-direct {v0}, Lq9/g;-><init>()V

    .line 30
    .line 31
    .line 32
    :goto_0
    new-instance v1, Lx9/e;

    .line 33
    .line 34
    invoke-direct {v1, v0, p0, p1}, Lx9/e;-><init>(Li9/l;ILcom/google/android/exoplayer2/p1;)V

    .line 35
    .line 36
    .line 37
    return-object v1
.end method

.method public static g(Lz9/j;Lz9/i;)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lz9/j;->j()Ljava/lang/String;

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
    iget-object p0, p0, Lz9/j;->c:Lcom/google/common/collect/ImmutableList;

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
    check-cast p0, Lz9/b;

    .line 16
    .line 17
    iget-object p0, p0, Lz9/b;->a:Ljava/lang/String;

    .line 18
    .line 19
    invoke-virtual {p1, p0}, Lz9/i;->b(Ljava/lang/String;)Landroid/net/Uri;

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
