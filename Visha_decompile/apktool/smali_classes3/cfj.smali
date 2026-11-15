.class public final Lcfj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lpfj;


# static fields
.field public static final h:Lk3i;

.field public static final i:Ljava/util/Random;


# instance fields
.field public final a:Le4f;

.field public final b:Ly2f;

.field public final c:Ljava/util/HashMap;

.field public d:Lnfj;

.field public e:Lw4f;

.field public f:Ljava/lang/String;

.field public g:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lyej;

    invoke-direct {v0}, Lyej;-><init>()V

    sput-object v0, Lcfj;->h:Lk3i;

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lcfj;->i:Ljava/util/Random;

    return-void
.end method

.method public constructor <init>(Lk3i;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Le4f;

    invoke-direct {p1}, Le4f;-><init>()V

    iput-object p1, p0, Lcfj;->a:Le4f;

    new-instance p1, Ly2f;

    invoke-direct {p1}, Ly2f;-><init>()V

    iput-object p1, p0, Lcfj;->b:Ly2f;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcfj;->c:Ljava/util/HashMap;

    sget-object p1, Lw4f;->a:Lw4f;

    iput-object p1, p0, Lcfj;->e:Lw4f;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcfj;->g:J

    return-void
.end method

.method public static bridge synthetic g(Lcfj;)J
    .locals 2

    invoke-virtual {p0}, Lcfj;->k()J

    move-result-wide v0

    return-wide v0
.end method

.method public static bridge synthetic h(Lcfj;)Ly2f;
    .locals 0

    iget-object p0, p0, Lcfj;->b:Ly2f;

    return-object p0
.end method

.method public static bridge synthetic i(Lcfj;)Le4f;
    .locals 0

    iget-object p0, p0, Lcfj;->a:Le4f;

    return-object p0
.end method

.method public static synthetic j()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcfj;->m()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static m()Ljava/lang/String;
    .locals 2

    const/16 v0, 0xc

    new-array v0, v0, [B

    sget-object v1, Lcfj;->i:Ljava/util/Random;

    invoke-virtual {v1, v0}, Ljava/util/Random;->nextBytes([B)V

    const/16 v1, 0xa

    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a(Lnfj;)V
    .locals 0

    iput-object p1, p0, Lcfj;->d:Lnfj;

    return-void
.end method

.method public final declared-synchronized b(Lraj;)V
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcfj;->d:Lnfj;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcfj;->e:Lw4f;

    iget-object v1, p1, Lraj;->b:Lw4f;

    iput-object v1, p0, Lcfj;->e:Lw4f;

    iget-object v1, p0, Lcfj;->c:Ljava/util/HashMap;

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

    check-cast v2, Lafj;

    iget-object v3, p0, Lcfj;->e:Lw4f;

    invoke-virtual {v2, v0, v3}, Lafj;->l(Lw4f;Lw4f;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2, p1}, Lafj;->k(Lraj;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    invoke-static {v2}, Lafj;->i(Lafj;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {v2}, Lafj;->d(Lafj;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcfj;->f:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p0, v2}, Lcfj;->n(Lafj;)V

    :cond_2
    iget-object v3, p0, Lcfj;->d:Lnfj;

    invoke-static {v2}, Lafj;->d(Lafj;)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    invoke-interface {v3, p1, v2, v4}, Lnfj;->j(Lraj;Ljava/lang/String;Z)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0, p1}, Lcfj;->o(Lraj;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_4
    const/4 p1, 0x0

    :try_start_1
    throw p1

    :goto_2
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final declared-synchronized c(Lraj;)V
    .locals 9

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcfj;->d:Lnfj;

    if-eqz v0, :cond_6

    iget-object v0, p1, Lraj;->b:Lw4f;

    invoke-virtual {v0}, Lw4f;->o()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_1

    :cond_0
    iget-object v1, p1, Lraj;->d:Lbnj;

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcfj;->k()J

    move-result-wide v2

    iget-wide v4, v1, Lbnj;->d:J

    cmp-long v2, v4, v2

    if-ltz v2, :cond_5

    iget-object v2, p0, Lcfj;->c:Ljava/util/HashMap;

    iget-object v3, p0, Lcfj;->f:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lafj;

    if-eqz v2, :cond_1

    invoke-static {v2}, Lafj;->b(Lafj;)J

    move-result-wide v3

    const-wide/16 v5, -0x1

    cmp-long v3, v3, v5

    if-nez v3, :cond_1

    invoke-static {v2}, Lafj;->a(Lafj;)I

    move-result v2

    iget v3, p1, Lraj;->c:I

    if-ne v2, v3, :cond_5

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_2

    :cond_1
    :goto_0
    iget v2, p1, Lraj;->c:I

    invoke-virtual {p0, v2, v1}, Lcfj;->l(ILbnj;)Lafj;

    move-result-object v3

    iget-object v4, p0, Lcfj;->f:Ljava/lang/String;

    if-nez v4, :cond_2

    invoke-static {v3}, Lafj;->d(Lafj;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcfj;->f:Ljava/lang/String;

    :cond_2
    const/4 v4, 0x1

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lbnj;->b()Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, v1, Lbnj;->a:Ljava/lang/Object;

    iget-wide v6, v1, Lbnj;->d:J

    iget v1, v1, Lbnj;->b:I

    new-instance v8, Lbnj;

    invoke-direct {v8, v5, v6, v7, v1}, Lbnj;-><init>(Ljava/lang/Object;JI)V

    invoke-virtual {p0, v2, v8}, Lcfj;->l(ILbnj;)Lafj;

    move-result-object v2

    invoke-static {v2}, Lafj;->i(Lafj;)Z

    move-result v6

    if-nez v6, :cond_3

    invoke-static {v2, v4}, Lafj;->f(Lafj;Z)V

    iget-object v6, p0, Lcfj;->b:Ly2f;

    invoke-virtual {v0, v5, v6}, Lw4f;->n(Ljava/lang/Object;Ly2f;)Ly2f;

    invoke-virtual {v6, v1}, Ly2f;->g(I)J

    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Lkfh;->Q(J)J

    move-result-wide v5

    invoke-static {v0, v1}, Lkfh;->Q(J)J

    move-result-wide v7

    add-long/2addr v5, v7

    invoke-static {v0, v1, v5, v6}, Ljava/lang/Math;->max(JJ)J

    invoke-static {v2}, Lafj;->d(Lafj;)Ljava/lang/String;

    :cond_3
    invoke-static {v3}, Lafj;->i(Lafj;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-static {v3, v4}, Lafj;->f(Lafj;Z)V

    invoke-static {v3}, Lafj;->d(Lafj;)Ljava/lang/String;

    :cond_4
    invoke-static {v3}, Lafj;->d(Lafj;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcfj;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {v3}, Lafj;->h(Lafj;)Z

    move-result v0

    if-nez v0, :cond_5

    invoke-static {v3, v4}, Lafj;->e(Lafj;Z)V

    iget-object v0, p0, Lcfj;->d:Lnfj;

    invoke-static {v3}, Lafj;->d(Lafj;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lnfj;->f(Lraj;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_5
    :goto_1
    monitor-exit p0

    return-void

    :cond_6
    const/4 p1, 0x0

    :try_start_1
    throw p1

    :goto_2
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final declared-synchronized d(Lraj;)V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcfj;->f:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcfj;->c:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lafj;

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcfj;->n(Lafj;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_0
    const/4 p1, 0x0

    throw p1

    :cond_1
    :goto_0
    iget-object v0, p0, Lcfj;->c:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lafj;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    invoke-static {v1}, Lafj;->i(Lafj;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcfj;->d:Lnfj;

    if-eqz v2, :cond_2

    invoke-static {v1}, Lafj;->d(Lafj;)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    invoke-interface {v2, p1, v1, v3}, Lnfj;->j(Lraj;Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :cond_3
    monitor-exit p0

    return-void

    :goto_2
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final declared-synchronized e(Lw4f;Lbnj;)Ljava/lang/String;
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p2, Lbnj;->a:Ljava/lang/Object;

    iget-object v1, p0, Lcfj;->b:Ly2f;

    invoke-virtual {p1, v0, v1}, Lw4f;->n(Ljava/lang/Object;Ly2f;)Ly2f;

    move-result-object p1

    iget p1, p1, Ly2f;->c:I

    invoke-virtual {p0, p1, p2}, Lcfj;->l(ILbnj;)Lafj;

    move-result-object p1

    invoke-static {p1}, Lafj;->d(Lafj;)Ljava/lang/String;

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

.method public final declared-synchronized f(Lraj;I)V
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcfj;->d:Lnfj;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcfj;->c:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lafj;

    invoke-virtual {v1, p1}, Lafj;->k(Lraj;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    invoke-static {v1}, Lafj;->i(Lafj;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v1}, Lafj;->d(Lafj;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcfj;->f:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez p2, :cond_1

    if-eqz v2, :cond_1

    invoke-static {v1}, Lafj;->h(Lafj;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_1
    :goto_1
    if-eqz v2, :cond_2

    invoke-virtual {p0, v1}, Lcfj;->n(Lafj;)V

    :cond_2
    iget-object v2, p0, Lcfj;->d:Lnfj;

    invoke-static {v1}, Lafj;->d(Lafj;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, p1, v1, v3}, Lnfj;->j(Lraj;Ljava/lang/String;Z)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0, p1}, Lcfj;->o(Lraj;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_4
    const/4 p1, 0x0

    :try_start_1
    throw p1

    :goto_2
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final k()J
    .locals 5

    iget-object v0, p0, Lcfj;->c:Ljava/util/HashMap;

    iget-object v1, p0, Lcfj;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lafj;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lafj;->b(Lafj;)J

    move-result-wide v1

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    invoke-static {v0}, Lafj;->b(Lafj;)J

    move-result-wide v0

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lcfj;->g:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    :goto_0
    return-wide v0
.end method

.method public final l(ILbnj;)Lafj;
    .locals 10

    iget-object v0, p0, Lcfj;->c:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const-wide v2, 0x7fffffffffffffffL

    const/4 v4, 0x0

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lafj;

    invoke-virtual {v5, p1, p2}, Lafj;->g(ILbnj;)V

    invoke-virtual {v5, p1, p2}, Lafj;->j(ILbnj;)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-static {v5}, Lafj;->b(Lafj;)J

    move-result-wide v6

    const-wide/16 v8, -0x1

    cmp-long v8, v6, v8

    if-eqz v8, :cond_2

    cmp-long v8, v6, v2

    if-gez v8, :cond_1

    goto :goto_1

    :cond_1
    if-nez v8, :cond_0

    sget v6, Lkfh;->a:I

    invoke-static {v4}, Lafj;->c(Lafj;)Lbnj;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-static {v5}, Lafj;->c(Lafj;)Lbnj;

    move-result-object v6

    if-eqz v6, :cond_0

    move-object v4, v5

    goto :goto_0

    :cond_2
    :goto_1
    move-object v4, v5

    move-wide v2, v6

    goto :goto_0

    :cond_3
    if-nez v4, :cond_4

    invoke-static {}, Lcfj;->m()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lafj;

    invoke-direct {v2, p0, v1, p1, p2}, Lafj;-><init>(Lcfj;Ljava/lang/String;ILbnj;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v2

    :cond_4
    return-object v4
.end method

.method public final n(Lafj;)V
    .locals 4

    invoke-static {p1}, Lafj;->b(Lafj;)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    invoke-static {p1}, Lafj;->b(Lafj;)J

    move-result-wide v0

    iput-wide v0, p0, Lcfj;->g:J

    :cond_0
    const/4 p1, 0x0

    iput-object p1, p0, Lcfj;->f:Ljava/lang/String;

    return-void
.end method

.method public final o(Lraj;)V
    .locals 8

    iget-object v0, p1, Lraj;->b:Lw4f;

    invoke-virtual {v0}, Lw4f;->o()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcfj;->f:Ljava/lang/String;

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcfj;->c:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lafj;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0, p1}, Lcfj;->n(Lafj;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcfj;->c:Ljava/util/HashMap;

    iget-object v1, p0, Lcfj;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lafj;

    iget v1, p1, Lraj;->c:I

    iget-object v2, p1, Lraj;->d:Lbnj;

    invoke-virtual {p0, v1, v2}, Lcfj;->l(ILbnj;)Lafj;

    move-result-object v3

    invoke-static {v3}, Lafj;->d(Lafj;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcfj;->f:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcfj;->c(Lraj;)V

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lbnj;->b()Z

    move-result p1

    if-eqz p1, :cond_2

    if-eqz v0, :cond_1

    iget-wide v4, v2, Lbnj;->d:J

    invoke-static {v0}, Lafj;->b(Lafj;)J

    move-result-wide v6

    cmp-long p1, v6, v4

    if-nez p1, :cond_1

    invoke-static {v0}, Lafj;->c(Lafj;)Lbnj;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-static {v0}, Lafj;->c(Lafj;)Lbnj;

    move-result-object p1

    iget p1, p1, Lbnj;->b:I

    iget v4, v2, Lbnj;->b:I

    if-ne p1, v4, :cond_1

    invoke-static {v0}, Lafj;->c(Lafj;)Lbnj;

    move-result-object p1

    iget p1, p1, Lbnj;->c:I

    iget v0, v2, Lbnj;->c:I

    if-eq p1, v0, :cond_2

    :cond_1
    iget-object p1, v2, Lbnj;->a:Ljava/lang/Object;

    iget-wide v4, v2, Lbnj;->d:J

    new-instance v0, Lbnj;

    invoke-direct {v0, p1, v4, v5}, Lbnj;-><init>(Ljava/lang/Object;J)V

    invoke-virtual {p0, v1, v0}, Lcfj;->l(ILbnj;)Lafj;

    move-result-object p0

    invoke-static {p0}, Lafj;->d(Lafj;)Ljava/lang/String;

    invoke-static {v3}, Lafj;->d(Lafj;)Ljava/lang/String;

    :cond_2
    return-void
.end method

.method public final declared-synchronized zze()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcfj;->f:Ljava/lang/String;
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
