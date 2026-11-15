.class public final Lcom/transsion/memberapi/LotteryModule$a;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/memberapi/LotteryModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final a(Landroid/os/Parcel;)Lcom/transsion/memberapi/LotteryModule;
    .locals 7

    .line 1
    const-string v0, "parcel"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lcom/transsion/memberapi/LotteryModule;

    .line 7
    .line 8
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    const/4 v2, 0x0

    .line 13
    if-nez v1, :cond_0

    .line 14
    .line 15
    move-object v3, v2

    .line 16
    goto :goto_1

    .line 17
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_1

    .line 22
    .line 23
    const/4 v1, 0x1

    .line 24
    goto :goto_0

    .line 25
    :cond_1
    const/4 v1, 0x0

    .line 26
    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    move-object v3, v1

    .line 31
    :goto_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v4

    .line 35
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    if-nez v1, :cond_2

    .line 40
    .line 41
    move-object v1, v2

    .line 42
    goto :goto_2

    .line 43
    :cond_2
    sget-object v1, Lcom/transsion/memberapi/ThreeInOnePopupTitle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 44
    .line 45
    invoke-interface {v1, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    :goto_2
    move-object v5, v1

    .line 50
    check-cast v5, Lcom/transsion/memberapi/ThreeInOnePopupTitle;

    .line 51
    .line 52
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 53
    .line 54
    .line 55
    move-result v1

    .line 56
    if-nez v1, :cond_3

    .line 57
    .line 58
    move-object v1, v2

    .line 59
    goto :goto_3

    .line 60
    :cond_3
    sget-object v1, Lcom/transsion/memberapi/ThreeInOnePopupTitle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 61
    .line 62
    invoke-interface {v1, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    :goto_3
    move-object v6, v1

    .line 67
    check-cast v6, Lcom/transsion/memberapi/ThreeInOnePopupTitle;

    .line 68
    .line 69
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 70
    .line 71
    .line 72
    move-result v1

    .line 73
    if-nez v1, :cond_4

    .line 74
    .line 75
    goto :goto_4

    .line 76
    :cond_4
    sget-object v1, Lcom/transsion/memberapi/ThreeInOnePopupTitle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 77
    .line 78
    invoke-interface {v1, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object v2

    .line 82
    :goto_4
    move-object p1, v2

    .line 83
    check-cast p1, Lcom/transsion/memberapi/ThreeInOnePopupTitle;

    .line 84
    .line 85
    move-object v1, v0

    .line 86
    move-object v2, v3

    .line 87
    move-object v3, v4

    .line 88
    move-object v4, v5

    .line 89
    move-object v5, v6

    .line 90
    move-object v6, p1

    .line 91
    invoke-direct/range {v1 .. v6}, Lcom/transsion/memberapi/LotteryModule;-><init>(Ljava/lang/Boolean;Ljava/lang/String;Lcom/transsion/memberapi/ThreeInOnePopupTitle;Lcom/transsion/memberapi/ThreeInOnePopupTitle;Lcom/transsion/memberapi/ThreeInOnePopupTitle;)V

    .line 92
    .line 93
    .line 94
    return-object v0
.end method

.method public final b(I)[Lcom/transsion/memberapi/LotteryModule;
    .locals 0

    .line 1
    new-array p1, p1, [Lcom/transsion/memberapi/LotteryModule;

    .line 2
    .line 3
    return-object p1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/transsion/memberapi/LotteryModule$a;->a(Landroid/os/Parcel;)Lcom/transsion/memberapi/LotteryModule;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/transsion/memberapi/LotteryModule$a;->b(I)[Lcom/transsion/memberapi/LotteryModule;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method
