.class public final Lcom/transsion/push/helper/e;
.super Ljava/lang/Object;
.source "source.java"


# static fields
.field public static final a:Lcom/transsion/push/helper/e;

.field private static final b:I

.field private static final c:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/transsion/push/helper/e;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/transsion/push/helper/e;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/transsion/push/helper/e;->a:Lcom/transsion/push/helper/e;

    .line 7
    .line 8
    const/16 v0, 0x64

    .line 9
    .line 10
    invoke-static {v0}, Llj/a;->b(I)I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    sput v0, Lcom/transsion/push/helper/e;->b:I

    .line 15
    .line 16
    new-instance v0, Lcom/transsion/push/helper/d;

    .line 17
    .line 18
    invoke-direct {v0}, Lcom/transsion/push/helper/d;-><init>()V

    .line 19
    .line 20
    .line 21
    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    sput-object v0, Lcom/transsion/push/helper/e;->c:Lkotlin/Lazy;

    .line 26
    .line 27
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

.method public static synthetic a()I
    .locals 1

    .line 1
    invoke-static {}, Lcom/transsion/push/helper/e;->b()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method private static final b()I
    .locals 2

    .line 1
    invoke-static {}, Lcom/blankj/utilcode/util/y;->a()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/16 v1, 0x50

    .line 6
    .line 7
    invoke-static {v1}, Llj/a;->b(I)I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    sub-int/2addr v0, v1

    .line 12
    return v0
.end method

.method private final c(Landroid/content/Context;Ljava/util/Map;Lcom/transsion/baselib/db/notification/MsgBean;Lcom/transsion/push/bean/ServerMatchListItemData;Ljava/util/Map;)V
    .locals 8

    .line 1
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 6
    .line 7
    .line 8
    move-result-object p2

    .line 9
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    check-cast v0, Ljava/util/Map$Entry;

    .line 20
    .line 21
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    move-object v4, v1

    .line 26
    check-cast v4, Ljava/lang/String;

    .line 27
    .line 28
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    check-cast v0, Ljava/lang/String;

    .line 33
    .line 34
    invoke-static {p1}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    invoke-virtual {v1}, Lcom/bumptech/glide/RequestManager;->asBitmap()Lcom/bumptech/glide/RequestBuilder;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    sget-object v2, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->DATA:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    .line 43
    .line 44
    invoke-virtual {v1, v2}, Lcom/bumptech/glide/request/BaseRequestOptions;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/request/BaseRequestOptions;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    check-cast v1, Lcom/bumptech/glide/RequestBuilder;

    .line 49
    .line 50
    invoke-virtual {v1, v0}, Lcom/bumptech/glide/RequestBuilder;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    new-instance v1, Lcom/transsion/push/helper/e$a;

    .line 55
    .line 56
    move-object v2, v1

    .line 57
    move-object v3, p5

    .line 58
    move-object v5, p1

    .line 59
    move-object v6, p3

    .line 60
    move-object v7, p4

    .line 61
    invoke-direct/range {v2 .. v7}, Lcom/transsion/push/helper/e$a;-><init>(Ljava/util/Map;Ljava/lang/String;Landroid/content/Context;Lcom/transsion/baselib/db/notification/MsgBean;Lcom/transsion/push/bean/ServerMatchListItemData;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestBuilder;->into(Lcom/bumptech/glide/request/target/Target;)Lcom/bumptech/glide/request/target/Target;

    .line 65
    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_0
    return-void
.end method

.method private final k(Landroid/content/Context;Lcom/transsion/baselib/db/notification/MsgBean;)V
    .locals 7

    .line 1
    sget-object v0, Lwf/a;->a:Lwf/a$a;

    .line 2
    .line 3
    const/4 v4, 0x4

    .line 4
    const/4 v5, 0x0

    .line 5
    const-string v1, "PushImageHelper"

    .line 6
    .line 7
    const-string v2, "handleRequest"

    .line 8
    .line 9
    const/4 v3, 0x0

    .line 10
    invoke-static/range {v0 .. v5}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    sget-object v0, Lcom/transsion/push/helper/NotificationShowHelper;->a:Lcom/transsion/push/helper/NotificationShowHelper;

    .line 14
    .line 15
    invoke-virtual {v0, p2}, Lcom/transsion/push/helper/NotificationShowHelper;->i(Lcom/transsion/baselib/db/notification/MsgBean;)Ljava/util/List;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    move-object v2, v1

    .line 20
    check-cast v2, Ljava/util/Collection;

    .line 21
    .line 22
    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    if-nez v2, :cond_3

    .line 27
    .line 28
    const/4 v2, 0x0

    .line 29
    :try_start_0
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    check-cast v1, Ljava/lang/String;

    .line 34
    .line 35
    invoke-virtual {p2}, Lcom/transsion/baselib/db/notification/MsgBean;->getBuiltIn()Z

    .line 36
    .line 37
    .line 38
    move-result v3

    .line 39
    if-eqz v3, :cond_0

    .line 40
    .line 41
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    invoke-virtual {v2, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    invoke-virtual {v0, p1, p2, v2}, Lcom/transsion/push/helper/NotificationShowHelper;->r(Landroid/content/Context;Lcom/transsion/baselib/db/notification/MsgBean;Landroid/graphics/Bitmap;)V

    .line 54
    .line 55
    .line 56
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 57
    .line 58
    .line 59
    goto/16 :goto_0

    .line 60
    .line 61
    :cond_0
    invoke-virtual {p2}, Lcom/transsion/baselib/db/notification/MsgBean;->isPermanent()Z

    .line 62
    .line 63
    .line 64
    move-result v0

    .line 65
    if-nez v0, :cond_1

    .line 66
    .line 67
    invoke-virtual {p2}, Lcom/transsion/baselib/db/notification/MsgBean;->getStyle()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    const-string v3, "101"

    .line 72
    .line 73
    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 74
    .line 75
    .line 76
    move-result v0

    .line 77
    if-nez v0, :cond_1

    .line 78
    .line 79
    const/4 v2, 0x1

    .line 80
    :cond_1
    invoke-static {p1}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    invoke-virtual {v0}, Lcom/bumptech/glide/RequestManager;->asBitmap()Lcom/bumptech/glide/RequestBuilder;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    sget-object v3, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->DATA:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    .line 89
    .line 90
    invoke-virtual {v0, v3}, Lcom/bumptech/glide/request/BaseRequestOptions;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/request/BaseRequestOptions;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    check-cast v0, Lcom/bumptech/glide/RequestBuilder;

    .line 95
    .line 96
    sget-object v3, Lcom/transsion/push/utils/NotificationUtil;->a:Lcom/transsion/push/utils/NotificationUtil;

    .line 97
    .line 98
    invoke-virtual {p0, v2}, Lcom/transsion/push/helper/e;->f(Z)I

    .line 99
    .line 100
    .line 101
    move-result v2

    .line 102
    invoke-virtual {v3, v1, v2}, Lcom/transsion/push/utils/NotificationUtil;->J(Ljava/lang/String;I)Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v1

    .line 106
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestBuilder;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    .line 107
    .line 108
    .line 109
    move-result-object v0

    .line 110
    new-instance v1, Lcom/transsion/push/helper/e$b;

    .line 111
    .line 112
    invoke-direct {v1, p2, p1}, Lcom/transsion/push/helper/e$b;-><init>(Lcom/transsion/baselib/db/notification/MsgBean;Landroid/content/Context;)V

    .line 113
    .line 114
    .line 115
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestBuilder;->into(Lcom/bumptech/glide/request/target/Target;)Lcom/bumptech/glide/request/target/Target;

    .line 116
    .line 117
    .line 118
    move-result-object p1

    .line 119
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 120
    .line 121
    .line 122
    goto :goto_0

    .line 123
    :catch_0
    sget-object v0, Lwf/a;->a:Lwf/a$a;

    .line 124
    .line 125
    const/4 v4, 0x4

    .line 126
    const/4 v5, 0x0

    .line 127
    const-string v1, "PushImageHelper"

    .line 128
    .line 129
    const-string v2, "onFailure"

    .line 130
    .line 131
    const/4 v3, 0x0

    .line 132
    invoke-static/range {v0 .. v5}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 133
    .line 134
    .line 135
    invoke-virtual {p2}, Lcom/transsion/baselib/db/notification/MsgBean;->isRefresh()Z

    .line 136
    .line 137
    .line 138
    move-result p1

    .line 139
    if-nez p1, :cond_3

    .line 140
    .line 141
    invoke-virtual {p2}, Lcom/transsion/baselib/db/notification/MsgBean;->getType()Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object p1

    .line 145
    sget-object v0, Lcom/transsion/push/bean/MsgType;->ONLINE_JSON_PUSH:Lcom/transsion/push/bean/MsgType;

    .line 146
    .line 147
    invoke-virtual {v0}, Lcom/transsion/push/bean/MsgType;->getType()Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object v0

    .line 151
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 152
    .line 153
    .line 154
    move-result p1

    .line 155
    if-eqz p1, :cond_2

    .line 156
    .line 157
    sget-object v0, Lcom/transsion/push/helper/a;->a:Lcom/transsion/push/helper/a;

    .line 158
    .line 159
    invoke-virtual {p2}, Lcom/transsion/baselib/db/notification/MsgBean;->getMessageId()Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object v1

    .line 163
    invoke-virtual {p2}, Lcom/transsion/baselib/db/notification/MsgBean;->getDeeplink()Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object p1

    .line 167
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object v2

    .line 171
    invoke-virtual {p2}, Lcom/transsion/baselib/db/notification/MsgBean;->getStyle()Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    move-result-object v4

    .line 175
    const-string v5, "402"

    .line 176
    .line 177
    const-string v6, "2"

    .line 178
    .line 179
    const-string v3, ""

    .line 180
    .line 181
    invoke-virtual/range {v0 .. v6}, Lcom/transsion/push/helper/a;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    .line 183
    .line 184
    goto :goto_0

    .line 185
    :cond_2
    sget-object p1, Lcom/transsion/push/helper/a;->a:Lcom/transsion/push/helper/a;

    .line 186
    .line 187
    const-string v0, ""

    .line 188
    .line 189
    const-string v1, "402"

    .line 190
    .line 191
    invoke-virtual {p1, p2, v0, v1}, Lcom/transsion/push/helper/a;->c(Lcom/transsion/baselib/db/notification/MsgBean;Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    .line 193
    .line 194
    :cond_3
    :goto_0
    return-void
.end method

.method private final l(Landroid/content/Context;Lcom/transsion/baselib/db/notification/MsgBean;Lcom/transsion/push/bean/ServerMatchListItemData;)V
    .locals 9

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p3, :cond_0

    .line 3
    .line 4
    invoke-virtual {p3}, Lcom/transsion/push/bean/ServerMatchListItemData;->getTeam1()Lcom/transsion/push/bean/TeamInfoMatch;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    invoke-virtual {v1}, Lcom/transsion/push/bean/TeamInfoMatch;->getAvatar()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    move-object v1, v0

    .line 16
    :goto_0
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    if-eqz p3, :cond_1

    .line 21
    .line 22
    invoke-virtual {p3}, Lcom/transsion/push/bean/ServerMatchListItemData;->getTeam2()Lcom/transsion/push/bean/TeamInfoMatch;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    if-eqz v2, :cond_1

    .line 27
    .line 28
    invoke-virtual {v2}, Lcom/transsion/push/bean/TeamInfoMatch;->getAvatar()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    :cond_1
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    const-string v2, "team1ImgUrl"

    .line 37
    .line 38
    invoke-static {v2, v1}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    const-string v2, "team2ImgUrl"

    .line 43
    .line 44
    invoke-static {v2, v0}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    const/4 v2, 0x2

    .line 49
    new-array v2, v2, [Lkotlin/Pair;

    .line 50
    .line 51
    const/4 v3, 0x0

    .line 52
    aput-object v1, v2, v3

    .line 53
    .line 54
    const/4 v1, 0x1

    .line 55
    aput-object v0, v2, v1

    .line 56
    .line 57
    invoke-static {v2}, Lkotlin/collections/MapsKt;->m([Lkotlin/Pair;)Ljava/util/Map;

    .line 58
    .line 59
    .line 60
    move-result-object v5

    .line 61
    new-instance v8, Ljava/util/LinkedHashMap;

    .line 62
    .line 63
    invoke-direct {v8}, Ljava/util/LinkedHashMap;-><init>()V

    .line 64
    .line 65
    .line 66
    move-object v3, p0

    .line 67
    move-object v4, p1

    .line 68
    move-object v6, p2

    .line 69
    move-object v7, p3

    .line 70
    invoke-direct/range {v3 .. v8}, Lcom/transsion/push/helper/e;->c(Landroid/content/Context;Ljava/util/Map;Lcom/transsion/baselib/db/notification/MsgBean;Lcom/transsion/push/bean/ServerMatchListItemData;Ljava/util/Map;)V

    .line 71
    .line 72
    .line 73
    return-void
.end method


# virtual methods
.method public final d()I
    .locals 1

    .line 1
    sget-object v0, Lcom/transsion/push/helper/e;->c:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/lang/Number;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    return v0
.end method

.method public final e()Landroid/graphics/Bitmap;
    .locals 8

    .line 1
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    sget v1, Lcom/transsion/lib/push/R$mipmap;->ic_default_push:I

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    const-string v0, "getDrawable(...)"

    .line 16
    .line 17
    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    const/4 v6, 0x7

    .line 21
    const/4 v7, 0x0

    .line 22
    const/4 v3, 0x0

    .line 23
    const/4 v4, 0x0

    .line 24
    const/4 v5, 0x0

    .line 25
    invoke-static/range {v2 .. v7}, La1/b;->c(Landroid/graphics/drawable/Drawable;IILandroid/graphics/Bitmap$Config;ILjava/lang/Object;)Landroid/graphics/Bitmap;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    return-object v0
.end method

.method public final f(Z)I
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    sget p1, Lcom/transsion/push/helper/e;->b:I

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p0}, Lcom/transsion/push/helper/e;->d()I

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    :goto_0
    return p1
.end method

.method public final g()I
    .locals 1

    .line 1
    sget v0, Lcom/transsion/push/helper/e;->b:I

    .line 2
    .line 3
    return v0
.end method

.method public final h(Landroid/content/Context;Lcom/transsion/baselib/db/notification/MsgBean;Lcom/transsion/push/bean/ServerMatchListItemData;)V
    .locals 7

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "permanentMsgBean"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    sget-object v1, Lwf/a;->a:Lwf/a$a;

    .line 12
    .line 13
    new-instance v0, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 16
    .line 17
    .line 18
    const-string v2, "handleHigherMatchMsg data :"

    .line 19
    .line 20
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    const/4 v5, 0x4

    .line 31
    const/4 v6, 0x0

    .line 32
    const-string v2, "PushImageHelper"

    .line 33
    .line 34
    const/4 v4, 0x0

    .line 35
    invoke-static/range {v1 .. v6}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 36
    .line 37
    .line 38
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/push/helper/e;->l(Landroid/content/Context;Lcom/transsion/baselib/db/notification/MsgBean;Lcom/transsion/push/bean/ServerMatchListItemData;)V

    .line 39
    .line 40
    .line 41
    return-void
.end method

.method public final i(Landroid/content/Context;Lcom/transsion/baselib/db/notification/MsgBean;)V
    .locals 1

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "permanentMsgBean"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0, p1, p2}, Lcom/transsion/push/helper/e;->k(Landroid/content/Context;Lcom/transsion/baselib/db/notification/MsgBean;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public final j(Landroid/content/Context;Lcom/transsion/baselib/db/notification/MsgBean;)V
    .locals 1

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "msgBean"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0, p1, p2}, Lcom/transsion/push/helper/e;->k(Landroid/content/Context;Lcom/transsion/baselib/db/notification/MsgBean;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method
