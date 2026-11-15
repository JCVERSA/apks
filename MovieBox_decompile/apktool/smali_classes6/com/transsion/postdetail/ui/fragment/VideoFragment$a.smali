.class public final Lcom/transsion/postdetail/ui/fragment/VideoFragment$a;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/postdetail/ui/fragment/VideoFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/postdetail/ui/fragment/VideoFragment$a;-><init>()V

    return-void
.end method

.method public static synthetic b(Lcom/transsion/postdetail/ui/fragment/VideoFragment$a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;ZZLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;ZLjava/util/ArrayList;ZZILjava/lang/Object;)Lcom/transsion/postdetail/ui/fragment/VideoFragment;
    .locals 16

    .line 1
    move/from16 v0, p14

    .line 2
    .line 3
    and-int/lit8 v1, v0, 0x10

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    const/4 v1, 0x1

    .line 8
    move v7, v1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    move/from16 v7, p5

    .line 11
    .line 12
    :goto_0
    and-int/lit8 v1, v0, 0x20

    .line 13
    .line 14
    const-string v2, ""

    .line 15
    .line 16
    if-eqz v1, :cond_1

    .line 17
    .line 18
    move-object v8, v2

    .line 19
    goto :goto_1

    .line 20
    :cond_1
    move-object/from16 v8, p6

    .line 21
    .line 22
    :goto_1
    and-int/lit8 v1, v0, 0x40

    .line 23
    .line 24
    const/4 v3, 0x0

    .line 25
    if-eqz v1, :cond_2

    .line 26
    .line 27
    move v9, v3

    .line 28
    goto :goto_2

    .line 29
    :cond_2
    move/from16 v9, p7

    .line 30
    .line 31
    :goto_2
    and-int/lit16 v1, v0, 0x80

    .line 32
    .line 33
    if-eqz v1, :cond_3

    .line 34
    .line 35
    move-object v10, v2

    .line 36
    goto :goto_3

    .line 37
    :cond_3
    move-object/from16 v10, p8

    .line 38
    .line 39
    :goto_3
    and-int/lit16 v1, v0, 0x100

    .line 40
    .line 41
    const/4 v2, 0x0

    .line 42
    if-eqz v1, :cond_4

    .line 43
    .line 44
    move-object v11, v2

    .line 45
    goto :goto_4

    .line 46
    :cond_4
    move-object/from16 v11, p9

    .line 47
    .line 48
    :goto_4
    and-int/lit16 v1, v0, 0x200

    .line 49
    .line 50
    if-eqz v1, :cond_5

    .line 51
    .line 52
    move v12, v3

    .line 53
    goto :goto_5

    .line 54
    :cond_5
    move/from16 v12, p10

    .line 55
    .line 56
    :goto_5
    and-int/lit16 v1, v0, 0x400

    .line 57
    .line 58
    if-eqz v1, :cond_6

    .line 59
    .line 60
    move-object v13, v2

    .line 61
    goto :goto_6

    .line 62
    :cond_6
    move-object/from16 v13, p11

    .line 63
    .line 64
    :goto_6
    and-int/lit16 v1, v0, 0x800

    .line 65
    .line 66
    if-eqz v1, :cond_7

    .line 67
    .line 68
    move v14, v3

    .line 69
    goto :goto_7

    .line 70
    :cond_7
    move/from16 v14, p12

    .line 71
    .line 72
    :goto_7
    and-int/lit16 v0, v0, 0x1000

    .line 73
    .line 74
    if-eqz v0, :cond_8

    .line 75
    .line 76
    move v15, v3

    .line 77
    goto :goto_8

    .line 78
    :cond_8
    move/from16 v15, p13

    .line 79
    .line 80
    :goto_8
    move-object/from16 v2, p0

    .line 81
    .line 82
    move-object/from16 v3, p1

    .line 83
    .line 84
    move-object/from16 v4, p2

    .line 85
    .line 86
    move-object/from16 v5, p3

    .line 87
    .line 88
    move/from16 v6, p4

    .line 89
    .line 90
    invoke-virtual/range {v2 .. v15}, Lcom/transsion/postdetail/ui/fragment/VideoFragment$a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;ZZLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;ZLjava/util/ArrayList;ZZ)Lcom/transsion/postdetail/ui/fragment/VideoFragment;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;ZZLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;ZLjava/util/ArrayList;ZZ)Lcom/transsion/postdetail/ui/fragment/VideoFragment;
    .locals 17

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    move-object/from16 v1, p9

    .line 4
    .line 5
    const/4 v2, 0x5

    .line 6
    const/4 v3, 0x0

    .line 7
    const/4 v4, 0x1

    .line 8
    new-instance v5, Lcom/transsion/postdetail/ui/fragment/VideoFragment;

    .line 9
    .line 10
    invoke-direct {v5}, Lcom/transsion/postdetail/ui/fragment/VideoFragment;-><init>()V

    .line 11
    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    .line 16
    .line 17
    .line 18
    move-result v6

    .line 19
    if-nez v6, :cond_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    new-instance v6, Lcom/transsion/postdetail/ui/fragment/preload/VideoDataLoader;

    .line 23
    .line 24
    invoke-direct {v6, v0}, Lcom/transsion/postdetail/ui/fragment/preload/VideoDataLoader;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    sget-object v7, Lam/e;->a:Lam/e;

    .line 28
    .line 29
    new-array v8, v4, [Lam/b;

    .line 30
    .line 31
    aput-object v6, v8, v3

    .line 32
    .line 33
    invoke-virtual {v7, v8}, Lam/e;->c([Lam/b;)I

    .line 34
    .line 35
    .line 36
    move-result v6

    .line 37
    goto :goto_1

    .line 38
    :cond_1
    :goto_0
    new-instance v6, Lcom/transsion/postdetail/ui/fragment/preload/VideoImmersiveDataLoaderV2;

    .line 39
    .line 40
    const-string v7, "1"

    .line 41
    .line 42
    const-string v8, "0"

    .line 43
    .line 44
    invoke-direct {v6, v1, v8, v7, v2}, Lcom/transsion/postdetail/ui/fragment/preload/VideoImmersiveDataLoaderV2;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 45
    .line 46
    .line 47
    sget-object v7, Lam/e;->a:Lam/e;

    .line 48
    .line 49
    new-array v8, v4, [Lam/b;

    .line 50
    .line 51
    aput-object v6, v8, v3

    .line 52
    .line 53
    invoke-virtual {v7, v8}, Lam/e;->c([Lam/b;)I

    .line 54
    .line 55
    .line 56
    move-result v6

    .line 57
    :goto_1
    const-string v7, "id"

    .line 58
    .line 59
    invoke-static {v7, v0}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    const-string v7, "item_type"

    .line 64
    .line 65
    move-object/from16 v8, p2

    .line 66
    .line 67
    invoke-static {v7, v8}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 68
    .line 69
    .line 70
    move-result-object v7

    .line 71
    const-string v8, "tab_id"

    .line 72
    .line 73
    move-object/from16 v9, p3

    .line 74
    .line 75
    invoke-static {v8, v9}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 76
    .line 77
    .line 78
    move-result-object v8

    .line 79
    invoke-static/range {p4 .. p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 80
    .line 81
    .line 82
    move-result-object v9

    .line 83
    const-string v10, "video_load_more"

    .line 84
    .line 85
    invoke-static {v10, v9}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 86
    .line 87
    .line 88
    move-result-object v9

    .line 89
    invoke-static/range {p5 .. p5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 90
    .line 91
    .line 92
    move-result-object v10

    .line 93
    const-string v11, "from_comment"

    .line 94
    .line 95
    invoke-static {v11, v10}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 96
    .line 97
    .line 98
    move-result-object v10

    .line 99
    const-string v11, "rec_ops"

    .line 100
    .line 101
    move-object/from16 v12, p6

    .line 102
    .line 103
    invoke-static {v11, v12}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 104
    .line 105
    .line 106
    move-result-object v11

    .line 107
    invoke-static/range {p7 .. p7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 108
    .line 109
    .line 110
    move-result-object v12

    .line 111
    const-string v13, "attach_to_main"

    .line 112
    .line 113
    invoke-static {v13, v12}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 114
    .line 115
    .line 116
    move-result-object v12

    .line 117
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 118
    .line 119
    .line 120
    move-result-object v6

    .line 121
    const-string v13, "yy_preload_id"

    .line 122
    .line 123
    invoke-static {v13, v6}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 124
    .line 125
    .line 126
    move-result-object v6

    .line 127
    const-string v13, "comment_id"

    .line 128
    .line 129
    move-object/from16 v14, p8

    .line 130
    .line 131
    invoke-static {v13, v14}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 132
    .line 133
    .line 134
    move-result-object v13

    .line 135
    const-string v14, "page_from"

    .line 136
    .line 137
    invoke-static {v14, v1}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 138
    .line 139
    .line 140
    move-result-object v1

    .line 141
    invoke-static/range {p10 .. p10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 142
    .line 143
    .line 144
    move-result-object v14

    .line 145
    const-string v15, "need_back_to_room"

    .line 146
    .line 147
    invoke-static {v15, v14}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 148
    .line 149
    .line 150
    move-result-object v14

    .line 151
    const-string v15, "downloaded_shorts_list"

    .line 152
    .line 153
    move-object/from16 v2, p11

    .line 154
    .line 155
    invoke-static {v15, v2}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 156
    .line 157
    .line 158
    move-result-object v2

    .line 159
    invoke-static/range {p12 .. p12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 160
    .line 161
    .line 162
    move-result-object v15

    .line 163
    const-string v4, "prioritize_downloaded"

    .line 164
    .line 165
    invoke-static {v4, v15}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 166
    .line 167
    .line 168
    move-result-object v4

    .line 169
    invoke-static/range {p13 .. p13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 170
    .line 171
    .line 172
    move-result-object v15

    .line 173
    const-string v3, "is_from_downloaded"

    .line 174
    .line 175
    invoke-static {v3, v15}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 176
    .line 177
    .line 178
    move-result-object v3

    .line 179
    const/16 v15, 0xe

    .line 180
    .line 181
    new-array v15, v15, [Lkotlin/Pair;

    .line 182
    .line 183
    const/16 v16, 0x0

    .line 184
    .line 185
    aput-object v0, v15, v16

    .line 186
    .line 187
    const/4 v0, 0x1

    .line 188
    aput-object v7, v15, v0

    .line 189
    .line 190
    const/4 v0, 0x2

    .line 191
    aput-object v8, v15, v0

    .line 192
    .line 193
    const/4 v0, 0x3

    .line 194
    aput-object v9, v15, v0

    .line 195
    .line 196
    const/4 v0, 0x4

    .line 197
    aput-object v10, v15, v0

    .line 198
    .line 199
    const/4 v0, 0x5

    .line 200
    aput-object v11, v15, v0

    .line 201
    .line 202
    const/4 v0, 0x6

    .line 203
    aput-object v12, v15, v0

    .line 204
    .line 205
    const/4 v0, 0x7

    .line 206
    aput-object v6, v15, v0

    .line 207
    .line 208
    const/16 v0, 0x8

    .line 209
    .line 210
    aput-object v13, v15, v0

    .line 211
    .line 212
    const/16 v0, 0x9

    .line 213
    .line 214
    aput-object v1, v15, v0

    .line 215
    .line 216
    const/16 v0, 0xa

    .line 217
    .line 218
    aput-object v14, v15, v0

    .line 219
    .line 220
    const/16 v0, 0xb

    .line 221
    .line 222
    aput-object v2, v15, v0

    .line 223
    .line 224
    const/16 v0, 0xc

    .line 225
    .line 226
    aput-object v4, v15, v0

    .line 227
    .line 228
    const/16 v0, 0xd

    .line 229
    .line 230
    aput-object v3, v15, v0

    .line 231
    .line 232
    invoke-static {v15}, Landroidx/core/os/d;->b([Lkotlin/Pair;)Landroid/os/Bundle;

    .line 233
    .line 234
    .line 235
    move-result-object v0

    .line 236
    invoke-virtual {v5, v0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 237
    .line 238
    .line 239
    return-object v5
.end method
