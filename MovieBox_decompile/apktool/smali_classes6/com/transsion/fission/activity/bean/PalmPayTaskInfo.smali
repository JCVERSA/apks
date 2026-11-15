.class public final Lcom/transsion/fission/activity/bean/PalmPayTaskInfo;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0017\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0087\u0008\u0018\u00002\u00020\u0001B\'\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0007\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\t\u0010\u0016\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0017\u001a\u00020\u0005H\u00c6\u0003J\t\u0010\u0018\u001a\u00020\u0005H\u00c6\u0003J\t\u0010\u0019\u001a\u00020\u0005H\u00c6\u0003J1\u0010\u001a\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0005H\u00c6\u0001J\u0006\u0010\u001b\u001a\u00020\u0005J\u0013\u0010\u001c\u001a\u00020\u001d2\u0008\u0010\u001e\u001a\u0004\u0018\u00010\u001fH\u00d6\u0003J\t\u0010 \u001a\u00020\u0005H\u00d6\u0001J\t\u0010!\u001a\u00020\u0003H\u00d6\u0001J\u0016\u0010\"\u001a\u00020#2\u0006\u0010$\u001a\u00020%2\u0006\u0010&\u001a\u00020\u0005R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\n\u0010\u000b\"\u0004\u0008\u000c\u0010\rR\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000e\u0010\u000f\"\u0004\u0008\u0010\u0010\u0011R\u001a\u0010\u0006\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0012\u0010\u000f\"\u0004\u0008\u0013\u0010\u0011R\u001a\u0010\u0007\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0014\u0010\u000f\"\u0004\u0008\u0015\u0010\u0011\u00a8\u0006\'"
    }
    d2 = {
        "Lcom/transsion/fission/activity/bean/PalmPayTaskInfo;",
        "Landroid/os/Parcelable;",
        "taskId",
        "",
        "progress",
        "",
        "totalProgress",
        "status",
        "<init>",
        "(Ljava/lang/String;III)V",
        "getTaskId",
        "()Ljava/lang/String;",
        "setTaskId",
        "(Ljava/lang/String;)V",
        "getProgress",
        "()I",
        "setProgress",
        "(I)V",
        "getTotalProgress",
        "setTotalProgress",
        "getStatus",
        "setStatus",
        "component1",
        "component2",
        "component3",
        "component4",
        "copy",
        "describeContents",
        "equals",
        "",
        "other",
        "",
        "hashCode",
        "toString",
        "writeToParcel",
        "",
        "dest",
        "Landroid/os/Parcel;",
        "flags",
        "Fission_psRelease"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/transsion/fission/activity/bean/PalmPayTaskInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private progress:I

.field private status:I

.field private taskId:Ljava/lang/String;

.field private totalProgress:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/transsion/fission/activity/bean/PalmPayTaskInfo$a;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/transsion/fission/activity/bean/PalmPayTaskInfo$a;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/transsion/fission/activity/bean/PalmPayTaskInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;III)V
    .locals 1

    .line 1
    const-string v0, "taskId"

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
    iput-object p1, p0, Lcom/transsion/fission/activity/bean/PalmPayTaskInfo;->taskId:Ljava/lang/String;

    .line 10
    .line 11
    iput p2, p0, Lcom/transsion/fission/activity/bean/PalmPayTaskInfo;->progress:I

    .line 12
    .line 13
    iput p3, p0, Lcom/transsion/fission/activity/bean/PalmPayTaskInfo;->totalProgress:I

    .line 14
    .line 15
    iput p4, p0, Lcom/transsion/fission/activity/bean/PalmPayTaskInfo;->status:I

    .line 16
    .line 17
    return-void
.end method

.method public static synthetic copy$default(Lcom/transsion/fission/activity/bean/PalmPayTaskInfo;Ljava/lang/String;IIIILjava/lang/Object;)Lcom/transsion/fission/activity/bean/PalmPayTaskInfo;
    .locals 0

    .line 1
    and-int/lit8 p6, p5, 0x1

    .line 2
    .line 3
    if-eqz p6, :cond_0

    .line 4
    .line 5
    iget-object p1, p0, Lcom/transsion/fission/activity/bean/PalmPayTaskInfo;->taskId:Ljava/lang/String;

    .line 6
    .line 7
    :cond_0
    and-int/lit8 p6, p5, 0x2

    .line 8
    .line 9
    if-eqz p6, :cond_1

    .line 10
    .line 11
    iget p2, p0, Lcom/transsion/fission/activity/bean/PalmPayTaskInfo;->progress:I

    .line 12
    .line 13
    :cond_1
    and-int/lit8 p6, p5, 0x4

    .line 14
    .line 15
    if-eqz p6, :cond_2

    .line 16
    .line 17
    iget p3, p0, Lcom/transsion/fission/activity/bean/PalmPayTaskInfo;->totalProgress:I

    .line 18
    .line 19
    :cond_2
    and-int/lit8 p5, p5, 0x8

    .line 20
    .line 21
    if-eqz p5, :cond_3

    .line 22
    .line 23
    iget p4, p0, Lcom/transsion/fission/activity/bean/PalmPayTaskInfo;->status:I

    .line 24
    .line 25
    :cond_3
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/transsion/fission/activity/bean/PalmPayTaskInfo;->copy(Ljava/lang/String;III)Lcom/transsion/fission/activity/bean/PalmPayTaskInfo;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/fission/activity/bean/PalmPayTaskInfo;->taskId:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component2()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/transsion/fission/activity/bean/PalmPayTaskInfo;->progress:I

    .line 2
    .line 3
    return v0
.end method

.method public final component3()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/transsion/fission/activity/bean/PalmPayTaskInfo;->totalProgress:I

    .line 2
    .line 3
    return v0
.end method

.method public final component4()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/transsion/fission/activity/bean/PalmPayTaskInfo;->status:I

    .line 2
    .line 3
    return v0
.end method

.method public final copy(Ljava/lang/String;III)Lcom/transsion/fission/activity/bean/PalmPayTaskInfo;
    .locals 1

    .line 1
    const-string v0, "taskId"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lcom/transsion/fission/activity/bean/PalmPayTaskInfo;

    .line 7
    .line 8
    invoke-direct {v0, p1, p2, p3, p4}, Lcom/transsion/fission/activity/bean/PalmPayTaskInfo;-><init>(Ljava/lang/String;III)V

    .line 9
    .line 10
    .line 11
    return-object v0
.end method

.method public final describeContents()I
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Lcom/transsion/fission/activity/bean/PalmPayTaskInfo;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_1

    .line 9
    .line 10
    return v2

    .line 11
    :cond_1
    check-cast p1, Lcom/transsion/fission/activity/bean/PalmPayTaskInfo;

    .line 12
    .line 13
    iget-object v1, p0, Lcom/transsion/fission/activity/bean/PalmPayTaskInfo;->taskId:Ljava/lang/String;

    .line 14
    .line 15
    iget-object v3, p1, Lcom/transsion/fission/activity/bean/PalmPayTaskInfo;->taskId:Ljava/lang/String;

    .line 16
    .line 17
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-nez v1, :cond_2

    .line 22
    .line 23
    return v2

    .line 24
    :cond_2
    iget v1, p0, Lcom/transsion/fission/activity/bean/PalmPayTaskInfo;->progress:I

    .line 25
    .line 26
    iget v3, p1, Lcom/transsion/fission/activity/bean/PalmPayTaskInfo;->progress:I

    .line 27
    .line 28
    if-eq v1, v3, :cond_3

    .line 29
    .line 30
    return v2

    .line 31
    :cond_3
    iget v1, p0, Lcom/transsion/fission/activity/bean/PalmPayTaskInfo;->totalProgress:I

    .line 32
    .line 33
    iget v3, p1, Lcom/transsion/fission/activity/bean/PalmPayTaskInfo;->totalProgress:I

    .line 34
    .line 35
    if-eq v1, v3, :cond_4

    .line 36
    .line 37
    return v2

    .line 38
    :cond_4
    iget v1, p0, Lcom/transsion/fission/activity/bean/PalmPayTaskInfo;->status:I

    .line 39
    .line 40
    iget p1, p1, Lcom/transsion/fission/activity/bean/PalmPayTaskInfo;->status:I

    .line 41
    .line 42
    if-eq v1, p1, :cond_5

    .line 43
    .line 44
    return v2

    .line 45
    :cond_5
    return v0
.end method

.method public final getProgress()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/transsion/fission/activity/bean/PalmPayTaskInfo;->progress:I

    .line 2
    .line 3
    return v0
.end method

.method public final getStatus()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/transsion/fission/activity/bean/PalmPayTaskInfo;->status:I

    .line 2
    .line 3
    return v0
.end method

.method public final getTaskId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/fission/activity/bean/PalmPayTaskInfo;->taskId:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getTotalProgress()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/transsion/fission/activity/bean/PalmPayTaskInfo;->totalProgress:I

    .line 2
    .line 3
    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transsion/fission/activity/bean/PalmPayTaskInfo;->taskId:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    mul-int/lit8 v0, v0, 0x1f

    .line 8
    .line 9
    iget v1, p0, Lcom/transsion/fission/activity/bean/PalmPayTaskInfo;->progress:I

    .line 10
    .line 11
    add-int/2addr v0, v1

    .line 12
    mul-int/lit8 v0, v0, 0x1f

    .line 13
    .line 14
    iget v1, p0, Lcom/transsion/fission/activity/bean/PalmPayTaskInfo;->totalProgress:I

    .line 15
    .line 16
    add-int/2addr v0, v1

    .line 17
    mul-int/lit8 v0, v0, 0x1f

    .line 18
    .line 19
    iget v1, p0, Lcom/transsion/fission/activity/bean/PalmPayTaskInfo;->status:I

    .line 20
    .line 21
    add-int/2addr v0, v1

    .line 22
    return v0
.end method

.method public final setProgress(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/transsion/fission/activity/bean/PalmPayTaskInfo;->progress:I

    .line 2
    .line 3
    return-void
.end method

.method public final setStatus(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/transsion/fission/activity/bean/PalmPayTaskInfo;->status:I

    .line 2
    .line 3
    return-void
.end method

.method public final setTaskId(Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/transsion/fission/activity/bean/PalmPayTaskInfo;->taskId:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method

.method public final setTotalProgress(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/transsion/fission/activity/bean/PalmPayTaskInfo;->totalProgress:I

    .line 2
    .line 3
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/transsion/fission/activity/bean/PalmPayTaskInfo;->taskId:Ljava/lang/String;

    .line 2
    .line 3
    iget v1, p0, Lcom/transsion/fission/activity/bean/PalmPayTaskInfo;->progress:I

    .line 4
    .line 5
    iget v2, p0, Lcom/transsion/fission/activity/bean/PalmPayTaskInfo;->totalProgress:I

    .line 6
    .line 7
    iget v3, p0, Lcom/transsion/fission/activity/bean/PalmPayTaskInfo;->status:I

    .line 8
    .line 9
    new-instance v4, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 12
    .line 13
    .line 14
    const-string v5, "PalmPayTaskInfo(taskId="

    .line 15
    .line 16
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    const-string v0, ", progress="

    .line 23
    .line 24
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    const-string v0, ", totalProgress="

    .line 31
    .line 32
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    const-string v0, ", status="

    .line 39
    .line 40
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    const-string v0, ")"

    .line 47
    .line 48
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1
    const-string p2, "dest"

    .line 2
    .line 3
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p2, p0, Lcom/transsion/fission/activity/bean/PalmPayTaskInfo;->taskId:Ljava/lang/String;

    .line 7
    .line 8
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget p2, p0, Lcom/transsion/fission/activity/bean/PalmPayTaskInfo;->progress:I

    .line 12
    .line 13
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 14
    .line 15
    .line 16
    iget p2, p0, Lcom/transsion/fission/activity/bean/PalmPayTaskInfo;->totalProgress:I

    .line 17
    .line 18
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 19
    .line 20
    .line 21
    iget p2, p0, Lcom/transsion/fission/activity/bean/PalmPayTaskInfo;->status:I

    .line 22
    .line 23
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 24
    .line 25
    .line 26
    return-void
.end method
