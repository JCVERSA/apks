.class public final Lcom/transsion/shorttv_pugc/bean/BannerData$a;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/shorttv_pugc/bean/BannerData;
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
.method public final a(Landroid/os/Parcel;)Lcom/transsion/shorttv_pugc/bean/BannerData;
    .locals 16

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    const-string v1, "parcel"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    new-instance v1, Lcom/transsion/shorttv_pugc/bean/BannerData;

    .line 9
    .line 10
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v3

    .line 14
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v4

    .line 18
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    move-object v5, v2

    .line 23
    check-cast v5, Lcom/transsion/shorttv_pugc/bean/Image;

    .line 24
    .line 25
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    .line 26
    .line 27
    .line 28
    move-result v6

    .line 29
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    const/4 v7, 0x0

    .line 34
    const/4 v8, 0x1

    .line 35
    if-eqz v2, :cond_0

    .line 36
    .line 37
    move v9, v8

    .line 38
    goto :goto_0

    .line 39
    :cond_0
    move v9, v7

    .line 40
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v10

    .line 44
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    .line 45
    .line 46
    .line 47
    move-result v11

    .line 48
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    .line 49
    .line 50
    .line 51
    move-result v2

    .line 52
    const/4 v12, 0x0

    .line 53
    if-nez v2, :cond_1

    .line 54
    .line 55
    move-object v13, v12

    .line 56
    goto :goto_1

    .line 57
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    .line 58
    .line 59
    .line 60
    move-result v2

    .line 61
    if-eqz v2, :cond_2

    .line 62
    .line 63
    move v7, v8

    .line 64
    :cond_2
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 65
    .line 66
    .line 67
    move-result-object v2

    .line 68
    move-object v13, v2

    .line 69
    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    .line 70
    .line 71
    .line 72
    move-result v2

    .line 73
    if-nez v2, :cond_3

    .line 74
    .line 75
    goto :goto_2

    .line 76
    :cond_3
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    .line 77
    .line 78
    .line 79
    move-result v2

    .line 80
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 81
    .line 82
    .line 83
    move-result-object v2

    .line 84
    move-object v12, v2

    .line 85
    :goto_2
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v14

    .line 89
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    .line 90
    .line 91
    .line 92
    move-result-object v2

    .line 93
    move-object v15, v2

    .line 94
    check-cast v15, Lcom/transsion/shorttv_pugc/bean/Subject;

    .line 95
    .line 96
    const-class v2, Lcom/transsion/shorttv_pugc/bean/BannerData;

    .line 97
    .line 98
    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 99
    .line 100
    .line 101
    move-result-object v2

    .line 102
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    .line 103
    .line 104
    .line 105
    move-result-object v0

    .line 106
    check-cast v0, Lcom/transsion/ad/monopoly/model/AdPlans;

    .line 107
    .line 108
    move-object v2, v1

    .line 109
    move v7, v9

    .line 110
    move-object v8, v10

    .line 111
    move v9, v11

    .line 112
    move-object v10, v13

    .line 113
    move-object v11, v12

    .line 114
    move-object v12, v14

    .line 115
    move-object v13, v15

    .line 116
    move-object v14, v0

    .line 117
    invoke-direct/range {v2 .. v14}, Lcom/transsion/shorttv_pugc/bean/BannerData;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/transsion/shorttv_pugc/bean/Image;IZLjava/lang/String;ILjava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/String;Lcom/transsion/shorttv_pugc/bean/Subject;Lcom/transsion/ad/monopoly/model/AdPlans;)V

    .line 118
    .line 119
    .line 120
    return-object v1
.end method

.method public final b(I)[Lcom/transsion/shorttv_pugc/bean/BannerData;
    .locals 0

    .line 1
    new-array p1, p1, [Lcom/transsion/shorttv_pugc/bean/BannerData;

    .line 2
    .line 3
    return-object p1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/transsion/shorttv_pugc/bean/BannerData$a;->a(Landroid/os/Parcel;)Lcom/transsion/shorttv_pugc/bean/BannerData;

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
    invoke-virtual {p0, p1}, Lcom/transsion/shorttv_pugc/bean/BannerData$a;->b(I)[Lcom/transsion/shorttv_pugc/bean/BannerData;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method
