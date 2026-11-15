.class public final Lcom/yandex/mobile/ads/impl/wm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/impl/tv;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/mobile/ads/impl/wm$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/sm;

.field private final b:Lcom/yandex/mobile/ads/impl/tv;

.field private final c:Lcom/yandex/mobile/ads/impl/o42;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final d:Lcom/yandex/mobile/ads/impl/tv;

.field private final e:Lcom/yandex/mobile/ads/impl/en;

.field private final f:Z

.field private final g:Z

.field private final h:Z

.field private i:Landroid/net/Uri;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private j:Lcom/yandex/mobile/ads/impl/xv;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private k:Lcom/yandex/mobile/ads/impl/xv;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private l:Lcom/yandex/mobile/ads/impl/tv;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private m:J

.field private n:J

.field private o:J

.field private p:Lcom/yandex/mobile/ads/impl/fn;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private q:Z

.field private r:Z

.field private s:J


# direct methods
.method private constructor <init>(Lcom/yandex/mobile/ads/impl/sm;Lcom/yandex/mobile/ads/impl/tv;Lcom/yandex/mobile/ads/impl/hb0;Lcom/yandex/mobile/ads/impl/vm;Lcom/yandex/mobile/ads/impl/en;II)V
    .locals 0
    .param p2    # Lcom/yandex/mobile/ads/impl/tv;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Lcom/yandex/mobile/ads/impl/vm;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Lcom/yandex/mobile/ads/impl/en;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/wm;->a:Lcom/yandex/mobile/ads/impl/sm;

    .line 4
    iput-object p3, p0, Lcom/yandex/mobile/ads/impl/wm;->b:Lcom/yandex/mobile/ads/impl/tv;

    if-eqz p5, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    sget-object p5, Lcom/yandex/mobile/ads/impl/en;->a:Lcom/yandex/mobile/ads/impl/en;

    :goto_0
    iput-object p5, p0, Lcom/yandex/mobile/ads/impl/wm;->e:Lcom/yandex/mobile/ads/impl/en;

    const/4 p1, 0x1

    and-int/lit8 p3, p6, 0x1

    const/4 p5, 0x0

    if-eqz p3, :cond_1

    goto :goto_1

    :cond_1
    move p1, p5

    .line 6
    :goto_1
    iput-boolean p1, p0, Lcom/yandex/mobile/ads/impl/wm;->f:Z

    .line 7
    iput-boolean p5, p0, Lcom/yandex/mobile/ads/impl/wm;->g:Z

    .line 8
    iput-boolean p5, p0, Lcom/yandex/mobile/ads/impl/wm;->h:Z

    const/4 p1, 0x0

    if-eqz p2, :cond_3

    .line 9
    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/wm;->d:Lcom/yandex/mobile/ads/impl/tv;

    if-eqz p4, :cond_2

    .line 10
    new-instance p1, Lcom/yandex/mobile/ads/impl/o42;

    invoke-direct {p1, p2, p4}, Lcom/yandex/mobile/ads/impl/o42;-><init>(Lcom/yandex/mobile/ads/impl/tv;Lcom/yandex/mobile/ads/impl/vm;)V

    .line 11
    :cond_2
    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/wm;->c:Lcom/yandex/mobile/ads/impl/o42;

    goto :goto_2

    .line 12
    :cond_3
    sget-object p2, Lcom/yandex/mobile/ads/impl/mh1;->a:Lcom/yandex/mobile/ads/impl/mh1;

    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/wm;->d:Lcom/yandex/mobile/ads/impl/tv;

    .line 13
    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/wm;->c:Lcom/yandex/mobile/ads/impl/o42;

    :goto_2
    return-void
.end method

.method public synthetic constructor <init>(Lcom/yandex/mobile/ads/impl/sm;Lcom/yandex/mobile/ads/impl/tv;Lcom/yandex/mobile/ads/impl/hb0;Lcom/yandex/mobile/ads/impl/vm;Lcom/yandex/mobile/ads/impl/en;IILtwd;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p7}, Lcom/yandex/mobile/ads/impl/wm;-><init>(Lcom/yandex/mobile/ads/impl/sm;Lcom/yandex/mobile/ads/impl/tv;Lcom/yandex/mobile/ads/impl/hb0;Lcom/yandex/mobile/ads/impl/vm;Lcom/yandex/mobile/ads/impl/en;II)V

    return-void
.end method

.method private a(Lcom/yandex/mobile/ads/impl/xv;Z)V
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    .line 31
    iget-object v8, v0, Lcom/yandex/mobile/ads/impl/xv;->h:Ljava/lang/String;

    sget v2, Lcom/yandex/mobile/ads/impl/f92;->a:I

    .line 32
    iget-boolean v2, v1, Lcom/yandex/mobile/ads/impl/wm;->r:Z

    const/4 v9, 0x0

    if-eqz v2, :cond_0

    move-object v2, v9

    goto :goto_0

    .line 33
    :cond_0
    iget-boolean v2, v1, Lcom/yandex/mobile/ads/impl/wm;->f:Z

    if-eqz v2, :cond_1

    .line 34
    :try_start_0
    iget-object v2, v1, Lcom/yandex/mobile/ads/impl/wm;->a:Lcom/yandex/mobile/ads/impl/sm;

    iget-wide v4, v1, Lcom/yandex/mobile/ads/impl/wm;->n:J

    iget-wide v6, v1, Lcom/yandex/mobile/ads/impl/wm;->o:J

    move-object v3, v8

    invoke-interface/range {v2 .. v7}, Lcom/yandex/mobile/ads/impl/sm;->e(Ljava/lang/String;JJ)Lcom/yandex/mobile/ads/impl/fn;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 35
    :catch_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 36
    new-instance v0, Ljava/io/InterruptedIOException;

    invoke-direct {v0}, Ljava/io/InterruptedIOException;-><init>()V

    throw v0

    .line 37
    :cond_1
    iget-object v2, v1, Lcom/yandex/mobile/ads/impl/wm;->a:Lcom/yandex/mobile/ads/impl/sm;

    iget-wide v4, v1, Lcom/yandex/mobile/ads/impl/wm;->n:J

    iget-wide v6, v1, Lcom/yandex/mobile/ads/impl/wm;->o:J

    move-object v3, v8

    invoke-interface/range {v2 .. v7}, Lcom/yandex/mobile/ads/impl/sm;->c(Ljava/lang/String;JJ)Lcom/yandex/mobile/ads/impl/fn;

    move-result-object v2

    :goto_0
    const-wide/16 v3, -0x1

    if-nez v2, :cond_2

    .line 38
    iget-object v5, v1, Lcom/yandex/mobile/ads/impl/wm;->d:Lcom/yandex/mobile/ads/impl/tv;

    .line 39
    invoke-virtual/range {p1 .. p1}, Lcom/yandex/mobile/ads/impl/xv;->a()Lcom/yandex/mobile/ads/impl/xv$a;

    move-result-object v6

    iget-wide v10, v1, Lcom/yandex/mobile/ads/impl/wm;->n:J

    invoke-virtual {v6, v10, v11}, Lcom/yandex/mobile/ads/impl/xv$a;->b(J)Lcom/yandex/mobile/ads/impl/xv$a;

    move-result-object v6

    iget-wide v10, v1, Lcom/yandex/mobile/ads/impl/wm;->o:J

    invoke-virtual {v6, v10, v11}, Lcom/yandex/mobile/ads/impl/xv$a;->a(J)Lcom/yandex/mobile/ads/impl/xv$a;

    move-result-object v6

    invoke-virtual {v6}, Lcom/yandex/mobile/ads/impl/xv$a;->a()Lcom/yandex/mobile/ads/impl/xv;

    move-result-object v6

    goto :goto_2

    .line 40
    :cond_2
    iget-boolean v5, v2, Lcom/yandex/mobile/ads/impl/fn;->e:Z

    if-eqz v5, :cond_4

    .line 41
    iget-object v5, v2, Lcom/yandex/mobile/ads/impl/fn;->f:Ljava/io/File;

    invoke-static {v5}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v5

    .line 42
    iget-wide v6, v2, Lcom/yandex/mobile/ads/impl/fn;->c:J

    .line 43
    iget-wide v10, v1, Lcom/yandex/mobile/ads/impl/wm;->n:J

    sub-long/2addr v10, v6

    .line 44
    iget-wide v12, v2, Lcom/yandex/mobile/ads/impl/fn;->d:J

    sub-long/2addr v12, v10

    .line 45
    iget-wide v14, v1, Lcom/yandex/mobile/ads/impl/wm;->o:J

    cmp-long v16, v14, v3

    if-eqz v16, :cond_3

    .line 46
    invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v12

    .line 47
    :cond_3
    invoke-virtual/range {p1 .. p1}, Lcom/yandex/mobile/ads/impl/xv;->a()Lcom/yandex/mobile/ads/impl/xv$a;

    move-result-object v14

    .line 48
    invoke-virtual {v14, v5}, Lcom/yandex/mobile/ads/impl/xv$a;->a(Landroid/net/Uri;)Lcom/yandex/mobile/ads/impl/xv$a;

    move-result-object v5

    .line 49
    invoke-virtual {v5, v6, v7}, Lcom/yandex/mobile/ads/impl/xv$a;->c(J)Lcom/yandex/mobile/ads/impl/xv$a;

    move-result-object v5

    .line 50
    invoke-virtual {v5, v10, v11}, Lcom/yandex/mobile/ads/impl/xv$a;->b(J)Lcom/yandex/mobile/ads/impl/xv$a;

    move-result-object v5

    .line 51
    invoke-virtual {v5, v12, v13}, Lcom/yandex/mobile/ads/impl/xv$a;->a(J)Lcom/yandex/mobile/ads/impl/xv$a;

    move-result-object v5

    .line 52
    invoke-virtual {v5}, Lcom/yandex/mobile/ads/impl/xv$a;->a()Lcom/yandex/mobile/ads/impl/xv;

    move-result-object v6

    .line 53
    iget-object v5, v1, Lcom/yandex/mobile/ads/impl/wm;->b:Lcom/yandex/mobile/ads/impl/tv;

    goto :goto_2

    .line 54
    :cond_4
    iget-wide v5, v2, Lcom/yandex/mobile/ads/impl/fn;->d:J

    cmp-long v7, v5, v3

    if-nez v7, :cond_5

    .line 55
    iget-wide v5, v1, Lcom/yandex/mobile/ads/impl/wm;->o:J

    goto :goto_1

    .line 56
    :cond_5
    iget-wide v10, v1, Lcom/yandex/mobile/ads/impl/wm;->o:J

    cmp-long v7, v10, v3

    if-eqz v7, :cond_6

    .line 57
    invoke-static {v5, v6, v10, v11}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v5

    .line 58
    :cond_6
    :goto_1
    invoke-virtual/range {p1 .. p1}, Lcom/yandex/mobile/ads/impl/xv;->a()Lcom/yandex/mobile/ads/impl/xv$a;

    move-result-object v7

    iget-wide v10, v1, Lcom/yandex/mobile/ads/impl/wm;->n:J

    invoke-virtual {v7, v10, v11}, Lcom/yandex/mobile/ads/impl/xv$a;->b(J)Lcom/yandex/mobile/ads/impl/xv$a;

    move-result-object v7

    invoke-virtual {v7, v5, v6}, Lcom/yandex/mobile/ads/impl/xv$a;->a(J)Lcom/yandex/mobile/ads/impl/xv$a;

    move-result-object v5

    invoke-virtual {v5}, Lcom/yandex/mobile/ads/impl/xv$a;->a()Lcom/yandex/mobile/ads/impl/xv;

    move-result-object v6

    .line 59
    iget-object v5, v1, Lcom/yandex/mobile/ads/impl/wm;->c:Lcom/yandex/mobile/ads/impl/o42;

    if-eqz v5, :cond_7

    goto :goto_2

    .line 60
    :cond_7
    iget-object v5, v1, Lcom/yandex/mobile/ads/impl/wm;->d:Lcom/yandex/mobile/ads/impl/tv;

    .line 61
    iget-object v7, v1, Lcom/yandex/mobile/ads/impl/wm;->a:Lcom/yandex/mobile/ads/impl/sm;

    invoke-interface {v7, v2}, Lcom/yandex/mobile/ads/impl/sm;->b(Lcom/yandex/mobile/ads/impl/fn;)V

    move-object v2, v9

    .line 62
    :goto_2
    iget-boolean v7, v1, Lcom/yandex/mobile/ads/impl/wm;->r:Z

    if-nez v7, :cond_8

    iget-object v7, v1, Lcom/yandex/mobile/ads/impl/wm;->d:Lcom/yandex/mobile/ads/impl/tv;

    if-ne v5, v7, :cond_8

    .line 63
    iget-wide v10, v1, Lcom/yandex/mobile/ads/impl/wm;->n:J

    const-wide/32 v12, 0x19000

    add-long/2addr v10, v12

    goto :goto_3

    :cond_8
    const-wide v10, 0x7fffffffffffffffL

    .line 64
    :goto_3
    iput-wide v10, v1, Lcom/yandex/mobile/ads/impl/wm;->s:J

    if-eqz p2, :cond_c

    .line 65
    iget-object v7, v1, Lcom/yandex/mobile/ads/impl/wm;->l:Lcom/yandex/mobile/ads/impl/tv;

    iget-object v10, v1, Lcom/yandex/mobile/ads/impl/wm;->d:Lcom/yandex/mobile/ads/impl/tv;

    if-ne v7, v10, :cond_b

    if-ne v5, v10, :cond_9

    return-void

    .line 66
    :cond_9
    :try_start_1
    invoke-direct/range {p0 .. p0}, Lcom/yandex/mobile/ads/impl/wm;->e()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_4

    :catchall_0
    move-exception v0

    move-object v3, v0

    .line 67
    iget-boolean v0, v2, Lcom/yandex/mobile/ads/impl/fn;->e:Z

    if-nez v0, :cond_a

    .line 68
    iget-object v0, v1, Lcom/yandex/mobile/ads/impl/wm;->a:Lcom/yandex/mobile/ads/impl/sm;

    invoke-interface {v0, v2}, Lcom/yandex/mobile/ads/impl/sm;->b(Lcom/yandex/mobile/ads/impl/fn;)V

    .line 69
    :cond_a
    throw v3

    .line 70
    :cond_b
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_c
    :goto_4
    if-eqz v2, :cond_d

    .line 71
    iget-boolean v7, v2, Lcom/yandex/mobile/ads/impl/fn;->e:Z

    if-nez v7, :cond_d

    .line 72
    iput-object v2, v1, Lcom/yandex/mobile/ads/impl/wm;->p:Lcom/yandex/mobile/ads/impl/fn;

    .line 73
    :cond_d
    iput-object v5, v1, Lcom/yandex/mobile/ads/impl/wm;->l:Lcom/yandex/mobile/ads/impl/tv;

    .line 74
    iput-object v6, v1, Lcom/yandex/mobile/ads/impl/wm;->k:Lcom/yandex/mobile/ads/impl/xv;

    const-wide/16 v10, 0x0

    .line 75
    iput-wide v10, v1, Lcom/yandex/mobile/ads/impl/wm;->m:J

    .line 76
    invoke-interface {v5, v6}, Lcom/yandex/mobile/ads/impl/tv;->a(Lcom/yandex/mobile/ads/impl/xv;)J

    move-result-wide v10

    .line 77
    new-instance v2, Lcom/yandex/mobile/ads/impl/es;

    invoke-direct {v2}, Lcom/yandex/mobile/ads/impl/es;-><init>()V

    .line 78
    iget-wide v6, v6, Lcom/yandex/mobile/ads/impl/xv;->g:J

    cmp-long v6, v6, v3

    if-nez v6, :cond_e

    cmp-long v3, v10, v3

    if-eqz v3, :cond_e

    .line 79
    iput-wide v10, v1, Lcom/yandex/mobile/ads/impl/wm;->o:J

    .line 80
    iget-wide v3, v1, Lcom/yandex/mobile/ads/impl/wm;->n:J

    add-long/2addr v3, v10

    invoke-static {v2, v3, v4}, Lcom/yandex/mobile/ads/impl/es;->a(Lcom/yandex/mobile/ads/impl/es;J)V

    .line 81
    :cond_e
    invoke-direct/range {p0 .. p0}, Lcom/yandex/mobile/ads/impl/wm;->h()Z

    move-result v3

    if-nez v3, :cond_10

    .line 82
    invoke-interface {v5}, Lcom/yandex/mobile/ads/impl/tv;->getUri()Landroid/net/Uri;

    move-result-object v3

    iput-object v3, v1, Lcom/yandex/mobile/ads/impl/wm;->i:Landroid/net/Uri;

    .line 83
    iget-object v0, v0, Lcom/yandex/mobile/ads/impl/xv;->a:Landroid/net/Uri;

    invoke-virtual {v0, v3}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 84
    iget-object v9, v1, Lcom/yandex/mobile/ads/impl/wm;->i:Landroid/net/Uri;

    :cond_f
    invoke-static {v2, v9}, Lcom/yandex/mobile/ads/impl/es;->a(Lcom/yandex/mobile/ads/impl/es;Landroid/net/Uri;)V

    .line 85
    :cond_10
    iget-object v0, v1, Lcom/yandex/mobile/ads/impl/wm;->l:Lcom/yandex/mobile/ads/impl/tv;

    iget-object v3, v1, Lcom/yandex/mobile/ads/impl/wm;->c:Lcom/yandex/mobile/ads/impl/o42;

    if-ne v0, v3, :cond_11

    .line 86
    iget-object v0, v1, Lcom/yandex/mobile/ads/impl/wm;->a:Lcom/yandex/mobile/ads/impl/sm;

    invoke-interface {v0, v8, v2}, Lcom/yandex/mobile/ads/impl/sm;->a(Ljava/lang/String;Lcom/yandex/mobile/ads/impl/es;)V

    :cond_11
    return-void
.end method

.method private e()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/wm;->l:Lcom/yandex/mobile/ads/impl/tv;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    :try_start_0
    invoke-interface {v0}, Lcom/yandex/mobile/ads/impl/tv;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-object v1, p0, Lcom/yandex/mobile/ads/impl/wm;->k:Lcom/yandex/mobile/ads/impl/xv;

    iput-object v1, p0, Lcom/yandex/mobile/ads/impl/wm;->l:Lcom/yandex/mobile/ads/impl/tv;

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/wm;->p:Lcom/yandex/mobile/ads/impl/fn;

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/wm;->a:Lcom/yandex/mobile/ads/impl/sm;

    invoke-interface {v2, v0}, Lcom/yandex/mobile/ads/impl/sm;->b(Lcom/yandex/mobile/ads/impl/fn;)V

    iput-object v1, p0, Lcom/yandex/mobile/ads/impl/wm;->p:Lcom/yandex/mobile/ads/impl/fn;

    :cond_1
    return-void

    :catchall_0
    move-exception v0

    iput-object v1, p0, Lcom/yandex/mobile/ads/impl/wm;->k:Lcom/yandex/mobile/ads/impl/xv;

    iput-object v1, p0, Lcom/yandex/mobile/ads/impl/wm;->l:Lcom/yandex/mobile/ads/impl/tv;

    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/wm;->p:Lcom/yandex/mobile/ads/impl/fn;

    if-eqz v2, :cond_2

    iget-object v3, p0, Lcom/yandex/mobile/ads/impl/wm;->a:Lcom/yandex/mobile/ads/impl/sm;

    invoke-interface {v3, v2}, Lcom/yandex/mobile/ads/impl/sm;->b(Lcom/yandex/mobile/ads/impl/fn;)V

    iput-object v1, p0, Lcom/yandex/mobile/ads/impl/wm;->p:Lcom/yandex/mobile/ads/impl/fn;

    :cond_2
    throw v0
.end method

.method private h()Z
    .locals 1

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/wm;->l:Lcom/yandex/mobile/ads/impl/tv;

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/wm;->b:Lcom/yandex/mobile/ads/impl/tv;

    if-ne v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public final a(Lcom/yandex/mobile/ads/impl/xv;)J
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/wm;->e:Lcom/yandex/mobile/ads/impl/en;

    invoke-interface {v1, p1}, Lcom/yandex/mobile/ads/impl/en;->a(Lcom/yandex/mobile/ads/impl/xv;)Ljava/lang/String;

    move-result-object v1

    .line 5
    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/xv;->a()Lcom/yandex/mobile/ads/impl/xv$a;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/yandex/mobile/ads/impl/xv$a;->a(Ljava/lang/String;)Lcom/yandex/mobile/ads/impl/xv$a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yandex/mobile/ads/impl/xv$a;->a()Lcom/yandex/mobile/ads/impl/xv;

    move-result-object v2

    .line 6
    iput-object v2, p0, Lcom/yandex/mobile/ads/impl/wm;->j:Lcom/yandex/mobile/ads/impl/xv;

    .line 7
    iget-object v3, p0, Lcom/yandex/mobile/ads/impl/wm;->a:Lcom/yandex/mobile/ads/impl/sm;

    iget-object v4, v2, Lcom/yandex/mobile/ads/impl/xv;->a:Landroid/net/Uri;

    .line 8
    invoke-interface {v3, v1}, Lcom/yandex/mobile/ads/impl/sm;->b(Ljava/lang/String;)Lcom/yandex/mobile/ads/impl/nz;

    move-result-object v3

    .line 9
    invoke-virtual {v3}, Lcom/yandex/mobile/ads/impl/nz;->c()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_0

    const/4 v3, 0x0

    goto :goto_0

    .line 10
    :cond_0
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    :goto_0
    if-eqz v3, :cond_1

    move-object v4, v3

    .line 11
    :cond_1
    iput-object v4, p0, Lcom/yandex/mobile/ads/impl/wm;->i:Landroid/net/Uri;

    .line 12
    iget-wide v3, p1, Lcom/yandex/mobile/ads/impl/xv;->f:J

    iput-wide v3, p0, Lcom/yandex/mobile/ads/impl/wm;->n:J

    .line 13
    iget-boolean v3, p0, Lcom/yandex/mobile/ads/impl/wm;->g:Z

    const/4 v4, 0x0

    const-wide/16 v5, -0x1

    if-eqz v3, :cond_2

    iget-boolean v3, p0, Lcom/yandex/mobile/ads/impl/wm;->q:Z

    if-eqz v3, :cond_2

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_6

    .line 14
    :cond_2
    iget-boolean v3, p0, Lcom/yandex/mobile/ads/impl/wm;->h:Z

    if-eqz v3, :cond_3

    iget-wide v7, p1, Lcom/yandex/mobile/ads/impl/xv;->g:J

    cmp-long v3, v7, v5

    if-nez v3, :cond_3

    :goto_1
    move v3, v0

    goto :goto_2

    :cond_3
    move v3, v4

    .line 15
    :goto_2
    iput-boolean v3, p0, Lcom/yandex/mobile/ads/impl/wm;->r:Z

    const-wide/16 v7, 0x0

    if-eqz v3, :cond_4

    .line 16
    iput-wide v5, p0, Lcom/yandex/mobile/ads/impl/wm;->o:J

    goto :goto_3

    .line 17
    :cond_4
    iget-object v3, p0, Lcom/yandex/mobile/ads/impl/wm;->a:Lcom/yandex/mobile/ads/impl/sm;

    invoke-interface {v3, v1}, Lcom/yandex/mobile/ads/impl/sm;->b(Ljava/lang/String;)Lcom/yandex/mobile/ads/impl/nz;

    move-result-object v1

    .line 18
    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/nz;->b()J

    move-result-wide v9

    .line 19
    iput-wide v9, p0, Lcom/yandex/mobile/ads/impl/wm;->o:J

    cmp-long v1, v9, v5

    if-eqz v1, :cond_6

    .line 20
    iget-wide v11, p1, Lcom/yandex/mobile/ads/impl/xv;->f:J

    sub-long/2addr v9, v11

    iput-wide v9, p0, Lcom/yandex/mobile/ads/impl/wm;->o:J

    cmp-long v1, v9, v7

    if-ltz v1, :cond_5

    goto :goto_3

    .line 21
    :cond_5
    new-instance p1, Lcom/yandex/mobile/ads/impl/uv;

    const/16 v1, 0x7d8

    invoke-direct {p1, v1}, Lcom/yandex/mobile/ads/impl/uv;-><init>(I)V

    throw p1

    .line 22
    :cond_6
    :goto_3
    iget-wide v9, p1, Lcom/yandex/mobile/ads/impl/xv;->g:J

    cmp-long v1, v9, v5

    if-eqz v1, :cond_8

    .line 23
    iget-wide v11, p0, Lcom/yandex/mobile/ads/impl/wm;->o:J

    cmp-long v1, v11, v5

    if-nez v1, :cond_7

    goto :goto_4

    .line 24
    :cond_7
    invoke-static {v11, v12, v9, v10}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v9

    :goto_4
    iput-wide v9, p0, Lcom/yandex/mobile/ads/impl/wm;->o:J

    .line 25
    :cond_8
    iget-wide v9, p0, Lcom/yandex/mobile/ads/impl/wm;->o:J

    cmp-long v1, v9, v7

    if-gtz v1, :cond_9

    cmp-long v1, v9, v5

    if-nez v1, :cond_a

    .line 26
    :cond_9
    invoke-direct {p0, v2, v4}, Lcom/yandex/mobile/ads/impl/wm;->a(Lcom/yandex/mobile/ads/impl/xv;Z)V

    .line 27
    :cond_a
    iget-wide v1, p1, Lcom/yandex/mobile/ads/impl/xv;->g:J

    cmp-long p1, v1, v5

    if-eqz p1, :cond_b

    goto :goto_5

    :cond_b
    iget-wide v1, p0, Lcom/yandex/mobile/ads/impl/wm;->o:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_5
    return-wide v1

    .line 28
    :goto_6
    invoke-direct {p0}, Lcom/yandex/mobile/ads/impl/wm;->h()Z

    move-result v1

    if-nez v1, :cond_c

    instance-of v1, p1, Lcom/yandex/mobile/ads/impl/sm$a;

    if-eqz v1, :cond_d

    .line 29
    :cond_c
    iput-boolean v0, p0, Lcom/yandex/mobile/ads/impl/wm;->q:Z

    .line 30
    :cond_d
    throw p1
.end method

.method public final a(Lcom/yandex/mobile/ads/impl/d72;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/wm;->b:Lcom/yandex/mobile/ads/impl/tv;

    invoke-interface {v0, p1}, Lcom/yandex/mobile/ads/impl/tv;->a(Lcom/yandex/mobile/ads/impl/d72;)V

    .line 3
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/wm;->d:Lcom/yandex/mobile/ads/impl/tv;

    invoke-interface {p0, p1}, Lcom/yandex/mobile/ads/impl/tv;->a(Lcom/yandex/mobile/ads/impl/d72;)V

    return-void
.end method

.method public final close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/yandex/mobile/ads/impl/wm;->j:Lcom/yandex/mobile/ads/impl/xv;

    iput-object v0, p0, Lcom/yandex/mobile/ads/impl/wm;->i:Landroid/net/Uri;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/yandex/mobile/ads/impl/wm;->n:J

    :try_start_0
    invoke-direct {p0}, Lcom/yandex/mobile/ads/impl/wm;->e()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    invoke-direct {p0}, Lcom/yandex/mobile/ads/impl/wm;->h()Z

    move-result v1

    if-nez v1, :cond_0

    instance-of v1, v0, Lcom/yandex/mobile/ads/impl/sm$a;

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/yandex/mobile/ads/impl/wm;->q:Z

    :cond_1
    throw v0
.end method

.method public final f()Lcom/yandex/mobile/ads/impl/sm;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/wm;->a:Lcom/yandex/mobile/ads/impl/sm;

    return-object p0
.end method

.method public final g()Lcom/yandex/mobile/ads/impl/en;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/wm;->e:Lcom/yandex/mobile/ads/impl/en;

    return-object p0
.end method

.method public final getResponseHeaders()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/yandex/mobile/ads/impl/wm;->h()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/wm;->d:Lcom/yandex/mobile/ads/impl/tv;

    invoke-interface {p0}, Lcom/yandex/mobile/ads/impl/tv;->getResponseHeaders()Ljava/util/Map;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public final getUri()Landroid/net/Uri;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/wm;->i:Landroid/net/Uri;

    return-object p0
.end method

.method public final read([BII)I
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v1, p0

    move/from16 v0, p3

    const/4 v2, 0x0

    if-nez v0, :cond_0

    return v2

    :cond_0
    iget-wide v3, v1, Lcom/yandex/mobile/ads/impl/wm;->o:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    const/4 v4, -0x1

    if-nez v3, :cond_1

    return v4

    :cond_1
    iget-object v3, v1, Lcom/yandex/mobile/ads/impl/wm;->j:Lcom/yandex/mobile/ads/impl/xv;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v7, v1, Lcom/yandex/mobile/ads/impl/wm;->k:Lcom/yandex/mobile/ads/impl/xv;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v8, 0x1

    :try_start_0
    iget-wide v9, v1, Lcom/yandex/mobile/ads/impl/wm;->n:J

    iget-wide v11, v1, Lcom/yandex/mobile/ads/impl/wm;->s:J

    cmp-long v9, v9, v11

    if-ltz v9, :cond_2

    invoke-direct {v1, v3, v8}, Lcom/yandex/mobile/ads/impl/wm;->a(Lcom/yandex/mobile/ads/impl/xv;Z)V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_4

    :cond_2
    :goto_0
    iget-object v9, v1, Lcom/yandex/mobile/ads/impl/wm;->l:Lcom/yandex/mobile/ads/impl/tv;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 v10, p1

    move/from16 v11, p2

    invoke-interface {v9, v10, v11, v0}, Lcom/yandex/mobile/ads/impl/qv;->read([BII)I

    move-result v9

    const-wide/16 v12, -0x1

    if-eq v9, v4, :cond_4

    iget-wide v2, v1, Lcom/yandex/mobile/ads/impl/wm;->n:J

    int-to-long v4, v9

    add-long/2addr v2, v4

    iput-wide v2, v1, Lcom/yandex/mobile/ads/impl/wm;->n:J

    iget-wide v2, v1, Lcom/yandex/mobile/ads/impl/wm;->m:J

    add-long/2addr v2, v4

    iput-wide v2, v1, Lcom/yandex/mobile/ads/impl/wm;->m:J

    iget-wide v2, v1, Lcom/yandex/mobile/ads/impl/wm;->o:J

    cmp-long v0, v2, v12

    if-eqz v0, :cond_3

    sub-long/2addr v2, v4

    iput-wide v2, v1, Lcom/yandex/mobile/ads/impl/wm;->o:J

    :cond_3
    move v7, v9

    goto :goto_2

    :cond_4
    invoke-direct/range {p0 .. p0}, Lcom/yandex/mobile/ads/impl/wm;->h()Z

    move-result v4

    if-nez v4, :cond_6

    iget-wide v14, v7, Lcom/yandex/mobile/ads/impl/xv;->g:J

    cmp-long v4, v14, v12

    if-eqz v4, :cond_5

    move v7, v9

    iget-wide v8, v1, Lcom/yandex/mobile/ads/impl/wm;->m:J

    cmp-long v8, v8, v14

    if-gez v8, :cond_7

    goto :goto_1

    :cond_5
    move v7, v9

    :goto_1
    iget-object v0, v3, Lcom/yandex/mobile/ads/impl/xv;->h:Ljava/lang/String;

    sget v2, Lcom/yandex/mobile/ads/impl/f92;->a:I

    iput-wide v5, v1, Lcom/yandex/mobile/ads/impl/wm;->o:J

    iget-object v2, v1, Lcom/yandex/mobile/ads/impl/wm;->l:Lcom/yandex/mobile/ads/impl/tv;

    iget-object v3, v1, Lcom/yandex/mobile/ads/impl/wm;->c:Lcom/yandex/mobile/ads/impl/o42;

    if-ne v2, v3, :cond_8

    new-instance v2, Lcom/yandex/mobile/ads/impl/es;

    invoke-direct {v2}, Lcom/yandex/mobile/ads/impl/es;-><init>()V

    iget-wide v5, v1, Lcom/yandex/mobile/ads/impl/wm;->n:J

    invoke-static {v2, v5, v6}, Lcom/yandex/mobile/ads/impl/es;->a(Lcom/yandex/mobile/ads/impl/es;J)V

    iget-object v3, v1, Lcom/yandex/mobile/ads/impl/wm;->a:Lcom/yandex/mobile/ads/impl/sm;

    invoke-interface {v3, v0, v2}, Lcom/yandex/mobile/ads/impl/sm;->a(Ljava/lang/String;Lcom/yandex/mobile/ads/impl/es;)V

    goto :goto_2

    :cond_6
    move v7, v9

    :cond_7
    iget-wide v8, v1, Lcom/yandex/mobile/ads/impl/wm;->o:J

    cmp-long v5, v8, v5

    if-gtz v5, :cond_9

    cmp-long v5, v8, v12

    if-nez v5, :cond_8

    goto :goto_3

    :cond_8
    :goto_2
    return v7

    :cond_9
    :goto_3
    invoke-direct/range {p0 .. p0}, Lcom/yandex/mobile/ads/impl/wm;->e()V

    invoke-direct {v1, v3, v2}, Lcom/yandex/mobile/ads/impl/wm;->a(Lcom/yandex/mobile/ads/impl/xv;Z)V

    invoke-virtual/range {p0 .. p3}, Lcom/yandex/mobile/ads/impl/wm;->read([BII)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    :goto_4
    invoke-direct/range {p0 .. p0}, Lcom/yandex/mobile/ads/impl/wm;->h()Z

    move-result v2

    if-nez v2, :cond_a

    instance-of v2, v0, Lcom/yandex/mobile/ads/impl/sm$a;

    if-eqz v2, :cond_b

    :cond_a
    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/yandex/mobile/ads/impl/wm;->q:Z

    :cond_b
    throw v0
.end method
