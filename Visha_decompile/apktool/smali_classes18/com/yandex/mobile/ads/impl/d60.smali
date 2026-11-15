.class public final Lcom/yandex/mobile/ads/impl/d60;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/co1;

.field private final b:Lcom/yandex/mobile/ads/impl/ab;

.field private final c:Lcom/yandex/mobile/ads/impl/zn1;

.field private final d:Lcom/yandex/mobile/ads/impl/w50;

.field private e:Lcom/yandex/mobile/ads/impl/ys1$b;

.field private f:Lcom/yandex/mobile/ads/impl/ys1;

.field private g:I

.field private h:I

.field private i:I

.field private j:Lcom/yandex/mobile/ads/impl/vs1;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/co1;Lcom/yandex/mobile/ads/impl/ab;Lcom/yandex/mobile/ads/impl/zn1;Lcom/yandex/mobile/ads/impl/w50;)V
    .locals 1

    const-string v0, "connectionPool"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "address"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "call"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "eventListener"

    invoke-static {p4, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/d60;->a:Lcom/yandex/mobile/ads/impl/co1;

    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/d60;->b:Lcom/yandex/mobile/ads/impl/ab;

    iput-object p3, p0, Lcom/yandex/mobile/ads/impl/d60;->c:Lcom/yandex/mobile/ads/impl/zn1;

    iput-object p4, p0, Lcom/yandex/mobile/ads/impl/d60;->d:Lcom/yandex/mobile/ads/impl/w50;

    return-void
.end method

.method private final a(IIIZZ)Lcom/yandex/mobile/ads/impl/ao1;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object v1, p0

    .line 14
    :cond_0
    :goto_0
    iget-object v0, v1, Lcom/yandex/mobile/ads/impl/d60;->c:Lcom/yandex/mobile/ads/impl/zn1;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/zn1;->j()Z

    move-result v0

    if-nez v0, :cond_10

    .line 15
    iget-object v0, v1, Lcom/yandex/mobile/ads/impl/d60;->c:Lcom/yandex/mobile/ads/impl/zn1;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/zn1;->d()Lcom/yandex/mobile/ads/impl/ao1;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_6

    .line 16
    monitor-enter v2

    .line 17
    :try_start_0
    invoke-virtual {v2}, Lcom/yandex/mobile/ads/impl/ao1;->d()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {v2}, Lcom/yandex/mobile/ads/impl/ao1;->k()Lcom/yandex/mobile/ads/impl/vs1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/vs1;->a()Lcom/yandex/mobile/ads/impl/ab;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/ab;->k()Lcom/yandex/mobile/ads/impl/gi0;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yandex/mobile/ads/impl/d60;->a(Lcom/yandex/mobile/ads/impl/gi0;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    move-object v0, v3

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_4

    .line 18
    :cond_2
    :goto_1
    iget-object v0, v1, Lcom/yandex/mobile/ads/impl/d60;->c:Lcom/yandex/mobile/ads/impl/zn1;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/zn1;->l()Ljava/net/Socket;

    move-result-object v0

    .line 19
    :goto_2
    sget-object v4, Lzfb;->a:Lzfb;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    monitor-exit v2

    .line 21
    iget-object v4, v1, Lcom/yandex/mobile/ads/impl/d60;->c:Lcom/yandex/mobile/ads/impl/zn1;

    invoke-virtual {v4}, Lcom/yandex/mobile/ads/impl/zn1;->d()Lcom/yandex/mobile/ads/impl/ao1;

    move-result-object v4

    if-eqz v4, :cond_4

    if-nez v0, :cond_3

    :goto_3
    move/from16 v0, p5

    goto/16 :goto_8

    .line 22
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Check failed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    if-eqz v0, :cond_5

    .line 23
    invoke-static {v0}, Lcom/yandex/mobile/ads/impl/g92;->a(Ljava/net/Socket;)V

    .line 24
    :cond_5
    iget-object v0, v1, Lcom/yandex/mobile/ads/impl/d60;->d:Lcom/yandex/mobile/ads/impl/w50;

    iget-object v4, v1, Lcom/yandex/mobile/ads/impl/d60;->c:Lcom/yandex/mobile/ads/impl/zn1;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 25
    const-string v0, "call"

    invoke-static {v4, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "connection"

    invoke-static {v2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_5

    .line 26
    :goto_4
    monitor-exit v2

    throw v0

    :cond_6
    :goto_5
    const/4 v0, 0x0

    .line 27
    iput v0, v1, Lcom/yandex/mobile/ads/impl/d60;->g:I

    .line 28
    iput v0, v1, Lcom/yandex/mobile/ads/impl/d60;->h:I

    .line 29
    iput v0, v1, Lcom/yandex/mobile/ads/impl/d60;->i:I

    .line 30
    iget-object v2, v1, Lcom/yandex/mobile/ads/impl/d60;->a:Lcom/yandex/mobile/ads/impl/co1;

    iget-object v4, v1, Lcom/yandex/mobile/ads/impl/d60;->b:Lcom/yandex/mobile/ads/impl/ab;

    iget-object v5, v1, Lcom/yandex/mobile/ads/impl/d60;->c:Lcom/yandex/mobile/ads/impl/zn1;

    invoke-virtual {v2, v4, v5, v3, v0}, Lcom/yandex/mobile/ads/impl/co1;->a(Lcom/yandex/mobile/ads/impl/ab;Lcom/yandex/mobile/ads/impl/zn1;Ljava/util/List;Z)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 31
    iget-object v0, v1, Lcom/yandex/mobile/ads/impl/d60;->c:Lcom/yandex/mobile/ads/impl/zn1;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/zn1;->d()Lcom/yandex/mobile/ads/impl/ao1;

    move-result-object v2

    invoke-static {v2}, Ly45;->g(Ljava/lang/Object;)V

    .line 32
    iget-object v0, v1, Lcom/yandex/mobile/ads/impl/d60;->d:Lcom/yandex/mobile/ads/impl/w50;

    iget-object v3, v1, Lcom/yandex/mobile/ads/impl/d60;->c:Lcom/yandex/mobile/ads/impl/zn1;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 33
    const-string v0, "call"

    invoke-static {v3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "connection"

    invoke-static {v2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_3

    .line 34
    :cond_7
    iget-object v2, v1, Lcom/yandex/mobile/ads/impl/d60;->j:Lcom/yandex/mobile/ads/impl/vs1;

    if-eqz v2, :cond_8

    .line 35
    invoke-static {v2}, Ly45;->g(Ljava/lang/Object;)V

    .line 36
    iput-object v3, v1, Lcom/yandex/mobile/ads/impl/d60;->j:Lcom/yandex/mobile/ads/impl/vs1;

    :goto_6
    move-object v4, v3

    goto :goto_7

    .line 37
    :cond_8
    iget-object v2, v1, Lcom/yandex/mobile/ads/impl/d60;->e:Lcom/yandex/mobile/ads/impl/ys1$b;

    if-eqz v2, :cond_9

    invoke-static {v2}, Ly45;->g(Ljava/lang/Object;)V

    invoke-virtual {v2}, Lcom/yandex/mobile/ads/impl/ys1$b;->b()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 38
    iget-object v0, v1, Lcom/yandex/mobile/ads/impl/d60;->e:Lcom/yandex/mobile/ads/impl/ys1$b;

    invoke-static {v0}, Ly45;->g(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/ys1$b;->c()Lcom/yandex/mobile/ads/impl/vs1;

    move-result-object v2

    goto :goto_6

    .line 39
    :cond_9
    iget-object v2, v1, Lcom/yandex/mobile/ads/impl/d60;->f:Lcom/yandex/mobile/ads/impl/ys1;

    if-nez v2, :cond_a

    .line 40
    new-instance v2, Lcom/yandex/mobile/ads/impl/ys1;

    iget-object v4, v1, Lcom/yandex/mobile/ads/impl/d60;->b:Lcom/yandex/mobile/ads/impl/ab;

    iget-object v5, v1, Lcom/yandex/mobile/ads/impl/d60;->c:Lcom/yandex/mobile/ads/impl/zn1;

    invoke-virtual {v5}, Lcom/yandex/mobile/ads/impl/zn1;->c()Lcom/yandex/mobile/ads/impl/fe1;

    move-result-object v5

    invoke-virtual {v5}, Lcom/yandex/mobile/ads/impl/fe1;->n()Lcom/yandex/mobile/ads/impl/ws1;

    move-result-object v5

    iget-object v6, v1, Lcom/yandex/mobile/ads/impl/d60;->c:Lcom/yandex/mobile/ads/impl/zn1;

    iget-object v7, v1, Lcom/yandex/mobile/ads/impl/d60;->d:Lcom/yandex/mobile/ads/impl/w50;

    invoke-direct {v2, v4, v5, v6, v7}, Lcom/yandex/mobile/ads/impl/ys1;-><init>(Lcom/yandex/mobile/ads/impl/ab;Lcom/yandex/mobile/ads/impl/ws1;Lcom/yandex/mobile/ads/impl/zn1;Lcom/yandex/mobile/ads/impl/w50;)V

    .line 41
    iput-object v2, v1, Lcom/yandex/mobile/ads/impl/d60;->f:Lcom/yandex/mobile/ads/impl/ys1;

    .line 42
    :cond_a
    invoke-virtual {v2}, Lcom/yandex/mobile/ads/impl/ys1;->b()Lcom/yandex/mobile/ads/impl/ys1$b;

    move-result-object v2

    .line 43
    iput-object v2, v1, Lcom/yandex/mobile/ads/impl/d60;->e:Lcom/yandex/mobile/ads/impl/ys1$b;

    .line 44
    invoke-virtual {v2}, Lcom/yandex/mobile/ads/impl/ys1$b;->a()Ljava/util/List;

    move-result-object v4

    .line 45
    iget-object v5, v1, Lcom/yandex/mobile/ads/impl/d60;->c:Lcom/yandex/mobile/ads/impl/zn1;

    invoke-virtual {v5}, Lcom/yandex/mobile/ads/impl/zn1;->j()Z

    move-result v5

    if-nez v5, :cond_f

    .line 46
    iget-object v5, v1, Lcom/yandex/mobile/ads/impl/d60;->a:Lcom/yandex/mobile/ads/impl/co1;

    iget-object v6, v1, Lcom/yandex/mobile/ads/impl/d60;->b:Lcom/yandex/mobile/ads/impl/ab;

    iget-object v7, v1, Lcom/yandex/mobile/ads/impl/d60;->c:Lcom/yandex/mobile/ads/impl/zn1;

    invoke-virtual {v5, v6, v7, v4, v0}, Lcom/yandex/mobile/ads/impl/co1;->a(Lcom/yandex/mobile/ads/impl/ab;Lcom/yandex/mobile/ads/impl/zn1;Ljava/util/List;Z)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 47
    iget-object v0, v1, Lcom/yandex/mobile/ads/impl/d60;->c:Lcom/yandex/mobile/ads/impl/zn1;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/zn1;->d()Lcom/yandex/mobile/ads/impl/ao1;

    move-result-object v2

    invoke-static {v2}, Ly45;->g(Ljava/lang/Object;)V

    .line 48
    iget-object v0, v1, Lcom/yandex/mobile/ads/impl/d60;->d:Lcom/yandex/mobile/ads/impl/w50;

    iget-object v3, v1, Lcom/yandex/mobile/ads/impl/d60;->c:Lcom/yandex/mobile/ads/impl/zn1;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 49
    const-string v0, "call"

    invoke-static {v3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "connection"

    invoke-static {v2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 50
    :cond_b
    invoke-virtual {v2}, Lcom/yandex/mobile/ads/impl/ys1$b;->c()Lcom/yandex/mobile/ads/impl/vs1;

    move-result-object v2

    .line 51
    :goto_7
    new-instance v12, Lcom/yandex/mobile/ads/impl/ao1;

    iget-object v0, v1, Lcom/yandex/mobile/ads/impl/d60;->a:Lcom/yandex/mobile/ads/impl/co1;

    invoke-direct {v12, v0, v2}, Lcom/yandex/mobile/ads/impl/ao1;-><init>(Lcom/yandex/mobile/ads/impl/co1;Lcom/yandex/mobile/ads/impl/vs1;)V

    .line 52
    iget-object v0, v1, Lcom/yandex/mobile/ads/impl/d60;->c:Lcom/yandex/mobile/ads/impl/zn1;

    invoke-virtual {v0, v12}, Lcom/yandex/mobile/ads/impl/zn1;->b(Lcom/yandex/mobile/ads/impl/ao1;)V

    .line 53
    :try_start_1
    iget-object v10, v1, Lcom/yandex/mobile/ads/impl/d60;->c:Lcom/yandex/mobile/ads/impl/zn1;

    .line 54
    iget-object v11, v1, Lcom/yandex/mobile/ads/impl/d60;->d:Lcom/yandex/mobile/ads/impl/w50;

    move-object v5, v12

    move v6, p1

    move v7, p2

    move/from16 v8, p3

    move/from16 v9, p4

    .line 55
    invoke-virtual/range {v5 .. v11}, Lcom/yandex/mobile/ads/impl/ao1;->a(IIIZLcom/yandex/mobile/ads/impl/zn1;Lcom/yandex/mobile/ads/impl/w50;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 56
    iget-object v0, v1, Lcom/yandex/mobile/ads/impl/d60;->c:Lcom/yandex/mobile/ads/impl/zn1;

    invoke-virtual {v0, v3}, Lcom/yandex/mobile/ads/impl/zn1;->b(Lcom/yandex/mobile/ads/impl/ao1;)V

    .line 57
    iget-object v0, v1, Lcom/yandex/mobile/ads/impl/d60;->c:Lcom/yandex/mobile/ads/impl/zn1;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/zn1;->c()Lcom/yandex/mobile/ads/impl/fe1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/fe1;->n()Lcom/yandex/mobile/ads/impl/ws1;

    move-result-object v0

    invoke-virtual {v12}, Lcom/yandex/mobile/ads/impl/ao1;->k()Lcom/yandex/mobile/ads/impl/vs1;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/yandex/mobile/ads/impl/ws1;->a(Lcom/yandex/mobile/ads/impl/vs1;)V

    .line 58
    iget-object v0, v1, Lcom/yandex/mobile/ads/impl/d60;->a:Lcom/yandex/mobile/ads/impl/co1;

    iget-object v3, v1, Lcom/yandex/mobile/ads/impl/d60;->b:Lcom/yandex/mobile/ads/impl/ab;

    iget-object v5, v1, Lcom/yandex/mobile/ads/impl/d60;->c:Lcom/yandex/mobile/ads/impl/zn1;

    const/4 v6, 0x1

    invoke-virtual {v0, v3, v5, v4, v6}, Lcom/yandex/mobile/ads/impl/co1;->a(Lcom/yandex/mobile/ads/impl/ab;Lcom/yandex/mobile/ads/impl/zn1;Ljava/util/List;Z)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 59
    iget-object v0, v1, Lcom/yandex/mobile/ads/impl/d60;->c:Lcom/yandex/mobile/ads/impl/zn1;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/zn1;->d()Lcom/yandex/mobile/ads/impl/ao1;

    move-result-object v0

    invoke-static {v0}, Ly45;->g(Ljava/lang/Object;)V

    .line 60
    iput-object v2, v1, Lcom/yandex/mobile/ads/impl/d60;->j:Lcom/yandex/mobile/ads/impl/vs1;

    .line 61
    invoke-virtual {v12}, Lcom/yandex/mobile/ads/impl/ao1;->m()Ljava/net/Socket;

    move-result-object v2

    invoke-static {v2}, Lcom/yandex/mobile/ads/impl/g92;->a(Ljava/net/Socket;)V

    .line 62
    iget-object v2, v1, Lcom/yandex/mobile/ads/impl/d60;->d:Lcom/yandex/mobile/ads/impl/w50;

    iget-object v3, v1, Lcom/yandex/mobile/ads/impl/d60;->c:Lcom/yandex/mobile/ads/impl/zn1;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 63
    const-string v2, "call"

    invoke-static {v3, v2}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "connection"

    invoke-static {v0, v2}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v2, v0

    goto/16 :goto_3

    .line 64
    :cond_c
    monitor-enter v12

    .line 65
    :try_start_2
    iget-object v0, v1, Lcom/yandex/mobile/ads/impl/d60;->a:Lcom/yandex/mobile/ads/impl/co1;

    invoke-virtual {v0, v12}, Lcom/yandex/mobile/ads/impl/co1;->b(Lcom/yandex/mobile/ads/impl/ao1;)V

    .line 66
    iget-object v0, v1, Lcom/yandex/mobile/ads/impl/d60;->c:Lcom/yandex/mobile/ads/impl/zn1;

    invoke-virtual {v0, v12}, Lcom/yandex/mobile/ads/impl/zn1;->a(Lcom/yandex/mobile/ads/impl/ao1;)V

    .line 67
    sget-object v0, Lzfb;->a:Lzfb;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 68
    monitor-exit v12

    .line 69
    iget-object v0, v1, Lcom/yandex/mobile/ads/impl/d60;->d:Lcom/yandex/mobile/ads/impl/w50;

    iget-object v2, v1, Lcom/yandex/mobile/ads/impl/d60;->c:Lcom/yandex/mobile/ads/impl/zn1;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 70
    const-string v0, "call"

    invoke-static {v2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "connection"

    invoke-static {v12, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    move/from16 v0, p5

    move-object v2, v12

    .line 71
    :goto_8
    invoke-virtual {v2, v0}, Lcom/yandex/mobile/ads/impl/ao1;->a(Z)Z

    move-result v3

    if-eqz v3, :cond_d

    return-object v2

    .line 72
    :cond_d
    invoke-virtual {v2}, Lcom/yandex/mobile/ads/impl/ao1;->j()V

    .line 73
    iget-object v2, v1, Lcom/yandex/mobile/ads/impl/d60;->j:Lcom/yandex/mobile/ads/impl/vs1;

    if-nez v2, :cond_0

    .line 74
    iget-object v2, v1, Lcom/yandex/mobile/ads/impl/d60;->e:Lcom/yandex/mobile/ads/impl/ys1$b;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/yandex/mobile/ads/impl/ys1$b;->b()Z

    move-result v2

    if-nez v2, :cond_0

    .line 75
    iget-object v2, v1, Lcom/yandex/mobile/ads/impl/d60;->f:Lcom/yandex/mobile/ads/impl/ys1;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/yandex/mobile/ads/impl/ys1;->a()Z

    move-result v2

    if-eqz v2, :cond_e

    goto/16 :goto_0

    .line 76
    :cond_e
    new-instance v0, Ljava/io/IOException;

    const-string v1, "exhausted all routes"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_1
    move-exception v0

    .line 77
    monitor-exit v12

    throw v0

    :catchall_2
    move-exception v0

    .line 78
    iget-object v1, v1, Lcom/yandex/mobile/ads/impl/d60;->c:Lcom/yandex/mobile/ads/impl/zn1;

    invoke-virtual {v1, v3}, Lcom/yandex/mobile/ads/impl/zn1;->b(Lcom/yandex/mobile/ads/impl/ao1;)V

    throw v0

    .line 79
    :cond_f
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Canceled"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 80
    :cond_10
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Canceled"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final a()Lcom/yandex/mobile/ads/impl/ab;
    .locals 0

    .line 81
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/d60;->b:Lcom/yandex/mobile/ads/impl/ab;

    return-object p0
.end method

.method public final a(Lcom/yandex/mobile/ads/impl/fe1;Lcom/yandex/mobile/ads/impl/do1;)Lcom/yandex/mobile/ads/impl/c60;
    .locals 7

    .line 1
    const-string v0, "client"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "chain"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    :try_start_0
    invoke-virtual {p2}, Lcom/yandex/mobile/ads/impl/do1;->c()I

    move-result v2

    .line 3
    invoke-virtual {p2}, Lcom/yandex/mobile/ads/impl/do1;->e()I

    move-result v3

    .line 4
    invoke-virtual {p2}, Lcom/yandex/mobile/ads/impl/do1;->g()I

    move-result v4

    .line 5
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/fe1;->v()Z

    move-result v5

    .line 7
    invoke-virtual {p2}, Lcom/yandex/mobile/ads/impl/do1;->f()Lcom/yandex/mobile/ads/impl/vp1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/vp1;->f()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GET"

    invoke-static {v0, v1}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v6, v0, 0x1

    move-object v1, p0

    .line 8
    invoke-direct/range {v1 .. v6}, Lcom/yandex/mobile/ads/impl/d60;->a(IIIZZ)Lcom/yandex/mobile/ads/impl/ao1;

    move-result-object v0

    .line 9
    invoke-virtual {v0, p1, p2}, Lcom/yandex/mobile/ads/impl/ao1;->a(Lcom/yandex/mobile/ads/impl/fe1;Lcom/yandex/mobile/ads/impl/do1;)Lcom/yandex/mobile/ads/impl/c60;

    move-result-object p0
    :try_end_0
    .catch Lcom/yandex/mobile/ads/impl/xs1; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    goto :goto_1

    .line 10
    :goto_0
    invoke-virtual {p0, p1}, Lcom/yandex/mobile/ads/impl/d60;->a(Ljava/io/IOException;)V

    .line 11
    new-instance p0, Lcom/yandex/mobile/ads/impl/xs1;

    invoke-direct {p0, p1}, Lcom/yandex/mobile/ads/impl/xs1;-><init>(Ljava/io/IOException;)V

    throw p0

    .line 12
    :goto_1
    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/xs1;->b()Ljava/io/IOException;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/yandex/mobile/ads/impl/d60;->a(Ljava/io/IOException;)V

    .line 13
    throw p1
.end method

.method public final a(Ljava/io/IOException;)V
    .locals 2

    .line 85
    const-string v0, "e"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 86
    iput-object v0, p0, Lcom/yandex/mobile/ads/impl/d60;->j:Lcom/yandex/mobile/ads/impl/vs1;

    .line 87
    instance-of v0, p1, Lcom/yandex/mobile/ads/impl/z22;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/yandex/mobile/ads/impl/z22;

    iget-object v0, v0, Lcom/yandex/mobile/ads/impl/z22;->b:Lcom/yandex/mobile/ads/impl/t50;

    sget-object v1, Lcom/yandex/mobile/ads/impl/t50;->h:Lcom/yandex/mobile/ads/impl/t50;

    if-ne v0, v1, :cond_0

    .line 88
    iget p1, p0, Lcom/yandex/mobile/ads/impl/d60;->g:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/yandex/mobile/ads/impl/d60;->g:I

    goto :goto_0

    .line 89
    :cond_0
    instance-of p1, p1, Lcom/yandex/mobile/ads/impl/qr;

    if-eqz p1, :cond_1

    .line 90
    iget p1, p0, Lcom/yandex/mobile/ads/impl/d60;->h:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/yandex/mobile/ads/impl/d60;->h:I

    goto :goto_0

    .line 91
    :cond_1
    iget p1, p0, Lcom/yandex/mobile/ads/impl/d60;->i:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/yandex/mobile/ads/impl/d60;->i:I

    :goto_0
    return-void
.end method

.method public final a(Lcom/yandex/mobile/ads/impl/gi0;)Z
    .locals 2

    .line 82
    const-string v0, "url"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 83
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/d60;->b:Lcom/yandex/mobile/ads/impl/ab;

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/ab;->k()Lcom/yandex/mobile/ads/impl/gi0;

    move-result-object p0

    .line 84
    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/gi0;->i()I

    move-result v0

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/gi0;->i()I

    move-result v1

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/gi0;->g()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/gi0;->g()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final b()Z
    .locals 7

    iget v0, p0, Lcom/yandex/mobile/ads/impl/d60;->g:I

    if-nez v0, :cond_0

    iget v1, p0, Lcom/yandex/mobile/ads/impl/d60;->h:I

    if-nez v1, :cond_0

    iget v1, p0, Lcom/yandex/mobile/ads/impl/d60;->i:I

    if-nez v1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/d60;->j:Lcom/yandex/mobile/ads/impl/vs1;

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    return v2

    :cond_1
    const/4 v1, 0x0

    if-gt v0, v2, :cond_6

    iget v0, p0, Lcom/yandex/mobile/ads/impl/d60;->h:I

    if-gt v0, v2, :cond_6

    iget v0, p0, Lcom/yandex/mobile/ads/impl/d60;->i:I

    if-lez v0, :cond_2

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/d60;->c:Lcom/yandex/mobile/ads/impl/zn1;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/zn1;->d()Lcom/yandex/mobile/ads/impl/ao1;

    move-result-object v0

    if-nez v0, :cond_3

    goto :goto_1

    :cond_3
    monitor-enter v0

    :try_start_0
    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/ao1;->e()I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_4

    monitor-exit v0

    goto :goto_1

    :cond_4
    :try_start_1
    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/ao1;->k()Lcom/yandex/mobile/ads/impl/vs1;

    move-result-object v3

    invoke-virtual {v3}, Lcom/yandex/mobile/ads/impl/vs1;->a()Lcom/yandex/mobile/ads/impl/ab;

    move-result-object v3

    invoke-virtual {v3}, Lcom/yandex/mobile/ads/impl/ab;->k()Lcom/yandex/mobile/ads/impl/gi0;

    move-result-object v3

    iget-object v4, p0, Lcom/yandex/mobile/ads/impl/d60;->b:Lcom/yandex/mobile/ads/impl/ab;

    invoke-virtual {v4}, Lcom/yandex/mobile/ads/impl/ab;->k()Lcom/yandex/mobile/ads/impl/gi0;

    move-result-object v4

    sget-object v5, Lcom/yandex/mobile/ads/impl/g92;->a:[B

    const-string v5, "<this>"

    invoke-static {v3, v5}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "other"

    invoke-static {v4, v5}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/yandex/mobile/ads/impl/gi0;->g()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Lcom/yandex/mobile/ads/impl/gi0;->g()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-virtual {v3}, Lcom/yandex/mobile/ads/impl/gi0;->i()I

    move-result v5

    invoke-virtual {v4}, Lcom/yandex/mobile/ads/impl/gi0;->i()I

    move-result v6

    if-ne v5, v6, :cond_5

    invoke-virtual {v3}, Lcom/yandex/mobile/ads/impl/gi0;->k()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4}, Lcom/yandex/mobile/ads/impl/gi0;->k()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/ao1;->k()Lcom/yandex/mobile/ads/impl/vs1;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_5
    monitor-exit v0

    goto :goto_1

    :goto_0
    monitor-exit v0

    throw p0

    :cond_6
    :goto_1
    if-eqz v1, :cond_7

    iput-object v1, p0, Lcom/yandex/mobile/ads/impl/d60;->j:Lcom/yandex/mobile/ads/impl/vs1;

    return v2

    :cond_7
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/d60;->e:Lcom/yandex/mobile/ads/impl/ys1$b;

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/ys1$b;->b()Z

    move-result v0

    if-ne v0, v2, :cond_8

    return v2

    :cond_8
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/d60;->f:Lcom/yandex/mobile/ads/impl/ys1;

    if-nez p0, :cond_9

    return v2

    :cond_9
    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/ys1;->a()Z

    move-result p0

    return p0
.end method
