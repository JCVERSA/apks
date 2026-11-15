.class public Lcn/com/custommma/mobile/tracking/api/SendMessageThread;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field private connectUtil:Lcn/com/custommma/mobile/tracking/util/a;

.field private context:Landroid/content/Context;

.field private isInterruptThread:Z

.field private isNormalList:Z

.field private object:Ljava/lang/Object;

.field private requestList:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private spName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/content/Context;Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/com/custommma/mobile/tracking/api/SendMessageThread;->isInterruptThread:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcn/com/custommma/mobile/tracking/api/SendMessageThread;->connectUtil:Lcn/com/custommma/mobile/tracking/util/a;

    iput-object v0, p0, Lcn/com/custommma/mobile/tracking/api/SendMessageThread;->object:Ljava/lang/Object;

    iput-object v0, p0, Lcn/com/custommma/mobile/tracking/api/SendMessageThread;->requestList:Ljava/util/HashSet;

    iput-object p1, p0, Lcn/com/custommma/mobile/tracking/api/SendMessageThread;->spName:Ljava/lang/String;

    iput-object p2, p0, Lcn/com/custommma/mobile/tracking/api/SendMessageThread;->context:Landroid/content/Context;

    iput-boolean p3, p0, Lcn/com/custommma/mobile/tracking/api/SendMessageThread;->isNormalList:Z

    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcn/com/custommma/mobile/tracking/api/SendMessageThread;->requestList:Ljava/util/HashSet;

    invoke-static {}, Lcn/com/custommma/mobile/tracking/util/a;->b()Lcn/com/custommma/mobile/tracking/util/a;

    move-result-object p1

    iput-object p1, p0, Lcn/com/custommma/mobile/tracking/api/SendMessageThread;->connectUtil:Lcn/com/custommma/mobile/tracking/util/a;

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/com/custommma/mobile/tracking/api/SendMessageThread;->object:Ljava/lang/Object;

    return-void
.end method

.method private handleFailedResult(Ljava/lang/String;J)V
    .locals 6

    iget-boolean v0, p0, Lcn/com/custommma/mobile/tracking/api/SendMessageThread;->isNormalList:Z

    const-wide/16 v1, 0x1

    const-string v3, "cn.com.mma.mobile.tracking.mgmi_ssp_falied"

    const-string v4, "cn.com.mma.mobile.tracking.mgmi_ssp_other"

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/com/custommma/mobile/tracking/api/SendMessageThread;->context:Landroid/content/Context;

    const-string v5, "cn.com.mma.mobile.tracking.mgmi_ssp_normal"

    invoke-static {v0, v5, p1}, Lng9;->h(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    iget-object v0, p0, Lcn/com/custommma/mobile/tracking/api/SendMessageThread;->context:Landroid/content/Context;

    invoke-static {v0, v3, p1, p2, p3}, Lng9;->e(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)V

    iget-object p2, p0, Lcn/com/custommma/mobile/tracking/api/SendMessageThread;->context:Landroid/content/Context;

    invoke-static {p2, v4, p1, v1, v2}, Lng9;->e(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)V

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcn/com/custommma/mobile/tracking/api/SendMessageThread;->context:Landroid/content/Context;

    invoke-static {p2, v4, p1}, Lng9;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide p2

    add-long/2addr p2, v1

    const-wide/16 v0, 0x3

    cmp-long v0, p2, v0

    if-lez v0, :cond_1

    iget-object p2, p0, Lcn/com/custommma/mobile/tracking/api/SendMessageThread;->context:Landroid/content/Context;

    invoke-static {p2, v3, p1}, Lng9;->h(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    iget-object p2, p0, Lcn/com/custommma/mobile/tracking/api/SendMessageThread;->context:Landroid/content/Context;

    invoke-static {p2, v4, p1}, Lng9;->h(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcn/com/custommma/mobile/tracking/api/SendMessageThread;->context:Landroid/content/Context;

    invoke-static {v0, v4, p1, p2, p3}, Lng9;->e(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)V

    :goto_0
    iget-object p0, p0, Lcn/com/custommma/mobile/tracking/api/SendMessageThread;->requestList:Ljava/util/HashSet;

    invoke-virtual {p0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method private handleSuccessResult(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcn/com/custommma/mobile/tracking/api/SendMessageThread;->context:Landroid/content/Context;

    invoke-static {v0, p1, p2}, Lng9;->h(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    iget-boolean p1, p0, Lcn/com/custommma/mobile/tracking/api/SendMessageThread;->isNormalList:Z

    if-nez p1, :cond_0

    iget-object p1, p0, Lcn/com/custommma/mobile/tracking/api/SendMessageThread;->context:Landroid/content/Context;

    const-string v0, "cn.com.mma.mobile.tracking.mgmi_ssp_other"

    invoke-static {p1, v0, p2}, Lng9;->h(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    :cond_0
    iget-object p0, p0, Lcn/com/custommma/mobile/tracking/api/SendMessageThread;->requestList:Ljava/util/HashSet;

    invoke-virtual {p0, p2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method private declared-synchronized sendData()V
    .locals 8

    monitor-enter p0

    :try_start_0
    const-class v0, Lcn/com/custommma/mobile/tracking/api/SendMessageThread;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v1, p0, Lcn/com/custommma/mobile/tracking/api/SendMessageThread;->context:Landroid/content/Context;

    iget-object v2, p0, Lcn/com/custommma/mobile/tracking/api/SendMessageThread;->spName:Ljava/lang/String;

    invoke-static {v1, v2}, Lng9;->b(Landroid/content/Context;Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_8

    :try_start_2
    iget-boolean v2, p0, Lcn/com/custommma/mobile/tracking/api/SendMessageThread;->isInterruptThread:Z

    if-nez v2, :cond_7

    iget-object v2, p0, Lcn/com/custommma/mobile/tracking/api/SendMessageThread;->context:Landroid/content/Context;

    invoke-static {v2}, Lcn/com/custommma/mobile/tracking/util/DeviceInfoUtil;->w(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_1

    goto/16 :goto_2

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcn/com/custommma/mobile/tracking/api/SendMessageThread;->context:Landroid/content/Context;

    iget-object v4, p0, Lcn/com/custommma/mobile/tracking/api/SendMessageThread;->spName:Ljava/lang/String;

    invoke-static {v3, v4, v2}, Lng9;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    cmp-long v5, v3, v5

    if-lez v5, :cond_6

    iget-object v5, p0, Lcn/com/custommma/mobile/tracking/api/SendMessageThread;->requestList:Ljava/util/HashSet;

    invoke-virtual {v5, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v5, :cond_2

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v1

    goto/16 :goto_4

    :cond_2
    :try_start_4
    iget-object v5, p0, Lcn/com/custommma/mobile/tracking/api/SendMessageThread;->requestList:Ljava/util/HashSet;

    invoke-virtual {v5, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v5, p0, Lcn/com/custommma/mobile/tracking/api/SendMessageThread;->connectUtil:Lcn/com/custommma/mobile/tracking/util/a;

    invoke-virtual {v5, v2}, Lcn/com/custommma/mobile/tracking/util/a;->c(Ljava/lang/String;)[B

    move-result-object v5

    sget-object v6, Lcn/com/custommma/mobile/tracking/api/a;->d:Lcn/com/custommma/mobile/tracking/util/LRU;

    invoke-virtual {v6, v2}, Lcn/com/custommma/mobile/tracking/util/LRU;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcn/com/custommma/mobile/tracking/viewability/origin/CallBack;

    sget-object v7, Lcn/com/custommma/mobile/tracking/api/a;->e:Lcn/com/custommma/mobile/tracking/util/LRU;

    invoke-virtual {v7, v2}, Lcn/com/custommma/mobile/tracking/util/LRU;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcn/com/custommma/mobile/tracking/api/ViewAbilityHandler$MonitorType;

    if-nez v5, :cond_4

    invoke-direct {p0, v2, v3, v4}, Lcn/com/custommma/mobile/tracking/api/SendMessageThread;->handleFailedResult(Ljava/lang/String;J)V

    if-eqz v6, :cond_3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ":MMA_URL Failed To Send"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v6, v3}, Lcn/com/custommma/mobile/tracking/viewability/origin/CallBack;->onFailed(Ljava/lang/String;)V

    goto :goto_1

    :catch_0
    move-exception v2

    goto :goto_3

    :cond_3
    :goto_1
    sget-object v3, Lcn/com/custommma/mobile/tracking/api/a;->d:Lcn/com/custommma/mobile/tracking/util/LRU;

    invoke-virtual {v3, v2}, Lcn/com/custommma/mobile/tracking/util/LRU;->d(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcn/com/custommma/mobile/tracking/api/a;->e:Lcn/com/custommma/mobile/tracking/util/LRU;

    invoke-virtual {v3, v2}, Lcn/com/custommma/mobile/tracking/util/LRU;->d(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    monitor-exit p0

    return-void

    :cond_4
    if-eqz v6, :cond_5

    :try_start_6
    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v6, v3}, Lcn/com/custommma/mobile/tracking/viewability/origin/CallBack;->onSuccess(Ljava/lang/String;)V

    :cond_5
    sget-object v3, Lcn/com/custommma/mobile/tracking/api/a;->d:Lcn/com/custommma/mobile/tracking/util/LRU;

    invoke-virtual {v3, v2}, Lcn/com/custommma/mobile/tracking/util/LRU;->d(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcn/com/custommma/mobile/tracking/api/a;->e:Lcn/com/custommma/mobile/tracking/util/LRU;

    invoke-virtual {v3, v2}, Lcn/com/custommma/mobile/tracking/util/LRU;->d(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "record ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lna1;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "] upload succeed."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lrq5;->c(Ljava/lang/String;)V

    iget-object v3, p0, Lcn/com/custommma/mobile/tracking/api/SendMessageThread;->spName:Ljava/lang/String;

    invoke-direct {p0, v3, v2}, Lcn/com/custommma/mobile/tracking/api/SendMessageThread;->handleSuccessResult(Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean v2, Lcn/com/custommma/mobile/tracking/api/Countly;->n:Z

    if-eqz v2, :cond_0

    new-instance v2, Landroid/content/Intent;

    sget-object v3, Lcn/com/custommma/mobile/tracking/api/Countly;->q:Ljava/lang/String;

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcn/com/custommma/mobile/tracking/api/SendMessageThread;->context:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_6
    iget-object v3, p0, Lcn/com/custommma/mobile/tracking/api/SendMessageThread;->context:Landroid/content/Context;

    iget-object v4, p0, Lcn/com/custommma/mobile/tracking/api/SendMessageThread;->spName:Ljava/lang/String;

    invoke-static {v3, v4, v2}, Lng9;->h(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_0

    :cond_7
    :goto_2
    :try_start_7
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    monitor-exit p0

    return-void

    :goto_3
    :try_start_8
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_0

    :cond_8
    monitor-exit v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    monitor-exit p0

    return-void

    :goto_4
    :try_start_9
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    :try_start_a
    throw v1

    :catchall_1
    move-exception v0

    monitor-exit p0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    throw v0
.end method


# virtual methods
.method public interrupt()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/com/custommma/mobile/tracking/api/SendMessageThread;->isInterruptThread:Z

    invoke-super {p0}, Ljava/lang/Thread;->interrupt()V

    return-void
.end method

.method public run()V
    .locals 0

    invoke-direct {p0}, Lcn/com/custommma/mobile/tracking/api/SendMessageThread;->sendData()V

    return-void
.end method
