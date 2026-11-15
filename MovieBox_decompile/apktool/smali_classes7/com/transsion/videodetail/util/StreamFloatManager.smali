.class public final Lcom/transsion/videodetail/util/StreamFloatManager;
.super Lcom/transsion/videofloat/manager/b;
.source "source.java"


# static fields
.field public static final b:Lcom/transsion/videodetail/util/StreamFloatManager;

.field private static c:Ljava/util/Map;

.field private static final d:Lkotlin/Lazy;

.field private static final e:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/transsion/videodetail/util/StreamFloatManager;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/transsion/videodetail/util/StreamFloatManager;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/transsion/videodetail/util/StreamFloatManager;->b:Lcom/transsion/videodetail/util/StreamFloatManager;

    .line 7
    .line 8
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lcom/transsion/videodetail/util/StreamFloatManager;->c:Ljava/util/Map;

    .line 14
    .line 15
    new-instance v0, Lcom/transsion/videodetail/util/a;

    .line 16
    .line 17
    invoke-direct {v0}, Lcom/transsion/videodetail/util/a;-><init>()V

    .line 18
    .line 19
    .line 20
    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    sput-object v0, Lcom/transsion/videodetail/util/StreamFloatManager;->d:Lkotlin/Lazy;

    .line 25
    .line 26
    new-instance v0, Lcom/transsion/videodetail/util/b;

    .line 27
    .line 28
    invoke-direct {v0}, Lcom/transsion/videodetail/util/b;-><init>()V

    .line 29
    .line 30
    .line 31
    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    sput-object v0, Lcom/transsion/videodetail/util/StreamFloatManager;->e:Lkotlin/Lazy;

    .line 36
    .line 37
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/videofloat/manager/b;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic b()Lcom/transsion/videodetail/b;
    .locals 1

    .line 1
    invoke-static {}, Lcom/transsion/videodetail/util/StreamFloatManager;->w()Lcom/transsion/videodetail/b;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static synthetic c()Lcom/transsion/baselib/db/video/VideoDetailPlayDao;
    .locals 1

    .line 1
    invoke-static {}, Lcom/transsion/videodetail/util/StreamFloatManager;->x()Lcom/transsion/baselib/db/video/VideoDetailPlayDao;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static synthetic d(Lln/a;Ldw/a;Lln/a;Lcom/transsion/videodetail/bean/VideoDetailStreamList;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/transsion/videodetail/util/StreamFloatManager;->s(Lln/a;Ldw/a;Lln/a;Lcom/transsion/videodetail/bean/VideoDetailStreamList;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic e(Lcom/transsion/videodetail/util/StreamFloatManager;)Lcom/transsion/videodetail/b;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/videodetail/util/StreamFloatManager;->m()Lcom/transsion/videodetail/b;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic f(Lcom/transsion/videodetail/util/StreamFloatManager;)Lcom/transsion/baselib/db/video/VideoDetailPlayDao;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/videodetail/util/StreamFloatManager;->n()Lcom/transsion/baselib/db/video/VideoDetailPlayDao;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private final h(Lln/a;Lcom/transsion/videodetail/bean/VideoDetailStream;II)Lcom/transsion/player/mediasession/MediaItem;
    .locals 20

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-virtual/range {p1 .. p1}, Lln/a;->t()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v2

    .line 10
    move-object v4, v2

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    move-object v4, v1

    .line 13
    :goto_0
    if-eqz v0, :cond_1

    .line 14
    .line 15
    invoke-virtual/range {p1 .. p1}, Lln/a;->o()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    move-object v12, v2

    .line 20
    goto :goto_1

    .line 21
    :cond_1
    move-object v12, v1

    .line 22
    :goto_1
    if-eqz v0, :cond_2

    .line 23
    .line 24
    invoke-virtual/range {p1 .. p1}, Lln/a;->c()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    :cond_2
    move-object v6, v1

    .line 29
    invoke-virtual/range {p2 .. p2}, Lcom/transsion/videodetail/bean/VideoDetailStream;->getId()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v13

    .line 33
    invoke-virtual/range {p2 .. p2}, Lcom/transsion/videodetail/bean/VideoDetailStream;->getId()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    move-object/from16 v2, p0

    .line 38
    .line 39
    move/from16 v3, p3

    .line 40
    .line 41
    move/from16 v5, p4

    .line 42
    .line 43
    invoke-direct {v2, v0, v1, v3, v5}, Lcom/transsion/videodetail/util/StreamFloatManager;->i(Lln/a;Ljava/lang/String;II)Landroid/app/PendingIntent;

    .line 44
    .line 45
    .line 46
    move-result-object v10

    .line 47
    new-instance v0, Lcom/transsion/player/mediasession/MediaItem;

    .line 48
    .line 49
    move-object v3, v0

    .line 50
    const/16 v18, 0x3cb8

    .line 51
    .line 52
    const/16 v19, 0x0

    .line 53
    .line 54
    const-string v5, ""

    .line 55
    .line 56
    const/4 v7, 0x0

    .line 57
    const/4 v8, 0x0

    .line 58
    const/4 v9, 0x0

    .line 59
    const/4 v11, 0x0

    .line 60
    const/4 v14, 0x0

    .line 61
    const/4 v15, 0x0

    .line 62
    const/16 v16, 0x0

    .line 63
    .line 64
    const/16 v17, 0x0

    .line 65
    .line 66
    invoke-direct/range {v3 .. v19}, Lcom/transsion/player/mediasession/MediaItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 67
    .line 68
    .line 69
    return-object v0
.end method

.method private final i(Lln/a;Ljava/lang/String;II)Landroid/app/PendingIntent;
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v1, v0, [Ljava/lang/Object;

    .line 3
    .line 4
    const-class v2, Lto/a;

    .line 5
    .line 6
    invoke-static {v2, v1}, Lcom/therouter/TheRouter;->d(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    check-cast v1, Lto/a;

    .line 11
    .line 12
    new-instance v2, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    const-string v3, "oneroom://com.community.oneroom?type="

    .line 15
    .line 16
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    const-string v3, "/playvideo/detail"

    .line 20
    .line 21
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    const-string v3, "&"

    .line 25
    .line 26
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    const-string v4, "extra_resource_id"

    .line 30
    .line 31
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    const-string v4, "="

    .line 35
    .line 36
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    const-string p2, "subject_type"

    .line 46
    .line 47
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    const/4 p2, 0x0

    .line 54
    if-eqz p1, :cond_0

    .line 55
    .line 56
    invoke-virtual {p1}, Lln/a;->r()Ljava/lang/Integer;

    .line 57
    .line 58
    .line 59
    move-result-object v5

    .line 60
    goto :goto_0

    .line 61
    :cond_0
    move-object v5, p2

    .line 62
    :goto_0
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    const-string v5, "season"

    .line 72
    .line 73
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    const-string p3, "episode"

    .line 89
    .line 90
    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    const-string p3, "id"

    .line 106
    .line 107
    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    if-eqz p1, :cond_1

    .line 114
    .line 115
    invoke-virtual {p1}, Lln/a;->o()Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object p3

    .line 119
    goto :goto_1

    .line 120
    :cond_1
    move-object p3, p2

    .line 121
    :goto_1
    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    .line 126
    .line 127
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    .line 129
    .line 130
    const-string p3, "ops"

    .line 131
    .line 132
    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    .line 134
    .line 135
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    .line 137
    .line 138
    if-eqz p1, :cond_2

    .line 139
    .line 140
    invoke-virtual {p1}, Lln/a;->q()Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object p1

    .line 144
    goto :goto_2

    .line 145
    :cond_2
    move-object p1, p2

    .line 146
    :goto_2
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    .line 148
    .line 149
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    .line 151
    .line 152
    const-string p1, "extra_page_from"

    .line 153
    .line 154
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    .line 156
    .line 157
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    .line 159
    .line 160
    const-string p1, "media_notification"

    .line 161
    .line 162
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    .line 164
    .line 165
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    .line 167
    .line 168
    if-eqz v1, :cond_3

    .line 169
    .line 170
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    .line 171
    .line 172
    .line 173
    move-result-object p1

    .line 174
    const-string p3, "getApp(...)"

    .line 175
    .line 176
    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 177
    .line 178
    .line 179
    invoke-interface {v1, p1}, Lto/a;->a(Landroid/content/Context;)Landroid/content/Intent;

    .line 180
    .line 181
    .line 182
    move-result-object p1

    .line 183
    if-eqz p1, :cond_3

    .line 184
    .line 185
    const/high16 p2, 0x24000000

    .line 186
    .line 187
    invoke-virtual {p1, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 188
    .line 189
    .line 190
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 191
    .line 192
    .line 193
    move-result-object p2

    .line 194
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 195
    .line 196
    .line 197
    move-result-object p2

    .line 198
    invoke-virtual {p1, p2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 199
    .line 200
    .line 201
    move-object p2, p1

    .line 202
    :cond_3
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    .line 203
    .line 204
    .line 205
    move-result-object p1

    .line 206
    invoke-direct {p0}, Lcom/transsion/videodetail/util/StreamFloatManager;->k()I

    .line 207
    .line 208
    .line 209
    move-result p3

    .line 210
    invoke-static {p1, v0, p2, p3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 211
    .line 212
    .line 213
    move-result-object p1

    .line 214
    return-object p1
.end method

.method private final j(Ljava/lang/String;)Lcom/transsion/player/enum/PlayMimeType;
    .locals 1

    .line 1
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    const-string v0, "toUpperCase(...)"

    .line 8
    .line 9
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    const-string v0, "DASH"

    .line 13
    .line 14
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    sget-object p1, Lcom/transsion/player/enum/PlayMimeType;->DASH:Lcom/transsion/player/enum/PlayMimeType;

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const-string v0, "HLS"

    .line 24
    .line 25
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    if-eqz p1, :cond_1

    .line 30
    .line 31
    sget-object p1, Lcom/transsion/player/enum/PlayMimeType;->HLS:Lcom/transsion/player/enum/PlayMimeType;

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_1
    sget-object p1, Lcom/transsion/player/enum/PlayMimeType;->DEFAULT:Lcom/transsion/player/enum/PlayMimeType;

    .line 35
    .line 36
    :goto_0
    return-object p1
.end method

.method private final k()I
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x1f

    .line 4
    .line 5
    if-lt v0, v1, :cond_0

    .line 6
    .line 7
    const/high16 v0, 0x4000000

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/high16 v0, 0x8000000

    .line 11
    .line 12
    :goto_0
    return v0
.end method

.method private final l(Ljava/lang/String;IILkotlin/jvm/functions/Function1;)V
    .locals 8

    .line 1
    invoke-static {}, Lkotlinx/coroutines/y0;->b()Lkotlinx/coroutines/i0;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lkotlinx/coroutines/o0;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/n0;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    new-instance v0, Lcom/transsion/videodetail/util/StreamFloatManager$getPlayInfo$1;

    .line 10
    .line 11
    const/4 v7, 0x0

    .line 12
    move-object v2, v0

    .line 13
    move-object v3, p1

    .line 14
    move v4, p2

    .line 15
    move v5, p3

    .line 16
    move-object v6, p4

    .line 17
    invoke-direct/range {v2 .. v7}, Lcom/transsion/videodetail/util/StreamFloatManager$getPlayInfo$1;-><init>(Ljava/lang/String;IILkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V

    .line 18
    .line 19
    .line 20
    const/4 v5, 0x3

    .line 21
    const/4 v6, 0x0

    .line 22
    const/4 v2, 0x0

    .line 23
    const/4 v3, 0x0

    .line 24
    move-object v4, v0

    .line 25
    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method private final m()Lcom/transsion/videodetail/b;
    .locals 1

    .line 1
    sget-object v0, Lcom/transsion/videodetail/util/StreamFloatManager;->e:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/transsion/videodetail/b;

    .line 8
    .line 9
    return-object v0
.end method

.method private final n()Lcom/transsion/baselib/db/video/VideoDetailPlayDao;
    .locals 1

    .line 1
    sget-object v0, Lcom/transsion/videodetail/util/StreamFloatManager;->d:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/transsion/baselib/db/video/VideoDetailPlayDao;

    .line 8
    .line 9
    return-object v0
.end method

.method private final o(Ldw/a;Lln/a;IILcom/transsion/videodetail/bean/VideoDetailStreamList;)V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move/from16 v2, p3

    .line 6
    .line 7
    move/from16 v3, p4

    .line 8
    .line 9
    invoke-virtual/range {p5 .. p5}, Lcom/transsion/videodetail/bean/VideoDetailStreamList;->getStreams()Ljava/util/List;

    .line 10
    .line 11
    .line 12
    move-result-object v4

    .line 13
    invoke-static {v4}, Lkotlin/collections/CollectionsKt;->k0(Ljava/util/List;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v4

    .line 17
    check-cast v4, Lcom/transsion/videodetail/bean/VideoDetailStream;

    .line 18
    .line 19
    if-nez v4, :cond_0

    .line 20
    .line 21
    return-void

    .line 22
    :cond_0
    invoke-virtual {v4}, Lcom/transsion/videodetail/bean/VideoDetailStream;->getFormat()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v5

    .line 26
    const-string v6, "DEFAULT"

    .line 27
    .line 28
    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result v5

    .line 32
    const/4 v6, 0x0

    .line 33
    const/4 v7, 0x1

    .line 34
    if-nez v5, :cond_1

    .line 35
    .line 36
    invoke-virtual {v4}, Lcom/transsion/videodetail/bean/VideoDetailStream;->getFormat()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v5

    .line 40
    const-string v8, "HLS"

    .line 41
    .line 42
    invoke-static {v5, v8}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    move-result v5

    .line 46
    if-eqz v5, :cond_5

    .line 47
    .line 48
    invoke-virtual/range {p5 .. p5}, Lcom/transsion/videodetail/bean/VideoDetailStreamList;->getStreams()Ljava/util/List;

    .line 49
    .line 50
    .line 51
    move-result-object v5

    .line 52
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 53
    .line 54
    .line 55
    move-result v5

    .line 56
    if-le v5, v7, :cond_5

    .line 57
    .line 58
    :cond_1
    invoke-virtual/range {p5 .. p5}, Lcom/transsion/videodetail/bean/VideoDetailStreamList;->getStreams()Ljava/util/List;

    .line 59
    .line 60
    .line 61
    move-result-object v5

    .line 62
    check-cast v5, Ljava/lang/Iterable;

    .line 63
    .line 64
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 65
    .line 66
    .line 67
    move-result-object v5

    .line 68
    :cond_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 69
    .line 70
    .line 71
    move-result v8

    .line 72
    if-eqz v8, :cond_3

    .line 73
    .line 74
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object v8

    .line 78
    move-object v9, v8

    .line 79
    check-cast v9, Lcom/transsion/videodetail/bean/VideoDetailStream;

    .line 80
    .line 81
    invoke-virtual {v9}, Lcom/transsion/videodetail/bean/VideoDetailStream;->getResolutions()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v9

    .line 85
    invoke-virtual/range {p1 .. p1}, Ldw/a;->o()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v10

    .line 89
    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 90
    .line 91
    .line 92
    move-result v9

    .line 93
    if-eqz v9, :cond_2

    .line 94
    .line 95
    goto :goto_0

    .line 96
    :cond_3
    move-object v8, v6

    .line 97
    :goto_0
    check-cast v8, Lcom/transsion/videodetail/bean/VideoDetailStream;

    .line 98
    .line 99
    if-nez v8, :cond_4

    .line 100
    .line 101
    goto :goto_1

    .line 102
    :cond_4
    move-object v4, v8

    .line 103
    :cond_5
    :goto_1
    invoke-virtual {v4}, Lcom/transsion/videodetail/bean/VideoDetailStream;->getSignCookie()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v5

    .line 107
    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    .line 108
    .line 109
    .line 110
    move-result v5

    .line 111
    if-lez v5, :cond_6

    .line 112
    .line 113
    new-instance v6, Ljava/util/LinkedHashMap;

    .line 114
    .line 115
    invoke-direct {v6}, Ljava/util/LinkedHashMap;-><init>()V

    .line 116
    .line 117
    .line 118
    const-string v5, "cookie"

    .line 119
    .line 120
    invoke-virtual {v4}, Lcom/transsion/videodetail/bean/VideoDetailStream;->getSignCookie()Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v8

    .line 124
    invoke-interface {v6, v5, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    .line 126
    .line 127
    :cond_6
    sget-object v5, Lwf/a;->a:Lwf/a$a;

    .line 128
    .line 129
    new-instance v8, Ljava/lang/StringBuilder;

    .line 130
    .line 131
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 132
    .line 133
    .line 134
    const-string v9, "stream-----getPlayInfoSuccess,\u5f00\u59cb\u64ad\u653e, se:"

    .line 135
    .line 136
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    .line 138
    .line 139
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 140
    .line 141
    .line 142
    const-string v9, ",ep:"

    .line 143
    .line 144
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    .line 146
    .line 147
    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 148
    .line 149
    .line 150
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object v8

    .line 154
    const-string v9, "VideoFloat"

    .line 155
    .line 156
    invoke-virtual {v5, v9, v8, v7}, Lwf/a$a;->c(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 157
    .line 158
    .line 159
    new-instance v5, Lgn/e;

    .line 160
    .line 161
    invoke-virtual {v4}, Lcom/transsion/videodetail/bean/VideoDetailStream;->getUrl()Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object v7

    .line 165
    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    .line 166
    .line 167
    .line 168
    move-result v7

    .line 169
    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object v11

    .line 173
    invoke-virtual {v4}, Lcom/transsion/videodetail/bean/VideoDetailStream;->getUrl()Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object v12

    .line 177
    invoke-virtual {v4}, Lcom/transsion/videodetail/bean/VideoDetailStream;->getFormat()Ljava/lang/String;

    .line 178
    .line 179
    .line 180
    move-result-object v7

    .line 181
    invoke-direct {v0, v7}, Lcom/transsion/videodetail/util/StreamFloatManager;->j(Ljava/lang/String;)Lcom/transsion/player/enum/PlayMimeType;

    .line 182
    .line 183
    .line 184
    move-result-object v14

    .line 185
    move-object/from16 v7, p2

    .line 186
    .line 187
    invoke-direct {v0, v7, v4, v2, v3}, Lcom/transsion/videodetail/util/StreamFloatManager;->h(Lln/a;Lcom/transsion/videodetail/bean/VideoDetailStream;II)Lcom/transsion/player/mediasession/MediaItem;

    .line 188
    .line 189
    .line 190
    move-result-object v15

    .line 191
    const/16 v16, 0x4

    .line 192
    .line 193
    const/16 v17, 0x0

    .line 194
    .line 195
    const/4 v13, 0x0

    .line 196
    move-object v10, v5

    .line 197
    invoke-direct/range {v10 .. v17}, Lgn/e;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/transsion/player/enum/PlayMimeType;Lcom/transsion/player/mediasession/MediaItem;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 198
    .line 199
    .line 200
    invoke-virtual {v5, v6}, Lgn/e;->o(Ljava/util/Map;)V

    .line 201
    .line 202
    .line 203
    invoke-virtual {v1, v3}, Ldw/a;->z(I)V

    .line 204
    .line 205
    .line 206
    invoke-virtual {v1, v2}, Ldw/a;->H(I)V

    .line 207
    .line 208
    .line 209
    const-wide/16 v2, 0x0

    .line 210
    .line 211
    invoke-virtual {v1, v2, v3}, Ldw/a;->F(J)V

    .line 212
    .line 213
    .line 214
    invoke-virtual/range {p1 .. p1}, Ldw/a;->f()Lcom/transsion/player/orplayer/f;

    .line 215
    .line 216
    .line 217
    move-result-object v2

    .line 218
    invoke-interface {v2}, Lcom/transsion/player/orplayer/f;->stop()V

    .line 219
    .line 220
    .line 221
    invoke-virtual/range {p1 .. p1}, Ldw/a;->f()Lcom/transsion/player/orplayer/f;

    .line 222
    .line 223
    .line 224
    move-result-object v2

    .line 225
    invoke-interface {v2}, Lcom/transsion/player/orplayer/f;->reset()V

    .line 226
    .line 227
    .line 228
    invoke-virtual/range {p1 .. p1}, Ldw/a;->f()Lcom/transsion/player/orplayer/f;

    .line 229
    .line 230
    .line 231
    move-result-object v2

    .line 232
    invoke-interface {v2}, Lcom/transsion/player/orplayer/f;->clearScreen()V

    .line 233
    .line 234
    .line 235
    invoke-virtual/range {p1 .. p1}, Ldw/a;->f()Lcom/transsion/player/orplayer/f;

    .line 236
    .line 237
    .line 238
    move-result-object v2

    .line 239
    invoke-interface {v2, v5}, Lcom/transsion/player/orplayer/f;->setDataSource(Lgn/e;)V

    .line 240
    .line 241
    .line 242
    invoke-virtual/range {p1 .. p1}, Ldw/a;->f()Lcom/transsion/player/orplayer/f;

    .line 243
    .line 244
    .line 245
    move-result-object v2

    .line 246
    invoke-interface {v2}, Lcom/transsion/player/orplayer/f;->prepare()V

    .line 247
    .line 248
    .line 249
    invoke-virtual/range {p1 .. p1}, Ldw/a;->f()Lcom/transsion/player/orplayer/f;

    .line 250
    .line 251
    .line 252
    move-result-object v1

    .line 253
    invoke-interface {v1}, Lcom/transsion/player/orplayer/f;->play()V

    .line 254
    .line 255
    .line 256
    return-void
.end method

.method private static final s(Lln/a;Ldw/a;Lln/a;Lcom/transsion/videodetail/bean/VideoDetailStreamList;)Lkotlin/Unit;
    .locals 6

    .line 1
    if-nez p3, :cond_0

    .line 2
    .line 3
    sget-object p1, Lwf/a;->a:Lwf/a$a;

    .line 4
    .line 5
    invoke-virtual {p0}, Lln/a;->l()I

    .line 6
    .line 7
    .line 8
    move-result p2

    .line 9
    invoke-virtual {p0}, Lln/a;->e()I

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    new-instance p3, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 16
    .line 17
    .line 18
    const-string v0, "stream-----playNext,nextSe:"

    .line 19
    .line 20
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string p2, ",nextEp:"

    .line 27
    .line 28
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    const-string p0, " \u4e0b\u4e00\u96c6\u6570\u636e\u4e3a\u7a7a\uff0c\u65e0\u6cd5\u64ad\u653e"

    .line 35
    .line 36
    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    const/4 p2, 0x1

    .line 44
    const-string p3, "VideoFloat"

    .line 45
    .line 46
    invoke-virtual {p1, p3, p0, p2}, Lwf/a$a;->c(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 47
    .line 48
    .line 49
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 50
    .line 51
    return-object p0

    .line 52
    :cond_0
    sget-object v0, Lcom/transsion/videodetail/util/StreamFloatManager;->b:Lcom/transsion/videodetail/util/StreamFloatManager;

    .line 53
    .line 54
    invoke-virtual {p0}, Lln/a;->l()I

    .line 55
    .line 56
    .line 57
    move-result v3

    .line 58
    invoke-virtual {p0}, Lln/a;->e()I

    .line 59
    .line 60
    .line 61
    move-result v4

    .line 62
    move-object v1, p1

    .line 63
    move-object v2, p2

    .line 64
    move-object v5, p3

    .line 65
    invoke-direct/range {v0 .. v5}, Lcom/transsion/videodetail/util/StreamFloatManager;->o(Ldw/a;Lln/a;IILcom/transsion/videodetail/bean/VideoDetailStreamList;)V

    .line 66
    .line 67
    .line 68
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 69
    .line 70
    return-object p0
.end method

.method private final u(Ldw/a;)V
    .locals 7

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p1}, Ldw/a;->r()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {p1}, Ldw/a;->q()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    invoke-virtual {p1}, Ldw/a;->c()I

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    new-instance v3, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v0, "+"

    .line 24
    .line 25
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    sget-object v1, Lwf/a;->a:Lwf/a$a;

    .line 42
    .line 43
    invoke-virtual {p1}, Ldw/a;->n()J

    .line 44
    .line 45
    .line 46
    move-result-wide v2

    .line 47
    new-instance v4, Ljava/lang/StringBuilder;

    .line 48
    .line 49
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 50
    .line 51
    .line 52
    const-string v5, "saveHistory--key:"

    .line 53
    .line 54
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    const-string v5, ", value:"

    .line 61
    .line 62
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v3

    .line 72
    const/4 v5, 0x4

    .line 73
    const/4 v6, 0x0

    .line 74
    const-string v2, "VideoFloat"

    .line 75
    .line 76
    const/4 v4, 0x0

    .line 77
    invoke-static/range {v1 .. v6}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 78
    .line 79
    .line 80
    sget-object v1, Lcom/transsion/videodetail/util/StreamFloatManager;->c:Ljava/util/Map;

    .line 81
    .line 82
    invoke-virtual {p1}, Ldw/a;->n()J

    .line 83
    .line 84
    .line 85
    move-result-wide v2

    .line 86
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 87
    .line 88
    .line 89
    move-result-object v2

    .line 90
    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    :cond_0
    invoke-static {}, Lkotlinx/coroutines/y0;->b()Lkotlinx/coroutines/i0;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    invoke-static {v0}, Lkotlinx/coroutines/o0;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/n0;

    .line 98
    .line 99
    .line 100
    move-result-object v1

    .line 101
    new-instance v4, Lcom/transsion/videodetail/util/StreamFloatManager$saveHistoryInner$2;

    .line 102
    .line 103
    const/4 v0, 0x0

    .line 104
    invoke-direct {v4, p1, v0}, Lcom/transsion/videodetail/util/StreamFloatManager$saveHistoryInner$2;-><init>(Ldw/a;Lkotlin/coroutines/Continuation;)V

    .line 105
    .line 106
    .line 107
    const/4 v5, 0x3

    .line 108
    const/4 v6, 0x0

    .line 109
    const/4 v2, 0x0

    .line 110
    const/4 v3, 0x0

    .line 111
    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 112
    .line 113
    .line 114
    return-void
.end method

.method private static final w()Lcom/transsion/videodetail/b;
    .locals 2

    .line 1
    sget-object v0, Lkg/c;->e:Lkg/c$a;

    .line 2
    .line 3
    invoke-virtual {v0}, Lkg/c$a;->a()Lkg/c;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-class v1, Lcom/transsion/videodetail/b;

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Lkg/c;->h(Ljava/lang/Class;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Lcom/transsion/videodetail/b;

    .line 14
    .line 15
    return-object v0
.end method

.method private static final x()Lcom/transsion/baselib/db/video/VideoDetailPlayDao;
    .locals 3

    .line 1
    sget-object v0, Lcom/transsion/baselib/db/AppDatabase;->p:Lcom/transsion/baselib/db/AppDatabase$f1;

    .line 2
    .line 3
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const-string v2, "getApp(...)"

    .line 8
    .line 9
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1}, Lcom/transsion/baselib/db/AppDatabase$f1;->b(Landroid/content/Context;)Lcom/transsion/baselib/db/AppDatabase;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {v0}, Lcom/transsion/baselib/db/AppDatabase;->C1()Lcom/transsion/baselib/db/video/VideoDetailPlayDao;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    return-object v0
.end method


# virtual methods
.method public final g(Ljava/lang/String;)Ljava/lang/Long;
    .locals 1

    .line 1
    const-string v0, "key"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lcom/transsion/videodetail/util/StreamFloatManager;->c:Ljava/util/Map;

    .line 7
    .line 8
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    check-cast p1, Ljava/lang/Long;

    .line 13
    .line 14
    return-object p1
.end method

.method public p()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/transsion/videofloat/manager/b;->a()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public q(Ldw/a;)V
    .locals 8

    .line 1
    sget-object v6, Lwf/a;->a:Lwf/a$a;

    .line 2
    .line 3
    const/4 v4, 0x4

    .line 4
    const/4 v5, 0x0

    .line 5
    const-string v1, "VideoFloat"

    .line 6
    .line 7
    const-string v2, "openDetail--1"

    .line 8
    .line 9
    const/4 v3, 0x0

    .line 10
    move-object v0, v6

    .line 11
    invoke-static/range {v0 .. v5}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    invoke-direct {p0, p1}, Lcom/transsion/videodetail/util/StreamFloatManager;->u(Ldw/a;)V

    .line 15
    .line 16
    .line 17
    new-instance v7, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    const-string v0, "oneroom://com.community.oneroom?type=/playvideo/detail"

    .line 20
    .line 21
    invoke-direct {v7, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    const-string v0, "&"

    .line 25
    .line 26
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    const-string v1, "id"

    .line 30
    .line 31
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    const-string v1, "="

    .line 35
    .line 36
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    if-eqz p1, :cond_0

    .line 40
    .line 41
    invoke-virtual {p1}, Ldw/a;->r()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    goto :goto_0

    .line 46
    :cond_0
    const/4 v2, 0x0

    .line 47
    :goto_0
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    const-string v2, "season"

    .line 54
    .line 55
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    const/4 v2, 0x0

    .line 62
    if-eqz p1, :cond_1

    .line 63
    .line 64
    invoke-virtual {p1}, Ldw/a;->q()I

    .line 65
    .line 66
    .line 67
    move-result v3

    .line 68
    goto :goto_1

    .line 69
    :cond_1
    move v3, v2

    .line 70
    :goto_1
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    const-string v3, "episode"

    .line 80
    .line 81
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    if-eqz p1, :cond_2

    .line 88
    .line 89
    invoke-virtual {p1}, Ldw/a;->c()I

    .line 90
    .line 91
    .line 92
    move-result v2

    .line 93
    :cond_2
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    const/4 v4, 0x4

    .line 100
    const/4 v5, 0x0

    .line 101
    const-string v1, "VideoFloat"

    .line 102
    .line 103
    const-string v2, "openDetail--end"

    .line 104
    .line 105
    const/4 v3, 0x0

    .line 106
    move-object v0, v6

    .line 107
    invoke-static/range {v0 .. v5}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 108
    .line 109
    .line 110
    new-instance p1, Landroid/content/Intent;

    .line 111
    .line 112
    const-string v0, "android.intent.action.VIEW"

    .line 113
    .line 114
    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v0

    .line 121
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 122
    .line 123
    .line 124
    move-result-object v0

    .line 125
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 126
    .line 127
    .line 128
    const/high16 v0, 0x10000000

    .line 129
    .line 130
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 131
    .line 132
    .line 133
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    .line 134
    .line 135
    .line 136
    move-result-object v0

    .line 137
    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 138
    .line 139
    .line 140
    return-void
.end method

.method public r(Ldw/a;)Z
    .locals 10

    .line 1
    invoke-virtual {p0}, Lcom/transsion/videofloat/manager/b;->a()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const/4 v1, 0x0

    .line 10
    move v2, v1

    .line 11
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    .line 13
    .line 14
    move-result v3

    .line 15
    if-eqz v3, :cond_1

    .line 16
    .line 17
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    check-cast v3, Lln/a;

    .line 22
    .line 23
    if-eqz p1, :cond_0

    .line 24
    .line 25
    invoke-virtual {v3}, Lln/a;->e()I

    .line 26
    .line 27
    .line 28
    move-result v3

    .line 29
    invoke-virtual {p1}, Ldw/a;->c()I

    .line 30
    .line 31
    .line 32
    move-result v4

    .line 33
    if-ne v3, v4, :cond_0

    .line 34
    .line 35
    goto :goto_1

    .line 36
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_1
    const/4 v2, -0x1

    .line 40
    :goto_1
    invoke-virtual {p0}, Lcom/transsion/videofloat/manager/b;->a()Ljava/util/List;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    check-cast v0, Ljava/lang/Iterable;

    .line 45
    .line 46
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 51
    .line 52
    .line 53
    move-result v3

    .line 54
    if-eqz v3, :cond_3

    .line 55
    .line 56
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v3

    .line 60
    move-object v4, v3

    .line 61
    check-cast v4, Lln/a;

    .line 62
    .line 63
    if-eqz p1, :cond_2

    .line 64
    .line 65
    invoke-virtual {v4}, Lln/a;->e()I

    .line 66
    .line 67
    .line 68
    move-result v4

    .line 69
    invoke-virtual {p1}, Ldw/a;->c()I

    .line 70
    .line 71
    .line 72
    move-result v5

    .line 73
    if-ne v4, v5, :cond_2

    .line 74
    .line 75
    goto :goto_2

    .line 76
    :cond_3
    const/4 v3, 0x0

    .line 77
    :goto_2
    check-cast v3, Lln/a;

    .line 78
    .line 79
    const/4 v0, 0x1

    .line 80
    add-int/2addr v2, v0

    .line 81
    invoke-virtual {p0}, Lcom/transsion/videofloat/manager/b;->a()Ljava/util/List;

    .line 82
    .line 83
    .line 84
    move-result-object v4

    .line 85
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 86
    .line 87
    .line 88
    move-result v4

    .line 89
    if-ge v2, v4, :cond_5

    .line 90
    .line 91
    invoke-virtual {p0}, Lcom/transsion/videofloat/manager/b;->a()Ljava/util/List;

    .line 92
    .line 93
    .line 94
    move-result-object v4

    .line 95
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    move-result-object v2

    .line 99
    check-cast v2, Lln/a;

    .line 100
    .line 101
    sget-object v4, Lwf/a;->a:Lwf/a$a;

    .line 102
    .line 103
    invoke-virtual {v2}, Lln/a;->p()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v5

    .line 107
    invoke-virtual {v2}, Lln/a;->l()I

    .line 108
    .line 109
    .line 110
    move-result v6

    .line 111
    invoke-virtual {v2}, Lln/a;->e()I

    .line 112
    .line 113
    .line 114
    move-result v7

    .line 115
    new-instance v8, Ljava/lang/StringBuilder;

    .line 116
    .line 117
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 118
    .line 119
    .line 120
    const-string v9, "stream-----playNext, name:"

    .line 121
    .line 122
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    const-string v5, ",nextSe:"

    .line 129
    .line 130
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    .line 132
    .line 133
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 134
    .line 135
    .line 136
    const-string v5, ",nextEp:"

    .line 137
    .line 138
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    .line 140
    .line 141
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 142
    .line 143
    .line 144
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object v5

    .line 148
    const-string v6, "VideoFloat"

    .line 149
    .line 150
    invoke-virtual {v4, v6, v5, v0}, Lwf/a$a;->c(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 151
    .line 152
    .line 153
    if-nez p1, :cond_4

    .line 154
    .line 155
    return v1

    .line 156
    :cond_4
    invoke-virtual {p1}, Ldw/a;->r()Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object v1

    .line 160
    invoke-virtual {v2}, Lln/a;->l()I

    .line 161
    .line 162
    .line 163
    move-result v4

    .line 164
    invoke-virtual {v2}, Lln/a;->e()I

    .line 165
    .line 166
    .line 167
    move-result v5

    .line 168
    new-instance v6, Lcom/transsion/videodetail/util/c;

    .line 169
    .line 170
    invoke-direct {v6, v2, p1, v3}, Lcom/transsion/videodetail/util/c;-><init>(Lln/a;Ldw/a;Lln/a;)V

    .line 171
    .line 172
    .line 173
    invoke-direct {p0, v1, v4, v5, v6}, Lcom/transsion/videodetail/util/StreamFloatManager;->l(Ljava/lang/String;IILkotlin/jvm/functions/Function1;)V

    .line 174
    .line 175
    .line 176
    return v0

    .line 177
    :cond_5
    return v1
.end method

.method public t(Ldw/a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/transsion/videodetail/util/StreamFloatManager;->u(Ldw/a;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public v(Ljava/util/List;)V
    .locals 7

    .line 1
    const-string v0, "list"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v1, Lwf/a;->a:Lwf/a$a;

    .line 7
    .line 8
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    new-instance v2, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 15
    .line 16
    .line 17
    const-string v3, "stream-----setPlayList:"

    .line 18
    .line 19
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    const/4 v5, 0x4

    .line 30
    const/4 v6, 0x0

    .line 31
    const-string v2, "VideoFloat"

    .line 32
    .line 33
    const/4 v4, 0x0

    .line 34
    invoke-static/range {v1 .. v6}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0}, Lcom/transsion/videofloat/manager/b;->a()Ljava/util/List;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0}, Lcom/transsion/videofloat/manager/b;->a()Ljava/util/List;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    check-cast p1, Ljava/util/Collection;

    .line 49
    .line 50
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 51
    .line 52
    .line 53
    return-void
.end method
