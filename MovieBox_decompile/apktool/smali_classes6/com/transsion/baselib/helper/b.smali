.class public final Lcom/transsion/baselib/helper/b;
.super Ljava/lang/Object;
.source "source.java"


# static fields
.field public static final a:Lcom/transsion/baselib/helper/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/transsion/baselib/helper/b;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/transsion/baselib/helper/b;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/transsion/baselib/helper/b;->a:Lcom/transsion/baselib/helper/b;

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

.method private final a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    if-eqz p1, :cond_2

    .line 2
    .line 3
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const-string v0, "/search/activity/search_manager"

    .line 11
    .line 12
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    const-string p1, "/ugc_search/search_manager"

    .line 19
    .line 20
    return-object p1

    .line 21
    :cond_1
    const-string v0, "/download/panel_activity"

    .line 22
    .line 23
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-eqz v0, :cond_2

    .line 28
    .line 29
    const-string p1, "/download/ugc_my_downloads"

    .line 30
    .line 31
    :cond_2
    :goto_0
    return-object p1
.end method

.method private final b(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 0

    .line 1
    return-object p1
.end method

.method private final f(Ljava/lang/String;)Z
    .locals 5

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const-string v0, "/movie/staff"

    .line 11
    .line 12
    const-string v1, "/home/category"

    .line 13
    .line 14
    const-string v2, "/rank/all"

    .line 15
    .line 16
    const-string v3, "/home/movieFilter"

    .line 17
    .line 18
    const-string v4, "/home/playlist"

    .line 19
    .line 20
    filled-new-array {v2, v3, v4, v0, v1}, [Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->o([Ljava/lang/Object;)Ljava/util/List;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    return p1

    .line 33
    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 34
    return p1
.end method


# virtual methods
.method public final c(Landroid/net/Uri;)Lcom/transsion/baselib/helper/ReferrerBean;
    .locals 9

    .line 1
    new-instance v8, Lcom/transsion/baselib/helper/ReferrerBean;

    .line 2
    .line 3
    const/16 v6, 0x1f

    .line 4
    .line 5
    const/4 v7, 0x0

    .line 6
    const/4 v1, 0x0

    .line 7
    const/4 v2, 0x0

    .line 8
    const/4 v3, 0x0

    .line 9
    const/4 v4, 0x0

    .line 10
    const/4 v5, 0x0

    .line 11
    move-object v0, v8

    .line 12
    invoke-direct/range {v0 .. v7}, Lcom/transsion/baselib/helper/ReferrerBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 13
    .line 14
    .line 15
    const/4 v0, 0x0

    .line 16
    if-eqz p1, :cond_0

    .line 17
    .line 18
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    move-object v1, v0

    .line 24
    :goto_0
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    const-string v2, "/share"

    .line 29
    .line 30
    const/4 v3, 0x0

    .line 31
    const/4 v4, 0x2

    .line 32
    invoke-static {v1, v2, v3, v4, v0}, Lkotlin/text/StringsKt;->c0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    if-eqz v1, :cond_1

    .line 37
    .line 38
    const-string p1, "share"

    .line 39
    .line 40
    invoke-virtual {v8, p1}, Lcom/transsion/baselib/helper/ReferrerBean;->setUtmSource(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    goto/16 :goto_4

    .line 44
    .line 45
    :cond_1
    const-string v1, "utm_campaign"

    .line 46
    .line 47
    const-string v2, "utm_content"

    .line 48
    .line 49
    const-string v5, "utm_source"

    .line 50
    .line 51
    if-eqz p1, :cond_2

    .line 52
    .line 53
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v6

    .line 57
    if-eqz v6, :cond_2

    .line 58
    .line 59
    invoke-static {v6, v5, v3, v4, v0}, Lkotlin/text/StringsKt;->c0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    move-result v3

    .line 63
    const/4 v4, 0x1

    .line 64
    if-ne v3, v4, :cond_2

    .line 65
    .line 66
    new-instance v3, Ljava/lang/StringBuilder;

    .line 67
    .line 68
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 69
    .line 70
    .line 71
    const-string v4, "?"

    .line 72
    .line 73
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v3

    .line 83
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 84
    .line 85
    .line 86
    move-result-object v3

    .line 87
    invoke-virtual {v3, v5}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v4

    .line 91
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v4

    .line 95
    invoke-virtual {v3, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v6

    .line 99
    invoke-virtual {v8, v6}, Lcom/transsion/baselib/helper/ReferrerBean;->setUtmContent(Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {v3, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v3

    .line 106
    invoke-virtual {v8, v3}, Lcom/transsion/baselib/helper/ReferrerBean;->setUtmCampaign(Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 110
    .line 111
    .line 112
    move-result v3

    .line 113
    if-nez v3, :cond_2

    .line 114
    .line 115
    invoke-virtual {v8, v4}, Lcom/transsion/baselib/helper/ReferrerBean;->setUtmSource(Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    return-object v8

    .line 119
    :cond_2
    if-eqz p1, :cond_3

    .line 120
    .line 121
    invoke-virtual {p1, v5}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v3

    .line 125
    goto :goto_1

    .line 126
    :cond_3
    move-object v3, v0

    .line 127
    :goto_1
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 128
    .line 129
    .line 130
    move-result v3

    .line 131
    const-string v4, ""

    .line 132
    .line 133
    if-eqz v3, :cond_5

    .line 134
    .line 135
    if-eqz p1, :cond_6

    .line 136
    .line 137
    const-string v3, "channel"

    .line 138
    .line 139
    invoke-virtual {p1, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object v3

    .line 143
    if-nez v3, :cond_4

    .line 144
    .line 145
    goto :goto_2

    .line 146
    :cond_4
    move-object v4, v3

    .line 147
    goto :goto_2

    .line 148
    :cond_5
    if-eqz p1, :cond_6

    .line 149
    .line 150
    invoke-virtual {p1, v5}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object v3

    .line 154
    if-nez v3, :cond_4

    .line 155
    .line 156
    :cond_6
    :goto_2
    invoke-virtual {v8, v4}, Lcom/transsion/baselib/helper/ReferrerBean;->setUtmSource(Ljava/lang/String;)V

    .line 157
    .line 158
    .line 159
    if-eqz p1, :cond_7

    .line 160
    .line 161
    invoke-virtual {p1, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object v2

    .line 165
    goto :goto_3

    .line 166
    :cond_7
    move-object v2, v0

    .line 167
    :goto_3
    invoke-virtual {v8, v2}, Lcom/transsion/baselib/helper/ReferrerBean;->setUtmContent(Ljava/lang/String;)V

    .line 168
    .line 169
    .line 170
    if-eqz p1, :cond_8

    .line 171
    .line 172
    invoke-virtual {p1, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    move-result-object v0

    .line 176
    :cond_8
    invoke-virtual {v8, v0}, Lcom/transsion/baselib/helper/ReferrerBean;->setUtmCampaign(Ljava/lang/String;)V

    .line 177
    .line 178
    .line 179
    :goto_4
    return-object v8
.end method

.method public final d(Ljava/lang/String;)Lcom/transsion/baselib/helper/ReferrerBean;
    .locals 8

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    invoke-virtual {p0, p1}, Lcom/transsion/baselib/helper/b;->c(Landroid/net/Uri;)Lcom/transsion/baselib/helper/ReferrerBean;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    return-object p1

    .line 19
    :cond_1
    :goto_0
    new-instance p1, Lcom/transsion/baselib/helper/ReferrerBean;

    .line 20
    .line 21
    const/16 v6, 0x1f

    .line 22
    .line 23
    const/4 v7, 0x0

    .line 24
    const/4 v1, 0x0

    .line 25
    const/4 v2, 0x0

    .line 26
    const/4 v3, 0x0

    .line 27
    const/4 v4, 0x0

    .line 28
    const/4 v5, 0x0

    .line 29
    move-object v0, p1

    .line 30
    invoke-direct/range {v0 .. v7}, Lcom/transsion/baselib/helper/ReferrerBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 31
    .line 32
    .line 33
    return-object p1
.end method

.method public final e(Landroid/net/Uri;)Z
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_0

    .line 3
    .line 4
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    move-object v1, v0

    .line 10
    :goto_0
    const-string v2, "https"

    .line 11
    .line 12
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-nez v1, :cond_2

    .line 17
    .line 18
    if-eqz p1, :cond_1

    .line 19
    .line 20
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    :cond_1
    const-string v1, "http"

    .line 25
    .line 26
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-eqz v0, :cond_3

    .line 31
    .line 32
    :cond_2
    invoke-virtual {p1}, Landroid/net/Uri;->getQuery()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    invoke-static {p1}, Lcom/google/common/base/p;->b(Ljava/lang/String;)Z

    .line 37
    .line 38
    .line 39
    move-result p1

    .line 40
    if-eqz p1, :cond_3

    .line 41
    .line 42
    const/4 p1, 0x1

    .line 43
    goto :goto_1

    .line 44
    :cond_3
    const/4 p1, 0x0

    .line 45
    :goto_1
    return p1
.end method

.method public final g(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 20

    .line 1
    move-object/from16 v1, p1

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    const-string v2, "type"

    .line 5
    .line 6
    const/4 v3, 0x0

    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    return-object v3

    .line 10
    :cond_0
    :try_start_0
    sget-object v4, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 11
    .line 12
    invoke-virtual {v1, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    const-string v5, ""

    .line 17
    .line 18
    if-nez v4, :cond_1

    .line 19
    .line 20
    move-object v4, v5

    .line 21
    :cond_1
    :try_start_1
    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    .line 22
    .line 23
    .line 24
    move-result v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 25
    const-string v7, "/"

    .line 26
    .line 27
    const-string v8, "getQueryParameterNames(...)"

    .line 28
    .line 29
    const-string v9, "/main/tab"

    .line 30
    .line 31
    const-string v10, "subject_id"

    .line 32
    .line 33
    const-string v11, "/ugc_video/detail"

    .line 34
    .line 35
    const-string v12, "id"

    .line 36
    .line 37
    const-string v13, "/movie/detail"

    .line 38
    .line 39
    if-lez v6, :cond_10

    .line 40
    .line 41
    :try_start_2
    sget-object v0, Lij/g;->a:Lij/g;

    .line 42
    .line 43
    invoke-virtual {v0}, Lij/g;->b()Z

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    if-eqz v0, :cond_e

    .line 48
    .line 49
    sget-object v0, Lcom/transsion/baselib/helper/b;->a:Lcom/transsion/baselib/helper/b;

    .line 50
    .line 51
    invoke-direct {v0, v4}, Lcom/transsion/baselib/helper/b;->f(Ljava/lang/String;)Z

    .line 52
    .line 53
    .line 54
    move-result v5

    .line 55
    if-eqz v5, :cond_2

    .line 56
    .line 57
    new-instance v0, Landroid/net/Uri$Builder;

    .line 58
    .line 59
    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0, v9}, Landroid/net/Uri$Builder;->encodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    return-object v0

    .line 71
    :catchall_0
    move-exception v0

    .line 72
    goto/16 :goto_7

    .line 73
    .line 74
    :cond_2
    invoke-direct {v0, v4}, Lcom/transsion/baselib/helper/b;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 79
    .line 80
    .line 81
    move-result v5

    .line 82
    if-nez v5, :cond_7

    .line 83
    .line 84
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    .line 85
    .line 86
    .line 87
    move-result-object v3

    .line 88
    invoke-virtual {v3, v0}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 89
    .line 90
    .line 91
    move-result-object v3

    .line 92
    invoke-virtual {v3}, Landroid/net/Uri$Builder;->clearQuery()Landroid/net/Uri$Builder;

    .line 93
    .line 94
    .line 95
    move-result-object v3

    .line 96
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getQueryParameterNames()Ljava/util/Set;

    .line 97
    .line 98
    .line 99
    move-result-object v4

    .line 100
    invoke-static {v4, v8}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    check-cast v4, Ljava/lang/Iterable;

    .line 104
    .line 105
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 106
    .line 107
    .line 108
    move-result-object v4

    .line 109
    :cond_3
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 110
    .line 111
    .line 112
    move-result v5

    .line 113
    if-eqz v5, :cond_5

    .line 114
    .line 115
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 116
    .line 117
    .line 118
    move-result-object v5

    .line 119
    check-cast v5, Ljava/lang/String;

    .line 120
    .line 121
    invoke-static {v5, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 122
    .line 123
    .line 124
    move-result v6

    .line 125
    if-eqz v6, :cond_4

    .line 126
    .line 127
    invoke-virtual {v3, v2, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 128
    .line 129
    .line 130
    goto :goto_0

    .line 131
    :cond_4
    invoke-virtual {v1, v5}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v6

    .line 135
    if-eqz v6, :cond_3

    .line 136
    .line 137
    invoke-virtual {v3, v5, v6}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 138
    .line 139
    .line 140
    goto :goto_0

    .line 141
    :cond_5
    invoke-virtual {v3}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    .line 142
    .line 143
    .line 144
    move-result-object v0

    .line 145
    sget-object v2, Lcom/transsion/baselib/helper/b;->a:Lcom/transsion/baselib/helper/b;

    .line 146
    .line 147
    invoke-direct {v2, v0}, Lcom/transsion/baselib/helper/b;->b(Landroid/net/Uri;)Landroid/net/Uri;

    .line 148
    .line 149
    .line 150
    move-result-object v1

    .line 151
    if-nez v1, :cond_6

    .line 152
    .line 153
    goto :goto_1

    .line 154
    :cond_6
    move-object v0, v1

    .line 155
    :goto_1
    return-object v0

    .line 156
    :cond_7
    invoke-static {v4, v13}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 157
    .line 158
    .line 159
    move-result v0

    .line 160
    if-eqz v0, :cond_e

    .line 161
    .line 162
    invoke-virtual {v1, v12}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object v0

    .line 166
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    .line 167
    .line 168
    .line 169
    move-result-object v4

    .line 170
    invoke-virtual {v4, v11}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 171
    .line 172
    .line 173
    move-result-object v4

    .line 174
    invoke-virtual {v4}, Landroid/net/Uri$Builder;->clearQuery()Landroid/net/Uri$Builder;

    .line 175
    .line 176
    .line 177
    move-result-object v4

    .line 178
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getQueryParameterNames()Ljava/util/Set;

    .line 179
    .line 180
    .line 181
    move-result-object v5

    .line 182
    invoke-static {v5, v8}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 183
    .line 184
    .line 185
    check-cast v5, Ljava/lang/Iterable;

    .line 186
    .line 187
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 188
    .line 189
    .line 190
    move-result-object v5

    .line 191
    :cond_8
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 192
    .line 193
    .line 194
    move-result v6

    .line 195
    if-eqz v6, :cond_b

    .line 196
    .line 197
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 198
    .line 199
    .line 200
    move-result-object v6

    .line 201
    check-cast v6, Ljava/lang/String;

    .line 202
    .line 203
    invoke-static {v6, v12}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 204
    .line 205
    .line 206
    move-result v8

    .line 207
    if-eqz v8, :cond_9

    .line 208
    .line 209
    if-eqz v0, :cond_8

    .line 210
    .line 211
    invoke-virtual {v4, v10, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 212
    .line 213
    .line 214
    goto :goto_2

    .line 215
    :cond_9
    invoke-static {v6, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 216
    .line 217
    .line 218
    move-result v8

    .line 219
    if-eqz v8, :cond_a

    .line 220
    .line 221
    invoke-virtual {v4, v2, v11}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 222
    .line 223
    .line 224
    goto :goto_2

    .line 225
    :cond_a
    invoke-virtual {v1, v6}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    .line 226
    .line 227
    .line 228
    move-result-object v8

    .line 229
    if-eqz v8, :cond_8

    .line 230
    .line 231
    invoke-virtual {v4, v6, v8}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 232
    .line 233
    .line 234
    goto :goto_2

    .line 235
    :cond_b
    if-nez v0, :cond_d

    .line 236
    .line 237
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    .line 238
    .line 239
    .line 240
    move-result-object v13

    .line 241
    if-eqz v13, :cond_c

    .line 242
    .line 243
    filled-new-array {v7}, [Ljava/lang/String;

    .line 244
    .line 245
    .line 246
    move-result-object v14

    .line 247
    const/16 v17, 0x6

    .line 248
    .line 249
    const/16 v18, 0x0

    .line 250
    .line 251
    const/4 v15, 0x0

    .line 252
    const/16 v16, 0x0

    .line 253
    .line 254
    invoke-static/range {v13 .. v18}, Lkotlin/text/StringsKt;->S0(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    .line 255
    .line 256
    .line 257
    move-result-object v0

    .line 258
    if-eqz v0, :cond_c

    .line 259
    .line 260
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->v0(Ljava/util/List;)Ljava/lang/Object;

    .line 261
    .line 262
    .line 263
    move-result-object v0

    .line 264
    move-object v3, v0

    .line 265
    check-cast v3, Ljava/lang/String;

    .line 266
    .line 267
    :cond_c
    if-eqz v3, :cond_d

    .line 268
    .line 269
    invoke-virtual {v4, v10, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 270
    .line 271
    .line 272
    :cond_d
    invoke-virtual {v4}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    .line 273
    .line 274
    .line 275
    move-result-object v0

    .line 276
    return-object v0

    .line 277
    :cond_e
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    .line 278
    .line 279
    .line 280
    move-result-object v0

    .line 281
    invoke-virtual {v0, v4}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 282
    .line 283
    .line 284
    move-result-object v0

    .line 285
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    .line 286
    .line 287
    .line 288
    move-result-object v0

    .line 289
    sget-object v2, Lcom/transsion/baselib/helper/b;->a:Lcom/transsion/baselib/helper/b;

    .line 290
    .line 291
    invoke-direct {v2, v0}, Lcom/transsion/baselib/helper/b;->b(Landroid/net/Uri;)Landroid/net/Uri;

    .line 292
    .line 293
    .line 294
    move-result-object v1

    .line 295
    if-nez v1, :cond_f

    .line 296
    .line 297
    goto :goto_3

    .line 298
    :cond_f
    move-object v0, v1

    .line 299
    :goto_3
    return-object v0

    .line 300
    :cond_10
    new-instance v2, Ljava/util/HashMap;

    .line 301
    .line 302
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 303
    .line 304
    .line 305
    const-string v4, "subject"

    .line 306
    .line 307
    invoke-virtual {v2, v4, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 308
    .line 309
    .line 310
    const-string v4, "post"

    .line 311
    .line 312
    const-string v6, "/post/detail"

    .line 313
    .line 314
    invoke-virtual {v2, v4, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 315
    .line 316
    .line 317
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 318
    .line 319
    .line 320
    move-result-object v14

    .line 321
    const-string v4, "toString(...)"

    .line 322
    .line 323
    invoke-static {v14, v4}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 324
    .line 325
    .line 326
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 327
    .line 328
    .line 329
    move-result v4

    .line 330
    const/4 v6, 0x2

    .line 331
    const/4 v15, 0x0

    .line 332
    if-nez v4, :cond_14

    .line 333
    .line 334
    const-string v4, "-"

    .line 335
    .line 336
    filled-new-array {v4}, [Ljava/lang/String;

    .line 337
    .line 338
    .line 339
    move-result-object v4

    .line 340
    const/16 v18, 0x6

    .line 341
    .line 342
    const/16 v19, 0x0

    .line 343
    .line 344
    const/16 v16, 0x0

    .line 345
    .line 346
    const/16 v17, 0x0

    .line 347
    .line 348
    move v3, v15

    .line 349
    move-object v15, v4

    .line 350
    invoke-static/range {v14 .. v19}, Lkotlin/text/StringsKt;->S0(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    .line 351
    .line 352
    .line 353
    move-result-object v4

    .line 354
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 355
    .line 356
    .line 357
    move-result v14

    .line 358
    if-lt v14, v6, :cond_15

    .line 359
    .line 360
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 361
    .line 362
    .line 363
    move-result-object v14

    .line 364
    invoke-virtual {v2, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 365
    .line 366
    .line 367
    move-result-object v2

    .line 368
    check-cast v2, Ljava/lang/String;

    .line 369
    .line 370
    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 371
    .line 372
    .line 373
    move-result-object v4

    .line 374
    check-cast v4, Ljava/lang/String;

    .line 375
    .line 376
    if-eqz v2, :cond_15

    .line 377
    .line 378
    sget-object v0, Lij/g;->a:Lij/g;

    .line 379
    .line 380
    invoke-virtual {v0}, Lij/g;->b()Z

    .line 381
    .line 382
    .line 383
    move-result v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 384
    const-string v3, "id="

    .line 385
    .line 386
    if-eqz v0, :cond_13

    .line 387
    .line 388
    :try_start_3
    sget-object v0, Lcom/transsion/baselib/helper/b;->a:Lcom/transsion/baselib/helper/b;

    .line 389
    .line 390
    invoke-direct {v0, v2}, Lcom/transsion/baselib/helper/b;->f(Ljava/lang/String;)Z

    .line 391
    .line 392
    .line 393
    move-result v5

    .line 394
    if-eqz v5, :cond_11

    .line 395
    .line 396
    new-instance v0, Landroid/net/Uri$Builder;

    .line 397
    .line 398
    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    .line 399
    .line 400
    .line 401
    invoke-virtual {v0, v9}, Landroid/net/Uri$Builder;->encodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 402
    .line 403
    .line 404
    move-result-object v0

    .line 405
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    .line 406
    .line 407
    .line 408
    move-result-object v0

    .line 409
    return-object v0

    .line 410
    :cond_11
    invoke-direct {v0, v2}, Lcom/transsion/baselib/helper/b;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 411
    .line 412
    .line 413
    move-result-object v0

    .line 414
    if-eqz v0, :cond_12

    .line 415
    .line 416
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 417
    .line 418
    .line 419
    move-result v5

    .line 420
    if-nez v5, :cond_12

    .line 421
    .line 422
    new-instance v2, Landroid/net/Uri$Builder;

    .line 423
    .line 424
    invoke-direct {v2}, Landroid/net/Uri$Builder;-><init>()V

    .line 425
    .line 426
    .line 427
    invoke-virtual {v2, v0}, Landroid/net/Uri$Builder;->encodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 428
    .line 429
    .line 430
    move-result-object v0

    .line 431
    new-instance v2, Ljava/lang/StringBuilder;

    .line 432
    .line 433
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 434
    .line 435
    .line 436
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 437
    .line 438
    .line 439
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 440
    .line 441
    .line 442
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 443
    .line 444
    .line 445
    move-result-object v2

    .line 446
    invoke-virtual {v0, v2}, Landroid/net/Uri$Builder;->encodedQuery(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 447
    .line 448
    .line 449
    move-result-object v0

    .line 450
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    .line 451
    .line 452
    .line 453
    move-result-object v0

    .line 454
    return-object v0

    .line 455
    :cond_12
    invoke-static {v2, v13}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 456
    .line 457
    .line 458
    move-result v0

    .line 459
    if-eqz v0, :cond_13

    .line 460
    .line 461
    new-instance v0, Landroid/net/Uri$Builder;

    .line 462
    .line 463
    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    .line 464
    .line 465
    .line 466
    invoke-virtual {v0, v11}, Landroid/net/Uri$Builder;->encodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 467
    .line 468
    .line 469
    move-result-object v0

    .line 470
    new-instance v2, Ljava/lang/StringBuilder;

    .line 471
    .line 472
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 473
    .line 474
    .line 475
    const-string v3, "subject_id="

    .line 476
    .line 477
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 478
    .line 479
    .line 480
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 481
    .line 482
    .line 483
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 484
    .line 485
    .line 486
    move-result-object v2

    .line 487
    invoke-virtual {v0, v2}, Landroid/net/Uri$Builder;->encodedQuery(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 488
    .line 489
    .line 490
    move-result-object v0

    .line 491
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    .line 492
    .line 493
    .line 494
    move-result-object v0

    .line 495
    return-object v0

    .line 496
    :cond_13
    new-instance v0, Landroid/net/Uri$Builder;

    .line 497
    .line 498
    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    .line 499
    .line 500
    .line 501
    invoke-virtual {v0, v2}, Landroid/net/Uri$Builder;->encodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 502
    .line 503
    .line 504
    move-result-object v0

    .line 505
    new-instance v2, Ljava/lang/StringBuilder;

    .line 506
    .line 507
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 508
    .line 509
    .line 510
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 511
    .line 512
    .line 513
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 514
    .line 515
    .line 516
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 517
    .line 518
    .line 519
    move-result-object v2

    .line 520
    invoke-virtual {v0, v2}, Landroid/net/Uri$Builder;->encodedQuery(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 521
    .line 522
    .line 523
    move-result-object v0

    .line 524
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    .line 525
    .line 526
    .line 527
    move-result-object v0

    .line 528
    return-object v0

    .line 529
    :cond_14
    move v3, v15

    .line 530
    :cond_15
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    .line 531
    .line 532
    .line 533
    move-result-object v2

    .line 534
    if-nez v2, :cond_16

    .line 535
    .line 536
    move-object v14, v5

    .line 537
    goto :goto_4

    .line 538
    :cond_16
    move-object v14, v2

    .line 539
    :goto_4
    move v15, v3

    .line 540
    :goto_5
    invoke-interface {v14}, Ljava/lang/CharSequence;->length()I

    .line 541
    .line 542
    .line 543
    move-result v2

    .line 544
    if-ge v15, v2, :cond_18

    .line 545
    .line 546
    invoke-interface {v14, v15}, Ljava/lang/CharSequence;->charAt(I)C

    .line 547
    .line 548
    .line 549
    move-result v2

    .line 550
    const/16 v4, 0x2f

    .line 551
    .line 552
    if-ne v2, v4, :cond_17

    .line 553
    .line 554
    add-int/2addr v3, v0

    .line 555
    :cond_17
    add-int/2addr v15, v0

    .line 556
    goto :goto_5

    .line 557
    :cond_18
    if-ge v3, v6, :cond_19

    .line 558
    .line 559
    const/4 v0, 0x0

    .line 560
    return-object v0

    .line 561
    :cond_19
    sget-object v0, Lij/g;->a:Lij/g;

    .line 562
    .line 563
    invoke-virtual {v0}, Lij/g;->b()Z

    .line 564
    .line 565
    .line 566
    move-result v0

    .line 567
    if-eqz v0, :cond_21

    .line 568
    .line 569
    sget-object v0, Lcom/transsion/baselib/helper/b;->a:Lcom/transsion/baselib/helper/b;

    .line 570
    .line 571
    invoke-direct {v0, v14}, Lcom/transsion/baselib/helper/b;->f(Ljava/lang/String;)Z

    .line 572
    .line 573
    .line 574
    move-result v2

    .line 575
    if-eqz v2, :cond_1a

    .line 576
    .line 577
    new-instance v0, Landroid/net/Uri$Builder;

    .line 578
    .line 579
    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    .line 580
    .line 581
    .line 582
    invoke-virtual {v0, v9}, Landroid/net/Uri$Builder;->encodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 583
    .line 584
    .line 585
    move-result-object v0

    .line 586
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    .line 587
    .line 588
    .line 589
    move-result-object v0

    .line 590
    return-object v0

    .line 591
    :cond_1a
    invoke-direct {v0, v14}, Lcom/transsion/baselib/helper/b;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 592
    .line 593
    .line 594
    move-result-object v2

    .line 595
    invoke-static {v2, v14}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 596
    .line 597
    .line 598
    move-result v3

    .line 599
    if-nez v3, :cond_1c

    .line 600
    .line 601
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    .line 602
    .line 603
    .line 604
    move-result-object v3

    .line 605
    invoke-virtual {v3, v2}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 606
    .line 607
    .line 608
    move-result-object v2

    .line 609
    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    .line 610
    .line 611
    .line 612
    move-result-object v3

    .line 613
    invoke-direct {v0, v3}, Lcom/transsion/baselib/helper/b;->b(Landroid/net/Uri;)Landroid/net/Uri;

    .line 614
    .line 615
    .line 616
    move-result-object v0

    .line 617
    if-nez v0, :cond_1b

    .line 618
    .line 619
    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    .line 620
    .line 621
    .line 622
    move-result-object v0

    .line 623
    :cond_1b
    return-object v0

    .line 624
    :cond_1c
    invoke-static {v14, v13}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 625
    .line 626
    .line 627
    move-result v0

    .line 628
    if-eqz v0, :cond_21

    .line 629
    .line 630
    invoke-virtual {v1, v12}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    .line 631
    .line 632
    .line 633
    move-result-object v0

    .line 634
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    .line 635
    .line 636
    .line 637
    move-result-object v2

    .line 638
    invoke-virtual {v2, v11}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 639
    .line 640
    .line 641
    move-result-object v2

    .line 642
    invoke-virtual {v2}, Landroid/net/Uri$Builder;->clearQuery()Landroid/net/Uri$Builder;

    .line 643
    .line 644
    .line 645
    move-result-object v2

    .line 646
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getQueryParameterNames()Ljava/util/Set;

    .line 647
    .line 648
    .line 649
    move-result-object v3

    .line 650
    invoke-static {v3, v8}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 651
    .line 652
    .line 653
    check-cast v3, Ljava/lang/Iterable;

    .line 654
    .line 655
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 656
    .line 657
    .line 658
    move-result-object v3

    .line 659
    :cond_1d
    :goto_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 660
    .line 661
    .line 662
    move-result v4

    .line 663
    if-eqz v4, :cond_1f

    .line 664
    .line 665
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 666
    .line 667
    .line 668
    move-result-object v4

    .line 669
    check-cast v4, Ljava/lang/String;

    .line 670
    .line 671
    invoke-static {v4, v12}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 672
    .line 673
    .line 674
    move-result v5

    .line 675
    if-eqz v5, :cond_1e

    .line 676
    .line 677
    if-eqz v0, :cond_1d

    .line 678
    .line 679
    invoke-virtual {v2, v10, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 680
    .line 681
    .line 682
    goto :goto_6

    .line 683
    :cond_1e
    invoke-virtual {v1, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    .line 684
    .line 685
    .line 686
    move-result-object v5

    .line 687
    if-eqz v5, :cond_1d

    .line 688
    .line 689
    invoke-virtual {v2, v4, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 690
    .line 691
    .line 692
    goto :goto_6

    .line 693
    :cond_1f
    if-nez v0, :cond_20

    .line 694
    .line 695
    filled-new-array {v7}, [Ljava/lang/String;

    .line 696
    .line 697
    .line 698
    move-result-object v15

    .line 699
    const/16 v18, 0x6

    .line 700
    .line 701
    const/16 v19, 0x0

    .line 702
    .line 703
    const/16 v16, 0x0

    .line 704
    .line 705
    const/16 v17, 0x0

    .line 706
    .line 707
    invoke-static/range {v14 .. v19}, Lkotlin/text/StringsKt;->S0(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    .line 708
    .line 709
    .line 710
    move-result-object v0

    .line 711
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->v0(Ljava/util/List;)Ljava/lang/Object;

    .line 712
    .line 713
    .line 714
    move-result-object v0

    .line 715
    check-cast v0, Ljava/lang/String;

    .line 716
    .line 717
    if-eqz v0, :cond_20

    .line 718
    .line 719
    invoke-virtual {v2, v10, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 720
    .line 721
    .line 722
    :cond_20
    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    .line 723
    .line 724
    .line 725
    move-result-object v0

    .line 726
    return-object v0

    .line 727
    :cond_21
    sget-object v0, Lcom/transsion/baselib/helper/b;->a:Lcom/transsion/baselib/helper/b;

    .line 728
    .line 729
    invoke-direct {v0, v1}, Lcom/transsion/baselib/helper/b;->b(Landroid/net/Uri;)Landroid/net/Uri;

    .line 730
    .line 731
    .line 732
    move-result-object v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 733
    if-nez v0, :cond_22

    .line 734
    .line 735
    move-object v0, v1

    .line 736
    :cond_22
    return-object v0

    .line 737
    :goto_7
    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 738
    .line 739
    invoke-static {v0}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 740
    .line 741
    .line 742
    move-result-object v0

    .line 743
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 744
    .line 745
    .line 746
    move-result-object v0

    .line 747
    invoke-static {v0}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 748
    .line 749
    .line 750
    move-result-object v0

    .line 751
    if-nez v0, :cond_23

    .line 752
    .line 753
    goto :goto_8

    .line 754
    :cond_23
    const-string v0, "\u8bf7\u5347\u7ea7\u6700\u65b0\u7248\u672c"

    .line 755
    .line 756
    invoke-static {v0}, Lcom/transsion/core/utils/ToastUtil;->f(Ljava/lang/String;)V

    .line 757
    .line 758
    .line 759
    :goto_8
    return-object v1
.end method
