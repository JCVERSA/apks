.class public final Lcom/cloud/tmc/miniapp/NewTaskManager$ProcessInfo;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cloud/tmc/miniapp/NewTaskManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ProcessInfo"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cloud/tmc/miniapp/NewTaskManager$ProcessInfo$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/cloud/tmc/miniapp/NewTaskManager$ProcessInfo$Companion;

.field private static STATUS_PROCESS_BACKGROUND:I

.field private static STATUS_PROCESS_DEAD:I

.field private static STATUS_PROCESS_IDLE:I

.field private static STATUS_PROCESS_LAST_USED:I

.field private static STATUS_PROCESS_RUNNING:I

.field private static STATUS_PROCESS_WAIT_RELEASE:I


# instance fields
.field private mActivityInfo:Lcom/cloud/tmc/miniapp/NewTaskManager$ActivityInfo;

.field private mAppId:Ljava/lang/String;

.field private mAppToken:J

.field private mStatus:I

.field private taskId:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/cloud/tmc/miniapp/NewTaskManager$ProcessInfo$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/cloud/tmc/miniapp/NewTaskManager$ProcessInfo$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/cloud/tmc/miniapp/NewTaskManager$ProcessInfo;->Companion:Lcom/cloud/tmc/miniapp/NewTaskManager$ProcessInfo$Companion;

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    sput v0, Lcom/cloud/tmc/miniapp/NewTaskManager$ProcessInfo;->STATUS_PROCESS_IDLE:I

    .line 11
    .line 12
    const/4 v0, 0x2

    .line 13
    sput v0, Lcom/cloud/tmc/miniapp/NewTaskManager$ProcessInfo;->STATUS_PROCESS_RUNNING:I

    .line 14
    .line 15
    const/4 v0, 0x3

    .line 16
    sput v0, Lcom/cloud/tmc/miniapp/NewTaskManager$ProcessInfo;->STATUS_PROCESS_BACKGROUND:I

    .line 17
    .line 18
    const/4 v0, 0x4

    .line 19
    sput v0, Lcom/cloud/tmc/miniapp/NewTaskManager$ProcessInfo;->STATUS_PROCESS_WAIT_RELEASE:I

    .line 20
    .line 21
    const/4 v0, 0x5

    .line 22
    sput v0, Lcom/cloud/tmc/miniapp/NewTaskManager$ProcessInfo;->STATUS_PROCESS_LAST_USED:I

    .line 23
    .line 24
    return-void
.end method

.method public constructor <init>(Lcom/cloud/tmc/miniapp/NewTaskManager$ActivityInfo;)V
    .locals 1

    .line 1
    const-string v0, "activityInfo"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    sget v0, Lcom/cloud/tmc/miniapp/NewTaskManager$ProcessInfo;->STATUS_PROCESS_DEAD:I

    .line 10
    .line 11
    iput v0, p0, Lcom/cloud/tmc/miniapp/NewTaskManager$ProcessInfo;->mStatus:I

    .line 12
    .line 13
    iput-object p1, p0, Lcom/cloud/tmc/miniapp/NewTaskManager$ProcessInfo;->mActivityInfo:Lcom/cloud/tmc/miniapp/NewTaskManager$ActivityInfo;

    .line 14
    .line 15
    return-void
.end method

.method public static final synthetic access$getSTATUS_PROCESS_BACKGROUND$cp()I
    .locals 1

    .line 1
    sget v0, Lcom/cloud/tmc/miniapp/NewTaskManager$ProcessInfo;->STATUS_PROCESS_BACKGROUND:I

    .line 2
    .line 3
    return v0
.end method

.method public static final synthetic access$getSTATUS_PROCESS_DEAD$cp()I
    .locals 1

    .line 1
    sget v0, Lcom/cloud/tmc/miniapp/NewTaskManager$ProcessInfo;->STATUS_PROCESS_DEAD:I

    .line 2
    .line 3
    return v0
.end method

.method public static final synthetic access$getSTATUS_PROCESS_IDLE$cp()I
    .locals 1

    .line 1
    sget v0, Lcom/cloud/tmc/miniapp/NewTaskManager$ProcessInfo;->STATUS_PROCESS_IDLE:I

    .line 2
    .line 3
    return v0
.end method

.method public static final synthetic access$getSTATUS_PROCESS_LAST_USED$cp()I
    .locals 1

    .line 1
    sget v0, Lcom/cloud/tmc/miniapp/NewTaskManager$ProcessInfo;->STATUS_PROCESS_LAST_USED:I

    .line 2
    .line 3
    return v0
.end method

.method public static final synthetic access$getSTATUS_PROCESS_RUNNING$cp()I
    .locals 1

    .line 1
    sget v0, Lcom/cloud/tmc/miniapp/NewTaskManager$ProcessInfo;->STATUS_PROCESS_RUNNING:I

    .line 2
    .line 3
    return v0
.end method

.method public static final synthetic access$getSTATUS_PROCESS_WAIT_RELEASE$cp()I
    .locals 1

    .line 1
    sget v0, Lcom/cloud/tmc/miniapp/NewTaskManager$ProcessInfo;->STATUS_PROCESS_WAIT_RELEASE:I

    .line 2
    .line 3
    return v0
.end method

.method public static final synthetic access$setSTATUS_PROCESS_BACKGROUND$cp(I)V
    .locals 0

    .line 1
    sput p0, Lcom/cloud/tmc/miniapp/NewTaskManager$ProcessInfo;->STATUS_PROCESS_BACKGROUND:I

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic access$setSTATUS_PROCESS_DEAD$cp(I)V
    .locals 0

    .line 1
    sput p0, Lcom/cloud/tmc/miniapp/NewTaskManager$ProcessInfo;->STATUS_PROCESS_DEAD:I

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic access$setSTATUS_PROCESS_IDLE$cp(I)V
    .locals 0

    .line 1
    sput p0, Lcom/cloud/tmc/miniapp/NewTaskManager$ProcessInfo;->STATUS_PROCESS_IDLE:I

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic access$setSTATUS_PROCESS_LAST_USED$cp(I)V
    .locals 0

    .line 1
    sput p0, Lcom/cloud/tmc/miniapp/NewTaskManager$ProcessInfo;->STATUS_PROCESS_LAST_USED:I

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic access$setSTATUS_PROCESS_RUNNING$cp(I)V
    .locals 0

    .line 1
    sput p0, Lcom/cloud/tmc/miniapp/NewTaskManager$ProcessInfo;->STATUS_PROCESS_RUNNING:I

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic access$setSTATUS_PROCESS_WAIT_RELEASE$cp(I)V
    .locals 0

    .line 1
    sput p0, Lcom/cloud/tmc/miniapp/NewTaskManager$ProcessInfo;->STATUS_PROCESS_WAIT_RELEASE:I

    .line 2
    .line 3
    return-void
.end method


# virtual methods
.method public final getMActivityInfo()Lcom/cloud/tmc/miniapp/NewTaskManager$ActivityInfo;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/NewTaskManager$ProcessInfo;->mActivityInfo:Lcom/cloud/tmc/miniapp/NewTaskManager$ActivityInfo;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getMAppId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/NewTaskManager$ProcessInfo;->mAppId:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getMAppToken()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/cloud/tmc/miniapp/NewTaskManager$ProcessInfo;->mAppToken:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final getMStatus()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/cloud/tmc/miniapp/NewTaskManager$ProcessInfo;->mStatus:I

    .line 2
    .line 3
    return v0
.end method

.method public final getTaskId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/cloud/tmc/miniapp/NewTaskManager$ProcessInfo;->taskId:I

    .line 2
    .line 3
    return v0
.end method

.method public final setMActivityInfo(Lcom/cloud/tmc/miniapp/NewTaskManager$ActivityInfo;)V
    .locals 1

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/cloud/tmc/miniapp/NewTaskManager$ProcessInfo;->mActivityInfo:Lcom/cloud/tmc/miniapp/NewTaskManager$ActivityInfo;

    .line 7
    .line 8
    return-void
.end method

.method public final setMAppId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/miniapp/NewTaskManager$ProcessInfo;->mAppId:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setMAppToken(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/cloud/tmc/miniapp/NewTaskManager$ProcessInfo;->mAppToken:J

    .line 2
    .line 3
    return-void
.end method

.method public final setMStatus(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/cloud/tmc/miniapp/NewTaskManager$ProcessInfo;->mStatus:I

    .line 2
    .line 3
    return-void
.end method

.method public final setTaskId(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/cloud/tmc/miniapp/NewTaskManager$ProcessInfo;->taskId:I

    .line 2
    .line 3
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "ProcessInfo:"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/NewTaskManager$ProcessInfo;->mActivityInfo:Lcom/cloud/tmc/miniapp/NewTaskManager$ActivityInfo;

    .line 9
    .line 10
    invoke-virtual {v1}, Lcom/cloud/tmc/miniapp/NewTaskManager$ActivityInfo;->getMProcessName()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    const-string v1, ",activityName:"

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/NewTaskManager$ProcessInfo;->mActivityInfo:Lcom/cloud/tmc/miniapp/NewTaskManager$ActivityInfo;

    .line 23
    .line 24
    invoke-virtual {v1}, Lcom/cloud/tmc/miniapp/NewTaskManager$ActivityInfo;->getActivityClazz()Ljava/lang/Class;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    if-eqz v1, :cond_0

    .line 29
    .line 30
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    goto :goto_0

    .line 35
    :cond_0
    const/4 v1, 0x0

    .line 36
    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    const-string v1, ",status:"

    .line 40
    .line 41
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    iget v1, p0, Lcom/cloud/tmc/miniapp/NewTaskManager$ProcessInfo;->mStatus:I

    .line 45
    .line 46
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    const-string v1, ",appId:"

    .line 50
    .line 51
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/NewTaskManager$ProcessInfo;->mAppId:Ljava/lang/String;

    .line 55
    .line 56
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    const-string v1, ",apptoken:"

    .line 60
    .line 61
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    iget-wide v1, p0, Lcom/cloud/tmc/miniapp/NewTaskManager$ProcessInfo;->mAppToken:J

    .line 65
    .line 66
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    const-string v1, "builder.append(mActivity\u2026end(mAppToken).toString()"

    .line 74
    .line 75
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    return-object v0
.end method
