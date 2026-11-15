.class public final Lcom/transsion/version/update/RemoteVersionInfo$a;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/version/update/RemoteVersionInfo;
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
.method public final a(Landroid/os/Parcel;)Lcom/transsion/version/update/RemoteVersionInfo;
    .locals 20

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
    new-instance v1, Lcom/transsion/version/update/RemoteVersionInfo;

    .line 9
    .line 10
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    const/4 v3, 0x0

    .line 15
    const/4 v4, 0x1

    .line 16
    if-eqz v2, :cond_0

    .line 17
    .line 18
    move v5, v4

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    move v5, v3

    .line 21
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    if-eqz v2, :cond_1

    .line 26
    .line 27
    goto :goto_1

    .line 28
    :cond_1
    move v4, v3

    .line 29
    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v6

    .line 33
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v7

    .line 37
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    .line 38
    .line 39
    .line 40
    move-result-wide v8

    .line 41
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v10

    .line 45
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    .line 46
    .line 47
    .line 48
    move-result-wide v11

    .line 49
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v13

    .line 53
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    .line 54
    .line 55
    .line 56
    move-result-wide v14

    .line 57
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v16

    .line 61
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v17

    .line 65
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v19

    .line 69
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    .line 70
    .line 71
    .line 72
    move-result v2

    .line 73
    if-nez v2, :cond_2

    .line 74
    .line 75
    const/4 v0, 0x0

    .line 76
    goto :goto_2

    .line 77
    :cond_2
    sget-object v2, Lcom/transsion/version/update/NoticeConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 78
    .line 79
    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    :goto_2
    move-object/from16 v18, v0

    .line 84
    .line 85
    check-cast v18, Lcom/transsion/version/update/NoticeConfig;

    .line 86
    .line 87
    move-object v2, v1

    .line 88
    move v3, v5

    .line 89
    move-object v5, v6

    .line 90
    move-object v6, v7

    .line 91
    move-wide v7, v8

    .line 92
    move-object v9, v10

    .line 93
    move-wide v10, v11

    .line 94
    move-object v12, v13

    .line 95
    move-wide v13, v14

    .line 96
    move-object/from16 v15, v16

    .line 97
    .line 98
    move-object/from16 v16, v17

    .line 99
    .line 100
    move-object/from16 v17, v19

    .line 101
    .line 102
    invoke-direct/range {v2 .. v18}, Lcom/transsion/version/update/RemoteVersionInfo;-><init>(ZZLjava/lang/String;Ljava/lang/String;JLjava/lang/String;JLjava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/version/update/NoticeConfig;)V

    .line 103
    .line 104
    .line 105
    return-object v1
.end method

.method public final b(I)[Lcom/transsion/version/update/RemoteVersionInfo;
    .locals 0

    .line 1
    new-array p1, p1, [Lcom/transsion/version/update/RemoteVersionInfo;

    .line 2
    .line 3
    return-object p1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/transsion/version/update/RemoteVersionInfo$a;->a(Landroid/os/Parcel;)Lcom/transsion/version/update/RemoteVersionInfo;

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
    invoke-virtual {p0, p1}, Lcom/transsion/version/update/RemoteVersionInfo$a;->b(I)[Lcom/transsion/version/update/RemoteVersionInfo;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method
