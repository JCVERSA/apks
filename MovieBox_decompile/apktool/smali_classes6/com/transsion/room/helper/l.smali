.class public final Lcom/transsion/room/helper/l;
.super Ljava/lang/Object;
.source "source.java"


# static fields
.field public static final a:Lcom/transsion/room/helper/l;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/transsion/room/helper/l;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/transsion/room/helper/l;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/transsion/room/helper/l;->a:Lcom/transsion/room/helper/l;

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


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 4

    .line 1
    const-string v0, "pageName"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "source"

    .line 7
    .line 8
    const-string v1, "my_room"

    .line 9
    .line 10
    invoke-static {v0, v1}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    const-string v1, "module_name"

    .line 15
    .line 16
    const-string v2, "all"

    .line 17
    .line 18
    invoke-static {v1, v2}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    const/4 v2, 0x2

    .line 23
    new-array v2, v2, [Lkotlin/Pair;

    .line 24
    .line 25
    const/4 v3, 0x0

    .line 26
    aput-object v0, v2, v3

    .line 27
    .line 28
    const/4 v0, 0x1

    .line 29
    aput-object v1, v2, v0

    .line 30
    .line 31
    invoke-static {v2}, Lkotlin/collections/MapsKt;->m([Lkotlin/Pair;)Ljava/util/Map;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    sget-object v1, Lqi/h;->a:Lqi/h;

    .line 36
    .line 37
    invoke-virtual {v1, p1, v0}, Lqi/h;->o(Ljava/lang/String;Ljava/util/Map;)V

    .line 38
    .line 39
    .line 40
    return-void
.end method

.method public final b(Ljava/lang/String;Lcom/transsion/moviedetailapi/bean/RoomItem;)V
    .locals 5

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
    const-string v1, "source"

    .line 12
    .line 13
    const-string v2, "my_room"

    .line 14
    .line 15
    invoke-static {v1, v2}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    const-string v2, "module_name"

    .line 20
    .line 21
    invoke-static {v2, v0}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {p2}, Lcom/transsion/moviedetailapi/bean/RoomItem;->getGroupId()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    if-nez v2, :cond_0

    .line 30
    .line 31
    const-string v2, ""

    .line 32
    .line 33
    :cond_0
    const-string v3, "group_id"

    .line 34
    .line 35
    invoke-static {v3, v2}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    const-string v3, "ops"

    .line 40
    .line 41
    invoke-virtual {p2}, Lcom/transsion/moviedetailapi/bean/RoomItem;->getOps()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p2

    .line 45
    invoke-static {v3, p2}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 46
    .line 47
    .line 48
    move-result-object p2

    .line 49
    const/4 v3, 0x4

    .line 50
    new-array v3, v3, [Lkotlin/Pair;

    .line 51
    .line 52
    const/4 v4, 0x0

    .line 53
    aput-object v1, v3, v4

    .line 54
    .line 55
    const/4 v1, 0x1

    .line 56
    aput-object v0, v3, v1

    .line 57
    .line 58
    const/4 v0, 0x2

    .line 59
    aput-object v2, v3, v0

    .line 60
    .line 61
    const/4 v0, 0x3

    .line 62
    aput-object p2, v3, v0

    .line 63
    .line 64
    invoke-static {v3}, Lkotlin/collections/MapsKt;->m([Lkotlin/Pair;)Ljava/util/Map;

    .line 65
    .line 66
    .line 67
    move-result-object p2

    .line 68
    sget-object v0, Lqi/h;->a:Lqi/h;

    .line 69
    .line 70
    invoke-virtual {v0, p1, p2}, Lqi/h;->o(Ljava/lang/String;Ljava/util/Map;)V

    .line 71
    .line 72
    .line 73
    return-void
.end method

.method public final c(Ljava/lang/String;Ljava/lang/String;Lcom/transsion/moviedetailapi/bean/PostSubjectItem;)V
    .locals 10

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
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "source"

    .line 12
    .line 13
    invoke-static {v0, p2}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 14
    .line 15
    .line 16
    move-result-object p2

    .line 17
    const-string v0, "module_name"

    .line 18
    .line 19
    const-string v1, "group"

    .line 20
    .line 21
    invoke-static {v0, v1}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {p3}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getUser()Lcom/transsion/moviedetailapi/bean/User;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    const-string v2, ""

    .line 30
    .line 31
    if-eqz v1, :cond_0

    .line 32
    .line 33
    invoke-virtual {v1}, Lcom/transsion/moviedetailapi/bean/User;->getUserId()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    if-nez v1, :cond_1

    .line 38
    .line 39
    :cond_0
    move-object v1, v2

    .line 40
    :cond_1
    const-string v3, "user_id"

    .line 41
    .line 42
    invoke-static {v3, v1}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    invoke-virtual {p3}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getPostId()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v3

    .line 50
    if-nez v3, :cond_2

    .line 51
    .line 52
    move-object v3, v2

    .line 53
    :cond_2
    const-string v4, "post_id"

    .line 54
    .line 55
    invoke-static {v4, v3}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 56
    .line 57
    .line 58
    move-result-object v3

    .line 59
    invoke-virtual {p3}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getMedia()Lcom/transsion/moviedetailapi/bean/Media;

    .line 60
    .line 61
    .line 62
    move-result-object v4

    .line 63
    if-eqz v4, :cond_3

    .line 64
    .line 65
    invoke-virtual {v4}, Lcom/transsion/moviedetailapi/bean/Media;->getMediaType()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v4

    .line 69
    if-nez v4, :cond_4

    .line 70
    .line 71
    :cond_3
    move-object v4, v2

    .line 72
    :cond_4
    const-string v5, "post_media_type"

    .line 73
    .line 74
    invoke-static {v5, v4}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 75
    .line 76
    .line 77
    move-result-object v4

    .line 78
    invoke-virtual {p3}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getSubject()Lcom/transsion/moviedetailapi/bean/Subject;

    .line 79
    .line 80
    .line 81
    move-result-object v5

    .line 82
    if-eqz v5, :cond_5

    .line 83
    .line 84
    invoke-virtual {v5}, Lcom/transsion/moviedetailapi/bean/Subject;->getSubjectId()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v5

    .line 88
    if-nez v5, :cond_6

    .line 89
    .line 90
    :cond_5
    move-object v5, v2

    .line 91
    :cond_6
    const-string v6, "subject_id"

    .line 92
    .line 93
    invoke-static {v6, v5}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 94
    .line 95
    .line 96
    move-result-object v5

    .line 97
    invoke-virtual {p3}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getSubject()Lcom/transsion/moviedetailapi/bean/Subject;

    .line 98
    .line 99
    .line 100
    move-result-object v6

    .line 101
    if-eqz v6, :cond_7

    .line 102
    .line 103
    invoke-virtual {v6}, Lcom/transsion/moviedetailapi/bean/Subject;->getSubjectType()Ljava/lang/Integer;

    .line 104
    .line 105
    .line 106
    move-result-object v6

    .line 107
    if-eqz v6, :cond_7

    .line 108
    .line 109
    invoke-virtual {v6}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v6

    .line 113
    if-nez v6, :cond_8

    .line 114
    .line 115
    :cond_7
    move-object v6, v2

    .line 116
    :cond_8
    const-string v7, "subject_type"

    .line 117
    .line 118
    invoke-static {v7, v6}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 119
    .line 120
    .line 121
    move-result-object v6

    .line 122
    invoke-virtual {p3}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->isRoomCache()Z

    .line 123
    .line 124
    .line 125
    move-result v7

    .line 126
    invoke-static {v7}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v7

    .line 130
    const-string v8, "is_cache_post"

    .line 131
    .line 132
    invoke-static {v8, v7}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 133
    .line 134
    .line 135
    move-result-object v7

    .line 136
    invoke-virtual {p3}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getGroup()Lcom/transsion/moviedetailapi/bean/Group;

    .line 137
    .line 138
    .line 139
    move-result-object v8

    .line 140
    if-eqz v8, :cond_a

    .line 141
    .line 142
    invoke-virtual {v8}, Lcom/transsion/moviedetailapi/bean/Group;->getGroupId()Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object v8

    .line 146
    if-nez v8, :cond_9

    .line 147
    .line 148
    goto :goto_0

    .line 149
    :cond_9
    move-object v2, v8

    .line 150
    :cond_a
    :goto_0
    const-string v8, "group_id"

    .line 151
    .line 152
    invoke-static {v8, v2}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 153
    .line 154
    .line 155
    move-result-object v2

    .line 156
    const-string v8, "ops"

    .line 157
    .line 158
    invoke-virtual {p3}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getOps()Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object p3

    .line 162
    invoke-static {v8, p3}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 163
    .line 164
    .line 165
    move-result-object p3

    .line 166
    const/16 v8, 0xa

    .line 167
    .line 168
    new-array v8, v8, [Lkotlin/Pair;

    .line 169
    .line 170
    const/4 v9, 0x0

    .line 171
    aput-object p2, v8, v9

    .line 172
    .line 173
    const/4 p2, 0x1

    .line 174
    aput-object v0, v8, p2

    .line 175
    .line 176
    const/4 p2, 0x2

    .line 177
    aput-object v1, v8, p2

    .line 178
    .line 179
    const/4 p2, 0x3

    .line 180
    aput-object v3, v8, p2

    .line 181
    .line 182
    const/4 p2, 0x4

    .line 183
    aput-object v4, v8, p2

    .line 184
    .line 185
    const/4 p2, 0x5

    .line 186
    aput-object v5, v8, p2

    .line 187
    .line 188
    const/4 p2, 0x6

    .line 189
    aput-object v6, v8, p2

    .line 190
    .line 191
    const/4 p2, 0x7

    .line 192
    aput-object v7, v8, p2

    .line 193
    .line 194
    const/16 p2, 0x8

    .line 195
    .line 196
    aput-object v2, v8, p2

    .line 197
    .line 198
    const/16 p2, 0x9

    .line 199
    .line 200
    aput-object p3, v8, p2

    .line 201
    .line 202
    invoke-static {v8}, Lkotlin/collections/MapsKt;->m([Lkotlin/Pair;)Ljava/util/Map;

    .line 203
    .line 204
    .line 205
    move-result-object p2

    .line 206
    sget-object p3, Lqi/h;->a:Lqi/h;

    .line 207
    .line 208
    invoke-virtual {p3, p1, p2}, Lqi/h;->o(Ljava/lang/String;Ljava/util/Map;)V

    .line 209
    .line 210
    .line 211
    return-void
.end method

.method public final d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 1
    const-string v0, "pageName"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "source"

    .line 7
    .line 8
    invoke-static {v0, p2}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 9
    .line 10
    .line 11
    move-result-object p2

    .line 12
    const-string v0, "module_name"

    .line 13
    .line 14
    const-string v1, "all"

    .line 15
    .line 16
    invoke-static {v0, v1}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    const/4 v1, 0x2

    .line 21
    new-array v1, v1, [Lkotlin/Pair;

    .line 22
    .line 23
    const/4 v2, 0x0

    .line 24
    aput-object p2, v1, v2

    .line 25
    .line 26
    const/4 p2, 0x1

    .line 27
    aput-object v0, v1, p2

    .line 28
    .line 29
    invoke-static {v1}, Lkotlin/collections/MapsKt;->m([Lkotlin/Pair;)Ljava/util/Map;

    .line 30
    .line 31
    .line 32
    move-result-object p2

    .line 33
    sget-object v0, Lqi/h;->a:Lqi/h;

    .line 34
    .line 35
    invoke-virtual {v0, p1, p2}, Lqi/h;->o(Ljava/lang/String;Ljava/util/Map;)V

    .line 36
    .line 37
    .line 38
    return-void
.end method

.method public final e(Ljava/lang/String;Ljava/lang/String;Lcom/transsion/moviedetailapi/bean/RoomItem;)V
    .locals 3

    .line 1
    const-string v0, "pageName"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "moduleName"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "item"

    .line 12
    .line 13
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string v0, "module_name"

    .line 17
    .line 18
    invoke-static {v0, p2}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 19
    .line 20
    .line 21
    move-result-object p2

    .line 22
    invoke-virtual {p3}, Lcom/transsion/moviedetailapi/bean/RoomItem;->getGroupId()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    if-nez v0, :cond_0

    .line 27
    .line 28
    const-string v0, ""

    .line 29
    .line 30
    :cond_0
    const-string v1, "group_id"

    .line 31
    .line 32
    invoke-static {v1, v0}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    const-string v1, "ops"

    .line 37
    .line 38
    invoke-virtual {p3}, Lcom/transsion/moviedetailapi/bean/RoomItem;->getOps()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p3

    .line 42
    invoke-static {v1, p3}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 43
    .line 44
    .line 45
    move-result-object p3

    .line 46
    const/4 v1, 0x3

    .line 47
    new-array v1, v1, [Lkotlin/Pair;

    .line 48
    .line 49
    const/4 v2, 0x0

    .line 50
    aput-object p2, v1, v2

    .line 51
    .line 52
    const/4 p2, 0x1

    .line 53
    aput-object v0, v1, p2

    .line 54
    .line 55
    const/4 p2, 0x2

    .line 56
    aput-object p3, v1, p2

    .line 57
    .line 58
    invoke-static {v1}, Lkotlin/collections/MapsKt;->m([Lkotlin/Pair;)Ljava/util/Map;

    .line 59
    .line 60
    .line 61
    move-result-object p2

    .line 62
    sget-object p3, Lqi/h;->a:Lqi/h;

    .line 63
    .line 64
    invoke-virtual {p3, p1, p2}, Lqi/h;->z(Ljava/lang/String;Ljava/util/Map;)V

    .line 65
    .line 66
    .line 67
    return-void
.end method

.method public final f(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 1
    const-string v0, "pageName"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "source"

    .line 7
    .line 8
    invoke-static {v0, p2}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 9
    .line 10
    .line 11
    move-result-object p2

    .line 12
    const-string v0, "module_name"

    .line 13
    .line 14
    const-string v1, "explore"

    .line 15
    .line 16
    invoke-static {v0, v1}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    const/4 v1, 0x2

    .line 21
    new-array v1, v1, [Lkotlin/Pair;

    .line 22
    .line 23
    const/4 v2, 0x0

    .line 24
    aput-object p2, v1, v2

    .line 25
    .line 26
    const/4 p2, 0x1

    .line 27
    aput-object v0, v1, p2

    .line 28
    .line 29
    invoke-static {v1}, Lkotlin/collections/MapsKt;->m([Lkotlin/Pair;)Ljava/util/Map;

    .line 30
    .line 31
    .line 32
    move-result-object p2

    .line 33
    sget-object v0, Lqi/h;->a:Lqi/h;

    .line 34
    .line 35
    invoke-virtual {v0, p1, p2}, Lqi/h;->o(Ljava/lang/String;Ljava/util/Map;)V

    .line 36
    .line 37
    .line 38
    return-void
.end method

.method public final g(Ljava/lang/String;Ljava/lang/String;Lcom/transsion/moviedetailapi/bean/RoomItem;)V
    .locals 5

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
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v1, "source"

    .line 12
    .line 13
    invoke-static {v1, p2}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 14
    .line 15
    .line 16
    move-result-object p2

    .line 17
    const-string v1, "module_name"

    .line 18
    .line 19
    invoke-static {v1, v0}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-virtual {p3}, Lcom/transsion/moviedetailapi/bean/RoomItem;->getGroupId()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    if-nez v1, :cond_0

    .line 28
    .line 29
    const-string v1, ""

    .line 30
    .line 31
    :cond_0
    const-string v2, "group_id"

    .line 32
    .line 33
    invoke-static {v2, v1}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    invoke-virtual {p3}, Lcom/transsion/moviedetailapi/bean/RoomItem;->getHasJoin()Ljava/lang/Boolean;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 42
    .line 43
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    move-result v2

    .line 47
    if-eqz v2, :cond_1

    .line 48
    .line 49
    const-string v2, "1"

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_1
    const-string v2, "0"

    .line 53
    .line 54
    :goto_0
    const-string v3, "has_join"

    .line 55
    .line 56
    invoke-static {v3, v2}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 57
    .line 58
    .line 59
    move-result-object v2

    .line 60
    const-string v3, "ops"

    .line 61
    .line 62
    invoke-virtual {p3}, Lcom/transsion/moviedetailapi/bean/RoomItem;->getOps()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object p3

    .line 66
    invoke-static {v3, p3}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 67
    .line 68
    .line 69
    move-result-object p3

    .line 70
    const/4 v3, 0x5

    .line 71
    new-array v3, v3, [Lkotlin/Pair;

    .line 72
    .line 73
    const/4 v4, 0x0

    .line 74
    aput-object p2, v3, v4

    .line 75
    .line 76
    const/4 p2, 0x1

    .line 77
    aput-object v0, v3, p2

    .line 78
    .line 79
    const/4 p2, 0x2

    .line 80
    aput-object v1, v3, p2

    .line 81
    .line 82
    const/4 p2, 0x3

    .line 83
    aput-object v2, v3, p2

    .line 84
    .line 85
    const/4 p2, 0x4

    .line 86
    aput-object p3, v3, p2

    .line 87
    .line 88
    invoke-static {v3}, Lkotlin/collections/MapsKt;->m([Lkotlin/Pair;)Ljava/util/Map;

    .line 89
    .line 90
    .line 91
    move-result-object p2

    .line 92
    sget-object p3, Lqi/h;->a:Lqi/h;

    .line 93
    .line 94
    invoke-virtual {p3, p1, p2}, Lqi/h;->o(Ljava/lang/String;Ljava/util/Map;)V

    .line 95
    .line 96
    .line 97
    return-void
.end method

.method public final h(Ljava/lang/String;)V
    .locals 3

    .line 1
    const-string v0, "pageName"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "opt_type"

    .line 7
    .line 8
    const-string v1, "room_list_more"

    .line 9
    .line 10
    invoke-static {v0, v1}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    const/4 v1, 0x1

    .line 15
    new-array v1, v1, [Lkotlin/Pair;

    .line 16
    .line 17
    const/4 v2, 0x0

    .line 18
    aput-object v0, v1, v2

    .line 19
    .line 20
    invoke-static {v1}, Lkotlin/collections/MapsKt;->m([Lkotlin/Pair;)Ljava/util/Map;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    sget-object v1, Lqi/h;->a:Lqi/h;

    .line 25
    .line 26
    invoke-virtual {v1, p1, v0}, Lqi/h;->o(Ljava/lang/String;Ljava/util/Map;)V

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method public final i(Ljava/lang/String;Ljava/lang/String;IJLcom/transsion/moviedetailapi/bean/RoomItem;)V
    .locals 3

    .line 1
    const-string v0, "pageName"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "item"

    .line 7
    .line 8
    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p6}, Lcom/transsion/moviedetailapi/bean/RoomItem;->getGroupId()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    if-nez v1, :cond_0

    .line 16
    .line 17
    const-string v1, ""

    .line 18
    .line 19
    :cond_0
    const-string v2, "group_id"

    .line 20
    .line 21
    invoke-static {v2, v1}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    const-string v2, "position"

    .line 26
    .line 27
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p3

    .line 31
    invoke-static {v2, p3}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 32
    .line 33
    .line 34
    move-result-object p3

    .line 35
    const-string v2, "page_from"

    .line 36
    .line 37
    invoke-static {v2, p1}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    const-string v2, "browse_duration"

    .line 42
    .line 43
    invoke-static {p4, p5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p4

    .line 47
    invoke-static {v2, p4}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 48
    .line 49
    .line 50
    move-result-object p4

    .line 51
    const-string p5, "module_name"

    .line 52
    .line 53
    invoke-static {p5, v0}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 54
    .line 55
    .line 56
    move-result-object p5

    .line 57
    const-string v0, "ops"

    .line 58
    .line 59
    invoke-virtual {p6}, Lcom/transsion/moviedetailapi/bean/RoomItem;->getOps()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object p6

    .line 63
    invoke-static {v0, p6}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 64
    .line 65
    .line 66
    move-result-object p6

    .line 67
    const/4 v0, 0x6

    .line 68
    new-array v0, v0, [Lkotlin/Pair;

    .line 69
    .line 70
    const/4 v2, 0x0

    .line 71
    aput-object v1, v0, v2

    .line 72
    .line 73
    const/4 v1, 0x1

    .line 74
    aput-object p3, v0, v1

    .line 75
    .line 76
    const/4 p3, 0x2

    .line 77
    aput-object p1, v0, p3

    .line 78
    .line 79
    const/4 p1, 0x3

    .line 80
    aput-object p4, v0, p1

    .line 81
    .line 82
    const/4 p1, 0x4

    .line 83
    aput-object p5, v0, p1

    .line 84
    .line 85
    const/4 p1, 0x5

    .line 86
    aput-object p6, v0, p1

    .line 87
    .line 88
    invoke-static {v0}, Lkotlin/collections/MapsKt;->m([Lkotlin/Pair;)Ljava/util/Map;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    sget-object p3, Lqi/h;->a:Lqi/h;

    .line 93
    .line 94
    invoke-virtual {p3, p2, p1}, Lqi/h;->z(Ljava/lang/String;Ljava/util/Map;)V

    .line 95
    .line 96
    .line 97
    return-void
.end method

.method public final j(Ljava/lang/String;Ljava/lang/String;ILcom/transsion/moviedetailapi/bean/RoomItem;)V
    .locals 4

    .line 1
    const-string v0, "pageName"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "item"

    .line 7
    .line 8
    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p4}, Lcom/transsion/moviedetailapi/bean/RoomItem;->getGroupId()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    if-nez v1, :cond_0

    .line 16
    .line 17
    const-string v1, ""

    .line 18
    .line 19
    :cond_0
    const-string v2, "group_id"

    .line 20
    .line 21
    invoke-static {v2, v1}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    const-string v2, "position"

    .line 26
    .line 27
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p3

    .line 31
    invoke-static {v2, p3}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 32
    .line 33
    .line 34
    move-result-object p3

    .line 35
    const-string v2, "page_from"

    .line 36
    .line 37
    invoke-static {v2, p1}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    const-string v2, "module_name"

    .line 42
    .line 43
    invoke-static {v2, v0}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    const-string v2, "ops"

    .line 48
    .line 49
    invoke-virtual {p4}, Lcom/transsion/moviedetailapi/bean/RoomItem;->getOps()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p4

    .line 53
    invoke-static {v2, p4}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 54
    .line 55
    .line 56
    move-result-object p4

    .line 57
    const/4 v2, 0x5

    .line 58
    new-array v2, v2, [Lkotlin/Pair;

    .line 59
    .line 60
    const/4 v3, 0x0

    .line 61
    aput-object v1, v2, v3

    .line 62
    .line 63
    const/4 v1, 0x1

    .line 64
    aput-object p3, v2, v1

    .line 65
    .line 66
    const/4 p3, 0x2

    .line 67
    aput-object p1, v2, p3

    .line 68
    .line 69
    const/4 p1, 0x3

    .line 70
    aput-object v0, v2, p1

    .line 71
    .line 72
    const/4 p1, 0x4

    .line 73
    aput-object p4, v2, p1

    .line 74
    .line 75
    invoke-static {v2}, Lkotlin/collections/MapsKt;->m([Lkotlin/Pair;)Ljava/util/Map;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    sget-object p3, Lqi/h;->a:Lqi/h;

    .line 80
    .line 81
    invoke-virtual {p3, p2, p1}, Lqi/h;->o(Ljava/lang/String;Ljava/util/Map;)V

    .line 82
    .line 83
    .line 84
    return-void
.end method
