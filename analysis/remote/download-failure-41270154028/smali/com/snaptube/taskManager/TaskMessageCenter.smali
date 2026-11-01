.class public Lcom/snaptube/taskManager/TaskMessageCenter;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snaptube/taskManager/TaskMessageCenter$d;,
        Lcom/snaptube/taskManager/TaskMessageCenter$NotificationType;,
        Lcom/snaptube/taskManager/TaskMessageCenter$c;
    }
.end annotation


# instance fields
.field public final a:Lo/b29;

.field public final b:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lo/b29;

    invoke-direct {v0}, Lo/b29;-><init>()V

    iput-object v0, p0, Lcom/snaptube/taskManager/TaskMessageCenter;->a:Lo/b29;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/snaptube/taskManager/TaskMessageCenter;->b:Landroid/os/Handler;

    return-void
.end method

.method public static synthetic a(Lcom/snaptube/taskManager/TaskMessageCenter;Ljava/util/List;Lcom/snaptube/taskManager/TaskMessageCenter$NotificationType;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/snaptube/taskManager/TaskMessageCenter;->n(Ljava/util/List;Lcom/snaptube/taskManager/TaskMessageCenter$NotificationType;)V

    return-void
.end method

.method public static synthetic b(Lcom/snaptube/taskManager/TaskMessageCenter;Ljava/lang/String;Lcom/snaptube/taskManager/TaskMessageCenter$NotificationType;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/snaptube/taskManager/TaskMessageCenter;->l(Ljava/lang/String;Lcom/snaptube/taskManager/TaskMessageCenter$NotificationType;)V

    return-void
.end method

.method public static synthetic c(Lcom/snaptube/taskManager/TaskMessageCenter;JLcom/snaptube/taskManager/TaskMessageCenter$NotificationType;)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/snaptube/taskManager/TaskMessageCenter;->m(JLcom/snaptube/taskManager/TaskMessageCenter$NotificationType;)V

    return-void
.end method

.method public static synthetic d(Lcom/snaptube/taskManager/TaskMessageCenter;Ljava/util/List;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/snaptube/taskManager/TaskMessageCenter;->k(Ljava/util/List;)V

    return-void
.end method

.method public static bridge synthetic e(Lcom/snaptube/taskManager/TaskMessageCenter;Ljava/util/List;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/snaptube/taskManager/TaskMessageCenter;->o(Ljava/util/List;)V

    return-void
.end method

.method public static bridge synthetic f(Lcom/snaptube/taskManager/TaskMessageCenter;Ljava/lang/String;Lcom/snaptube/taskManager/TaskMessageCenter$NotificationType;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/snaptube/taskManager/TaskMessageCenter;->u(Ljava/lang/String;Lcom/snaptube/taskManager/TaskMessageCenter$NotificationType;)V

    return-void
.end method

.method public static bridge synthetic g(Lcom/snaptube/taskManager/TaskMessageCenter;JLcom/snaptube/taskManager/TaskMessageCenter$NotificationType;)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/snaptube/taskManager/TaskMessageCenter;->v(JLcom/snaptube/taskManager/TaskMessageCenter$NotificationType;)V

    return-void
.end method

.method public static bridge synthetic h(Lcom/snaptube/taskManager/TaskMessageCenter;Ljava/util/List;Lcom/snaptube/taskManager/TaskMessageCenter$NotificationType;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/snaptube/taskManager/TaskMessageCenter;->w(Ljava/util/List;Lcom/snaptube/taskManager/TaskMessageCenter$NotificationType;)V

    return-void
.end method


# virtual methods
.method public final i()Ljava/util/List;
    .locals 3

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/snaptube/taskManager/TaskMessageCenter;->a:Lo/b29;

    invoke-virtual {v1}, Lo/b29;->b()Lo/b29$b;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Lo/b29$b;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/snaptube/taskManager/TaskMessageCenter$d;

    if-eqz v2, :cond_0

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    monitor-exit p0

    return-object v0

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final j(Lcom/snaptube/taskManager/datasets/TaskInfo;Lcom/snaptube/taskManager/TaskMessageCenter$NotificationType;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/snaptube/taskManager/TaskMessageCenter$b;->a:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p2, v0, p2

    const/4 v0, 0x1

    if-eq p2, v0, :cond_4

    const/4 v0, 0x2

    if-eq p2, v0, :cond_3

    const/4 v0, 0x3

    if-eq p2, v0, :cond_2

    const/4 v0, 0x4

    if-eq p2, v0, :cond_1

    goto :goto_0

    :cond_1
    iget-boolean p2, p1, Lcom/snaptube/taskManager/datasets/TaskInfo;->t:Z

    if-nez p2, :cond_5

    iget-wide p1, p1, Lcom/snaptube/taskManager/datasets/TaskInfo;->a:J

    invoke-virtual {p0, p1, p2}, Lcom/snaptube/taskManager/TaskMessageCenter;->p(J)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0, p1}, Lcom/snaptube/taskManager/TaskMessageCenter;->s(Lcom/snaptube/taskManager/datasets/TaskInfo;)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0, p1}, Lcom/snaptube/taskManager/TaskMessageCenter;->q(Lcom/snaptube/taskManager/datasets/TaskInfo;)V

    goto :goto_0

    :cond_4
    invoke-virtual {p0, p1}, Lcom/snaptube/taskManager/TaskMessageCenter;->r(Lcom/snaptube/taskManager/datasets/TaskInfo;)V

    :cond_5
    :goto_0
    return-void
.end method

.method public final synthetic k(Ljava/util/List;)V
    .locals 2

    invoke-virtual {p0}, Lcom/snaptube/taskManager/TaskMessageCenter;->i()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/snaptube/taskManager/TaskMessageCenter$d;

    invoke-virtual {v1, p1}, Lcom/snaptube/taskManager/TaskMessageCenter$d;->b(Ljava/util/List;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final synthetic l(Ljava/lang/String;Lcom/snaptube/taskManager/TaskMessageCenter$NotificationType;)V
    .locals 0

    invoke-static {p1}, Lcom/snaptube/taskManager/provider/TaskInfoDBUtils;->y0(Ljava/lang/String;)Lcom/snaptube/taskManager/datasets/TaskInfo;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/snaptube/taskManager/TaskMessageCenter;->j(Lcom/snaptube/taskManager/datasets/TaskInfo;Lcom/snaptube/taskManager/TaskMessageCenter$NotificationType;)V

    return-void
.end method

.method public final synthetic m(JLcom/snaptube/taskManager/TaskMessageCenter$NotificationType;)V
    .locals 0

    invoke-static {p1, p2}, Lcom/snaptube/taskManager/provider/TaskInfoDBUtils;->B0(J)Lcom/snaptube/taskManager/datasets/TaskInfo;

    move-result-object p1

    invoke-virtual {p0, p1, p3}, Lcom/snaptube/taskManager/TaskMessageCenter;->j(Lcom/snaptube/taskManager/datasets/TaskInfo;Lcom/snaptube/taskManager/TaskMessageCenter$NotificationType;)V

    return-void
.end method

.method public final synthetic n(Ljava/util/List;Lcom/snaptube/taskManager/TaskMessageCenter$NotificationType;)V
    .locals 2

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/snaptube/taskManager/provider/TaskInfoDBUtils;->B0(J)Lcom/snaptube/taskManager/datasets/TaskInfo;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/snaptube/taskManager/TaskMessageCenter;->j(Lcom/snaptube/taskManager/datasets/TaskInfo;Lcom/snaptube/taskManager/TaskMessageCenter$NotificationType;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final o(Ljava/util/List;)V
    .locals 2

    invoke-static {}, Lcom/snaptube/taskManager/provider/TaskInfoDBUtils;->C()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lo/d18;

    invoke-direct {v1, p0, p1}, Lo/d18;-><init>(Lcom/snaptube/taskManager/TaskMessageCenter;Ljava/util/List;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final p(J)V
    .locals 2

    invoke-virtual {p0}, Lcom/snaptube/taskManager/TaskMessageCenter;->i()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/snaptube/taskManager/TaskMessageCenter$d;

    invoke-virtual {v1, p1, p2}, Lcom/snaptube/taskManager/TaskMessageCenter$d;->c(J)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final q(Lcom/snaptube/taskManager/datasets/TaskInfo;)V
    .locals 2

    invoke-virtual {p0}, Lcom/snaptube/taskManager/TaskMessageCenter;->i()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/snaptube/taskManager/TaskMessageCenter$d;

    invoke-virtual {v1, p1}, Lcom/snaptube/taskManager/TaskMessageCenter$d;->d(Lcom/snaptube/taskManager/datasets/TaskInfo;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final r(Lcom/snaptube/taskManager/datasets/TaskInfo;)V
    .locals 2

    invoke-virtual {p0}, Lcom/snaptube/taskManager/TaskMessageCenter;->i()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/snaptube/taskManager/TaskMessageCenter$d;

    invoke-virtual {v1, p1}, Lcom/snaptube/taskManager/TaskMessageCenter$d;->a(Lcom/snaptube/taskManager/datasets/TaskInfo;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final s(Lcom/snaptube/taskManager/datasets/TaskInfo;)V
    .locals 3

    invoke-virtual {p0}, Lcom/snaptube/taskManager/TaskMessageCenter;->i()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/snaptube/taskManager/TaskMessageCenter$d;

    invoke-virtual {v1, p1}, Lcom/snaptube/taskManager/TaskMessageCenter$d;->e(Lcom/snaptube/taskManager/datasets/TaskInfo;)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/wandoujia/base/utils/RxBus;->d()Lcom/wandoujia/base/utils/RxBus;

    move-result-object v0

    new-instance v1, Lcom/wandoujia/base/utils/RxBus$d;

    const/16 v2, 0x2711

    invoke-direct {v1, v2, p1}, Lcom/wandoujia/base/utils/RxBus$d;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Lcom/wandoujia/base/utils/RxBus;->i(Lcom/wandoujia/base/utils/RxBus$d;)V

    return-void
.end method

.method public t(Landroid/net/Uri;)V
    .locals 2

    iget-object v0, p0, Lcom/snaptube/taskManager/TaskMessageCenter;->b:Landroid/os/Handler;

    new-instance v1, Lcom/snaptube/taskManager/TaskMessageCenter$a;

    invoke-direct {v1, p0, p1}, Lcom/snaptube/taskManager/TaskMessageCenter$a;-><init>(Lcom/snaptube/taskManager/TaskMessageCenter;Landroid/net/Uri;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final u(Ljava/lang/String;Lcom/snaptube/taskManager/TaskMessageCenter$NotificationType;)V
    .locals 2

    invoke-static {}, Lcom/snaptube/taskManager/provider/TaskInfoDBUtils;->C()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/snaptube/taskManager/c;

    invoke-direct {v1, p0, p1, p2}, Lcom/snaptube/taskManager/c;-><init>(Lcom/snaptube/taskManager/TaskMessageCenter;Ljava/lang/String;Lcom/snaptube/taskManager/TaskMessageCenter$NotificationType;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final v(JLcom/snaptube/taskManager/TaskMessageCenter$NotificationType;)V
    .locals 2

    invoke-static {}, Lcom/snaptube/taskManager/provider/TaskInfoDBUtils;->C()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/snaptube/taskManager/a;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/snaptube/taskManager/a;-><init>(Lcom/snaptube/taskManager/TaskMessageCenter;JLcom/snaptube/taskManager/TaskMessageCenter$NotificationType;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final w(Ljava/util/List;Lcom/snaptube/taskManager/TaskMessageCenter$NotificationType;)V
    .locals 2

    invoke-static {}, Lcom/snaptube/taskManager/provider/TaskInfoDBUtils;->C()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/snaptube/taskManager/b;

    invoke-direct {v1, p0, p1, p2}, Lcom/snaptube/taskManager/b;-><init>(Lcom/snaptube/taskManager/TaskMessageCenter;Ljava/util/List;Lcom/snaptube/taskManager/TaskMessageCenter$NotificationType;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public x(Lcom/snaptube/taskManager/TaskMessageCenter$d;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/snaptube/taskManager/TaskMessageCenter;->a:Lo/b29;

    invoke-virtual {v0, p1}, Lo/b29;->c(Ljava/lang/Object;)V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public y(Lcom/snaptube/taskManager/TaskMessageCenter$d;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/snaptube/taskManager/TaskMessageCenter;->a:Lo/b29;

    invoke-virtual {v0, p1}, Lo/b29;->d(Ljava/lang/Object;)V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
