.class public final Lex/e;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lex/e$a;
    }
.end annotation


# static fields
.field public static final c:Lex/e$a;

.field private static final d:Lkotlin/Lazy;


# instance fields
.field private final a:Ljava/util/HashMap;

.field private final b:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lex/e$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lex/e$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lex/e;->c:Lex/e$a;

    .line 8
    .line 9
    new-instance v0, Lex/b;

    .line 10
    .line 11
    invoke-direct {v0}, Lex/b;-><init>()V

    .line 12
    .line 13
    .line 14
    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    sput-object v0, Lex/e;->d:Lkotlin/Lazy;

    .line 19
    .line 20
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/HashMap;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lex/e;->a:Ljava/util/HashMap;

    .line 10
    .line 11
    new-instance v0, Lex/c;

    .line 12
    .line 13
    invoke-direct {v0}, Lex/c;-><init>()V

    .line 14
    .line 15
    .line 16
    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    iput-object v0, p0, Lex/e;->b:Lkotlin/Lazy;

    .line 21
    .line 22
    return-void
.end method

.method public static synthetic a()Lex/e;
    .locals 1

    .line 1
    invoke-static {}, Lex/e;->h()Lex/e;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static synthetic b()Lqx/a;
    .locals 1

    .line 1
    invoke-static {}, Lex/e;->i()Lqx/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static synthetic c(Lex/e;Lcom/transsion/baselib/db/download/DownloadBean;Lkotlin/jvm/functions/Function0;Ljava/lang/String;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lex/e;->l(Lex/e;Lcom/transsion/baselib/db/download/DownloadBean;Lkotlin/jvm/functions/Function0;Ljava/lang/String;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic d()Lkotlin/Lazy;
    .locals 1

    .line 1
    sget-object v0, Lex/e;->d:Lkotlin/Lazy;

    .line 2
    .line 3
    return-object v0
.end method

.method private final e(Lex/g;Lcom/transsion/baselib/db/download/DownloadBean;JLjava/util/HashMap;)V
    .locals 8

    .line 1
    invoke-virtual {p1}, Lex/g;->c()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    sub-long v0, p3, v0

    .line 6
    .line 7
    invoke-virtual {p1}, Lex/g;->c()J

    .line 8
    .line 9
    .line 10
    move-result-wide v2

    .line 11
    const-wide/16 v4, 0x0

    .line 12
    .line 13
    cmp-long v2, v2, v4

    .line 14
    .line 15
    if-lez v2, :cond_0

    .line 16
    .line 17
    cmp-long v2, v0, v4

    .line 18
    .line 19
    if-lez v2, :cond_0

    .line 20
    .line 21
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    .line 22
    .line 23
    const-wide/16 v6, 0x2

    .line 24
    .line 25
    invoke-virtual {v2, v6, v7}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    .line 26
    .line 27
    .line 28
    move-result-wide v2

    .line 29
    cmp-long v2, v0, v2

    .line 30
    .line 31
    if-gez v2, :cond_0

    .line 32
    .line 33
    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/DownloadBean;->getSessionTime()J

    .line 34
    .line 35
    .line 36
    move-result-wide v2

    .line 37
    add-long/2addr v2, v0

    .line 38
    invoke-virtual {p2, v2, v3}, Lcom/transsion/baselib/db/download/DownloadBean;->setSessionTime(J)V

    .line 39
    .line 40
    .line 41
    :cond_0
    invoke-virtual {p1, v4, v5}, Lex/g;->f(J)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/DownloadBean;->getCreateAt()J

    .line 45
    .line 46
    .line 47
    move-result-wide v0

    .line 48
    sub-long/2addr p3, v0

    .line 49
    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    const-string p3, "full_time"

    .line 54
    .line 55
    invoke-interface {p5, p3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/DownloadBean;->getSessionTime()J

    .line 59
    .line 60
    .line 61
    move-result-wide p1

    .line 62
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    const-string p2, "real_time"

    .line 67
    .line 68
    invoke-interface {p5, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    return-void
.end method

.method private final f(Lex/g;Ljava/util/HashMap;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Lex/g;->a()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const-string v1, "fail_times"

    .line 10
    .line 11
    invoke-interface {p2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1}, Lex/g;->b()I

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    const-string v0, "pause_times"

    .line 23
    .line 24
    invoke-interface {p2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method private final g()Lqx/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lex/e;->b:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lqx/a;

    .line 8
    .line 9
    return-object v0
.end method

.method private static final h()Lex/e;
    .locals 1

    .line 1
    new-instance v0, Lex/e;

    .line 2
    .line 3
    invoke-direct {v0}, Lex/e;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method private static final i()Lqx/a;
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 3
    .line 4
    const-class v1, Lqx/a;

    .line 5
    .line 6
    invoke-static {v1, v0}, Lcom/therouter/TheRouter;->d(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Lqx/a;

    .line 11
    .line 12
    return-object v0
.end method

.method private static final l(Lex/e;Lcom/transsion/baselib/db/download/DownloadBean;Lkotlin/jvm/functions/Function0;Ljava/lang/String;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p3}, Lex/e;->m(Lcom/transsion/baselib/db/download/DownloadBean;Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    invoke-interface {p2}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 8
    .line 9
    return-object p0
.end method

.method private final m(Lcom/transsion/baselib/db/download/DownloadBean;Ljava/lang/String;)V
    .locals 8

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lex/e;->g()Lqx/a;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    invoke-interface {v1}, Lqx/a;->i()Lcom/transsnet/loginapi/bean/UserInfo;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 v1, 0x0

    .line 18
    :goto_0
    const-string v2, "opt_type"

    .line 19
    .line 20
    const-string v3, "re_download"

    .line 21
    .line 22
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getUrl()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    const-string v3, "url"

    .line 30
    .line 31
    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getResourceId()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    const-string v3, ""

    .line 39
    .line 40
    if-nez v2, :cond_1

    .line 41
    .line 42
    move-object v2, v3

    .line 43
    :cond_1
    const-string v4, "resource_id"

    .line 44
    .line 45
    invoke-interface {v0, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getSubjectId()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    if-nez v2, :cond_2

    .line 53
    .line 54
    move-object v2, v3

    .line 55
    :cond_2
    const-string v4, "subject_id"

    .line 56
    .line 57
    invoke-interface {v0, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getPostId()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v2

    .line 64
    if-nez v2, :cond_3

    .line 65
    .line 66
    move-object v2, v3

    .line 67
    :cond_3
    const-string v4, "post_id"

    .line 68
    .line 69
    invoke-interface {v0, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getType()I

    .line 73
    .line 74
    .line 75
    move-result v2

    .line 76
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v2

    .line 80
    const-string v4, "media_type"

    .line 81
    .line 82
    invoke-interface {v0, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    const-string v2, "status"

    .line 86
    .line 87
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v4

    .line 91
    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getSize()Ljava/lang/Long;

    .line 95
    .line 96
    .line 97
    move-result-object v2

    .line 98
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v2

    .line 102
    const-string v4, "size"

    .line 103
    .line 104
    invoke-interface {v0, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getProgress()J

    .line 108
    .line 109
    .line 110
    move-result-wide v4

    .line 111
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v2

    .line 115
    const-string v4, "progress"

    .line 116
    .line 117
    invoke-interface {v0, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    .line 119
    .line 120
    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getLastPageFrom()Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v2

    .line 124
    if-nez v2, :cond_4

    .line 125
    .line 126
    move-object v2, v3

    .line 127
    :cond_4
    const-string v4, "page_from"

    .line 128
    .line 129
    invoke-interface {v0, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    .line 131
    .line 132
    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getTaskId()Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v2

    .line 136
    if-nez v2, :cond_5

    .line 137
    .line 138
    move-object v2, v3

    .line 139
    :cond_5
    const-string v4, "task_id"

    .line 140
    .line 141
    invoke-interface {v0, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    .line 143
    .line 144
    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getUrlCreateAt()J

    .line 145
    .line 146
    .line 147
    move-result-wide v4

    .line 148
    const-wide/16 v6, 0x0

    .line 149
    .line 150
    cmp-long v2, v4, v6

    .line 151
    .line 152
    if-nez v2, :cond_6

    .line 153
    .line 154
    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getCreateAt()J

    .line 155
    .line 156
    .line 157
    move-result-wide v4

    .line 158
    goto :goto_1

    .line 159
    :cond_6
    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getUrlCreateAt()J

    .line 160
    .line 161
    .line 162
    move-result-wide v4

    .line 163
    :goto_1
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object v2

    .line 167
    const-string v4, "url_create_at"

    .line 168
    .line 169
    invoke-interface {v0, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    .line 171
    .line 172
    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getOps()Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    move-result-object v2

    .line 176
    if-nez v2, :cond_7

    .line 177
    .line 178
    move-object v2, v3

    .line 179
    :cond_7
    const-string v4, "ops"

    .line 180
    .line 181
    invoke-interface {v0, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    .line 183
    .line 184
    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getPath()Ljava/lang/String;

    .line 185
    .line 186
    .line 187
    move-result-object v2

    .line 188
    if-nez v2, :cond_8

    .line 189
    .line 190
    move-object v2, v3

    .line 191
    :cond_8
    const-string v4, "path"

    .line 192
    .line 193
    invoke-interface {v0, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    .line 195
    .line 196
    if-eqz v1, :cond_9

    .line 197
    .line 198
    invoke-virtual {v1}, Lcom/transsnet/loginapi/bean/UserInfo;->getUsername()Ljava/lang/String;

    .line 199
    .line 200
    .line 201
    move-result-object v2

    .line 202
    if-nez v2, :cond_a

    .line 203
    .line 204
    :cond_9
    move-object v2, v3

    .line 205
    :cond_a
    const-string v4, "user_name"

    .line 206
    .line 207
    invoke-interface {v0, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    .line 209
    .line 210
    if-eqz v1, :cond_b

    .line 211
    .line 212
    invoke-virtual {v1}, Lcom/transsnet/loginapi/bean/UserInfo;->getUserId()Ljava/lang/String;

    .line 213
    .line 214
    .line 215
    move-result-object v1

    .line 216
    if-nez v1, :cond_c

    .line 217
    .line 218
    :cond_b
    move-object v1, v3

    .line 219
    :cond_c
    const-string v2, "user_id"

    .line 220
    .line 221
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    .line 223
    .line 224
    if-nez p2, :cond_d

    .line 225
    .line 226
    move-object p2, v3

    .line 227
    :cond_d
    const-string v1, "log_url"

    .line 228
    .line 229
    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 230
    .line 231
    .line 232
    sget-object p2, Lqi/h;->a:Lqi/h;

    .line 233
    .line 234
    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getPageFrom()Ljava/lang/String;

    .line 235
    .line 236
    .line 237
    move-result-object p1

    .line 238
    if-nez p1, :cond_e

    .line 239
    .line 240
    const-string p1, "download_link"

    .line 241
    .line 242
    :cond_e
    const-string v1, "app_perf"

    .line 243
    .line 244
    invoke-virtual {p2, p1, v1, v0}, Lqi/h;->q(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 245
    .line 246
    .line 247
    return-void
.end method

.method private final n(Lkotlin/jvm/functions/Function1;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/transsion/upload/log/UploadLoggerManager;->a:Lcom/transsion/upload/log/UploadLoggerManager;

    .line 2
    .line 3
    new-instance v1, Lex/e$b;

    .line 4
    .line 5
    invoke-direct {v1, p1}, Lex/e$b;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Lcom/transsion/upload/log/UploadLoggerManager;->k(Luu/a;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final j(Lcom/transsion/baselib/db/download/DownloadBean;Lax/b;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 20

    .line 1
    move-object/from16 v7, p0

    .line 2
    .line 3
    move-object/from16 v8, p1

    .line 4
    .line 5
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getResourceId()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getStatus()I

    .line 10
    .line 11
    .line 12
    move-result v9

    .line 13
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getTaskId()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v10

    .line 17
    new-instance v1, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    sget-object v2, Lcom/transsion/baseui/util/c;->a:Lcom/transsion/baseui/util/c;

    .line 37
    .line 38
    const-wide/16 v3, 0x7d0

    .line 39
    .line 40
    invoke-virtual {v2, v1, v3, v4}, Lcom/transsion/baseui/util/c;->a(IJ)Z

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    if-eqz v1, :cond_0

    .line 45
    .line 46
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 47
    .line 48
    return-object v0

    .line 49
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 50
    .line 51
    .line 52
    move-result-wide v4

    .line 53
    iget-object v1, v7, Lex/e;->a:Ljava/util/HashMap;

    .line 54
    .line 55
    invoke-virtual {v1, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    check-cast v1, Lex/g;

    .line 60
    .line 61
    if-nez v1, :cond_1

    .line 62
    .line 63
    new-instance v1, Lex/g;

    .line 64
    .line 65
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getUrl()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v2

    .line 69
    invoke-direct {v1, v2, v10, v9}, Lex/g;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 70
    .line 71
    .line 72
    iget-object v2, v7, Lex/e;->a:Ljava/util/HashMap;

    .line 73
    .line 74
    invoke-interface {v2, v10, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    :cond_1
    move-object v2, v1

    .line 78
    new-instance v11, Ljava/util/HashMap;

    .line 79
    .line 80
    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    .line 81
    .line 82
    .line 83
    const/4 v14, 0x6

    .line 84
    const/4 v15, 0x5

    .line 85
    const/4 v6, 0x2

    .line 86
    const-wide/16 v12, 0x0

    .line 87
    .line 88
    const/4 v3, 0x1

    .line 89
    if-eq v9, v3, :cond_a

    .line 90
    .line 91
    if-eq v9, v6, :cond_7

    .line 92
    .line 93
    const/4 v1, 0x4

    .line 94
    if-eq v9, v1, :cond_6

    .line 95
    .line 96
    if-eq v9, v15, :cond_5

    .line 97
    .line 98
    if-eq v9, v14, :cond_4

    .line 99
    .line 100
    const/4 v1, 0x7

    .line 101
    if-eq v9, v1, :cond_2

    .line 102
    .line 103
    move v14, v3

    .line 104
    move v15, v6

    .line 105
    goto/16 :goto_1

    .line 106
    .line 107
    :cond_2
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getReportStatus()I

    .line 108
    .line 109
    .line 110
    move-result v1

    .line 111
    if-ne v1, v15, :cond_3

    .line 112
    .line 113
    const/16 v9, 0x39

    .line 114
    .line 115
    :cond_3
    move-object/from16 v1, p0

    .line 116
    .line 117
    move v10, v3

    .line 118
    move-object/from16 v3, p1

    .line 119
    .line 120
    move v15, v6

    .line 121
    move-object v6, v11

    .line 122
    invoke-direct/range {v1 .. v6}, Lex/e;->e(Lex/g;Lcom/transsion/baselib/db/download/DownloadBean;JLjava/util/HashMap;)V

    .line 123
    .line 124
    .line 125
    :goto_0
    move v14, v10

    .line 126
    goto/16 :goto_1

    .line 127
    .line 128
    :cond_4
    move v10, v3

    .line 129
    move v15, v6

    .line 130
    invoke-virtual {v2}, Lex/g;->a()I

    .line 131
    .line 132
    .line 133
    move-result v1

    .line 134
    add-int/2addr v1, v10

    .line 135
    invoke-virtual {v2, v1}, Lex/g;->d(I)V

    .line 136
    .line 137
    .line 138
    invoke-virtual {v2, v12, v13}, Lex/g;->f(J)V

    .line 139
    .line 140
    .line 141
    invoke-virtual {v8, v14}, Lcom/transsion/baselib/db/download/DownloadBean;->setReportStatus(I)V

    .line 142
    .line 143
    .line 144
    invoke-direct {v7, v2, v11}, Lex/e;->f(Lex/g;Ljava/util/HashMap;)V

    .line 145
    .line 146
    .line 147
    goto :goto_0

    .line 148
    :cond_5
    move v15, v6

    .line 149
    move v6, v3

    .line 150
    move-object/from16 v1, p0

    .line 151
    .line 152
    move-object/from16 v3, p1

    .line 153
    .line 154
    move v14, v6

    .line 155
    move-object v6, v11

    .line 156
    invoke-direct/range {v1 .. v6}, Lex/e;->e(Lex/g;Lcom/transsion/baselib/db/download/DownloadBean;JLjava/util/HashMap;)V

    .line 157
    .line 158
    .line 159
    iget-object v1, v7, Lex/e;->a:Ljava/util/HashMap;

    .line 160
    .line 161
    invoke-virtual {v1, v10}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    .line 163
    .line 164
    goto :goto_1

    .line 165
    :cond_6
    move v14, v3

    .line 166
    move v15, v6

    .line 167
    invoke-virtual {v8, v1}, Lcom/transsion/baselib/db/download/DownloadBean;->setReportStatus(I)V

    .line 168
    .line 169
    .line 170
    invoke-virtual {v2}, Lex/g;->b()I

    .line 171
    .line 172
    .line 173
    move-result v1

    .line 174
    add-int/2addr v1, v14

    .line 175
    invoke-virtual {v2, v1}, Lex/g;->e(I)V

    .line 176
    .line 177
    .line 178
    invoke-virtual {v2, v12, v13}, Lex/g;->f(J)V

    .line 179
    .line 180
    .line 181
    invoke-direct {v7, v2, v11}, Lex/e;->f(Lex/g;Ljava/util/HashMap;)V

    .line 182
    .line 183
    .line 184
    goto :goto_1

    .line 185
    :cond_7
    move v14, v3

    .line 186
    move v15, v6

    .line 187
    invoke-virtual {v2}, Lex/g;->c()J

    .line 188
    .line 189
    .line 190
    move-result-wide v16

    .line 191
    sub-long v16, v4, v16

    .line 192
    .line 193
    invoke-virtual {v2}, Lex/g;->c()J

    .line 194
    .line 195
    .line 196
    move-result-wide v18

    .line 197
    cmp-long v1, v18, v12

    .line 198
    .line 199
    if-lez v1, :cond_8

    .line 200
    .line 201
    cmp-long v1, v16, v12

    .line 202
    .line 203
    if-lez v1, :cond_8

    .line 204
    .line 205
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    .line 206
    .line 207
    const-wide/16 v12, 0x2

    .line 208
    .line 209
    invoke-virtual {v1, v12, v13}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    .line 210
    .line 211
    .line 212
    move-result-wide v12

    .line 213
    cmp-long v1, v16, v12

    .line 214
    .line 215
    if-gez v1, :cond_8

    .line 216
    .line 217
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getSessionTime()J

    .line 218
    .line 219
    .line 220
    move-result-wide v12

    .line 221
    add-long v12, v12, v16

    .line 222
    .line 223
    invoke-virtual {v8, v12, v13}, Lcom/transsion/baselib/db/download/DownloadBean;->setSessionTime(J)V

    .line 224
    .line 225
    .line 226
    :cond_8
    invoke-virtual {v2, v4, v5}, Lex/g;->f(J)V

    .line 227
    .line 228
    .line 229
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getReportStatus()I

    .line 230
    .line 231
    .line 232
    move-result v1

    .line 233
    if-lt v1, v15, :cond_9

    .line 234
    .line 235
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 236
    .line 237
    return-object v0

    .line 238
    :cond_9
    invoke-virtual {v8, v15}, Lcom/transsion/baselib/db/download/DownloadBean;->setReportStatus(I)V

    .line 239
    .line 240
    .line 241
    goto :goto_1

    .line 242
    :cond_a
    move v14, v3

    .line 243
    move v15, v6

    .line 244
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getReportStatus()I

    .line 245
    .line 246
    .line 247
    move-result v1

    .line 248
    if-lt v1, v14, :cond_b

    .line 249
    .line 250
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 251
    .line 252
    return-object v0

    .line 253
    :cond_b
    invoke-virtual {v8, v14}, Lcom/transsion/baselib/db/download/DownloadBean;->setReportStatus(I)V

    .line 254
    .line 255
    .line 256
    :goto_1
    const-string v1, "url"

    .line 257
    .line 258
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getUrl()Ljava/lang/String;

    .line 259
    .line 260
    .line 261
    move-result-object v2

    .line 262
    invoke-interface {v11, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 263
    .line 264
    .line 265
    const-string v1, "resource_id"

    .line 266
    .line 267
    invoke-interface {v11, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 268
    .line 269
    .line 270
    const-string v0, "subject_id"

    .line 271
    .line 272
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getSubjectId()Ljava/lang/String;

    .line 273
    .line 274
    .line 275
    move-result-object v1

    .line 276
    invoke-interface {v11, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 277
    .line 278
    .line 279
    const-string v0, "post_id"

    .line 280
    .line 281
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getPostId()Ljava/lang/String;

    .line 282
    .line 283
    .line 284
    move-result-object v1

    .line 285
    invoke-interface {v11, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 286
    .line 287
    .line 288
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getType()I

    .line 289
    .line 290
    .line 291
    move-result v0

    .line 292
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 293
    .line 294
    .line 295
    move-result-object v0

    .line 296
    const-string v1, "media_type"

    .line 297
    .line 298
    invoke-interface {v11, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 299
    .line 300
    .line 301
    const-string v0, "status"

    .line 302
    .line 303
    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 304
    .line 305
    .line 306
    move-result-object v1

    .line 307
    invoke-interface {v11, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 308
    .line 309
    .line 310
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getSize()Ljava/lang/Long;

    .line 311
    .line 312
    .line 313
    move-result-object v0

    .line 314
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 315
    .line 316
    .line 317
    move-result-object v0

    .line 318
    const-string v1, "size"

    .line 319
    .line 320
    invoke-interface {v11, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 321
    .line 322
    .line 323
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getProgress()J

    .line 324
    .line 325
    .line 326
    move-result-wide v0

    .line 327
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 328
    .line 329
    .line 330
    move-result-object v0

    .line 331
    const-string v1, "progress"

    .line 332
    .line 333
    invoke-interface {v11, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 334
    .line 335
    .line 336
    const-string v0, "page_from"

    .line 337
    .line 338
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getLastPageFrom()Ljava/lang/String;

    .line 339
    .line 340
    .line 341
    move-result-object v1

    .line 342
    invoke-interface {v11, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 343
    .line 344
    .line 345
    const-string v0, "task_id"

    .line 346
    .line 347
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getTaskId()Ljava/lang/String;

    .line 348
    .line 349
    .line 350
    move-result-object v1

    .line 351
    invoke-interface {v11, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 352
    .line 353
    .line 354
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getUrlCreateAt()J

    .line 355
    .line 356
    .line 357
    move-result-wide v0

    .line 358
    const-wide/16 v2, 0x0

    .line 359
    .line 360
    cmp-long v0, v0, v2

    .line 361
    .line 362
    if-nez v0, :cond_c

    .line 363
    .line 364
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getCreateAt()J

    .line 365
    .line 366
    .line 367
    move-result-wide v0

    .line 368
    goto :goto_2

    .line 369
    :cond_c
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getUrlCreateAt()J

    .line 370
    .line 371
    .line 372
    move-result-wide v0

    .line 373
    :goto_2
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 374
    .line 375
    .line 376
    move-result-object v0

    .line 377
    const-string v1, "url_create_at"

    .line 378
    .line 379
    invoke-interface {v11, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 380
    .line 381
    .line 382
    const-string v0, "ops"

    .line 383
    .line 384
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getOps()Ljava/lang/String;

    .line 385
    .line 386
    .line 387
    move-result-object v1

    .line 388
    invoke-interface {v11, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 389
    .line 390
    .line 391
    const-string v0, "path"

    .line 392
    .line 393
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getPath()Ljava/lang/String;

    .line 394
    .line 395
    .line 396
    move-result-object v1

    .line 397
    invoke-interface {v11, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 398
    .line 399
    .line 400
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getEp()I

    .line 401
    .line 402
    .line 403
    move-result v0

    .line 404
    if-lez v0, :cond_d

    .line 405
    .line 406
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getEp()I

    .line 407
    .line 408
    .line 409
    move-result v0

    .line 410
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 411
    .line 412
    .line 413
    move-result-object v0

    .line 414
    const-string v1, "ep"

    .line 415
    .line 416
    invoke-interface {v11, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 417
    .line 418
    .line 419
    :cond_d
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getSe()I

    .line 420
    .line 421
    .line 422
    move-result v0

    .line 423
    if-lez v0, :cond_e

    .line 424
    .line 425
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getSe()I

    .line 426
    .line 427
    .line 428
    move-result v0

    .line 429
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 430
    .line 431
    .line 432
    move-result-object v0

    .line 433
    const-string v1, "se"

    .line 434
    .line 435
    invoke-interface {v11, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 436
    .line 437
    .line 438
    :cond_e
    const/4 v0, 0x7

    .line 439
    if-eq v9, v0, :cond_f

    .line 440
    .line 441
    const/16 v0, 0x39

    .line 442
    .line 443
    if-eq v9, v0, :cond_f

    .line 444
    .line 445
    goto :goto_3

    .line 446
    :cond_f
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getPreStatus()I

    .line 447
    .line 448
    .line 449
    move-result v0

    .line 450
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 451
    .line 452
    .line 453
    move-result-object v0

    .line 454
    const-string v1, "pre_status"

    .line 455
    .line 456
    invoke-interface {v11, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 457
    .line 458
    .line 459
    :goto_3
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getUgcVideoId()Ljava/lang/String;

    .line 460
    .line 461
    .line 462
    move-result-object v0

    .line 463
    if-eqz v0, :cond_10

    .line 464
    .line 465
    const-string v1, "content_id"

    .line 466
    .line 467
    invoke-interface {v11, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 468
    .line 469
    .line 470
    const-string v0, "content_type"

    .line 471
    .line 472
    const-string v1, "ugc_video"

    .line 473
    .line 474
    invoke-interface {v11, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 475
    .line 476
    .line 477
    :cond_10
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getUgcVideoCollectionId()Ljava/lang/String;

    .line 478
    .line 479
    .line 480
    move-result-object v0

    .line 481
    if-eqz v0, :cond_11

    .line 482
    .line 483
    const-string v1, "belong_to_collection_id"

    .line 484
    .line 485
    invoke-interface {v11, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 486
    .line 487
    .line 488
    :cond_11
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getUgcVideoType()Ljava/lang/String;

    .line 489
    .line 490
    .line 491
    move-result-object v0

    .line 492
    if-eqz v0, :cond_12

    .line 493
    .line 494
    const-string v1, "category_type"

    .line 495
    .line 496
    invoke-interface {v11, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 497
    .line 498
    .line 499
    :cond_12
    const-string v0, "video_track_id"

    .line 500
    .line 501
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getUgcVideoTrackId()Ljava/lang/String;

    .line 502
    .line 503
    .line 504
    move-result-object v1

    .line 505
    invoke-interface {v11, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 506
    .line 507
    .line 508
    const-string v0, "parent_video_video_id"

    .line 509
    .line 510
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getUgcVideoParentVideoId()Ljava/lang/String;

    .line 511
    .line 512
    .line 513
    move-result-object v1

    .line 514
    invoke-interface {v11, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 515
    .line 516
    .line 517
    const-string v0, "parent_video_track_id"

    .line 518
    .line 519
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getUgcVideoParentTrackId()Ljava/lang/String;

    .line 520
    .line 521
    .line 522
    move-result-object v1

    .line 523
    invoke-interface {v11, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 524
    .line 525
    .line 526
    const/4 v0, 0x6

    .line 527
    if-ne v9, v0, :cond_1b

    .line 528
    .line 529
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getException()Lcom/transsion/baselib/db/download/DownloadException;

    .line 530
    .line 531
    .line 532
    move-result-object v0

    .line 533
    const/4 v1, 0x0

    .line 534
    if-eqz v0, :cond_13

    .line 535
    .line 536
    invoke-virtual {v0}, Lcom/transsion/baselib/db/download/DownloadException;->getCode()I

    .line 537
    .line 538
    .line 539
    move-result v0

    .line 540
    invoke-static {v0}, Lkotlin/coroutines/jvm/internal/Boxing;->d(I)Ljava/lang/Integer;

    .line 541
    .line 542
    .line 543
    move-result-object v0

    .line 544
    goto :goto_4

    .line 545
    :cond_13
    move-object v0, v1

    .line 546
    :goto_4
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 547
    .line 548
    .line 549
    move-result-object v0

    .line 550
    const-string v2, "error_code"

    .line 551
    .line 552
    invoke-interface {v11, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 553
    .line 554
    .line 555
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getException()Lcom/transsion/baselib/db/download/DownloadException;

    .line 556
    .line 557
    .line 558
    move-result-object v0

    .line 559
    if-eqz v0, :cond_14

    .line 560
    .line 561
    invoke-virtual {v0}, Lcom/transsion/baselib/db/download/DownloadException;->getResponseCode()I

    .line 562
    .line 563
    .line 564
    move-result v0

    .line 565
    invoke-static {v0}, Lkotlin/coroutines/jvm/internal/Boxing;->d(I)Ljava/lang/Integer;

    .line 566
    .line 567
    .line 568
    move-result-object v0

    .line 569
    goto :goto_5

    .line 570
    :cond_14
    move-object v0, v1

    .line 571
    :goto_5
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 572
    .line 573
    .line 574
    move-result-object v0

    .line 575
    const-string v2, "error_response_code"

    .line 576
    .line 577
    invoke-interface {v11, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 578
    .line 579
    .line 580
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getException()Lcom/transsion/baselib/db/download/DownloadException;

    .line 581
    .line 582
    .line 583
    move-result-object v0

    .line 584
    if-eqz v0, :cond_15

    .line 585
    .line 586
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 587
    .line 588
    .line 589
    move-result-object v0

    .line 590
    goto :goto_6

    .line 591
    :cond_15
    move-object v0, v1

    .line 592
    :goto_6
    const-string v2, "error_msg"

    .line 593
    .line 594
    invoke-interface {v11, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 595
    .line 596
    .line 597
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getException()Lcom/transsion/baselib/db/download/DownloadException;

    .line 598
    .line 599
    .line 600
    move-result-object v0

    .line 601
    if-eqz v0, :cond_16

    .line 602
    .line 603
    invoke-virtual {v0}, Lcom/transsion/baselib/db/download/DownloadException;->getFormatMessage()Ljava/lang/String;

    .line 604
    .line 605
    .line 606
    move-result-object v0

    .line 607
    goto :goto_7

    .line 608
    :cond_16
    move-object v0, v1

    .line 609
    :goto_7
    const-string v2, "error_format_msg"

    .line 610
    .line 611
    invoke-interface {v11, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 612
    .line 613
    .line 614
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getException()Lcom/transsion/baselib/db/download/DownloadException;

    .line 615
    .line 616
    .line 617
    move-result-object v0

    .line 618
    if-eqz v0, :cond_17

    .line 619
    .line 620
    invoke-virtual {v0}, Lcom/transsion/baselib/db/download/DownloadException;->getRange()Ljava/lang/String;

    .line 621
    .line 622
    .line 623
    move-result-object v0

    .line 624
    goto :goto_8

    .line 625
    :cond_17
    move-object v0, v1

    .line 626
    :goto_8
    const-string v2, "download_range"

    .line 627
    .line 628
    invoke-interface {v11, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 629
    .line 630
    .line 631
    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 632
    .line 633
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/baselib/db/download/DownloadBean;->is4xxError()Z

    .line 634
    .line 635
    .line 636
    move-result v0

    .line 637
    if-eqz v0, :cond_1a

    .line 638
    .line 639
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getUrl()Ljava/lang/String;

    .line 640
    .line 641
    .line 642
    move-result-object v0

    .line 643
    if-eqz v0, :cond_1a

    .line 644
    .line 645
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getUrl()Ljava/lang/String;

    .line 646
    .line 647
    .line 648
    move-result-object v0

    .line 649
    const-string v2, "http"

    .line 650
    .line 651
    const/4 v3, 0x0

    .line 652
    invoke-static {v0, v2, v3, v15, v1}, Lkotlin/text/StringsKt;->W(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    .line 653
    .line 654
    .line 655
    move-result v0

    .line 656
    if-eqz v0, :cond_1a

    .line 657
    .line 658
    new-instance v0, Ljava/net/URL;

    .line 659
    .line 660
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getUrl()Ljava/lang/String;

    .line 661
    .line 662
    .line 663
    move-result-object v1

    .line 664
    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 665
    .line 666
    .line 667
    invoke-virtual {v0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    .line 668
    .line 669
    .line 670
    move-result-object v0

    .line 671
    invoke-static {v0}, Ljava/net/InetAddress;->getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;

    .line 672
    .line 673
    .line 674
    move-result-object v0

    .line 675
    new-instance v1, Ljava/lang/StringBuilder;

    .line 676
    .line 677
    const-string v2, ""

    .line 678
    .line 679
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 680
    .line 681
    .line 682
    invoke-static {v0}, Lkotlin/jvm/internal/ArrayIteratorKt;->a([Ljava/lang/Object;)Ljava/util/Iterator;

    .line 683
    .line 684
    .line 685
    move-result-object v0

    .line 686
    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 687
    .line 688
    .line 689
    move-result v2

    .line 690
    if-eqz v2, :cond_19

    .line 691
    .line 692
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 693
    .line 694
    .line 695
    move-result-object v2

    .line 696
    check-cast v2, Ljava/net/InetAddress;

    .line 697
    .line 698
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    .line 699
    .line 700
    .line 701
    move-result v3

    .line 702
    if-lez v3, :cond_18

    .line 703
    .line 704
    const-string v3, ","

    .line 705
    .line 706
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 707
    .line 708
    .line 709
    goto :goto_a

    .line 710
    :catchall_0
    move-exception v0

    .line 711
    goto :goto_b

    .line 712
    :cond_18
    :goto_a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 713
    .line 714
    .line 715
    goto :goto_9

    .line 716
    :cond_19
    const-string v0, "download_ips"

    .line 717
    .line 718
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 719
    .line 720
    .line 721
    move-result-object v1

    .line 722
    invoke-interface {v11, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 723
    .line 724
    .line 725
    :cond_1a
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 726
    .line 727
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 728
    .line 729
    .line 730
    goto :goto_c

    .line 731
    :goto_b
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 732
    .line 733
    invoke-static {v0}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 734
    .line 735
    .line 736
    move-result-object v0

    .line 737
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 738
    .line 739
    .line 740
    :cond_1b
    :goto_c
    sget-object v0, Lqi/h;->a:Lqi/h;

    .line 741
    .line 742
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getPageFrom()Ljava/lang/String;

    .line 743
    .line 744
    .line 745
    move-result-object v1

    .line 746
    if-nez v1, :cond_1c

    .line 747
    .line 748
    const-string v1, "download_link"

    .line 749
    .line 750
    :cond_1c
    const-string v2, "download"

    .line 751
    .line 752
    invoke-virtual {v0, v1, v2, v11}, Lqi/h;->q(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 753
    .line 754
    .line 755
    const/4 v1, 0x5

    .line 756
    if-gt v1, v9, :cond_1d

    .line 757
    .line 758
    const/16 v1, 0x3a

    .line 759
    .line 760
    if-ge v9, v1, :cond_1d

    .line 761
    .line 762
    sget-object v1, Lwf/a;->a:Lwf/a$a;

    .line 763
    .line 764
    invoke-virtual {v0, v11}, Lqi/h;->n(Ljava/util/Map;)Ljava/lang/String;

    .line 765
    .line 766
    .line 767
    move-result-object v0

    .line 768
    invoke-virtual {v1, v2, v0, v14}, Lwf/a$a;->c(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 769
    .line 770
    .line 771
    :cond_1d
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 772
    .line 773
    return-object v0
.end method

.method public final k(Lcom/transsion/baselib/db/download/DownloadBean;Lkotlin/jvm/functions/Function0;)V
    .locals 1

    .line 1
    const-string v0, "bean"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    if-eqz p2, :cond_0

    .line 7
    .line 8
    new-instance v0, Lex/d;

    .line 9
    .line 10
    invoke-direct {v0, p0, p1, p2}, Lex/d;-><init>(Lex/e;Lcom/transsion/baselib/db/download/DownloadBean;Lkotlin/jvm/functions/Function0;)V

    .line 11
    .line 12
    .line 13
    invoke-direct {p0, v0}, Lex/e;->n(Lkotlin/jvm/functions/Function1;)V

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 p2, 0x0

    .line 18
    invoke-direct {p0, p1, p2}, Lex/e;->m(Lcom/transsion/baselib/db/download/DownloadBean;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    :goto_0
    return-void
.end method
