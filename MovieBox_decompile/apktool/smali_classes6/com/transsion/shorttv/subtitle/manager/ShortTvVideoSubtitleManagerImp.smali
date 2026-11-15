.class public final Lcom/transsion/shorttv/subtitle/manager/ShortTvVideoSubtitleManagerImp;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/transsion/shorttv/subtitle/manager/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/shorttv/subtitle/manager/ShortTvVideoSubtitleManagerImp$a;
    }
.end annotation


# static fields
.field public static final g:Lcom/transsion/shorttv/subtitle/manager/ShortTvVideoSubtitleManagerImp$a;


# instance fields
.field private b:Ljava/util/Set;

.field private final c:Ljava/lang/String;

.field private final d:Lkotlinx/coroutines/n0;

.field private final e:Lkotlin/Lazy;

.field private final f:Lcom/transsion/shorttv/subtitle/manager/ShortTvVideoSubtitleManagerImp$resDownloadListener$1;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/transsion/shorttv/subtitle/manager/ShortTvVideoSubtitleManagerImp$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/transsion/shorttv/subtitle/manager/ShortTvVideoSubtitleManagerImp$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/transsion/shorttv/subtitle/manager/ShortTvVideoSubtitleManagerImp;->g:Lcom/transsion/shorttv/subtitle/manager/ShortTvVideoSubtitleManagerImp$a;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/transsion/shorttv/subtitle/manager/ShortTvVideoSubtitleManagerImp;->b:Ljava/util/Set;

    .line 10
    .line 11
    const-class v0, Lcom/transsion/shorttv/subtitle/manager/ShortTvVideoSubtitleManagerImp;

    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iput-object v0, p0, Lcom/transsion/shorttv/subtitle/manager/ShortTvVideoSubtitleManagerImp;->c:Ljava/lang/String;

    .line 18
    .line 19
    invoke-static {}, Lkotlinx/coroutines/y0;->c()Lkotlinx/coroutines/a2;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-static {v0}, Lkotlinx/coroutines/o0;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/n0;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    iput-object v0, p0, Lcom/transsion/shorttv/subtitle/manager/ShortTvVideoSubtitleManagerImp;->d:Lkotlinx/coroutines/n0;

    .line 28
    .line 29
    new-instance v0, Lcom/transsion/shorttv/subtitle/manager/d;

    .line 30
    .line 31
    invoke-direct {v0}, Lcom/transsion/shorttv/subtitle/manager/d;-><init>()V

    .line 32
    .line 33
    .line 34
    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    iput-object v0, p0, Lcom/transsion/shorttv/subtitle/manager/ShortTvVideoSubtitleManagerImp;->e:Lkotlin/Lazy;

    .line 39
    .line 40
    new-instance v0, Lcom/transsion/shorttv/subtitle/manager/ShortTvVideoSubtitleManagerImp$resDownloadListener$1;

    .line 41
    .line 42
    invoke-direct {v0, p0}, Lcom/transsion/shorttv/subtitle/manager/ShortTvVideoSubtitleManagerImp$resDownloadListener$1;-><init>(Lcom/transsion/shorttv/subtitle/manager/ShortTvVideoSubtitleManagerImp;)V

    .line 43
    .line 44
    .line 45
    iput-object v0, p0, Lcom/transsion/shorttv/subtitle/manager/ShortTvVideoSubtitleManagerImp;->f:Lcom/transsion/shorttv/subtitle/manager/ShortTvVideoSubtitleManagerImp$resDownloadListener$1;

    .line 46
    .line 47
    return-void
.end method

.method public static synthetic h()Lur/d;
    .locals 1

    .line 1
    invoke-static {}, Lcom/transsion/shorttv/subtitle/manager/ShortTvVideoSubtitleManagerImp;->r()Lur/d;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static synthetic i()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lcom/transsion/shorttv/subtitle/manager/ShortTvVideoSubtitleManagerImp;->q()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static synthetic j(Lcom/transsion/shorttv/subtitle/manager/ShortTvVideoSubtitleManagerImp;Lkotlin/jvm/functions/Function1;Z)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/transsion/shorttv/subtitle/manager/ShortTvVideoSubtitleManagerImp;->o(Lcom/transsion/shorttv/subtitle/manager/ShortTvVideoSubtitleManagerImp;Lkotlin/jvm/functions/Function1;Z)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic k(Lcom/transsion/shorttv/subtitle/manager/ShortTvVideoSubtitleManagerImp;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/shorttv/subtitle/manager/ShortTvVideoSubtitleManagerImp;->c:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic l(Lcom/transsion/shorttv/subtitle/manager/ShortTvVideoSubtitleManagerImp;)Ljava/util/Set;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/shorttv/subtitle/manager/ShortTvVideoSubtitleManagerImp;->b:Ljava/util/Set;

    .line 2
    .line 3
    return-object p0
.end method

.method private final m(Lxr/a;Lkotlin/jvm/functions/Function1;)V
    .locals 23

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    invoke-virtual/range {p1 .. p1}, Lxr/a;->d()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    if-eqz v2, :cond_4

    .line 10
    .line 11
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    if-nez v2, :cond_0

    .line 16
    .line 17
    goto/16 :goto_0

    .line 18
    .line 19
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lxr/a;->d()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    invoke-static {v2}, Lkotlin/text/StringsKt;->x(Ljava/lang/String;)Ljava/lang/Long;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    if-nez v2, :cond_2

    .line 28
    .line 29
    sget-object v3, Lwf/a;->a:Lwf/a$a;

    .line 30
    .line 31
    iget-object v2, v0, Lcom/transsion/shorttv/subtitle/manager/ShortTvVideoSubtitleManagerImp;->c:Ljava/lang/String;

    .line 32
    .line 33
    new-instance v4, Ljava/lang/StringBuilder;

    .line 34
    .line 35
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    const-string v2, " checkDownloadSubtitle ,shorTvId is abnormal"

    .line 42
    .line 43
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v5

    .line 50
    const/4 v7, 0x4

    .line 51
    const/4 v8, 0x0

    .line 52
    const-string v4, "short_tv_subtitle"

    .line 53
    .line 54
    const/4 v6, 0x0

    .line 55
    invoke-static/range {v3 .. v8}, Lwf/a$a;->z(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 56
    .line 57
    .line 58
    if-eqz v1, :cond_1

    .line 59
    .line 60
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 61
    .line 62
    invoke-interface {v1, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    :cond_1
    return-void

    .line 66
    :cond_2
    sget-object v2, Lyg/l;->a:Lyg/l;

    .line 67
    .line 68
    invoke-virtual {v2}, Lyg/l;->e()Z

    .line 69
    .line 70
    .line 71
    move-result v2

    .line 72
    const/4 v3, 0x1

    .line 73
    const-string v4, "short_tv_subtitle"

    .line 74
    .line 75
    if-nez v2, :cond_3

    .line 76
    .line 77
    sget-object v1, Lwf/a;->a:Lwf/a$a;

    .line 78
    .line 79
    iget-object v2, v0, Lcom/transsion/shorttv/subtitle/manager/ShortTvVideoSubtitleManagerImp;->c:Ljava/lang/String;

    .line 80
    .line 81
    new-instance v5, Ljava/lang/StringBuilder;

    .line 82
    .line 83
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 84
    .line 85
    .line 86
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    const-string v2, " checkDownloadSubtitle ,\u65e0\u7f51\u7edc\u4e0d\u505a\u68c0\u6d4b"

    .line 90
    .line 91
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v2

    .line 98
    invoke-virtual {v1, v4, v2, v3}, Lwf/a$a;->x(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 99
    .line 100
    .line 101
    return-void

    .line 102
    :cond_3
    sget-object v2, Lwf/a;->a:Lwf/a$a;

    .line 103
    .line 104
    iget-object v5, v0, Lcom/transsion/shorttv/subtitle/manager/ShortTvVideoSubtitleManagerImp;->c:Ljava/lang/String;

    .line 105
    .line 106
    invoke-virtual/range {p1 .. p1}, Lxr/a;->h()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v6

    .line 110
    invoke-virtual/range {p1 .. p1}, Lxr/a;->e()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v7

    .line 114
    invoke-virtual/range {p1 .. p1}, Lxr/a;->g()Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v8

    .line 118
    new-instance v9, Ljava/lang/StringBuilder;

    .line 119
    .line 120
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 121
    .line 122
    .line 123
    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    const-string v5, " checkDownloadSubtitle, name = "

    .line 127
    .line 128
    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    .line 133
    .line 134
    const-string v5, " subjectId:"

    .line 135
    .line 136
    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    .line 138
    .line 139
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    .line 141
    .line 142
    const-string v5, " subtitleResId:"

    .line 143
    .line 144
    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    .line 146
    .line 147
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    .line 149
    .line 150
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object v5

    .line 154
    invoke-virtual {v2, v4, v5, v3}, Lwf/a$a;->c(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 155
    .line 156
    .line 157
    sget-object v6, Lcom/transsion/subtitle_download/SubtitleDownloadManager;->a:Lcom/transsion/subtitle_download/SubtitleDownloadManager;

    .line 158
    .line 159
    invoke-virtual/range {p1 .. p1}, Lxr/a;->e()Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object v7

    .line 163
    invoke-virtual/range {p1 .. p1}, Lxr/a;->g()Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object v8

    .line 167
    invoke-virtual/range {p1 .. p1}, Lxr/a;->d()Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object v10

    .line 171
    invoke-virtual/range {p1 .. p1}, Lxr/a;->f()Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    move-result-object v11

    .line 175
    invoke-virtual/range {p1 .. p1}, Lxr/a;->a()I

    .line 176
    .line 177
    .line 178
    move-result v14

    .line 179
    invoke-virtual/range {p1 .. p1}, Lxr/a;->c()I

    .line 180
    .line 181
    .line 182
    move-result v15

    .line 183
    invoke-virtual/range {p1 .. p1}, Lxr/a;->b()Ljava/lang/String;

    .line 184
    .line 185
    .line 186
    move-result-object v16

    .line 187
    new-instance v2, Lcom/transsion/shorttv/subtitle/manager/e;

    .line 188
    .line 189
    invoke-direct {v2, v0, v1}, Lcom/transsion/shorttv/subtitle/manager/e;-><init>(Lcom/transsion/shorttv/subtitle/manager/ShortTvVideoSubtitleManagerImp;Lkotlin/jvm/functions/Function1;)V

    .line 190
    .line 191
    .line 192
    const/4 v9, 0x0

    .line 193
    const/4 v12, 0x3

    .line 194
    const/4 v13, 0x0

    .line 195
    move-object/from16 v17, v2

    .line 196
    .line 197
    invoke-virtual/range {v6 .. v17}, Lcom/transsion/subtitle_download/SubtitleDownloadManager;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIILjava/lang/String;Lkotlin/jvm/functions/Function1;)V

    .line 198
    .line 199
    .line 200
    return-void

    .line 201
    :cond_4
    :goto_0
    sget-object v17, Lwf/a;->a:Lwf/a$a;

    .line 202
    .line 203
    iget-object v2, v0, Lcom/transsion/shorttv/subtitle/manager/ShortTvVideoSubtitleManagerImp;->c:Ljava/lang/String;

    .line 204
    .line 205
    new-instance v3, Ljava/lang/StringBuilder;

    .line 206
    .line 207
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 208
    .line 209
    .line 210
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    .line 212
    .line 213
    const-string v2, " checkDownloadSubtitle fail\uff0c has no shorTvId"

    .line 214
    .line 215
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 216
    .line 217
    .line 218
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 219
    .line 220
    .line 221
    move-result-object v19

    .line 222
    const/16 v21, 0x4

    .line 223
    .line 224
    const/16 v22, 0x0

    .line 225
    .line 226
    const-string v18, "short_tv_subtitle"

    .line 227
    .line 228
    const/16 v20, 0x0

    .line 229
    .line 230
    invoke-static/range {v17 .. v22}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 231
    .line 232
    .line 233
    if-eqz v1, :cond_5

    .line 234
    .line 235
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 236
    .line 237
    invoke-interface {v1, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    .line 239
    .line 240
    :cond_5
    return-void
.end method

.method static synthetic n(Lcom/transsion/shorttv/subtitle/manager/ShortTvVideoSubtitleManagerImp;Lxr/a;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)V
    .locals 0

    .line 1
    and-int/lit8 p3, p3, 0x2

    .line 2
    .line 3
    if-eqz p3, :cond_0

    .line 4
    .line 5
    const/4 p2, 0x0

    .line 6
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/transsion/shorttv/subtitle/manager/ShortTvVideoSubtitleManagerImp;->m(Lxr/a;Lkotlin/jvm/functions/Function1;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method private static final o(Lcom/transsion/shorttv/subtitle/manager/ShortTvVideoSubtitleManagerImp;Lkotlin/jvm/functions/Function1;Z)Lkotlin/Unit;
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/transsion/shorttv/subtitle/manager/ShortTvVideoSubtitleManagerImp;->d:Lkotlinx/coroutines/n0;

    .line 2
    .line 3
    new-instance v3, Lcom/transsion/shorttv/subtitle/manager/ShortTvVideoSubtitleManagerImp$checkDownloadSubtitle$1$1;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-direct {v3, p1, p2, p0, v1}, Lcom/transsion/shorttv/subtitle/manager/ShortTvVideoSubtitleManagerImp$checkDownloadSubtitle$1$1;-><init>(Lkotlin/jvm/functions/Function1;ZLcom/transsion/shorttv/subtitle/manager/ShortTvVideoSubtitleManagerImp;Lkotlin/coroutines/Continuation;)V

    .line 7
    .line 8
    .line 9
    const/4 v4, 0x3

    .line 10
    const/4 v5, 0x0

    .line 11
    const/4 v2, 0x0

    .line 12
    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 13
    .line 14
    .line 15
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 16
    .line 17
    return-object p0
.end method

.method private final p()Lur/d;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/shorttv/subtitle/manager/ShortTvVideoSubtitleManagerImp;->e:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lur/d;

    .line 8
    .line 9
    return-object v0
.end method

.method private static final q()Ljava/lang/String;
    .locals 3

    .line 1
    sget-object v0, Lcom/transsion/shorttv/utils/h;->a:Lcom/transsion/shorttv/utils/h;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/transsion/shorttv/utils/h;->e()Lcom/tencent/mmkv/MMKV;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "k_language_short_name"

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    invoke-virtual {v0, v1, v2}, Lcom/tencent/mmkv/MMKV;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    return-object v0
.end method

.method private static final r()Lur/d;
    .locals 1

    .line 1
    sget-object v0, Lpq/c;->a:Lpq/c;

    .line 2
    .line 3
    invoke-virtual {v0}, Lpq/c;->c()Lvr/a;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-interface {v0}, Lvr/a;->b()Lur/d;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 15
    :goto_0
    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 5

    .line 1
    instance-of v0, p2, Lcom/transsion/shorttv/subtitle/manager/ShortTvVideoSubtitleManagerImp$getSubtitleList$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p2

    .line 6
    check-cast v0, Lcom/transsion/shorttv/subtitle/manager/ShortTvVideoSubtitleManagerImp$getSubtitleList$1;

    .line 7
    .line 8
    iget v1, v0, Lcom/transsion/shorttv/subtitle/manager/ShortTvVideoSubtitleManagerImp$getSubtitleList$1;->label:I

    .line 9
    .line 10
    const/high16 v2, -0x80000000

    .line 11
    .line 12
    and-int v3, v1, v2

    .line 13
    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    sub-int/2addr v1, v2

    .line 17
    iput v1, v0, Lcom/transsion/shorttv/subtitle/manager/ShortTvVideoSubtitleManagerImp$getSubtitleList$1;->label:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lcom/transsion/shorttv/subtitle/manager/ShortTvVideoSubtitleManagerImp$getSubtitleList$1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p2}, Lcom/transsion/shorttv/subtitle/manager/ShortTvVideoSubtitleManagerImp$getSubtitleList$1;-><init>(Lcom/transsion/shorttv/subtitle/manager/ShortTvVideoSubtitleManagerImp;Lkotlin/coroutines/Continuation;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p2, v0, Lcom/transsion/shorttv/subtitle/manager/ShortTvVideoSubtitleManagerImp$getSubtitleList$1;->result:Ljava/lang/Object;

    .line 26
    .line 27
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iget v2, v0, Lcom/transsion/shorttv/subtitle/manager/ShortTvVideoSubtitleManagerImp$getSubtitleList$1;->label:I

    .line 32
    .line 33
    const/4 v3, 0x1

    .line 34
    if-eqz v2, :cond_2

    .line 35
    .line 36
    if-ne v2, v3, :cond_1

    .line 37
    .line 38
    iget-object p1, v0, Lcom/transsion/shorttv/subtitle/manager/ShortTvVideoSubtitleManagerImp$getSubtitleList$1;->L$0:Ljava/lang/Object;

    .line 39
    .line 40
    check-cast p1, Ljava/util/List;

    .line 41
    .line 42
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    goto :goto_1

    .line 46
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 47
    .line 48
    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 49
    .line 50
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    throw p1

    .line 54
    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 55
    .line 56
    .line 57
    new-instance p2, Ljava/util/ArrayList;

    .line 58
    .line 59
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 60
    .line 61
    .line 62
    sget-object v2, Lcom/transsion/subtitle_download/SubtitleDownloadManager;->a:Lcom/transsion/subtitle_download/SubtitleDownloadManager;

    .line 63
    .line 64
    iput-object p2, v0, Lcom/transsion/shorttv/subtitle/manager/ShortTvVideoSubtitleManagerImp$getSubtitleList$1;->L$0:Ljava/lang/Object;

    .line 65
    .line 66
    iput v3, v0, Lcom/transsion/shorttv/subtitle/manager/ShortTvVideoSubtitleManagerImp$getSubtitleList$1;->label:I

    .line 67
    .line 68
    invoke-virtual {v2, p1, v0}, Lcom/transsion/subtitle_download/SubtitleDownloadManager;->j(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    if-ne p1, v1, :cond_3

    .line 73
    .line 74
    return-object v1

    .line 75
    :cond_3
    move-object v4, p2

    .line 76
    move-object p2, p1

    .line 77
    move-object p1, v4

    .line 78
    :goto_1
    check-cast p2, Ljava/util/List;

    .line 79
    .line 80
    if-eqz p2, :cond_4

    .line 81
    .line 82
    check-cast p2, Ljava/lang/Iterable;

    .line 83
    .line 84
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 85
    .line 86
    .line 87
    move-result-object p2

    .line 88
    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 89
    .line 90
    .line 91
    move-result v0

    .line 92
    if-eqz v0, :cond_4

    .line 93
    .line 94
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    check-cast v0, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;

    .line 99
    .line 100
    new-instance v1, Lxr/b;

    .line 101
    .line 102
    invoke-direct {v1, v0}, Lxr/b;-><init>(Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;)V

    .line 103
    .line 104
    .line 105
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 106
    .line 107
    .line 108
    goto :goto_2

    .line 109
    :cond_4
    return-object p1
.end method

.method public b(Lcom/transsion/subtitle_download/a;)V
    .locals 1

    .line 1
    const-string v0, "listener"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lcom/transsion/subtitle_download/SubtitleDownloadManager;->a:Lcom/transsion/subtitle_download/SubtitleDownloadManager;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Lcom/transsion/subtitle_download/SubtitleDownloadManager;->b(Lcom/transsion/subtitle_download/a;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public c(Lcom/transsion/subtitle_download/a;)V
    .locals 1

    .line 1
    const-string v0, "listener"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lcom/transsion/subtitle_download/SubtitleDownloadManager;->a:Lcom/transsion/subtitle_download/SubtitleDownloadManager;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Lcom/transsion/subtitle_download/SubtitleDownloadManager;->s(Lcom/transsion/subtitle_download/a;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public d(Lxr/b;)V
    .locals 1

    .line 1
    const-string v0, "bean"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lcom/transsion/subtitle_download/SubtitleDownloadManager;->a:Lcom/transsion/subtitle_download/SubtitleDownloadManager;

    .line 7
    .line 8
    invoke-virtual {p1}, Lxr/b;->a()Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    invoke-virtual {v0, p1}, Lcom/transsion/subtitle_download/SubtitleDownloadManager;->d(Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public e(Lxr/a;Lkotlin/jvm/functions/Function1;)V
    .locals 1

    .line 1
    const-string v0, "bean"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, p1, p2}, Lcom/transsion/shorttv/subtitle/manager/ShortTvVideoSubtitleManagerImp;->m(Lxr/a;Lkotlin/jvm/functions/Function1;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public f(Lzr/a;)V
    .locals 1

    .line 1
    const-string v0, "listener"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/transsion/shorttv/subtitle/manager/ShortTvVideoSubtitleManagerImp;->b:Ljava/util/Set;

    .line 7
    .line 8
    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public g(Lzr/a;)V
    .locals 1

    .line 1
    const-string v0, "listener"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/transsion/shorttv/subtitle/manager/ShortTvVideoSubtitleManagerImp;->b:Ljava/util/Set;

    .line 7
    .line 8
    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public init()V
    .locals 3

    .line 1
    sget-object v0, Lcom/transsion/subtitle_download/bean/SubtitleAppType;->NOVEL:Lcom/transsion/subtitle_download/bean/SubtitleAppType;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/transsion/subtitle_download/bean/SubtitleAppType;->getValue()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const-string v2, "mb"

    .line 8
    .line 9
    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    sget-object v0, Lcom/transsion/subtitle_download/bean/SubtitleAppType;->MB:Lcom/transsion/subtitle_download/bean/SubtitleAppType;

    .line 17
    .line 18
    :goto_0
    sget-object v1, Lcom/transsion/subtitle_download/SubtitleDownloadManager;->a:Lcom/transsion/subtitle_download/SubtitleDownloadManager;

    .line 19
    .line 20
    invoke-virtual {v1, v0}, Lcom/transsion/subtitle_download/SubtitleDownloadManager;->k(Lcom/transsion/subtitle_download/bean/SubtitleAppType;)V

    .line 21
    .line 22
    .line 23
    new-instance v0, Lcom/transsion/shorttv/subtitle/manager/c;

    .line 24
    .line 25
    invoke-direct {v0}, Lcom/transsion/shorttv/subtitle/manager/c;-><init>()V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1, v0}, Lcom/transsion/subtitle_download/SubtitleDownloadManager;->l(Lkotlin/jvm/functions/Function0;)V

    .line 29
    .line 30
    .line 31
    invoke-direct {p0}, Lcom/transsion/shorttv/subtitle/manager/ShortTvVideoSubtitleManagerImp;->p()Lur/d;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    if-eqz v0, :cond_1

    .line 36
    .line 37
    iget-object v1, p0, Lcom/transsion/shorttv/subtitle/manager/ShortTvVideoSubtitleManagerImp;->f:Lcom/transsion/shorttv/subtitle/manager/ShortTvVideoSubtitleManagerImp$resDownloadListener$1;

    .line 38
    .line 39
    invoke-interface {v0, v1}, Lur/d;->l(Lur/n;)V

    .line 40
    .line 41
    .line 42
    :cond_1
    return-void
.end method
