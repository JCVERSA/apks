.class public final Lcom/transsion/memberapi/ThreeInOnePopup$b;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/memberapi/ThreeInOnePopup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
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
.method public final a(Landroid/os/Parcel;)Lcom/transsion/memberapi/ThreeInOnePopup;
    .locals 9

    .line 1
    const-string v0, "parcel"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lcom/transsion/memberapi/ThreeInOnePopup;

    .line 7
    .line 8
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    const/4 v3, 0x0

    .line 17
    if-nez v1, :cond_0

    .line 18
    .line 19
    move-object v1, v3

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    sget-object v1, Lcom/transsion/memberapi/LotteryModule;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 22
    .line 23
    invoke-interface {v1, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    :goto_0
    move-object v4, v1

    .line 28
    check-cast v4, Lcom/transsion/memberapi/LotteryModule;

    .line 29
    .line 30
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    if-nez v1, :cond_1

    .line 35
    .line 36
    move-object v1, v3

    .line 37
    goto :goto_1

    .line 38
    :cond_1
    sget-object v1, Lcom/transsion/memberapi/PayModule;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 39
    .line 40
    invoke-interface {v1, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    :goto_1
    move-object v5, v1

    .line 45
    check-cast v5, Lcom/transsion/memberapi/PayModule;

    .line 46
    .line 47
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    if-nez v1, :cond_2

    .line 52
    .line 53
    move-object v1, v3

    .line 54
    goto :goto_2

    .line 55
    :cond_2
    sget-object v1, Lcom/transsion/memberapi/MemberModule;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 56
    .line 57
    invoke-interface {v1, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    :goto_2
    move-object v6, v1

    .line 62
    check-cast v6, Lcom/transsion/memberapi/MemberModule;

    .line 63
    .line 64
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 65
    .line 66
    .line 67
    move-result v1

    .line 68
    if-nez v1, :cond_3

    .line 69
    .line 70
    move-object v1, v3

    .line 71
    goto :goto_3

    .line 72
    :cond_3
    sget-object v1, Lcom/transsion/memberapi/AdModule;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 73
    .line 74
    invoke-interface {v1, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object v1

    .line 78
    :goto_3
    move-object v7, v1

    .line 79
    check-cast v7, Lcom/transsion/memberapi/AdModule;

    .line 80
    .line 81
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 82
    .line 83
    .line 84
    move-result v1

    .line 85
    if-nez v1, :cond_4

    .line 86
    .line 87
    move-object v1, v3

    .line 88
    goto :goto_4

    .line 89
    :cond_4
    sget-object v1, Lcom/transsion/memberapi/LotteryDisableModule;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 90
    .line 91
    invoke-interface {v1, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    move-result-object v1

    .line 95
    :goto_4
    move-object v8, v1

    .line 96
    check-cast v8, Lcom/transsion/memberapi/LotteryDisableModule;

    .line 97
    .line 98
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 99
    .line 100
    .line 101
    move-result v1

    .line 102
    if-nez v1, :cond_5

    .line 103
    .line 104
    goto :goto_5

    .line 105
    :cond_5
    sget-object v1, Lcom/transsion/memberapi/OrModule;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 106
    .line 107
    invoke-interface {v1, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 108
    .line 109
    .line 110
    move-result-object v3

    .line 111
    :goto_5
    move-object p1, v3

    .line 112
    check-cast p1, Lcom/transsion/memberapi/OrModule;

    .line 113
    .line 114
    move-object v1, v0

    .line 115
    move-object v3, v4

    .line 116
    move-object v4, v5

    .line 117
    move-object v5, v6

    .line 118
    move-object v6, v7

    .line 119
    move-object v7, v8

    .line 120
    move-object v8, p1

    .line 121
    invoke-direct/range {v1 .. v8}, Lcom/transsion/memberapi/ThreeInOnePopup;-><init>(Ljava/util/List;Lcom/transsion/memberapi/LotteryModule;Lcom/transsion/memberapi/PayModule;Lcom/transsion/memberapi/MemberModule;Lcom/transsion/memberapi/AdModule;Lcom/transsion/memberapi/LotteryDisableModule;Lcom/transsion/memberapi/OrModule;)V

    .line 122
    .line 123
    .line 124
    return-object v0
.end method

.method public final b(I)[Lcom/transsion/memberapi/ThreeInOnePopup;
    .locals 0

    .line 1
    new-array p1, p1, [Lcom/transsion/memberapi/ThreeInOnePopup;

    .line 2
    .line 3
    return-object p1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/transsion/memberapi/ThreeInOnePopup$b;->a(Landroid/os/Parcel;)Lcom/transsion/memberapi/ThreeInOnePopup;

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
    invoke-virtual {p0, p1}, Lcom/transsion/memberapi/ThreeInOnePopup$b;->b(I)[Lcom/transsion/memberapi/ThreeInOnePopup;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method
