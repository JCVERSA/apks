.class public final Lcom/mbridge/msdk/thrid/okhttp/internal/connection/g;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mbridge/msdk/thrid/okhttp/internal/connection/g$a;
    }
.end annotation


# static fields
.field static final synthetic o:Z = true


# instance fields
.field public final a:Lcom/mbridge/msdk/thrid/okhttp/a;

.field private b:Lcom/mbridge/msdk/thrid/okhttp/internal/connection/f$a;

.field private c:Lcom/mbridge/msdk/thrid/okhttp/a0;

.field private final d:Lcom/mbridge/msdk/thrid/okhttp/h;

.field public final e:Lcom/mbridge/msdk/thrid/okhttp/d;

.field public final f:Lcom/mbridge/msdk/thrid/okhttp/n;

.field private final g:Ljava/lang/Object;

.field private final h:Lcom/mbridge/msdk/thrid/okhttp/internal/connection/f;

.field private i:I

.field private j:Lcom/mbridge/msdk/thrid/okhttp/internal/connection/c;

.field private k:Z

.field private l:Z

.field private m:Z

.field private n:Lcom/mbridge/msdk/thrid/okhttp/internal/http/c;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public constructor <init>(Lcom/mbridge/msdk/thrid/okhttp/h;Lcom/mbridge/msdk/thrid/okhttp/a;Lcom/mbridge/msdk/thrid/okhttp/d;Lcom/mbridge/msdk/thrid/okhttp/n;Ljava/lang/Object;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/connection/g;->d:Lcom/mbridge/msdk/thrid/okhttp/h;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/connection/g;->a:Lcom/mbridge/msdk/thrid/okhttp/a;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/connection/g;->e:Lcom/mbridge/msdk/thrid/okhttp/d;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/connection/g;->f:Lcom/mbridge/msdk/thrid/okhttp/n;

    .line 11
    .line 12
    new-instance p1, Lcom/mbridge/msdk/thrid/okhttp/internal/connection/f;

    .line 13
    .line 14
    invoke-direct {p0}, Lcom/mbridge/msdk/thrid/okhttp/internal/connection/g;->i()Lcom/mbridge/msdk/thrid/okhttp/internal/connection/d;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-direct {p1, p2, v0, p3, p4}, Lcom/mbridge/msdk/thrid/okhttp/internal/connection/f;-><init>(Lcom/mbridge/msdk/thrid/okhttp/a;Lcom/mbridge/msdk/thrid/okhttp/internal/connection/d;Lcom/mbridge/msdk/thrid/okhttp/d;Lcom/mbridge/msdk/thrid/okhttp/n;)V

    .line 19
    .line 20
    .line 21
    iput-object p1, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/connection/g;->h:Lcom/mbridge/msdk/thrid/okhttp/internal/connection/f;

    .line 22
    .line 23
    iput-object p5, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/connection/g;->g:Ljava/lang/Object;

    .line 24
    .line 25
    return-void
.end method

.method private a(IIIIZ)Lcom/mbridge/msdk/thrid/okhttp/internal/connection/c;
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v1, p0

    .line 21
    iget-object v2, v1, Lcom/mbridge/msdk/thrid/okhttp/internal/connection/g;->d:Lcom/mbridge/msdk/thrid/okhttp/h;

    monitor-enter v2

    .line 22
    :try_start_0
    iget-boolean v0, v1, Lcom/mbridge/msdk/thrid/okhttp/internal/connection/g;->l:Z

    if-nez v0, :cond_12

    .line 23
    iget-object v0, v1, Lcom/mbridge/msdk/thrid/okhttp/internal/connection/g;->n:Lcom/mbridge/msdk/thrid/okhttp/internal/http/c;

    if-nez v0, :cond_11

    .line 24
    iget-boolean v0, v1, Lcom/mbridge/msdk/thrid/okhttp/internal/connection/g;->m:Z

    if-nez v0, :cond_10

    .line 25
    iget-object v0, v1, Lcom/mbridge/msdk/thrid/okhttp/internal/connection/g;->j:Lcom/mbridge/msdk/thrid/okhttp/internal/connection/c;

    .line 26
    invoke-direct/range {p0 .. p0}, Lcom/mbridge/msdk/thrid/okhttp/internal/connection/g;->g()Ljava/net/Socket;

    move-result-object v3

    .line 27
    iget-object v4, v1, Lcom/mbridge/msdk/thrid/okhttp/internal/connection/g;->j:Lcom/mbridge/msdk/thrid/okhttp/internal/connection/c;

    const/4 v5, 0x0

    if-eqz v4, :cond_0

    move-object v0, v5

    goto :goto_0

    :cond_0
    move-object v4, v5

    .line 28
    :goto_0
    iget-boolean v6, v1, Lcom/mbridge/msdk/thrid/okhttp/internal/connection/g;->k:Z

    if-nez v6, :cond_1

    move-object v0, v5

    :cond_1
    const/4 v6, 0x1

    const/4 v7, 0x0

    if-nez v4, :cond_3

    .line 29
    sget-object v8, Lcom/mbridge/msdk/thrid/okhttp/internal/a;->a:Lcom/mbridge/msdk/thrid/okhttp/internal/a;

    iget-object v9, v1, Lcom/mbridge/msdk/thrid/okhttp/internal/connection/g;->d:Lcom/mbridge/msdk/thrid/okhttp/h;

    iget-object v10, v1, Lcom/mbridge/msdk/thrid/okhttp/internal/connection/g;->a:Lcom/mbridge/msdk/thrid/okhttp/a;

    invoke-virtual {v8, v9, v10, v1, v5}, Lcom/mbridge/msdk/thrid/okhttp/internal/a;->a(Lcom/mbridge/msdk/thrid/okhttp/h;Lcom/mbridge/msdk/thrid/okhttp/a;Lcom/mbridge/msdk/thrid/okhttp/internal/connection/g;Lcom/mbridge/msdk/thrid/okhttp/a0;)Lcom/mbridge/msdk/thrid/okhttp/internal/connection/c;

    .line 30
    iget-object v8, v1, Lcom/mbridge/msdk/thrid/okhttp/internal/connection/g;->j:Lcom/mbridge/msdk/thrid/okhttp/internal/connection/c;

    if-eqz v8, :cond_2

    move v9, v6

    move-object v4, v8

    move-object v8, v5

    goto :goto_2

    .line 31
    :cond_2
    iget-object v8, v1, Lcom/mbridge/msdk/thrid/okhttp/internal/connection/g;->c:Lcom/mbridge/msdk/thrid/okhttp/a0;

    :goto_1
    move v9, v7

    goto :goto_2

    :catchall_0
    move-exception v0

    goto/16 :goto_9

    :cond_3
    move-object v8, v5

    goto :goto_1

    .line 32
    :goto_2
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    invoke-static {v3}, Lcom/mbridge/msdk/thrid/okhttp/internal/c;->a(Ljava/net/Socket;)V

    if-eqz v0, :cond_4

    .line 34
    iget-object v2, v1, Lcom/mbridge/msdk/thrid/okhttp/internal/connection/g;->f:Lcom/mbridge/msdk/thrid/okhttp/n;

    iget-object v3, v1, Lcom/mbridge/msdk/thrid/okhttp/internal/connection/g;->e:Lcom/mbridge/msdk/thrid/okhttp/d;

    invoke-virtual {v2, v3, v0}, Lcom/mbridge/msdk/thrid/okhttp/n;->connectionReleased(Lcom/mbridge/msdk/thrid/okhttp/d;Lcom/mbridge/msdk/thrid/okhttp/g;)V

    :cond_4
    if-eqz v9, :cond_5

    .line 35
    iget-object v0, v1, Lcom/mbridge/msdk/thrid/okhttp/internal/connection/g;->f:Lcom/mbridge/msdk/thrid/okhttp/n;

    iget-object v2, v1, Lcom/mbridge/msdk/thrid/okhttp/internal/connection/g;->e:Lcom/mbridge/msdk/thrid/okhttp/d;

    invoke-virtual {v0, v2, v4}, Lcom/mbridge/msdk/thrid/okhttp/n;->connectionAcquired(Lcom/mbridge/msdk/thrid/okhttp/d;Lcom/mbridge/msdk/thrid/okhttp/g;)V

    :cond_5
    if-eqz v4, :cond_6

    .line 36
    iget-object v0, v1, Lcom/mbridge/msdk/thrid/okhttp/internal/connection/g;->j:Lcom/mbridge/msdk/thrid/okhttp/internal/connection/c;

    invoke-virtual {v0}, Lcom/mbridge/msdk/thrid/okhttp/internal/connection/c;->c()Lcom/mbridge/msdk/thrid/okhttp/a0;

    move-result-object v0

    iput-object v0, v1, Lcom/mbridge/msdk/thrid/okhttp/internal/connection/g;->c:Lcom/mbridge/msdk/thrid/okhttp/a0;

    return-object v4

    :cond_6
    if-nez v8, :cond_8

    .line 37
    iget-object v0, v1, Lcom/mbridge/msdk/thrid/okhttp/internal/connection/g;->b:Lcom/mbridge/msdk/thrid/okhttp/internal/connection/f$a;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/mbridge/msdk/thrid/okhttp/internal/connection/f$a;->b()Z

    move-result v0

    if-nez v0, :cond_8

    .line 38
    :cond_7
    iget-object v0, v1, Lcom/mbridge/msdk/thrid/okhttp/internal/connection/g;->h:Lcom/mbridge/msdk/thrid/okhttp/internal/connection/f;

    invoke-virtual {v0}, Lcom/mbridge/msdk/thrid/okhttp/internal/connection/f;->c()Lcom/mbridge/msdk/thrid/okhttp/internal/connection/f$a;

    move-result-object v0

    iput-object v0, v1, Lcom/mbridge/msdk/thrid/okhttp/internal/connection/g;->b:Lcom/mbridge/msdk/thrid/okhttp/internal/connection/f$a;

    move v0, v6

    goto :goto_3

    :cond_8
    move v0, v7

    .line 39
    :goto_3
    iget-object v3, v1, Lcom/mbridge/msdk/thrid/okhttp/internal/connection/g;->d:Lcom/mbridge/msdk/thrid/okhttp/h;

    monitor-enter v3

    .line 40
    :try_start_1
    iget-boolean v2, v1, Lcom/mbridge/msdk/thrid/okhttp/internal/connection/g;->m:Z

    if-nez v2, :cond_f

    if-eqz v0, :cond_a

    .line 41
    iget-object v0, v1, Lcom/mbridge/msdk/thrid/okhttp/internal/connection/g;->b:Lcom/mbridge/msdk/thrid/okhttp/internal/connection/f$a;

    invoke-virtual {v0}, Lcom/mbridge/msdk/thrid/okhttp/internal/connection/f$a;->a()Ljava/util/List;

    move-result-object v0

    .line 42
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    move v10, v7

    :goto_4
    if-ge v10, v2, :cond_a

    .line 43
    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/mbridge/msdk/thrid/okhttp/a0;

    .line 44
    sget-object v12, Lcom/mbridge/msdk/thrid/okhttp/internal/a;->a:Lcom/mbridge/msdk/thrid/okhttp/internal/a;

    iget-object v13, v1, Lcom/mbridge/msdk/thrid/okhttp/internal/connection/g;->d:Lcom/mbridge/msdk/thrid/okhttp/h;

    iget-object v14, v1, Lcom/mbridge/msdk/thrid/okhttp/internal/connection/g;->a:Lcom/mbridge/msdk/thrid/okhttp/a;

    invoke-virtual {v12, v13, v14, v1, v11}, Lcom/mbridge/msdk/thrid/okhttp/internal/a;->a(Lcom/mbridge/msdk/thrid/okhttp/h;Lcom/mbridge/msdk/thrid/okhttp/a;Lcom/mbridge/msdk/thrid/okhttp/internal/connection/g;Lcom/mbridge/msdk/thrid/okhttp/a0;)Lcom/mbridge/msdk/thrid/okhttp/internal/connection/c;

    .line 45
    iget-object v12, v1, Lcom/mbridge/msdk/thrid/okhttp/internal/connection/g;->j:Lcom/mbridge/msdk/thrid/okhttp/internal/connection/c;

    if-eqz v12, :cond_9

    .line 46
    iput-object v11, v1, Lcom/mbridge/msdk/thrid/okhttp/internal/connection/g;->c:Lcom/mbridge/msdk/thrid/okhttp/a0;

    move v9, v6

    move-object v4, v12

    goto :goto_5

    :catchall_1
    move-exception v0

    goto/16 :goto_8

    :cond_9
    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    :cond_a
    :goto_5
    if-nez v9, :cond_c

    if-nez v8, :cond_b

    .line 47
    iget-object v0, v1, Lcom/mbridge/msdk/thrid/okhttp/internal/connection/g;->b:Lcom/mbridge/msdk/thrid/okhttp/internal/connection/f$a;

    invoke-virtual {v0}, Lcom/mbridge/msdk/thrid/okhttp/internal/connection/f$a;->c()Lcom/mbridge/msdk/thrid/okhttp/a0;

    move-result-object v8

    .line 48
    :cond_b
    iput-object v8, v1, Lcom/mbridge/msdk/thrid/okhttp/internal/connection/g;->c:Lcom/mbridge/msdk/thrid/okhttp/a0;

    .line 49
    iput v7, v1, Lcom/mbridge/msdk/thrid/okhttp/internal/connection/g;->i:I

    .line 50
    new-instance v4, Lcom/mbridge/msdk/thrid/okhttp/internal/connection/c;

    iget-object v0, v1, Lcom/mbridge/msdk/thrid/okhttp/internal/connection/g;->d:Lcom/mbridge/msdk/thrid/okhttp/h;

    invoke-direct {v4, v0, v8}, Lcom/mbridge/msdk/thrid/okhttp/internal/connection/c;-><init>(Lcom/mbridge/msdk/thrid/okhttp/h;Lcom/mbridge/msdk/thrid/okhttp/a0;)V

    .line 51
    invoke-virtual {v1, v4, v7}, Lcom/mbridge/msdk/thrid/okhttp/internal/connection/g;->a(Lcom/mbridge/msdk/thrid/okhttp/internal/connection/c;Z)V

    .line 52
    :cond_c
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v9, :cond_d

    .line 53
    iget-object v0, v1, Lcom/mbridge/msdk/thrid/okhttp/internal/connection/g;->f:Lcom/mbridge/msdk/thrid/okhttp/n;

    iget-object v2, v1, Lcom/mbridge/msdk/thrid/okhttp/internal/connection/g;->e:Lcom/mbridge/msdk/thrid/okhttp/d;

    invoke-virtual {v0, v2, v4}, Lcom/mbridge/msdk/thrid/okhttp/n;->connectionAcquired(Lcom/mbridge/msdk/thrid/okhttp/d;Lcom/mbridge/msdk/thrid/okhttp/g;)V

    return-object v4

    .line 54
    :cond_d
    iget-object v0, v1, Lcom/mbridge/msdk/thrid/okhttp/internal/connection/g;->e:Lcom/mbridge/msdk/thrid/okhttp/d;

    iget-object v2, v1, Lcom/mbridge/msdk/thrid/okhttp/internal/connection/g;->f:Lcom/mbridge/msdk/thrid/okhttp/n;

    move-object v10, v4

    move/from16 v11, p1

    move/from16 v12, p2

    move/from16 v13, p3

    move/from16 v14, p4

    move/from16 v15, p5

    move-object/from16 v16, v0

    move-object/from16 v17, v2

    invoke-virtual/range {v10 .. v17}, Lcom/mbridge/msdk/thrid/okhttp/internal/connection/c;->a(IIIIZLcom/mbridge/msdk/thrid/okhttp/d;Lcom/mbridge/msdk/thrid/okhttp/n;)V

    .line 55
    invoke-direct/range {p0 .. p0}, Lcom/mbridge/msdk/thrid/okhttp/internal/connection/g;->i()Lcom/mbridge/msdk/thrid/okhttp/internal/connection/d;

    move-result-object v0

    invoke-virtual {v4}, Lcom/mbridge/msdk/thrid/okhttp/internal/connection/c;->c()Lcom/mbridge/msdk/thrid/okhttp/a0;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/mbridge/msdk/thrid/okhttp/internal/connection/d;->a(Lcom/mbridge/msdk/thrid/okhttp/a0;)V

    .line 56
    iget-object v2, v1, Lcom/mbridge/msdk/thrid/okhttp/internal/connection/g;->d:Lcom/mbridge/msdk/thrid/okhttp/h;

    monitor-enter v2

    .line 57
    :try_start_2
    iput-boolean v6, v1, Lcom/mbridge/msdk/thrid/okhttp/internal/connection/g;->k:Z

    .line 58
    sget-object v0, Lcom/mbridge/msdk/thrid/okhttp/internal/a;->a:Lcom/mbridge/msdk/thrid/okhttp/internal/a;

    iget-object v3, v1, Lcom/mbridge/msdk/thrid/okhttp/internal/connection/g;->d:Lcom/mbridge/msdk/thrid/okhttp/h;

    invoke-virtual {v0, v3, v4}, Lcom/mbridge/msdk/thrid/okhttp/internal/a;->b(Lcom/mbridge/msdk/thrid/okhttp/h;Lcom/mbridge/msdk/thrid/okhttp/internal/connection/c;)V

    .line 59
    invoke-virtual {v4}, Lcom/mbridge/msdk/thrid/okhttp/internal/connection/c;->f()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 60
    sget-object v0, Lcom/mbridge/msdk/thrid/okhttp/internal/a;->a:Lcom/mbridge/msdk/thrid/okhttp/internal/a;

    iget-object v3, v1, Lcom/mbridge/msdk/thrid/okhttp/internal/connection/g;->d:Lcom/mbridge/msdk/thrid/okhttp/h;

    iget-object v4, v1, Lcom/mbridge/msdk/thrid/okhttp/internal/connection/g;->a:Lcom/mbridge/msdk/thrid/okhttp/a;

    invoke-virtual {v0, v3, v4, v1}, Lcom/mbridge/msdk/thrid/okhttp/internal/a;->a(Lcom/mbridge/msdk/thrid/okhttp/h;Lcom/mbridge/msdk/thrid/okhttp/a;Lcom/mbridge/msdk/thrid/okhttp/internal/connection/g;)Ljava/net/Socket;

    move-result-object v5

    .line 61
    iget-object v4, v1, Lcom/mbridge/msdk/thrid/okhttp/internal/connection/g;->j:Lcom/mbridge/msdk/thrid/okhttp/internal/connection/c;

    goto :goto_6

    :catchall_2
    move-exception v0

    goto :goto_7

    .line 62
    :cond_e
    :goto_6
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 63
    invoke-static {v5}, Lcom/mbridge/msdk/thrid/okhttp/internal/c;->a(Ljava/net/Socket;)V

    .line 64
    iget-object v0, v1, Lcom/mbridge/msdk/thrid/okhttp/internal/connection/g;->f:Lcom/mbridge/msdk/thrid/okhttp/n;

    iget-object v2, v1, Lcom/mbridge/msdk/thrid/okhttp/internal/connection/g;->e:Lcom/mbridge/msdk/thrid/okhttp/d;

    invoke-virtual {v0, v2, v4}, Lcom/mbridge/msdk/thrid/okhttp/n;->connectionAcquired(Lcom/mbridge/msdk/thrid/okhttp/d;Lcom/mbridge/msdk/thrid/okhttp/g;)V

    return-object v4

    .line 65
    :goto_7
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw v0

    .line 66
    :cond_f
    :try_start_4
    new-instance v0, Ljava/io/IOException;

    const-string v2, "Canceled"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 67
    :goto_8
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0

    .line 68
    :cond_10
    :try_start_5
    new-instance v0, Ljava/io/IOException;

    const-string v3, "Canceled"

    invoke-direct {v0, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 69
    :cond_11
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v3, "codec != null"

    invoke-direct {v0, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 70
    :cond_12
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v3, "released"

    invoke-direct {v0, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 71
    :goto_9
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v0
.end method

.method private a(IIIIZZ)Lcom/mbridge/msdk/thrid/okhttp/internal/connection/c;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 13
    :goto_0
    invoke-direct/range {p0 .. p5}, Lcom/mbridge/msdk/thrid/okhttp/internal/connection/g;->a(IIIIZ)Lcom/mbridge/msdk/thrid/okhttp/internal/connection/c;

    move-result-object v0

    .line 14
    iget-object v1, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/connection/g;->d:Lcom/mbridge/msdk/thrid/okhttp/h;

    monitor-enter v1

    .line 15
    :try_start_0
    iget v2, v0, Lcom/mbridge/msdk/thrid/okhttp/internal/connection/c;->l:I

    if-nez v2, :cond_0

    invoke-virtual {v0}, Lcom/mbridge/msdk/thrid/okhttp/internal/connection/c;->f()Z

    move-result v2

    if-nez v2, :cond_0

    .line 16
    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 17
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    invoke-virtual {v0, p6}, Lcom/mbridge/msdk/thrid/okhttp/internal/connection/c;->a(Z)Z

    move-result v1

    if-nez v1, :cond_1

    .line 19
    invoke-virtual {p0}, Lcom/mbridge/msdk/thrid/okhttp/internal/connection/g;->e()V

    goto :goto_0

    :cond_1
    return-object v0

    .line 20
    :goto_1
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private a(ZZZ)Ljava/net/Socket;
    .locals 1

    .line 89
    sget-boolean v0, Lcom/mbridge/msdk/thrid/okhttp/internal/connection/g;->o:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/connection/g;->d:Lcom/mbridge/msdk/thrid/okhttp/h;

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    if-eqz p3, :cond_2

    .line 90
    iput-object v0, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/connection/g;->n:Lcom/mbridge/msdk/thrid/okhttp/internal/http/c;

    :cond_2
    const/4 p3, 0x1

    if-eqz p2, :cond_3

    .line 91
    iput-boolean p3, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/connection/g;->l:Z

    .line 92
    :cond_3
    iget-object p2, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/connection/g;->j:Lcom/mbridge/msdk/thrid/okhttp/internal/connection/c;

    if-eqz p2, :cond_7

    if-eqz p1, :cond_4

    .line 93
    iput-boolean p3, p2, Lcom/mbridge/msdk/thrid/okhttp/internal/connection/c;->k:Z

    .line 94
    :cond_4
    iget-object p1, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/connection/g;->n:Lcom/mbridge/msdk/thrid/okhttp/internal/http/c;

    if-nez p1, :cond_7

    iget-boolean p1, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/connection/g;->l:Z

    if-nez p1, :cond_5

    iget-boolean p1, p2, Lcom/mbridge/msdk/thrid/okhttp/internal/connection/c;->k:Z

    if-eqz p1, :cond_7

    .line 95
    :cond_5
    invoke-direct {p0, p2}, Lcom/mbridge/msdk/thrid/okhttp/internal/connection/g;->a(Lcom/mbridge/msdk/thrid/okhttp/internal/connection/c;)V

    .line 96
    iget-object p1, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/connection/g;->j:Lcom/mbridge/msdk/thrid/okhttp/internal/connection/c;

    iget-object p1, p1, Lcom/mbridge/msdk/thrid/okhttp/internal/connection/c;->n:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 97
    iget-object p1, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/connection/g;->j:Lcom/mbridge/msdk/thrid/okhttp/internal/connection/c;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide p2

    iput-wide p2, p1, Lcom/mbridge/msdk/thrid/okhttp/internal/connection/c;->o:J

    .line 98
    sget-object p1, Lcom/mbridge/msdk/thrid/okhttp/internal/a;->a:Lcom/mbridge/msdk/thrid/okhttp/internal/a;

    iget-object p2, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/connection/g;->d:Lcom/mbridge/msdk/thrid/okhttp/h;

    iget-object p3, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/connection/g;->j:Lcom/mbridge/msdk/thrid/okhttp/internal/connection/c;

    invoke-virtual {p1, p2, p3}, Lcom/mbridge/msdk/thrid/okhttp/internal/a;->a(Lcom/mbridge/msdk/thrid/okhttp/h;Lcom/mbridge/msdk/thrid/okhttp/internal/connection/c;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 99
    iget-object p1, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/connection/g;->j:Lcom/mbridge/msdk/thrid/okhttp/internal/connection/c;

    invoke-virtual {p1}, Lcom/mbridge/msdk/thrid/okhttp/internal/connection/c;->g()Ljava/net/Socket;

    move-result-object p1

    goto :goto_1

    :cond_6
    move-object p1, v0

    .line 100
    :goto_1
    iput-object v0, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/connection/g;->j:Lcom/mbridge/msdk/thrid/okhttp/internal/connection/c;

    move-object v0, p1

    :cond_7
    return-object v0
.end method

.method private a(Lcom/mbridge/msdk/thrid/okhttp/internal/connection/c;)V
    .locals 3

    .line 136
    iget-object v0, p1, Lcom/mbridge/msdk/thrid/okhttp/internal/connection/c;->n:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 137
    iget-object v2, p1, Lcom/mbridge/msdk/thrid/okhttp/internal/connection/c;->n:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/Reference;

    .line 138
    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    if-ne v2, p0, :cond_0

    .line 139
    iget-object p1, p1, Lcom/mbridge/msdk/thrid/okhttp/internal/connection/c;->n:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    return-void

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 140
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method private g()Ljava/net/Socket;
    .locals 2

    .line 1
    sget-boolean v0, Lcom/mbridge/msdk/thrid/okhttp/internal/connection/g;->o:Z

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/connection/g;->d:Lcom/mbridge/msdk/thrid/okhttp/h;

    .line 6
    .line 7
    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    .line 15
    .line 16
    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    .line 17
    .line 18
    .line 19
    throw v0

    .line 20
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/connection/g;->j:Lcom/mbridge/msdk/thrid/okhttp/internal/connection/c;

    .line 21
    .line 22
    if-eqz v0, :cond_2

    .line 23
    .line 24
    iget-boolean v0, v0, Lcom/mbridge/msdk/thrid/okhttp/internal/connection/c;->k:Z

    .line 25
    .line 26
    if-eqz v0, :cond_2

    .line 27
    .line 28
    const/4 v0, 0x1

    .line 29
    const/4 v1, 0x0

    .line 30
    invoke-direct {p0, v1, v1, v0}, Lcom/mbridge/msdk/thrid/okhttp/internal/connection/g;->a(ZZZ)Ljava/net/Socket;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    return-object v0

    .line 35
    :cond_2
    const/4 v0, 0x0

    .line 36
    return-object v0
.end method

.method private i()Lcom/mbridge/msdk/thrid/okhttp/internal/connection/d;
    .locals 2

    .line 1
    sget-object v0, Lcom/mbridge/msdk/thrid/okhttp/internal/a;->a:Lcom/mbridge/msdk/thrid/okhttp/internal/a;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/connection/g;->d:Lcom/mbridge/msdk/thrid/okhttp/h;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lcom/mbridge/msdk/thrid/okhttp/internal/a;->a(Lcom/mbridge/msdk/thrid/okhttp/h;)Lcom/mbridge/msdk/thrid/okhttp/internal/connection/d;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method


# virtual methods
.method public a(Lcom/mbridge/msdk/thrid/okhttp/t;Lcom/mbridge/msdk/thrid/okhttp/r$a;Z)Lcom/mbridge/msdk/thrid/okhttp/internal/http/c;
    .locals 7

    .line 1
    invoke-interface {p2}, Lcom/mbridge/msdk/thrid/okhttp/r$a;->a()I

    move-result v1

    .line 2
    invoke-interface {p2}, Lcom/mbridge/msdk/thrid/okhttp/r$a;->b()I

    move-result v2

    .line 3
    invoke-interface {p2}, Lcom/mbridge/msdk/thrid/okhttp/r$a;->c()I

    move-result v3

    .line 4
    invoke-virtual {p1}, Lcom/mbridge/msdk/thrid/okhttp/t;->t()I

    move-result v4

    .line 5
    invoke-virtual {p1}, Lcom/mbridge/msdk/thrid/okhttp/t;->z()Z

    move-result v5

    move-object v0, p0

    move v6, p3

    .line 6
    :try_start_0
    invoke-direct/range {v0 .. v6}, Lcom/mbridge/msdk/thrid/okhttp/internal/connection/g;->a(IIIIZZ)Lcom/mbridge/msdk/thrid/okhttp/internal/connection/c;

    move-result-object p3

    .line 7
    invoke-virtual {p3, p1, p2, p0}, Lcom/mbridge/msdk/thrid/okhttp/internal/connection/c;->a(Lcom/mbridge/msdk/thrid/okhttp/t;Lcom/mbridge/msdk/thrid/okhttp/r$a;Lcom/mbridge/msdk/thrid/okhttp/internal/connection/g;)Lcom/mbridge/msdk/thrid/okhttp/internal/http/c;

    move-result-object p1

    .line 8
    iget-object p2, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/connection/g;->d:Lcom/mbridge/msdk/thrid/okhttp/h;

    monitor-enter p2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    :try_start_1
    iput-object p1, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/connection/g;->n:Lcom/mbridge/msdk/thrid/okhttp/internal/http/c;

    .line 10
    monitor-exit p2

    return-object p1

    :catchall_0
    move-exception p1

    .line 11
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p1
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception p1

    .line 12
    new-instance p2, Lcom/mbridge/msdk/thrid/okhttp/internal/connection/e;

    invoke-direct {p2, p1}, Lcom/mbridge/msdk/thrid/okhttp/internal/connection/e;-><init>(Ljava/io/IOException;)V

    throw p2
.end method

.method public a()V
    .locals 3

    .line 101
    iget-object v0, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/connection/g;->d:Lcom/mbridge/msdk/thrid/okhttp/h;

    monitor-enter v0

    const/4 v1, 0x1

    .line 102
    :try_start_0
    iput-boolean v1, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/connection/g;->m:Z

    .line 103
    iget-object v1, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/connection/g;->n:Lcom/mbridge/msdk/thrid/okhttp/internal/http/c;

    .line 104
    iget-object v2, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/connection/g;->j:Lcom/mbridge/msdk/thrid/okhttp/internal/connection/c;

    .line 105
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 106
    invoke-interface {v1}, Lcom/mbridge/msdk/thrid/okhttp/internal/http/c;->cancel()V

    goto :goto_0

    :cond_0
    if-eqz v2, :cond_1

    .line 107
    invoke-virtual {v2}, Lcom/mbridge/msdk/thrid/okhttp/internal/connection/c;->d()V

    :cond_1
    :goto_0
    return-void

    :catchall_0
    move-exception v1

    .line 108
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public a(Lcom/mbridge/msdk/thrid/okhttp/internal/connection/c;Z)V
    .locals 1

    .line 130
    sget-boolean v0, Lcom/mbridge/msdk/thrid/okhttp/internal/connection/g;->o:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/connection/g;->d:Lcom/mbridge/msdk/thrid/okhttp/h;

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 131
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/connection/g;->j:Lcom/mbridge/msdk/thrid/okhttp/internal/connection/c;

    if-nez v0, :cond_2

    .line 132
    iput-object p1, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/connection/g;->j:Lcom/mbridge/msdk/thrid/okhttp/internal/connection/c;

    .line 133
    iput-boolean p2, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/connection/g;->k:Z

    .line 134
    iget-object p1, p1, Lcom/mbridge/msdk/thrid/okhttp/internal/connection/c;->n:Ljava/util/List;

    new-instance p2, Lcom/mbridge/msdk/thrid/okhttp/internal/connection/g$a;

    iget-object v0, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/connection/g;->g:Ljava/lang/Object;

    invoke-direct {p2, p0, v0}, Lcom/mbridge/msdk/thrid/okhttp/internal/connection/g$a;-><init>(Lcom/mbridge/msdk/thrid/okhttp/internal/connection/g;Ljava/lang/Object;)V

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    .line 135
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method public a(Ljava/io/IOException;)V
    .locals 6

    .line 109
    iget-object v0, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/connection/g;->d:Lcom/mbridge/msdk/thrid/okhttp/h;

    monitor-enter v0

    .line 110
    :try_start_0
    instance-of v1, p1, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/n;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_2

    .line 111
    check-cast p1, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/n;

    iget-object p1, p1, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/n;->a:Lcom/mbridge/msdk/thrid/okhttp/internal/http2/b;

    .line 112
    sget-object v1, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/b;->f:Lcom/mbridge/msdk/thrid/okhttp/internal/http2/b;

    if-ne p1, v1, :cond_1

    .line 113
    iget p1, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/connection/g;->i:I

    add-int/2addr p1, v3

    iput p1, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/connection/g;->i:I

    if-le p1, v3, :cond_5

    .line 114
    iput-object v2, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/connection/g;->c:Lcom/mbridge/msdk/thrid/okhttp/a0;

    :cond_0
    :goto_0
    move p1, v3

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_3

    .line 115
    :cond_1
    sget-object v1, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/b;->g:Lcom/mbridge/msdk/thrid/okhttp/internal/http2/b;

    if-eq p1, v1, :cond_5

    .line 116
    iput-object v2, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/connection/g;->c:Lcom/mbridge/msdk/thrid/okhttp/a0;

    goto :goto_0

    .line 117
    :cond_2
    iget-object v1, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/connection/g;->j:Lcom/mbridge/msdk/thrid/okhttp/internal/connection/c;

    if-eqz v1, :cond_5

    .line 118
    invoke-virtual {v1}, Lcom/mbridge/msdk/thrid/okhttp/internal/connection/c;->f()Z

    move-result v1

    if-eqz v1, :cond_3

    instance-of v1, p1, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/a;

    if-eqz v1, :cond_5

    .line 119
    :cond_3
    iget-object v1, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/connection/g;->j:Lcom/mbridge/msdk/thrid/okhttp/internal/connection/c;

    iget v1, v1, Lcom/mbridge/msdk/thrid/okhttp/internal/connection/c;->l:I

    if-nez v1, :cond_0

    .line 120
    iget-object v1, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/connection/g;->c:Lcom/mbridge/msdk/thrid/okhttp/a0;

    if-eqz v1, :cond_4

    if-eqz p1, :cond_4

    .line 121
    iget-object v5, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/connection/g;->h:Lcom/mbridge/msdk/thrid/okhttp/internal/connection/f;

    invoke-virtual {v5, v1, p1}, Lcom/mbridge/msdk/thrid/okhttp/internal/connection/f;->a(Lcom/mbridge/msdk/thrid/okhttp/a0;Ljava/io/IOException;)V

    .line 122
    :cond_4
    iput-object v2, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/connection/g;->c:Lcom/mbridge/msdk/thrid/okhttp/a0;

    goto :goto_0

    :cond_5
    move p1, v4

    .line 123
    :goto_1
    iget-object v1, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/connection/g;->j:Lcom/mbridge/msdk/thrid/okhttp/internal/connection/c;

    .line 124
    invoke-direct {p0, p1, v4, v3}, Lcom/mbridge/msdk/thrid/okhttp/internal/connection/g;->a(ZZZ)Ljava/net/Socket;

    move-result-object p1

    .line 125
    iget-object v3, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/connection/g;->j:Lcom/mbridge/msdk/thrid/okhttp/internal/connection/c;

    if-nez v3, :cond_7

    iget-boolean v3, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/connection/g;->k:Z

    if-nez v3, :cond_6

    goto :goto_2

    :cond_6
    move-object v2, v1

    .line 126
    :cond_7
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 127
    invoke-static {p1}, Lcom/mbridge/msdk/thrid/okhttp/internal/c;->a(Ljava/net/Socket;)V

    if-eqz v2, :cond_8

    .line 128
    iget-object p1, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/connection/g;->f:Lcom/mbridge/msdk/thrid/okhttp/n;

    iget-object v0, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/connection/g;->e:Lcom/mbridge/msdk/thrid/okhttp/d;

    invoke-virtual {p1, v0, v2}, Lcom/mbridge/msdk/thrid/okhttp/n;->connectionReleased(Lcom/mbridge/msdk/thrid/okhttp/d;Lcom/mbridge/msdk/thrid/okhttp/g;)V

    :cond_8
    return-void

    .line 129
    :goto_3
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public a(ZLcom/mbridge/msdk/thrid/okhttp/internal/http/c;JLjava/io/IOException;)V
    .locals 2

    .line 72
    iget-object v0, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/connection/g;->f:Lcom/mbridge/msdk/thrid/okhttp/n;

    iget-object v1, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/connection/g;->e:Lcom/mbridge/msdk/thrid/okhttp/d;

    invoke-virtual {v0, v1, p3, p4}, Lcom/mbridge/msdk/thrid/okhttp/n;->responseBodyEnd(Lcom/mbridge/msdk/thrid/okhttp/d;J)V

    .line 73
    iget-object p3, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/connection/g;->d:Lcom/mbridge/msdk/thrid/okhttp/h;

    monitor-enter p3

    if-eqz p2, :cond_5

    .line 74
    :try_start_0
    iget-object p4, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/connection/g;->n:Lcom/mbridge/msdk/thrid/okhttp/internal/http/c;

    if-ne p2, p4, :cond_5

    const/4 p2, 0x1

    if-nez p1, :cond_0

    .line 75
    iget-object p4, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/connection/g;->j:Lcom/mbridge/msdk/thrid/okhttp/internal/connection/c;

    iget v0, p4, Lcom/mbridge/msdk/thrid/okhttp/internal/connection/c;->l:I

    add-int/2addr v0, p2

    iput v0, p4, Lcom/mbridge/msdk/thrid/okhttp/internal/connection/c;->l:I

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    .line 76
    :cond_0
    :goto_0
    iget-object p4, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/connection/g;->j:Lcom/mbridge/msdk/thrid/okhttp/internal/connection/c;

    const/4 v0, 0x0

    .line 77
    invoke-direct {p0, p1, v0, p2}, Lcom/mbridge/msdk/thrid/okhttp/internal/connection/g;->a(ZZZ)Ljava/net/Socket;

    move-result-object p1

    .line 78
    iget-object p2, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/connection/g;->j:Lcom/mbridge/msdk/thrid/okhttp/internal/connection/c;

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    move-object p4, v0

    .line 79
    :cond_1
    iget-boolean p2, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/connection/g;->l:Z

    .line 80
    monitor-exit p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 81
    invoke-static {p1}, Lcom/mbridge/msdk/thrid/okhttp/internal/c;->a(Ljava/net/Socket;)V

    if-eqz p4, :cond_2

    .line 82
    iget-object p1, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/connection/g;->f:Lcom/mbridge/msdk/thrid/okhttp/n;

    iget-object p3, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/connection/g;->e:Lcom/mbridge/msdk/thrid/okhttp/d;

    invoke-virtual {p1, p3, p4}, Lcom/mbridge/msdk/thrid/okhttp/n;->connectionReleased(Lcom/mbridge/msdk/thrid/okhttp/d;Lcom/mbridge/msdk/thrid/okhttp/g;)V

    :cond_2
    if-eqz p5, :cond_3

    .line 83
    sget-object p1, Lcom/mbridge/msdk/thrid/okhttp/internal/a;->a:Lcom/mbridge/msdk/thrid/okhttp/internal/a;

    iget-object p2, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/connection/g;->e:Lcom/mbridge/msdk/thrid/okhttp/d;

    invoke-virtual {p1, p2, p5}, Lcom/mbridge/msdk/thrid/okhttp/internal/a;->a(Lcom/mbridge/msdk/thrid/okhttp/d;Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object p1

    .line 84
    iget-object p2, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/connection/g;->f:Lcom/mbridge/msdk/thrid/okhttp/n;

    iget-object p3, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/connection/g;->e:Lcom/mbridge/msdk/thrid/okhttp/d;

    invoke-virtual {p2, p3, p1}, Lcom/mbridge/msdk/thrid/okhttp/n;->callFailed(Lcom/mbridge/msdk/thrid/okhttp/d;Ljava/io/IOException;)V

    goto :goto_1

    :cond_3
    if-eqz p2, :cond_4

    .line 85
    sget-object p1, Lcom/mbridge/msdk/thrid/okhttp/internal/a;->a:Lcom/mbridge/msdk/thrid/okhttp/internal/a;

    iget-object p2, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/connection/g;->e:Lcom/mbridge/msdk/thrid/okhttp/d;

    invoke-virtual {p1, p2, v0}, Lcom/mbridge/msdk/thrid/okhttp/internal/a;->a(Lcom/mbridge/msdk/thrid/okhttp/d;Ljava/io/IOException;)Ljava/io/IOException;

    .line 86
    iget-object p1, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/connection/g;->f:Lcom/mbridge/msdk/thrid/okhttp/n;

    iget-object p2, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/connection/g;->e:Lcom/mbridge/msdk/thrid/okhttp/d;

    invoke-virtual {p1, p2}, Lcom/mbridge/msdk/thrid/okhttp/n;->callEnd(Lcom/mbridge/msdk/thrid/okhttp/d;)V

    :cond_4
    :goto_1
    return-void

    .line 87
    :cond_5
    :try_start_1
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "expected "

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p5, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/connection/g;->n:Lcom/mbridge/msdk/thrid/okhttp/internal/http/c;

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p5, " but was "

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 88
    :goto_2
    monitor-exit p3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public b()Lcom/mbridge/msdk/thrid/okhttp/internal/http/c;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/connection/g;->d:Lcom/mbridge/msdk/thrid/okhttp/h;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/connection/g;->n:Lcom/mbridge/msdk/thrid/okhttp/internal/http/c;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public b(Lcom/mbridge/msdk/thrid/okhttp/internal/connection/c;)Ljava/net/Socket;
    .locals 3

    .line 4
    sget-boolean v0, Lcom/mbridge/msdk/thrid/okhttp/internal/connection/g;->o:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/connection/g;->d:Lcom/mbridge/msdk/thrid/okhttp/h;

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 5
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/connection/g;->n:Lcom/mbridge/msdk/thrid/okhttp/internal/http/c;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/connection/g;->j:Lcom/mbridge/msdk/thrid/okhttp/internal/connection/c;

    iget-object v0, v0, Lcom/mbridge/msdk/thrid/okhttp/internal/connection/c;->n:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 6
    iget-object v0, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/connection/g;->j:Lcom/mbridge/msdk/thrid/okhttp/internal/connection/c;

    iget-object v0, v0, Lcom/mbridge/msdk/thrid/okhttp/internal/connection/c;->n:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/Reference;

    .line 7
    invoke-direct {p0, v1, v2, v2}, Lcom/mbridge/msdk/thrid/okhttp/internal/connection/g;->a(ZZZ)Ljava/net/Socket;

    move-result-object v1

    .line 8
    iput-object p1, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/connection/g;->j:Lcom/mbridge/msdk/thrid/okhttp/internal/connection/c;

    .line 9
    iget-object p1, p1, Lcom/mbridge/msdk/thrid/okhttp/internal/connection/c;->n:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v1

    .line 10
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method public declared-synchronized c()Lcom/mbridge/msdk/thrid/okhttp/internal/connection/c;
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/connection/g;->j:Lcom/mbridge/msdk/thrid/okhttp/internal/connection/c;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    .line 4
    monitor-exit p0

    .line 5
    return-object v0

    .line 6
    :catchall_0
    move-exception v0

    .line 7
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8
    throw v0
.end method

.method public d()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/connection/g;->c:Lcom/mbridge/msdk/thrid/okhttp/a0;

    .line 2
    .line 3
    if-nez v0, :cond_2

    .line 4
    .line 5
    iget-object v0, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/connection/g;->b:Lcom/mbridge/msdk/thrid/okhttp/internal/connection/f$a;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/mbridge/msdk/thrid/okhttp/internal/connection/f$a;->b()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_2

    .line 14
    .line 15
    :cond_0
    iget-object v0, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/connection/g;->h:Lcom/mbridge/msdk/thrid/okhttp/internal/connection/f;

    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/mbridge/msdk/thrid/okhttp/internal/connection/f;->a()Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_1
    const/4 v0, 0x0

    .line 25
    goto :goto_1

    .line 26
    :cond_2
    :goto_0
    const/4 v0, 0x1

    .line 27
    :goto_1
    return v0
.end method

.method public e()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/connection/g;->d:Lcom/mbridge/msdk/thrid/okhttp/h;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/connection/g;->j:Lcom/mbridge/msdk/thrid/okhttp/internal/connection/c;

    .line 5
    .line 6
    const/4 v2, 0x1

    .line 7
    const/4 v3, 0x0

    .line 8
    invoke-direct {p0, v2, v3, v3}, Lcom/mbridge/msdk/thrid/okhttp/internal/connection/g;->a(ZZZ)Ljava/net/Socket;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    iget-object v3, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/connection/g;->j:Lcom/mbridge/msdk/thrid/okhttp/internal/connection/c;

    .line 13
    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    const/4 v1, 0x0

    .line 17
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    invoke-static {v2}, Lcom/mbridge/msdk/thrid/okhttp/internal/c;->a(Ljava/net/Socket;)V

    .line 19
    .line 20
    .line 21
    if-eqz v1, :cond_1

    .line 22
    .line 23
    iget-object v0, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/connection/g;->f:Lcom/mbridge/msdk/thrid/okhttp/n;

    .line 24
    .line 25
    iget-object v2, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/connection/g;->e:Lcom/mbridge/msdk/thrid/okhttp/d;

    .line 26
    .line 27
    invoke-virtual {v0, v2, v1}, Lcom/mbridge/msdk/thrid/okhttp/n;->connectionReleased(Lcom/mbridge/msdk/thrid/okhttp/d;Lcom/mbridge/msdk/thrid/okhttp/g;)V

    .line 28
    .line 29
    .line 30
    :cond_1
    return-void

    .line 31
    :catchall_0
    move-exception v1

    .line 32
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 33
    throw v1
.end method

.method public f()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/connection/g;->d:Lcom/mbridge/msdk/thrid/okhttp/h;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/connection/g;->j:Lcom/mbridge/msdk/thrid/okhttp/internal/connection/c;

    .line 5
    .line 6
    const/4 v2, 0x1

    .line 7
    const/4 v3, 0x0

    .line 8
    invoke-direct {p0, v3, v2, v3}, Lcom/mbridge/msdk/thrid/okhttp/internal/connection/g;->a(ZZZ)Ljava/net/Socket;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    iget-object v3, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/connection/g;->j:Lcom/mbridge/msdk/thrid/okhttp/internal/connection/c;

    .line 13
    .line 14
    const/4 v4, 0x0

    .line 15
    if-eqz v3, :cond_0

    .line 16
    .line 17
    move-object v1, v4

    .line 18
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    invoke-static {v2}, Lcom/mbridge/msdk/thrid/okhttp/internal/c;->a(Ljava/net/Socket;)V

    .line 20
    .line 21
    .line 22
    if-eqz v1, :cond_1

    .line 23
    .line 24
    sget-object v0, Lcom/mbridge/msdk/thrid/okhttp/internal/a;->a:Lcom/mbridge/msdk/thrid/okhttp/internal/a;

    .line 25
    .line 26
    iget-object v2, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/connection/g;->e:Lcom/mbridge/msdk/thrid/okhttp/d;

    .line 27
    .line 28
    invoke-virtual {v0, v2, v4}, Lcom/mbridge/msdk/thrid/okhttp/internal/a;->a(Lcom/mbridge/msdk/thrid/okhttp/d;Ljava/io/IOException;)Ljava/io/IOException;

    .line 29
    .line 30
    .line 31
    iget-object v0, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/connection/g;->f:Lcom/mbridge/msdk/thrid/okhttp/n;

    .line 32
    .line 33
    iget-object v2, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/connection/g;->e:Lcom/mbridge/msdk/thrid/okhttp/d;

    .line 34
    .line 35
    invoke-virtual {v0, v2, v1}, Lcom/mbridge/msdk/thrid/okhttp/n;->connectionReleased(Lcom/mbridge/msdk/thrid/okhttp/d;Lcom/mbridge/msdk/thrid/okhttp/g;)V

    .line 36
    .line 37
    .line 38
    iget-object v0, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/connection/g;->f:Lcom/mbridge/msdk/thrid/okhttp/n;

    .line 39
    .line 40
    iget-object v1, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/connection/g;->e:Lcom/mbridge/msdk/thrid/okhttp/d;

    .line 41
    .line 42
    invoke-virtual {v0, v1}, Lcom/mbridge/msdk/thrid/okhttp/n;->callEnd(Lcom/mbridge/msdk/thrid/okhttp/d;)V

    .line 43
    .line 44
    .line 45
    :cond_1
    return-void

    .line 46
    :catchall_0
    move-exception v1

    .line 47
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 48
    throw v1
.end method

.method public h()Lcom/mbridge/msdk/thrid/okhttp/a0;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/connection/g;->c:Lcom/mbridge/msdk/thrid/okhttp/a0;

    .line 2
    .line 3
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/mbridge/msdk/thrid/okhttp/internal/connection/g;->c()Lcom/mbridge/msdk/thrid/okhttp/internal/connection/c;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/mbridge/msdk/thrid/okhttp/internal/connection/c;->toString()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/connection/g;->a:Lcom/mbridge/msdk/thrid/okhttp/a;

    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/mbridge/msdk/thrid/okhttp/a;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    :goto_0
    return-object v0
.end method
