.class public final Lf32;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ld88;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lf32$a;
    }
.end annotation


# static fields
.field public static final h:Lw6a;

.field public static final i:Ljava/util/Random;


# instance fields
.field public final a:Lcom/google/android/exoplayer2/a0$d;

.field public final b:Lcom/google/android/exoplayer2/a0$b;

.field public final c:Ljava/util/HashMap;

.field public final d:Lw6a;

.field public e:Ld88$a;

.field public f:Lcom/google/android/exoplayer2/a0;

.field public g:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ld32;

    invoke-direct {v0}, Ld32;-><init>()V

    sput-object v0, Lf32;->h:Lw6a;

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lf32;->i:Ljava/util/Random;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    sget-object v0, Lf32;->h:Lw6a;

    invoke-direct {p0, v0}, Lf32;-><init>(Lw6a;)V

    return-void
.end method

.method public constructor <init>(Lw6a;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lf32;->d:Lw6a;

    .line 4
    new-instance p1, Lcom/google/android/exoplayer2/a0$d;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/a0$d;-><init>()V

    iput-object p1, p0, Lf32;->a:Lcom/google/android/exoplayer2/a0$d;

    .line 5
    new-instance p1, Lcom/google/android/exoplayer2/a0$b;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/a0$b;-><init>()V

    iput-object p1, p0, Lf32;->b:Lcom/google/android/exoplayer2/a0$b;

    .line 6
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lf32;->c:Ljava/util/HashMap;

    .line 7
    sget-object p1, Lcom/google/android/exoplayer2/a0;->b:Lcom/google/android/exoplayer2/a0;

    iput-object p1, p0, Lf32;->f:Lcom/google/android/exoplayer2/a0;

    return-void
.end method

.method public static synthetic g()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lf32;->j()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic h(Lf32;)Lcom/google/android/exoplayer2/a0$d;
    .locals 0

    iget-object p0, p0, Lf32;->a:Lcom/google/android/exoplayer2/a0$d;

    return-object p0
.end method

.method public static synthetic i(Lf32;)Lcom/google/android/exoplayer2/a0$b;
    .locals 0

    iget-object p0, p0, Lf32;->b:Lcom/google/android/exoplayer2/a0$b;

    return-object p0
.end method

.method public static j()Ljava/lang/String;
    .locals 2

    const/16 v0, 0xc

    new-array v0, v0, [B

    sget-object v1, Lf32;->i:Ljava/util/Random;

    invoke-virtual {v1, v0}, Ljava/util/Random;->nextBytes([B)V

    const/16 v1, 0xa

    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public declared-synchronized a(Lnb$a;)V
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lf32;->e:Ld88$a;

    invoke-static {v0}, Lzi;->e(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lf32;->f:Lcom/google/android/exoplayer2/a0;

    iget-object v1, p1, Lnb$a;->b:Lcom/google/android/exoplayer2/a0;

    iput-object v1, p0, Lf32;->f:Lcom/google/android/exoplayer2/a0;

    iget-object v1, p0, Lf32;->c:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lf32$a;

    iget-object v3, p0, Lf32;->f:Lcom/google/android/exoplayer2/a0;

    invoke-virtual {v2, v0, v3}, Lf32$a;->m(Lcom/google/android/exoplayer2/a0;Lcom/google/android/exoplayer2/a0;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2, p1}, Lf32$a;->j(Lnb$a;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    invoke-static {v2}, Lf32$a;->d(Lf32$a;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {v2}, Lf32$a;->a(Lf32$a;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lf32;->g:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x0

    iput-object v3, p0, Lf32;->g:Ljava/lang/String;

    :cond_2
    iget-object v3, p0, Lf32;->e:Ld88$a;

    invoke-static {v2}, Lf32$a;->a(Lf32$a;)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    invoke-interface {v3, p1, v2, v4}, Ld88$a;->d0(Lnb$a;Ljava/lang/String;Z)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0, p1}, Lf32;->l(Lnb$a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :goto_2
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized b(Lnb$a;I)V
    .locals 6

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lf32;->e:Ld88$a;

    invoke-static {v0}, Lzi;->e(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p2, :cond_0

    move p2, v1

    goto :goto_0

    :cond_0
    move p2, v0

    :goto_0
    iget-object v2, p0, Lf32;->c:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lf32$a;

    invoke-virtual {v3, p1}, Lf32$a;->j(Lnb$a;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    invoke-static {v3}, Lf32$a;->d(Lf32$a;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-static {v3}, Lf32$a;->a(Lf32$a;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lf32;->g:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz p2, :cond_2

    if-eqz v4, :cond_2

    invoke-static {v3}, Lf32$a;->f(Lf32$a;)Z

    move-result v5

    if-eqz v5, :cond_2

    move v5, v1

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_3

    :cond_2
    move v5, v0

    :goto_2
    if-eqz v4, :cond_3

    const/4 v4, 0x0

    iput-object v4, p0, Lf32;->g:Ljava/lang/String;

    :cond_3
    iget-object v4, p0, Lf32;->e:Ld88$a;

    invoke-static {v3}, Lf32$a;->a(Lf32$a;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v4, p1, v3, v5}, Ld88$a;->d0(Lnb$a;Ljava/lang/String;Z)V

    goto :goto_1

    :cond_4
    invoke-virtual {p0, p1}, Lf32;->l(Lnb$a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :goto_3
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized c(Lnb$a;)V
    .locals 4

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lf32;->g:Ljava/lang/String;

    iget-object v0, p0, Lf32;->c:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lf32$a;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    invoke-static {v1}, Lf32$a;->d(Lf32$a;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lf32;->e:Ld88$a;

    if-eqz v2, :cond_0

    invoke-static {v1}, Lf32$a;->a(Lf32$a;)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    invoke-interface {v2, p1, v1, v3}, Ld88$a;->d0(Lnb$a;Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_1
    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized d(Lnb$a;)V
    .locals 24

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    monitor-enter p0

    :try_start_0
    iget-object v2, v1, Lf32;->e:Ld88$a;

    invoke-static {v2}, Lzi;->e(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v0, Lnb$a;->b:Lcom/google/android/exoplayer2/a0;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/a0;->u()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v2, v1, Lf32;->c:Ljava/util/HashMap;

    iget-object v3, v1, Lf32;->g:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lf32$a;

    iget-object v3, v0, Lnb$a;->d:Lcom/google/android/exoplayer2/source/i$b;

    if-eqz v3, :cond_2

    if-eqz v2, :cond_2

    invoke-static {v2}, Lf32$a;->b(Lf32$a;)J

    move-result-wide v3

    const-wide/16 v5, -0x1

    cmp-long v3, v3, v5

    if-nez v3, :cond_1

    invoke-static {v2}, Lf32$a;->c(Lf32$a;)I

    move-result v2

    iget v3, v0, Lnb$a;->c:I

    if-eq v2, v3, :cond_2

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_3

    :cond_1
    iget-object v3, v0, Lnb$a;->d:Lcom/google/android/exoplayer2/source/i$b;

    iget-wide v3, v3, Lxk6;->d:J

    invoke-static {v2}, Lf32$a;->b(Lf32$a;)J

    move-result-wide v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    cmp-long v2, v3, v5

    if-gez v2, :cond_2

    :goto_0
    monitor-exit p0

    return-void

    :cond_2
    :try_start_2
    iget v2, v0, Lnb$a;->c:I

    iget-object v3, v0, Lnb$a;->d:Lcom/google/android/exoplayer2/source/i$b;

    invoke-virtual {v1, v2, v3}, Lf32;->k(ILcom/google/android/exoplayer2/source/i$b;)Lf32$a;

    move-result-object v2

    iget-object v3, v1, Lf32;->g:Ljava/lang/String;

    if-nez v3, :cond_3

    invoke-static {v2}, Lf32$a;->a(Lf32$a;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lf32;->g:Ljava/lang/String;

    :cond_3
    iget-object v3, v0, Lnb$a;->d:Lcom/google/android/exoplayer2/source/i$b;

    const/4 v4, 0x1

    if-eqz v3, :cond_4

    invoke-virtual {v3}, Lxk6;->b()Z

    move-result v3

    if-eqz v3, :cond_4

    new-instance v10, Lcom/google/android/exoplayer2/source/i$b;

    iget-object v3, v0, Lnb$a;->d:Lcom/google/android/exoplayer2/source/i$b;

    iget-object v5, v3, Lxk6;->a:Ljava/lang/Object;

    iget-wide v6, v3, Lxk6;->d:J

    iget v3, v3, Lxk6;->b:I

    invoke-direct {v10, v5, v6, v7, v3}, Lcom/google/android/exoplayer2/source/i$b;-><init>(Ljava/lang/Object;JI)V

    iget v3, v0, Lnb$a;->c:I

    invoke-virtual {v1, v3, v10}, Lf32;->k(ILcom/google/android/exoplayer2/source/i$b;)Lf32$a;

    move-result-object v3

    invoke-static {v3}, Lf32$a;->d(Lf32$a;)Z

    move-result v5

    if-nez v5, :cond_4

    invoke-static {v3, v4}, Lf32$a;->e(Lf32$a;Z)Z

    iget-object v5, v0, Lnb$a;->b:Lcom/google/android/exoplayer2/a0;

    iget-object v6, v0, Lnb$a;->d:Lcom/google/android/exoplayer2/source/i$b;

    iget-object v6, v6, Lxk6;->a:Ljava/lang/Object;

    iget-object v7, v1, Lf32;->b:Lcom/google/android/exoplayer2/a0$b;

    invoke-virtual {v5, v6, v7}, Lcom/google/android/exoplayer2/a0;->l(Ljava/lang/Object;Lcom/google/android/exoplayer2/a0$b;)Lcom/google/android/exoplayer2/a0$b;

    iget-object v5, v1, Lf32;->b:Lcom/google/android/exoplayer2/a0$b;

    iget-object v6, v0, Lnb$a;->d:Lcom/google/android/exoplayer2/source/i$b;

    iget v6, v6, Lxk6;->b:I

    invoke-virtual {v5, v6}, Lcom/google/android/exoplayer2/a0$b;->i(I)J

    move-result-wide v5

    invoke-static {v5, v6}, Lblb;->P0(J)J

    move-result-wide v5

    iget-object v7, v1, Lf32;->b:Lcom/google/android/exoplayer2/a0$b;

    invoke-virtual {v7}, Lcom/google/android/exoplayer2/a0$b;->p()J

    move-result-wide v7

    add-long/2addr v5, v7

    const-wide/16 v7, 0x0

    invoke-static {v7, v8, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v11

    new-instance v15, Lnb$a;

    iget-wide v6, v0, Lnb$a;->a:J

    iget-object v8, v0, Lnb$a;->b:Lcom/google/android/exoplayer2/a0;

    iget v9, v0, Lnb$a;->c:I

    iget-object v13, v0, Lnb$a;->f:Lcom/google/android/exoplayer2/a0;

    iget v14, v0, Lnb$a;->g:I

    iget-object v5, v0, Lnb$a;->h:Lcom/google/android/exoplayer2/source/i$b;

    move-object/from16 v16, v5

    iget-wide v4, v0, Lnb$a;->i:J

    move-object/from16 v20, v2

    move-object/from16 v21, v3

    iget-wide v2, v0, Lnb$a;->j:J

    move-wide/from16 v22, v4

    move-object/from16 v4, v16

    move-wide/from16 v16, v22

    move-object v5, v15

    move-object v0, v15

    move-object v15, v4

    move-wide/from16 v18, v2

    invoke-direct/range {v5 .. v19}, Lnb$a;-><init>(JLcom/google/android/exoplayer2/a0;ILcom/google/android/exoplayer2/source/i$b;JLcom/google/android/exoplayer2/a0;ILcom/google/android/exoplayer2/source/i$b;JJ)V

    iget-object v2, v1, Lf32;->e:Ld88$a;

    invoke-static/range {v21 .. v21}, Lf32$a;->a(Lf32$a;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Ld88$a;->b0(Lnb$a;Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    move-object/from16 v20, v2

    :goto_1
    invoke-static/range {v20 .. v20}, Lf32$a;->d(Lf32$a;)Z

    move-result v0

    if-nez v0, :cond_5

    move-object/from16 v0, v20

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lf32$a;->e(Lf32$a;Z)Z

    iget-object v2, v1, Lf32;->e:Ld88$a;

    invoke-static {v0}, Lf32$a;->a(Lf32$a;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v4, p1

    invoke-interface {v2, v4, v3}, Ld88$a;->b0(Lnb$a;Ljava/lang/String;)V

    goto :goto_2

    :cond_5
    move-object/from16 v4, p1

    move-object/from16 v0, v20

    :goto_2
    invoke-static {v0}, Lf32$a;->a(Lf32$a;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, v1, Lf32;->g:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-static {v0}, Lf32$a;->f(Lf32$a;)Z

    move-result v2

    if-nez v2, :cond_6

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lf32$a;->g(Lf32$a;Z)Z

    iget-object v2, v1, Lf32;->e:Ld88$a;

    invoke-static {v0}, Lf32$a;->a(Lf32$a;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v4, v0}, Ld88$a;->f(Lnb$a;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_6
    monitor-exit p0

    return-void

    :goto_3
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method

.method public declared-synchronized e(Lcom/google/android/exoplayer2/a0;Lcom/google/android/exoplayer2/source/i$b;)Ljava/lang/String;
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p2, Lxk6;->a:Ljava/lang/Object;

    iget-object v1, p0, Lf32;->b:Lcom/google/android/exoplayer2/a0$b;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/exoplayer2/a0;->l(Ljava/lang/Object;Lcom/google/android/exoplayer2/a0$b;)Lcom/google/android/exoplayer2/a0$b;

    move-result-object p1

    iget p1, p1, Lcom/google/android/exoplayer2/a0$b;->d:I

    invoke-virtual {p0, p1, p2}, Lf32;->k(ILcom/google/android/exoplayer2/source/i$b;)Lf32$a;

    move-result-object p1

    invoke-static {p1}, Lf32$a;->a(Lf32$a;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public f(Ld88$a;)V
    .locals 0

    iput-object p1, p0, Lf32;->e:Ld88$a;

    return-void
.end method

.method public declared-synchronized getActiveSessionId()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lf32;->g:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final k(ILcom/google/android/exoplayer2/source/i$b;)Lf32$a;
    .locals 9

    iget-object v0, p0, Lf32;->c:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    const-wide v2, 0x7fffffffffffffffL

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lf32$a;

    invoke-virtual {v4, p1, p2}, Lf32$a;->k(ILcom/google/android/exoplayer2/source/i$b;)V

    invoke-virtual {v4, p1, p2}, Lf32$a;->i(ILcom/google/android/exoplayer2/source/i$b;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-static {v4}, Lf32$a;->b(Lf32$a;)J

    move-result-wide v5

    const-wide/16 v7, -0x1

    cmp-long v7, v5, v7

    if-eqz v7, :cond_2

    cmp-long v7, v5, v2

    if-gez v7, :cond_1

    goto :goto_1

    :cond_1
    if-nez v7, :cond_0

    invoke-static {v1}, Lblb;->j(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lf32$a;

    invoke-static {v5}, Lf32$a;->h(Lf32$a;)Lcom/google/android/exoplayer2/source/i$b;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-static {v4}, Lf32$a;->h(Lf32$a;)Lcom/google/android/exoplayer2/source/i$b;

    move-result-object v5

    if-eqz v5, :cond_0

    move-object v1, v4

    goto :goto_0

    :cond_2
    :goto_1
    move-object v1, v4

    move-wide v2, v5

    goto :goto_0

    :cond_3
    if-nez v1, :cond_4

    iget-object v0, p0, Lf32;->d:Lw6a;

    invoke-interface {v0}, Lw6a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v1, Lf32$a;

    invoke-direct {v1, p0, v0, p1, p2}, Lf32$a;-><init>(Lf32;Ljava/lang/String;ILcom/google/android/exoplayer2/source/i$b;)V

    iget-object p0, p0, Lf32;->c:Ljava/util/HashMap;

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    return-object v1
.end method

.method public final l(Lnb$a;)V
    .locals 6

    iget-object v0, p1, Lnb$a;->b:Lcom/google/android/exoplayer2/a0;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/a0;->u()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lf32;->g:Ljava/lang/String;

    return-void

    :cond_0
    iget-object v0, p0, Lf32;->c:Ljava/util/HashMap;

    iget-object v1, p0, Lf32;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lf32$a;

    iget v1, p1, Lnb$a;->c:I

    iget-object v2, p1, Lnb$a;->d:Lcom/google/android/exoplayer2/source/i$b;

    invoke-virtual {p0, v1, v2}, Lf32;->k(ILcom/google/android/exoplayer2/source/i$b;)Lf32$a;

    move-result-object v1

    invoke-static {v1}, Lf32$a;->a(Lf32$a;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lf32;->g:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lf32;->d(Lnb$a;)V

    iget-object v2, p1, Lnb$a;->d:Lcom/google/android/exoplayer2/source/i$b;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lxk6;->b()Z

    move-result v2

    if-eqz v2, :cond_2

    if-eqz v0, :cond_1

    invoke-static {v0}, Lf32$a;->b(Lf32$a;)J

    move-result-wide v2

    iget-object v4, p1, Lnb$a;->d:Lcom/google/android/exoplayer2/source/i$b;

    iget-wide v4, v4, Lxk6;->d:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    invoke-static {v0}, Lf32$a;->h(Lf32$a;)Lcom/google/android/exoplayer2/source/i$b;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-static {v0}, Lf32$a;->h(Lf32$a;)Lcom/google/android/exoplayer2/source/i$b;

    move-result-object v2

    iget v2, v2, Lxk6;->b:I

    iget-object v3, p1, Lnb$a;->d:Lcom/google/android/exoplayer2/source/i$b;

    iget v3, v3, Lxk6;->b:I

    if-ne v2, v3, :cond_1

    invoke-static {v0}, Lf32$a;->h(Lf32$a;)Lcom/google/android/exoplayer2/source/i$b;

    move-result-object v0

    iget v0, v0, Lxk6;->c:I

    iget-object v2, p1, Lnb$a;->d:Lcom/google/android/exoplayer2/source/i$b;

    iget v2, v2, Lxk6;->c:I

    if-eq v0, v2, :cond_2

    :cond_1
    new-instance v0, Lcom/google/android/exoplayer2/source/i$b;

    iget-object v2, p1, Lnb$a;->d:Lcom/google/android/exoplayer2/source/i$b;

    iget-object v3, v2, Lxk6;->a:Ljava/lang/Object;

    iget-wide v4, v2, Lxk6;->d:J

    invoke-direct {v0, v3, v4, v5}, Lcom/google/android/exoplayer2/source/i$b;-><init>(Ljava/lang/Object;J)V

    iget v2, p1, Lnb$a;->c:I

    invoke-virtual {p0, v2, v0}, Lf32;->k(ILcom/google/android/exoplayer2/source/i$b;)Lf32$a;

    move-result-object v0

    iget-object p0, p0, Lf32;->e:Ld88$a;

    invoke-static {v0}, Lf32$a;->a(Lf32$a;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1}, Lf32$a;->a(Lf32$a;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, p1, v0, v1}, Ld88$a;->i(Lnb$a;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void
.end method
