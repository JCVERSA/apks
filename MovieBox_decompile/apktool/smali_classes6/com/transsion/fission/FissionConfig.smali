.class public final Lcom/transsion/fission/FissionConfig;
.super Lcom/transsion/fission/WebViewCacheConfigData;
.source "source.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0016\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0087\u0008\u0018\u00002\u00020\u00012\u00020\u0002B\'\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0006\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u00a2\u0006\u0004\u0008\t\u0010\nJ\t\u0010\u0017\u001a\u00020\u0004H\u00c6\u0003J\t\u0010\u0018\u001a\u00020\u0004H\u00c6\u0003J\t\u0010\u0019\u001a\u00020\u0004H\u00c6\u0003J\t\u0010\u001a\u001a\u00020\u0008H\u00c6\u0003J1\u0010\u001b\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0003\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0008H\u00c6\u0001J\u0006\u0010\u001c\u001a\u00020\u0004J\u0013\u0010\u001d\u001a\u00020\u00082\u0008\u0010\u001e\u001a\u0004\u0018\u00010\u001fH\u00d6\u0003J\t\u0010 \u001a\u00020\u0004H\u00d6\u0001J\t\u0010!\u001a\u00020\"H\u00d6\u0001J\u0016\u0010#\u001a\u00020$2\u0006\u0010%\u001a\u00020&2\u0006\u0010\'\u001a\u00020\u0004R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000eR\u001a\u0010\u0005\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000f\u0010\u000c\"\u0004\u0008\u0010\u0010\u000eR\u001a\u0010\u0006\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0011\u0010\u000c\"\u0004\u0008\u0012\u0010\u000eR\u001a\u0010\u0007\u001a\u00020\u0008X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0013\u0010\u0014\"\u0004\u0008\u0015\u0010\u0016\u00a8\u0006("
    }
    d2 = {
        "Lcom/transsion/fission/FissionConfig;",
        "Lcom/transsion/fission/WebViewCacheConfigData;",
        "Landroid/os/Parcelable;",
        "inviteNum",
        "",
        "moneyNum",
        "intervalDays",
        "inviteCodeReg",
        "",
        "<init>",
        "(IIIZ)V",
        "getInviteNum",
        "()I",
        "setInviteNum",
        "(I)V",
        "getMoneyNum",
        "setMoneyNum",
        "getIntervalDays",
        "setIntervalDays",
        "getInviteCodeReg",
        "()Z",
        "setInviteCodeReg",
        "(Z)V",
        "component1",
        "component2",
        "component3",
        "component4",
        "copy",
        "describeContents",
        "equals",
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
            "Lcom/transsion/fission/FissionConfig;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private intervalDays:I

.field private inviteCodeReg:Z

.field private inviteNum:I

.field private moneyNum:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/transsion/fission/FissionConfig$a;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/transsion/fission/FissionConfig$a;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/transsion/fission/FissionConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>(IIIZ)V
    .locals 6

    .line 1
    const/4 v4, 0x7

    .line 2
    const/4 v5, 0x0

    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x0

    .line 5
    const/4 v3, 0x0

    .line 6
    move-object v0, p0

    .line 7
    invoke-direct/range {v0 .. v5}, Lcom/transsion/fission/WebViewCacheConfigData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 8
    .line 9
    .line 10
    iput p1, p0, Lcom/transsion/fission/FissionConfig;->inviteNum:I

    .line 11
    .line 12
    iput p2, p0, Lcom/transsion/fission/FissionConfig;->moneyNum:I

    .line 13
    .line 14
    iput p3, p0, Lcom/transsion/fission/FissionConfig;->intervalDays:I

    .line 15
    .line 16
    iput-boolean p4, p0, Lcom/transsion/fission/FissionConfig;->inviteCodeReg:Z

    .line 17
    .line 18
    return-void
.end method

.method public static synthetic copy$default(Lcom/transsion/fission/FissionConfig;IIIZILjava/lang/Object;)Lcom/transsion/fission/FissionConfig;
    .locals 0

    .line 1
    and-int/lit8 p6, p5, 0x1

    .line 2
    .line 3
    if-eqz p6, :cond_0

    .line 4
    .line 5
    iget p1, p0, Lcom/transsion/fission/FissionConfig;->inviteNum:I

    .line 6
    .line 7
    :cond_0
    and-int/lit8 p6, p5, 0x2

    .line 8
    .line 9
    if-eqz p6, :cond_1

    .line 10
    .line 11
    iget p2, p0, Lcom/transsion/fission/FissionConfig;->moneyNum:I

    .line 12
    .line 13
    :cond_1
    and-int/lit8 p6, p5, 0x4

    .line 14
    .line 15
    if-eqz p6, :cond_2

    .line 16
    .line 17
    iget p3, p0, Lcom/transsion/fission/FissionConfig;->intervalDays:I

    .line 18
    .line 19
    :cond_2
    and-int/lit8 p5, p5, 0x8

    .line 20
    .line 21
    if-eqz p5, :cond_3

    .line 22
    .line 23
    iget-boolean p4, p0, Lcom/transsion/fission/FissionConfig;->inviteCodeReg:Z

    .line 24
    .line 25
    :cond_3
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/transsion/fission/FissionConfig;->copy(IIIZ)Lcom/transsion/fission/FissionConfig;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    return-object p0
.end method


# virtual methods
.method public final component1()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/transsion/fission/FissionConfig;->inviteNum:I

    .line 2
    .line 3
    return v0
.end method

.method public final component2()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/transsion/fission/FissionConfig;->moneyNum:I

    .line 2
    .line 3
    return v0
.end method

.method public final component3()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/transsion/fission/FissionConfig;->intervalDays:I

    .line 2
    .line 3
    return v0
.end method

.method public final component4()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/transsion/fission/FissionConfig;->inviteCodeReg:Z

    .line 2
    .line 3
    return v0
.end method

.method public final copy(IIIZ)Lcom/transsion/fission/FissionConfig;
    .locals 1

    .line 1
    new-instance v0, Lcom/transsion/fission/FissionConfig;

    .line 2
    .line 3
    invoke-direct {v0, p1, p2, p3, p4}, Lcom/transsion/fission/FissionConfig;-><init>(IIIZ)V

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
    instance-of v1, p1, Lcom/transsion/fission/FissionConfig;

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
    check-cast p1, Lcom/transsion/fission/FissionConfig;

    .line 12
    .line 13
    iget v1, p0, Lcom/transsion/fission/FissionConfig;->inviteNum:I

    .line 14
    .line 15
    iget v3, p1, Lcom/transsion/fission/FissionConfig;->inviteNum:I

    .line 16
    .line 17
    if-eq v1, v3, :cond_2

    .line 18
    .line 19
    return v2

    .line 20
    :cond_2
    iget v1, p0, Lcom/transsion/fission/FissionConfig;->moneyNum:I

    .line 21
    .line 22
    iget v3, p1, Lcom/transsion/fission/FissionConfig;->moneyNum:I

    .line 23
    .line 24
    if-eq v1, v3, :cond_3

    .line 25
    .line 26
    return v2

    .line 27
    :cond_3
    iget v1, p0, Lcom/transsion/fission/FissionConfig;->intervalDays:I

    .line 28
    .line 29
    iget v3, p1, Lcom/transsion/fission/FissionConfig;->intervalDays:I

    .line 30
    .line 31
    if-eq v1, v3, :cond_4

    .line 32
    .line 33
    return v2

    .line 34
    :cond_4
    iget-boolean v1, p0, Lcom/transsion/fission/FissionConfig;->inviteCodeReg:Z

    .line 35
    .line 36
    iget-boolean p1, p1, Lcom/transsion/fission/FissionConfig;->inviteCodeReg:Z

    .line 37
    .line 38
    if-eq v1, p1, :cond_5

    .line 39
    .line 40
    return v2

    .line 41
    :cond_5
    return v0
.end method

.method public final getIntervalDays()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/transsion/fission/FissionConfig;->intervalDays:I

    .line 2
    .line 3
    return v0
.end method

.method public final getInviteCodeReg()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/transsion/fission/FissionConfig;->inviteCodeReg:Z

    .line 2
    .line 3
    return v0
.end method

.method public final getInviteNum()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/transsion/fission/FissionConfig;->inviteNum:I

    .line 2
    .line 3
    return v0
.end method

.method public final getMoneyNum()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/transsion/fission/FissionConfig;->moneyNum:I

    .line 2
    .line 3
    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 1
    iget v0, p0, Lcom/transsion/fission/FissionConfig;->inviteNum:I

    .line 2
    .line 3
    mul-int/lit8 v0, v0, 0x1f

    .line 4
    .line 5
    iget v1, p0, Lcom/transsion/fission/FissionConfig;->moneyNum:I

    .line 6
    .line 7
    add-int/2addr v0, v1

    .line 8
    mul-int/lit8 v0, v0, 0x1f

    .line 9
    .line 10
    iget v1, p0, Lcom/transsion/fission/FissionConfig;->intervalDays:I

    .line 11
    .line 12
    add-int/2addr v0, v1

    .line 13
    mul-int/lit8 v0, v0, 0x1f

    .line 14
    .line 15
    iget-boolean v1, p0, Lcom/transsion/fission/FissionConfig;->inviteCodeReg:Z

    .line 16
    .line 17
    invoke-static {v1}, Landroidx/compose/foundation/e;->a(Z)I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    add-int/2addr v0, v1

    .line 22
    return v0
.end method

.method public final setIntervalDays(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/transsion/fission/FissionConfig;->intervalDays:I

    .line 2
    .line 3
    return-void
.end method

.method public final setInviteCodeReg(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/transsion/fission/FissionConfig;->inviteCodeReg:Z

    .line 2
    .line 3
    return-void
.end method

.method public final setInviteNum(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/transsion/fission/FissionConfig;->inviteNum:I

    .line 2
    .line 3
    return-void
.end method

.method public final setMoneyNum(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/transsion/fission/FissionConfig;->moneyNum:I

    .line 2
    .line 3
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .line 1
    iget v0, p0, Lcom/transsion/fission/FissionConfig;->inviteNum:I

    .line 2
    .line 3
    iget v1, p0, Lcom/transsion/fission/FissionConfig;->moneyNum:I

    .line 4
    .line 5
    iget v2, p0, Lcom/transsion/fission/FissionConfig;->intervalDays:I

    .line 6
    .line 7
    iget-boolean v3, p0, Lcom/transsion/fission/FissionConfig;->inviteCodeReg:Z

    .line 8
    .line 9
    new-instance v4, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 12
    .line 13
    .line 14
    const-string v5, "FissionConfig(inviteNum="

    .line 15
    .line 16
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    const-string v0, ", moneyNum="

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
    const-string v0, ", intervalDays="

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
    const-string v0, ", inviteCodeReg="

    .line 39
    .line 40
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

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
    iget p2, p0, Lcom/transsion/fission/FissionConfig;->inviteNum:I

    .line 7
    .line 8
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 9
    .line 10
    .line 11
    iget p2, p0, Lcom/transsion/fission/FissionConfig;->moneyNum:I

    .line 12
    .line 13
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 14
    .line 15
    .line 16
    iget p2, p0, Lcom/transsion/fission/FissionConfig;->intervalDays:I

    .line 17
    .line 18
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 19
    .line 20
    .line 21
    iget-boolean p2, p0, Lcom/transsion/fission/FissionConfig;->inviteCodeReg:Z

    .line 22
    .line 23
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 24
    .line 25
    .line 26
    return-void
.end method
