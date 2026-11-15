.class public final Lcom/transsion/bean/HomePopupEntity;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0017\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0087\u0008\u0018\u00002\u00020\u0001B\'\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u00a2\u0006\u0004\u0008\t\u0010\nJ\t\u0010\u0019\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u001a\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u001b\u001a\u00020\u0006H\u00c6\u0003J\t\u0010\u001c\u001a\u00020\u0008H\u00c6\u0003J1\u0010\u001d\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u00062\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0008H\u00c6\u0001J\u0006\u0010\u001e\u001a\u00020\u0006J\u0013\u0010\u001f\u001a\u00020 2\u0008\u0010!\u001a\u0004\u0018\u00010\"H\u00d6\u0003J\t\u0010#\u001a\u00020\u0006H\u00d6\u0001J\t\u0010$\u001a\u00020%H\u00d6\u0001J\u0016\u0010&\u001a\u00020\'2\u0006\u0010(\u001a\u00020)2\u0006\u0010*\u001a\u00020\u0006R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000eR\u001a\u0010\u0004\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000f\u0010\u000c\"\u0004\u0008\u0010\u0010\u000eR\u001a\u0010\u0005\u001a\u00020\u0006X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012\"\u0004\u0008\u0013\u0010\u0014R\u001a\u0010\u0007\u001a\u00020\u0008X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0015\u0010\u0016\"\u0004\u0008\u0017\u0010\u0018\u00a8\u0006+"
    }
    d2 = {
        "Lcom/transsion/bean/HomePopupEntity;",
        "Landroid/os/Parcelable;",
        "popup",
        "Lcom/transsion/bean/HomePopupInfo;",
        "widget",
        "requestInterval",
        "",
        "ts",
        "",
        "<init>",
        "(Lcom/transsion/bean/HomePopupInfo;Lcom/transsion/bean/HomePopupInfo;IJ)V",
        "getPopup",
        "()Lcom/transsion/bean/HomePopupInfo;",
        "setPopup",
        "(Lcom/transsion/bean/HomePopupInfo;)V",
        "getWidget",
        "setWidget",
        "getRequestInterval",
        "()I",
        "setRequestInterval",
        "(I)V",
        "getTs",
        "()J",
        "setTs",
        "(J)V",
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
        "",
        "writeToParcel",
        "",
        "dest",
        "Landroid/os/Parcel;",
        "flags",
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
            "Lcom/transsion/bean/HomePopupEntity;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private popup:Lcom/transsion/bean/HomePopupInfo;

.field private requestInterval:I

.field private ts:J

.field private widget:Lcom/transsion/bean/HomePopupInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/transsion/bean/HomePopupEntity$a;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/transsion/bean/HomePopupEntity$a;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/transsion/bean/HomePopupEntity;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>(Lcom/transsion/bean/HomePopupInfo;Lcom/transsion/bean/HomePopupInfo;IJ)V
    .locals 1

    .line 1
    const-string v0, "popup"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "widget"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    iput-object p1, p0, Lcom/transsion/bean/HomePopupEntity;->popup:Lcom/transsion/bean/HomePopupInfo;

    .line 15
    .line 16
    iput-object p2, p0, Lcom/transsion/bean/HomePopupEntity;->widget:Lcom/transsion/bean/HomePopupInfo;

    .line 17
    .line 18
    iput p3, p0, Lcom/transsion/bean/HomePopupEntity;->requestInterval:I

    .line 19
    .line 20
    iput-wide p4, p0, Lcom/transsion/bean/HomePopupEntity;->ts:J

    .line 21
    .line 22
    return-void
.end method

.method public static synthetic copy$default(Lcom/transsion/bean/HomePopupEntity;Lcom/transsion/bean/HomePopupInfo;Lcom/transsion/bean/HomePopupInfo;IJILjava/lang/Object;)Lcom/transsion/bean/HomePopupEntity;
    .locals 3

    .line 1
    and-int/lit8 p7, p6, 0x1

    .line 2
    .line 3
    if-eqz p7, :cond_0

    .line 4
    .line 5
    iget-object p1, p0, Lcom/transsion/bean/HomePopupEntity;->popup:Lcom/transsion/bean/HomePopupInfo;

    .line 6
    .line 7
    :cond_0
    and-int/lit8 p7, p6, 0x2

    .line 8
    .line 9
    if-eqz p7, :cond_1

    .line 10
    .line 11
    iget-object p2, p0, Lcom/transsion/bean/HomePopupEntity;->widget:Lcom/transsion/bean/HomePopupInfo;

    .line 12
    .line 13
    :cond_1
    move-object p7, p2

    .line 14
    and-int/lit8 p2, p6, 0x4

    .line 15
    .line 16
    if-eqz p2, :cond_2

    .line 17
    .line 18
    iget p3, p0, Lcom/transsion/bean/HomePopupEntity;->requestInterval:I

    .line 19
    .line 20
    :cond_2
    move v0, p3

    .line 21
    and-int/lit8 p2, p6, 0x8

    .line 22
    .line 23
    if-eqz p2, :cond_3

    .line 24
    .line 25
    iget-wide p4, p0, Lcom/transsion/bean/HomePopupEntity;->ts:J

    .line 26
    .line 27
    :cond_3
    move-wide v1, p4

    .line 28
    move-object p2, p0

    .line 29
    move-object p3, p1

    .line 30
    move-object p4, p7

    .line 31
    move p5, v0

    .line 32
    move-wide p6, v1

    .line 33
    invoke-virtual/range {p2 .. p7}, Lcom/transsion/bean/HomePopupEntity;->copy(Lcom/transsion/bean/HomePopupInfo;Lcom/transsion/bean/HomePopupInfo;IJ)Lcom/transsion/bean/HomePopupEntity;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    return-object p0
.end method


# virtual methods
.method public final component1()Lcom/transsion/bean/HomePopupInfo;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/bean/HomePopupEntity;->popup:Lcom/transsion/bean/HomePopupInfo;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component2()Lcom/transsion/bean/HomePopupInfo;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/bean/HomePopupEntity;->widget:Lcom/transsion/bean/HomePopupInfo;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component3()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/transsion/bean/HomePopupEntity;->requestInterval:I

    .line 2
    .line 3
    return v0
.end method

.method public final component4()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/transsion/bean/HomePopupEntity;->ts:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final copy(Lcom/transsion/bean/HomePopupInfo;Lcom/transsion/bean/HomePopupInfo;IJ)Lcom/transsion/bean/HomePopupEntity;
    .locals 7

    .line 1
    const-string v0, "popup"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "widget"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    new-instance v0, Lcom/transsion/bean/HomePopupEntity;

    .line 12
    .line 13
    move-object v1, v0

    .line 14
    move-object v2, p1

    .line 15
    move-object v3, p2

    .line 16
    move v4, p3

    .line 17
    move-wide v5, p4

    .line 18
    invoke-direct/range {v1 .. v6}, Lcom/transsion/bean/HomePopupEntity;-><init>(Lcom/transsion/bean/HomePopupInfo;Lcom/transsion/bean/HomePopupInfo;IJ)V

    .line 19
    .line 20
    .line 21
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
    .locals 7

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Lcom/transsion/bean/HomePopupEntity;

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
    check-cast p1, Lcom/transsion/bean/HomePopupEntity;

    .line 12
    .line 13
    iget-object v1, p0, Lcom/transsion/bean/HomePopupEntity;->popup:Lcom/transsion/bean/HomePopupInfo;

    .line 14
    .line 15
    iget-object v3, p1, Lcom/transsion/bean/HomePopupEntity;->popup:Lcom/transsion/bean/HomePopupInfo;

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
    iget-object v1, p0, Lcom/transsion/bean/HomePopupEntity;->widget:Lcom/transsion/bean/HomePopupInfo;

    .line 25
    .line 26
    iget-object v3, p1, Lcom/transsion/bean/HomePopupEntity;->widget:Lcom/transsion/bean/HomePopupInfo;

    .line 27
    .line 28
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    if-nez v1, :cond_3

    .line 33
    .line 34
    return v2

    .line 35
    :cond_3
    iget v1, p0, Lcom/transsion/bean/HomePopupEntity;->requestInterval:I

    .line 36
    .line 37
    iget v3, p1, Lcom/transsion/bean/HomePopupEntity;->requestInterval:I

    .line 38
    .line 39
    if-eq v1, v3, :cond_4

    .line 40
    .line 41
    return v2

    .line 42
    :cond_4
    iget-wide v3, p0, Lcom/transsion/bean/HomePopupEntity;->ts:J

    .line 43
    .line 44
    iget-wide v5, p1, Lcom/transsion/bean/HomePopupEntity;->ts:J

    .line 45
    .line 46
    cmp-long p1, v3, v5

    .line 47
    .line 48
    if-eqz p1, :cond_5

    .line 49
    .line 50
    return v2

    .line 51
    :cond_5
    return v0
.end method

.method public final getPopup()Lcom/transsion/bean/HomePopupInfo;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/bean/HomePopupEntity;->popup:Lcom/transsion/bean/HomePopupInfo;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getRequestInterval()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/transsion/bean/HomePopupEntity;->requestInterval:I

    .line 2
    .line 3
    return v0
.end method

.method public final getTs()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/transsion/bean/HomePopupEntity;->ts:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final getWidget()Lcom/transsion/bean/HomePopupInfo;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/bean/HomePopupEntity;->widget:Lcom/transsion/bean/HomePopupInfo;

    .line 2
    .line 3
    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/transsion/bean/HomePopupEntity;->popup:Lcom/transsion/bean/HomePopupInfo;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/transsion/bean/HomePopupInfo;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    mul-int/lit8 v0, v0, 0x1f

    .line 8
    .line 9
    iget-object v1, p0, Lcom/transsion/bean/HomePopupEntity;->widget:Lcom/transsion/bean/HomePopupInfo;

    .line 10
    .line 11
    invoke-virtual {v1}, Lcom/transsion/bean/HomePopupInfo;->hashCode()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    add-int/2addr v0, v1

    .line 16
    mul-int/lit8 v0, v0, 0x1f

    .line 17
    .line 18
    iget v1, p0, Lcom/transsion/bean/HomePopupEntity;->requestInterval:I

    .line 19
    .line 20
    add-int/2addr v0, v1

    .line 21
    mul-int/lit8 v0, v0, 0x1f

    .line 22
    .line 23
    iget-wide v1, p0, Lcom/transsion/bean/HomePopupEntity;->ts:J

    .line 24
    .line 25
    invoke-static {v1, v2}, Landroidx/collection/s;->a(J)I

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    add-int/2addr v0, v1

    .line 30
    return v0
.end method

.method public final setPopup(Lcom/transsion/bean/HomePopupInfo;)V
    .locals 1

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/transsion/bean/HomePopupEntity;->popup:Lcom/transsion/bean/HomePopupInfo;

    .line 7
    .line 8
    return-void
.end method

.method public final setRequestInterval(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/transsion/bean/HomePopupEntity;->requestInterval:I

    .line 2
    .line 3
    return-void
.end method

.method public final setTs(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/transsion/bean/HomePopupEntity;->ts:J

    .line 2
    .line 3
    return-void
.end method

.method public final setWidget(Lcom/transsion/bean/HomePopupInfo;)V
    .locals 1

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/transsion/bean/HomePopupEntity;->widget:Lcom/transsion/bean/HomePopupInfo;

    .line 7
    .line 8
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/transsion/bean/HomePopupEntity;->popup:Lcom/transsion/bean/HomePopupInfo;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/transsion/bean/HomePopupEntity;->widget:Lcom/transsion/bean/HomePopupInfo;

    .line 4
    .line 5
    iget v2, p0, Lcom/transsion/bean/HomePopupEntity;->requestInterval:I

    .line 6
    .line 7
    iget-wide v3, p0, Lcom/transsion/bean/HomePopupEntity;->ts:J

    .line 8
    .line 9
    new-instance v5, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 12
    .line 13
    .line 14
    const-string v6, "HomePopupEntity(popup="

    .line 15
    .line 16
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    const-string v0, ", widget="

    .line 23
    .line 24
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    const-string v0, ", requestInterval="

    .line 31
    .line 32
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    const-string v0, ", ts="

    .line 39
    .line 40
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    const-string v0, ")"

    .line 47
    .line 48
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
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
    iget-object v0, p0, Lcom/transsion/bean/HomePopupEntity;->popup:Lcom/transsion/bean/HomePopupInfo;

    .line 7
    .line 8
    invoke-virtual {v0, p1, p2}, Lcom/transsion/bean/HomePopupInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/transsion/bean/HomePopupEntity;->widget:Lcom/transsion/bean/HomePopupInfo;

    .line 12
    .line 13
    invoke-virtual {v0, p1, p2}, Lcom/transsion/bean/HomePopupInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 14
    .line 15
    .line 16
    iget p2, p0, Lcom/transsion/bean/HomePopupEntity;->requestInterval:I

    .line 17
    .line 18
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 19
    .line 20
    .line 21
    iget-wide v0, p0, Lcom/transsion/bean/HomePopupEntity;->ts:J

    .line 22
    .line 23
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 24
    .line 25
    .line 26
    return-void
.end method
