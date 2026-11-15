.class public final Lcom/transsion/fission/activity/bean/PalmPayTaskResult;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000e\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0087\u0008\u0018\u00002\u00020\u0001B\u001b\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u000b\u0010\u0010\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u000b\u0010\u0011\u001a\u0004\u0018\u00010\u0005H\u00c6\u0003J!\u0010\u0012\u001a\u00020\u00002\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\u00c6\u0001J\u0006\u0010\u0013\u001a\u00020\u0014J\u0013\u0010\u0015\u001a\u00020\u00162\u0008\u0010\u0017\u001a\u0004\u0018\u00010\u0018H\u00d6\u0003J\t\u0010\u0019\u001a\u00020\u0014H\u00d6\u0001J\t\u0010\u001a\u001a\u00020\u001bH\u00d6\u0001J\u0016\u0010\u001c\u001a\u00020\u001d2\u0006\u0010\u001e\u001a\u00020\u001f2\u0006\u0010 \u001a\u00020\u0014R\u001c\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0008\u0010\t\"\u0004\u0008\n\u0010\u000bR\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000c\u0010\r\"\u0004\u0008\u000e\u0010\u000f\u00a8\u0006!"
    }
    d2 = {
        "Lcom/transsion/fission/activity/bean/PalmPayTaskResult;",
        "Landroid/os/Parcelable;",
        "taskInfo",
        "Lcom/transsion/fission/activity/bean/PalmPayTaskInfo;",
        "popup",
        "Lcom/transsion/bean/HomePopupInfo;",
        "<init>",
        "(Lcom/transsion/fission/activity/bean/PalmPayTaskInfo;Lcom/transsion/bean/HomePopupInfo;)V",
        "getTaskInfo",
        "()Lcom/transsion/fission/activity/bean/PalmPayTaskInfo;",
        "setTaskInfo",
        "(Lcom/transsion/fission/activity/bean/PalmPayTaskInfo;)V",
        "getPopup",
        "()Lcom/transsion/bean/HomePopupInfo;",
        "setPopup",
        "(Lcom/transsion/bean/HomePopupInfo;)V",
        "component1",
        "component2",
        "copy",
        "describeContents",
        "",
        "equals",
        "",
        "other",
        "",
        "hashCode",
        "toString",
        "",
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
            "Lcom/transsion/fission/activity/bean/PalmPayTaskResult;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private popup:Lcom/transsion/bean/HomePopupInfo;

.field private taskInfo:Lcom/transsion/fission/activity/bean/PalmPayTaskInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/transsion/fission/activity/bean/PalmPayTaskResult$a;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/transsion/fission/activity/bean/PalmPayTaskResult$a;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/transsion/fission/activity/bean/PalmPayTaskResult;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>(Lcom/transsion/fission/activity/bean/PalmPayTaskInfo;Lcom/transsion/bean/HomePopupInfo;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/transsion/fission/activity/bean/PalmPayTaskResult;->taskInfo:Lcom/transsion/fission/activity/bean/PalmPayTaskInfo;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/transsion/fission/activity/bean/PalmPayTaskResult;->popup:Lcom/transsion/bean/HomePopupInfo;

    .line 7
    .line 8
    return-void
.end method

.method public static synthetic copy$default(Lcom/transsion/fission/activity/bean/PalmPayTaskResult;Lcom/transsion/fission/activity/bean/PalmPayTaskInfo;Lcom/transsion/bean/HomePopupInfo;ILjava/lang/Object;)Lcom/transsion/fission/activity/bean/PalmPayTaskResult;
    .locals 0

    .line 1
    and-int/lit8 p4, p3, 0x1

    .line 2
    .line 3
    if-eqz p4, :cond_0

    .line 4
    .line 5
    iget-object p1, p0, Lcom/transsion/fission/activity/bean/PalmPayTaskResult;->taskInfo:Lcom/transsion/fission/activity/bean/PalmPayTaskInfo;

    .line 6
    .line 7
    :cond_0
    and-int/lit8 p3, p3, 0x2

    .line 8
    .line 9
    if-eqz p3, :cond_1

    .line 10
    .line 11
    iget-object p2, p0, Lcom/transsion/fission/activity/bean/PalmPayTaskResult;->popup:Lcom/transsion/bean/HomePopupInfo;

    .line 12
    .line 13
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/transsion/fission/activity/bean/PalmPayTaskResult;->copy(Lcom/transsion/fission/activity/bean/PalmPayTaskInfo;Lcom/transsion/bean/HomePopupInfo;)Lcom/transsion/fission/activity/bean/PalmPayTaskResult;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0
.end method


# virtual methods
.method public final component1()Lcom/transsion/fission/activity/bean/PalmPayTaskInfo;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/fission/activity/bean/PalmPayTaskResult;->taskInfo:Lcom/transsion/fission/activity/bean/PalmPayTaskInfo;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component2()Lcom/transsion/bean/HomePopupInfo;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/fission/activity/bean/PalmPayTaskResult;->popup:Lcom/transsion/bean/HomePopupInfo;

    .line 2
    .line 3
    return-object v0
.end method

.method public final copy(Lcom/transsion/fission/activity/bean/PalmPayTaskInfo;Lcom/transsion/bean/HomePopupInfo;)Lcom/transsion/fission/activity/bean/PalmPayTaskResult;
    .locals 1

    .line 1
    new-instance v0, Lcom/transsion/fission/activity/bean/PalmPayTaskResult;

    .line 2
    .line 3
    invoke-direct {v0, p1, p2}, Lcom/transsion/fission/activity/bean/PalmPayTaskResult;-><init>(Lcom/transsion/fission/activity/bean/PalmPayTaskInfo;Lcom/transsion/bean/HomePopupInfo;)V

    .line 4
    .line 5
    .line 6
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
    instance-of v1, p1, Lcom/transsion/fission/activity/bean/PalmPayTaskResult;

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
    check-cast p1, Lcom/transsion/fission/activity/bean/PalmPayTaskResult;

    .line 12
    .line 13
    iget-object v1, p0, Lcom/transsion/fission/activity/bean/PalmPayTaskResult;->taskInfo:Lcom/transsion/fission/activity/bean/PalmPayTaskInfo;

    .line 14
    .line 15
    iget-object v3, p1, Lcom/transsion/fission/activity/bean/PalmPayTaskResult;->taskInfo:Lcom/transsion/fission/activity/bean/PalmPayTaskInfo;

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
    iget-object v1, p0, Lcom/transsion/fission/activity/bean/PalmPayTaskResult;->popup:Lcom/transsion/bean/HomePopupInfo;

    .line 25
    .line 26
    iget-object p1, p1, Lcom/transsion/fission/activity/bean/PalmPayTaskResult;->popup:Lcom/transsion/bean/HomePopupInfo;

    .line 27
    .line 28
    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    if-nez p1, :cond_3

    .line 33
    .line 34
    return v2

    .line 35
    :cond_3
    return v0
.end method

.method public final getPopup()Lcom/transsion/bean/HomePopupInfo;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/fission/activity/bean/PalmPayTaskResult;->popup:Lcom/transsion/bean/HomePopupInfo;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getTaskInfo()Lcom/transsion/fission/activity/bean/PalmPayTaskInfo;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/fission/activity/bean/PalmPayTaskResult;->taskInfo:Lcom/transsion/fission/activity/bean/PalmPayTaskInfo;

    .line 2
    .line 3
    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/transsion/fission/activity/bean/PalmPayTaskResult;->taskInfo:Lcom/transsion/fission/activity/bean/PalmPayTaskInfo;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    move v0, v1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {v0}, Lcom/transsion/fission/activity/bean/PalmPayTaskInfo;->hashCode()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    .line 13
    .line 14
    iget-object v2, p0, Lcom/transsion/fission/activity/bean/PalmPayTaskResult;->popup:Lcom/transsion/bean/HomePopupInfo;

    .line 15
    .line 16
    if-nez v2, :cond_1

    .line 17
    .line 18
    goto :goto_1

    .line 19
    :cond_1
    invoke-virtual {v2}, Lcom/transsion/bean/HomePopupInfo;->hashCode()I

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    :goto_1
    add-int/2addr v0, v1

    .line 24
    return v0
.end method

.method public final setPopup(Lcom/transsion/bean/HomePopupInfo;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/fission/activity/bean/PalmPayTaskResult;->popup:Lcom/transsion/bean/HomePopupInfo;

    .line 2
    .line 3
    return-void
.end method

.method public final setTaskInfo(Lcom/transsion/fission/activity/bean/PalmPayTaskInfo;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/fission/activity/bean/PalmPayTaskResult;->taskInfo:Lcom/transsion/fission/activity/bean/PalmPayTaskInfo;

    .line 2
    .line 3
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/transsion/fission/activity/bean/PalmPayTaskResult;->taskInfo:Lcom/transsion/fission/activity/bean/PalmPayTaskInfo;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/transsion/fission/activity/bean/PalmPayTaskResult;->popup:Lcom/transsion/bean/HomePopupInfo;

    .line 4
    .line 5
    new-instance v2, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    const-string v3, "PalmPayTaskResult(taskInfo="

    .line 11
    .line 12
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    const-string v0, ", popup="

    .line 19
    .line 20
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string v0, ")"

    .line 27
    .line 28
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 1
    const-string v0, "dest"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/transsion/fission/activity/bean/PalmPayTaskResult;->taskInfo:Lcom/transsion/fission/activity/bean/PalmPayTaskInfo;

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 v1, 0x1

    .line 16
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, p1, p2}, Lcom/transsion/fission/activity/bean/PalmPayTaskInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 20
    .line 21
    .line 22
    :goto_0
    iget-object v0, p0, Lcom/transsion/fission/activity/bean/PalmPayTaskResult;->popup:Lcom/transsion/bean/HomePopupInfo;

    .line 23
    .line 24
    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 25
    .line 26
    .line 27
    return-void
.end method
