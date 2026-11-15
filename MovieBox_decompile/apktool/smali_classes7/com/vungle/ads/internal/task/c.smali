.class public final Lcom/vungle/ads/internal/task/c;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/ads/internal/task/c$a;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/vungle/ads/internal/task/c$a;

.field private static final TAG:Ljava/lang/String; = "JobInfo"


# instance fields
.field private delay:J

.field private extras:Landroid/os/Bundle;

.field private final jobTag:Ljava/lang/String;

.field private nextRescheduleTimeout:J

.field private priority:I

.field private requiredNetworkType:I

.field private reschedulePolicy:I

.field private rescheduleTimeout:J

.field private updateCurrent:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/vungle/ads/internal/task/c$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/vungle/ads/internal/task/c$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/vungle/ads/internal/task/c;->Companion:Lcom/vungle/ads/internal/task/c$a;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "jobTag"

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
    iput-object p1, p0, Lcom/vungle/ads/internal/task/c;->jobTag:Ljava/lang/String;

    .line 10
    .line 11
    new-instance p1, Landroid/os/Bundle;

    .line 12
    .line 13
    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object p1, p0, Lcom/vungle/ads/internal/task/c;->extras:Landroid/os/Bundle;

    .line 17
    .line 18
    const/4 p1, 0x1

    .line 19
    iput p1, p0, Lcom/vungle/ads/internal/task/c;->reschedulePolicy:I

    .line 20
    .line 21
    const/4 p1, 0x2

    .line 22
    iput p1, p0, Lcom/vungle/ads/internal/task/c;->priority:I

    .line 23
    .line 24
    return-void
.end method

.method public static synthetic getPriority$annotations()V
    .locals 0

    .line 1
    return-void
.end method

.method public static synthetic getRequiredNetworkType$annotations()V
    .locals 0

    .line 1
    return-void
.end method

.method private static synthetic getReschedulePolicy$annotations()V
    .locals 0

    .line 1
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public final copy()Lcom/vungle/ads/internal/task/c;
    .locals 4

    .line 1
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "null cannot be cast to non-null type com.vungle.ads.internal.task.JobInfo"

    .line 6
    .line 7
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    check-cast v0, Lcom/vungle/ads/internal/task/c;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    .line 12
    return-object v0

    .line 13
    :catch_0
    move-exception v0

    .line 14
    sget-object v1, Lcom/vungle/ads/internal/util/o;->Companion:Lcom/vungle/ads/internal/util/o$a;

    .line 15
    .line 16
    new-instance v2, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 19
    .line 20
    .line 21
    const-string v3, "Cannot copy JobInfo "

    .line 22
    .line 23
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    const-string v3, "JobInfo"

    .line 34
    .line 35
    invoke-virtual {v1, v3, v2, v0}, Lcom/vungle/ads/internal/util/o$a;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 36
    .line 37
    .line 38
    const/4 v0, 0x0

    .line 39
    return-object v0
.end method

.method public final getDelay()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/vungle/ads/internal/task/c;->delay:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final getExtras()Landroid/os/Bundle;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/internal/task/c;->extras:Landroid/os/Bundle;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getJobTag()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/internal/task/c;->jobTag:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getPriority()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/vungle/ads/internal/task/c;->priority:I

    .line 2
    .line 3
    return v0
.end method

.method public final getRequiredNetworkType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/vungle/ads/internal/task/c;->requiredNetworkType:I

    .line 2
    .line 3
    return v0
.end method

.method public final getUpdateCurrent()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/vungle/ads/internal/task/c;->updateCurrent:Z

    .line 2
    .line 3
    return v0
.end method

.method public final makeNextRescedule()J
    .locals 6

    .line 1
    iget-wide v0, p0, Lcom/vungle/ads/internal/task/c;->rescheduleTimeout:J

    .line 2
    .line 3
    const-wide/16 v2, 0x0

    .line 4
    .line 5
    cmp-long v4, v0, v2

    .line 6
    .line 7
    if-nez v4, :cond_0

    .line 8
    .line 9
    return-wide v2

    .line 10
    :cond_0
    iget-wide v4, p0, Lcom/vungle/ads/internal/task/c;->nextRescheduleTimeout:J

    .line 11
    .line 12
    cmp-long v2, v4, v2

    .line 13
    .line 14
    if-nez v2, :cond_1

    .line 15
    .line 16
    iput-wide v0, p0, Lcom/vungle/ads/internal/task/c;->nextRescheduleTimeout:J

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_1
    iget v0, p0, Lcom/vungle/ads/internal/task/c;->reschedulePolicy:I

    .line 20
    .line 21
    const/4 v1, 0x1

    .line 22
    if-ne v0, v1, :cond_2

    .line 23
    .line 24
    const/4 v0, 0x2

    .line 25
    int-to-long v0, v0

    .line 26
    mul-long/2addr v4, v0

    .line 27
    iput-wide v4, p0, Lcom/vungle/ads/internal/task/c;->nextRescheduleTimeout:J

    .line 28
    .line 29
    :cond_2
    :goto_0
    iget-wide v0, p0, Lcom/vungle/ads/internal/task/c;->nextRescheduleTimeout:J

    .line 30
    .line 31
    return-wide v0
.end method

.method public final setDelay(J)Lcom/vungle/ads/internal/task/c;
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/vungle/ads/internal/task/c;->delay:J

    .line 2
    .line 3
    return-object p0
.end method

.method public final setExtras(Landroid/os/Bundle;)Lcom/vungle/ads/internal/task/c;
    .locals 1

    .line 1
    const-string v0, "extras"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/vungle/ads/internal/task/c;->extras:Landroid/os/Bundle;

    .line 7
    .line 8
    return-object p0
.end method

.method public final setPriority(I)Lcom/vungle/ads/internal/task/c;
    .locals 0

    .line 1
    iput p1, p0, Lcom/vungle/ads/internal/task/c;->priority:I

    .line 2
    .line 3
    return-object p0
.end method

.method public final setRequiredNetworkType(I)Lcom/vungle/ads/internal/task/c;
    .locals 0

    .line 1
    iput p1, p0, Lcom/vungle/ads/internal/task/c;->requiredNetworkType:I

    .line 2
    .line 3
    return-object p0
.end method

.method public final setReschedulePolicy(JI)Lcom/vungle/ads/internal/task/c;
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/vungle/ads/internal/task/c;->rescheduleTimeout:J

    .line 2
    .line 3
    iput p3, p0, Lcom/vungle/ads/internal/task/c;->reschedulePolicy:I

    .line 4
    .line 5
    return-object p0
.end method

.method public final setUpdateCurrent(Z)Lcom/vungle/ads/internal/task/c;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/vungle/ads/internal/task/c;->updateCurrent:Z

    .line 2
    .line 3
    return-object p0
.end method
