.class public final Lcom/transsion/moviedetailapi/bean/RoomItem$a;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/moviedetailapi/bean/RoomItem;
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
.method public final a(Landroid/os/Parcel;)Lcom/transsion/moviedetailapi/bean/RoomItem;
    .locals 24

    .line 1
    const-string v0, "parcel"

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v3

    .line 16
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v4

    .line 20
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v5

    .line 24
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    const/4 v8, 0x0

    .line 29
    if-nez v0, :cond_0

    .line 30
    .line 31
    move-object v0, v8

    .line 32
    goto :goto_1

    .line 33
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    if-eqz v0, :cond_1

    .line 38
    .line 39
    const/4 v0, 0x1

    .line 40
    goto :goto_0

    .line 41
    :cond_1
    const/4 v0, 0x0

    .line 42
    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v9

    .line 50
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v10

    .line 54
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    .line 55
    .line 56
    .line 57
    move-result v11

    .line 58
    if-nez v11, :cond_2

    .line 59
    .line 60
    move-object v11, v8

    .line 61
    goto :goto_2

    .line 62
    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    .line 63
    .line 64
    .line 65
    move-result-wide v11

    .line 66
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 67
    .line 68
    .line 69
    move-result-object v11

    .line 70
    :goto_2
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    .line 71
    .line 72
    .line 73
    move-result v12

    .line 74
    if-nez v12, :cond_3

    .line 75
    .line 76
    move-object v12, v8

    .line 77
    goto :goto_3

    .line 78
    :cond_3
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    .line 79
    .line 80
    .line 81
    move-result-wide v12

    .line 82
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 83
    .line 84
    .line 85
    move-result-object v12

    .line 86
    :goto_3
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    .line 87
    .line 88
    .line 89
    move-result v13

    .line 90
    if-nez v13, :cond_4

    .line 91
    .line 92
    move-object v13, v8

    .line 93
    goto :goto_4

    .line 94
    :cond_4
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    .line 95
    .line 96
    .line 97
    move-result-wide v13

    .line 98
    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 99
    .line 100
    .line 101
    move-result-object v13

    .line 102
    :goto_4
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    .line 103
    .line 104
    .line 105
    move-result-object v14

    .line 106
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v15

    .line 110
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v16

    .line 114
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    .line 115
    .line 116
    .line 117
    move-result-object v17

    .line 118
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    .line 119
    .line 120
    .line 121
    move-result v18

    .line 122
    if-nez v18, :cond_5

    .line 123
    .line 124
    move-object/from16 v20, v8

    .line 125
    .line 126
    goto :goto_6

    .line 127
    :cond_5
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    .line 128
    .line 129
    .line 130
    move-result v8

    .line 131
    new-instance v6, Ljava/util/ArrayList;

    .line 132
    .line 133
    invoke-direct {v6, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 134
    .line 135
    .line 136
    const/4 v7, 0x0

    .line 137
    :goto_5
    if-eq v7, v8, :cond_6

    .line 138
    .line 139
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    .line 140
    .line 141
    .line 142
    move-result-object v1

    .line 143
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 144
    .line 145
    .line 146
    add-int/lit8 v7, v7, 0x1

    .line 147
    .line 148
    move-object/from16 v1, p1

    .line 149
    .line 150
    goto :goto_5

    .line 151
    :cond_6
    move-object/from16 v20, v6

    .line 152
    .line 153
    :goto_6
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    .line 154
    .line 155
    .line 156
    move-result-object v1

    .line 157
    move-object/from16 v21, v1

    .line 158
    .line 159
    check-cast v21, Lcom/transsion/moviedetailapi/bean/Cover;

    .line 160
    .line 161
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    .line 162
    .line 163
    .line 164
    move-result v1

    .line 165
    if-eqz v1, :cond_7

    .line 166
    .line 167
    const/16 v22, 0x1

    .line 168
    .line 169
    goto :goto_7

    .line 170
    :cond_7
    const/16 v22, 0x0

    .line 171
    .line 172
    :goto_7
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    .line 173
    .line 174
    .line 175
    move-result v1

    .line 176
    if-eqz v1, :cond_8

    .line 177
    .line 178
    const/16 v19, 0x1

    .line 179
    .line 180
    goto :goto_8

    .line 181
    :cond_8
    const/16 v19, 0x0

    .line 182
    .line 183
    :goto_8
    new-instance v23, Lcom/transsion/moviedetailapi/bean/RoomItem;

    .line 184
    .line 185
    move-object/from16 v1, v23

    .line 186
    .line 187
    move-object v6, v0

    .line 188
    move-object v7, v9

    .line 189
    move-object v8, v10

    .line 190
    move-object v9, v11

    .line 191
    move-object v10, v12

    .line 192
    move-object v11, v13

    .line 193
    move-object v12, v14

    .line 194
    move-object v13, v15

    .line 195
    move-object/from16 v14, v16

    .line 196
    .line 197
    move-object/from16 v15, v17

    .line 198
    .line 199
    move-object/from16 v16, v20

    .line 200
    .line 201
    move-object/from16 v17, v21

    .line 202
    .line 203
    move/from16 v18, v22

    .line 204
    .line 205
    invoke-direct/range {v1 .. v19}, Lcom/transsion/moviedetailapi/bean/RoomItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Lcom/transsion/moviedetailapi/bean/Cover;ZZ)V

    .line 206
    .line 207
    .line 208
    return-object v23
.end method

.method public final b(I)[Lcom/transsion/moviedetailapi/bean/RoomItem;
    .locals 0

    .line 1
    new-array p1, p1, [Lcom/transsion/moviedetailapi/bean/RoomItem;

    .line 2
    .line 3
    return-object p1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/transsion/moviedetailapi/bean/RoomItem$a;->a(Landroid/os/Parcel;)Lcom/transsion/moviedetailapi/bean/RoomItem;

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
    invoke-virtual {p0, p1}, Lcom/transsion/moviedetailapi/bean/RoomItem$a;->b(I)[Lcom/transsion/moviedetailapi/bean/RoomItem;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method
