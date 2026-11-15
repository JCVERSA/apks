.class final Lcom/yandex/mobile/ads/impl/em1$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/impl/hs0$d;
.implements Lcom/yandex/mobile/ads/impl/oi0$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/mobile/ads/impl/em1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation


# instance fields
.field private final a:Landroid/net/Uri;

.field private final b:Lcom/yandex/mobile/ads/impl/s22;

.field private final c:Lcom/yandex/mobile/ads/impl/dm1;

.field private final d:Lcom/yandex/mobile/ads/impl/b80;

.field private final e:Lcom/yandex/mobile/ads/impl/ir;

.field private final f:Lcom/yandex/mobile/ads/impl/pj1;

.field private volatile g:Z

.field private h:Z

.field private i:J

.field private j:Lcom/yandex/mobile/ads/impl/xv;

.field private k:Lcom/yandex/mobile/ads/impl/kt1;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private l:Z

.field final synthetic m:Lcom/yandex/mobile/ads/impl/em1;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/em1;Landroid/net/Uri;Lcom/yandex/mobile/ads/impl/tv;Lcom/yandex/mobile/ads/impl/dm1;Lcom/yandex/mobile/ads/impl/b80;Lcom/yandex/mobile/ads/impl/ir;)V
    .locals 0

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/em1$a;->m:Lcom/yandex/mobile/ads/impl/em1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/em1$a;->a:Landroid/net/Uri;

    new-instance p1, Lcom/yandex/mobile/ads/impl/s22;

    invoke-direct {p1, p3}, Lcom/yandex/mobile/ads/impl/s22;-><init>(Lcom/yandex/mobile/ads/impl/tv;)V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/em1$a;->b:Lcom/yandex/mobile/ads/impl/s22;

    iput-object p4, p0, Lcom/yandex/mobile/ads/impl/em1$a;->c:Lcom/yandex/mobile/ads/impl/dm1;

    iput-object p5, p0, Lcom/yandex/mobile/ads/impl/em1$a;->d:Lcom/yandex/mobile/ads/impl/b80;

    iput-object p6, p0, Lcom/yandex/mobile/ads/impl/em1$a;->e:Lcom/yandex/mobile/ads/impl/ir;

    new-instance p1, Lcom/yandex/mobile/ads/impl/pj1;

    invoke-direct {p1}, Lcom/yandex/mobile/ads/impl/pj1;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/em1$a;->f:Lcom/yandex/mobile/ads/impl/pj1;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/yandex/mobile/ads/impl/em1$a;->h:Z

    invoke-static {}, Lcom/yandex/mobile/ads/impl/es0;->a()J

    const-wide/16 p1, 0x0

    invoke-direct {p0, p1, p2}, Lcom/yandex/mobile/ads/impl/em1$a;->a(J)Lcom/yandex/mobile/ads/impl/xv;

    move-result-object p1

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/em1$a;->j:Lcom/yandex/mobile/ads/impl/xv;

    return-void
.end method

.method public static bridge synthetic a(Lcom/yandex/mobile/ads/impl/em1$a;)Lcom/yandex/mobile/ads/impl/s22;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/em1$a;->b:Lcom/yandex/mobile/ads/impl/s22;

    return-object p0
.end method

.method private a(J)Lcom/yandex/mobile/ads/impl/xv;
    .locals 2

    .line 47
    new-instance v0, Lcom/yandex/mobile/ads/impl/xv$a;

    invoke-direct {v0}, Lcom/yandex/mobile/ads/impl/xv$a;-><init>()V

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/em1$a;->a:Landroid/net/Uri;

    .line 48
    invoke-virtual {v0, v1}, Lcom/yandex/mobile/ads/impl/xv$a;->a(Landroid/net/Uri;)Lcom/yandex/mobile/ads/impl/xv$a;

    move-result-object v0

    .line 49
    invoke-virtual {v0, p1, p2}, Lcom/yandex/mobile/ads/impl/xv$a;->b(J)Lcom/yandex/mobile/ads/impl/xv$a;

    move-result-object p1

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/em1$a;->m:Lcom/yandex/mobile/ads/impl/em1;

    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/em1;->l(Lcom/yandex/mobile/ads/impl/em1;)Ljava/lang/String;

    move-result-object p0

    .line 50
    invoke-virtual {p1, p0}, Lcom/yandex/mobile/ads/impl/xv$a;->a(Ljava/lang/String;)Lcom/yandex/mobile/ads/impl/xv$a;

    move-result-object p0

    const/4 p1, 0x6

    .line 51
    invoke-virtual {p0, p1}, Lcom/yandex/mobile/ads/impl/xv$a;->a(I)Lcom/yandex/mobile/ads/impl/xv$a;

    move-result-object p0

    invoke-static {}, Lcom/yandex/mobile/ads/impl/em1;->z()Ljava/util/Map;

    move-result-object p1

    .line 52
    invoke-virtual {p0, p1}, Lcom/yandex/mobile/ads/impl/xv$a;->a(Ljava/util/Map;)Lcom/yandex/mobile/ads/impl/xv$a;

    move-result-object p0

    .line 53
    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/xv$a;->a()Lcom/yandex/mobile/ads/impl/xv;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/yandex/mobile/ads/impl/em1$a;)Lcom/yandex/mobile/ads/impl/pj1;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/em1$a;->f:Lcom/yandex/mobile/ads/impl/pj1;

    return-object p0
.end method

.method public static bridge synthetic c(Lcom/yandex/mobile/ads/impl/em1$a;)J
    .locals 2

    iget-wide v0, p0, Lcom/yandex/mobile/ads/impl/em1$a;->i:J

    return-wide v0
.end method

.method public static bridge synthetic d(Lcom/yandex/mobile/ads/impl/em1$a;)Lcom/yandex/mobile/ads/impl/xv;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/em1$a;->j:Lcom/yandex/mobile/ads/impl/xv;

    return-object p0
.end method

.method public static bridge synthetic e(Lcom/yandex/mobile/ads/impl/em1$a;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/yandex/mobile/ads/impl/em1$a;->h:Z

    return-void
.end method

.method public static bridge synthetic f(Lcom/yandex/mobile/ads/impl/em1$a;J)V
    .locals 0

    iput-wide p1, p0, Lcom/yandex/mobile/ads/impl/em1$a;->i:J

    return-void
.end method

.method public static bridge synthetic g(Lcom/yandex/mobile/ads/impl/em1$a;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/yandex/mobile/ads/impl/em1$a;->l:Z

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v1, p0

    const/4 v0, 0x0

    move v2, v0

    :goto_0
    if-nez v2, :cond_9

    .line 2
    iget-boolean v3, v1, Lcom/yandex/mobile/ads/impl/em1$a;->g:Z

    if-nez v3, :cond_9

    const/4 v3, 0x1

    const-wide/16 v4, -0x1

    .line 3
    :try_start_0
    iget-object v6, v1, Lcom/yandex/mobile/ads/impl/em1$a;->f:Lcom/yandex/mobile/ads/impl/pj1;

    iget-wide v13, v6, Lcom/yandex/mobile/ads/impl/pj1;->a:J

    .line 4
    invoke-direct {v1, v13, v14}, Lcom/yandex/mobile/ads/impl/em1$a;->a(J)Lcom/yandex/mobile/ads/impl/xv;

    move-result-object v6

    iput-object v6, v1, Lcom/yandex/mobile/ads/impl/em1$a;->j:Lcom/yandex/mobile/ads/impl/xv;

    .line 5
    iget-object v7, v1, Lcom/yandex/mobile/ads/impl/em1$a;->b:Lcom/yandex/mobile/ads/impl/s22;

    invoke-virtual {v7, v6}, Lcom/yandex/mobile/ads/impl/s22;->a(Lcom/yandex/mobile/ads/impl/xv;)J

    move-result-wide v6

    cmp-long v8, v6, v4

    if-eqz v8, :cond_0

    add-long/2addr v6, v13

    .line 6
    iget-object v8, v1, Lcom/yandex/mobile/ads/impl/em1$a;->m:Lcom/yandex/mobile/ads/impl/em1;

    invoke-static {v8}, Lcom/yandex/mobile/ads/impl/em1;->y(Lcom/yandex/mobile/ads/impl/em1;)V

    :cond_0
    move-wide v15, v6

    goto :goto_1

    :catchall_0
    move-exception v0

    goto/16 :goto_5

    .line 7
    :goto_1
    iget-object v6, v1, Lcom/yandex/mobile/ads/impl/em1$a;->m:Lcom/yandex/mobile/ads/impl/em1;

    iget-object v7, v1, Lcom/yandex/mobile/ads/impl/em1$a;->b:Lcom/yandex/mobile/ads/impl/s22;

    invoke-virtual {v7}, Lcom/yandex/mobile/ads/impl/s22;->getResponseHeaders()Ljava/util/Map;

    move-result-object v7

    invoke-static {v7}, Lcom/yandex/mobile/ads/impl/qi0;->a(Ljava/util/Map;)Lcom/yandex/mobile/ads/impl/qi0;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/yandex/mobile/ads/impl/em1;->t(Lcom/yandex/mobile/ads/impl/em1;Lcom/yandex/mobile/ads/impl/qi0;)V

    .line 8
    iget-object v6, v1, Lcom/yandex/mobile/ads/impl/em1$a;->b:Lcom/yandex/mobile/ads/impl/s22;

    .line 9
    iget-object v7, v1, Lcom/yandex/mobile/ads/impl/em1$a;->m:Lcom/yandex/mobile/ads/impl/em1;

    invoke-static {v7}, Lcom/yandex/mobile/ads/impl/em1;->q(Lcom/yandex/mobile/ads/impl/em1;)Lcom/yandex/mobile/ads/impl/qi0;

    move-result-object v7

    if-eqz v7, :cond_1

    iget v7, v7, Lcom/yandex/mobile/ads/impl/qi0;->g:I

    const/4 v8, -0x1

    if-eq v7, v8, :cond_1

    .line 10
    new-instance v8, Lcom/yandex/mobile/ads/impl/oi0;

    invoke-direct {v8, v6, v7, v1}, Lcom/yandex/mobile/ads/impl/oi0;-><init>(Lcom/yandex/mobile/ads/impl/s22;ILcom/yandex/mobile/ads/impl/oi0$a;)V

    .line 11
    iget-object v6, v1, Lcom/yandex/mobile/ads/impl/em1$a;->m:Lcom/yandex/mobile/ads/impl/em1;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    new-instance v7, Lcom/yandex/mobile/ads/impl/em1$d;

    invoke-direct {v7, v3, v0}, Lcom/yandex/mobile/ads/impl/em1$d;-><init>(ZI)V

    invoke-static {v6, v7}, Lcom/yandex/mobile/ads/impl/em1;->v(Lcom/yandex/mobile/ads/impl/em1;Lcom/yandex/mobile/ads/impl/em1$d;)Lcom/yandex/mobile/ads/impl/kt1;

    move-result-object v6

    .line 13
    iput-object v6, v1, Lcom/yandex/mobile/ads/impl/em1$a;->k:Lcom/yandex/mobile/ads/impl/kt1;

    .line 14
    invoke-static {}, Lcom/yandex/mobile/ads/impl/em1;->A()Lcom/yandex/mobile/ads/impl/jc0;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/yandex/mobile/ads/impl/kt1;->a(Lcom/yandex/mobile/ads/impl/jc0;)V

    goto :goto_2

    :cond_1
    move-object v8, v6

    .line 15
    :goto_2
    iget-object v6, v1, Lcom/yandex/mobile/ads/impl/em1$a;->c:Lcom/yandex/mobile/ads/impl/dm1;

    iget-object v9, v1, Lcom/yandex/mobile/ads/impl/em1$a;->a:Landroid/net/Uri;

    iget-object v7, v1, Lcom/yandex/mobile/ads/impl/em1$a;->b:Lcom/yandex/mobile/ads/impl/s22;

    .line 16
    invoke-virtual {v7}, Lcom/yandex/mobile/ads/impl/s22;->getResponseHeaders()Ljava/util/Map;

    move-result-object v10

    iget-object v11, v1, Lcom/yandex/mobile/ads/impl/em1$a;->d:Lcom/yandex/mobile/ads/impl/b80;

    .line 17
    move-object v7, v6

    check-cast v7, Lcom/yandex/mobile/ads/impl/nm;

    move-object v6, v11

    move-wide v11, v13

    move-wide v4, v13

    move-wide v13, v15

    move-object v15, v6

    invoke-virtual/range {v7 .. v15}, Lcom/yandex/mobile/ads/impl/nm;->a(Lcom/yandex/mobile/ads/impl/tv;Landroid/net/Uri;Ljava/util/Map;JJLcom/yandex/mobile/ads/impl/b80;)V

    .line 18
    iget-object v6, v1, Lcom/yandex/mobile/ads/impl/em1$a;->m:Lcom/yandex/mobile/ads/impl/em1;

    invoke-static {v6}, Lcom/yandex/mobile/ads/impl/em1;->q(Lcom/yandex/mobile/ads/impl/em1;)Lcom/yandex/mobile/ads/impl/qi0;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 19
    iget-object v6, v1, Lcom/yandex/mobile/ads/impl/em1$a;->c:Lcom/yandex/mobile/ads/impl/dm1;

    check-cast v6, Lcom/yandex/mobile/ads/impl/nm;

    invoke-virtual {v6}, Lcom/yandex/mobile/ads/impl/nm;->a()V

    .line 20
    :cond_2
    iget-boolean v6, v1, Lcom/yandex/mobile/ads/impl/em1$a;->h:Z

    if-eqz v6, :cond_3

    .line 21
    iget-object v6, v1, Lcom/yandex/mobile/ads/impl/em1$a;->c:Lcom/yandex/mobile/ads/impl/dm1;

    iget-wide v7, v1, Lcom/yandex/mobile/ads/impl/em1$a;->i:J

    check-cast v6, Lcom/yandex/mobile/ads/impl/nm;

    invoke-virtual {v6, v4, v5, v7, v8}, Lcom/yandex/mobile/ads/impl/nm;->a(JJ)V

    .line 22
    iput-boolean v0, v1, Lcom/yandex/mobile/ads/impl/em1$a;->h:Z

    :cond_3
    :goto_3
    move-wide v13, v4

    :cond_4
    if-nez v2, :cond_5

    .line 23
    iget-boolean v4, v1, Lcom/yandex/mobile/ads/impl/em1$a;->g:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v4, :cond_5

    .line 24
    :try_start_1
    iget-object v4, v1, Lcom/yandex/mobile/ads/impl/em1$a;->e:Lcom/yandex/mobile/ads/impl/ir;

    invoke-virtual {v4}, Lcom/yandex/mobile/ads/impl/ir;->a()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 25
    :try_start_2
    iget-object v4, v1, Lcom/yandex/mobile/ads/impl/em1$a;->c:Lcom/yandex/mobile/ads/impl/dm1;

    iget-object v5, v1, Lcom/yandex/mobile/ads/impl/em1$a;->f:Lcom/yandex/mobile/ads/impl/pj1;

    check-cast v4, Lcom/yandex/mobile/ads/impl/nm;

    invoke-virtual {v4, v5}, Lcom/yandex/mobile/ads/impl/nm;->a(Lcom/yandex/mobile/ads/impl/pj1;)I

    move-result v2

    .line 26
    iget-object v4, v1, Lcom/yandex/mobile/ads/impl/em1$a;->c:Lcom/yandex/mobile/ads/impl/dm1;

    check-cast v4, Lcom/yandex/mobile/ads/impl/nm;

    invoke-virtual {v4}, Lcom/yandex/mobile/ads/impl/nm;->b()J

    move-result-wide v4

    .line 27
    iget-object v6, v1, Lcom/yandex/mobile/ads/impl/em1$a;->m:Lcom/yandex/mobile/ads/impl/em1;

    invoke-static {v6}, Lcom/yandex/mobile/ads/impl/em1;->m(Lcom/yandex/mobile/ads/impl/em1;)J

    move-result-wide v6

    add-long/2addr v6, v13

    cmp-long v6, v4, v6

    if-lez v6, :cond_4

    .line 28
    iget-object v6, v1, Lcom/yandex/mobile/ads/impl/em1$a;->e:Lcom/yandex/mobile/ads/impl/ir;

    invoke-virtual {v6}, Lcom/yandex/mobile/ads/impl/ir;->c()V

    .line 29
    iget-object v6, v1, Lcom/yandex/mobile/ads/impl/em1$a;->m:Lcom/yandex/mobile/ads/impl/em1;

    invoke-static {v6}, Lcom/yandex/mobile/ads/impl/em1;->p(Lcom/yandex/mobile/ads/impl/em1;)Landroid/os/Handler;

    move-result-object v7

    invoke-static {v6}, Lcom/yandex/mobile/ads/impl/em1;->o(Lcom/yandex/mobile/ads/impl/em1;)Ljava/lang/Runnable;

    move-result-object v6

    invoke-virtual {v7, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_3

    .line 30
    :catch_0
    new-instance v0, Ljava/io/InterruptedIOException;

    invoke-direct {v0}, Ljava/io/InterruptedIOException;-><init>()V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_5
    if-ne v2, v3, :cond_6

    move v2, v0

    goto :goto_4

    .line 31
    :cond_6
    iget-object v3, v1, Lcom/yandex/mobile/ads/impl/em1$a;->c:Lcom/yandex/mobile/ads/impl/dm1;

    check-cast v3, Lcom/yandex/mobile/ads/impl/nm;

    invoke-virtual {v3}, Lcom/yandex/mobile/ads/impl/nm;->b()J

    move-result-wide v3

    const-wide/16 v5, -0x1

    cmp-long v3, v3, v5

    if-eqz v3, :cond_7

    .line 32
    iget-object v3, v1, Lcom/yandex/mobile/ads/impl/em1$a;->f:Lcom/yandex/mobile/ads/impl/pj1;

    iget-object v4, v1, Lcom/yandex/mobile/ads/impl/em1$a;->c:Lcom/yandex/mobile/ads/impl/dm1;

    check-cast v4, Lcom/yandex/mobile/ads/impl/nm;

    invoke-virtual {v4}, Lcom/yandex/mobile/ads/impl/nm;->b()J

    move-result-wide v4

    iput-wide v4, v3, Lcom/yandex/mobile/ads/impl/pj1;->a:J

    .line 33
    :cond_7
    :goto_4
    iget-object v3, v1, Lcom/yandex/mobile/ads/impl/em1$a;->b:Lcom/yandex/mobile/ads/impl/s22;

    invoke-static {v3}, Lcom/yandex/mobile/ads/impl/wv;->a(Lcom/yandex/mobile/ads/impl/tv;)V

    goto/16 :goto_0

    :goto_5
    if-eq v2, v3, :cond_8

    .line 34
    iget-object v2, v1, Lcom/yandex/mobile/ads/impl/em1$a;->c:Lcom/yandex/mobile/ads/impl/dm1;

    check-cast v2, Lcom/yandex/mobile/ads/impl/nm;

    invoke-virtual {v2}, Lcom/yandex/mobile/ads/impl/nm;->b()J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-eqz v2, :cond_8

    .line 35
    iget-object v2, v1, Lcom/yandex/mobile/ads/impl/em1$a;->f:Lcom/yandex/mobile/ads/impl/pj1;

    iget-object v3, v1, Lcom/yandex/mobile/ads/impl/em1$a;->c:Lcom/yandex/mobile/ads/impl/dm1;

    check-cast v3, Lcom/yandex/mobile/ads/impl/nm;

    invoke-virtual {v3}, Lcom/yandex/mobile/ads/impl/nm;->b()J

    move-result-wide v3

    iput-wide v3, v2, Lcom/yandex/mobile/ads/impl/pj1;->a:J

    .line 36
    :cond_8
    iget-object v1, v1, Lcom/yandex/mobile/ads/impl/em1$a;->b:Lcom/yandex/mobile/ads/impl/s22;

    invoke-static {v1}, Lcom/yandex/mobile/ads/impl/wv;->a(Lcom/yandex/mobile/ads/impl/tv;)V

    .line 37
    throw v0

    :cond_9
    return-void
.end method

.method public final a(Lcom/yandex/mobile/ads/impl/ag1;)V
    .locals 11

    .line 38
    iget-boolean v0, p0, Lcom/yandex/mobile/ads/impl/em1$a;->l:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 39
    iget-wide v2, p0, Lcom/yandex/mobile/ads/impl/em1$a;->i:J

    :goto_0
    move-wide v5, v2

    goto :goto_1

    .line 40
    :cond_0
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/em1$a;->m:Lcom/yandex/mobile/ads/impl/em1;

    invoke-static {v0, v1}, Lcom/yandex/mobile/ads/impl/em1;->u(Lcom/yandex/mobile/ads/impl/em1;Z)J

    move-result-wide v2

    iget-wide v4, p0, Lcom/yandex/mobile/ads/impl/em1$a;->i:J

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    goto :goto_0

    .line 41
    :goto_1
    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/ag1;->a()I

    move-result v8

    .line 42
    iget-object v4, p0, Lcom/yandex/mobile/ads/impl/em1$a;->k:Lcom/yandex/mobile/ads/impl/kt1;

    .line 43
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 44
    invoke-virtual {v4, v8, p1}, Lcom/yandex/mobile/ads/impl/kt1;->b(ILcom/yandex/mobile/ads/impl/ag1;)V

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v7, 0x1

    .line 45
    invoke-virtual/range {v4 .. v10}, Lcom/yandex/mobile/ads/impl/kt1;->a(JIIILcom/yandex/mobile/ads/impl/a62$a;)V

    .line 46
    iput-boolean v1, p0, Lcom/yandex/mobile/ads/impl/em1$a;->l:Z

    return-void
.end method

.method public final b()V
    .locals 1

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/yandex/mobile/ads/impl/em1$a;->g:Z

    return-void
.end method
