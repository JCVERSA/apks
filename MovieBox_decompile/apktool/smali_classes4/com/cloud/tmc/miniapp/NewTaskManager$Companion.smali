.class public final Lcom/cloud/tmc/miniapp/NewTaskManager$Companion;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cloud/tmc/miniapp/NewTaskManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/NewTaskManager$Companion;-><init>()V

    return-void
.end method

.method public static final synthetic access$getCurrentIdleProcessNum(Lcom/cloud/tmc/miniapp/NewTaskManager$Companion;)I
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/NewTaskManager$Companion;->getCurrentIdleProcessNum()I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static final synthetic access$getCurrentRunningProcessNum(Lcom/cloud/tmc/miniapp/NewTaskManager$Companion;)I
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/NewTaskManager$Companion;->getCurrentRunningProcessNum()I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static final synthetic access$getEnableTaskStorage(Lcom/cloud/tmc/miniapp/NewTaskManager$Companion;)Z
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/NewTaskManager$Companion;->getEnableTaskStorage()Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static final synthetic access$resetProcessInfoToStatus(Lcom/cloud/tmc/miniapp/NewTaskManager$Companion;Lcom/cloud/tmc/miniapp/NewTaskManager$ProcessInfo;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/cloud/tmc/miniapp/NewTaskManager$Companion;->resetProcessInfoToStatus(Lcom/cloud/tmc/miniapp/NewTaskManager$ProcessInfo;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final getCurrentIdleProcessNum()I
    .locals 2

    .line 1
    sget-object v0, Lcom/cloud/tmc/miniapp/NewTaskManager$ProcessInfo;->Companion:Lcom/cloud/tmc/miniapp/NewTaskManager$ProcessInfo$Companion;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/NewTaskManager$ProcessInfo$Companion;->getSTATUS_PROCESS_IDLE()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    invoke-direct {p0, v1}, Lcom/cloud/tmc/miniapp/NewTaskManager$Companion;->getCurrentProcessNumByStatus(I)I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/NewTaskManager$ProcessInfo$Companion;->getSTATUS_PROCESS_LAST_USED()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    invoke-direct {p0, v0}, Lcom/cloud/tmc/miniapp/NewTaskManager$Companion;->getCurrentProcessNumByStatus(I)I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    add-int/2addr v1, v0

    .line 20
    return v1
.end method

.method private final getCurrentProcessNumByStatus(I)I
    .locals 3

    .line 1
    invoke-static {}, Lcom/cloud/tmc/miniapp/NewTaskManager;->access$getSProcessInfos$cp()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const/4 v1, 0x0

    .line 10
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    if-eqz v2, :cond_1

    .line 15
    .line 16
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    check-cast v2, Lcom/cloud/tmc/miniapp/NewTaskManager$ProcessInfo;

    .line 21
    .line 22
    invoke-virtual {v2}, Lcom/cloud/tmc/miniapp/NewTaskManager$ProcessInfo;->getMStatus()I

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    if-ne v2, p1, :cond_0

    .line 27
    .line 28
    add-int/lit8 v1, v1, 0x1

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    return v1
.end method

.method private final getCurrentRunningProcessNum()I
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
    invoke-direct {p0, v0}, Lcom/cloud/tmc/miniapp/NewTaskManager$Companion;->getCurrentProcessNumByStatus(I)I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    return v0
.end method

.method private final getEnableTaskStorage()Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/cloud/tmc/miniapp/NewTaskManager;->access$getEnableTaskStorage$delegate$cp()Lkotlin/Lazy;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Ljava/lang/Boolean;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    return v0
.end method

.method private final resetProcessInfoToStatus(Lcom/cloud/tmc/miniapp/NewTaskManager$ProcessInfo;I)V
    .locals 2

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    goto :goto_0

    .line 4
    :cond_0
    const/4 v0, 0x0

    .line 5
    invoke-virtual {p1, v0}, Lcom/cloud/tmc/miniapp/NewTaskManager$ProcessInfo;->setMAppId(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    :goto_0
    if-nez p1, :cond_1

    .line 9
    .line 10
    goto :goto_1

    .line 11
    :cond_1
    const-wide/16 v0, 0x0

    .line 12
    .line 13
    invoke-virtual {p1, v0, v1}, Lcom/cloud/tmc/miniapp/NewTaskManager$ProcessInfo;->setMAppToken(J)V

    .line 14
    .line 15
    .line 16
    :goto_1
    if-nez p1, :cond_2

    .line 17
    .line 18
    goto :goto_2

    .line 19
    :cond_2
    invoke-virtual {p1, p2}, Lcom/cloud/tmc/miniapp/NewTaskManager$ProcessInfo;->setMStatus(I)V

    .line 20
    .line 21
    .line 22
    :goto_2
    return-void
.end method


# virtual methods
.method public final getInstance()Lcom/cloud/tmc/miniapp/NewTaskManager;
    .locals 1

    .line 1
    invoke-static {}, Lcom/cloud/tmc/miniapp/NewTaskManager;->access$getInstance$delegate$cp()Lkotlin/Lazy;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Lcom/cloud/tmc/miniapp/NewTaskManager;

    .line 10
    .line 11
    return-object v0
.end method

.method public final updateTaskIdByAppId(Ljava/lang/String;I)V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/NewTaskManager$Companion;->getInstance()Lcom/cloud/tmc/miniapp/NewTaskManager;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Lcom/cloud/tmc/miniapp/NewTaskManager;->checkOpenMutipleTask(Ljava/lang/String;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/NewTaskManager$Companion;->getInstance()Lcom/cloud/tmc/miniapp/NewTaskManager;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {v0, p1}, Lcom/cloud/tmc/miniapp/NewTaskManager;->checkFeedBackApp(Ljava/lang/String;)Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    return-void

    .line 23
    :cond_1
    invoke-static {}, Lcom/cloud/tmc/miniapp/NewTaskManager;->access$getSProcessInfos$cp()Ljava/util/List;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    const/4 v1, 0x0

    .line 32
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    if-eqz v2, :cond_4

    .line 37
    .line 38
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    check-cast v2, Lcom/cloud/tmc/miniapp/NewTaskManager$ProcessInfo;

    .line 43
    .line 44
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 45
    .line 46
    .line 47
    move-result v3

    .line 48
    if-nez v3, :cond_3

    .line 49
    .line 50
    invoke-virtual {v2}, Lcom/cloud/tmc/miniapp/NewTaskManager$ProcessInfo;->getMAppId()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v3

    .line 54
    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 55
    .line 56
    .line 57
    move-result v3

    .line 58
    if-eqz v3, :cond_3

    .line 59
    .line 60
    invoke-virtual {v2, p2}, Lcom/cloud/tmc/miniapp/NewTaskManager$ProcessInfo;->setTaskId(I)V

    .line 61
    .line 62
    .line 63
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/NewTaskManager$Companion;->getEnableTaskStorage()Z

    .line 64
    .line 65
    .line 66
    move-result p2

    .line 67
    if-eqz p2, :cond_4

    .line 68
    .line 69
    const-class p2, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;

    .line 70
    .line 71
    invoke-static {p2}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object p2

    .line 75
    check-cast p2, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;

    .line 76
    .line 77
    invoke-static {}, Lcom/cloud/tmc/miniutils/util/Utils;->getApp()Landroid/app/Application;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    new-instance v3, Ljava/lang/StringBuilder;

    .line 82
    .line 83
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 84
    .line 85
    .line 86
    const-string v4, "miniapp_task_info_"

    .line 87
    .line 88
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v1

    .line 98
    if-nez p1, :cond_2

    .line 99
    .line 100
    const-string p1, ""

    .line 101
    .line 102
    :cond_2
    const-string v3, "minisdk_storage"

    .line 103
    .line 104
    invoke-interface {p2, v0, v3, v1, p1}, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    invoke-virtual {v2}, Lcom/cloud/tmc/miniapp/NewTaskManager$ProcessInfo;->getMAppId()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object p1

    .line 111
    new-instance p2, Ljava/lang/StringBuilder;

    .line 112
    .line 113
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 114
    .line 115
    .line 116
    const-string v0, "saveUpdateTaskIdByAppId:"

    .line 117
    .line 118
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object p1

    .line 128
    const-string p2, "NewTaskManager"

    .line 129
    .line 130
    invoke-static {p2, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    .line 132
    .line 133
    goto :goto_1

    .line 134
    :cond_3
    add-int/lit8 v1, v1, 0x1

    .line 135
    .line 136
    goto :goto_0

    .line 137
    :cond_4
    :goto_1
    return-void
.end method
