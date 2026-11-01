.class public final Lcom/snaptube/plugin/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/snaptube/premium/receiver/ReceiverMonitor$c;


# static fields
.field public static final m:Ljava/lang/String; = "a"


# instance fields
.field public volatile a:Z

.field public volatile b:Z

.field public final c:Lcom/snaptube/plugin/PluginInfoCache;

.field public final d:Lrx/subjects/PublishSubject;

.field public final e:Ljava/util/Map;

.field public f:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

.field public g:I

.field public h:Landroid/content/Context;

.field public final i:Ljava/util/Set;

.field public j:Z

.field public k:Z

.field public final l:Lcom/snaptube/taskManager/TaskMessageCenter$d;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/snaptube/plugin/a;->a:Z

    iput-boolean v0, p0, Lcom/snaptube/plugin/a;->b:Z

    new-instance v1, Lcom/snaptube/plugin/PluginInfoCache;

    invoke-direct {v1}, Lcom/snaptube/plugin/PluginInfoCache;-><init>()V

    iput-object v1, p0, Lcom/snaptube/plugin/a;->c:Lcom/snaptube/plugin/PluginInfoCache;

    invoke-static {}, Lrx/subjects/PublishSubject;->Y0()Lrx/subjects/PublishSubject;

    move-result-object v1

    iput-object v1, p0, Lcom/snaptube/plugin/a;->d:Lrx/subjects/PublishSubject;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/snaptube/plugin/a;->e:Ljava/util/Map;

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/snaptube/plugin/a;->i:Ljava/util/Set;

    iput-boolean v0, p0, Lcom/snaptube/plugin/a;->j:Z

    iput-boolean v0, p0, Lcom/snaptube/plugin/a;->k:Z

    new-instance v0, Lcom/snaptube/plugin/a$a;

    invoke-direct {v0, p0}, Lcom/snaptube/plugin/a$a;-><init>(Lcom/snaptube/plugin/a;)V

    iput-object v0, p0, Lcom/snaptube/plugin/a;->l:Lcom/snaptube/taskManager/TaskMessageCenter$d;

    invoke-static {}, Lcom/snaptube/premium/app/PhoenixApplication;->z()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/snaptube/plugin/a;->h:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/snaptube/plugin/a;->K()V

    iget-object v0, p0, Lcom/snaptube/plugin/a;->h:Landroid/content/Context;

    const-wide/16 v1, 0x3

    invoke-virtual {p0, v0, v1, v2}, Lcom/snaptube/plugin/a;->M(Landroid/content/Context;J)V

    invoke-virtual {p0}, Lcom/snaptube/plugin/a;->s()V

    invoke-virtual {p0}, Lcom/snaptube/plugin/a;->N()V

    return-void
.end method

.method public static C()Z
    .locals 5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {}, Lcom/snaptube/premium/configs/Config;->u0()J

    move-result-wide v2

    sub-long/2addr v0, v2

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getPluginCheckMaxAge()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static synthetic F(Ljava/util/concurrent/CountDownLatch;)V
    .locals 1

    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    sget-object p0, Lcom/snaptube/plugin/a;->m:Ljava/lang/String;

    const-string v0, "requestLatch countdown"

    invoke-static {p0, v0}, Lcom/snaptube/util/ProductionEnv;->debugLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic H(Ljava/lang/Throwable;)V
    .locals 3

    sget-object v0, Lcom/snaptube/plugin/a;->m:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error when fetch plugin info: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/snaptube/util/ProductionEnv;->debugLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic a(Lcom/snaptube/plugin/a;Ljava/util/List;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/snaptube/plugin/a;->G(Ljava/util/List;)V

    return-void
.end method

.method public static synthetic b(Lcom/snaptube/plugin/a;Lcom/wandoujia/base/utils/RxBus$d;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/snaptube/plugin/a;->J(Lcom/wandoujia/base/utils/RxBus$d;)V

    return-void
.end method

.method public static synthetic c(Lcom/snaptube/plugin/a;)V
    .locals 0

    invoke-virtual {p0}, Lcom/snaptube/plugin/a;->I()V

    return-void
.end method

.method public static synthetic d(Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    invoke-static {p0}, Lcom/snaptube/plugin/a;->F(Ljava/util/concurrent/CountDownLatch;)V

    return-void
.end method

.method public static synthetic e(Ljava/lang/Throwable;)V
    .locals 0

    invoke-static {p0}, Lcom/snaptube/plugin/a;->H(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic f(Lcom/snaptube/plugin/a;)V
    .locals 0

    invoke-virtual {p0}, Lcom/snaptube/plugin/a;->E()V

    return-void
.end method

.method public static synthetic g(Lcom/snaptube/plugin/a;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/snaptube/plugin/a;->D(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public static bridge synthetic h(Lcom/snaptube/plugin/a;)I
    .locals 0

    iget p0, p0, Lcom/snaptube/plugin/a;->g:I

    return p0
.end method

.method public static bridge synthetic i(Lcom/snaptube/plugin/a;I)V
    .locals 0

    iput p1, p0, Lcom/snaptube/plugin/a;->g:I

    return-void
.end method

.method public static bridge synthetic j(Lcom/snaptube/plugin/a;Lcom/snaptube/plugin/PluginId;)Z
    .locals 0

    invoke-virtual {p0, p1}, Lcom/snaptube/plugin/a;->m(Lcom/snaptube/plugin/PluginId;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic k(Lcom/snaptube/plugin/a;Landroid/content/Context;J)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/snaptube/plugin/a;->M(Landroid/content/Context;J)V

    return-void
.end method

.method public static bridge synthetic l(Lcom/snaptube/taskManager/datasets/TaskInfo;)Lcom/snaptube/plugin/PluginInstallationStatus;
    .locals 0

    invoke-static {p0}, Lcom/snaptube/plugin/a;->u(Lcom/snaptube/taskManager/datasets/TaskInfo;)Lcom/snaptube/plugin/PluginInstallationStatus;

    move-result-object p0

    return-object p0
.end method

.method public static u(Lcom/snaptube/taskManager/datasets/TaskInfo;)Lcom/snaptube/plugin/PluginInstallationStatus;
    .locals 9

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/snaptube/taskManager/datasets/TaskInfo;->w:Ljava/lang/String;

    invoke-static {v1}, Lo/c16;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/snaptube/plugin/PluginId;->fromName(Ljava/lang/String;)Lcom/snaptube/plugin/PluginId;

    move-result-object v3

    if-nez v3, :cond_1

    return-object v0

    :cond_1
    sget-object v0, Lcom/snaptube/plugin/a$d;->a:[I

    iget-object v1, p0, Lcom/snaptube/taskManager/datasets/TaskInfo;->i:Lcom/snaptube/taskManager/datasets/TaskInfo$TaskStatus;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    sget-object v0, Lcom/snaptube/plugin/PluginInstallationStatus$Status;->UNKNOWN:Lcom/snaptube/plugin/PluginInstallationStatus$Status;

    :goto_0
    move-object v4, v0

    goto :goto_1

    :pswitch_0
    sget-object v0, Lcom/snaptube/plugin/PluginInstallationStatus$Status;->UNKNOWN:Lcom/snaptube/plugin/PluginInstallationStatus$Status;

    goto :goto_0

    :pswitch_1
    sget-object v0, Lcom/snaptube/plugin/PluginInstallationStatus$Status;->FAILED:Lcom/snaptube/plugin/PluginInstallationStatus$Status;

    goto :goto_0

    :pswitch_2
    sget-object v0, Lcom/snaptube/plugin/PluginInstallationStatus$Status;->SUCCESS:Lcom/snaptube/plugin/PluginInstallationStatus$Status;

    goto :goto_0

    :pswitch_3
    sget-object v0, Lcom/snaptube/plugin/PluginInstallationStatus$Status;->PAUSED:Lcom/snaptube/plugin/PluginInstallationStatus$Status;

    goto :goto_0

    :pswitch_4
    sget-object v0, Lcom/snaptube/plugin/PluginInstallationStatus$Status;->INSTALLING:Lcom/snaptube/plugin/PluginInstallationStatus$Status;

    goto :goto_0

    :pswitch_5
    sget-object v0, Lcom/snaptube/plugin/PluginInstallationStatus$Status;->PENDING:Lcom/snaptube/plugin/PluginInstallationStatus$Status;

    goto :goto_0

    :goto_1
    new-instance v0, Lcom/snaptube/plugin/PluginInstallationStatus;

    iget v5, p0, Lcom/snaptube/taskManager/datasets/TaskInfo;->c:I

    iget-wide v6, p0, Lcom/snaptube/taskManager/datasets/TaskInfo;->f:J

    const-string v8, ""

    move-object v2, v0

    invoke-direct/range {v2 .. v8}, Lcom/snaptube/plugin/PluginInstallationStatus;-><init>(Lcom/snaptube/plugin/PluginId;Lcom/snaptube/plugin/PluginInstallationStatus$Status;IJLjava/lang/String;)V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final A(Lcom/snaptube/plugin/PluginId;)I
    .locals 5

    iget-object v0, p0, Lcom/snaptube/plugin/a;->e:Ljava/util/Map;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/snaptube/plugin/a;->e:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x3

    if-lt v3, v4, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/2addr v2, v1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_1
    :goto_0
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v3, p0, Lcom/snaptube/plugin/a;->e:Ljava/util/Map;

    invoke-interface {v3, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0

    return v2

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final B(J)Z
    .locals 3

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getPluginMobileDownloadSizeLimit()J

    move-result-wide v0

    cmp-long v2, p1, v0

    if-lez v2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final synthetic D(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 3

    iget-object v0, p0, Lcom/snaptube/plugin/a;->i:Ljava/util/Set;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/snaptube/plugin/a;->i:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    iget-object v2, p0, Lcom/snaptube/plugin/a;->i:Ljava/util/Set;

    invoke-interface {v2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {p1}, Lcom/snaptube/plugin/PluginId;->fromName(Ljava/lang/String;)Lcom/snaptube/plugin/PluginId;

    move-result-object p1

    if-nez v1, :cond_1

    invoke-static {}, Lcom/snaptube/plugin/a;->C()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1, p3}, Lcom/snaptube/plugin/a;->O(Lcom/snaptube/plugin/PluginId;Z)V

    goto :goto_1

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/snaptube/plugin/a;->t()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/snaptube/plugin/a;->h:Landroid/content/Context;

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/snaptube/plugin/a;->p(Landroid/content/Context;Lcom/snaptube/plugin/PluginId;Ljava/lang/String;Z)Z

    :cond_2
    :goto_1
    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final synthetic E()V
    .locals 1

    invoke-static {}, Lcom/snaptube/plugin/a;->C()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/snaptube/plugin/a;->t()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/snaptube/premium/app/PhoenixApplication;->z()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/snaptube/plugin/a;->n(Landroid/content/Context;)Z

    :cond_1
    return-void
.end method

.method public final synthetic G(Ljava/util/List;)V
    .locals 4

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dayuwuxian/em/api/proto/PluginInfo;

    iget-object v1, p0, Lcom/snaptube/plugin/a;->c:Lcom/snaptube/plugin/PluginInfoCache;

    invoke-virtual {v1, v0}, Lcom/snaptube/plugin/PluginInfoCache;->d(Lcom/dayuwuxian/em/api/proto/PluginInfo;)V

    sget-object v1, Lcom/snaptube/plugin/a;->m:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Plugin info: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/snaptube/util/ProductionEnv;->debugLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final synthetic I()V
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/snaptube/plugin/a;->c:Lcom/snaptube/plugin/PluginInfoCache;

    invoke-virtual {v2}, Lcom/snaptube/plugin/PluginInfoCache;->c()Z

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/snaptube/premium/configs/Config;->F5(JZ)V

    sget-object v0, Lcom/snaptube/plugin/a;->m:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Last check time:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", success:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/snaptube/plugin/a;->c:Lcom/snaptube/plugin/PluginInfoCache;

    invoke-virtual {v2}, Lcom/snaptube/plugin/PluginInfoCache;->c()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/snaptube/util/ProductionEnv;->debugLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final synthetic J(Lcom/wandoujia/base/utils/RxBus$d;)V
    .locals 2

    iget-object v0, p1, Lcom/wandoujia/base/utils/RxBus$d;->d:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object p1, p1, Lcom/wandoujia/base/utils/RxBus$d;->e:Ljava/lang/Object;

    instance-of v1, p1, Ljava/lang/Boolean;

    if-eqz v1, :cond_1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    goto :goto_1

    :cond_1
    const/4 p1, 0x1

    :goto_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "upgrade_when_plugin_fails"

    invoke-virtual {p0, v0, v1, p1}, Lcom/snaptube/plugin/a;->r(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_2
    return-void
.end method

.method public final K()V
    .locals 2

    const-class v0, Lcom/snaptube/plugin/a;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/snaptube/plugin/a;->b:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/snaptube/plugin/a;->b:Z

    invoke-static {}, Lcom/snaptube/premium/receiver/ReceiverMonitor;->d()Lcom/snaptube/premium/receiver/ReceiverMonitor;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/snaptube/premium/receiver/ReceiverMonitor;->c(Lcom/snaptube/premium/receiver/ReceiverMonitor$c;)V

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final L()V
    .locals 3

    iget-object v0, p0, Lcom/snaptube/plugin/a;->l:Lcom/snaptube/taskManager/TaskMessageCenter$d;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/snaptube/plugin/a;->a:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/snaptube/plugin/a;->a:Z

    invoke-static {}, Lcom/snaptube/premium/app/PhoenixApplication;->K()Lcom/snaptube/taskManager/TaskMessageCenter;

    move-result-object v1

    iget-object v2, p0, Lcom/snaptube/plugin/a;->l:Lcom/snaptube/taskManager/TaskMessageCenter$d;

    invoke-virtual {v1, v2}, Lcom/snaptube/taskManager/TaskMessageCenter;->x(Lcom/snaptube/taskManager/TaskMessageCenter$d;)V

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final M(Landroid/content/Context;J)V
    .locals 2

    invoke-static {}, Lcom/snaptube/premium/configs/Config;->C2()Z

    move-result v0

    if-nez v0, :cond_2

    iget v0, p0, Lcom/snaptube/plugin/a;->g:I

    const/16 v1, 0xa

    if-le v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/snaptube/plugin/a;->f:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(I)V

    iput-object v0, p0, Lcom/snaptube/plugin/a;->f:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    :cond_1
    iget-object v0, p0, Lcom/snaptube/plugin/a;->f:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    new-instance v1, Lcom/snaptube/plugin/a$c;

    invoke-direct {v1, p0, p1}, Lcom/snaptube/plugin/a$c;-><init>(Lcom/snaptube/plugin/a;Landroid/content/Context;)V

    sget-object p1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, p2, p3, p1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    goto :goto_1

    :cond_2
    :goto_0
    iget-object p2, p0, Lcom/snaptube/plugin/a;->f:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    if-eqz p2, :cond_3

    invoke-virtual {p2}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->shutdown()V

    const/4 p2, 0x0

    iput-object p2, p0, Lcom/snaptube/plugin/a;->f:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    :cond_3
    invoke-virtual {p0, p1}, Lcom/snaptube/plugin/a;->n(Landroid/content/Context;)Z

    :goto_1
    return-void
.end method

.method public final N()V
    .locals 2

    invoke-static {}, Lcom/wandoujia/base/utils/RxBus;->d()Lcom/wandoujia/base/utils/RxBus;

    move-result-object v0

    const/16 v1, 0x453

    filled-new-array {v1}, [I

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/wandoujia/base/utils/RxBus;->c([I)Lrx/c;

    move-result-object v0

    invoke-virtual {v0}, Lrx/c;->c0()Lrx/c;

    move-result-object v0

    invoke-static {}, Lo/sh;->c()Lrx/d;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/c;->Y(Lrx/d;)Lrx/c;

    move-result-object v0

    new-instance v1, Lo/p06;

    invoke-direct {v1, p0}, Lo/p06;-><init>(Lcom/snaptube/plugin/a;)V

    invoke-virtual {v0, v1}, Lrx/c;->t0(Lo/l3;)Lo/wu7;

    return-void
.end method

.method public final O(Lcom/snaptube/plugin/PluginId;Z)V
    .locals 1

    if-nez p2, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/snaptube/plugin/a;->v(Lcom/snaptube/plugin/PluginId;)Lcom/dayuwuxian/em/api/proto/PluginInfo;

    move-result-object p2

    if-nez p2, :cond_1

    return-void

    :cond_1
    iget-object v0, p2, Lcom/dayuwuxian/em/api/proto/PluginInfo;->name:Ljava/lang/String;

    iget-object p2, p2, Lcom/dayuwuxian/em/api/proto/PluginInfo;->version:Ljava/lang/String;

    invoke-static {v0, p2}, Lo/c16;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/snaptube/taskManager/provider/TaskInfoDBUtils;->R0(Ljava/lang/String;)Lcom/snaptube/taskManager/datasets/TaskInfo;

    move-result-object p2

    if-eqz p2, :cond_3

    invoke-static {p2}, Lcom/snaptube/taskManager/provider/TaskInfoDBUtils;->U(Lcom/snaptube/taskManager/datasets/TaskInfo;)Z

    move-result p2

    if-nez p2, :cond_2

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/wandoujia/base/utils/RxBus;->d()Lcom/wandoujia/base/utils/RxBus;

    move-result-object p2

    const/16 v0, 0x454

    invoke-virtual {p2, v0, p1}, Lcom/wandoujia/base/utils/RxBus;->g(ILjava/lang/Object;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public P(Landroid/content/Context;)Z
    .locals 9

    invoke-static {p1}, Lo/q55;->B(Landroid/content/Context;)Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-static {}, Lcom/snaptube/premium/configs/Config;->C2()Z

    move-result p1

    if-nez p1, :cond_1

    return v0

    :cond_1
    invoke-static {}, Lcom/snaptube/premium/configs/Config;->C2()Z

    move-result p1

    if-nez p1, :cond_2

    invoke-virtual {p0}, Lcom/snaptube/plugin/a;->y()Lrx/subjects/PublishSubject;

    move-result-object p1

    new-instance v8, Lcom/snaptube/plugin/PluginInstallationStatus;

    sget-object v2, Lcom/snaptube/plugin/PluginId;->FFMPEG:Lcom/snaptube/plugin/PluginId;

    sget-object v3, Lcom/snaptube/plugin/PluginInstallationStatus$Status;->FAILED:Lcom/snaptube/plugin/PluginInstallationStatus$Status;

    const-wide/16 v5, 0x0

    const-string v7, "fetch Plugin failed"

    const/4 v4, 0x0

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lcom/snaptube/plugin/PluginInstallationStatus;-><init>(Lcom/snaptube/plugin/PluginId;Lcom/snaptube/plugin/PluginInstallationStatus$Status;IJLjava/lang/String;)V

    invoke-virtual {p1, v8}, Lrx/subjects/PublishSubject;->onNext(Ljava/lang/Object;)V

    return v0

    :cond_2
    invoke-static {}, Lcom/snaptube/plugin/PluginId;->values()[Lcom/snaptube/plugin/PluginId;

    move-result-object p1

    array-length v1, p1

    :goto_0
    if-ge v0, v1, :cond_6

    aget-object v2, p1, v0

    sget-object v3, Lcom/snaptube/plugin/PluginId;->FFMPEG:Lcom/snaptube/plugin/PluginId;

    if-eq v3, v2, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {p0, v2}, Lcom/snaptube/plugin/a;->z(Lcom/snaptube/plugin/PluginId;)Lcom/snaptube/plugin/PluginStatus;

    move-result-object v3

    sget-object v4, Lcom/snaptube/plugin/PluginStatus;->NOT_INSTALLED:Lcom/snaptube/plugin/PluginStatus;

    if-eq v3, v4, :cond_4

    sget-object v4, Lcom/snaptube/plugin/PluginStatus;->NEED_UPGRADE:Lcom/snaptube/plugin/PluginStatus;

    if-ne v3, v4, :cond_5

    :cond_4
    const-string v3, "ffmpeg"

    invoke-virtual {p0, v2, v3}, Lcom/snaptube/plugin/a;->Q(Lcom/snaptube/plugin/PluginId;Ljava/lang/String;)Z

    :cond_5
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_6
    const/4 p1, 0x1

    return p1
.end method

.method public Q(Lcom/snaptube/plugin/PluginId;Ljava/lang/String;)Z
    .locals 10

    invoke-virtual {p0, p1}, Lcom/snaptube/plugin/a;->v(Lcom/snaptube/plugin/PluginId;)Lcom/dayuwuxian/em/api/proto/PluginInfo;

    move-result-object v0

    invoke-static {v0, p2}, Lo/c16;->j(Lcom/dayuwuxian/em/api/proto/PluginInfo;Ljava/lang/String;)Lcom/snaptube/taskManager/datasets/TaskInfo;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-virtual {p0, p2, v0}, Lcom/snaptube/plugin/a;->x(Ljava/lang/String;Lcom/dayuwuxian/em/api/proto/PluginInfo;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p0}, Lcom/snaptube/plugin/a;->y()Lrx/subjects/PublishSubject;

    move-result-object v0

    new-instance v9, Lcom/snaptube/plugin/PluginInstallationStatus;

    sget-object v4, Lcom/snaptube/plugin/PluginInstallationStatus$Status;->FAILED:Lcom/snaptube/plugin/PluginInstallationStatus$Status;

    const-wide/16 v6, 0x0

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v5, 0x0

    move-object v2, v9

    move-object v3, p1

    invoke-direct/range {v2 .. v8}, Lcom/snaptube/plugin/PluginInstallationStatus;-><init>(Lcom/snaptube/plugin/PluginId;Lcom/snaptube/plugin/PluginInstallationStatus$Status;IJLjava/lang/String;)V

    invoke-virtual {v0, v9}, Lrx/subjects/PublishSubject;->onNext(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/snaptube/plugin/a;->L()V

    invoke-virtual {p0, p1}, Lcom/snaptube/plugin/a;->A(Lcom/snaptube/plugin/PluginId;)I

    const/4 p1, 0x0

    invoke-static {v1, p1}, Lcom/snaptube/taskManager/provider/TaskInfoDBUtils;->l(Lcom/snaptube/taskManager/datasets/TaskInfo;Lcom/snaptube/extractor/pluginlib/models/Format;)V

    :goto_0
    if-eqz v1, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    return p1
.end method

.method public final m(Lcom/snaptube/plugin/PluginId;)Z
    .locals 2

    iget-object v0, p0, Lcom/snaptube/plugin/a;->e:Ljava/util/Map;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/snaptube/plugin/a;->e:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v1, 0x3

    if-ge p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    monitor-exit v0

    return p1

    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public n(Landroid/content/Context;)Z
    .locals 2

    iget-boolean v0, p0, Lcom/snaptube/plugin/a;->k:Z

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-static {}, Lcom/snaptube/plugin/PluginId;->values()[Lcom/snaptube/plugin/PluginId;

    move-result-object v0

    const-string v1, "auto_upgrade"

    invoke-virtual {p0, p1, v0, v1}, Lcom/snaptube/plugin/a;->o(Landroid/content/Context;[Lcom/snaptube/plugin/PluginId;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public final o(Landroid/content/Context;[Lcom/snaptube/plugin/PluginId;Ljava/lang/String;)Z
    .locals 8

    invoke-static {}, Lcom/snaptube/premium/configs/Config;->C2()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-static {p1}, Lo/q55;->G(Landroid/content/Context;)Z

    move-result v0

    const/4 v2, 0x1

    xor-int/2addr v0, v2

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->isDownloadPluginInMobileNetworkEnabled()Z

    move-result v3

    array-length v4, p2

    :goto_0
    if-ge v1, v4, :cond_8

    aget-object v5, p2, v1

    invoke-virtual {p0, v5}, Lcom/snaptube/plugin/a;->v(Lcom/snaptube/plugin/PluginId;)Lcom/dayuwuxian/em/api/proto/PluginInfo;

    move-result-object v6

    if-nez v6, :cond_1

    goto :goto_1

    :cond_1
    if-eqz v0, :cond_4

    sget-object v7, Lcom/snaptube/plugin/PluginId;->FFMPEG:Lcom/snaptube/plugin/PluginId;

    if-ne v5, v7, :cond_2

    invoke-static {}, Lcom/snaptube/premium/configs/Config;->R3()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-virtual {p0, p1}, Lcom/snaptube/plugin/a;->P(Landroid/content/Context;)Z

    goto :goto_1

    :cond_2
    if-nez v3, :cond_3

    goto :goto_1

    :cond_3
    iget-object v6, v6, Lcom/dayuwuxian/em/api/proto/PluginInfo;->size:Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {p0, v6, v7}, Lcom/snaptube/plugin/a;->B(J)Z

    move-result v6

    if-eqz v6, :cond_4

    goto :goto_1

    :cond_4
    invoke-virtual {p0, v5}, Lcom/snaptube/plugin/a;->z(Lcom/snaptube/plugin/PluginId;)Lcom/snaptube/plugin/PluginStatus;

    move-result-object v6

    invoke-virtual {v5}, Lcom/snaptube/plugin/PluginId;->shouldDownload()Z

    move-result v7

    if-nez v7, :cond_5

    goto :goto_1

    :cond_5
    sget-object v7, Lcom/snaptube/plugin/PluginStatus;->NOT_INSTALLED:Lcom/snaptube/plugin/PluginStatus;

    if-eq v6, v7, :cond_6

    sget-object v7, Lcom/snaptube/plugin/PluginStatus;->NEED_UPGRADE:Lcom/snaptube/plugin/PluginStatus;

    if-ne v6, v7, :cond_7

    :cond_6
    invoke-virtual {p0, v5, p3}, Lcom/snaptube/plugin/a;->Q(Lcom/snaptube/plugin/PluginId;Ljava/lang/String;)Z

    :cond_7
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_8
    return v2
.end method

.method public final p(Landroid/content/Context;Lcom/snaptube/plugin/PluginId;Ljava/lang/String;Z)Z
    .locals 3

    invoke-static {}, Lcom/snaptube/premium/configs/Config;->C2()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-static {p1}, Lo/q55;->G(Landroid/content/Context;)Z

    move-result p1

    const/4 v0, 0x1

    xor-int/2addr p1, v0

    if-eqz p1, :cond_1

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->isDownloadPluginInMobileNetworkEnabled()Z

    move-result p1

    if-nez p1, :cond_1

    return v1

    :cond_1
    invoke-virtual {p0, p2}, Lcom/snaptube/plugin/a;->z(Lcom/snaptube/plugin/PluginId;)Lcom/snaptube/plugin/PluginStatus;

    move-result-object p1

    invoke-virtual {p2}, Lcom/snaptube/plugin/PluginId;->shouldDownload()Z

    move-result v2

    if-nez v2, :cond_2

    return v1

    :cond_2
    iget-boolean v1, p0, Lcom/snaptube/plugin/a;->j:Z

    if-nez v1, :cond_3

    sget-object v1, Lcom/snaptube/plugin/PluginStatus;->NEED_UPGRADE:Lcom/snaptube/plugin/PluginStatus;

    if-ne p1, v1, :cond_4

    :cond_3
    invoke-virtual {p0, p2, p3}, Lcom/snaptube/plugin/a;->Q(Lcom/snaptube/plugin/PluginId;Ljava/lang/String;)Z

    if-eqz p4, :cond_4

    invoke-static {}, Lcom/wandoujia/base/utils/RxBus;->d()Lcom/wandoujia/base/utils/RxBus;

    move-result-object p1

    const/16 p3, 0x454

    invoke-virtual {p1, p3, p2}, Lcom/wandoujia/base/utils/RxBus;->g(ILjava/lang/Object;)V

    :cond_4
    return v0
.end method

.method public q()V
    .locals 2

    sget-object v0, Lcom/snaptube/plugin/PluginId;->FFMPEG:Lcom/snaptube/plugin/PluginId;

    invoke-virtual {v0}, Lcom/snaptube/plugin/PluginId;->getCurrentVersion()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lo/c16;->c(Lcom/snaptube/plugin/PluginId;Ljava/lang/String;)V

    return-void
.end method

.method public final r(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    new-instance v0, Lo/u06;

    invoke-direct {v0, p0, p1, p2, p3}, Lo/u06;-><init>(Lcom/snaptube/plugin/a;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-static {v0}, Lcom/phoenix/utils/ThreadPool;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final s()V
    .locals 1

    new-instance v0, Lo/o06;

    invoke-direct {v0, p0}, Lo/o06;-><init>(Lcom/snaptube/plugin/a;)V

    invoke-static {v0}, Lcom/phoenix/utils/ThreadPool;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public declared-synchronized t()Z
    .locals 5

    monitor-enter p0

    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    invoke-static {}, Lo/c16;->e()Lrx/c;

    move-result-object v1

    sget-object v2, Lo/a58;->c:Lrx/d;

    invoke-virtual {v1, v2}, Lrx/c;->Y(Lrx/d;)Lrx/c;

    move-result-object v1

    new-instance v2, Lo/q06;

    invoke-direct {v2, v0}, Lo/q06;-><init>(Ljava/util/concurrent/CountDownLatch;)V

    invoke-virtual {v1, v2}, Lrx/c;->A(Lo/k3;)Lrx/c;

    move-result-object v1

    new-instance v2, Lo/r06;

    invoke-direct {v2, p0}, Lo/r06;-><init>(Lcom/snaptube/plugin/a;)V

    new-instance v3, Lo/s06;

    invoke-direct {v3}, Lo/s06;-><init>()V

    new-instance v4, Lo/t06;

    invoke-direct {v4, p0}, Lo/t06;-><init>(Lcom/snaptube/plugin/a;)V

    invoke-virtual {v1, v2, v3, v4}, Lrx/c;->v0(Lo/l3;Lo/l3;Lo/k3;)Lo/wu7;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    sget-object v1, Lcom/snaptube/plugin/a;->m:Ljava/lang/String;

    const-string v2, "requestLatch before await"

    invoke-static {v1, v2}, Lcom/snaptube/util/ProductionEnv;->debugLog(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V

    const-string v0, "requestLatch after await"

    invoke-static {v1, v0}, Lcom/snaptube/util/ProductionEnv;->debugLog(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    sget-object v0, Lcom/snaptube/plugin/a;->m:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fetchPluginInfo result returned: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/snaptube/plugin/a;->c:Lcom/snaptube/plugin/PluginInfoCache;

    invoke-virtual {v2}, Lcom/snaptube/plugin/PluginInfoCache;->c()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/snaptube/util/ProductionEnv;->debugLog(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/snaptube/plugin/a;->c:Lcom/snaptube/plugin/PluginInfoCache;

    invoke-virtual {v0}, Lcom/snaptube/plugin/PluginInfoCache;->c()Z

    move-result v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return v0

    :cond_0
    :try_start_3
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "fetchPluginInfo() must not be invoked in main thread!"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :goto_1
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method

.method public v(Lcom/snaptube/plugin/PluginId;)Lcom/dayuwuxian/em/api/proto/PluginInfo;
    .locals 1

    iget-object v0, p0, Lcom/snaptube/plugin/a;->c:Lcom/snaptube/plugin/PluginInfoCache;

    invoke-virtual {v0, p1}, Lcom/snaptube/plugin/PluginInfoCache;->b(Lcom/snaptube/plugin/PluginId;)Lcom/dayuwuxian/em/api/proto/PluginInfo;

    move-result-object p1

    return-object p1
.end method

.method public w(Landroid/net/NetworkInfo;)V
    .locals 0

    new-instance p1, Lcom/snaptube/plugin/a$b;

    invoke-direct {p1, p0}, Lcom/snaptube/plugin/a$b;-><init>(Lcom/snaptube/plugin/a;)V

    invoke-static {p1}, Lcom/phoenix/utils/ThreadPool;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final x(Ljava/lang/String;Lcom/dayuwuxian/em/api/proto/PluginInfo;)Ljava/lang/StringBuilder;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "refer = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "taskInfo == null"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p2, :cond_0

    const-string p1, "pluginInfo == null"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    const-string p1, "name:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p2, Lcom/dayuwuxian/em/api/proto/PluginInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "support:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p2, Lcom/dayuwuxian/em/api/proto/PluginInfo;->supported:Ljava/lang/Boolean;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "version:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p2, Lcom/dayuwuxian/em/api/proto/PluginInfo;->version:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "cpuabi:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p2, Lcom/dayuwuxian/em/api/proto/PluginInfo;->cpu_abi:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "url:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p2, Lcom/dayuwuxian/em/api/proto/PluginInfo;->url:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "md5"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p2, Lcom/dayuwuxian/em/api/proto/PluginInfo;->md5:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p2, Lcom/dayuwuxian/em/api/proto/PluginInfo;->name:Ljava/lang/String;

    invoke-static {p1}, Lcom/snaptube/plugin/PluginId;->fromName(Ljava/lang/String;)Lcom/snaptube/plugin/PluginId;

    move-result-object p1

    if-nez p1, :cond_1

    const-string p1, "pluginIdentity == null"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    const-string p2, "pluginIdentity minVersion:"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/snaptube/plugin/PluginId;->getRequiredMinVersion()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    return-object v0
.end method

.method public y()Lrx/subjects/PublishSubject;
    .locals 1

    iget-object v0, p0, Lcom/snaptube/plugin/a;->d:Lrx/subjects/PublishSubject;

    return-object v0
.end method

.method public z(Lcom/snaptube/plugin/PluginId;)Lcom/snaptube/plugin/PluginStatus;
    .locals 3

    sget-object v0, Lcom/snaptube/plugin/PluginStatus;->NOT_INSTALLED:Lcom/snaptube/plugin/PluginStatus;

    invoke-static {p1}, Lo/c16;->o(Lcom/snaptube/plugin/PluginId;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v0, Lcom/snaptube/plugin/PluginStatus;->INSTALLED:Lcom/snaptube/plugin/PluginStatus;

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/snaptube/plugin/PluginId;->hasLocalBackup()Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v0, Lcom/snaptube/plugin/PluginStatus;->INSTALLED:Lcom/snaptube/plugin/PluginStatus;

    invoke-virtual {p1}, Lcom/snaptube/plugin/PluginId;->getRequiredMinVersion()Ljava/lang/String;

    move-result-object v1

    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/snaptube/plugin/a;->c:Lcom/snaptube/plugin/PluginInfoCache;

    invoke-virtual {v2, p1}, Lcom/snaptube/plugin/PluginInfoCache;->b(Lcom/snaptube/plugin/PluginId;)Lcom/dayuwuxian/em/api/proto/PluginInfo;

    move-result-object p1

    if-nez p1, :cond_2

    return-object v0

    :cond_2
    iget-object v2, p1, Lcom/dayuwuxian/em/api/proto/PluginInfo;->supported:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p1, Lcom/dayuwuxian/em/api/proto/PluginInfo;->version:Ljava/lang/String;

    invoke-static {v1, v2}, Lo/c16;->v(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    sget-object p1, Lcom/snaptube/plugin/PluginStatus;->NEED_UPGRADE:Lcom/snaptube/plugin/PluginStatus;

    return-object p1

    :cond_3
    iget-object p1, p1, Lcom/dayuwuxian/em/api/proto/PluginInfo;->supported:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_4

    sget-object p1, Lcom/snaptube/plugin/PluginStatus;->INSTALLED:Lcom/snaptube/plugin/PluginStatus;

    if-eq v0, p1, :cond_4

    sget-object p1, Lcom/snaptube/plugin/PluginStatus;->UNSUPPORTED:Lcom/snaptube/plugin/PluginStatus;

    return-object p1

    :cond_4
    return-object v0
.end method
