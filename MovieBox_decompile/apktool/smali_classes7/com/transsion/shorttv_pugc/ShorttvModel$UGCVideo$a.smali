.class public final Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo$a;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;
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
.method public final a(Landroid/os/Parcel;)Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;
    .locals 30

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
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v3

    .line 12
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v4

    .line 16
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v5

    .line 20
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    const/4 v6, 0x0

    .line 25
    if-nez v1, :cond_0

    .line 26
    .line 27
    move-object v7, v6

    .line 28
    goto :goto_1

    .line 29
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    new-instance v7, Ljava/util/ArrayList;

    .line 34
    .line 35
    invoke-direct {v7, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 36
    .line 37
    .line 38
    const/4 v8, 0x0

    .line 39
    :goto_0
    if-eq v8, v1, :cond_1

    .line 40
    .line 41
    sget-object v9, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideoHasTag;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 42
    .line 43
    invoke-interface {v9, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v9

    .line 47
    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    add-int/lit8 v8, v8, 0x1

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_1
    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    check-cast v1, Lcom/transsion/shorttv_pugc/bean/Cover;

    .line 58
    .line 59
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v8

    .line 63
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    .line 64
    .line 65
    .line 66
    move-result v9

    .line 67
    if-nez v9, :cond_2

    .line 68
    .line 69
    move-object v9, v6

    .line 70
    goto :goto_2

    .line 71
    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    .line 72
    .line 73
    .line 74
    move-result-wide v9

    .line 75
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 76
    .line 77
    .line 78
    move-result-object v9

    .line 79
    :goto_2
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v10

    .line 83
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v11

    .line 87
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    .line 88
    .line 89
    .line 90
    move-result v12

    .line 91
    if-nez v12, :cond_3

    .line 92
    .line 93
    move-object v12, v6

    .line 94
    goto :goto_3

    .line 95
    :cond_3
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    .line 96
    .line 97
    .line 98
    move-result-wide v12

    .line 99
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 100
    .line 101
    .line 102
    move-result-object v12

    .line 103
    :goto_3
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v13

    .line 107
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    .line 108
    .line 109
    .line 110
    move-result-object v14

    .line 111
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    .line 112
    .line 113
    .line 114
    move-result-object v15

    .line 115
    check-cast v15, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideoCreator;

    .line 116
    .line 117
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    .line 118
    .line 119
    .line 120
    move-result-object v16

    .line 121
    check-cast v16, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideoInteractiveInfo;

    .line 122
    .line 123
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    .line 124
    .line 125
    .line 126
    move-result v17

    .line 127
    if-nez v17, :cond_4

    .line 128
    .line 129
    move-object v2, v6

    .line 130
    goto :goto_4

    .line 131
    :cond_4
    sget-object v2, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideoCollection;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 132
    .line 133
    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 134
    .line 135
    .line 136
    move-result-object v2

    .line 137
    :goto_4
    move-object/from16 v18, v2

    .line 138
    .line 139
    check-cast v18, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideoCollection;

    .line 140
    .line 141
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object v19

    .line 145
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    .line 146
    .line 147
    .line 148
    move-result-object v20

    .line 149
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object v21

    .line 153
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    .line 154
    .line 155
    .line 156
    move-result-object v2

    .line 157
    move-object/from16 v22, v2

    .line 158
    .line 159
    check-cast v22, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideoResourceInfo;

    .line 160
    .line 161
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object v23

    .line 165
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    .line 166
    .line 167
    .line 168
    move-result v24

    .line 169
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    .line 170
    .line 171
    .line 172
    move-result v2

    .line 173
    const/16 v25, 0x1

    .line 174
    .line 175
    if-eqz v2, :cond_5

    .line 176
    .line 177
    move/from16 v26, v25

    .line 178
    .line 179
    goto :goto_5

    .line 180
    :cond_5
    const/16 v26, 0x0

    .line 181
    .line 182
    :goto_5
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    .line 183
    .line 184
    .line 185
    move-result v2

    .line 186
    if-nez v2, :cond_6

    .line 187
    .line 188
    move-object/from16 v28, v6

    .line 189
    .line 190
    move-object/from16 v27, v15

    .line 191
    .line 192
    goto :goto_7

    .line 193
    :cond_6
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    .line 194
    .line 195
    .line 196
    move-result v2

    .line 197
    new-instance v6, Ljava/util/ArrayList;

    .line 198
    .line 199
    invoke-direct {v6, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 200
    .line 201
    .line 202
    move-object/from16 v27, v15

    .line 203
    .line 204
    const/4 v15, 0x0

    .line 205
    :goto_6
    if-eq v15, v2, :cond_7

    .line 206
    .line 207
    move/from16 v28, v2

    .line 208
    .line 209
    sget-object v2, Lcom/transsion/shorttv_pugc/ShorttvModel$StreamInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 210
    .line 211
    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 212
    .line 213
    .line 214
    move-result-object v2

    .line 215
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 216
    .line 217
    .line 218
    add-int/lit8 v15, v15, 0x1

    .line 219
    .line 220
    move/from16 v2, v28

    .line 221
    .line 222
    goto :goto_6

    .line 223
    :cond_7
    move-object/from16 v28, v6

    .line 224
    .line 225
    :goto_7
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    .line 226
    .line 227
    .line 228
    move-result v0

    .line 229
    if-eqz v0, :cond_8

    .line 230
    .line 231
    move/from16 v0, v25

    .line 232
    .line 233
    goto :goto_8

    .line 234
    :cond_8
    const/4 v0, 0x0

    .line 235
    :goto_8
    new-instance v29, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;

    .line 236
    .line 237
    move-object/from16 v2, v29

    .line 238
    .line 239
    move-object v6, v7

    .line 240
    move-object v7, v1

    .line 241
    move-object/from16 v15, v27

    .line 242
    .line 243
    move-object/from16 v17, v18

    .line 244
    .line 245
    move-object/from16 v18, v19

    .line 246
    .line 247
    move-object/from16 v19, v20

    .line 248
    .line 249
    move-object/from16 v20, v21

    .line 250
    .line 251
    move-object/from16 v21, v22

    .line 252
    .line 253
    move-object/from16 v22, v23

    .line 254
    .line 255
    move/from16 v23, v24

    .line 256
    .line 257
    move/from16 v24, v26

    .line 258
    .line 259
    move-object/from16 v25, v28

    .line 260
    .line 261
    move/from16 v26, v0

    .line 262
    .line 263
    invoke-direct/range {v2 .. v26}, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/transsion/shorttv_pugc/bean/Cover;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/util/List;Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideoCreator;Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideoInteractiveInfo;Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideoCollection;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideoResourceInfo;Ljava/lang/String;IZLjava/util/List;Z)V

    .line 264
    .line 265
    .line 266
    return-object v29
.end method

.method public final b(I)[Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;
    .locals 0

    .line 1
    new-array p1, p1, [Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;

    .line 2
    .line 3
    return-object p1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo$a;->a(Landroid/os/Parcel;)Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;

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
    invoke-virtual {p0, p1}, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo$a;->b(I)[Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method
