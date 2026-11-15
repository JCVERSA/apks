.class public final Lcom/transsion/bean/lottery/LotteryUserActivityInfoEntity$a;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/bean/lottery/LotteryUserActivityInfoEntity;
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
.method public final a(Landroid/os/Parcel;)Lcom/transsion/bean/lottery/LotteryUserActivityInfoEntity;
    .locals 8

    .line 1
    const-string v0, "parcel"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const/4 v1, 0x0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    move-object v0, v1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    sget-object v0, Lcom/transsion/bean/lottery/LotteryUserActivityInfoActivityBean;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 16
    .line 17
    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    :goto_0
    move-object v3, v0

    .line 22
    check-cast v3, Lcom/transsion/bean/lottery/LotteryUserActivityInfoActivityBean;

    .line 23
    .line 24
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    const/4 v2, 0x0

    .line 29
    if-nez v0, :cond_1

    .line 30
    .line 31
    move-object v4, v1

    .line 32
    goto :goto_2

    .line 33
    :cond_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    new-instance v4, Ljava/util/ArrayList;

    .line 38
    .line 39
    invoke-direct {v4, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 40
    .line 41
    .line 42
    move v5, v2

    .line 43
    :goto_1
    if-eq v5, v0, :cond_2

    .line 44
    .line 45
    sget-object v6, Lcom/transsion/bean/lottery/LotteryUserActivityInfoPriceItemsBean;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 46
    .line 47
    invoke-interface {v6, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v6

    .line 51
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    add-int/lit8 v5, v5, 0x1

    .line 55
    .line 56
    goto :goto_1

    .line 57
    :cond_2
    :goto_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 58
    .line 59
    .line 60
    move-result v0

    .line 61
    if-nez v0, :cond_3

    .line 62
    .line 63
    move-object v0, v1

    .line 64
    goto :goto_3

    .line 65
    :cond_3
    sget-object v0, Lcom/transsion/bean/lottery/LotteryUserActivityInfoUserLotteryBean;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 66
    .line 67
    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    :goto_3
    move-object v5, v0

    .line 72
    check-cast v5, Lcom/transsion/bean/lottery/LotteryUserActivityInfoUserLotteryBean;

    .line 73
    .line 74
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 75
    .line 76
    .line 77
    move-result v0

    .line 78
    if-nez v0, :cond_4

    .line 79
    .line 80
    move-object v6, v1

    .line 81
    goto :goto_5

    .line 82
    :cond_4
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 83
    .line 84
    .line 85
    move-result v0

    .line 86
    new-instance v6, Ljava/util/ArrayList;

    .line 87
    .line 88
    invoke-direct {v6, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 89
    .line 90
    .line 91
    :goto_4
    if-eq v2, v0, :cond_5

    .line 92
    .line 93
    sget-object v7, Lcom/transsion/bean/lottery/LotteryUserActivityInfoDrawResultsBean;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 94
    .line 95
    invoke-interface {v7, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    move-result-object v7

    .line 99
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 100
    .line 101
    .line 102
    add-int/lit8 v2, v2, 0x1

    .line 103
    .line 104
    goto :goto_4

    .line 105
    :cond_5
    :goto_5
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 106
    .line 107
    .line 108
    move-result v0

    .line 109
    if-nez v0, :cond_6

    .line 110
    .line 111
    goto :goto_6

    .line 112
    :cond_6
    sget-object v0, Lcom/transsion/bean/lottery/LotteryUserActivityTitleBean;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 113
    .line 114
    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 115
    .line 116
    .line 117
    move-result-object v1

    .line 118
    :goto_6
    move-object v7, v1

    .line 119
    check-cast v7, Lcom/transsion/bean/lottery/LotteryUserActivityTitleBean;

    .line 120
    .line 121
    new-instance p1, Lcom/transsion/bean/lottery/LotteryUserActivityInfoEntity;

    .line 122
    .line 123
    move-object v2, p1

    .line 124
    invoke-direct/range {v2 .. v7}, Lcom/transsion/bean/lottery/LotteryUserActivityInfoEntity;-><init>(Lcom/transsion/bean/lottery/LotteryUserActivityInfoActivityBean;Ljava/util/List;Lcom/transsion/bean/lottery/LotteryUserActivityInfoUserLotteryBean;Ljava/util/List;Lcom/transsion/bean/lottery/LotteryUserActivityTitleBean;)V

    .line 125
    .line 126
    .line 127
    return-object p1
.end method

.method public final b(I)[Lcom/transsion/bean/lottery/LotteryUserActivityInfoEntity;
    .locals 0

    .line 1
    new-array p1, p1, [Lcom/transsion/bean/lottery/LotteryUserActivityInfoEntity;

    .line 2
    .line 3
    return-object p1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/transsion/bean/lottery/LotteryUserActivityInfoEntity$a;->a(Landroid/os/Parcel;)Lcom/transsion/bean/lottery/LotteryUserActivityInfoEntity;

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
    invoke-virtual {p0, p1}, Lcom/transsion/bean/lottery/LotteryUserActivityInfoEntity$a;->b(I)[Lcom/transsion/bean/lottery/LotteryUserActivityInfoEntity;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method
