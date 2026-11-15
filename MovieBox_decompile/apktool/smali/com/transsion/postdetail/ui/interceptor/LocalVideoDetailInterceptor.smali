.class public final Lcom/transsion/postdetail/ui/interceptor/LocalVideoDetailInterceptor;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/postdetail/ui/interceptor/LocalVideoDetailInterceptor$a;
    }
.end annotation


# static fields
.field public static final a:Lcom/transsion/postdetail/ui/interceptor/LocalVideoDetailInterceptor$a;

.field private static final b:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/transsion/postdetail/ui/interceptor/LocalVideoDetailInterceptor$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/transsion/postdetail/ui/interceptor/LocalVideoDetailInterceptor$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/transsion/postdetail/ui/interceptor/LocalVideoDetailInterceptor;->a:Lcom/transsion/postdetail/ui/interceptor/LocalVideoDetailInterceptor$a;

    .line 8
    .line 9
    new-instance v0, Lcom/transsion/postdetail/ui/interceptor/c;

    .line 10
    .line 11
    invoke-direct {v0}, Lcom/transsion/postdetail/ui/interceptor/c;-><init>()V

    .line 12
    .line 13
    .line 14
    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    sput-object v0, Lcom/transsion/postdetail/ui/interceptor/LocalVideoDetailInterceptor;->b:Lkotlin/Lazy;

    .line 19
    .line 20
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic a()Lws/a;
    .locals 1

    .line 1
    invoke-static {}, Lcom/transsion/postdetail/ui/interceptor/LocalVideoDetailInterceptor;->k()Lws/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static synthetic b()Lvr/a;
    .locals 1

    .line 1
    invoke-static {}, Lcom/transsion/postdetail/ui/interceptor/LocalVideoDetailInterceptor;->j()Lvr/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static synthetic c()Lcom/transsion/postdetail/ui/interceptor/LocalVideoDetailInterceptor;
    .locals 1

    .line 1
    invoke-static {}, Lcom/transsion/postdetail/ui/interceptor/LocalVideoDetailInterceptor;->g()Lcom/transsion/postdetail/ui/interceptor/LocalVideoDetailInterceptor;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static final synthetic d()Lkotlin/Lazy;
    .locals 1

    .line 1
    sget-object v0, Lcom/transsion/postdetail/ui/interceptor/LocalVideoDetailInterceptor;->b:Lkotlin/Lazy;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic e(Lcom/transsion/postdetail/ui/interceptor/LocalVideoDetailInterceptor;Lcom/therouter/router/RouteItem;Lmf/b;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/transsion/postdetail/ui/interceptor/LocalVideoDetailInterceptor;->h(Lcom/therouter/router/RouteItem;Lmf/b;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final f(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    const/4 v2, 0x1

    .line 4
    const/4 v3, 0x0

    .line 5
    if-eqz p1, :cond_2

    .line 6
    .line 7
    const/4 p1, 0x2

    .line 8
    const/4 v4, 0x0

    .line 9
    const-string v5, "content"

    .line 10
    .line 11
    invoke-static {p2, v5, v3, p1, v4}, Lkotlin/text/StringsKt;->W(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    if-eqz p1, :cond_0

    .line 16
    .line 17
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 22
    .line 23
    .line 24
    move-result-object p2

    .line 25
    invoke-static {p1, p2}, Lk1/a;->g(Landroid/content/Context;Landroid/net/Uri;)Lk1/a;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    if-eqz p1, :cond_3

    .line 30
    .line 31
    invoke-virtual {p1}, Lk1/a;->e()Z

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    goto :goto_0

    .line 36
    :cond_0
    new-instance p1, Ljava/io/File;

    .line 37
    .line 38
    invoke-direct {p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    .line 42
    .line 43
    .line 44
    move-result p2

    .line 45
    if-eqz p2, :cond_1

    .line 46
    .line 47
    invoke-virtual {p1}, Ljava/io/File;->length()J

    .line 48
    .line 49
    .line 50
    move-result-wide p1

    .line 51
    cmp-long p1, p1, v0

    .line 52
    .line 53
    if-lez p1, :cond_1

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_1
    move v2, v3

    .line 57
    goto :goto_0

    .line 58
    :cond_2
    new-instance p1, Ljava/io/File;

    .line 59
    .line 60
    invoke-direct {p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    .line 64
    .line 65
    .line 66
    move-result p2

    .line 67
    if-eqz p2, :cond_1

    .line 68
    .line 69
    invoke-virtual {p1}, Ljava/io/File;->length()J

    .line 70
    .line 71
    .line 72
    move-result-wide p1

    .line 73
    cmp-long p1, p1, v0

    .line 74
    .line 75
    if-lez p1, :cond_1

    .line 76
    .line 77
    :cond_3
    :goto_0
    return v2
.end method

.method private static final g()Lcom/transsion/postdetail/ui/interceptor/LocalVideoDetailInterceptor;
    .locals 1

    .line 1
    new-instance v0, Lcom/transsion/postdetail/ui/interceptor/LocalVideoDetailInterceptor;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/transsion/postdetail/ui/interceptor/LocalVideoDetailInterceptor;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method private final h(Lcom/therouter/router/RouteItem;Lmf/b;)V
    .locals 7

    .line 1
    :try_start_0
    invoke-virtual {p1}, Lcom/therouter/router/RouteItem;->getExtras()Landroid/os/Bundle;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "subject_type"

    .line 6
    .line 7
    const/4 v2, -0x1

    .line 8
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    sget-object v1, Lcom/transsion/moviedetailapi/SubjectType;->SHORT_TV:Lcom/transsion/moviedetailapi/SubjectType;

    .line 13
    .line 14
    invoke-virtual {v1}, Lcom/transsion/moviedetailapi/SubjectType;->getValue()I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-ne v0, v1, :cond_0

    .line 19
    .line 20
    sget-object v0, Lpr/a;->a:Lpr/a;

    .line 21
    .line 22
    invoke-virtual {v0}, Lpr/a;->b()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-static {v0}, Lcom/therouter/TheRouter;->c(Ljava/lang/String;)Lcom/therouter/router/Navigator;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-virtual {p1}, Lcom/therouter/router/RouteItem;->getExtras()Landroid/os/Bundle;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    invoke-static {v0, v1}, Lij/k;->b(Lcom/therouter/router/Navigator;Landroid/os/Bundle;)Lcom/therouter/router/Navigator;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    invoke-static {v0}, Lij/k;->p(Lcom/therouter/router/Navigator;)V

    .line 39
    .line 40
    .line 41
    invoke-static {p2}, Lfj/b;->a(Lmf/b;)V

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_0
    sget-object v1, Lwf/a;->a:Lwf/a$a;

    .line 46
    .line 47
    const-string v2, "VideoFloat"

    .line 48
    .line 49
    const-class v0, Lcom/transsion/postdetail/ui/interceptor/LocalVideoDetailInterceptor;

    .line 50
    .line 51
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    new-instance v3, Ljava/lang/StringBuilder;

    .line 56
    .line 57
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    const-string v0, " open page ----2"

    .line 64
    .line 65
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v3

    .line 72
    const/4 v5, 0x4

    .line 73
    const/4 v6, 0x0

    .line 74
    const/4 v4, 0x0

    .line 75
    invoke-static/range {v1 .. v6}, Lwf/a$a;->l(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 76
    .line 77
    .line 78
    invoke-interface {p2, p1}, Lmf/b;->a(Lcom/therouter/router/RouteItem;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 79
    .line 80
    .line 81
    goto :goto_0

    .line 82
    :catchall_0
    invoke-interface {p2, p1}, Lmf/b;->a(Lcom/therouter/router/RouteItem;)V

    .line 83
    .line 84
    .line 85
    :goto_0
    return-void
.end method

.method private static final j()Lvr/a;
    .locals 1

    .line 1
    new-instance v0, Lcom/transsion/postdetail/shorttv/factory/i;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/transsion/postdetail/shorttv/factory/i;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method private static final k()Lws/a;
    .locals 1

    .line 1
    new-instance v0, Lcom/transsion/postdetail/shorttv/factory/a;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/transsion/postdetail/shorttv/factory/a;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method


# virtual methods
.method public final i(Lcom/therouter/router/RouteItem;Lmf/b;)V
    .locals 26

    .line 1
    move-object/from16 v7, p0

    .line 2
    .line 3
    move-object/from16 v3, p1

    .line 4
    .line 5
    move-object/from16 v4, p2

    .line 6
    .line 7
    const-string v0, "postcard"

    .line 8
    .line 9
    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    const-string v0, "callback"

    .line 13
    .line 14
    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual/range {p1 .. p1}, Lcom/therouter/router/RouteItem;->getPath()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    const-string v1, "/ugc_video/detail"

    .line 22
    .line 23
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    const/4 v1, 0x0

    .line 28
    const/4 v2, 0x1

    .line 29
    const/4 v5, 0x0

    .line 30
    if-nez v0, :cond_0

    .line 31
    .line 32
    invoke-virtual/range {p1 .. p1}, Lcom/therouter/router/RouteItem;->getPath()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    const-string v6, "/ugc_video/local_detail"

    .line 37
    .line 38
    invoke-static {v0, v6}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    if-nez v0, :cond_0

    .line 43
    .line 44
    invoke-virtual/range {p1 .. p1}, Lcom/therouter/router/RouteItem;->getPath()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    const-string v6, "/ugc_shorts/detail"

    .line 49
    .line 50
    invoke-static {v0, v6}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    if-eqz v0, :cond_1

    .line 55
    .line 56
    :cond_0
    sget-object v0, Lcw/e;->a:Lcw/e$a;

    .line 57
    .line 58
    invoke-virtual {v0}, Lcw/e$a;->b()Lcw/e;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    invoke-static {v0, v5, v2, v1}, Lcw/e$b;->a(Lcw/e;ZILjava/lang/Object;)V

    .line 63
    .line 64
    .line 65
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/therouter/router/RouteItem;->getPath()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    const-string v6, "/video/detail"

    .line 70
    .line 71
    invoke-static {v0, v6}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    move-result v0

    .line 75
    const/4 v6, -0x1

    .line 76
    const-string v8, "extra_series_position"

    .line 77
    .line 78
    if-eqz v0, :cond_e

    .line 79
    .line 80
    sget-object v0, Lcw/e;->a:Lcw/e$a;

    .line 81
    .line 82
    invoke-virtual {v0}, Lcw/e$a;->b()Lcw/e;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    invoke-static {v0, v5, v2, v1}, Lcw/e$b;->a(Lcw/e;ZILjava/lang/Object;)V

    .line 87
    .line 88
    .line 89
    invoke-virtual/range {p1 .. p1}, Lcom/therouter/router/RouteItem;->getExtras()Landroid/os/Bundle;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    const-string v9, "extra_url"

    .line 94
    .line 95
    invoke-virtual {v0, v9}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v9

    .line 99
    const-string v10, "extra_subject_id"

    .line 100
    .line 101
    invoke-virtual {v0, v10}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v10

    .line 105
    if-nez v10, :cond_2

    .line 106
    .line 107
    const-string v10, ""

    .line 108
    .line 109
    :cond_2
    const-string v11, "extra_local_path"

    .line 110
    .line 111
    invoke-virtual {v0, v11}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v12

    .line 115
    const-string v13, "extra_resource_id"

    .line 116
    .line 117
    invoke-virtual {v0, v13}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v13

    .line 121
    const-string v14, "extra_is_series"

    .line 122
    .line 123
    invoke-virtual {v0, v14}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    .line 124
    .line 125
    .line 126
    move-result v18

    .line 127
    invoke-virtual {v0, v8, v6}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 128
    .line 129
    .line 130
    move-result v19

    .line 131
    const-string v6, "extra_completed"

    .line 132
    .line 133
    invoke-virtual {v0, v6, v2}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 134
    .line 135
    .line 136
    move-result v6

    .line 137
    const-string v8, "extra_from_deeplink"

    .line 138
    .line 139
    invoke-virtual {v0, v8, v5}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 140
    .line 141
    .line 142
    move-result v8

    .line 143
    if-eqz v8, :cond_3

    .line 144
    .line 145
    invoke-interface {v4, v3}, Lmf/b;->a(Lcom/therouter/router/RouteItem;)V

    .line 146
    .line 147
    .line 148
    return-void

    .line 149
    :cond_3
    if-eqz v13, :cond_6

    .line 150
    .line 151
    sget-object v8, Lcom/transsnet/downloader/manager/DownloadEsHelper;->m:Lcom/transsnet/downloader/manager/DownloadEsHelper$a;

    .line 152
    .line 153
    invoke-virtual {v8}, Lcom/transsnet/downloader/manager/DownloadEsHelper$a;->a()Lcom/transsnet/downloader/manager/DownloadEsHelper;

    .line 154
    .line 155
    .line 156
    move-result-object v8

    .line 157
    invoke-virtual {v8, v13}, Lcom/transsnet/downloader/manager/DownloadEsHelper;->q(Ljava/lang/String;)Lcom/transsion/baselib/db/download/DownloadBean;

    .line 158
    .line 159
    .line 160
    move-result-object v8

    .line 161
    if-eqz v8, :cond_5

    .line 162
    .line 163
    invoke-virtual {v8}, Lcom/transsion/baselib/db/download/DownloadBean;->getPath()Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object v8

    .line 167
    if-nez v8, :cond_4

    .line 168
    .line 169
    goto :goto_0

    .line 170
    :cond_4
    move-object v12, v8

    .line 171
    :cond_5
    :goto_0
    invoke-virtual {v0, v11, v12}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    .line 173
    .line 174
    :cond_6
    sget-object v0, Lwf/a;->a:Lwf/a$a;

    .line 175
    .line 176
    new-instance v8, Ljava/lang/StringBuilder;

    .line 177
    .line 178
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 179
    .line 180
    .line 181
    const-string v11, "isDownloadCompleted  = "

    .line 182
    .line 183
    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    .line 185
    .line 186
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 187
    .line 188
    .line 189
    const-string v11, "\uff0c path = "

    .line 190
    .line 191
    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    .line 193
    .line 194
    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    .line 196
    .line 197
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 198
    .line 199
    .line 200
    move-result-object v8

    .line 201
    const-string v11, "Download_LocalVideoDetailInterceptor"

    .line 202
    .line 203
    invoke-virtual {v0, v11, v8, v2}, Lwf/a$a;->c(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 204
    .line 205
    .line 206
    if-eqz v9, :cond_7

    .line 207
    .line 208
    const-string v8, "http"

    .line 209
    .line 210
    const/4 v11, 0x2

    .line 211
    invoke-static {v9, v8, v5, v11, v1}, Lkotlin/text/StringsKt;->W(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    .line 212
    .line 213
    .line 214
    move-result v1

    .line 215
    if-nez v1, :cond_7

    .line 216
    .line 217
    invoke-interface {v10}, Ljava/lang/CharSequence;->length()I

    .line 218
    .line 219
    .line 220
    move-result v1

    .line 221
    if-nez v1, :cond_7

    .line 222
    .line 223
    goto :goto_1

    .line 224
    :cond_7
    move v2, v5

    .line 225
    :goto_1
    if-eqz v12, :cond_c

    .line 226
    .line 227
    invoke-interface {v12}, Ljava/lang/CharSequence;->length()I

    .line 228
    .line 229
    .line 230
    move-result v1

    .line 231
    if-lez v1, :cond_c

    .line 232
    .line 233
    invoke-direct {v7, v13, v12}, Lcom/transsion/postdetail/ui/interceptor/LocalVideoDetailInterceptor;->f(Ljava/lang/String;Ljava/lang/String;)Z

    .line 234
    .line 235
    .line 236
    move-result v1

    .line 237
    if-nez v6, :cond_8

    .line 238
    .line 239
    const/16 v24, 0x4

    .line 240
    .line 241
    const/16 v25, 0x0

    .line 242
    .line 243
    const-string v21, "Download_LocalVideoDetailInterceptor"

    .line 244
    .line 245
    const-string v22, "downloading play, open page"

    .line 246
    .line 247
    const/16 v23, 0x0

    .line 248
    .line 249
    move-object/from16 v20, v0

    .line 250
    .line 251
    invoke-static/range {v20 .. v25}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 252
    .line 253
    .line 254
    invoke-static {}, Lkotlinx/coroutines/y0;->b()Lkotlinx/coroutines/i0;

    .line 255
    .line 256
    .line 257
    move-result-object v0

    .line 258
    invoke-static {v0}, Lkotlinx/coroutines/o0;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/n0;

    .line 259
    .line 260
    .line 261
    move-result-object v8

    .line 262
    new-instance v9, Lcom/transsion/postdetail/ui/interceptor/LocalVideoDetailInterceptor$process$1;

    .line 263
    .line 264
    const/4 v6, 0x0

    .line 265
    move-object v0, v9

    .line 266
    move-object v1, v13

    .line 267
    move-object/from16 v2, p0

    .line 268
    .line 269
    move-object/from16 v3, p1

    .line 270
    .line 271
    move-object/from16 v4, p2

    .line 272
    .line 273
    move-object v5, v10

    .line 274
    invoke-direct/range {v0 .. v6}, Lcom/transsion/postdetail/ui/interceptor/LocalVideoDetailInterceptor$process$1;-><init>(Ljava/lang/String;Lcom/transsion/postdetail/ui/interceptor/LocalVideoDetailInterceptor;Lcom/therouter/router/RouteItem;Lmf/b;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    .line 275
    .line 276
    .line 277
    const/4 v5, 0x3

    .line 278
    const/4 v2, 0x0

    .line 279
    const/4 v3, 0x0

    .line 280
    move-object v1, v8

    .line 281
    move-object v4, v9

    .line 282
    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 283
    .line 284
    .line 285
    return-void

    .line 286
    :cond_8
    if-nez v1, :cond_b

    .line 287
    .line 288
    new-instance v1, Ljava/lang/StringBuilder;

    .line 289
    .line 290
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 291
    .line 292
    .line 293
    const-string v3, "file is error, show error dialog, c, isOutside = "

    .line 294
    .line 295
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 296
    .line 297
    .line 298
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 299
    .line 300
    .line 301
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 302
    .line 303
    .line 304
    move-result-object v22

    .line 305
    const/16 v24, 0x4

    .line 306
    .line 307
    const/16 v25, 0x0

    .line 308
    .line 309
    const-string v21, "Download_LocalVideoDetailInterceptor"

    .line 310
    .line 311
    const/16 v23, 0x0

    .line 312
    .line 313
    move-object/from16 v20, v0

    .line 314
    .line 315
    invoke-static/range {v20 .. v25}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 316
    .line 317
    .line 318
    if-eqz v2, :cond_9

    .line 319
    .line 320
    sget-object v0, Lfh/b;->a:Lfh/b$a;

    .line 321
    .line 322
    sget v1, Lcom/transsnet/downloader/R$string;->download_no_local_file_tips:I

    .line 323
    .line 324
    invoke-virtual {v0, v1}, Lfh/b$a;->d(I)V

    .line 325
    .line 326
    .line 327
    goto :goto_2

    .line 328
    :cond_9
    sget-object v0, Lcom/transsion/baselib/report/k;->a:Lcom/transsion/baselib/report/k;

    .line 329
    .line 330
    invoke-virtual {v0}, Lcom/transsion/baselib/report/k;->o()Landroid/app/Activity;

    .line 331
    .line 332
    .line 333
    move-result-object v15

    .line 334
    if-eqz v15, :cond_a

    .line 335
    .line 336
    invoke-virtual {v15}, Landroid/app/Activity;->isDestroyed()Z

    .line 337
    .line 338
    .line 339
    move-result v0

    .line 340
    if-nez v0, :cond_a

    .line 341
    .line 342
    invoke-virtual {v15}, Landroid/app/Activity;->isFinishing()Z

    .line 343
    .line 344
    .line 345
    move-result v0

    .line 346
    if-nez v0, :cond_a

    .line 347
    .line 348
    sget-object v14, Lcom/transsnet/downloader/util/LocalVideoNotExistUtil;->a:Lcom/transsnet/downloader/util/LocalVideoNotExistUtil;

    .line 349
    .line 350
    invoke-static {v13}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 351
    .line 352
    .line 353
    move-object/from16 v16, v13

    .line 354
    .line 355
    move-object/from16 v17, v12

    .line 356
    .line 357
    invoke-virtual/range {v14 .. v19}, Lcom/transsnet/downloader/util/LocalVideoNotExistUtil;->w(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZI)V

    .line 358
    .line 359
    .line 360
    :cond_a
    :goto_2
    return-void

    .line 361
    :cond_b
    const/16 v24, 0x4

    .line 362
    .line 363
    const/16 v25, 0x0

    .line 364
    .line 365
    const-string v21, "Download_LocalVideoDetailInterceptor"

    .line 366
    .line 367
    const-string v22, "open page"

    .line 368
    .line 369
    const/16 v23, 0x0

    .line 370
    .line 371
    move-object/from16 v20, v0

    .line 372
    .line 373
    invoke-static/range {v20 .. v25}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 374
    .line 375
    .line 376
    invoke-direct/range {p0 .. p2}, Lcom/transsion/postdetail/ui/interceptor/LocalVideoDetailInterceptor;->h(Lcom/therouter/router/RouteItem;Lmf/b;)V

    .line 377
    .line 378
    .line 379
    goto/16 :goto_6

    .line 380
    .line 381
    :cond_c
    const/16 v24, 0x4

    .line 382
    .line 383
    const/16 v25, 0x0

    .line 384
    .line 385
    const-string v21, "Download_LocalVideoDetailInterceptor"

    .line 386
    .line 387
    const-string v22, "file is error, show error dialog, "

    .line 388
    .line 389
    const/16 v23, 0x0

    .line 390
    .line 391
    move-object/from16 v20, v0

    .line 392
    .line 393
    invoke-static/range {v20 .. v25}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 394
    .line 395
    .line 396
    sget-object v0, Lcom/transsion/baselib/report/k;->a:Lcom/transsion/baselib/report/k;

    .line 397
    .line 398
    invoke-virtual {v0}, Lcom/transsion/baselib/report/k;->o()Landroid/app/Activity;

    .line 399
    .line 400
    .line 401
    move-result-object v15

    .line 402
    if-eqz v15, :cond_d

    .line 403
    .line 404
    invoke-virtual {v15}, Landroid/app/Activity;->isDestroyed()Z

    .line 405
    .line 406
    .line 407
    move-result v0

    .line 408
    if-nez v0, :cond_d

    .line 409
    .line 410
    invoke-virtual {v15}, Landroid/app/Activity;->isFinishing()Z

    .line 411
    .line 412
    .line 413
    move-result v0

    .line 414
    if-nez v0, :cond_d

    .line 415
    .line 416
    sget-object v14, Lcom/transsnet/downloader/util/LocalVideoNotExistUtil;->a:Lcom/transsnet/downloader/util/LocalVideoNotExistUtil;

    .line 417
    .line 418
    invoke-static {v13}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 419
    .line 420
    .line 421
    move-object/from16 v16, v13

    .line 422
    .line 423
    move-object/from16 v17, v12

    .line 424
    .line 425
    invoke-virtual/range {v14 .. v19}, Lcom/transsnet/downloader/util/LocalVideoNotExistUtil;->w(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZI)V

    .line 426
    .line 427
    .line 428
    :cond_d
    return-void

    .line 429
    :cond_e
    invoke-virtual/range {p1 .. p1}, Lcom/therouter/router/RouteItem;->getPath()Ljava/lang/String;

    .line 430
    .line 431
    .line 432
    move-result-object v0

    .line 433
    sget-object v9, Lpr/a;->a:Lpr/a;

    .line 434
    .line 435
    invoke-virtual {v9}, Lpr/a;->b()Ljava/lang/String;

    .line 436
    .line 437
    .line 438
    move-result-object v9

    .line 439
    invoke-static {v0, v9}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 440
    .line 441
    .line 442
    move-result v0

    .line 443
    if-eqz v0, :cond_16

    .line 444
    .line 445
    sget-object v0, Lpq/c;->a:Lpq/c;

    .line 446
    .line 447
    new-instance v9, Lcom/transsion/postdetail/ui/interceptor/a;

    .line 448
    .line 449
    invoke-direct {v9}, Lcom/transsion/postdetail/ui/interceptor/a;-><init>()V

    .line 450
    .line 451
    .line 452
    invoke-virtual {v0, v9}, Lpq/c;->a(Lkotlin/jvm/functions/Function0;)V

    .line 453
    .line 454
    .line 455
    sget-object v0, Lcs/a;->a:Lcs/a;

    .line 456
    .line 457
    new-instance v9, Lcom/transsion/postdetail/ui/interceptor/b;

    .line 458
    .line 459
    invoke-direct {v9}, Lcom/transsion/postdetail/ui/interceptor/b;-><init>()V

    .line 460
    .line 461
    .line 462
    invoke-virtual {v0, v9}, Lcs/a;->a(Lkotlin/jvm/functions/Function0;)V

    .line 463
    .line 464
    .line 465
    sget-object v0, Lcw/e;->a:Lcw/e$a;

    .line 466
    .line 467
    invoke-virtual {v0}, Lcw/e$a;->b()Lcw/e;

    .line 468
    .line 469
    .line 470
    move-result-object v0

    .line 471
    invoke-static {v0, v5, v2, v1}, Lcw/e$b;->a(Lcw/e;ZILjava/lang/Object;)V

    .line 472
    .line 473
    .line 474
    invoke-virtual/range {p1 .. p1}, Lcom/therouter/router/RouteItem;->getExtras()Landroid/os/Bundle;

    .line 475
    .line 476
    .line 477
    move-result-object v0

    .line 478
    const-string v2, "item_object"

    .line 479
    .line 480
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    .line 481
    .line 482
    .line 483
    move-result-object v2

    .line 484
    instance-of v5, v2, Lcom/transsion/moviedetailapi/bean/Subject;

    .line 485
    .line 486
    if-eqz v5, :cond_f

    .line 487
    .line 488
    check-cast v2, Lcom/transsion/moviedetailapi/bean/Subject;

    .line 489
    .line 490
    goto :goto_3

    .line 491
    :cond_f
    move-object v2, v1

    .line 492
    :goto_3
    if-nez v2, :cond_10

    .line 493
    .line 494
    const-string v2, "id"

    .line 495
    .line 496
    invoke-virtual {v0, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 497
    .line 498
    .line 499
    move-result-object v2

    .line 500
    goto :goto_4

    .line 501
    :cond_10
    invoke-virtual {v2}, Lcom/transsion/moviedetailapi/bean/Subject;->getSubjectId()Ljava/lang/String;

    .line 502
    .line 503
    .line 504
    move-result-object v2

    .line 505
    :goto_4
    const-string v5, "ep"

    .line 506
    .line 507
    invoke-virtual {v0, v5}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 508
    .line 509
    .line 510
    move-result v5

    .line 511
    invoke-virtual {v0, v8, v6}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 512
    .line 513
    .line 514
    move-result v0

    .line 515
    if-eqz v2, :cond_15

    .line 516
    .line 517
    sget-object v6, Lcom/transsnet/downloader/manager/DownloadEsHelper;->m:Lcom/transsnet/downloader/manager/DownloadEsHelper$a;

    .line 518
    .line 519
    invoke-virtual {v6}, Lcom/transsnet/downloader/manager/DownloadEsHelper$a;->a()Lcom/transsnet/downloader/manager/DownloadEsHelper;

    .line 520
    .line 521
    .line 522
    move-result-object v6

    .line 523
    invoke-virtual {v6, v2, v5}, Lcom/transsnet/downloader/manager/DownloadEsHelper;->x(Ljava/lang/String;I)Lcom/transsion/baselib/db/download/DownloadBean;

    .line 524
    .line 525
    .line 526
    move-result-object v2

    .line 527
    if-eqz v2, :cond_11

    .line 528
    .line 529
    invoke-virtual {v2}, Lcom/transsion/baselib/db/download/DownloadBean;->getPath()Ljava/lang/String;

    .line 530
    .line 531
    .line 532
    move-result-object v1

    .line 533
    :cond_11
    if-eqz v1, :cond_14

    .line 534
    .line 535
    invoke-virtual {v2}, Lcom/transsion/baselib/db/download/DownloadBean;->isCompleted()Z

    .line 536
    .line 537
    .line 538
    move-result v1

    .line 539
    if-nez v1, :cond_12

    .line 540
    .line 541
    goto :goto_5

    .line 542
    :cond_12
    invoke-virtual {v2}, Lcom/transsion/baselib/db/download/DownloadBean;->getResourceId()Ljava/lang/String;

    .line 543
    .line 544
    .line 545
    move-result-object v1

    .line 546
    invoke-virtual {v2}, Lcom/transsion/baselib/db/download/DownloadBean;->getPath()Ljava/lang/String;

    .line 547
    .line 548
    .line 549
    move-result-object v5

    .line 550
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 551
    .line 552
    .line 553
    invoke-direct {v7, v1, v5}, Lcom/transsion/postdetail/ui/interceptor/LocalVideoDetailInterceptor;->f(Ljava/lang/String;Ljava/lang/String;)Z

    .line 554
    .line 555
    .line 556
    move-result v1

    .line 557
    if-nez v1, :cond_13

    .line 558
    .line 559
    sget-object v1, Lcom/transsion/baselib/report/k;->a:Lcom/transsion/baselib/report/k;

    .line 560
    .line 561
    invoke-virtual {v1}, Lcom/transsion/baselib/report/k;->o()Landroid/app/Activity;

    .line 562
    .line 563
    .line 564
    move-result-object v1

    .line 565
    if-eqz v1, :cond_17

    .line 566
    .line 567
    invoke-virtual {v1}, Landroid/app/Activity;->isDestroyed()Z

    .line 568
    .line 569
    .line 570
    move-result v3

    .line 571
    if-nez v3, :cond_17

    .line 572
    .line 573
    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    .line 574
    .line 575
    .line 576
    move-result v3

    .line 577
    if-nez v3, :cond_17

    .line 578
    .line 579
    sget-object v3, Lcom/transsnet/downloader/util/LocalVideoNotExistUtil;->a:Lcom/transsnet/downloader/util/LocalVideoNotExistUtil;

    .line 580
    .line 581
    invoke-virtual {v3, v1, v2, v0}, Lcom/transsnet/downloader/util/LocalVideoNotExistUtil;->v(Landroid/content/Context;Lcom/transsion/baselib/db/download/DownloadBean;I)V

    .line 582
    .line 583
    .line 584
    goto :goto_6

    .line 585
    :cond_13
    invoke-interface {v4, v3}, Lmf/b;->a(Lcom/therouter/router/RouteItem;)V

    .line 586
    .line 587
    .line 588
    goto :goto_6

    .line 589
    :cond_14
    :goto_5
    invoke-interface {v4, v3}, Lmf/b;->a(Lcom/therouter/router/RouteItem;)V

    .line 590
    .line 591
    .line 592
    goto :goto_6

    .line 593
    :cond_15
    invoke-interface {v4, v3}, Lmf/b;->a(Lcom/therouter/router/RouteItem;)V

    .line 594
    .line 595
    .line 596
    goto :goto_6

    .line 597
    :cond_16
    invoke-interface {v4, v3}, Lmf/b;->a(Lcom/therouter/router/RouteItem;)V

    .line 598
    .line 599
    .line 600
    :cond_17
    :goto_6
    return-void
.end method
