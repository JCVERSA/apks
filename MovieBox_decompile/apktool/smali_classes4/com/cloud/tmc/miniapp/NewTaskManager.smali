.class public final Lcom/cloud/tmc/miniapp/NewTaskManager;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cloud/tmc/miniapp/NewTaskManager$ActivityInfo;,
        Lcom/cloud/tmc/miniapp/NewTaskManager$Companion;,
        Lcom/cloud/tmc/miniapp/NewTaskManager$ProcessInfo;,
        Lcom/cloud/tmc/miniapp/NewTaskManager$TaskModel;
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# static fields
.field public static final Companion:Lcom/cloud/tmc/miniapp/NewTaskManager$Companion;

.field public static final KEY_APM_PRELAUNCH_PROCESS:Ljava/lang/String; = "PreLaunchProcess"

.field public static final KEY_APM_PRELAUNCH_PROCESS_PHASE:Ljava/lang/String; = "PreLaunchProcessPhase"

.field public static final KEY_PROCESS_MESSAGE:Ljava/lang/String; = "processMessage"

.field private static final TAG:Ljava/lang/String; = "NewTaskManager"

.field public static final UNKNOWN_PROCESS:Ljava/lang/String; = "unknown process"

.field private static final enableTaskStorage$delegate:Lkotlin/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/Lazy<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static final instance$delegate:Lkotlin/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/Lazy<",
            "Lcom/cloud/tmc/miniapp/NewTaskManager;",
            ">;"
        }
    .end annotation
.end field

.field private static sMaxIdleProcessNum:I

.field private static final sProcessInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/cloud/tmc/miniapp/NewTaskManager$ProcessInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final taskQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue<",
            "Lcom/cloud/tmc/miniapp/NewTaskManager$TaskModel;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private isInitNativeStorage:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/cloud/tmc/miniapp/NewTaskManager$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/cloud/tmc/miniapp/NewTaskManager$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/cloud/tmc/miniapp/NewTaskManager;->Companion:Lcom/cloud/tmc/miniapp/NewTaskManager$Companion;

    .line 8
    .line 9
    sget-object v0, Lkotlin/LazyThreadSafetyMode;->SYNCHRONIZED:Lkotlin/LazyThreadSafetyMode;

    .line 10
    .line 11
    sget-object v1, Lcom/cloud/tmc/miniapp/NewTaskManager$Companion$instance$2;->INSTANCE:Lcom/cloud/tmc/miniapp/NewTaskManager$Companion$instance$2;

    .line 12
    .line 13
    invoke-static {v0, v1}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    sput-object v0, Lcom/cloud/tmc/miniapp/NewTaskManager;->instance$delegate:Lkotlin/Lazy;

    .line 18
    .line 19
    sget-object v0, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    .line 20
    .line 21
    sget-object v1, Lcom/cloud/tmc/miniapp/NewTaskManager$Companion$enableTaskStorage$2;->INSTANCE:Lcom/cloud/tmc/miniapp/NewTaskManager$Companion$enableTaskStorage$2;

    .line 22
    .line 23
    invoke-static {v0, v1}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    sput-object v0, Lcom/cloud/tmc/miniapp/NewTaskManager;->enableTaskStorage$delegate:Lkotlin/Lazy;

    .line 28
    .line 29
    new-instance v0, Ljava/util/ArrayList;

    .line 30
    .line 31
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 32
    .line 33
    .line 34
    sput-object v0, Lcom/cloud/tmc/miniapp/NewTaskManager;->sProcessInfos:Ljava/util/List;

    .line 35
    .line 36
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 37
    .line 38
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    .line 39
    .line 40
    .line 41
    sput-object v0, Lcom/cloud/tmc/miniapp/NewTaskManager;->taskQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 42
    .line 43
    const/4 v0, 0x1

    .line 44
    sput v0, Lcom/cloud/tmc/miniapp/NewTaskManager;->sMaxIdleProcessNum:I

    .line 45
    .line 46
    return-void
.end method

.method private constructor <init>()V
    .locals 4

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Lcom/cloud/tmc/miniapp/NewTaskManager$ActivityInfo;

    invoke-direct {v0}, Lcom/cloud/tmc/miniapp/NewTaskManager$ActivityInfo;-><init>()V

    .line 4
    const-class v1, Lcom/cloud/tmc/miniapp/ui/multiprogress/MiniSubActivity1;

    invoke-virtual {v0, v1}, Lcom/cloud/tmc/miniapp/NewTaskManager$ActivityInfo;->setActivityClazz(Ljava/lang/Class;)V

    .line 5
    const-string v1, ":mini"

    invoke-virtual {v0, v1}, Lcom/cloud/tmc/miniapp/NewTaskManager$ActivityInfo;->setMProcessName(Ljava/lang/String;)V

    .line 6
    new-instance v2, Lcom/cloud/tmc/miniapp/NewTaskManager$ProcessInfo;

    invoke-direct {v2, v0}, Lcom/cloud/tmc/miniapp/NewTaskManager$ProcessInfo;-><init>(Lcom/cloud/tmc/miniapp/NewTaskManager$ActivityInfo;)V

    .line 7
    sget-object v0, Lcom/cloud/tmc/miniapp/NewTaskManager;->sProcessInfos:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 8
    new-instance v2, Lcom/cloud/tmc/miniapp/NewTaskManager$ActivityInfo;

    invoke-direct {v2}, Lcom/cloud/tmc/miniapp/NewTaskManager$ActivityInfo;-><init>()V

    .line 9
    const-class v3, Lcom/cloud/tmc/miniapp/ui/multiprogress/MiniSubActivity2;

    invoke-virtual {v2, v3}, Lcom/cloud/tmc/miniapp/NewTaskManager$ActivityInfo;->setActivityClazz(Ljava/lang/Class;)V

    .line 10
    invoke-virtual {v2, v1}, Lcom/cloud/tmc/miniapp/NewTaskManager$ActivityInfo;->setMProcessName(Ljava/lang/String;)V

    .line 11
    new-instance v3, Lcom/cloud/tmc/miniapp/NewTaskManager$ProcessInfo;

    invoke-direct {v3, v2}, Lcom/cloud/tmc/miniapp/NewTaskManager$ProcessInfo;-><init>(Lcom/cloud/tmc/miniapp/NewTaskManager$ActivityInfo;)V

    .line 12
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 13
    new-instance v2, Lcom/cloud/tmc/miniapp/NewTaskManager$ActivityInfo;

    invoke-direct {v2}, Lcom/cloud/tmc/miniapp/NewTaskManager$ActivityInfo;-><init>()V

    .line 14
    const-class v3, Lcom/cloud/tmc/miniapp/ui/multiprogress/MiniSubActivity3;

    invoke-virtual {v2, v3}, Lcom/cloud/tmc/miniapp/NewTaskManager$ActivityInfo;->setActivityClazz(Ljava/lang/Class;)V

    .line 15
    invoke-virtual {v2, v1}, Lcom/cloud/tmc/miniapp/NewTaskManager$ActivityInfo;->setMProcessName(Ljava/lang/String;)V

    .line 16
    new-instance v3, Lcom/cloud/tmc/miniapp/NewTaskManager$ProcessInfo;

    invoke-direct {v3, v2}, Lcom/cloud/tmc/miniapp/NewTaskManager$ProcessInfo;-><init>(Lcom/cloud/tmc/miniapp/NewTaskManager$ActivityInfo;)V

    .line 17
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 18
    new-instance v2, Lcom/cloud/tmc/miniapp/NewTaskManager$ActivityInfo;

    invoke-direct {v2}, Lcom/cloud/tmc/miniapp/NewTaskManager$ActivityInfo;-><init>()V

    .line 19
    const-class v3, Lcom/cloud/tmc/miniapp/ui/multiprogress/MiniSubActivity4;

    invoke-virtual {v2, v3}, Lcom/cloud/tmc/miniapp/NewTaskManager$ActivityInfo;->setActivityClazz(Ljava/lang/Class;)V

    .line 20
    invoke-virtual {v2, v1}, Lcom/cloud/tmc/miniapp/NewTaskManager$ActivityInfo;->setMProcessName(Ljava/lang/String;)V

    .line 21
    new-instance v1, Lcom/cloud/tmc/miniapp/NewTaskManager$ProcessInfo;

    invoke-direct {v1, v2}, Lcom/cloud/tmc/miniapp/NewTaskManager$ProcessInfo;-><init>(Lcom/cloud/tmc/miniapp/NewTaskManager$ActivityInfo;)V

    .line 22
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/NewTaskManager;-><init>()V

    return-void
.end method

.method public static final synthetic access$getEnableTaskStorage$delegate$cp()Lkotlin/Lazy;
    .locals 1

    .line 1
    sget-object v0, Lcom/cloud/tmc/miniapp/NewTaskManager;->enableTaskStorage$delegate:Lkotlin/Lazy;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic access$getInstance$delegate$cp()Lkotlin/Lazy;
    .locals 1

    .line 1
    sget-object v0, Lcom/cloud/tmc/miniapp/NewTaskManager;->instance$delegate:Lkotlin/Lazy;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic access$getSProcessInfos$cp()Ljava/util/List;
    .locals 1

    .line 1
    sget-object v0, Lcom/cloud/tmc/miniapp/NewTaskManager;->sProcessInfos:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method private final clearIdleProcess(Z)V
    .locals 5

    .line 1
    sget-object v0, Lcom/cloud/tmc/miniapp/NewTaskManager;->Companion:Lcom/cloud/tmc/miniapp/NewTaskManager$Companion;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/NewTaskManager$Companion;->getInstance()Lcom/cloud/tmc/miniapp/NewTaskManager;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    sget-object v1, Lcom/cloud/tmc/miniapp/NewTaskManager;->sProcessInfos:Ljava/util/List;

    .line 9
    .line 10
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    if-eqz v2, :cond_2

    .line 19
    .line 20
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    check-cast v2, Lcom/cloud/tmc/miniapp/NewTaskManager$ProcessInfo;

    .line 25
    .line 26
    invoke-virtual {v2}, Lcom/cloud/tmc/miniapp/NewTaskManager$ProcessInfo;->getMStatus()I

    .line 27
    .line 28
    .line 29
    move-result v3

    .line 30
    sget-object v4, Lcom/cloud/tmc/miniapp/NewTaskManager$ProcessInfo;->Companion:Lcom/cloud/tmc/miniapp/NewTaskManager$ProcessInfo$Companion;

    .line 31
    .line 32
    invoke-virtual {v4}, Lcom/cloud/tmc/miniapp/NewTaskManager$ProcessInfo$Companion;->getSTATUS_PROCESS_IDLE()I

    .line 33
    .line 34
    .line 35
    move-result v4

    .line 36
    if-ne v3, v4, :cond_0

    .line 37
    .line 38
    if-nez p1, :cond_1

    .line 39
    .line 40
    sget-object v3, Lcom/cloud/tmc/miniapp/NewTaskManager;->Companion:Lcom/cloud/tmc/miniapp/NewTaskManager$Companion;

    .line 41
    .line 42
    invoke-static {v3}, Lcom/cloud/tmc/miniapp/NewTaskManager$Companion;->access$getCurrentIdleProcessNum(Lcom/cloud/tmc/miniapp/NewTaskManager$Companion;)I

    .line 43
    .line 44
    .line 45
    move-result v3

    .line 46
    sget v4, Lcom/cloud/tmc/miniapp/NewTaskManager;->sMaxIdleProcessNum:I

    .line 47
    .line 48
    if-le v3, v4, :cond_0

    .line 49
    .line 50
    goto :goto_1

    .line 51
    :catchall_0
    move-exception p1

    .line 52
    goto :goto_3

    .line 53
    :cond_1
    :goto_1
    invoke-direct {p0, v2}, Lcom/cloud/tmc/miniapp/NewTaskManager;->releaseProcess(Lcom/cloud/tmc/miniapp/NewTaskManager$ProcessInfo;)V

    .line 54
    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_2
    sget-object v1, Lcom/cloud/tmc/miniapp/NewTaskManager;->sProcessInfos:Ljava/util/List;

    .line 58
    .line 59
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    :cond_3
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 64
    .line 65
    .line 66
    move-result v2

    .line 67
    if-eqz v2, :cond_5

    .line 68
    .line 69
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object v2

    .line 73
    check-cast v2, Lcom/cloud/tmc/miniapp/NewTaskManager$ProcessInfo;

    .line 74
    .line 75
    invoke-virtual {v2}, Lcom/cloud/tmc/miniapp/NewTaskManager$ProcessInfo;->getMStatus()I

    .line 76
    .line 77
    .line 78
    move-result v3

    .line 79
    sget-object v4, Lcom/cloud/tmc/miniapp/NewTaskManager$ProcessInfo;->Companion:Lcom/cloud/tmc/miniapp/NewTaskManager$ProcessInfo$Companion;

    .line 80
    .line 81
    invoke-virtual {v4}, Lcom/cloud/tmc/miniapp/NewTaskManager$ProcessInfo$Companion;->getSTATUS_PROCESS_LAST_USED()I

    .line 82
    .line 83
    .line 84
    move-result v4

    .line 85
    if-ne v3, v4, :cond_3

    .line 86
    .line 87
    if-nez p1, :cond_4

    .line 88
    .line 89
    sget-object v3, Lcom/cloud/tmc/miniapp/NewTaskManager;->Companion:Lcom/cloud/tmc/miniapp/NewTaskManager$Companion;

    .line 90
    .line 91
    invoke-static {v3}, Lcom/cloud/tmc/miniapp/NewTaskManager$Companion;->access$getCurrentIdleProcessNum(Lcom/cloud/tmc/miniapp/NewTaskManager$Companion;)I

    .line 92
    .line 93
    .line 94
    move-result v3

    .line 95
    sget v4, Lcom/cloud/tmc/miniapp/NewTaskManager;->sMaxIdleProcessNum:I

    .line 96
    .line 97
    if-le v3, v4, :cond_3

    .line 98
    .line 99
    :cond_4
    invoke-direct {p0, v2}, Lcom/cloud/tmc/miniapp/NewTaskManager;->releaseProcess(Lcom/cloud/tmc/miniapp/NewTaskManager$ProcessInfo;)V

    .line 100
    .line 101
    .line 102
    goto :goto_2

    .line 103
    :cond_5
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 104
    .line 105
    monitor-exit v0

    .line 106
    return-void

    .line 107
    :goto_3
    monitor-exit v0

    .line 108
    throw p1
.end method

.method private final finishActivityTask(Ljava/lang/Class;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-static {}, Lcom/cloud/tmc/miniutils/util/ActivityUtils;->getTopActivity()Landroid/app/Activity;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    goto :goto_0

    .line 13
    :catchall_0
    move-exception p1

    .line 14
    goto :goto_2

    .line 15
    :cond_0
    move-object v2, v1

    .line 16
    :goto_0
    if-eqz v0, :cond_1

    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    .line 20
    .line 21
    move-result-object v3

    .line 22
    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    goto :goto_1

    .line 27
    :cond_1
    move-object v3, v1

    .line 28
    :goto_1
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    if-eqz v2, :cond_2

    .line 33
    .line 34
    invoke-virtual {v0}, Landroid/app/Activity;->finishAndRemoveTask()V

    .line 35
    .line 36
    .line 37
    goto :goto_3

    .line 38
    :cond_2
    if-nez p1, :cond_3

    .line 39
    .line 40
    move-object p1, v1

    .line 41
    :cond_3
    if-eqz p1, :cond_4

    .line 42
    .line 43
    invoke-static {p1}, Lcom/cloud/tmc/miniutils/util/ActivityUtils;->finishActivity(Ljava/lang/Class;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    .line 45
    .line 46
    goto :goto_3

    .line 47
    :goto_2
    const-string v0, "NewTaskManager"

    .line 48
    .line 49
    invoke-static {v0, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 50
    .line 51
    .line 52
    :cond_4
    :goto_3
    return-void
.end method

.method private final getFirstDeadProcess()Lcom/cloud/tmc/miniapp/NewTaskManager$ProcessInfo;
    .locals 1

    .line 1
    sget-object v0, Lcom/cloud/tmc/miniapp/NewTaskManager$ProcessInfo;->Companion:Lcom/cloud/tmc/miniapp/NewTaskManager$ProcessInfo$Companion;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/NewTaskManager$ProcessInfo$Companion;->getSTATUS_PROCESS_DEAD()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    invoke-direct {p0, v0}, Lcom/cloud/tmc/miniapp/NewTaskManager;->getFirstProcessByStatus(I)Lcom/cloud/tmc/miniapp/NewTaskManager$ProcessInfo;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method private final getFirstProcessByStatus(I)Lcom/cloud/tmc/miniapp/NewTaskManager$ProcessInfo;
    .locals 3

    .line 1
    sget-object v0, Lcom/cloud/tmc/miniapp/NewTaskManager;->sProcessInfos:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_1

    .line 12
    .line 13
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Lcom/cloud/tmc/miniapp/NewTaskManager$ProcessInfo;

    .line 18
    .line 19
    invoke-virtual {v1}, Lcom/cloud/tmc/miniapp/NewTaskManager$ProcessInfo;->getMStatus()I

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    if-ne v2, p1, :cond_0

    .line 24
    .line 25
    return-object v1

    .line 26
    :cond_1
    const/4 p1, 0x0

    .line 27
    return-object p1
.end method

.method private final getFirstRunningProcess()Lcom/cloud/tmc/miniapp/NewTaskManager$ProcessInfo;
    .locals 1

    .line 1
    sget-object v0, Lcom/cloud/tmc/miniapp/NewTaskManager$ProcessInfo;->Companion:Lcom/cloud/tmc/miniapp/NewTaskManager$ProcessInfo$Companion;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/NewTaskManager$ProcessInfo$Companion;->getSTATUS_PROCESS_RUNNING()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    invoke-direct {p0, v0}, Lcom/cloud/tmc/miniapp/NewTaskManager;->getFirstProcessByStatus(I)Lcom/cloud/tmc/miniapp/NewTaskManager$ProcessInfo;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method private final getNextLaunchActivityInfo()Lcom/cloud/tmc/miniapp/NewTaskManager$ActivityInfo;
    .locals 6

    .line 1
    sget-object v0, Lcom/cloud/tmc/miniapp/NewTaskManager;->Companion:Lcom/cloud/tmc/miniapp/NewTaskManager$Companion;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/NewTaskManager$Companion;->getInstance()Lcom/cloud/tmc/miniapp/NewTaskManager;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    monitor-enter v1

    .line 8
    :try_start_0
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/NewTaskManager;->getMaxTaskNum()I

    .line 9
    .line 10
    .line 11
    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 12
    const/4 v3, 0x0

    .line 13
    if-nez v2, :cond_0

    .line 14
    .line 15
    :try_start_1
    const-string v0, "NewTaskManager"

    .line 16
    .line 17
    const-string v2, "getNextLaunchActivityInfo finish"

    .line 18
    .line 19
    invoke-static {v0, v2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/NewTaskManager;->printStatus()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 23
    .line 24
    .line 25
    monitor-exit v1

    .line 26
    return-object v3

    .line 27
    :catchall_0
    move-exception v0

    .line 28
    goto/16 :goto_1

    .line 29
    .line 30
    :cond_0
    :try_start_2
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/NewTaskManager;->getFirstLastUsedProcess()Lcom/cloud/tmc/miniapp/NewTaskManager$ProcessInfo;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    if-eqz v2, :cond_1

    .line 35
    .line 36
    invoke-virtual {v2}, Lcom/cloud/tmc/miniapp/NewTaskManager$ProcessInfo;->getMActivityInfo()Lcom/cloud/tmc/miniapp/NewTaskManager$ActivityInfo;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    const-string v3, "NewTaskManager"

    .line 41
    .line 42
    invoke-direct {p0, v2}, Lcom/cloud/tmc/miniapp/NewTaskManager;->getProcessFullName(Lcom/cloud/tmc/miniapp/NewTaskManager$ProcessInfo;)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    new-instance v4, Ljava/lang/StringBuilder;

    .line 47
    .line 48
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 49
    .line 50
    .line 51
    const-string v5, "Use last process: "

    .line 52
    .line 53
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v2

    .line 63
    invoke-static {v3, v2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 64
    .line 65
    .line 66
    :try_start_3
    const-string v2, "NewTaskManager"

    .line 67
    .line 68
    const-string v3, "getNextLaunchActivityInfo finish"

    .line 69
    .line 70
    invoke-static {v2, v3}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/NewTaskManager;->printStatus()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 74
    .line 75
    .line 76
    monitor-exit v1

    .line 77
    return-object v0

    .line 78
    :catchall_1
    move-exception v0

    .line 79
    goto/16 :goto_0

    .line 80
    .line 81
    :cond_1
    :try_start_4
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/NewTaskManager;->getFirstIdleProcess()Lcom/cloud/tmc/miniapp/NewTaskManager$ProcessInfo;

    .line 82
    .line 83
    .line 84
    move-result-object v2

    .line 85
    if-eqz v2, :cond_2

    .line 86
    .line 87
    const-string v0, "NewTaskManager"

    .line 88
    .line 89
    invoke-direct {p0, v2}, Lcom/cloud/tmc/miniapp/NewTaskManager;->getProcessFullName(Lcom/cloud/tmc/miniapp/NewTaskManager$ProcessInfo;)Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v3

    .line 93
    new-instance v4, Ljava/lang/StringBuilder;

    .line 94
    .line 95
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 96
    .line 97
    .line 98
    const-string v5, "Use idle process: "

    .line 99
    .line 100
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v3

    .line 110
    invoke-static {v0, v3}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    invoke-virtual {v2}, Lcom/cloud/tmc/miniapp/NewTaskManager$ProcessInfo;->getMActivityInfo()Lcom/cloud/tmc/miniapp/NewTaskManager$ActivityInfo;

    .line 114
    .line 115
    .line 116
    move-result-object v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 117
    :try_start_5
    const-string v2, "NewTaskManager"

    .line 118
    .line 119
    const-string v3, "getNextLaunchActivityInfo finish"

    .line 120
    .line 121
    invoke-static {v2, v3}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/NewTaskManager;->printStatus()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 125
    .line 126
    .line 127
    monitor-exit v1

    .line 128
    return-object v0

    .line 129
    :cond_2
    :try_start_6
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/NewTaskManager;->getFirstDeadProcess()Lcom/cloud/tmc/miniapp/NewTaskManager$ProcessInfo;

    .line 130
    .line 131
    .line 132
    move-result-object v2

    .line 133
    invoke-static {v0}, Lcom/cloud/tmc/miniapp/NewTaskManager$Companion;->access$getCurrentRunningProcessNum(Lcom/cloud/tmc/miniapp/NewTaskManager$Companion;)I

    .line 134
    .line 135
    .line 136
    move-result v0

    .line 137
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/NewTaskManager;->getMaxTaskNum()I

    .line 138
    .line 139
    .line 140
    move-result v4

    .line 141
    if-ge v0, v4, :cond_3

    .line 142
    .line 143
    if-eqz v2, :cond_3

    .line 144
    .line 145
    const-string v0, "NewTaskManager"

    .line 146
    .line 147
    invoke-direct {p0, v2}, Lcom/cloud/tmc/miniapp/NewTaskManager;->getProcessFullName(Lcom/cloud/tmc/miniapp/NewTaskManager$ProcessInfo;)Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object v3

    .line 151
    new-instance v4, Ljava/lang/StringBuilder;

    .line 152
    .line 153
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 154
    .line 155
    .line 156
    const-string v5, "Use new process: "

    .line 157
    .line 158
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    .line 160
    .line 161
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    .line 163
    .line 164
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 165
    .line 166
    .line 167
    move-result-object v3

    .line 168
    invoke-static {v0, v3}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    .line 170
    .line 171
    invoke-virtual {v2}, Lcom/cloud/tmc/miniapp/NewTaskManager$ProcessInfo;->getMActivityInfo()Lcom/cloud/tmc/miniapp/NewTaskManager$ActivityInfo;

    .line 172
    .line 173
    .line 174
    move-result-object v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 175
    :try_start_7
    const-string v2, "NewTaskManager"

    .line 176
    .line 177
    const-string v3, "getNextLaunchActivityInfo finish"

    .line 178
    .line 179
    invoke-static {v2, v3}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    .line 181
    .line 182
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/NewTaskManager;->printStatus()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 183
    .line 184
    .line 185
    monitor-exit v1

    .line 186
    return-object v0

    .line 187
    :cond_3
    :try_start_8
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/NewTaskManager;->getFirstRunningProcess()Lcom/cloud/tmc/miniapp/NewTaskManager$ProcessInfo;

    .line 188
    .line 189
    .line 190
    move-result-object v0

    .line 191
    if-eqz v0, :cond_4

    .line 192
    .line 193
    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/NewTaskManager$ProcessInfo;->getMActivityInfo()Lcom/cloud/tmc/miniapp/NewTaskManager$ActivityInfo;

    .line 194
    .line 195
    .line 196
    move-result-object v2

    .line 197
    if-eqz v2, :cond_4

    .line 198
    .line 199
    const-string v3, "NewTaskManager"

    .line 200
    .line 201
    invoke-direct {p0, v0}, Lcom/cloud/tmc/miniapp/NewTaskManager;->getProcessFullName(Lcom/cloud/tmc/miniapp/NewTaskManager$ProcessInfo;)Ljava/lang/String;

    .line 202
    .line 203
    .line 204
    move-result-object v0

    .line 205
    new-instance v4, Ljava/lang/StringBuilder;

    .line 206
    .line 207
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 208
    .line 209
    .line 210
    const-string v5, "Reuse background info: "

    .line 211
    .line 212
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    .line 214
    .line 215
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 216
    .line 217
    .line 218
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 219
    .line 220
    .line 221
    move-result-object v0

    .line 222
    invoke-static {v3, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 223
    .line 224
    .line 225
    :try_start_9
    const-string v0, "NewTaskManager"

    .line 226
    .line 227
    const-string v3, "getNextLaunchActivityInfo finish"

    .line 228
    .line 229
    invoke-static {v0, v3}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    .line 231
    .line 232
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/NewTaskManager;->printStatus()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 233
    .line 234
    .line 235
    monitor-exit v1

    .line 236
    return-object v2

    .line 237
    :cond_4
    :try_start_a
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/NewTaskManager;->getFirstRunningProcess()Lcom/cloud/tmc/miniapp/NewTaskManager$ProcessInfo;

    .line 238
    .line 239
    .line 240
    move-result-object v0

    .line 241
    if-eqz v0, :cond_5

    .line 242
    .line 243
    const-string v2, "NewTaskManager"

    .line 244
    .line 245
    invoke-direct {p0, v0}, Lcom/cloud/tmc/miniapp/NewTaskManager;->getProcessFullName(Lcom/cloud/tmc/miniapp/NewTaskManager$ProcessInfo;)Ljava/lang/String;

    .line 246
    .line 247
    .line 248
    move-result-object v3

    .line 249
    new-instance v4, Ljava/lang/StringBuilder;

    .line 250
    .line 251
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 252
    .line 253
    .line 254
    const-string v5, "Fallback: Reuse info:"

    .line 255
    .line 256
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 257
    .line 258
    .line 259
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 260
    .line 261
    .line 262
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 263
    .line 264
    .line 265
    move-result-object v3

    .line 266
    invoke-static {v2, v3}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    .line 268
    .line 269
    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/NewTaskManager$ProcessInfo;->getMActivityInfo()Lcom/cloud/tmc/miniapp/NewTaskManager$ActivityInfo;

    .line 270
    .line 271
    .line 272
    move-result-object v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 273
    :try_start_b
    const-string v2, "NewTaskManager"

    .line 274
    .line 275
    const-string v3, "getNextLaunchActivityInfo finish"

    .line 276
    .line 277
    invoke-static {v2, v3}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    .line 279
    .line 280
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/NewTaskManager;->printStatus()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 281
    .line 282
    .line 283
    monitor-exit v1

    .line 284
    return-object v0

    .line 285
    :cond_5
    :try_start_c
    const-string v0, "NewTaskManager"

    .line 286
    .line 287
    const-string v2, "Error, Can\'t find container to launch, please Check"

    .line 288
    .line 289
    invoke-static {v0, v2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    .line 290
    .line 291
    .line 292
    :try_start_d
    const-string v0, "NewTaskManager"

    .line 293
    .line 294
    const-string v2, "getNextLaunchActivityInfo finish"

    .line 295
    .line 296
    invoke-static {v0, v2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    .line 298
    .line 299
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/NewTaskManager;->printStatus()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 300
    .line 301
    .line 302
    monitor-exit v1

    .line 303
    return-object v3

    .line 304
    :goto_0
    :try_start_e
    const-string v2, "NewTaskManager"

    .line 305
    .line 306
    const-string v3, "getNextLaunchActivityInfo finish"

    .line 307
    .line 308
    invoke-static {v2, v3}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 309
    .line 310
    .line 311
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/NewTaskManager;->printStatus()V

    .line 312
    .line 313
    .line 314
    throw v0
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    .line 315
    :goto_1
    monitor-exit v1

    .line 316
    throw v0
.end method

.method private final getProcessFullName(Lcom/cloud/tmc/miniapp/NewTaskManager$ActivityInfo;)Ljava/lang/String;
    .locals 2

    .line 2
    :try_start_0
    const-class v0, Lcom/cloud/tmc/kernel/service/EnvironmentService;

    .line 3
    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/kernel/service/EnvironmentService;

    invoke-interface {v0}, Lcom/cloud/tmc/kernel/service/EnvironmentService;->getApplicationContext()Landroid/app/Application;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    if-eqz p1, :cond_0

    .line 5
    invoke-virtual {p1}, Lcom/cloud/tmc/miniapp/NewTaskManager$ActivityInfo;->getMProcessName()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1

    :cond_0
    const-string p1, ""

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    .line 6
    :catchall_0
    const-string p1, "unknown process"

    return-object p1
.end method

.method private final getProcessFullName(Lcom/cloud/tmc/miniapp/NewTaskManager$ProcessInfo;)Ljava/lang/String;
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p1}, Lcom/cloud/tmc/miniapp/NewTaskManager$ProcessInfo;->getMActivityInfo()Lcom/cloud/tmc/miniapp/NewTaskManager$ActivityInfo;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-direct {p0, p1}, Lcom/cloud/tmc/miniapp/NewTaskManager;->getProcessFullName(Lcom/cloud/tmc/miniapp/NewTaskManager$ActivityInfo;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private final getProcessInfoByActivityInfo(Lcom/cloud/tmc/miniapp/NewTaskManager$ActivityInfo;)Lcom/cloud/tmc/miniapp/NewTaskManager$ProcessInfo;
    .locals 3

    .line 1
    sget-object v0, Lcom/cloud/tmc/miniapp/NewTaskManager;->sProcessInfos:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_1

    .line 12
    .line 13
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Lcom/cloud/tmc/miniapp/NewTaskManager$ProcessInfo;

    .line 18
    .line 19
    invoke-virtual {v1}, Lcom/cloud/tmc/miniapp/NewTaskManager$ProcessInfo;->getMActivityInfo()Lcom/cloud/tmc/miniapp/NewTaskManager$ActivityInfo;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    if-ne v2, p1, :cond_0

    .line 24
    .line 25
    return-object v1

    .line 26
    :cond_1
    const/4 p1, 0x0

    .line 27
    return-object p1
.end method

.method public static synthetic moveToForeground$default(Lcom/cloud/tmc/miniapp/NewTaskManager;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V
    .locals 0

    .line 1
    and-int/lit8 p3, p3, 0x2

    .line 2
    .line 3
    if-eqz p3, :cond_0

    .line 4
    .line 5
    const-string p2, ""

    .line 6
    .line 7
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/cloud/tmc/miniapp/NewTaskManager;->moveToForeground(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method private final printStatus()V
    .locals 0

    .line 1
    return-void
.end method

.method private final declared-synchronized releaseProcess(Lcom/cloud/tmc/miniapp/NewTaskManager$ProcessInfo;)V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    goto :goto_0

    .line 5
    :cond_0
    :try_start_0
    sget-object v0, Lcom/cloud/tmc/miniapp/NewTaskManager$ProcessInfo;->Companion:Lcom/cloud/tmc/miniapp/NewTaskManager$ProcessInfo$Companion;

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/NewTaskManager$ProcessInfo$Companion;->getSTATUS_PROCESS_WAIT_RELEASE()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    invoke-virtual {p1, v0}, Lcom/cloud/tmc/miniapp/NewTaskManager$ProcessInfo;->setMStatus(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    .line 13
    .line 14
    :goto_0
    monitor-exit p0

    .line 15
    return-void

    .line 16
    :catchall_0
    move-exception p1

    .line 17
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 18
    throw p1
.end method

.method private final removeFromRecentTasksList(Ljava/lang/Class;Lcom/cloud/tmc/miniapp/NewTaskManager$ProcessInfo;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/cloud/tmc/miniapp/NewTaskManager$ProcessInfo;",
            ")Z"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    const-string v1, "NewTaskManager"

    .line 3
    .line 4
    if-nez p1, :cond_0

    .line 5
    .line 6
    const-string p1, "removeFromRecentTasksList: className null"

    .line 7
    .line 8
    invoke-static {v1, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    return v0

    .line 12
    :cond_0
    :try_start_0
    sget-object v2, Lcom/cloud/tmc/miniapp/NewTaskManager;->Companion:Lcom/cloud/tmc/miniapp/NewTaskManager$Companion;

    .line 13
    .line 14
    sget-object v3, Lcom/cloud/tmc/miniapp/NewTaskManager$ProcessInfo;->Companion:Lcom/cloud/tmc/miniapp/NewTaskManager$ProcessInfo$Companion;

    .line 15
    .line 16
    invoke-virtual {v3}, Lcom/cloud/tmc/miniapp/NewTaskManager$ProcessInfo$Companion;->getSTATUS_PROCESS_DEAD()I

    .line 17
    .line 18
    .line 19
    move-result v3

    .line 20
    invoke-static {v2, p2, v3}, Lcom/cloud/tmc/miniapp/NewTaskManager$Companion;->access$resetProcessInfoToStatus(Lcom/cloud/tmc/miniapp/NewTaskManager$Companion;Lcom/cloud/tmc/miniapp/NewTaskManager$ProcessInfo;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    .line 22
    .line 23
    :catchall_0
    :try_start_1
    invoke-static {}, Lcom/cloud/tmc/miniutils/util/Utils;->getApp()Landroid/app/Application;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    const-string v3, "activity"

    .line 28
    .line 29
    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    const-string v3, "null cannot be cast to non-null type android.app.ActivityManager"

    .line 34
    .line 35
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    check-cast v2, Landroid/app/ActivityManager;

    .line 39
    .line 40
    invoke-virtual {v2}, Landroid/app/ActivityManager;->getAppTasks()Ljava/util/List;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    const-string v3, "activityManager.appTasks"

    .line 45
    .line 46
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 54
    .line 55
    .line 56
    move-result v3

    .line 57
    if-eqz v3, :cond_5

    .line 58
    .line 59
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v3

    .line 63
    check-cast v3, Landroid/app/ActivityManager$AppTask;

    .line 64
    .line 65
    invoke-virtual {v3}, Landroid/app/ActivityManager$AppTask;->getTaskInfo()Landroid/app/ActivityManager$RecentTaskInfo;

    .line 66
    .line 67
    .line 68
    move-result-object v4

    .line 69
    const-string v5, "appTask.taskInfo"

    .line 70
    .line 71
    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    invoke-static {v4}, Lcom/cloud/tmc/miniapp/g;->a(Landroid/app/ActivityManager$RecentTaskInfo;)Landroid/content/Intent;

    .line 75
    .line 76
    .line 77
    move-result-object v5

    .line 78
    invoke-virtual {v5}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    .line 79
    .line 80
    .line 81
    move-result-object v5

    .line 82
    const/4 v6, 0x0

    .line 83
    if-eqz v5, :cond_3

    .line 84
    .line 85
    invoke-virtual {p1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v5

    .line 89
    invoke-static {v4}, Lcom/cloud/tmc/miniapp/g;->a(Landroid/app/ActivityManager$RecentTaskInfo;)Landroid/content/Intent;

    .line 90
    .line 91
    .line 92
    move-result-object v7

    .line 93
    invoke-virtual {v7}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    .line 94
    .line 95
    .line 96
    move-result-object v7

    .line 97
    if-eqz v7, :cond_1

    .line 98
    .line 99
    invoke-virtual {v7}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v7

    .line 103
    goto :goto_1

    .line 104
    :catchall_1
    move-exception v2

    .line 105
    goto :goto_2

    .line 106
    :cond_1
    move-object v7, v6

    .line 107
    :goto_1
    const/4 v8, 0x1

    .line 108
    invoke-static {v5, v7, v8}, Lkotlin/text/StringsKt;->H(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 109
    .line 110
    .line 111
    move-result v5

    .line 112
    if-eqz v5, :cond_2

    .line 113
    .line 114
    invoke-virtual {v3}, Landroid/app/ActivityManager$AppTask;->finishAndRemoveTask()V

    .line 115
    .line 116
    .line 117
    const-string v2, "removeFromRecentTasksList: finishAndRemoveTask success"

    .line 118
    .line 119
    invoke-static {v1, v2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    return v8

    .line 123
    :cond_2
    const-string v3, "removeFromRecentTasksList: recentTaskInfo null"

    .line 124
    .line 125
    invoke-static {v1, v3}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    .line 127
    .line 128
    :cond_3
    invoke-virtual {p1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object v3

    .line 132
    invoke-static {v4}, Lcom/cloud/tmc/miniapp/g;->a(Landroid/app/ActivityManager$RecentTaskInfo;)Landroid/content/Intent;

    .line 133
    .line 134
    .line 135
    move-result-object v4

    .line 136
    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    .line 137
    .line 138
    .line 139
    move-result-object v4

    .line 140
    if-eqz v4, :cond_4

    .line 141
    .line 142
    invoke-virtual {v4}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object v6

    .line 146
    :cond_4
    new-instance v4, Ljava/lang/StringBuilder;

    .line 147
    .line 148
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 149
    .line 150
    .line 151
    const-string v5, "removeFromRecentTasksList: recentTaskInfo "

    .line 152
    .line 153
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    .line 155
    .line 156
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    .line 158
    .line 159
    const-string v3, ","

    .line 160
    .line 161
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    .line 163
    .line 164
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    .line 166
    .line 167
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object v3

    .line 171
    invoke-static {v1, v3}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 172
    .line 173
    .line 174
    goto :goto_0

    .line 175
    :goto_2
    const-string v3, "removeFromRecentTasksList exception"

    .line 176
    .line 177
    invoke-static {v1, v3, v2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 178
    .line 179
    .line 180
    sget-object v1, Lcom/cloud/tmc/miniapp/NewTaskManager;->Companion:Lcom/cloud/tmc/miniapp/NewTaskManager$Companion;

    .line 181
    .line 182
    sget-object v2, Lcom/cloud/tmc/miniapp/NewTaskManager$ProcessInfo;->Companion:Lcom/cloud/tmc/miniapp/NewTaskManager$ProcessInfo$Companion;

    .line 183
    .line 184
    invoke-virtual {v2}, Lcom/cloud/tmc/miniapp/NewTaskManager$ProcessInfo$Companion;->getSTATUS_PROCESS_DEAD()I

    .line 185
    .line 186
    .line 187
    move-result v2

    .line 188
    invoke-static {v1, p2, v2}, Lcom/cloud/tmc/miniapp/NewTaskManager$Companion;->access$resetProcessInfoToStatus(Lcom/cloud/tmc/miniapp/NewTaskManager$Companion;Lcom/cloud/tmc/miniapp/NewTaskManager$ProcessInfo;I)V

    .line 189
    .line 190
    .line 191
    invoke-direct {p0, p1}, Lcom/cloud/tmc/miniapp/NewTaskManager;->finishActivityTask(Ljava/lang/Class;)V

    .line 192
    .line 193
    .line 194
    :cond_5
    return v0
.end method

.method private final updateConfig()V
    .locals 8

    .line 1
    :try_start_0
    sget-object v0, Lcom/cloud/tmc/miniapp/NewTaskManager;->Companion:Lcom/cloud/tmc/miniapp/NewTaskManager$Companion;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/cloud/tmc/miniapp/NewTaskManager$Companion;->access$getEnableTaskStorage(Lcom/cloud/tmc/miniapp/NewTaskManager$Companion;)Z

    .line 4
    .line 5
    .line 6
    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    const-string v1, "NewTaskManager"

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    :try_start_1
    const-string v0, "init updateTaskInfoConfig:enableTaskStorage is false"

    .line 12
    .line 13
    invoke-static {v1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :cond_0
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/NewTaskManager;->getMaxTaskNum()I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    const/4 v2, 0x0

    .line 22
    invoke-static {v2, v0}, Lkotlin/ranges/RangesKt;->s(II)Lkotlin/ranges/IntRange;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    if-eqz v2, :cond_3

    .line 35
    .line 36
    move-object v2, v0

    .line 37
    check-cast v2, Lkotlin/collections/IntIterator;

    .line 38
    .line 39
    invoke-virtual {v2}, Lkotlin/collections/IntIterator;->a()I

    .line 40
    .line 41
    .line 42
    move-result v2

    .line 43
    const-class v3, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;

    .line 44
    .line 45
    invoke-static {v3}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v3

    .line 49
    check-cast v3, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;

    .line 50
    .line 51
    invoke-static {}, Lcom/cloud/tmc/miniutils/util/Utils;->getApp()Landroid/app/Application;

    .line 52
    .line 53
    .line 54
    move-result-object v4

    .line 55
    const-string v5, "minisdk_storage"

    .line 56
    .line 57
    new-instance v6, Ljava/lang/StringBuilder;

    .line 58
    .line 59
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 60
    .line 61
    .line 62
    const-string v7, "miniapp_task_info_"

    .line 63
    .line 64
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v6

    .line 74
    invoke-interface {v3, v4, v5, v6}, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v3

    .line 78
    if-eqz v3, :cond_1

    .line 79
    .line 80
    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    .line 81
    .line 82
    .line 83
    move-result v4

    .line 84
    if-lez v4, :cond_1

    .line 85
    .line 86
    sget-object v4, Lcom/cloud/tmc/miniapp/NewTaskManager;->sProcessInfos:Ljava/util/List;

    .line 87
    .line 88
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object v4

    .line 92
    check-cast v4, Lcom/cloud/tmc/miniapp/NewTaskManager$ProcessInfo;

    .line 93
    .line 94
    invoke-virtual {v4}, Lcom/cloud/tmc/miniapp/NewTaskManager$ProcessInfo;->getMAppId()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v5

    .line 98
    if-eqz v5, :cond_2

    .line 99
    .line 100
    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    .line 101
    .line 102
    .line 103
    move-result v5

    .line 104
    if-nez v5, :cond_1

    .line 105
    .line 106
    :cond_2
    invoke-virtual {v4, v3}, Lcom/cloud/tmc/miniapp/NewTaskManager$ProcessInfo;->setMAppId(Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    add-int/lit8 v2, v2, 0x1

    .line 110
    .line 111
    invoke-virtual {v4}, Lcom/cloud/tmc/miniapp/NewTaskManager$ProcessInfo;->getMAppId()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v3

    .line 115
    new-instance v4, Ljava/lang/StringBuilder;

    .line 116
    .line 117
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 118
    .line 119
    .line 120
    const-string v5, " init updateTaskInfoConfig:MiniappActivity"

    .line 121
    .line 122
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    const-string v2, " -> "

    .line 129
    .line 130
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    .line 132
    .line 133
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    .line 135
    .line 136
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object v2

    .line 140
    invoke-static {v1, v2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 141
    .line 142
    .line 143
    goto :goto_0

    .line 144
    :catchall_0
    :cond_3
    return-void
.end method


# virtual methods
.method public final addActivityStack(Ljava/lang/String;)V
    .locals 5

    .line 1
    const-string v0, "NewTaskManager"

    .line 2
    .line 3
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/cloud/tmc/miniapp/NewTaskManager;->checkOpenMutipleTask(Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-nez v1, :cond_4

    .line 8
    .line 9
    sget-object v1, Lcom/cloud/tmc/miniapp/NewTaskManager;->taskQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 10
    .line 11
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    if-eqz v2, :cond_1

    .line 20
    .line 21
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    move-object v3, v2

    .line 26
    check-cast v3, Lcom/cloud/tmc/miniapp/NewTaskManager$TaskModel;

    .line 27
    .line 28
    invoke-virtual {v3}, Lcom/cloud/tmc/miniapp/NewTaskManager$TaskModel;->getRootAppId()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    move-result v3

    .line 36
    if-eqz v3, :cond_0

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :catchall_0
    move-exception p1

    .line 40
    goto :goto_2

    .line 41
    :cond_1
    const/4 v2, 0x0

    .line 42
    :goto_0
    check-cast v2, Lcom/cloud/tmc/miniapp/NewTaskManager$TaskModel;

    .line 43
    .line 44
    if-eqz v2, :cond_2

    .line 45
    .line 46
    sget-object v1, Lcom/cloud/tmc/miniapp/NewTaskManager;->taskQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 47
    .line 48
    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->remove(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    :cond_2
    sget-object v1, Lcom/cloud/tmc/miniapp/NewTaskManager;->taskQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 52
    .line 53
    new-instance v2, Lcom/cloud/tmc/miniapp/NewTaskManager$TaskModel;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    .line 55
    const-string v3, ""

    .line 56
    .line 57
    if-nez p1, :cond_3

    .line 58
    .line 59
    move-object v4, v3

    .line 60
    goto :goto_1

    .line 61
    :cond_3
    move-object v4, p1

    .line 62
    :goto_1
    :try_start_1
    invoke-direct {v2, v4, v3}, Lcom/cloud/tmc/miniapp/NewTaskManager$TaskModel;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    .line 66
    .line 67
    .line 68
    new-instance v1, Ljava/lang/StringBuilder;

    .line 69
    .line 70
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 71
    .line 72
    .line 73
    const-string v2, "addActivityStack: add appId:"

    .line 74
    .line 75
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    invoke-static {v0, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 86
    .line 87
    .line 88
    goto :goto_3

    .line 89
    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    .line 90
    .line 91
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 92
    .line 93
    .line 94
    const-string v2, "addActivityStack:"

    .line 95
    .line 96
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object p1

    .line 106
    invoke-static {v0, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    :cond_4
    :goto_3
    return-void
.end method

.method public final addStack(Ljava/lang/String;JLcom/cloud/tmc/miniapp/NewTaskManager$ActivityInfo;)V
    .locals 5

    .line 1
    const-string v0, "addStack finish"

    .line 2
    .line 3
    const-string v1, "NewTaskManager"

    .line 4
    .line 5
    const-string v2, "appId"

    .line 6
    .line 7
    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/cloud/tmc/miniapp/NewTaskManager;->checkOpenMutipleTask(Ljava/lang/String;)Z

    .line 11
    .line 12
    .line 13
    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    if-nez v2, :cond_0

    .line 15
    .line 16
    invoke-static {v1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/NewTaskManager;->printStatus()V

    .line 20
    .line 21
    .line 22
    return-void

    .line 23
    :cond_0
    if-nez p4, :cond_1

    .line 24
    .line 25
    invoke-static {v1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/NewTaskManager;->printStatus()V

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    :cond_1
    :try_start_1
    invoke-virtual {p4}, Lcom/cloud/tmc/miniapp/NewTaskManager$ActivityInfo;->getActivityClazz()Ljava/lang/Class;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    new-instance v3, Ljava/lang/StringBuilder;

    .line 37
    .line 38
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 39
    .line 40
    .line 41
    const-string v4, "addStack:"

    .line 42
    .line 43
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    const-string v2, " "

    .line 50
    .line 51
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    invoke-static {v1, v2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    invoke-direct {p0, p4}, Lcom/cloud/tmc/miniapp/NewTaskManager;->getProcessInfoByActivityInfo(Lcom/cloud/tmc/miniapp/NewTaskManager$ActivityInfo;)Lcom/cloud/tmc/miniapp/NewTaskManager$ProcessInfo;

    .line 65
    .line 66
    .line 67
    move-result-object p4

    .line 68
    if-eqz p4, :cond_3

    .line 69
    .line 70
    invoke-virtual {p4}, Lcom/cloud/tmc/miniapp/NewTaskManager$ProcessInfo;->getMAppId()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v2

    .line 74
    if-eqz v2, :cond_2

    .line 75
    .line 76
    invoke-static {v2, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 77
    .line 78
    .line 79
    move-result v3

    .line 80
    if-nez v3, :cond_2

    .line 81
    .line 82
    new-instance v3, Ljava/lang/StringBuilder;

    .line 83
    .line 84
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 85
    .line 86
    .line 87
    const-string v4, "addStack oldAppid:"

    .line 88
    .line 89
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    const-string v4, ",new appId:"

    .line 96
    .line 97
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v3

    .line 107
    invoke-static {v1, v3}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    const/4 v3, 0x1

    .line 111
    invoke-virtual {p0, v2, v3}, Lcom/cloud/tmc/miniapp/NewTaskManager;->removeFromStack(Ljava/lang/String;Z)V

    .line 112
    .line 113
    .line 114
    goto :goto_0

    .line 115
    :catchall_0
    move-exception p1

    .line 116
    goto :goto_1

    .line 117
    :cond_2
    :goto_0
    sget-object v2, Lcom/cloud/tmc/miniapp/NewTaskManager$ProcessInfo;->Companion:Lcom/cloud/tmc/miniapp/NewTaskManager$ProcessInfo$Companion;

    .line 118
    .line 119
    invoke-virtual {v2}, Lcom/cloud/tmc/miniapp/NewTaskManager$ProcessInfo$Companion;->getSTATUS_PROCESS_RUNNING()I

    .line 120
    .line 121
    .line 122
    move-result v2

    .line 123
    invoke-virtual {p4, v2}, Lcom/cloud/tmc/miniapp/NewTaskManager$ProcessInfo;->setMStatus(I)V

    .line 124
    .line 125
    .line 126
    invoke-virtual {p4, p1}, Lcom/cloud/tmc/miniapp/NewTaskManager$ProcessInfo;->setMAppId(Ljava/lang/String;)V

    .line 127
    .line 128
    .line 129
    invoke-virtual {p4, p2, p3}, Lcom/cloud/tmc/miniapp/NewTaskManager$ProcessInfo;->setMAppToken(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 130
    .line 131
    .line 132
    :cond_3
    invoke-static {v1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    .line 134
    .line 135
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/NewTaskManager;->printStatus()V

    .line 136
    .line 137
    .line 138
    goto :goto_2

    .line 139
    :goto_1
    :try_start_2
    const-string p2, "addStack exception:"

    .line 140
    .line 141
    invoke-static {v1, p2, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 142
    .line 143
    .line 144
    invoke-static {v1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    .line 146
    .line 147
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/NewTaskManager;->printStatus()V

    .line 148
    .line 149
    .line 150
    :goto_2
    return-void

    .line 151
    :catchall_1
    move-exception p1

    .line 152
    invoke-static {v1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    .line 154
    .line 155
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/NewTaskManager;->printStatus()V

    .line 156
    .line 157
    .line 158
    throw p1
.end method

.method public final checkFeedBackApp(Ljava/lang/String;)Z
    .locals 3

    .line 1
    const-string v0, "1000391591855976448"

    .line 2
    .line 3
    :try_start_0
    const-class v1, Lcom/cloud/tmc/kernel/service/ConfigService;

    .line 4
    .line 5
    invoke-static {v1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    check-cast v1, Lcom/cloud/tmc/kernel/service/ConfigService;

    .line 10
    .line 11
    const-string v2, "miniFeedbackId"

    .line 12
    .line 13
    invoke-interface {v1, v2, v0}, Lcom/cloud/tmc/kernel/service/ConfigService;->getConfigString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    :catchall_0
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    invoke-virtual {p0, p1}, Lcom/cloud/tmc/miniapp/NewTaskManager;->checkOpenMutipleTask(Ljava/lang/String;)Z

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    if-eqz p1, :cond_0

    .line 28
    .line 29
    const/4 p1, 0x1

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    const/4 p1, 0x0

    .line 32
    :goto_0
    return p1
.end method

.method public final checkMiniAppServerApp(Ljava/lang/String;)Z
    .locals 3

    .line 1
    const-string v0, "1000550440273772544"

    .line 2
    .line 3
    :try_start_0
    const-class v1, Lcom/cloud/tmc/kernel/service/ConfigService;

    .line 4
    .line 5
    invoke-static {v1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    check-cast v1, Lcom/cloud/tmc/kernel/service/ConfigService;

    .line 10
    .line 11
    const-string v2, "miniAppServerId"

    .line 12
    .line 13
    invoke-interface {v1, v2, v0}, Lcom/cloud/tmc/kernel/service/ConfigService;->getConfigString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    :catchall_0
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    invoke-virtual {p0, p1}, Lcom/cloud/tmc/miniapp/NewTaskManager;->checkOpenMutipleTask(Ljava/lang/String;)Z

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    if-eqz p1, :cond_0

    .line 28
    .line 29
    const/4 p1, 0x1

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    const/4 p1, 0x0

    .line 32
    :goto_0
    return p1
.end method

.method public final checkOpenMutipleTask(Ljava/lang/String;)Z
    .locals 1

    .line 1
    const-class p1, Lcom/cloud/tmc/kernel/intf/IPackageConfig;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Lcom/cloud/tmc/kernel/intf/IPackageConfig;

    .line 8
    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    invoke-interface {p1}, Lcom/cloud/tmc/kernel/intf/IPackageConfig;->getOpenMutipleTask()Z

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    const/4 v0, 0x1

    .line 16
    if-ne p1, v0, :cond_0

    .line 17
    .line 18
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/NewTaskManager;->getMaxTaskNum()I

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    if-eqz p1, :cond_0

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const/4 v0, 0x0

    .line 26
    :goto_0
    return v0
.end method

.method public final checkRecentTaskList()V
    .locals 10

    .line 1
    const-string v0, "miniapp_task_info_"

    .line 2
    .line 3
    const-string v1, "minisdk_storage"

    .line 4
    .line 5
    const-class v2, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;

    .line 6
    .line 7
    const-string v3, "NewTaskManager"

    .line 8
    .line 9
    :try_start_0
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/NewTaskManager;->getMaxTaskNum()I

    .line 10
    .line 11
    .line 12
    move-result v4

    .line 13
    if-nez v4, :cond_5

    .line 14
    .line 15
    const-string v4, "<checkRecentTaskList> getMaxTaskNum == 0, try clean recentTaskList"

    .line 16
    .line 17
    invoke-static {v3, v4}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    const/4 v4, 0x0

    .line 21
    const/4 v5, 0x4

    .line 22
    invoke-static {v4, v5}, Lkotlin/ranges/RangesKt;->s(II)Lkotlin/ranges/IntRange;

    .line 23
    .line 24
    .line 25
    move-result-object v4

    .line 26
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 27
    .line 28
    .line 29
    move-result-object v4

    .line 30
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 31
    .line 32
    .line 33
    move-result v5

    .line 34
    if-eqz v5, :cond_5

    .line 35
    .line 36
    move-object v5, v4

    .line 37
    check-cast v5, Lkotlin/collections/IntIterator;

    .line 38
    .line 39
    invoke-virtual {v5}, Lkotlin/collections/IntIterator;->a()I

    .line 40
    .line 41
    .line 42
    move-result v5

    .line 43
    invoke-static {v2}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v6

    .line 47
    check-cast v6, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;

    .line 48
    .line 49
    invoke-static {}, Lcom/cloud/tmc/miniutils/util/Utils;->getApp()Landroid/app/Application;

    .line 50
    .line 51
    .line 52
    move-result-object v7

    .line 53
    new-instance v8, Ljava/lang/StringBuilder;

    .line 54
    .line 55
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v8

    .line 68
    invoke-interface {v6, v7, v1, v8}, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v6

    .line 72
    if-eqz v6, :cond_0

    .line 73
    .line 74
    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    .line 75
    .line 76
    .line 77
    move-result v6

    .line 78
    if-lez v6, :cond_0

    .line 79
    .line 80
    invoke-static {v2}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object v6

    .line 84
    check-cast v6, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;

    .line 85
    .line 86
    invoke-static {}, Lcom/cloud/tmc/miniutils/util/Utils;->getApp()Landroid/app/Application;

    .line 87
    .line 88
    .line 89
    move-result-object v7

    .line 90
    new-instance v8, Ljava/lang/StringBuilder;

    .line 91
    .line 92
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 93
    .line 94
    .line 95
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v8

    .line 105
    const-string v9, ""

    .line 106
    .line 107
    invoke-interface {v6, v7, v1, v8, v9}, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    const/4 v6, 0x0

    .line 111
    if-eqz v5, :cond_4

    .line 112
    .line 113
    const/4 v7, 0x1

    .line 114
    if-eq v5, v7, :cond_3

    .line 115
    .line 116
    const/4 v7, 0x2

    .line 117
    if-eq v5, v7, :cond_2

    .line 118
    .line 119
    const/4 v7, 0x3

    .line 120
    if-eq v5, v7, :cond_1

    .line 121
    .line 122
    move-object v7, v6

    .line 123
    goto :goto_1

    .line 124
    :cond_1
    const-class v7, Lcom/cloud/tmc/miniapp/ui/multiprogress/MiniSubActivity4;

    .line 125
    .line 126
    goto :goto_1

    .line 127
    :catchall_0
    move-exception v0

    .line 128
    goto :goto_2

    .line 129
    :cond_2
    const-class v7, Lcom/cloud/tmc/miniapp/ui/multiprogress/MiniSubActivity3;

    .line 130
    .line 131
    goto :goto_1

    .line 132
    :cond_3
    const-class v7, Lcom/cloud/tmc/miniapp/ui/multiprogress/MiniSubActivity2;

    .line 133
    .line 134
    goto :goto_1

    .line 135
    :cond_4
    const-class v7, Lcom/cloud/tmc/miniapp/ui/multiprogress/MiniSubActivity1;

    .line 136
    .line 137
    :goto_1
    new-instance v8, Ljava/lang/StringBuilder;

    .line 138
    .line 139
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 140
    .line 141
    .line 142
    const-string v9, "<checkRecentTaskList> task_"

    .line 143
    .line 144
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    .line 146
    .line 147
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 148
    .line 149
    .line 150
    const-string v5, " exit, try clean "

    .line 151
    .line 152
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    .line 154
    .line 155
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 156
    .line 157
    .line 158
    const-string v5, " recentTask"

    .line 159
    .line 160
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    .line 162
    .line 163
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object v5

    .line 167
    invoke-static {v3, v5}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    .line 169
    .line 170
    if-eqz v7, :cond_0

    .line 171
    .line 172
    invoke-direct {p0, v7, v6}, Lcom/cloud/tmc/miniapp/NewTaskManager;->removeFromRecentTasksList(Ljava/lang/Class;Lcom/cloud/tmc/miniapp/NewTaskManager$ProcessInfo;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 173
    .line 174
    .line 175
    goto/16 :goto_0

    .line 176
    .line 177
    :goto_2
    const-string v1, "<checkRecentTaskList> error"

    .line 178
    .line 179
    invoke-static {v3, v1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 180
    .line 181
    .line 182
    :cond_5
    return-void
.end method

.method public final checkTaskId(Ljava/lang/String;Ljava/lang/Class;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 1
    const-string v0, "NewTaskManager"

    .line 2
    .line 3
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/cloud/tmc/miniapp/NewTaskManager;->checkOpenMutipleTask(Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    sget-object v1, Lcom/cloud/tmc/miniapp/NewTaskManager;->sProcessInfos:Ljava/util/List;

    .line 11
    .line 12
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    if-eqz v2, :cond_6

    .line 21
    .line 22
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    check-cast v2, Lcom/cloud/tmc/miniapp/NewTaskManager$ProcessInfo;

    .line 27
    .line 28
    invoke-virtual {v2}, Lcom/cloud/tmc/miniapp/NewTaskManager$ProcessInfo;->getMActivityInfo()Lcom/cloud/tmc/miniapp/NewTaskManager$ActivityInfo;

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    invoke-virtual {v3}, Lcom/cloud/tmc/miniapp/NewTaskManager$ActivityInfo;->getActivityClazz()Ljava/lang/Class;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    const/4 v4, 0x0

    .line 37
    if-eqz v3, :cond_2

    .line 38
    .line 39
    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v3

    .line 43
    goto :goto_0

    .line 44
    :catchall_0
    move-exception p1

    .line 45
    goto/16 :goto_2

    .line 46
    .line 47
    :cond_2
    move-object v3, v4

    .line 48
    :goto_0
    if-eqz p2, :cond_3

    .line 49
    .line 50
    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v5

    .line 54
    goto :goto_1

    .line 55
    :cond_3
    move-object v5, v4

    .line 56
    :goto_1
    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 57
    .line 58
    .line 59
    move-result v3

    .line 60
    if-eqz v3, :cond_1

    .line 61
    .line 62
    invoke-virtual {v2}, Lcom/cloud/tmc/miniapp/NewTaskManager$ProcessInfo;->getMAppId()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    if-eqz p2, :cond_4

    .line 67
    .line 68
    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v4

    .line 72
    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    .line 73
    .line 74
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 75
    .line 76
    .line 77
    const-string v5, "checkTaskId:"

    .line 78
    .line 79
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    const-string v1, ","

    .line 86
    .line 87
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v1

    .line 97
    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {v2}, Lcom/cloud/tmc/miniapp/NewTaskManager$ProcessInfo;->getMAppId()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v1

    .line 104
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 105
    .line 106
    .line 107
    move-result v1

    .line 108
    if-nez v1, :cond_6

    .line 109
    .line 110
    invoke-virtual {v2}, Lcom/cloud/tmc/miniapp/NewTaskManager$ProcessInfo;->getMAppId()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v1

    .line 114
    new-instance v3, Ljava/lang/StringBuilder;

    .line 115
    .line 116
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 117
    .line 118
    .line 119
    const-string v4, "removeFromRecentTasksList activity appid:"

    .line 120
    .line 121
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    .line 126
    .line 127
    const-string v4, ",processInfo.mAppId:"

    .line 128
    .line 129
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    .line 134
    .line 135
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object v1

    .line 139
    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    .line 141
    .line 142
    invoke-virtual {v2}, Lcom/cloud/tmc/miniapp/NewTaskManager$ProcessInfo;->getMAppId()Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object v1

    .line 146
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 147
    .line 148
    .line 149
    move-result v1

    .line 150
    if-nez v1, :cond_5

    .line 151
    .line 152
    const-string p1, "removeFromRecentTasksList,remove"

    .line 153
    .line 154
    invoke-static {v0, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    .line 156
    .line 157
    invoke-direct {p0, p2, v2}, Lcom/cloud/tmc/miniapp/NewTaskManager;->removeFromRecentTasksList(Ljava/lang/Class;Lcom/cloud/tmc/miniapp/NewTaskManager$ProcessInfo;)Z

    .line 158
    .line 159
    .line 160
    goto :goto_3

    .line 161
    :cond_5
    const-string p2, "removeFromRecentTasksList, update"

    .line 162
    .line 163
    invoke-static {v0, p2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    .line 165
    .line 166
    invoke-virtual {v2, p1}, Lcom/cloud/tmc/miniapp/NewTaskManager$ProcessInfo;->setMAppId(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 167
    .line 168
    .line 169
    goto :goto_3

    .line 170
    :goto_2
    invoke-static {v0, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 171
    .line 172
    .line 173
    :cond_6
    :goto_3
    return-void
.end method

.method public final checkUseSingleTaskMode(Ljava/lang/String;)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/cloud/tmc/miniapp/NewTaskManager;->checkFeedBackApp(Ljava/lang/String;)Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public final getExistAppIds()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    sget-object v1, Lcom/cloud/tmc/miniapp/NewTaskManager;->taskQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 7
    .line 8
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    if-eqz v2, :cond_1

    .line 17
    .line 18
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    check-cast v2, Lcom/cloud/tmc/miniapp/NewTaskManager$TaskModel;

    .line 23
    .line 24
    if-eqz v2, :cond_0

    .line 25
    .line 26
    const-string v3, "it"

    .line 27
    .line 28
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v2}, Lcom/cloud/tmc/miniapp/NewTaskManager$TaskModel;->getRootAppId()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_1
    return-object v0
.end method

.method public final getFirstIdleProcess()Lcom/cloud/tmc/miniapp/NewTaskManager$ProcessInfo;
    .locals 1

    .line 1
    sget-object v0, Lcom/cloud/tmc/miniapp/NewTaskManager$ProcessInfo;->Companion:Lcom/cloud/tmc/miniapp/NewTaskManager$ProcessInfo$Companion;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/NewTaskManager$ProcessInfo$Companion;->getSTATUS_PROCESS_IDLE()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    invoke-direct {p0, v0}, Lcom/cloud/tmc/miniapp/NewTaskManager;->getFirstProcessByStatus(I)Lcom/cloud/tmc/miniapp/NewTaskManager$ProcessInfo;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method public final getFirstLastUsedProcess()Lcom/cloud/tmc/miniapp/NewTaskManager$ProcessInfo;
    .locals 1

    .line 1
    sget-object v0, Lcom/cloud/tmc/miniapp/NewTaskManager$ProcessInfo;->Companion:Lcom/cloud/tmc/miniapp/NewTaskManager$ProcessInfo$Companion;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/NewTaskManager$ProcessInfo$Companion;->getSTATUS_PROCESS_LAST_USED()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    invoke-direct {p0, v0}, Lcom/cloud/tmc/miniapp/NewTaskManager;->getFirstProcessByStatus(I)Lcom/cloud/tmc/miniapp/NewTaskManager$ProcessInfo;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method public final getForegroundAppId()Ljava/lang/String;
    .locals 3

    .line 1
    sget-object v0, Lcom/cloud/tmc/miniapp/NewTaskManager;->taskQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->size()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-lez v1, :cond_1

    .line 8
    .line 9
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->t0(Ljava/lang/Iterable;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Lcom/cloud/tmc/miniapp/NewTaskManager$TaskModel;

    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/NewTaskManager$TaskModel;->getChildAppId()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    if-nez v2, :cond_0

    .line 24
    .line 25
    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/NewTaskManager$TaskModel;->getRootAppId()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    :cond_0
    return-object v1

    .line 30
    :cond_1
    const/4 v0, 0x0

    .line 31
    return-object v0
.end method

.method public final getMaxTaskNum()I
    .locals 3

    .line 1
    :try_start_0
    const-class v0, Lcom/cloud/tmc/kernel/service/ConfigService;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/cloud/tmc/kernel/service/ConfigService;

    .line 8
    .line 9
    const-string v1, "mutipleTaskV2"

    .line 10
    .line 11
    sget-object v2, Lcom/cloud/tmc/miniapp/CommonAppUtils;->INSTANCE:Lcom/cloud/tmc/miniapp/CommonAppUtils;

    .line 12
    .line 13
    invoke-virtual {v2}, Lcom/cloud/tmc/miniapp/CommonAppUtils;->getDefaultMultiTaskCount()I

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    invoke-interface {v0, v1, v2}, Lcom/cloud/tmc/kernel/service/ConfigService;->getConfigInt(Ljava/lang/String;I)I

    .line 18
    .line 19
    .line 20
    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 21
    goto :goto_0

    .line 22
    :catch_0
    move-exception v0

    .line 23
    const-string v1, "NewTaskManager"

    .line 24
    .line 25
    invoke-static {v1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 26
    .line 27
    .line 28
    const/4 v0, 0x0

    .line 29
    :goto_0
    return v0
.end method

.method public final getProcessInfoByAppId(Ljava/lang/String;)Lcom/cloud/tmc/miniapp/NewTaskManager$ProcessInfo;
    .locals 3

    .line 1
    const-string v0, "appId"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lcom/cloud/tmc/miniapp/NewTaskManager;->sProcessInfos:Ljava/util/List;

    .line 7
    .line 8
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-eqz v1, :cond_1

    .line 17
    .line 18
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    check-cast v1, Lcom/cloud/tmc/miniapp/NewTaskManager$ProcessInfo;

    .line 23
    .line 24
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    if-nez v2, :cond_0

    .line 29
    .line 30
    invoke-virtual {v1}, Lcom/cloud/tmc/miniapp/NewTaskManager$ProcessInfo;->getMAppId()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    move-result v2

    .line 38
    if-eqz v2, :cond_0

    .line 39
    .line 40
    return-object v1

    .line 41
    :cond_1
    const/4 p1, 0x0

    .line 42
    return-object p1
.end method

.method public final getTaskRootAppId()Ljava/lang/String;
    .locals 2

    .line 1
    sget-object v0, Lcom/cloud/tmc/miniapp/NewTaskManager;->taskQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->size()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-lez v1, :cond_0

    .line 8
    .line 9
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->t0(Ljava/lang/Iterable;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Lcom/cloud/tmc/miniapp/NewTaskManager$TaskModel;

    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/NewTaskManager$TaskModel;->getRootAppId()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    return-object v0

    .line 20
    :cond_0
    const/4 v0, 0x0

    .line 21
    return-object v0
.end method

.method public final isInitNativeStorage()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/cloud/tmc/miniapp/NewTaskManager;->isInitNativeStorage:Z

    .line 2
    .line 3
    return v0
.end method

.method public final moveToForeground(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 1
    const-string v0, "appId"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "childAppId"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, p1}, Lcom/cloud/tmc/miniapp/NewTaskManager;->checkOpenMutipleTask(Ljava/lang/String;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    return-void

    .line 18
    :cond_0
    sget-object v0, Lcom/cloud/tmc/miniapp/NewTaskManager;->Companion:Lcom/cloud/tmc/miniapp/NewTaskManager$Companion;

    .line 19
    .line 20
    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/NewTaskManager$Companion;->getInstance()Lcom/cloud/tmc/miniapp/NewTaskManager;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    monitor-enter v0

    .line 25
    :try_start_0
    const-string v1, "NewTaskManager"

    .line 26
    .line 27
    new-instance v2, Ljava/lang/StringBuilder;

    .line 28
    .line 29
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 30
    .line 31
    .line 32
    const-string v3, "moveToForeground:"

    .line 33
    .line 34
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    invoke-static {v1, v2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {p0, p1}, Lcom/cloud/tmc/miniapp/NewTaskManager;->getProcessInfoByAppId(Ljava/lang/String;)Lcom/cloud/tmc/miniapp/NewTaskManager$ProcessInfo;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    if-eqz v1, :cond_5

    .line 52
    .line 53
    invoke-virtual {v1}, Lcom/cloud/tmc/miniapp/NewTaskManager$ProcessInfo;->getMActivityInfo()Lcom/cloud/tmc/miniapp/NewTaskManager$ActivityInfo;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    if-eqz v2, :cond_4

    .line 58
    .line 59
    sget-object v2, Lcom/cloud/tmc/miniapp/NewTaskManager$ProcessInfo;->Companion:Lcom/cloud/tmc/miniapp/NewTaskManager$ProcessInfo$Companion;

    .line 60
    .line 61
    invoke-virtual {v2}, Lcom/cloud/tmc/miniapp/NewTaskManager$ProcessInfo$Companion;->getSTATUS_PROCESS_RUNNING()I

    .line 62
    .line 63
    .line 64
    move-result v2

    .line 65
    invoke-virtual {v1, v2}, Lcom/cloud/tmc/miniapp/NewTaskManager$ProcessInfo;->setMStatus(I)V

    .line 66
    .line 67
    .line 68
    sget-object v1, Lcom/cloud/tmc/miniapp/NewTaskManager;->taskQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 69
    .line 70
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 75
    .line 76
    .line 77
    move-result v2

    .line 78
    if-eqz v2, :cond_2

    .line 79
    .line 80
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object v2

    .line 84
    move-object v3, v2

    .line 85
    check-cast v3, Lcom/cloud/tmc/miniapp/NewTaskManager$TaskModel;

    .line 86
    .line 87
    invoke-virtual {v3}, Lcom/cloud/tmc/miniapp/NewTaskManager$TaskModel;->getRootAppId()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v3

    .line 91
    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 92
    .line 93
    .line 94
    move-result v3

    .line 95
    if-eqz v3, :cond_1

    .line 96
    .line 97
    goto :goto_0

    .line 98
    :catchall_0
    move-exception p1

    .line 99
    goto :goto_2

    .line 100
    :cond_2
    const/4 v2, 0x0

    .line 101
    :goto_0
    check-cast v2, Lcom/cloud/tmc/miniapp/NewTaskManager$TaskModel;

    .line 102
    .line 103
    if-nez v2, :cond_3

    .line 104
    .line 105
    new-instance v2, Lcom/cloud/tmc/miniapp/NewTaskManager$TaskModel;

    .line 106
    .line 107
    invoke-direct {v2, p1, p2}, Lcom/cloud/tmc/miniapp/NewTaskManager$TaskModel;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    :cond_3
    invoke-virtual {v2, p2}, Lcom/cloud/tmc/miniapp/NewTaskManager$TaskModel;->setChildAppId(Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    sget-object p1, Lcom/cloud/tmc/miniapp/NewTaskManager;->taskQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 114
    .line 115
    invoke-virtual {p1, v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->remove(Ljava/lang/Object;)Z

    .line 116
    .line 117
    .line 118
    invoke-virtual {p1, v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    .line 119
    .line 120
    .line 121
    goto :goto_1

    .line 122
    :cond_4
    const-string p1, "NewTaskManager"

    .line 123
    .line 124
    const-string p2, "moveToForeground:Can\'t find target in sActivityStack?"

    .line 125
    .line 126
    invoke-static {p1, p2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    .line 128
    .line 129
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 130
    .line 131
    :cond_5
    :goto_1
    :try_start_1
    const-string p1, "NewTaskManager"

    .line 132
    .line 133
    const-string p2, "moveToForeground finish"

    .line 134
    .line 135
    invoke-static {p1, p2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 136
    .line 137
    .line 138
    goto :goto_3

    .line 139
    :catchall_1
    move-exception p1

    .line 140
    goto :goto_4

    .line 141
    :goto_2
    :try_start_2
    const-string p2, "NewTaskManager"

    .line 142
    .line 143
    const-string v1, "moveToForeground exception:"

    .line 144
    .line 145
    invoke-static {p2, v1, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 146
    .line 147
    .line 148
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 149
    .line 150
    :try_start_3
    const-string p1, "NewTaskManager"

    .line 151
    .line 152
    const-string p2, "moveToForeground finish"

    .line 153
    .line 154
    invoke-static {p1, p2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    .line 156
    .line 157
    :goto_3
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/NewTaskManager;->printStatus()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 158
    .line 159
    .line 160
    monitor-exit v0

    .line 161
    return-void

    .line 162
    :catchall_2
    move-exception p1

    .line 163
    :try_start_4
    const-string p2, "NewTaskManager"

    .line 164
    .line 165
    const-string v1, "moveToForeground finish"

    .line 166
    .line 167
    invoke-static {p2, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    .line 169
    .line 170
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/NewTaskManager;->printStatus()V

    .line 171
    .line 172
    .line 173
    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 174
    :goto_4
    monitor-exit v0

    .line 175
    throw p1
.end method

.method public final preLaunchActivity(Landroid/content/Context;Lcom/cloud/tmc/miniapp/process/AppRecord;)Lcom/cloud/tmc/miniapp/NewTaskManager$ActivityInfo;
    .locals 7

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p1, "appRecord"

    .line 7
    .line 8
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const/4 p1, 0x0

    .line 12
    :try_start_0
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/NewTaskManager;->checkRecentTaskList()V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p2}, Lcom/cloud/tmc/miniapp/process/AppRecord;->getAppId()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {p0, v0}, Lcom/cloud/tmc/miniapp/NewTaskManager;->checkOpenMutipleTask(Ljava/lang/String;)Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    invoke-virtual {p2}, Lcom/cloud/tmc/miniapp/process/AppRecord;->getAppId()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-virtual {p0, v0}, Lcom/cloud/tmc/miniapp/NewTaskManager;->checkUseSingleTaskMode(Ljava/lang/String;)Z

    .line 30
    .line 31
    .line 32
    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    if-eqz v0, :cond_1

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :catchall_0
    move-exception v0

    .line 37
    goto :goto_1

    .line 38
    :cond_0
    :goto_0
    return-object p1

    .line 39
    :goto_1
    const-string v1, "NewTaskManager"

    .line 40
    .line 41
    const-string v2, "getNextLaunchActivityInfo error"

    .line 42
    .line 43
    invoke-static {v1, v2, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 44
    .line 45
    .line 46
    :cond_1
    :try_start_1
    sget-object v0, Lcom/cloud/tmc/miniapp/NewTaskManager;->Companion:Lcom/cloud/tmc/miniapp/NewTaskManager$Companion;

    .line 47
    .line 48
    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/NewTaskManager$Companion;->getInstance()Lcom/cloud/tmc/miniapp/NewTaskManager;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    monitor-enter v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 53
    const/4 v1, 0x1

    .line 54
    :try_start_2
    iget-boolean v2, p0, Lcom/cloud/tmc/miniapp/NewTaskManager;->isInitNativeStorage:Z

    .line 55
    .line 56
    if-nez v2, :cond_2

    .line 57
    .line 58
    iput-boolean v1, p0, Lcom/cloud/tmc/miniapp/NewTaskManager;->isInitNativeStorage:Z

    .line 59
    .line 60
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/NewTaskManager;->updateConfig()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 61
    .line 62
    .line 63
    goto :goto_2

    .line 64
    :catchall_1
    move-exception v2

    .line 65
    :try_start_3
    const-string v3, "NewTaskManager"

    .line 66
    .line 67
    const-string v4, "updateConfig error"

    .line 68
    .line 69
    invoke-static {v3, v4, v2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 70
    .line 71
    .line 72
    :cond_2
    :goto_2
    invoke-virtual {p2}, Lcom/cloud/tmc/miniapp/process/AppRecord;->getAppId()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v2

    .line 76
    sget-object v3, Lcom/cloud/tmc/miniapp/NewTaskManager;->sProcessInfos:Ljava/util/List;

    .line 77
    .line 78
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 79
    .line 80
    .line 81
    move-result-object v3

    .line 82
    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 83
    .line 84
    .line 85
    move-result v4

    .line 86
    if-eqz v4, :cond_4

    .line 87
    .line 88
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object v4

    .line 92
    move-object v5, v4

    .line 93
    check-cast v5, Lcom/cloud/tmc/miniapp/NewTaskManager$ProcessInfo;

    .line 94
    .line 95
    invoke-virtual {v5}, Lcom/cloud/tmc/miniapp/NewTaskManager$ProcessInfo;->getMAppId()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v5

    .line 99
    invoke-static {v5, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 100
    .line 101
    .line 102
    move-result v5

    .line 103
    if-eqz v5, :cond_3

    .line 104
    .line 105
    goto :goto_3

    .line 106
    :catchall_2
    move-exception p2

    .line 107
    goto/16 :goto_4

    .line 108
    .line 109
    :cond_4
    move-object v4, p1

    .line 110
    :goto_3
    check-cast v4, Lcom/cloud/tmc/miniapp/NewTaskManager$ProcessInfo;

    .line 111
    .line 112
    if-eqz v4, :cond_5

    .line 113
    .line 114
    const-string p2, "NewTaskManager"

    .line 115
    .line 116
    new-instance v1, Ljava/lang/StringBuilder;

    .line 117
    .line 118
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 119
    .line 120
    .line 121
    const-string v3, "preLaunchActivity: current activity , appId:"

    .line 122
    .line 123
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    .line 128
    .line 129
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object v1

    .line 133
    invoke-static {p2, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    .line 135
    .line 136
    invoke-virtual {v4}, Lcom/cloud/tmc/miniapp/NewTaskManager$ProcessInfo;->getMActivityInfo()Lcom/cloud/tmc/miniapp/NewTaskManager$ActivityInfo;

    .line 137
    .line 138
    .line 139
    move-result-object p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 140
    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 141
    const-string p1, "NewTaskManager"

    .line 142
    .line 143
    const-string v0, "preLaunchActivity finish"

    .line 144
    .line 145
    invoke-static {p1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    .line 147
    .line 148
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/NewTaskManager;->printStatus()V

    .line 149
    .line 150
    .line 151
    return-object p2

    .line 152
    :catchall_3
    move-exception p2

    .line 153
    goto :goto_5

    .line 154
    :cond_5
    :try_start_5
    sget-object v3, Lcom/cloud/tmc/miniapp/NewTaskManager;->Companion:Lcom/cloud/tmc/miniapp/NewTaskManager$Companion;

    .line 155
    .line 156
    invoke-static {v3}, Lcom/cloud/tmc/miniapp/NewTaskManager$Companion;->access$getCurrentRunningProcessNum(Lcom/cloud/tmc/miniapp/NewTaskManager$Companion;)I

    .line 157
    .line 158
    .line 159
    move-result v3

    .line 160
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/NewTaskManager;->getMaxTaskNum()I

    .line 161
    .line 162
    .line 163
    move-result v4

    .line 164
    if-lt v3, v4, :cond_8

    .line 165
    .line 166
    const-string v4, "NewTaskManager"

    .line 167
    .line 168
    new-instance v5, Ljava/lang/StringBuilder;

    .line 169
    .line 170
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 171
    .line 172
    .line 173
    const-string v6, "currentRunningProcessNum\uff1a"

    .line 174
    .line 175
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    .line 177
    .line 178
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 179
    .line 180
    .line 181
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 182
    .line 183
    .line 184
    move-result-object v3

    .line 185
    invoke-static {v4, v3}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    .line 187
    .line 188
    sget-object v3, Lcom/cloud/tmc/miniapp/NewTaskManager;->taskQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 189
    .line 190
    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    .line 191
    .line 192
    .line 193
    move-result-object v3

    .line 194
    check-cast v3, Lcom/cloud/tmc/miniapp/NewTaskManager$TaskModel;

    .line 195
    .line 196
    if-eqz v3, :cond_6

    .line 197
    .line 198
    invoke-virtual {v3}, Lcom/cloud/tmc/miniapp/NewTaskManager$TaskModel;->getRootAppId()Ljava/lang/String;

    .line 199
    .line 200
    .line 201
    move-result-object v3

    .line 202
    if-nez v3, :cond_7

    .line 203
    .line 204
    :cond_6
    const-string v3, ""

    .line 205
    .line 206
    :cond_7
    const-string v4, "NewTaskManager"

    .line 207
    .line 208
    new-instance v5, Ljava/lang/StringBuilder;

    .line 209
    .line 210
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 211
    .line 212
    .line 213
    const-string v6, "oldAppId\uff1a"

    .line 214
    .line 215
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 216
    .line 217
    .line 218
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 219
    .line 220
    .line 221
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 222
    .line 223
    .line 224
    move-result-object v5

    .line 225
    invoke-static {v4, v5}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    .line 227
    .line 228
    invoke-virtual {p0, v3, v1}, Lcom/cloud/tmc/miniapp/NewTaskManager;->removeFromStack(Ljava/lang/String;Z)V

    .line 229
    .line 230
    .line 231
    :cond_8
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/NewTaskManager;->getNextLaunchActivityInfo()Lcom/cloud/tmc/miniapp/NewTaskManager$ActivityInfo;

    .line 232
    .line 233
    .line 234
    move-result-object v1

    .line 235
    if-eqz v1, :cond_9

    .line 236
    .line 237
    invoke-virtual {p2}, Lcom/cloud/tmc/miniapp/process/AppRecord;->getStartToken()J

    .line 238
    .line 239
    .line 240
    move-result-wide v3

    .line 241
    invoke-virtual {p0, v2, v3, v4, v1}, Lcom/cloud/tmc/miniapp/NewTaskManager;->addStack(Ljava/lang/String;JLcom/cloud/tmc/miniapp/NewTaskManager$ActivityInfo;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 242
    .line 243
    .line 244
    :try_start_6
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 245
    const-string p1, "NewTaskManager"

    .line 246
    .line 247
    const-string p2, "preLaunchActivity finish"

    .line 248
    .line 249
    invoke-static {p1, p2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    .line 251
    .line 252
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/NewTaskManager;->printStatus()V

    .line 253
    .line 254
    .line 255
    return-object v1

    .line 256
    :cond_9
    :try_start_7
    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 257
    .line 258
    :try_start_8
    monitor-exit v0

    .line 259
    goto :goto_6

    .line 260
    :goto_4
    monitor-exit v0

    .line 261
    throw p2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 262
    :goto_5
    :try_start_9
    const-string v0, "NewTaskManager"

    .line 263
    .line 264
    const-string v1, "preLaunchActivity exception:"

    .line 265
    .line 266
    invoke-static {v0, v1, p2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    .line 267
    .line 268
    .line 269
    :goto_6
    const-string p2, "NewTaskManager"

    .line 270
    .line 271
    const-string v0, "preLaunchActivity finish"

    .line 272
    .line 273
    invoke-static {p2, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    .line 275
    .line 276
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/NewTaskManager;->printStatus()V

    .line 277
    .line 278
    .line 279
    return-object p1

    .line 280
    :catchall_4
    move-exception p1

    .line 281
    const-string p2, "NewTaskManager"

    .line 282
    .line 283
    const-string v0, "preLaunchActivity finish"

    .line 284
    .line 285
    invoke-static {p2, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    .line 287
    .line 288
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/NewTaskManager;->printStatus()V

    .line 289
    .line 290
    .line 291
    throw p1
.end method

.method public final remoceFromStackFromRecent(Ljava/lang/String;)V
    .locals 4

    .line 1
    const-string v0, "appId"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lcom/cloud/tmc/miniapp/NewTaskManager;->Companion:Lcom/cloud/tmc/miniapp/NewTaskManager$Companion;

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/NewTaskManager$Companion;->getInstance()Lcom/cloud/tmc/miniapp/NewTaskManager;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    monitor-enter v1

    .line 13
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/cloud/tmc/miniapp/NewTaskManager;->checkUseSingleTaskMode(Ljava/lang/String;)Z

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    if-eqz v2, :cond_1

    .line 18
    .line 19
    sget-object v2, Lcom/cloud/tmc/miniapp/NewTaskManager;->taskQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 20
    .line 21
    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->peek()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    check-cast v2, Lcom/cloud/tmc/miniapp/NewTaskManager$TaskModel;

    .line 26
    .line 27
    if-eqz v2, :cond_0

    .line 28
    .line 29
    invoke-virtual {v2}, Lcom/cloud/tmc/miniapp/NewTaskManager$TaskModel;->getChildAppId()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    goto :goto_0

    .line 34
    :cond_0
    const/4 v3, 0x0

    .line 35
    :goto_0
    invoke-static {v3, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result v3

    .line 39
    if-eqz v3, :cond_1

    .line 40
    .line 41
    const-string p1, ""

    .line 42
    .line 43
    invoke-virtual {v2, p1}, Lcom/cloud/tmc/miniapp/NewTaskManager$TaskModel;->setChildAppId(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    .line 45
    .line 46
    monitor-exit v1

    .line 47
    return-void

    .line 48
    :cond_1
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/cloud/tmc/miniapp/NewTaskManager;->getProcessInfoByAppId(Ljava/lang/String;)Lcom/cloud/tmc/miniapp/NewTaskManager$ProcessInfo;

    .line 49
    .line 50
    .line 51
    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 52
    if-nez v2, :cond_2

    .line 53
    .line 54
    monitor-exit v1

    .line 55
    return-void

    .line 56
    :cond_2
    :try_start_2
    invoke-virtual {p0, p1}, Lcom/cloud/tmc/miniapp/NewTaskManager;->removeTaskQueue(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    sget-object p1, Lcom/cloud/tmc/miniapp/NewTaskManager$ProcessInfo;->Companion:Lcom/cloud/tmc/miniapp/NewTaskManager$ProcessInfo$Companion;

    .line 60
    .line 61
    invoke-virtual {p1}, Lcom/cloud/tmc/miniapp/NewTaskManager$ProcessInfo$Companion;->getSTATUS_PROCESS_DEAD()I

    .line 62
    .line 63
    .line 64
    move-result p1

    .line 65
    invoke-static {v0, v2, p1}, Lcom/cloud/tmc/miniapp/NewTaskManager$Companion;->access$resetProcessInfoToStatus(Lcom/cloud/tmc/miniapp/NewTaskManager$Companion;Lcom/cloud/tmc/miniapp/NewTaskManager$ProcessInfo;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 66
    .line 67
    .line 68
    :catchall_0
    :try_start_3
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 69
    .line 70
    monitor-exit v1

    .line 71
    return-void

    .line 72
    :catchall_1
    move-exception p1

    .line 73
    monitor-exit v1

    .line 74
    throw p1
.end method

.method public final removeActivityStack(Ljava/lang/String;)V
    .locals 4

    .line 1
    const-string v0, "NewTaskManager"

    .line 2
    .line 3
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/cloud/tmc/miniapp/NewTaskManager;->checkOpenMutipleTask(Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-nez v1, :cond_3

    .line 8
    .line 9
    sget-object v1, Lcom/cloud/tmc/miniapp/NewTaskManager;->taskQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 10
    .line 11
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    if-eqz v2, :cond_1

    .line 20
    .line 21
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    move-object v3, v2

    .line 26
    check-cast v3, Lcom/cloud/tmc/miniapp/NewTaskManager$TaskModel;

    .line 27
    .line 28
    invoke-virtual {v3}, Lcom/cloud/tmc/miniapp/NewTaskManager$TaskModel;->getRootAppId()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    move-result v3

    .line 36
    if-eqz v3, :cond_0

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :catchall_0
    move-exception p1

    .line 40
    goto :goto_1

    .line 41
    :cond_1
    const/4 v2, 0x0

    .line 42
    :goto_0
    check-cast v2, Lcom/cloud/tmc/miniapp/NewTaskManager$TaskModel;

    .line 43
    .line 44
    if-eqz v2, :cond_2

    .line 45
    .line 46
    sget-object v1, Lcom/cloud/tmc/miniapp/NewTaskManager;->taskQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 47
    .line 48
    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->remove(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    .line 52
    .line 53
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 54
    .line 55
    .line 56
    const-string v2, "removeActivityStack: remove appId:"

    .line 57
    .line 58
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    invoke-static {v0, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69
    .line 70
    .line 71
    goto :goto_2

    .line 72
    :goto_1
    invoke-static {v0, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 73
    .line 74
    .line 75
    :cond_3
    :goto_2
    return-void
.end method

.method public final removeFromStack(Ljava/lang/String;Z)V
    .locals 8

    .line 1
    const-string v0, "appId"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lcom/cloud/tmc/miniapp/NewTaskManager;->Companion:Lcom/cloud/tmc/miniapp/NewTaskManager$Companion;

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/NewTaskManager$Companion;->getInstance()Lcom/cloud/tmc/miniapp/NewTaskManager;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    monitor-enter v1

    .line 13
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/cloud/tmc/miniapp/NewTaskManager;->checkUseSingleTaskMode(Ljava/lang/String;)Z

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    if-eqz v2, :cond_1

    .line 18
    .line 19
    sget-object v2, Lcom/cloud/tmc/miniapp/NewTaskManager;->taskQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 20
    .line 21
    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->peek()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    check-cast v2, Lcom/cloud/tmc/miniapp/NewTaskManager$TaskModel;

    .line 26
    .line 27
    if-eqz v2, :cond_0

    .line 28
    .line 29
    invoke-virtual {v2}, Lcom/cloud/tmc/miniapp/NewTaskManager$TaskModel;->getChildAppId()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    goto :goto_0

    .line 34
    :catchall_0
    move-exception p1

    .line 35
    goto/16 :goto_3

    .line 36
    .line 37
    :cond_0
    const/4 v3, 0x0

    .line 38
    :goto_0
    invoke-static {v3, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    move-result v3

    .line 42
    if-eqz v3, :cond_1

    .line 43
    .line 44
    const-string p1, ""

    .line 45
    .line 46
    invoke-virtual {v2, p1}, Lcom/cloud/tmc/miniapp/NewTaskManager$TaskModel;->setChildAppId(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    .line 48
    .line 49
    :try_start_1
    const-string p1, "NewTaskManager"

    .line 50
    .line 51
    const-string p2, "removeFromStack finish"

    .line 52
    .line 53
    invoke-static {p1, p2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/NewTaskManager;->printStatus()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 57
    .line 58
    .line 59
    monitor-exit v1

    .line 60
    return-void

    .line 61
    :catchall_1
    move-exception p1

    .line 62
    goto/16 :goto_5

    .line 63
    .line 64
    :cond_1
    :try_start_2
    const-string v2, "NewTaskManager"

    .line 65
    .line 66
    new-instance v3, Ljava/lang/StringBuilder;

    .line 67
    .line 68
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 69
    .line 70
    .line 71
    const-string v4, "removeFromStack:"

    .line 72
    .line 73
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v3

    .line 83
    invoke-static {v2, v3}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {p0, p1}, Lcom/cloud/tmc/miniapp/NewTaskManager;->getProcessInfoByAppId(Ljava/lang/String;)Lcom/cloud/tmc/miniapp/NewTaskManager$ProcessInfo;

    .line 87
    .line 88
    .line 89
    move-result-object v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 90
    if-nez v2, :cond_2

    .line 91
    .line 92
    :try_start_3
    const-string p1, "NewTaskManager"

    .line 93
    .line 94
    const-string p2, "removeFromStack finish"

    .line 95
    .line 96
    invoke-static {p1, p2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/NewTaskManager;->printStatus()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 100
    .line 101
    .line 102
    monitor-exit v1

    .line 103
    return-void

    .line 104
    :cond_2
    :try_start_4
    invoke-direct {p0, v2}, Lcom/cloud/tmc/miniapp/NewTaskManager;->getProcessFullName(Lcom/cloud/tmc/miniapp/NewTaskManager$ProcessInfo;)Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v3

    .line 108
    invoke-virtual {v2}, Lcom/cloud/tmc/miniapp/NewTaskManager$ProcessInfo;->getMActivityInfo()Lcom/cloud/tmc/miniapp/NewTaskManager$ActivityInfo;

    .line 109
    .line 110
    .line 111
    move-result-object v4

    .line 112
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 113
    .line 114
    .line 115
    move-result v5

    .line 116
    if-nez v5, :cond_8

    .line 117
    .line 118
    if-eqz v4, :cond_8

    .line 119
    .line 120
    const-string v5, "NewTaskManager"

    .line 121
    .line 122
    new-instance v6, Ljava/lang/StringBuilder;

    .line 123
    .line 124
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 125
    .line 126
    .line 127
    const-string v7, "removeFromStack:"

    .line 128
    .line 129
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    .line 134
    .line 135
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object v3

    .line 139
    invoke-static {v5, v3}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    .line 141
    .line 142
    invoke-virtual {p0, p1}, Lcom/cloud/tmc/miniapp/NewTaskManager;->removeTaskQueue(Ljava/lang/String;)V

    .line 143
    .line 144
    .line 145
    invoke-virtual {v4}, Lcom/cloud/tmc/miniapp/NewTaskManager$ActivityInfo;->getActivityClazz()Ljava/lang/Class;

    .line 146
    .line 147
    .line 148
    move-result-object p1

    .line 149
    invoke-direct {p0, p1, v2}, Lcom/cloud/tmc/miniapp/NewTaskManager;->removeFromRecentTasksList(Ljava/lang/Class;Lcom/cloud/tmc/miniapp/NewTaskManager$ProcessInfo;)Z

    .line 150
    .line 151
    .line 152
    if-eqz p2, :cond_3

    .line 153
    .line 154
    sget-object p1, Lcom/cloud/tmc/miniapp/NewTaskManager$ProcessInfo;->Companion:Lcom/cloud/tmc/miniapp/NewTaskManager$ProcessInfo$Companion;

    .line 155
    .line 156
    invoke-virtual {p1}, Lcom/cloud/tmc/miniapp/NewTaskManager$ProcessInfo$Companion;->getSTATUS_PROCESS_DEAD()I

    .line 157
    .line 158
    .line 159
    move-result p1

    .line 160
    invoke-static {v0, v2, p1}, Lcom/cloud/tmc/miniapp/NewTaskManager$Companion;->access$resetProcessInfoToStatus(Lcom/cloud/tmc/miniapp/NewTaskManager$Companion;Lcom/cloud/tmc/miniapp/NewTaskManager$ProcessInfo;I)V

    .line 161
    .line 162
    .line 163
    goto :goto_2

    .line 164
    :cond_3
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/NewTaskManager;->getFirstLastUsedProcess()Lcom/cloud/tmc/miniapp/NewTaskManager$ProcessInfo;

    .line 165
    .line 166
    .line 167
    move-result-object p1

    .line 168
    if-eqz p1, :cond_5

    .line 169
    .line 170
    invoke-virtual {p1}, Lcom/cloud/tmc/miniapp/NewTaskManager$ProcessInfo;->getMActivityInfo()Lcom/cloud/tmc/miniapp/NewTaskManager$ActivityInfo;

    .line 171
    .line 172
    .line 173
    move-result-object p2

    .line 174
    invoke-static {p2, v4}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 175
    .line 176
    .line 177
    move-result p2

    .line 178
    if-nez p2, :cond_5

    .line 179
    .line 180
    invoke-static {v0}, Lcom/cloud/tmc/miniapp/NewTaskManager$Companion;->access$getCurrentIdleProcessNum(Lcom/cloud/tmc/miniapp/NewTaskManager$Companion;)I

    .line 181
    .line 182
    .line 183
    move-result p1

    .line 184
    sget p2, Lcom/cloud/tmc/miniapp/NewTaskManager;->sMaxIdleProcessNum:I

    .line 185
    .line 186
    if-lt p1, p2, :cond_4

    .line 187
    .line 188
    invoke-direct {p0, v2}, Lcom/cloud/tmc/miniapp/NewTaskManager;->releaseProcess(Lcom/cloud/tmc/miniapp/NewTaskManager$ProcessInfo;)V

    .line 189
    .line 190
    .line 191
    goto :goto_1

    .line 192
    :cond_4
    sget-object p1, Lcom/cloud/tmc/miniapp/NewTaskManager$ProcessInfo;->Companion:Lcom/cloud/tmc/miniapp/NewTaskManager$ProcessInfo$Companion;

    .line 193
    .line 194
    invoke-virtual {p1}, Lcom/cloud/tmc/miniapp/NewTaskManager$ProcessInfo$Companion;->getSTATUS_PROCESS_IDLE()I

    .line 195
    .line 196
    .line 197
    move-result p1

    .line 198
    invoke-static {v0, v2, p1}, Lcom/cloud/tmc/miniapp/NewTaskManager$Companion;->access$resetProcessInfoToStatus(Lcom/cloud/tmc/miniapp/NewTaskManager$Companion;Lcom/cloud/tmc/miniapp/NewTaskManager$ProcessInfo;I)V

    .line 199
    .line 200
    .line 201
    goto :goto_1

    .line 202
    :cond_5
    if-eqz p1, :cond_6

    .line 203
    .line 204
    invoke-virtual {p1}, Lcom/cloud/tmc/miniapp/NewTaskManager$ProcessInfo;->getMActivityInfo()Lcom/cloud/tmc/miniapp/NewTaskManager$ActivityInfo;

    .line 205
    .line 206
    .line 207
    move-result-object p2

    .line 208
    invoke-static {p2, v4}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 209
    .line 210
    .line 211
    move-result p2

    .line 212
    if-nez p2, :cond_7

    .line 213
    .line 214
    :cond_6
    if-nez p1, :cond_7

    .line 215
    .line 216
    sget-object p1, Lcom/cloud/tmc/miniapp/NewTaskManager$ProcessInfo;->Companion:Lcom/cloud/tmc/miniapp/NewTaskManager$ProcessInfo$Companion;

    .line 217
    .line 218
    invoke-virtual {p1}, Lcom/cloud/tmc/miniapp/NewTaskManager$ProcessInfo$Companion;->getSTATUS_PROCESS_LAST_USED()I

    .line 219
    .line 220
    .line 221
    move-result p1

    .line 222
    invoke-static {v0, v2, p1}, Lcom/cloud/tmc/miniapp/NewTaskManager$Companion;->access$resetProcessInfoToStatus(Lcom/cloud/tmc/miniapp/NewTaskManager$Companion;Lcom/cloud/tmc/miniapp/NewTaskManager$ProcessInfo;I)V

    .line 223
    .line 224
    .line 225
    :cond_7
    :goto_1
    const/4 p1, 0x0

    .line 226
    invoke-direct {p0, p1}, Lcom/cloud/tmc/miniapp/NewTaskManager;->clearIdleProcess(Z)V

    .line 227
    .line 228
    .line 229
    goto :goto_2

    .line 230
    :cond_8
    const-string p1, "NewTaskManager"

    .line 231
    .line 232
    const-string p2, "removeFromStack:Can\'t find target in sActivityStack?"

    .line 233
    .line 234
    invoke-static {p1, p2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 235
    .line 236
    .line 237
    :goto_2
    :try_start_5
    const-string p1, "NewTaskManager"

    .line 238
    .line 239
    const-string p2, "removeFromStack finish"

    .line 240
    .line 241
    invoke-static {p1, p2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 242
    .line 243
    .line 244
    goto :goto_4

    .line 245
    :goto_3
    :try_start_6
    const-string p2, "NewTaskManager"

    .line 246
    .line 247
    const-string v0, "removeFromStack exception:"

    .line 248
    .line 249
    invoke-static {p2, v0, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 250
    .line 251
    .line 252
    :try_start_7
    const-string p1, "NewTaskManager"

    .line 253
    .line 254
    const-string p2, "removeFromStack finish"

    .line 255
    .line 256
    invoke-static {p1, p2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    .line 258
    .line 259
    :goto_4
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/NewTaskManager;->printStatus()V

    .line 260
    .line 261
    .line 262
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 263
    .line 264
    monitor-exit v1

    .line 265
    return-void

    .line 266
    :catchall_2
    move-exception p1

    .line 267
    :try_start_8
    const-string p2, "NewTaskManager"

    .line 268
    .line 269
    const-string v0, "removeFromStack finish"

    .line 270
    .line 271
    invoke-static {p2, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    .line 273
    .line 274
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/NewTaskManager;->printStatus()V

    .line 275
    .line 276
    .line 277
    throw p1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 278
    :goto_5
    monitor-exit v1

    .line 279
    throw p1
.end method

.method public final removeTaskQueue(Ljava/lang/String;)V
    .locals 3

    .line 1
    const-string v0, "appId"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    :try_start_0
    sget-object v0, Lcom/cloud/tmc/miniapp/NewTaskManager;->taskQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 7
    .line 8
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-eqz v1, :cond_1

    .line 17
    .line 18
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    move-object v2, v1

    .line 23
    check-cast v2, Lcom/cloud/tmc/miniapp/NewTaskManager$TaskModel;

    .line 24
    .line 25
    invoke-virtual {v2}, Lcom/cloud/tmc/miniapp/NewTaskManager$TaskModel;->getRootAppId()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    if-eqz v2, :cond_0

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :catchall_0
    move-exception p1

    .line 37
    goto :goto_1

    .line 38
    :cond_1
    const/4 v1, 0x0

    .line 39
    :goto_0
    check-cast v1, Lcom/cloud/tmc/miniapp/NewTaskManager$TaskModel;

    .line 40
    .line 41
    sget-object p1, Lcom/cloud/tmc/miniapp/NewTaskManager;->taskQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 42
    .line 43
    invoke-virtual {p1, v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    .line 45
    .line 46
    goto :goto_2

    .line 47
    :goto_1
    const-string v0, "NewTaskManager"

    .line 48
    .line 49
    invoke-static {v0, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 50
    .line 51
    .line 52
    :goto_2
    return-void
.end method

.method public final setInitNativeStorage(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/cloud/tmc/miniapp/NewTaskManager;->isInitNativeStorage:Z

    .line 2
    .line 3
    return-void
.end method

.method public final updateProcessInfoByAppId(Ljava/lang/String;)V
    .locals 5

    .line 1
    const-string v0, "appId"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lcom/cloud/tmc/miniapp/NewTaskManager;->sProcessInfos:Ljava/util/List;

    .line 7
    .line 8
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-eqz v1, :cond_5

    .line 17
    .line 18
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    check-cast v1, Lcom/cloud/tmc/miniapp/NewTaskManager$ProcessInfo;

    .line 23
    .line 24
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    if-nez v2, :cond_0

    .line 29
    .line 30
    invoke-virtual {v1}, Lcom/cloud/tmc/miniapp/NewTaskManager$ProcessInfo;->getMAppId()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    move-result v2

    .line 38
    if-eqz v2, :cond_0

    .line 39
    .line 40
    sget-object v2, Lcom/cloud/tmc/miniapp/NewTaskManager;->taskQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 41
    .line 42
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 47
    .line 48
    .line 49
    move-result v3

    .line 50
    if-eqz v3, :cond_2

    .line 51
    .line 52
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v3

    .line 56
    move-object v4, v3

    .line 57
    check-cast v4, Lcom/cloud/tmc/miniapp/NewTaskManager$TaskModel;

    .line 58
    .line 59
    invoke-virtual {v4}, Lcom/cloud/tmc/miniapp/NewTaskManager$TaskModel;->getRootAppId()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v4

    .line 63
    invoke-static {v4, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    move-result v4

    .line 67
    if-eqz v4, :cond_1

    .line 68
    .line 69
    goto :goto_1

    .line 70
    :cond_2
    const/4 v3, 0x0

    .line 71
    :goto_1
    check-cast v3, Lcom/cloud/tmc/miniapp/NewTaskManager$TaskModel;

    .line 72
    .line 73
    if-eqz v3, :cond_3

    .line 74
    .line 75
    invoke-virtual {v3}, Lcom/cloud/tmc/miniapp/NewTaskManager$TaskModel;->getChildAppId()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v2

    .line 79
    if-nez v2, :cond_4

    .line 80
    .line 81
    :cond_3
    const-string v2, ""

    .line 82
    .line 83
    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    .line 84
    .line 85
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 86
    .line 87
    .line 88
    const-string v4, "current root id -> "

    .line 89
    .line 90
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    const-string v4, " ,new root id -> "

    .line 97
    .line 98
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v3

    .line 108
    const-string v4, "NewTaskManager"

    .line 109
    .line 110
    invoke-static {v4, v3}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    .line 114
    .line 115
    .line 116
    move-result v3

    .line 117
    if-lez v3, :cond_0

    .line 118
    .line 119
    invoke-virtual {v1, v2}, Lcom/cloud/tmc/miniapp/NewTaskManager$ProcessInfo;->setMAppId(Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    goto :goto_0

    .line 123
    :cond_5
    return-void
.end method
