.class public final Lcom/cloud/tmc/miniapp/utils/athena/OooO0OO;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# static fields
.field public static final OooO00o:Lcom/cloud/tmc/miniapp/utils/athena/OooO0OO;

.field public static OooO0O0:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public static OooO0OO:Landroid/app/Application;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/cloud/tmc/miniapp/utils/athena/OooO0OO;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/cloud/tmc/miniapp/utils/athena/OooO0OO;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/cloud/tmc/miniapp/utils/athena/OooO0OO;->OooO00o:Lcom/cloud/tmc/miniapp/utils/athena/OooO0OO;

    .line 7
    .line 8
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 12
    .line 13
    .line 14
    sput-object v0, Lcom/cloud/tmc/miniapp/utils/athena/OooO0OO;->OooO0O0:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 15
    .line 16
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 17
    .line 18
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 19
    .line 20
    .line 21
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 22
    .line 23
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 24
    .line 25
    .line 26
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 27
    .line 28
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final OooO00o(Ljava/util/List;)V
    .locals 5

    const-string v0, "$dataCaches"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 122
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/miniapp/utils/athena/OooO00o;

    .line 123
    invoke-static {}, Lcom/cloud/tmc/kernel/utils/ProcessUtils;->getProcessName()Ljava/lang/String;

    move-result-object v1

    .line 124
    iget v2, v0, Lcom/cloud/tmc/miniapp/utils/athena/OooO00o;->OooO00o:I

    .line 125
    iget-object v3, v0, Lcom/cloud/tmc/miniapp/utils/athena/OooO00o;->OooO0O0:Ljava/lang/String;

    .line 126
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":mfah report -> cache, post, athenaAppId = "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", tag = "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 127
    const-string v2, "AthenaUtil"

    invoke-static {v2, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    sget-object v1, Lcom/cloud/tmc/miniapp/utils/athena/OooO0OO;->OooO00o:Lcom/cloud/tmc/miniapp/utils/athena/OooO0OO;

    .line 129
    iget-object v2, v0, Lcom/cloud/tmc/miniapp/utils/athena/OooO00o;->OooO0O0:Ljava/lang/String;

    .line 130
    iget v3, v0, Lcom/cloud/tmc/miniapp/utils/athena/OooO00o;->OooO00o:I

    .line 131
    iget-object v0, v0, Lcom/cloud/tmc/miniapp/utils/athena/OooO00o;->OooO0OO:Landroid/os/Bundle;

    .line 132
    invoke-virtual {v1, v2, v3, v0}, Lcom/cloud/tmc/miniapp/utils/athena/OooO0OO;->OooO00o(Ljava/lang/String;ILandroid/os/Bundle;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static final OooO0O0(Ljava/util/List;)V
    .locals 5

    const-string v0, "$dataCaches"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/miniapp/utils/athena/OooO00o;

    .line 4
    invoke-static {}, Lcom/cloud/tmc/kernel/utils/ProcessUtils;->getProcessName()Ljava/lang/String;

    move-result-object v1

    .line 5
    iget v2, v0, Lcom/cloud/tmc/miniapp/utils/athena/OooO00o;->OooO00o:I

    .line 6
    iget-object v3, v0, Lcom/cloud/tmc/miniapp/utils/athena/OooO00o;->OooO0O0:Ljava/lang/String;

    .line 7
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":report -> cache, post, athenaAppId = "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", tag = "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 8
    const-string v2, "AthenaUtil"

    invoke-static {v2, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    sget-object v1, Lcom/cloud/tmc/miniapp/utils/athena/OooO0OO;->OooO00o:Lcom/cloud/tmc/miniapp/utils/athena/OooO0OO;

    .line 10
    iget-object v2, v0, Lcom/cloud/tmc/miniapp/utils/athena/OooO00o;->OooO0O0:Ljava/lang/String;

    .line 11
    iget v3, v0, Lcom/cloud/tmc/miniapp/utils/athena/OooO00o;->OooO00o:I

    .line 12
    iget-object v0, v0, Lcom/cloud/tmc/miniapp/utils/athena/OooO00o;->OooO0OO:Landroid/os/Bundle;

    .line 13
    invoke-virtual {v1, v2, v3, v0}, Lcom/cloud/tmc/miniapp/utils/athena/OooO0OO;->OooO00o(Ljava/lang/String;ILandroid/os/Bundle;)V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public final OooO00o(Ljava/lang/String;Z)Lcom/cloud/tmc/miniapp/utils/athena/strategy/OooO00o;
    .locals 13

    const/4 v0, 0x4

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    .line 68
    invoke-static {}, Lcom/cloud/tmc/kernel/utils/ProcessUtils;->isMiniProcess()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_2

    const-string v4, "athenaReportBean"

    const-string v6, "steps"

    if-eqz p2, :cond_0

    .line 69
    sget-object v8, Lcom/cloud/tmc/miniapp/utils/athena/OooO0OO;->OooO0OO:Landroid/app/Application;

    .line 70
    new-instance p2, Lcom/cloud/tmc/miniapp/utils/athena/strategy/steps/OooO00o;

    invoke-direct {p2}, Lcom/cloud/tmc/miniapp/utils/athena/strategy/steps/OooO00o;-><init>()V

    .line 71
    new-instance v7, Lcom/cloud/tmc/miniapp/utils/athena/strategy/steps/OooO0O0;

    invoke-direct {v7}, Lcom/cloud/tmc/miniapp/utils/athena/strategy/steps/OooO0O0;-><init>()V

    new-instance v9, Lcom/cloud/tmc/miniapp/utils/athena/strategy/steps/OooO0OO;

    invoke-direct {v9}, Lcom/cloud/tmc/miniapp/utils/athena/strategy/steps/OooO0OO;-><init>()V

    new-instance v10, Lcom/cloud/tmc/miniapp/utils/athena/strategy/steps/OooO;

    invoke-direct {v10}, Lcom/cloud/tmc/miniapp/utils/athena/strategy/steps/OooO;-><init>()V

    new-instance v11, Lcom/cloud/tmc/miniapp/utils/athena/strategy/steps/OooO0o;

    invoke-direct {v11}, Lcom/cloud/tmc/miniapp/utils/athena/strategy/steps/OooO0o;-><init>()V

    const/4 v12, 0x5

    new-array v12, v12, [Lcom/cloud/tmc/miniapp/utils/athena/strategy/steps/OooOO0;

    aput-object p2, v12, v5

    aput-object v7, v12, v3

    aput-object v9, v12, v2

    aput-object v10, v12, v1

    aput-object v11, v12, v0

    .line 72
    invoke-static {v12}, Lkotlin/collections/CollectionsKt;->h([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object p2

    .line 73
    invoke-static {p2, v6}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 74
    new-instance v0, Lcom/cloud/tmc/miniapp/utils/athena/strategy/OooO00o;

    .line 75
    invoke-direct {v0, v5, v5, v5}, Lcom/cloud/tmc/miniapp/utils/athena/strategy/OooO00o;-><init>(ZZZ)V

    .line 76
    invoke-static {p2, v6}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 77
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 78
    new-instance v1, Lcom/cloud/tmc/miniapp/utils/athena/strategy/OooO0O0;

    const/4 v11, 0x1

    move-object v7, v1

    move-object v9, p1

    move-object v10, p2

    move-object v12, v0

    invoke-direct/range {v7 .. v12}, Lcom/cloud/tmc/miniapp/utils/athena/strategy/OooO0O0;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;ILcom/cloud/tmc/miniapp/utils/athena/strategy/OooO00o;)V

    .line 79
    invoke-interface {p2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cloud/tmc/miniapp/utils/athena/strategy/steps/OooOO0;

    invoke-interface {p1, v1}, Lcom/cloud/tmc/miniapp/utils/athena/strategy/steps/OooOO0;->OooO00o(Lcom/cloud/tmc/miniapp/utils/athena/strategy/steps/OooOO0$OooO00o;)Lcom/cloud/tmc/miniapp/utils/athena/strategy/OooO00o;

    goto :goto_0

    .line 80
    :cond_0
    sget-object v7, Lcom/cloud/tmc/miniapp/utils/athena/OooO0OO;->OooO0OO:Landroid/app/Application;

    .line 81
    new-instance p2, Lcom/cloud/tmc/miniapp/utils/athena/strategy/steps/OooO00o;

    invoke-direct {p2}, Lcom/cloud/tmc/miniapp/utils/athena/strategy/steps/OooO00o;-><init>()V

    new-instance v8, Lcom/cloud/tmc/miniapp/utils/athena/strategy/steps/OooO0OO;

    invoke-direct {v8}, Lcom/cloud/tmc/miniapp/utils/athena/strategy/steps/OooO0OO;-><init>()V

    new-instance v9, Lcom/cloud/tmc/miniapp/utils/athena/strategy/steps/OooO;

    invoke-direct {v9}, Lcom/cloud/tmc/miniapp/utils/athena/strategy/steps/OooO;-><init>()V

    new-instance v10, Lcom/cloud/tmc/miniapp/utils/athena/strategy/steps/OooO0o;

    invoke-direct {v10}, Lcom/cloud/tmc/miniapp/utils/athena/strategy/steps/OooO0o;-><init>()V

    new-array v0, v0, [Lcom/cloud/tmc/miniapp/utils/athena/strategy/steps/OooOO0;

    aput-object p2, v0, v5

    aput-object v8, v0, v3

    aput-object v9, v0, v2

    aput-object v10, v0, v1

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->h([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object p2

    .line 82
    invoke-static {p2, v6}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 83
    new-instance v0, Lcom/cloud/tmc/miniapp/utils/athena/strategy/OooO00o;

    .line 84
    invoke-direct {v0, v5, v5, v5}, Lcom/cloud/tmc/miniapp/utils/athena/strategy/OooO00o;-><init>(ZZZ)V

    .line 85
    invoke-static {p2, v6}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 86
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 87
    new-instance v1, Lcom/cloud/tmc/miniapp/utils/athena/strategy/OooO0O0;

    const/4 v10, 0x1

    move-object v6, v1

    move-object v8, p1

    move-object v9, p2

    move-object v11, v0

    invoke-direct/range {v6 .. v11}, Lcom/cloud/tmc/miniapp/utils/athena/strategy/OooO0O0;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;ILcom/cloud/tmc/miniapp/utils/athena/strategy/OooO00o;)V

    .line 88
    invoke-interface {p2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cloud/tmc/miniapp/utils/athena/strategy/steps/OooOO0;

    invoke-interface {p1, v1}, Lcom/cloud/tmc/miniapp/utils/athena/strategy/steps/OooOO0;->OooO00o(Lcom/cloud/tmc/miniapp/utils/athena/strategy/steps/OooOO0$OooO00o;)Lcom/cloud/tmc/miniapp/utils/athena/strategy/OooO00o;

    :cond_1
    :goto_0
    return-object v0

    .line 89
    :cond_2
    invoke-static {}, Lcom/cloud/tmc/kernel/utils/ProcessUtils;->isMainProcess()Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p1, 0x0

    return-object p1

    .line 90
    :cond_3
    new-instance p1, Lcom/cloud/tmc/miniapp/utils/athena/strategy/OooO00o;

    .line 91
    invoke-direct {p1, v5, v5, v5}, Lcom/cloud/tmc/miniapp/utils/athena/strategy/OooO00o;-><init>(ZZZ)V

    return-object p1
.end method

.method public final OooO00o()V
    .locals 6

    .line 1
    invoke-static {}, Lcom/cloud/tmc/kernel/utils/ProcessUtils;->isMiniProcess()Z

    move-result v0

    sget-object v1, Lcom/cloud/tmc/miniapp/defaultimpl/AthenaReport;->Companion:Lcom/cloud/tmc/miniapp/defaultimpl/AthenaReport$OooO00o;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    invoke-static {}, Lcom/cloud/tmc/miniapp/defaultimpl/AthenaReport;->access$getMainProcessInitAthenaFlag$cp()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    .line 3
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    .line 4
    invoke-static {}, Lcom/cloud/tmc/miniapp/defaultimpl/AthenaReport;->access$getMiniProcessInitAthenaFlag$cp()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v2

    .line 5
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    .line 6
    invoke-static {}, Lcom/cloud/tmc/miniapp/defaultimpl/AthenaReport;->access$getZeroProcessInitAthenaFlag$cp()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v3

    .line 7
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "miniProcessAppOrPageReady -> delay:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", isMiniProcess:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", mainProcessInitAthenaFlag:"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", miniProcessInitAthenaFlag:"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", zeroProcessInitAthenaFlag:"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 8
    const-string v1, "AthenaUtil"

    invoke-static {v1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final OooO00o(Ljava/lang/String;)V
    .locals 6

    const-string v0, "AthenaUtil"

    const-string v1, "appId"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 94
    :try_start_0
    sget-object v1, Lcom/cloud/tmc/miniapp/utils/athena/OooO0O0;->OooO00o:Lcom/cloud/tmc/miniapp/utils/athena/OooO0O0;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 95
    :try_start_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 96
    sget-object v2, Lcom/cloud/tmc/miniapp/utils/athena/OooO0O0;->OooO0Oo:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/concurrent/ConcurrentLinkedQueue;

    if-eqz v2, :cond_0

    .line 97
    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    const/4 v4, 0x1

    xor-int/2addr v3, v4

    if-ne v3, v4, :cond_0

    .line 98
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 99
    :catchall_0
    :try_start_2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 100
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "appId: ->"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ",->mfah report -> report all cache :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 101
    invoke-static {v0, v2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 102
    :try_start_3
    sget-object v2, Lcom/cloud/tmc/miniapp/utils/athena/OooO0O0;->OooO0Oo:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/concurrent/ConcurrentLinkedQueue;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentLinkedQueue;->clear()V

    goto :goto_1

    :catchall_1
    move-exception p1

    goto :goto_2

    .line 103
    :cond_1
    :goto_1
    invoke-static {v2}, Lkotlin/jvm/internal/TypeIntrinsics;->d(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_3

    .line 104
    :goto_2
    :try_start_4
    const-string v2, "clearAthenaDataForId"

    invoke-static {v0, v2, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 105
    :goto_3
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_3

    .line 106
    invoke-static {}, Lcom/cloud/tmc/kernel/utils/ProcessUtils;->getProcessName()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ":mfah report -> exist cache, post all size = "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 107
    invoke-static {v0, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 109
    sget-object p1, Lcom/cloud/tmc/kernel/executor/ExecutorType;->IO:Lcom/cloud/tmc/kernel/executor/ExecutorType;

    new-instance v2, Lcom/cloud/tmc/miniapp/utils/athena/b;

    invoke-direct {v2, v1}, Lcom/cloud/tmc/miniapp/utils/athena/b;-><init>(Ljava/util/List;)V

    invoke-static {p1, v2}, Lcom/cloud/tmc/kernel/utils/ExecutorUtils;->execute(Lcom/cloud/tmc/kernel/executor/ExecutorType;Ljava/lang/Runnable;)V

    goto :goto_6

    :catchall_2
    move-exception p1

    goto :goto_5

    .line 110
    :cond_2
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cloud/tmc/miniapp/utils/athena/OooO00o;

    .line 111
    invoke-static {}, Lcom/cloud/tmc/kernel/utils/ProcessUtils;->getProcessName()Ljava/lang/String;

    move-result-object v2

    .line 112
    iget v3, v1, Lcom/cloud/tmc/miniapp/utils/athena/OooO00o;->OooO00o:I

    .line 113
    iget-object v4, v1, Lcom/cloud/tmc/miniapp/utils/athena/OooO00o;->OooO0O0:Ljava/lang/String;

    .line 114
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":report -> cache, post, athenaAppId = "

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", tag = "

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 115
    invoke-static {v0, v2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    sget-object v2, Lcom/cloud/tmc/miniapp/utils/athena/OooO0OO;->OooO00o:Lcom/cloud/tmc/miniapp/utils/athena/OooO0OO;

    .line 117
    iget-object v3, v1, Lcom/cloud/tmc/miniapp/utils/athena/OooO00o;->OooO0O0:Ljava/lang/String;

    .line 118
    iget v4, v1, Lcom/cloud/tmc/miniapp/utils/athena/OooO00o;->OooO00o:I

    .line 119
    iget-object v1, v1, Lcom/cloud/tmc/miniapp/utils/athena/OooO00o;->OooO0OO:Landroid/os/Bundle;

    .line 120
    invoke-virtual {v2, v3, v4, v1}, Lcom/cloud/tmc/miniapp/utils/athena/OooO0OO;->OooO00o(Ljava/lang/String;ILandroid/os/Bundle;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_4

    .line 121
    :goto_5
    const-string v1, "athena cache report "

    invoke-static {v0, v1, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_3
    :goto_6
    return-void
.end method

.method public final OooO00o(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 1

    .line 92
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 93
    :cond_0
    new-instance v0, Lhi/a;

    invoke-direct {v0, p1, p2}, Lhi/a;-><init>(Ljava/lang/String;I)V

    const/4 p1, 0x0

    invoke-virtual {v0, p3, p1}, Lhi/a;->c(Landroid/os/Bundle;Landroid/os/Bundle;)Lhi/a;

    move-result-object p1

    invoke-virtual {p1}, Lhi/a;->b()V

    return-void
.end method

.method public final OooO00o(Ljava/lang/String;ILandroid/os/Bundle;Ljava/lang/String;)V
    .locals 7

    const-string v0, "AthenaUtil"

    const-string v1, "tag"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "data"

    invoke-static {p3, v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 9
    :try_start_0
    invoke-virtual {p0, p4, v1}, Lcom/cloud/tmc/miniapp/utils/athena/OooO0OO;->OooO00o(Ljava/lang/String;Z)Lcom/cloud/tmc/miniapp/utils/athena/strategy/OooO00o;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    .line 10
    :cond_0
    invoke-static {}, Lcom/cloud/tmc/kernel/utils/ProcessUtils;->getProcessName()Ljava/lang/String;

    move-result-object v2

    .line 11
    iget-boolean v3, v1, Lcom/cloud/tmc/miniapp/utils/athena/strategy/OooO00o;->OooO00o:Z

    .line 12
    iget-boolean v4, v1, Lcom/cloud/tmc/miniapp/utils/athena/strategy/OooO00o;->OooO0O0:Z

    .line 13
    iget-boolean v5, v1, Lcom/cloud/tmc/miniapp/utils/athena/strategy/OooO00o;->OooO0OO:Z

    .line 14
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":getAthenaStrategyResult -> setCache = "

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", clearCache = "

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ",isMfah = "

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 15
    invoke-static {v0, v2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    iget-boolean v2, v1, Lcom/cloud/tmc/miniapp/utils/athena/strategy/OooO00o;->OooO0OO:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const-string v3, "athenaDataBean"

    const-string v4, ", tag = "

    if-eqz v2, :cond_4

    .line 17
    :try_start_1
    iget-boolean v2, v1, Lcom/cloud/tmc/miniapp/utils/athena/strategy/OooO00o;->OooO00o:Z

    if-eqz v2, :cond_4

    .line 18
    invoke-static {}, Lcom/cloud/tmc/kernel/utils/ProcessUtils;->getProcessName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": mfah report -> save cache, athenaAppId = "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 19
    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p4, :cond_3

    .line 20
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    goto :goto_2

    .line 21
    :cond_1
    sget-object v1, Lcom/cloud/tmc/miniapp/utils/athena/OooO0O0;->OooO00o:Lcom/cloud/tmc/miniapp/utils/athena/OooO0O0;

    .line 22
    new-instance v1, Lcom/cloud/tmc/miniapp/utils/athena/OooO00o;

    invoke-direct {v1, p2, p1, p3}, Lcom/cloud/tmc/miniapp/utils/athena/OooO00o;-><init>(ILjava/lang/String;Landroid/os/Bundle;)V

    .line 23
    const-string p1, "appId"

    invoke-static {p4, p1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 24
    :try_start_2
    sget-object p1, Lcom/cloud/tmc/miniapp/utils/athena/OooO0O0;->OooO0Oo:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1, p4}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/concurrent/ConcurrentLinkedQueue;

    if-nez p2, :cond_2

    .line 25
    new-instance p2, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {p2}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    .line 26
    invoke-virtual {p1, p4, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 27
    :cond_2
    :goto_0
    invoke-virtual {p2, v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    .line 28
    :goto_1
    :try_start_3
    const-string p2, "setAthenaDataForId"

    invoke-static {v0, p2, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    .line 29
    :cond_3
    :goto_2
    sget-object p4, Lcom/cloud/tmc/miniapp/utils/athena/OooO0O0;->OooO00o:Lcom/cloud/tmc/miniapp/utils/athena/OooO0O0;

    new-instance v0, Lcom/cloud/tmc/miniapp/utils/athena/OooO00o;

    invoke-direct {v0, p2, p1, p3}, Lcom/cloud/tmc/miniapp/utils/athena/OooO00o;-><init>(ILjava/lang/String;Landroid/os/Bundle;)V

    .line 30
    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    invoke-virtual {p4}, Lcom/cloud/tmc/miniapp/utils/athena/OooO0O0;->OooO00o()V

    .line 32
    sget-object p1, Lcom/cloud/tmc/miniapp/utils/athena/OooO0O0;->OooO0OO:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    :goto_3
    return-void

    .line 33
    :cond_4
    iget-boolean p4, v1, Lcom/cloud/tmc/miniapp/utils/athena/strategy/OooO00o;->OooO00o:Z

    if-nez p4, :cond_8

    .line 34
    iget-boolean p4, v1, Lcom/cloud/tmc/miniapp/utils/athena/strategy/OooO00o;->OooO0O0:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    const-string v1, ":report -> no cache, post only current, athenaAppId = "

    if-eqz p4, :cond_7

    .line 35
    :try_start_4
    sget-object p4, Lcom/cloud/tmc/miniapp/utils/athena/OooO0O0;->OooO00o:Lcom/cloud/tmc/miniapp/utils/athena/OooO0O0;

    .line 36
    new-instance p4, Ljava/util/ArrayList;

    invoke-direct {p4}, Ljava/util/ArrayList;-><init>()V

    .line 37
    sget-object v2, Lcom/cloud/tmc/miniapp/utils/athena/OooO0O0;->OooO0OO:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {p4, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 38
    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->clear()V

    .line 39
    invoke-virtual {p4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_6

    .line 40
    invoke-static {}, Lcom/cloud/tmc/kernel/utils/ProcessUtils;->getProcessName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":report -> exist cache, post all size = "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 41
    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    new-instance v1, Lcom/cloud/tmc/miniapp/utils/athena/OooO00o;

    invoke-direct {v1, p2, p1, p3}, Lcom/cloud/tmc/miniapp/utils/athena/OooO00o;-><init>(ILjava/lang/String;Landroid/os/Bundle;)V

    invoke-virtual {p4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 43
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 44
    sget-object p1, Lcom/cloud/tmc/kernel/executor/ExecutorType;->IO:Lcom/cloud/tmc/kernel/executor/ExecutorType;

    new-instance p2, Lcom/cloud/tmc/miniapp/utils/athena/a;

    invoke-direct {p2, p4}, Lcom/cloud/tmc/miniapp/utils/athena/a;-><init>(Ljava/util/List;)V

    invoke-static {p1, p2}, Lcom/cloud/tmc/kernel/utils/ExecutorUtils;->execute(Lcom/cloud/tmc/kernel/executor/ExecutorType;Ljava/lang/Runnable;)V

    goto/16 :goto_5

    .line 45
    :cond_5
    invoke-virtual {p4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_9

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/cloud/tmc/miniapp/utils/athena/OooO00o;

    .line 46
    invoke-static {}, Lcom/cloud/tmc/kernel/utils/ProcessUtils;->getProcessName()Ljava/lang/String;

    move-result-object p3

    .line 47
    iget p4, p2, Lcom/cloud/tmc/miniapp/utils/athena/OooO00o;->OooO00o:I

    .line 48
    iget-object v1, p2, Lcom/cloud/tmc/miniapp/utils/athena/OooO00o;->OooO0O0:Ljava/lang/String;

    .line 49
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ":report -> cache, post, athenaAppId = "

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 50
    invoke-static {v0, p3}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    sget-object p3, Lcom/cloud/tmc/miniapp/utils/athena/OooO0OO;->OooO00o:Lcom/cloud/tmc/miniapp/utils/athena/OooO0OO;

    .line 52
    iget-object p4, p2, Lcom/cloud/tmc/miniapp/utils/athena/OooO00o;->OooO0O0:Ljava/lang/String;

    .line 53
    iget v1, p2, Lcom/cloud/tmc/miniapp/utils/athena/OooO00o;->OooO00o:I

    .line 54
    iget-object p2, p2, Lcom/cloud/tmc/miniapp/utils/athena/OooO00o;->OooO0OO:Landroid/os/Bundle;

    .line 55
    invoke-virtual {p3, p4, v1, p2}, Lcom/cloud/tmc/miniapp/utils/athena/OooO0OO;->OooO00o(Ljava/lang/String;ILandroid/os/Bundle;)V

    goto :goto_4

    .line 56
    :cond_6
    invoke-static {}, Lcom/cloud/tmc/kernel/utils/ProcessUtils;->getProcessName()Ljava/lang/String;

    move-result-object p4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    .line 57
    invoke-static {v0, p4}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    invoke-virtual {p0, p1, p2, p3}, Lcom/cloud/tmc/miniapp/utils/athena/OooO0OO;->OooO00o(Ljava/lang/String;ILandroid/os/Bundle;)V

    goto :goto_5

    .line 59
    :cond_7
    invoke-static {}, Lcom/cloud/tmc/kernel/utils/ProcessUtils;->getProcessName()Ljava/lang/String;

    move-result-object p4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    .line 60
    invoke-static {v0, p4}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    invoke-virtual {p0, p1, p2, p3}, Lcom/cloud/tmc/miniapp/utils/athena/OooO0OO;->OooO00o(Ljava/lang/String;ILandroid/os/Bundle;)V

    goto :goto_5

    .line 62
    :cond_8
    invoke-static {}, Lcom/cloud/tmc/kernel/utils/ProcessUtils;->getProcessName()Ljava/lang/String;

    move-result-object p4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, ":report -> save cache, athenaAppId = "

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    .line 63
    invoke-static {v0, p4}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    sget-object p4, Lcom/cloud/tmc/miniapp/utils/athena/OooO0O0;->OooO00o:Lcom/cloud/tmc/miniapp/utils/athena/OooO0O0;

    new-instance v0, Lcom/cloud/tmc/miniapp/utils/athena/OooO00o;

    invoke-direct {v0, p2, p1, p3}, Lcom/cloud/tmc/miniapp/utils/athena/OooO00o;-><init>(ILjava/lang/String;Landroid/os/Bundle;)V

    .line 65
    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    invoke-virtual {p4}, Lcom/cloud/tmc/miniapp/utils/athena/OooO0O0;->OooO00o()V

    .line 67
    sget-object p1, Lcom/cloud/tmc/miniapp/utils/athena/OooO0O0;->OooO0OO:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    :cond_9
    :goto_5
    return-void
.end method

.method public final OooO0O0(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 1

    const-string v0, "tag"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bundle"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/cloud/tmc/miniapp/utils/athena/OooO0OO;->OooO00o(Ljava/lang/String;ILandroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 2
    const-string p2, "AthenaUtil"

    const-string p3, "forceAthenaReport"

    invoke-static {p2, p3, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
