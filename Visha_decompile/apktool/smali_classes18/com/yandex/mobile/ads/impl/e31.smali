.class public final Lcom/yandex/mobile/ads/impl/e31;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/impl/sd1;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/mobile/ads/impl/e31$a;
    }
.end annotation


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/yandex/mobile/ads/impl/od1;

.field private final c:Lcom/yandex/mobile/ads/impl/j62;

.field private final d:Ljava/lang/String;

.field private final e:Lcom/yandex/mobile/ads/impl/s9;

.field private final f:Lcom/yandex/mobile/ads/impl/e31$a;

.field private final g:Lcom/yandex/mobile/ads/impl/v9;

.field private final h:Lcom/yandex/mobile/ads/impl/pw1;

.field private final i:Lcom/yandex/mobile/ads/impl/r62;

.field private final j:Ljava/util/ArrayList;

.field private k:Lcom/yandex/mobile/ads/impl/uk0;

.field private l:Z

.field private m:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/o3;Lcom/yandex/mobile/ads/impl/od1;Lcom/yandex/mobile/ads/impl/j62;Ljava/lang/String;Lcom/yandex/mobile/ads/impl/s9;Lcom/yandex/mobile/ads/impl/e31$a;Lcom/yandex/mobile/ads/impl/v9;Lcom/yandex/mobile/ads/impl/pw1;Lcom/yandex/mobile/ads/impl/r62;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adConfiguration"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "noticeReportController"

    invoke-static {p3, p2}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "trackingChecker"

    invoke-static {p4, p2}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "viewControllerDescription"

    invoke-static {p5, p2}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "adStructureType"

    invoke-static {p6, p2}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "handler"

    invoke-static {p7, p2}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "adTracker"

    invoke-static {p8, p2}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "sdkSettings"

    invoke-static {p9, p2}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "trackingNoticeBuilder"

    invoke-static {p10, p2}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/e31;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/yandex/mobile/ads/impl/e31;->b:Lcom/yandex/mobile/ads/impl/od1;

    iput-object p4, p0, Lcom/yandex/mobile/ads/impl/e31;->c:Lcom/yandex/mobile/ads/impl/j62;

    iput-object p5, p0, Lcom/yandex/mobile/ads/impl/e31;->d:Ljava/lang/String;

    iput-object p6, p0, Lcom/yandex/mobile/ads/impl/e31;->e:Lcom/yandex/mobile/ads/impl/s9;

    iput-object p7, p0, Lcom/yandex/mobile/ads/impl/e31;->f:Lcom/yandex/mobile/ads/impl/e31$a;

    iput-object p8, p0, Lcom/yandex/mobile/ads/impl/e31;->g:Lcom/yandex/mobile/ads/impl/v9;

    iput-object p9, p0, Lcom/yandex/mobile/ads/impl/e31;->h:Lcom/yandex/mobile/ads/impl/pw1;

    iput-object p10, p0, Lcom/yandex/mobile/ads/impl/e31;->i:Lcom/yandex/mobile/ads/impl/r62;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/e31;->j:Ljava/util/ArrayList;

    return-void
.end method

.method public static final synthetic a(Lcom/yandex/mobile/ads/impl/e31;)Lcom/yandex/mobile/ads/impl/e31$a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/e31;->f:Lcom/yandex/mobile/ads/impl/e31$a;

    return-object p0
.end method

.method public static final a(Lcom/yandex/mobile/ads/impl/e31;Lcom/yandex/mobile/ads/impl/q62;)Lcom/yandex/mobile/ads/impl/n92;
    .locals 0

    .line 4
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/e31;->c:Lcom/yandex/mobile/ads/impl/j62;

    .line 5
    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/q62;->e()I

    move-result p1

    invoke-interface {p0, p1}, Lcom/yandex/mobile/ads/impl/j62;->b(I)Lcom/yandex/mobile/ads/impl/n92;

    move-result-object p0

    .line 6
    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/n92;->b()Lcom/yandex/mobile/ads/impl/n92$a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/n92$a;->a()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lcom/yandex/mobile/ads/impl/sp0;->d([Ljava/lang/Object;)V

    return-object p0
.end method

.method public static final synthetic a(Lcom/yandex/mobile/ads/impl/e31;Lcom/yandex/mobile/ads/impl/q62;Lcom/yandex/mobile/ads/impl/n92;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2}, Lcom/yandex/mobile/ads/impl/e31;->a(Lcom/yandex/mobile/ads/impl/q62;Lcom/yandex/mobile/ads/impl/n92;)V

    return-void
.end method

.method private final declared-synchronized a(Lcom/yandex/mobile/ads/impl/q62;Lcom/yandex/mobile/ads/impl/n92;)V
    .locals 2

    monitor-enter p0

    .line 51
    :try_start_0
    invoke-virtual {p2}, Lcom/yandex/mobile/ads/impl/n92;->b()Lcom/yandex/mobile/ads/impl/n92$a;

    move-result-object v0

    sget-object v1, Lcom/yandex/mobile/ads/impl/n92$a;->c:Lcom/yandex/mobile/ads/impl/n92$a;

    if-ne v0, v1, :cond_0

    .line 52
    iget-object p2, p0, Lcom/yandex/mobile/ads/impl/e31;->g:Lcom/yandex/mobile/ads/impl/v9;

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/q62;->d()Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lcom/yandex/mobile/ads/impl/z62;->h:Lcom/yandex/mobile/ads/impl/z62;

    invoke-virtual {p2, p1, v0}, Lcom/yandex/mobile/ads/impl/v9;->a(Ljava/lang/String;Lcom/yandex/mobile/ads/impl/z62;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 53
    :cond_0
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/e31;->b:Lcom/yandex/mobile/ads/impl/od1;

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/q62;->c()Lcom/yandex/mobile/ads/impl/fy1;

    move-result-object p1

    invoke-interface {v0, p1, p2}, Lcom/yandex/mobile/ads/impl/od1;->a(Lcom/yandex/mobile/ads/impl/fy1;Lcom/yandex/mobile/ads/impl/n92;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public static final a(Lcom/yandex/mobile/ads/impl/n92;)Z
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/n92;->b()Lcom/yandex/mobile/ads/impl/n92$a;

    move-result-object p0

    sget-object v0, Lcom/yandex/mobile/ads/impl/n92$a;->c:Lcom/yandex/mobile/ads/impl/n92$a;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static final synthetic b(Lcom/yandex/mobile/ads/impl/e31;)Ljava/util/ArrayList;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/e31;->j:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static final synthetic c(Lcom/yandex/mobile/ads/impl/e31;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/e31;->d:Ljava/lang/String;

    return-object p0
.end method

.method private final declared-synchronized d()Z
    .locals 1

    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/e31;->j:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static final synthetic d(Lcom/yandex/mobile/ads/impl/e31;)Z
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/yandex/mobile/ads/impl/e31;->d()Z

    move-result p0

    return p0
.end method


# virtual methods
.method public final declared-synchronized a()V
    .locals 3

    monitor-enter p0

    const/4 v0, 0x0

    .line 46
    :try_start_0
    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v0}, Lcom/yandex/mobile/ads/impl/sp0;->d([Ljava/lang/Object;)V

    .line 47
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/e31;->f:Lcom/yandex/mobile/ads/impl/e31$a;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 48
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/e31;->f:Lcom/yandex/mobile/ads/impl/e31$a;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 49
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/e31;->j:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yandex/mobile/ads/impl/q62;

    const/4 v2, 0x0

    .line 50
    invoke-virtual {v1, v2}, Lcom/yandex/mobile/ads/impl/q62;->a(Ljava/lang/Long;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final declared-synchronized a(Lcom/yandex/mobile/ads/impl/dh1;Z)V
    .locals 1

    monitor-enter p0

    .line 38
    :try_start_0
    const-string v0, "phoneState"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    invoke-static {p1}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    .line 40
    invoke-static {v0}, Lcom/yandex/mobile/ads/impl/sp0;->d([Ljava/lang/Object;)V

    .line 41
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    goto :goto_0

    .line 42
    :cond_0
    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/e31;->a()V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_1
    if-eqz p2, :cond_2

    .line 43
    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/e31;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final declared-synchronized a(Lcom/yandex/mobile/ads/impl/o8;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yandex/mobile/ads/impl/o8<",
            "*>;",
            "Ljava/util/List<",
            "Lcom/yandex/mobile/ads/impl/ey1;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    .line 54
    :try_start_0
    const-string v0, "adResponse"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "showNotices"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 55
    new-array v1, v0, [Ljava/lang/Object;

    invoke-static {v1}, Lcom/yandex/mobile/ads/impl/sp0;->d([Ljava/lang/Object;)V

    .line 56
    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/e31;->b:Lcom/yandex/mobile/ads/impl/od1;

    invoke-interface {v1, p1}, Lcom/yandex/mobile/ads/impl/od1;->a(Lcom/yandex/mobile/ads/impl/o8;)V

    .line 57
    iget-object p1, p0, Lcom/yandex/mobile/ads/impl/e31;->j:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 58
    iget-object p1, p0, Lcom/yandex/mobile/ads/impl/e31;->b:Lcom/yandex/mobile/ads/impl/od1;

    invoke-interface {p1}, Lcom/yandex/mobile/ads/impl/od1;->invalidate()V

    .line 59
    iput-boolean v0, p0, Lcom/yandex/mobile/ads/impl/e31;->m:Z

    .line 60
    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/e31;->a()V

    .line 61
    invoke-virtual {p0, p2}, Lcom/yandex/mobile/ads/impl/e31;->a(Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final a(Lcom/yandex/mobile/ads/impl/uk0;)V
    .locals 1

    .line 44
    const-string v0, "impressionTrackingListener"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/e31;->k:Lcom/yandex/mobile/ads/impl/uk0;

    return-void
.end method

.method public final declared-synchronized a(Ljava/util/List;)V
    .locals 9
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/yandex/mobile/ads/impl/ey1;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    .line 7
    :try_start_0
    const-string v0, "showNotices"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/e31;->j:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 9
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/e31;->i:Lcom/yandex/mobile/ads/impl/r62;

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/e31;->e:Lcom/yandex/mobile/ads/impl/s9;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    const-string v0, "adStructureType"

    invoke-static {v1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "showNotices"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    new-instance v0, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {p1, v2}, Lz71;->v(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 12
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 13
    check-cast v3, Lcom/yandex/mobile/ads/impl/ey1;

    .line 14
    invoke-virtual {v3}, Lcom/yandex/mobile/ads/impl/ey1;->b()Lcom/yandex/mobile/ads/impl/fy1;

    move-result-object v3

    .line 15
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_7

    .line 16
    :cond_0
    invoke-static {v0}, Li81;->g1(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v0

    .line 17
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-eqz v1, :cond_3

    const/4 v0, 0x1

    if-eq v1, v0, :cond_2

    const/4 v0, 0x2

    if-ne v1, v0, :cond_1

    .line 18
    sget-object v0, Lcom/yandex/mobile/ads/impl/fy1;->b:Lcom/yandex/mobile/ads/impl/fy1;

    goto :goto_2

    .line 19
    :cond_1
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    :cond_2
    sget-object v0, Lcom/yandex/mobile/ads/impl/fy1;->c:Lcom/yandex/mobile/ads/impl/fy1;

    goto :goto_2

    .line 20
    :cond_3
    instance-of v1, v0, Ljava/util/Collection;

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_1

    .line 21
    :cond_4
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yandex/mobile/ads/impl/fy1;

    .line 22
    sget-object v2, Lcom/yandex/mobile/ads/impl/fy1;->c:Lcom/yandex/mobile/ads/impl/fy1;

    if-ne v1, v2, :cond_5

    const/4 v0, 0x0

    goto :goto_2

    .line 23
    :cond_6
    :goto_1
    sget-object v0, Lcom/yandex/mobile/ads/impl/fy1;->b:Lcom/yandex/mobile/ads/impl/fy1;

    .line 24
    :goto_2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 25
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 26
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_7
    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lcom/yandex/mobile/ads/impl/ey1;

    .line 27
    invoke-virtual {v4}, Lcom/yandex/mobile/ads/impl/ey1;->c()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_7

    .line 28
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 29
    :cond_8
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_9
    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/yandex/mobile/ads/impl/ey1;

    .line 30
    invoke-virtual {v2}, Lcom/yandex/mobile/ads/impl/ey1;->c()Ljava/lang/String;

    move-result-object v8

    .line 31
    invoke-virtual {v2}, Lcom/yandex/mobile/ads/impl/ey1;->a()J

    move-result-wide v5

    .line 32
    invoke-virtual {v2}, Lcom/yandex/mobile/ads/impl/ey1;->d()I

    move-result v4

    .line 33
    invoke-virtual {v2}, Lcom/yandex/mobile/ads/impl/ey1;->b()Lcom/yandex/mobile/ads/impl/fy1;

    move-result-object v3

    sget-object v7, Lcom/yandex/mobile/ads/impl/fy1;->d:Lcom/yandex/mobile/ads/impl/fy1;

    if-ne v3, v7, :cond_b

    if-nez v0, :cond_a

    .line 34
    invoke-virtual {v2}, Lcom/yandex/mobile/ads/impl/ey1;->b()Lcom/yandex/mobile/ads/impl/fy1;

    move-result-object v2

    :goto_5
    move-object v7, v2

    goto :goto_6

    :cond_a
    move-object v7, v0

    goto :goto_6

    .line 35
    :cond_b
    invoke-virtual {v2}, Lcom/yandex/mobile/ads/impl/ey1;->b()Lcom/yandex/mobile/ads/impl/fy1;

    move-result-object v2

    goto :goto_5

    :goto_6
    if-eqz v8, :cond_9

    .line 36
    new-instance v2, Lcom/yandex/mobile/ads/impl/q62;

    move-object v3, v2

    invoke-direct/range {v3 .. v8}, Lcom/yandex/mobile/ads/impl/q62;-><init>(IJLcom/yandex/mobile/ads/impl/fy1;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 37
    :cond_c
    iget-object p1, p0, Lcom/yandex/mobile/ads/impl/e31;->j:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :goto_7
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final declared-synchronized b()V
    .locals 3

    monitor-enter p0

    const/4 v0, 0x0

    .line 2
    :try_start_0
    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v0}, Lcom/yandex/mobile/ads/impl/sp0;->d([Ljava/lang/Object;)V

    .line 3
    sget-object v0, Lcom/yandex/mobile/ads/impl/gh1;->h:Lcom/yandex/mobile/ads/impl/gh1$a;

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/e31;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/yandex/mobile/ads/impl/gh1$a;->a(Landroid/content/Context;)Lcom/yandex/mobile/ads/impl/gh1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/gh1;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/e31;->j:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/yandex/mobile/ads/impl/e31;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/e31;->f:Lcom/yandex/mobile/ads/impl/e31$a;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 6
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/e31;->f:Lcom/yandex/mobile/ads/impl/e31$a;

    .line 7
    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-static {v0, v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 8
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final declared-synchronized c()V
    .locals 7

    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/e31;->j:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/e31;->d:Ljava/lang/String;

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    .line 3
    invoke-static {v0}, Lcom/yandex/mobile/ads/impl/sp0;->d([Ljava/lang/Object;)V

    .line 4
    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/e31;->a()V

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/e31;->j:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 7
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 8
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/yandex/mobile/ads/impl/q62;

    .line 9
    iget-object v3, p0, Lcom/yandex/mobile/ads/impl/e31;->h:Lcom/yandex/mobile/ads/impl/pw1;

    iget-object v4, p0, Lcom/yandex/mobile/ads/impl/e31;->a:Landroid/content/Context;

    invoke-virtual {v3, v4}, Lcom/yandex/mobile/ads/impl/pw1;->a(Landroid/content/Context;)Lcom/yandex/mobile/ads/impl/ju1;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 10
    invoke-virtual {v3}, Lcom/yandex/mobile/ads/impl/ju1;->g0()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 11
    iget-object v3, p0, Lcom/yandex/mobile/ads/impl/e31;->c:Lcom/yandex/mobile/ads/impl/j62;

    invoke-virtual {v2}, Lcom/yandex/mobile/ads/impl/q62;->e()I

    move-result v4

    invoke-interface {v3, v4}, Lcom/yandex/mobile/ads/impl/j62;->b(I)Lcom/yandex/mobile/ads/impl/n92;

    move-result-object v3

    goto :goto_1

    :catchall_0
    move-exception v0

    goto/16 :goto_3

    .line 12
    :cond_0
    iget-object v3, p0, Lcom/yandex/mobile/ads/impl/e31;->c:Lcom/yandex/mobile/ads/impl/j62;

    invoke-virtual {v2}, Lcom/yandex/mobile/ads/impl/q62;->e()I

    move-result v4

    invoke-interface {v3, v4}, Lcom/yandex/mobile/ads/impl/j62;->a(I)Lcom/yandex/mobile/ads/impl/n92;

    move-result-object v3

    .line 13
    :goto_1
    invoke-virtual {v3}, Lcom/yandex/mobile/ads/impl/n92;->b()Lcom/yandex/mobile/ads/impl/n92$a;

    move-result-object v4

    invoke-virtual {v4}, Lcom/yandex/mobile/ads/impl/n92$a;->a()Ljava/lang/String;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lcom/yandex/mobile/ads/impl/sp0;->d([Ljava/lang/Object;)V

    .line 14
    invoke-direct {p0, v2, v3}, Lcom/yandex/mobile/ads/impl/e31;->a(Lcom/yandex/mobile/ads/impl/q62;Lcom/yandex/mobile/ads/impl/n92;)V

    .line 15
    invoke-virtual {v3}, Lcom/yandex/mobile/ads/impl/n92;->b()Lcom/yandex/mobile/ads/impl/n92$a;

    move-result-object v4

    sget-object v5, Lcom/yandex/mobile/ads/impl/n92$a;->c:Lcom/yandex/mobile/ads/impl/n92$a;

    if-ne v4, v5, :cond_2

    .line 16
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 17
    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/e31;->f()V

    .line 18
    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/e31;->e()V

    .line 19
    iget-object v3, p0, Lcom/yandex/mobile/ads/impl/e31;->b:Lcom/yandex/mobile/ads/impl/od1;

    invoke-virtual {v2}, Lcom/yandex/mobile/ads/impl/q62;->c()Lcom/yandex/mobile/ads/impl/fy1;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/yandex/mobile/ads/impl/od1;->a(Lcom/yandex/mobile/ads/impl/fy1;)V

    .line 20
    iget-object v3, p0, Lcom/yandex/mobile/ads/impl/e31;->b:Lcom/yandex/mobile/ads/impl/od1;

    .line 21
    invoke-virtual {v2}, Lcom/yandex/mobile/ads/impl/q62;->c()Lcom/yandex/mobile/ads/impl/fy1;

    move-result-object v2

    iget-object v4, p0, Lcom/yandex/mobile/ads/impl/e31;->j:Ljava/util/ArrayList;

    .line 22
    new-instance v5, Ljava/util/ArrayList;

    const/16 v6, 0xa

    invoke-static {v4, v6}, Lz71;->v(Ljava/lang/Iterable;I)I

    move-result v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 23
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .line 24
    check-cast v6, Lcom/yandex/mobile/ads/impl/q62;

    .line 25
    invoke-virtual {v6}, Lcom/yandex/mobile/ads/impl/q62;->c()Lcom/yandex/mobile/ads/impl/fy1;

    move-result-object v6

    .line 26
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 27
    :cond_1
    invoke-interface {v3, v2, v5}, Lcom/yandex/mobile/ads/impl/od1;->a(Lcom/yandex/mobile/ads/impl/fy1;Ljava/util/List;)V

    goto/16 :goto_0

    .line 28
    :cond_2
    new-instance v4, Lcom/yandex/mobile/ads/impl/ud1;

    invoke-direct {v4, v2, v3}, Lcom/yandex/mobile/ads/impl/ud1;-><init>(Lcom/yandex/mobile/ads/impl/q62;Lcom/yandex/mobile/ads/impl/n92;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 29
    :cond_3
    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/e31;->b:Lcom/yandex/mobile/ads/impl/od1;

    invoke-interface {v1, v0}, Lcom/yandex/mobile/ads/impl/od1;->a(Ljava/util/List;)V

    .line 30
    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/e31;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :goto_3
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final e()V
    .locals 1

    iget-boolean v0, p0, Lcom/yandex/mobile/ads/impl/e31;->m:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/e31;->j:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/yandex/mobile/ads/impl/e31;->m:Z

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/e31;->k:Lcom/yandex/mobile/ads/impl/uk0;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/yandex/mobile/ads/impl/uk0;->g()V

    :cond_0
    return-void
.end method

.method public final f()V
    .locals 1

    iget-boolean v0, p0, Lcom/yandex/mobile/ads/impl/e31;->l:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/yandex/mobile/ads/impl/e31;->l:Z

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/e31;->k:Lcom/yandex/mobile/ads/impl/uk0;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/yandex/mobile/ads/impl/uk0;->c()V

    :cond_0
    return-void
.end method
