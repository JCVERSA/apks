.class public final Lcom/transsion/ugcvideodetail/hepler/h;
.super Ljava/lang/Object;
.source "source.java"


# static fields
.field public static final a:Lcom/transsion/ugcvideodetail/hepler/h;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/transsion/ugcvideodetail/hepler/h;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/transsion/ugcvideodetail/hepler/h;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/transsion/ugcvideodetail/hepler/h;->a:Lcom/transsion/ugcvideodetail/hepler/h;

    .line 7
    .line 8
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic b(Lcom/transsion/ugcvideodetail/hepler/h;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Integer;ILjava/lang/Object;)V
    .locals 13

    .line 1
    move/from16 v0, p10

    .line 2
    .line 3
    and-int/lit8 v1, v0, 0x8

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    move-object v7, v2

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    move-object/from16 v7, p4

    .line 11
    .line 12
    :goto_0
    and-int/lit8 v1, v0, 0x10

    .line 13
    .line 14
    if-eqz v1, :cond_1

    .line 15
    .line 16
    move-object v8, v2

    .line 17
    goto :goto_1

    .line 18
    :cond_1
    move-object/from16 v8, p5

    .line 19
    .line 20
    :goto_1
    and-int/lit8 v1, v0, 0x20

    .line 21
    .line 22
    if-eqz v1, :cond_2

    .line 23
    .line 24
    move-object v9, v2

    .line 25
    goto :goto_2

    .line 26
    :cond_2
    move-object/from16 v9, p6

    .line 27
    .line 28
    :goto_2
    and-int/lit8 v1, v0, 0x40

    .line 29
    .line 30
    if-eqz v1, :cond_3

    .line 31
    .line 32
    move-object v10, v2

    .line 33
    goto :goto_3

    .line 34
    :cond_3
    move-object/from16 v10, p7

    .line 35
    .line 36
    :goto_3
    and-int/lit16 v1, v0, 0x80

    .line 37
    .line 38
    if-eqz v1, :cond_4

    .line 39
    .line 40
    move-object v11, v2

    .line 41
    goto :goto_4

    .line 42
    :cond_4
    move-object/from16 v11, p8

    .line 43
    .line 44
    :goto_4
    and-int/lit16 v0, v0, 0x100

    .line 45
    .line 46
    if-eqz v0, :cond_5

    .line 47
    .line 48
    move-object v12, v2

    .line 49
    goto :goto_5

    .line 50
    :cond_5
    move-object/from16 v12, p9

    .line 51
    .line 52
    :goto_5
    move-object v3, p0

    .line 53
    move-object v4, p1

    .line 54
    move-object v5, p2

    .line 55
    move-object/from16 v6, p3

    .line 56
    .line 57
    invoke-virtual/range {v3 .. v12}, Lcom/transsion/ugcvideodetail/hepler/h;->a(Ljava/lang/String;Ljava/lang/String;Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Integer;)V

    .line 58
    .line 59
    .line 60
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Integer;)V
    .locals 14

    .line 1
    move-object v0, p1

    .line 2
    move-object/from16 v1, p2

    .line 3
    .line 4
    move-object/from16 v2, p4

    .line 5
    .line 6
    move-object/from16 v3, p5

    .line 7
    .line 8
    move-object/from16 v4, p6

    .line 9
    .line 10
    move-object/from16 v5, p7

    .line 11
    .line 12
    const-string v6, "moduleName"

    .line 13
    .line 14
    invoke-static {v1, v6}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    if-nez v0, :cond_0

    .line 18
    .line 19
    return-void

    .line 20
    :cond_0
    if-nez p3, :cond_1

    .line 21
    .line 22
    return-void

    .line 23
    :cond_1
    const-string v6, "module_name"

    .line 24
    .line 25
    invoke-static {v6, v1}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 26
    .line 27
    .line 28
    move-result-object v6

    .line 29
    invoke-virtual/range {p3 .. p3}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getUgcVideoId()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v7

    .line 33
    const-string v8, ""

    .line 34
    .line 35
    if-nez v7, :cond_2

    .line 36
    .line 37
    move-object v7, v8

    .line 38
    :cond_2
    const-string v9, "content_id"

    .line 39
    .line 40
    invoke-static {v9, v7}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 41
    .line 42
    .line 43
    move-result-object v7

    .line 44
    invoke-virtual/range {p3 .. p3}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getBelongToCollection()Lcom/transsion/ugcvideodetail/api/bean/UGCVideoBelongToCollection;

    .line 45
    .line 46
    .line 47
    move-result-object v9

    .line 48
    if-eqz v9, :cond_3

    .line 49
    .line 50
    invoke-virtual {v9}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideoBelongToCollection;->getCollectionId()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v9

    .line 54
    if-nez v9, :cond_4

    .line 55
    .line 56
    :cond_3
    move-object v9, v8

    .line 57
    :cond_4
    const-string v10, "belong_to_collection_id"

    .line 58
    .line 59
    invoke-static {v10, v9}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 60
    .line 61
    .line 62
    move-result-object v9

    .line 63
    const-string v10, "content_type"

    .line 64
    .line 65
    const-string v11, "ugc_video"

    .line 66
    .line 67
    invoke-static {v10, v11}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 68
    .line 69
    .line 70
    move-result-object v10

    .line 71
    invoke-virtual/range {p3 .. p3}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getOps()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v11

    .line 75
    if-nez v11, :cond_5

    .line 76
    .line 77
    move-object v11, v8

    .line 78
    :cond_5
    const-string v12, "ops"

    .line 79
    .line 80
    invoke-static {v12, v11}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 81
    .line 82
    .line 83
    move-result-object v11

    .line 84
    const/4 v12, 0x5

    .line 85
    new-array v12, v12, [Lkotlin/Pair;

    .line 86
    .line 87
    const/4 v13, 0x0

    .line 88
    aput-object v6, v12, v13

    .line 89
    .line 90
    const/4 v6, 0x1

    .line 91
    aput-object v7, v12, v6

    .line 92
    .line 93
    const/4 v6, 0x2

    .line 94
    aput-object v9, v12, v6

    .line 95
    .line 96
    const/4 v6, 0x3

    .line 97
    aput-object v10, v12, v6

    .line 98
    .line 99
    const/4 v6, 0x4

    .line 100
    aput-object v11, v12, v6

    .line 101
    .line 102
    invoke-static {v12}, Lkotlin/collections/MapsKt;->m([Lkotlin/Pair;)Ljava/util/Map;

    .line 103
    .line 104
    .line 105
    move-result-object v6

    .line 106
    const-string v7, "hash_tag"

    .line 107
    .line 108
    invoke-static {v1, v7}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 109
    .line 110
    .line 111
    move-result v7

    .line 112
    if-eqz v7, :cond_7

    .line 113
    .line 114
    if-eqz v2, :cond_7

    .line 115
    .line 116
    invoke-interface/range {p4 .. p4}, Ljava/lang/CharSequence;->length()I

    .line 117
    .line 118
    .line 119
    move-result v7

    .line 120
    if-nez v7, :cond_6

    .line 121
    .line 122
    goto :goto_0

    .line 123
    :cond_6
    const-string v7, "tag_name"

    .line 124
    .line 125
    invoke-interface {v6, v7, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    .line 127
    .line 128
    :cond_7
    :goto_0
    const-string v7, "search"

    .line 129
    .line 130
    invoke-static {v1, v7}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 131
    .line 132
    .line 133
    move-result v1

    .line 134
    if-eqz v1, :cond_b

    .line 135
    .line 136
    if-eqz v2, :cond_b

    .line 137
    .line 138
    invoke-interface/range {p4 .. p4}, Ljava/lang/CharSequence;->length()I

    .line 139
    .line 140
    .line 141
    move-result v1

    .line 142
    if-nez v1, :cond_8

    .line 143
    .line 144
    goto :goto_2

    .line 145
    :cond_8
    invoke-virtual/range {p3 .. p3}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getSearchWord()Ljava/util/List;

    .line 146
    .line 147
    .line 148
    move-result-object v1

    .line 149
    if-eqz v1, :cond_a

    .line 150
    .line 151
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->k0(Ljava/util/List;)Ljava/lang/Object;

    .line 152
    .line 153
    .line 154
    move-result-object v1

    .line 155
    check-cast v1, Ljava/lang/String;

    .line 156
    .line 157
    if-nez v1, :cond_9

    .line 158
    .line 159
    goto :goto_1

    .line 160
    :cond_9
    move-object v8, v1

    .line 161
    :cond_a
    :goto_1
    const-string v1, "keyword"

    .line 162
    .line 163
    invoke-interface {v6, v1, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    .line 165
    .line 166
    :cond_b
    :goto_2
    if-eqz v3, :cond_c

    .line 167
    .line 168
    const-string v1, "track_id"

    .line 169
    .line 170
    invoke-interface {v6, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    .line 172
    .line 173
    :cond_c
    if-eqz p8, :cond_d

    .line 174
    .line 175
    invoke-virtual/range {p8 .. p8}, Ljava/lang/Boolean;->booleanValue()Z

    .line 176
    .line 177
    .line 178
    move-result v1

    .line 179
    const-string v2, "is_collection"

    .line 180
    .line 181
    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    .line 182
    .line 183
    .line 184
    move-result-object v1

    .line 185
    invoke-interface {v6, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    .line 187
    .line 188
    :cond_d
    if-eqz v4, :cond_e

    .line 189
    .line 190
    const-string v1, "parent_track_id"

    .line 191
    .line 192
    invoke-interface {v6, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    .line 194
    .line 195
    :cond_e
    if-eqz v5, :cond_f

    .line 196
    .line 197
    const-string v1, "parent_content_id"

    .line 198
    .line 199
    invoke-interface {v6, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    .line 201
    .line 202
    :cond_f
    if-eqz p9, :cond_10

    .line 203
    .line 204
    invoke-virtual/range {p9 .. p9}, Ljava/lang/Number;->intValue()I

    .line 205
    .line 206
    .line 207
    move-result v1

    .line 208
    const-string v2, "position"

    .line 209
    .line 210
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 211
    .line 212
    .line 213
    move-result-object v1

    .line 214
    invoke-interface {v6, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 215
    .line 216
    .line 217
    :cond_10
    sget-object v1, Lqi/h;->a:Lqi/h;

    .line 218
    .line 219
    invoke-virtual {v1, p1, v6}, Lqi/h;->o(Ljava/lang/String;Ljava/util/Map;)V

    .line 220
    .line 221
    .line 222
    return-void
.end method

.method public final c(Ljava/lang/String;Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    .line 1
    const-string v0, "pageName"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "item"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v1, "module_name"

    .line 12
    .line 13
    invoke-static {v1, v0}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    const-string v1, "page_tab_name"

    .line 18
    .line 19
    const-string v2, "foryou"

    .line 20
    .line 21
    invoke-static {v1, v2}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-virtual {p2}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getUgcVideoId()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    const-string v3, ""

    .line 30
    .line 31
    if-nez v2, :cond_0

    .line 32
    .line 33
    move-object v2, v3

    .line 34
    :cond_0
    const-string v4, "content_id"

    .line 35
    .line 36
    invoke-static {v4, v2}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    invoke-virtual {p2}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getBelongToCollection()Lcom/transsion/ugcvideodetail/api/bean/UGCVideoBelongToCollection;

    .line 41
    .line 42
    .line 43
    move-result-object v4

    .line 44
    if-eqz v4, :cond_1

    .line 45
    .line 46
    invoke-virtual {v4}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideoBelongToCollection;->getCollectionId()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v4

    .line 50
    if-nez v4, :cond_2

    .line 51
    .line 52
    :cond_1
    move-object v4, v3

    .line 53
    :cond_2
    const-string v5, "belong_to_collection_id"

    .line 54
    .line 55
    invoke-static {v5, v4}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 56
    .line 57
    .line 58
    move-result-object v4

    .line 59
    const-string v5, "content_type"

    .line 60
    .line 61
    const-string v6, "ugc_video"

    .line 62
    .line 63
    invoke-static {v5, v6}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 64
    .line 65
    .line 66
    move-result-object v5

    .line 67
    invoke-virtual {p2}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getSubjectId()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v6

    .line 71
    if-nez v6, :cond_3

    .line 72
    .line 73
    move-object v6, v3

    .line 74
    :cond_3
    const-string v7, "refer_subject_id"

    .line 75
    .line 76
    invoke-static {v7, v6}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 77
    .line 78
    .line 79
    move-result-object v6

    .line 80
    invoke-virtual {p2}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getOps()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object p2

    .line 84
    if-nez p2, :cond_4

    .line 85
    .line 86
    move-object p2, v3

    .line 87
    :cond_4
    const-string v7, "ops"

    .line 88
    .line 89
    invoke-static {v7, p2}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 90
    .line 91
    .line 92
    move-result-object p2

    .line 93
    const-string v7, "position"

    .line 94
    .line 95
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object p3

    .line 99
    invoke-static {v7, p3}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 100
    .line 101
    .line 102
    move-result-object p3

    .line 103
    if-nez p4, :cond_5

    .line 104
    .line 105
    move-object p4, v3

    .line 106
    :cond_5
    const-string v3, "entrance_content_id"

    .line 107
    .line 108
    invoke-static {v3, p4}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 109
    .line 110
    .line 111
    move-result-object p4

    .line 112
    const/16 v3, 0x9

    .line 113
    .line 114
    new-array v3, v3, [Lkotlin/Pair;

    .line 115
    .line 116
    const/4 v7, 0x0

    .line 117
    aput-object v0, v3, v7

    .line 118
    .line 119
    const/4 v0, 0x1

    .line 120
    aput-object v1, v3, v0

    .line 121
    .line 122
    const/4 v0, 0x2

    .line 123
    aput-object v2, v3, v0

    .line 124
    .line 125
    const/4 v0, 0x3

    .line 126
    aput-object v4, v3, v0

    .line 127
    .line 128
    const/4 v0, 0x4

    .line 129
    aput-object v5, v3, v0

    .line 130
    .line 131
    const/4 v0, 0x5

    .line 132
    aput-object v6, v3, v0

    .line 133
    .line 134
    const/4 v0, 0x6

    .line 135
    aput-object p2, v3, v0

    .line 136
    .line 137
    const/4 p2, 0x7

    .line 138
    aput-object p3, v3, p2

    .line 139
    .line 140
    const/16 p2, 0x8

    .line 141
    .line 142
    aput-object p4, v3, p2

    .line 143
    .line 144
    invoke-static {v3}, Lkotlin/collections/MapsKt;->m([Lkotlin/Pair;)Ljava/util/Map;

    .line 145
    .line 146
    .line 147
    move-result-object p2

    .line 148
    if-eqz p5, :cond_6

    .line 149
    .line 150
    const-string p3, "track_id"

    .line 151
    .line 152
    invoke-interface {p2, p3, p5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    .line 154
    .line 155
    :cond_6
    if-eqz p6, :cond_7

    .line 156
    .line 157
    const-string p3, "parent_track_id"

    .line 158
    .line 159
    invoke-interface {p2, p3, p6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    .line 161
    .line 162
    :cond_7
    if-eqz p7, :cond_8

    .line 163
    .line 164
    const-string p3, "parent_content_id"

    .line 165
    .line 166
    invoke-interface {p2, p3, p7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    .line 168
    .line 169
    :cond_8
    sget-object p3, Lqi/h;->a:Lqi/h;

    .line 170
    .line 171
    invoke-virtual {p3, p1, p2}, Lqi/h;->o(Ljava/lang/String;Ljava/util/Map;)V

    .line 172
    .line 173
    .line 174
    return-void
.end method

.method public final d(Ljava/lang/String;Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 16

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    move-object/from16 v1, p7

    .line 4
    .line 5
    move-object/from16 v2, p8

    .line 6
    .line 7
    move-object/from16 v3, p9

    .line 8
    .line 9
    const-string v4, "pageName"

    .line 10
    .line 11
    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    const-string v4, "item"

    .line 15
    .line 16
    move-object/from16 v5, p2

    .line 17
    .line 18
    invoke-static {v5, v4}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    const-string v6, "module_name"

    .line 22
    .line 23
    invoke-static {v6, v4}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 24
    .line 25
    .line 26
    move-result-object v4

    .line 27
    const-string v6, "browse_duration"

    .line 28
    .line 29
    invoke-static/range {p4 .. p5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v7

    .line 33
    invoke-static {v6, v7}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 34
    .line 35
    .line 36
    move-result-object v6

    .line 37
    const-string v7, "page_tab_name"

    .line 38
    .line 39
    const-string v8, "foryou"

    .line 40
    .line 41
    invoke-static {v7, v8}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 42
    .line 43
    .line 44
    move-result-object v7

    .line 45
    invoke-virtual/range {p2 .. p2}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getUgcVideoId()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v8

    .line 49
    const-string v9, ""

    .line 50
    .line 51
    if-nez v8, :cond_0

    .line 52
    .line 53
    move-object v8, v9

    .line 54
    :cond_0
    const-string v10, "content_id"

    .line 55
    .line 56
    invoke-static {v10, v8}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 57
    .line 58
    .line 59
    move-result-object v8

    .line 60
    invoke-virtual/range {p2 .. p2}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getBelongToCollection()Lcom/transsion/ugcvideodetail/api/bean/UGCVideoBelongToCollection;

    .line 61
    .line 62
    .line 63
    move-result-object v10

    .line 64
    if-eqz v10, :cond_1

    .line 65
    .line 66
    invoke-virtual {v10}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideoBelongToCollection;->getCollectionId()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v10

    .line 70
    if-nez v10, :cond_2

    .line 71
    .line 72
    :cond_1
    move-object v10, v9

    .line 73
    :cond_2
    const-string v11, "belong_to_collection_id"

    .line 74
    .line 75
    invoke-static {v11, v10}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 76
    .line 77
    .line 78
    move-result-object v10

    .line 79
    invoke-virtual/range {p2 .. p2}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getSubjectId()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v11

    .line 83
    if-nez v11, :cond_3

    .line 84
    .line 85
    move-object v11, v9

    .line 86
    :cond_3
    const-string v12, "refer_subject_id"

    .line 87
    .line 88
    invoke-static {v12, v11}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 89
    .line 90
    .line 91
    move-result-object v11

    .line 92
    const-string v12, "content_type"

    .line 93
    .line 94
    const-string v13, "ugc_video"

    .line 95
    .line 96
    invoke-static {v12, v13}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 97
    .line 98
    .line 99
    move-result-object v12

    .line 100
    invoke-virtual/range {p2 .. p2}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getOps()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v5

    .line 104
    if-nez v5, :cond_4

    .line 105
    .line 106
    move-object v5, v9

    .line 107
    :cond_4
    const-string v13, "ops"

    .line 108
    .line 109
    invoke-static {v13, v5}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 110
    .line 111
    .line 112
    move-result-object v5

    .line 113
    const-string v13, "position"

    .line 114
    .line 115
    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v14

    .line 119
    invoke-static {v13, v14}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 120
    .line 121
    .line 122
    move-result-object v13

    .line 123
    if-nez p6, :cond_5

    .line 124
    .line 125
    goto :goto_0

    .line 126
    :cond_5
    move-object/from16 v9, p6

    .line 127
    .line 128
    :goto_0
    const-string v14, "entrance_content_id"

    .line 129
    .line 130
    invoke-static {v14, v9}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 131
    .line 132
    .line 133
    move-result-object v9

    .line 134
    const/16 v14, 0xa

    .line 135
    .line 136
    new-array v14, v14, [Lkotlin/Pair;

    .line 137
    .line 138
    const/4 v15, 0x0

    .line 139
    aput-object v4, v14, v15

    .line 140
    .line 141
    const/4 v4, 0x1

    .line 142
    aput-object v6, v14, v4

    .line 143
    .line 144
    const/4 v4, 0x2

    .line 145
    aput-object v7, v14, v4

    .line 146
    .line 147
    const/4 v4, 0x3

    .line 148
    aput-object v8, v14, v4

    .line 149
    .line 150
    const/4 v4, 0x4

    .line 151
    aput-object v10, v14, v4

    .line 152
    .line 153
    const/4 v4, 0x5

    .line 154
    aput-object v11, v14, v4

    .line 155
    .line 156
    const/4 v4, 0x6

    .line 157
    aput-object v12, v14, v4

    .line 158
    .line 159
    const/4 v4, 0x7

    .line 160
    aput-object v5, v14, v4

    .line 161
    .line 162
    const/16 v4, 0x8

    .line 163
    .line 164
    aput-object v13, v14, v4

    .line 165
    .line 166
    const/16 v4, 0x9

    .line 167
    .line 168
    aput-object v9, v14, v4

    .line 169
    .line 170
    invoke-static {v14}, Lkotlin/collections/MapsKt;->m([Lkotlin/Pair;)Ljava/util/Map;

    .line 171
    .line 172
    .line 173
    move-result-object v4

    .line 174
    if-eqz v1, :cond_6

    .line 175
    .line 176
    const-string v5, "track_id"

    .line 177
    .line 178
    invoke-interface {v4, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    .line 180
    .line 181
    :cond_6
    if-eqz v2, :cond_7

    .line 182
    .line 183
    const-string v1, "parent_track_id"

    .line 184
    .line 185
    invoke-interface {v4, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    .line 187
    .line 188
    :cond_7
    if-eqz v3, :cond_8

    .line 189
    .line 190
    const-string v1, "parent_content_id"

    .line 191
    .line 192
    invoke-interface {v4, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    .line 194
    .line 195
    :cond_8
    sget-object v1, Lqi/h;->a:Lqi/h;

    .line 196
    .line 197
    invoke-virtual {v1, v0, v4}, Lqi/h;->z(Ljava/lang/String;Ljava/util/Map;)V

    .line 198
    .line 199
    .line 200
    return-void
.end method

.method public final e(Ljava/lang/String;Ljava/lang/String;Lcom/transsion/baselib/db/download/DownloadBean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .line 1
    const-string v0, "moduleName"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    if-nez p1, :cond_0

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    if-nez p3, :cond_1

    .line 10
    .line 11
    return-void

    .line 12
    :cond_1
    const-string v0, "module_name"

    .line 13
    .line 14
    invoke-static {v0, p2}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 15
    .line 16
    .line 17
    move-result-object p2

    .line 18
    invoke-virtual {p3}, Lcom/transsion/baselib/db/download/DownloadBean;->getUgcVideoId()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    const-string v1, ""

    .line 23
    .line 24
    if-nez v0, :cond_2

    .line 25
    .line 26
    move-object v0, v1

    .line 27
    :cond_2
    const-string v2, "content_id"

    .line 28
    .line 29
    invoke-static {v2, v0}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-virtual {p3}, Lcom/transsion/baselib/db/download/DownloadBean;->getUgcVideoCollectionId()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    if-nez v2, :cond_3

    .line 38
    .line 39
    move-object v2, v1

    .line 40
    :cond_3
    const-string v3, "belong_to_collection_id"

    .line 41
    .line 42
    invoke-static {v3, v2}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    const-string v3, "content_type"

    .line 47
    .line 48
    const-string v4, "ugc_video"

    .line 49
    .line 50
    invoke-static {v3, v4}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 51
    .line 52
    .line 53
    move-result-object v3

    .line 54
    invoke-virtual {p3}, Lcom/transsion/baselib/db/download/DownloadBean;->getOps()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object p3

    .line 58
    if-nez p3, :cond_4

    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_4
    move-object v1, p3

    .line 62
    :goto_0
    const-string p3, "ops"

    .line 63
    .line 64
    invoke-static {p3, v1}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 65
    .line 66
    .line 67
    move-result-object p3

    .line 68
    const/4 v1, 0x5

    .line 69
    new-array v1, v1, [Lkotlin/Pair;

    .line 70
    .line 71
    const/4 v4, 0x0

    .line 72
    aput-object p2, v1, v4

    .line 73
    .line 74
    const/4 p2, 0x1

    .line 75
    aput-object v0, v1, p2

    .line 76
    .line 77
    const/4 p2, 0x2

    .line 78
    aput-object v2, v1, p2

    .line 79
    .line 80
    const/4 p2, 0x3

    .line 81
    aput-object v3, v1, p2

    .line 82
    .line 83
    const/4 p2, 0x4

    .line 84
    aput-object p3, v1, p2

    .line 85
    .line 86
    invoke-static {v1}, Lkotlin/collections/MapsKt;->m([Lkotlin/Pair;)Ljava/util/Map;

    .line 87
    .line 88
    .line 89
    move-result-object p2

    .line 90
    if-eqz p4, :cond_5

    .line 91
    .line 92
    const-string p3, "track_id"

    .line 93
    .line 94
    invoke-interface {p2, p3, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    :cond_5
    if-eqz p5, :cond_6

    .line 98
    .line 99
    const-string p3, "parent_track_id"

    .line 100
    .line 101
    invoke-interface {p2, p3, p5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    :cond_6
    if-eqz p6, :cond_7

    .line 105
    .line 106
    const-string p3, "parent_content_id"

    .line 107
    .line 108
    invoke-interface {p2, p3, p6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    .line 110
    .line 111
    :cond_7
    sget-object p3, Lqi/h;->a:Lqi/h;

    .line 112
    .line 113
    invoke-virtual {p3, p1, p2}, Lqi/h;->o(Ljava/lang/String;Ljava/util/Map;)V

    .line 114
    .line 115
    .line 116
    return-void
.end method

.method public final f(Ljava/lang/String;Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    .line 1
    const-string v0, "pageName"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "item"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v1, "/ugc_video/immersive_detail"

    .line 12
    .line 13
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    const-string v2, "play_list"

    .line 18
    .line 19
    if-eqz v1, :cond_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    move-object v0, v2

    .line 23
    :goto_0
    const-string v1, "module_name"

    .line 24
    .line 25
    invoke-static {v1, v0}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-static {v1, v2}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    invoke-virtual {p2}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getUgcVideoId()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    const-string v3, ""

    .line 38
    .line 39
    if-nez v2, :cond_1

    .line 40
    .line 41
    move-object v2, v3

    .line 42
    :cond_1
    const-string v4, "content_id"

    .line 43
    .line 44
    invoke-static {v4, v2}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    invoke-virtual {p2}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getBelongToCollection()Lcom/transsion/ugcvideodetail/api/bean/UGCVideoBelongToCollection;

    .line 49
    .line 50
    .line 51
    move-result-object v4

    .line 52
    if-eqz v4, :cond_2

    .line 53
    .line 54
    invoke-virtual {v4}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideoBelongToCollection;->getCollectionId()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v4

    .line 58
    if-nez v4, :cond_3

    .line 59
    .line 60
    :cond_2
    move-object v4, v3

    .line 61
    :cond_3
    const-string v5, "belong_to_collection_id"

    .line 62
    .line 63
    invoke-static {v5, v4}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 64
    .line 65
    .line 66
    move-result-object v4

    .line 67
    const-string v5, "content_type"

    .line 68
    .line 69
    const-string v6, "ugc_video"

    .line 70
    .line 71
    invoke-static {v5, v6}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 72
    .line 73
    .line 74
    move-result-object v5

    .line 75
    invoke-virtual {p2}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getOps()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v6

    .line 79
    if-nez v6, :cond_4

    .line 80
    .line 81
    move-object v6, v3

    .line 82
    :cond_4
    const-string v7, "ops"

    .line 83
    .line 84
    invoke-static {v7, v6}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 85
    .line 86
    .line 87
    move-result-object v6

    .line 88
    const-string v7, "position"

    .line 89
    .line 90
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object p3

    .line 94
    invoke-static {v7, p3}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 95
    .line 96
    .line 97
    move-result-object p3

    .line 98
    invoke-virtual {p2}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getSubjectId()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object p2

    .line 102
    if-nez p2, :cond_5

    .line 103
    .line 104
    goto :goto_1

    .line 105
    :cond_5
    move-object v3, p2

    .line 106
    :goto_1
    const-string p2, "refer_subject_id"

    .line 107
    .line 108
    invoke-static {p2, v3}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 109
    .line 110
    .line 111
    move-result-object p2

    .line 112
    const/16 v3, 0x8

    .line 113
    .line 114
    new-array v3, v3, [Lkotlin/Pair;

    .line 115
    .line 116
    const/4 v7, 0x0

    .line 117
    aput-object v0, v3, v7

    .line 118
    .line 119
    const/4 v0, 0x1

    .line 120
    aput-object v1, v3, v0

    .line 121
    .line 122
    const/4 v0, 0x2

    .line 123
    aput-object v2, v3, v0

    .line 124
    .line 125
    const/4 v0, 0x3

    .line 126
    aput-object v4, v3, v0

    .line 127
    .line 128
    const/4 v0, 0x4

    .line 129
    aput-object v5, v3, v0

    .line 130
    .line 131
    const/4 v0, 0x5

    .line 132
    aput-object v6, v3, v0

    .line 133
    .line 134
    const/4 v0, 0x6

    .line 135
    aput-object p3, v3, v0

    .line 136
    .line 137
    const/4 p3, 0x7

    .line 138
    aput-object p2, v3, p3

    .line 139
    .line 140
    invoke-static {v3}, Lkotlin/collections/MapsKt;->m([Lkotlin/Pair;)Ljava/util/Map;

    .line 141
    .line 142
    .line 143
    move-result-object p2

    .line 144
    if-eqz p4, :cond_6

    .line 145
    .line 146
    const-string p3, "track_id"

    .line 147
    .line 148
    invoke-interface {p2, p3, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    .line 150
    .line 151
    :cond_6
    if-eqz p5, :cond_7

    .line 152
    .line 153
    const-string p3, "parent_track_id"

    .line 154
    .line 155
    invoke-interface {p2, p3, p5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    .line 157
    .line 158
    :cond_7
    if-eqz p6, :cond_8

    .line 159
    .line 160
    const-string p3, "parent_content_id"

    .line 161
    .line 162
    invoke-interface {p2, p3, p6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    .line 164
    .line 165
    :cond_8
    sget-object p3, Lqi/h;->a:Lqi/h;

    .line 166
    .line 167
    invoke-virtual {p3, p1, p2}, Lqi/h;->o(Ljava/lang/String;Ljava/util/Map;)V

    .line 168
    .line 169
    .line 170
    return-void
.end method

.method public final g(Ljava/lang/String;Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 6

    .line 1
    const-string v0, "pageName"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "item"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v1, "/ugc_video/immersive_detail"

    .line 12
    .line 13
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const-string v0, "play_list"

    .line 21
    .line 22
    :goto_0
    const-string v1, "module_name"

    .line 23
    .line 24
    invoke-static {v1, v0}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    const-string v1, "browse_duration"

    .line 29
    .line 30
    invoke-static {p4, p5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p4

    .line 34
    invoke-static {v1, p4}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 35
    .line 36
    .line 37
    move-result-object p4

    .line 38
    invoke-virtual {p2}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getUgcVideoId()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p5

    .line 42
    const-string v1, ""

    .line 43
    .line 44
    if-nez p5, :cond_1

    .line 45
    .line 46
    move-object p5, v1

    .line 47
    :cond_1
    const-string v2, "content_id"

    .line 48
    .line 49
    invoke-static {v2, p5}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 50
    .line 51
    .line 52
    move-result-object p5

    .line 53
    invoke-virtual {p2}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getBelongToCollection()Lcom/transsion/ugcvideodetail/api/bean/UGCVideoBelongToCollection;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    if-eqz v2, :cond_2

    .line 58
    .line 59
    invoke-virtual {v2}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideoBelongToCollection;->getCollectionId()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v2

    .line 63
    if-nez v2, :cond_3

    .line 64
    .line 65
    :cond_2
    move-object v2, v1

    .line 66
    :cond_3
    const-string v3, "belong_to_collection_id"

    .line 67
    .line 68
    invoke-static {v3, v2}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 69
    .line 70
    .line 71
    move-result-object v2

    .line 72
    const-string v3, "content_type"

    .line 73
    .line 74
    const-string v4, "ugc_video"

    .line 75
    .line 76
    invoke-static {v3, v4}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 77
    .line 78
    .line 79
    move-result-object v3

    .line 80
    invoke-virtual {p2}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getOps()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v4

    .line 84
    if-nez v4, :cond_4

    .line 85
    .line 86
    move-object v4, v1

    .line 87
    :cond_4
    const-string v5, "ops"

    .line 88
    .line 89
    invoke-static {v5, v4}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 90
    .line 91
    .line 92
    move-result-object v4

    .line 93
    const-string v5, "position"

    .line 94
    .line 95
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object p3

    .line 99
    invoke-static {v5, p3}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 100
    .line 101
    .line 102
    move-result-object p3

    .line 103
    invoke-virtual {p2}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getSubjectId()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object p2

    .line 107
    if-nez p2, :cond_5

    .line 108
    .line 109
    goto :goto_1

    .line 110
    :cond_5
    move-object v1, p2

    .line 111
    :goto_1
    const-string p2, "refer_subject_id"

    .line 112
    .line 113
    invoke-static {p2, v1}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 114
    .line 115
    .line 116
    move-result-object p2

    .line 117
    const/16 v1, 0x8

    .line 118
    .line 119
    new-array v1, v1, [Lkotlin/Pair;

    .line 120
    .line 121
    const/4 v5, 0x0

    .line 122
    aput-object v0, v1, v5

    .line 123
    .line 124
    const/4 v0, 0x1

    .line 125
    aput-object p4, v1, v0

    .line 126
    .line 127
    const/4 p4, 0x2

    .line 128
    aput-object p5, v1, p4

    .line 129
    .line 130
    const/4 p4, 0x3

    .line 131
    aput-object v2, v1, p4

    .line 132
    .line 133
    const/4 p4, 0x4

    .line 134
    aput-object v3, v1, p4

    .line 135
    .line 136
    const/4 p4, 0x5

    .line 137
    aput-object v4, v1, p4

    .line 138
    .line 139
    const/4 p4, 0x6

    .line 140
    aput-object p3, v1, p4

    .line 141
    .line 142
    const/4 p3, 0x7

    .line 143
    aput-object p2, v1, p3

    .line 144
    .line 145
    invoke-static {v1}, Lkotlin/collections/MapsKt;->m([Lkotlin/Pair;)Ljava/util/Map;

    .line 146
    .line 147
    .line 148
    move-result-object p2

    .line 149
    if-eqz p9, :cond_6

    .line 150
    .line 151
    invoke-virtual {p9}, Ljava/lang/Boolean;->booleanValue()Z

    .line 152
    .line 153
    .line 154
    move-result p3

    .line 155
    const-string p4, "is_collection"

    .line 156
    .line 157
    invoke-static {p3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object p3

    .line 161
    invoke-interface {p2, p4, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    .line 163
    .line 164
    :cond_6
    if-eqz p6, :cond_7

    .line 165
    .line 166
    const-string p3, "track_id"

    .line 167
    .line 168
    invoke-interface {p2, p3, p6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    .line 170
    .line 171
    :cond_7
    if-eqz p7, :cond_8

    .line 172
    .line 173
    const-string p3, "parent_track_id"

    .line 174
    .line 175
    invoke-interface {p2, p3, p7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    .line 177
    .line 178
    :cond_8
    if-eqz p8, :cond_9

    .line 179
    .line 180
    const-string p3, "parent_content_id"

    .line 181
    .line 182
    invoke-interface {p2, p3, p8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    .line 184
    .line 185
    :cond_9
    sget-object p3, Lqi/h;->a:Lqi/h;

    .line 186
    .line 187
    invoke-virtual {p3, p1, p2}, Lqi/h;->z(Ljava/lang/String;Ljava/util/Map;)V

    .line 188
    .line 189
    .line 190
    return-void
.end method
