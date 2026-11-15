.class final Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/AbilityWorker$WorkTask;
.super Ljava/util/TimerTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/AbilityWorker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "WorkTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/AbilityWorker;


# direct methods
.method private constructor <init>(Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/AbilityWorker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/AbilityWorker;Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/AbilityWorker$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/AbilityWorker$WorkTask;-><init>(Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/AbilityWorker;)V

    return-void
.end method

.method private cacheWorks()V
    .locals 1

    const/4 p0, 0x0

    const/4 v0, 0x0

    :try_start_0
    invoke-static {v0, p0}, Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/AbilityWorker;->e(Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/AbilityWorker;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    const-string v0, "]--------------------------------------------------->"

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const/4 v3, 0x0

    invoke-static {v3}, Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/AbilityWorker;->c(Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/AbilityWorker;)Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    move-result v4

    if-nez v4, :cond_0

    return-void

    :cond_0
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "<-----------------------------Time Line Begin ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Thread;->getId()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Loe5;->g(Ljava/lang/Object;)V

    invoke-static {v3}, Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/AbilityWorker;->c(Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/AbilityWorker;)Ljava/util/HashMap;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_1
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-static {v3}, Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/AbilityWorker;->c(Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/AbilityWorker;)Ljava/util/HashMap;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/ViewAbilityExplorer;

    invoke-virtual {v8}, Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/ViewAbilityExplorer;->getAbilityStatus()Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/AbilityStatus;

    move-result-object v9

    sget-object v10, Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/AbilityStatus;->UPLOADED:Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/AbilityStatus;

    if-ne v9, v10, :cond_2

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catch_0
    move-exception p0

    goto/16 :goto_2

    :cond_2
    sget-object v7, Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/AbilityStatus;->EXPLORERING:Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/AbilityStatus;

    if-ne v9, v7, :cond_1

    invoke-static {v3}, Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/AbilityWorker;->b(Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/AbilityWorker;)Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v8, v7}, Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/ViewAbilityExplorer;->onExplore(Landroid/content/Context;)V

    goto :goto_0

    :cond_3
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v3}, Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/AbilityWorker;->c(Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/AbilityWorker;)Ljava/util/HashMap;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_4
    invoke-static {v3}, Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/AbilityWorker;->d(Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/AbilityWorker;)I

    move-result v5

    const/16 v6, 0xa

    if-le v5, v6, :cond_5

    invoke-direct {p0}, Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/AbilityWorker$WorkTask;->cacheWorks()V

    :cond_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v1

    invoke-static {v3}, Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/AbilityWorker;->f(Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/AbilityWorker;)I

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "index:"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/AbilityWorker;->d(Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/AbilityWorker;)I

    move-result v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " cost:"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "ms, workExplorers length:"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Loe5;->a(Ljava/lang/Object;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<-----------------------------Time Line end ["

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Loe5;->g(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :goto_2
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_3
    return-void
.end method
