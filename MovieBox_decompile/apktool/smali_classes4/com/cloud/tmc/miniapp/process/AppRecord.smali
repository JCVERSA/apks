.class public final Lcom/cloud/tmc/miniapp/process/AppRecord;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cloud/tmc/miniapp/process/AppRecord$OooO00o;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/cloud/tmc/miniapp/process/AppRecord$OooO00o;

.field private static final TAG:Ljava/lang/String; = "Tmcintegration:AppRecord"

.field private static lastStartToken:J = -0x1L


# instance fields
.field private activityClz:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private final appId:Ljava/lang/String;

.field private isReceivedRemoteReady:Z

.field private isTaskRoot:Z

.field private mAppModel:Lcom/cloud/tmc/integration/model/AppModel;

.field private mSceneParams:Landroid/os/Bundle;

.field private mStartParams:Landroid/os/Bundle;

.field private remoteLpid:I

.field private runningTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

.field private final startToken:J


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/cloud/tmc/miniapp/process/AppRecord$OooO00o;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/cloud/tmc/miniapp/process/AppRecord$OooO00o;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/cloud/tmc/miniapp/process/AppRecord;->Companion:Lcom/cloud/tmc/miniapp/process/AppRecord$OooO00o;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JLandroid/os/Bundle;Landroid/os/Bundle;)V
    .locals 1
    .param p5    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const-string v0, "appId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/cloud/tmc/miniapp/process/AppRecord;->appId:Ljava/lang/String;

    .line 3
    iput-wide p2, p0, Lcom/cloud/tmc/miniapp/process/AppRecord;->startToken:J

    .line 4
    iput-object p4, p0, Lcom/cloud/tmc/miniapp/process/AppRecord;->mStartParams:Landroid/os/Bundle;

    .line 5
    invoke-static {p4}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-virtual {p4, v0, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p5, :cond_0

    .line 6
    new-instance p5, Landroid/os/Bundle;

    invoke-direct {p5}, Landroid/os/Bundle;-><init>()V

    .line 7
    :cond_0
    iput-object p5, p0, Lcom/cloud/tmc/miniapp/process/AppRecord;->mSceneParams:Landroid/os/Bundle;

    .line 8
    invoke-static {p5}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    const-string p1, "startToken"

    invoke-virtual {p5, p1, p2, p3}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;)V
    .locals 7
    .param p3    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const-string v0, "appId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    move-object v1, p0

    move-object v2, p1

    move-object v5, p2

    move-object v6, p3

    .line 10
    invoke-direct/range {v1 .. v6}, Lcom/cloud/tmc/miniapp/process/AppRecord;-><init>(Ljava/lang/String;JLandroid/os/Bundle;Landroid/os/Bundle;)V

    return-void
.end method

.method public static final synthetic access$getLastStartToken$cp()J
    .locals 2

    .line 1
    sget-wide v0, Lcom/cloud/tmc/miniapp/process/AppRecord;->lastStartToken:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public static final synthetic access$setLastStartToken$cp(J)V
    .locals 0

    .line 1
    sput-wide p0, Lcom/cloud/tmc/miniapp/process/AppRecord;->lastStartToken:J

    .line 2
    .line 3
    return-void
.end method


# virtual methods
.method public final finishClient()V
    .locals 0

    .line 1
    return-void
.end method

.method public final getActivityClz()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/process/AppRecord;->activityClz:Ljava/lang/Class;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getAppId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/process/AppRecord;->appId:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getAppModel()Lcom/cloud/tmc/integration/model/AppModel;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/process/AppRecord;->mAppModel:Lcom/cloud/tmc/integration/model/AppModel;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getRemoteLpid()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/cloud/tmc/miniapp/process/AppRecord;->remoteLpid:I

    .line 2
    .line 3
    return v0
.end method

.method public final getRunningTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/process/AppRecord;->runningTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getSceneParams()Landroid/os/Bundle;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/process/AppRecord;->mSceneParams:Landroid/os/Bundle;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getStartParams()Landroid/os/Bundle;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/process/AppRecord;->mStartParams:Landroid/os/Bundle;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getStartToken()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/cloud/tmc/miniapp/process/AppRecord;->startToken:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final isReceivedRemoteReady()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/cloud/tmc/miniapp/process/AppRecord;->isReceivedRemoteReady:Z

    .line 2
    .line 3
    return v0
.end method

.method public final isTaskRoot()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/cloud/tmc/miniapp/process/AppRecord;->isTaskRoot:Z

    .line 2
    .line 3
    return v0
.end method

.method public final setActivityClz(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Landroid/app/Activity;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/miniapp/process/AppRecord;->activityClz:Ljava/lang/Class;

    .line 2
    .line 3
    return-void
.end method

.method public final setAppModel(Lcom/cloud/tmc/integration/model/AppModel;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/miniapp/process/AppRecord;->mAppModel:Lcom/cloud/tmc/integration/model/AppModel;

    .line 2
    .line 3
    return-void
.end method

.method public final setReceivedRemoteReady(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/cloud/tmc/miniapp/process/AppRecord;->remoteLpid:I

    .line 2
    .line 3
    const/4 p1, 0x1

    .line 4
    iput-boolean p1, p0, Lcom/cloud/tmc/miniapp/process/AppRecord;->isReceivedRemoteReady:Z

    .line 5
    .line 6
    return-void
.end method

.method public final setRunningTaskInfo(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/miniapp/process/AppRecord;->runningTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 2
    .line 3
    return-void
.end method

.method public final setSceneParams(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/miniapp/process/AppRecord;->mSceneParams:Landroid/os/Bundle;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    const-class v0, Lcom/cloud/tmc/miniapp/process/AppRecord;

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method public final setStartParams(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/miniapp/process/AppRecord;->mStartParams:Landroid/os/Bundle;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    const-class v0, Lcom/cloud/tmc/miniapp/process/AppRecord;

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method public final setTaskRoot(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/cloud/tmc/miniapp/process/AppRecord;->isTaskRoot:Z

    .line 2
    .line 3
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/process/AppRecord;->mStartParams:Landroid/os/Bundle;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/process/AppRecord;->appId:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/cloud/tmc/miniapp/process/AppRecord;->activityClz:Ljava/lang/Class;

    .line 6
    .line 7
    new-instance v3, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    .line 11
    .line 12
    const-string v4, "AppRecord{mStartToken="

    .line 13
    .line 14
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    const-string v0, ", appId=\'"

    .line 21
    .line 22
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    const-string v0, "\', activityClz="

    .line 29
    .line 30
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    const-string v0, "}"

    .line 37
    .line 38
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    return-object v0
.end method
