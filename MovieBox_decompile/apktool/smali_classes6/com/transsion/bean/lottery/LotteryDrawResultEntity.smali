.class public final Lcom/transsion/bean/lottery/LotteryDrawResultEntity;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/bean/lottery/LotteryDrawResultEntity$LotteryResultBean;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0087\u0008\u0018\u00002\u00020\u0001:\u0001\u0018B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\t\u0010\u0008\u001a\u00020\u0003H\u00c6\u0003J\u0013\u0010\t\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003H\u00c6\u0001J\u0006\u0010\n\u001a\u00020\u000bJ\u0013\u0010\u000c\u001a\u00020\r2\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u000fH\u00d6\u0003J\t\u0010\u0010\u001a\u00020\u000bH\u00d6\u0001J\t\u0010\u0011\u001a\u00020\u0012H\u00d6\u0001J\u0016\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u000bR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\u0019"
    }
    d2 = {
        "Lcom/transsion/bean/lottery/LotteryDrawResultEntity;",
        "Landroid/os/Parcelable;",
        "result",
        "Lcom/transsion/bean/lottery/LotteryDrawResultEntity$LotteryResultBean;",
        "<init>",
        "(Lcom/transsion/bean/lottery/LotteryDrawResultEntity$LotteryResultBean;)V",
        "getResult",
        "()Lcom/transsion/bean/lottery/LotteryDrawResultEntity$LotteryResultBean;",
        "component1",
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
        "LotteryResultBean",
        "CommercializationApi_psRelease"
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
            "Lcom/transsion/bean/lottery/LotteryDrawResultEntity;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final result:Lcom/transsion/bean/lottery/LotteryDrawResultEntity$LotteryResultBean;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/transsion/bean/lottery/LotteryDrawResultEntity$a;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/transsion/bean/lottery/LotteryDrawResultEntity$a;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/transsion/bean/lottery/LotteryDrawResultEntity;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>(Lcom/transsion/bean/lottery/LotteryDrawResultEntity$LotteryResultBean;)V
    .locals 1

    .line 1
    const-string v0, "result"

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
    iput-object p1, p0, Lcom/transsion/bean/lottery/LotteryDrawResultEntity;->result:Lcom/transsion/bean/lottery/LotteryDrawResultEntity$LotteryResultBean;

    .line 10
    .line 11
    return-void
.end method

.method public static synthetic copy$default(Lcom/transsion/bean/lottery/LotteryDrawResultEntity;Lcom/transsion/bean/lottery/LotteryDrawResultEntity$LotteryResultBean;ILjava/lang/Object;)Lcom/transsion/bean/lottery/LotteryDrawResultEntity;
    .locals 0

    .line 1
    and-int/lit8 p2, p2, 0x1

    .line 2
    .line 3
    if-eqz p2, :cond_0

    .line 4
    .line 5
    iget-object p1, p0, Lcom/transsion/bean/lottery/LotteryDrawResultEntity;->result:Lcom/transsion/bean/lottery/LotteryDrawResultEntity$LotteryResultBean;

    .line 6
    .line 7
    :cond_0
    invoke-virtual {p0, p1}, Lcom/transsion/bean/lottery/LotteryDrawResultEntity;->copy(Lcom/transsion/bean/lottery/LotteryDrawResultEntity$LotteryResultBean;)Lcom/transsion/bean/lottery/LotteryDrawResultEntity;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method


# virtual methods
.method public final component1()Lcom/transsion/bean/lottery/LotteryDrawResultEntity$LotteryResultBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/bean/lottery/LotteryDrawResultEntity;->result:Lcom/transsion/bean/lottery/LotteryDrawResultEntity$LotteryResultBean;

    .line 2
    .line 3
    return-object v0
.end method

.method public final copy(Lcom/transsion/bean/lottery/LotteryDrawResultEntity$LotteryResultBean;)Lcom/transsion/bean/lottery/LotteryDrawResultEntity;
    .locals 1

    .line 1
    const-string v0, "result"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lcom/transsion/bean/lottery/LotteryDrawResultEntity;

    .line 7
    .line 8
    invoke-direct {v0, p1}, Lcom/transsion/bean/lottery/LotteryDrawResultEntity;-><init>(Lcom/transsion/bean/lottery/LotteryDrawResultEntity$LotteryResultBean;)V

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
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Lcom/transsion/bean/lottery/LotteryDrawResultEntity;

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
    check-cast p1, Lcom/transsion/bean/lottery/LotteryDrawResultEntity;

    .line 12
    .line 13
    iget-object v1, p0, Lcom/transsion/bean/lottery/LotteryDrawResultEntity;->result:Lcom/transsion/bean/lottery/LotteryDrawResultEntity$LotteryResultBean;

    .line 14
    .line 15
    iget-object p1, p1, Lcom/transsion/bean/lottery/LotteryDrawResultEntity;->result:Lcom/transsion/bean/lottery/LotteryDrawResultEntity$LotteryResultBean;

    .line 16
    .line 17
    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    if-nez p1, :cond_2

    .line 22
    .line 23
    return v2

    .line 24
    :cond_2
    return v0
.end method

.method public final getResult()Lcom/transsion/bean/lottery/LotteryDrawResultEntity$LotteryResultBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/bean/lottery/LotteryDrawResultEntity;->result:Lcom/transsion/bean/lottery/LotteryDrawResultEntity$LotteryResultBean;

    .line 2
    .line 3
    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/bean/lottery/LotteryDrawResultEntity;->result:Lcom/transsion/bean/lottery/LotteryDrawResultEntity$LotteryResultBean;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/transsion/bean/lottery/LotteryDrawResultEntity$LotteryResultBean;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/transsion/bean/lottery/LotteryDrawResultEntity;->result:Lcom/transsion/bean/lottery/LotteryDrawResultEntity$LotteryResultBean;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v2, "LotteryDrawResultEntity(result="

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string v0, ")"

    .line 17
    .line 18
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 1
    const-string v0, "dest"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/transsion/bean/lottery/LotteryDrawResultEntity;->result:Lcom/transsion/bean/lottery/LotteryDrawResultEntity$LotteryResultBean;

    .line 7
    .line 8
    invoke-virtual {v0, p1, p2}, Lcom/transsion/bean/lottery/LotteryDrawResultEntity$LotteryResultBean;->writeToParcel(Landroid/os/Parcel;I)V

    .line 9
    .line 10
    .line 11
    return-void
.end method
