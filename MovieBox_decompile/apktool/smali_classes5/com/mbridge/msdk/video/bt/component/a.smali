.class public Lcom/mbridge/msdk/video/bt/component/a;
.super Ljava/lang/Object;
.source "source.java"


# static fields
.field private static a:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;>;"
        }
    .end annotation
.end field

.field private static b:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static c:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Lcom/mbridge/msdk/foundation/entity/CampaignEx;",
            ">;"
        }
    .end annotation
.end field

.field private static d:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Lcom/mbridge/msdk/videocommon/setting/c;",
            ">;"
        }
    .end annotation
.end field

.field private static e:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static f:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static g:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile h:I

.field private static i:I

.field private static j:I

.field private static k:Ljava/lang/String;

.field private static l:I

.field private static m:I

.field private static n:I

.field private static o:I

.field private static p:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/mbridge/msdk/video/bt/component/a;->a:Ljava/util/concurrent/ConcurrentHashMap;

    .line 7
    .line 8
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lcom/mbridge/msdk/video/bt/component/a;->b:Ljava/util/LinkedHashMap;

    .line 14
    .line 15
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 16
    .line 17
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 18
    .line 19
    .line 20
    sput-object v0, Lcom/mbridge/msdk/video/bt/component/a;->c:Ljava/util/LinkedHashMap;

    .line 21
    .line 22
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 23
    .line 24
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 25
    .line 26
    .line 27
    sput-object v0, Lcom/mbridge/msdk/video/bt/component/a;->d:Ljava/util/LinkedHashMap;

    .line 28
    .line 29
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 30
    .line 31
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 32
    .line 33
    .line 34
    sput-object v0, Lcom/mbridge/msdk/video/bt/component/a;->e:Ljava/util/LinkedHashMap;

    .line 35
    .line 36
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 37
    .line 38
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 39
    .line 40
    .line 41
    sput-object v0, Lcom/mbridge/msdk/video/bt/component/a;->f:Ljava/util/LinkedHashMap;

    .line 42
    .line 43
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 44
    .line 45
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 46
    .line 47
    .line 48
    sput-object v0, Lcom/mbridge/msdk/video/bt/component/a;->g:Ljava/util/LinkedHashMap;

    .line 49
    .line 50
    const/16 v0, 0x2710

    .line 51
    .line 52
    sput v0, Lcom/mbridge/msdk/video/bt/component/a;->h:I

    .line 53
    .line 54
    const/4 v0, 0x0

    .line 55
    sput v0, Lcom/mbridge/msdk/video/bt/component/a;->i:I

    .line 56
    .line 57
    const/4 v0, 0x1

    .line 58
    sput v0, Lcom/mbridge/msdk/video/bt/component/a;->j:I

    .line 59
    .line 60
    const-string v0, ""

    .line 61
    .line 62
    sput-object v0, Lcom/mbridge/msdk/video/bt/component/a;->k:Ljava/lang/String;

    .line 63
    .line 64
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

.method private a(Ljava/lang/String;Ljava/lang/String;)Lcom/mbridge/msdk/video/bt/module/MBridgeBTContainer;
    .locals 1

    .line 185
    invoke-virtual {p0, p1, p2}, Lcom/mbridge/msdk/video/bt/component/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/util/LinkedHashMap;

    move-result-object p1

    .line 186
    invoke-virtual {p1}, Ljava/util/AbstractMap;->size()I

    move-result p2

    if-lez p2, :cond_1

    .line 187
    invoke-virtual {p1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/View;

    .line 188
    instance-of v0, p2, Lcom/mbridge/msdk/video/bt/module/MBridgeBTContainer;

    if-eqz v0, :cond_0

    .line 189
    check-cast p2, Lcom/mbridge/msdk/video/bt/module/MBridgeBTContainer;

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    :goto_0
    return-object p2
.end method

.method static synthetic a()Ljava/util/LinkedHashMap;
    .locals 1

    .line 1
    sget-object v0, Lcom/mbridge/msdk/video/bt/component/a;->b:Ljava/util/LinkedHashMap;

    return-object v0
.end method

.method private a(Lcom/mbridge/msdk/foundation/entity/CampaignEx;)V
    .locals 2

    .line 190
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/mbridge/msdk/video/bt/component/a$c;

    invoke-direct {v1, p0, p1}, Lcom/mbridge/msdk/video/bt/component/a$c;-><init>(Lcom/mbridge/msdk/video/bt/component/a;Lcom/mbridge/msdk/foundation/entity/CampaignEx;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 191
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method static synthetic a(Lcom/mbridge/msdk/video/bt/component/a;Ljava/lang/String;Lcom/mbridge/msdk/foundation/entity/CampaignEx;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/mbridge/msdk/video/bt/component/a;->a(Ljava/lang/String;Lcom/mbridge/msdk/foundation/entity/CampaignEx;)V

    return-void
.end method

.method private a(Ljava/lang/String;Lcom/mbridge/msdk/foundation/entity/CampaignEx;)V
    .locals 1

    .line 192
    sget-object v0, Lcom/mbridge/msdk/foundation/same/buffer/b;->k:Ljava/util/Map;

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lcom/mbridge/msdk/out/Campaign;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 193
    const-string v0, "reward"

    invoke-static {p1, p2, v0}, Lcom/mbridge/msdk/foundation/same/buffer/b;->a(Ljava/lang/String;Lcom/mbridge/msdk/foundation/entity/CampaignEx;Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public A(Ljava/lang/Object;Lorg/json/JSONObject;)V
    .locals 5

    .line 1
    const-string v0, "OperateViews"

    .line 2
    .line 3
    :try_start_0
    const-string v1, "unitId"

    .line 4
    .line 5
    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    const-string v2, "id"

    .line 10
    .line 11
    invoke-virtual {p2, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    invoke-virtual {p0, v2}, Lcom/mbridge/msdk/video/bt/component/a;->e(Ljava/lang/String;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 20
    .line 21
    .line 22
    move-result v4

    .line 23
    if-eqz v4, :cond_0

    .line 24
    .line 25
    move-object v4, p1

    .line 26
    check-cast v4, Lcom/mbridge/msdk/mbsignalcommon/windvane/a;

    .line 27
    .line 28
    iget-object v4, v4, Lcom/mbridge/msdk/mbsignalcommon/windvane/a;->b:Lcom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

    .line 29
    .line 30
    if-eqz v4, :cond_0

    .line 31
    .line 32
    invoke-virtual {v4}, Lcom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;->getRid()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    goto :goto_0

    .line 37
    :catchall_0
    move-exception p2

    .line 38
    goto :goto_1

    .line 39
    :cond_0
    :goto_0
    const-string v4, "data"

    .line 40
    .line 41
    invoke-virtual {p2, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 42
    .line 43
    .line 44
    move-result-object p2

    .line 45
    if-nez p2, :cond_1

    .line 46
    .line 47
    const-string p2, "data is empty"

    .line 48
    .line 49
    invoke-virtual {p0, p1, p2}, Lcom/mbridge/msdk/video/bt/component/a;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    return-void

    .line 53
    :cond_1
    invoke-virtual {p0, v1, v3}, Lcom/mbridge/msdk/video/bt/component/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/util/LinkedHashMap;

    .line 54
    .line 55
    .line 56
    move-result-object p2

    .line 57
    invoke-virtual {p2, v2}, Ljava/util/AbstractMap;->containsKey(Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    move-result v1

    .line 61
    if-eqz v1, :cond_4

    .line 62
    .line 63
    invoke-virtual {p2, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object p2

    .line 67
    check-cast p2, Landroid/view/View;

    .line 68
    .line 69
    instance-of v1, p2, Lcom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;

    .line 70
    .line 71
    if-eqz v1, :cond_3

    .line 72
    .line 73
    check-cast p2, Lcom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;

    .line 74
    .line 75
    invoke-virtual {p2}, Lcom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;->playUnMute()Z

    .line 76
    .line 77
    .line 78
    move-result p2

    .line 79
    if-eqz p2, :cond_2

    .line 80
    .line 81
    invoke-virtual {p0, p1, v2}, Lcom/mbridge/msdk/video/bt/component/a;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    const-string p2, "onUnmute"

    .line 85
    .line 86
    invoke-virtual {p0, p1, p2, v2}, Lcom/mbridge/msdk/video/bt/component/a;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    const-string p2, "playerUnmute successed"

    .line 90
    .line 91
    invoke-static {v0, p2}, Lcom/mbridge/msdk/foundation/tools/o0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    goto :goto_2

    .line 95
    :cond_2
    const-string p2, "set unmute failed"

    .line 96
    .line 97
    invoke-virtual {p0, p1, p2}, Lcom/mbridge/msdk/video/bt/component/a;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    const-string p2, "playerUnmute failed: set unmute failed"

    .line 101
    .line 102
    invoke-static {v0, p2}, Lcom/mbridge/msdk/foundation/tools/o0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    goto :goto_2

    .line 106
    :cond_3
    const-string p2, "instanceId is not player"

    .line 107
    .line 108
    invoke-virtual {p0, p1, p2}, Lcom/mbridge/msdk/video/bt/component/a;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    const-string p2, "playerUnmute failed: instanceId is not player"

    .line 112
    .line 113
    invoke-static {v0, p2}, Lcom/mbridge/msdk/foundation/tools/o0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    goto :goto_2

    .line 117
    :cond_4
    const-string p2, "instanceId not exit"

    .line 118
    .line 119
    invoke-virtual {p0, p1, p2}, Lcom/mbridge/msdk/video/bt/component/a;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    const-string p2, "playerUnmute failed: instanceId not exit"

    .line 123
    .line 124
    invoke-static {v0, p2}, Lcom/mbridge/msdk/foundation/tools/o0;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 125
    .line 126
    .line 127
    goto :goto_2

    .line 128
    :goto_1
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object v1

    .line 132
    invoke-virtual {p0, p1, v1}, Lcom/mbridge/msdk/video/bt/component/a;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 133
    .line 134
    .line 135
    new-instance p1, Ljava/lang/StringBuilder;

    .line 136
    .line 137
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 138
    .line 139
    .line 140
    const-string v1, "playerUnmute failed: "

    .line 141
    .line 142
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    .line 144
    .line 145
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object p2

    .line 149
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    .line 151
    .line 152
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object p1

    .line 156
    invoke-static {v0, p1}, Lcom/mbridge/msdk/foundation/tools/o0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    .line 158
    .line 159
    :goto_2
    return-void
.end method

.method public B(Ljava/lang/Object;Lorg/json/JSONObject;)V
    .locals 1

    .line 1
    :try_start_0
    const-string v0, "unitId"

    .line 2
    .line 3
    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    const-string v0, "data"

    .line 7
    .line 8
    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 9
    .line 10
    .line 11
    move-result-object p2

    .line 12
    if-nez p2, :cond_0

    .line 13
    .line 14
    const-string p2, "data is empty"

    .line 15
    .line 16
    invoke-virtual {p0, p1, p2}, Lcom/mbridge/msdk/video/bt/component/a;->a(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :catchall_0
    move-exception p2

    .line 21
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p2

    .line 25
    invoke-virtual {p0, p1, p2}, Lcom/mbridge/msdk/video/bt/component/a;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    :cond_0
    return-void
.end method

.method public C(Ljava/lang/Object;Lorg/json/JSONObject;)V
    .locals 4

    .line 1
    :try_start_0
    const-string v0, "unitId"

    .line 2
    .line 3
    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "id"

    .line 8
    .line 9
    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {p0, v1}, Lcom/mbridge/msdk/video/bt/component/a;->e(Ljava/lang/String;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 18
    .line 19
    .line 20
    move-result v3

    .line 21
    if-eqz v3, :cond_0

    .line 22
    .line 23
    move-object v3, p1

    .line 24
    check-cast v3, Lcom/mbridge/msdk/mbsignalcommon/windvane/a;

    .line 25
    .line 26
    iget-object v3, v3, Lcom/mbridge/msdk/mbsignalcommon/windvane/a;->b:Lcom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

    .line 27
    .line 28
    if-eqz v3, :cond_0

    .line 29
    .line 30
    invoke-virtual {v3}, Lcom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;->getRid()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    goto :goto_0

    .line 35
    :catchall_0
    move-exception p2

    .line 36
    goto :goto_1

    .line 37
    :cond_0
    :goto_0
    const-string v3, "data"

    .line 38
    .line 39
    invoke-virtual {p2, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 40
    .line 41
    .line 42
    move-result-object p2

    .line 43
    if-nez p2, :cond_1

    .line 44
    .line 45
    const-string p2, "data is empty"

    .line 46
    .line 47
    invoke-virtual {p0, p1, p2}, Lcom/mbridge/msdk/video/bt/component/a;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    return-void

    .line 51
    :cond_1
    invoke-virtual {p0, v0, v2}, Lcom/mbridge/msdk/video/bt/component/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/util/LinkedHashMap;

    .line 52
    .line 53
    .line 54
    move-result-object p2

    .line 55
    invoke-virtual {p2, v1}, Ljava/util/AbstractMap;->containsKey(Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    if-eqz v0, :cond_3

    .line 60
    .line 61
    invoke-virtual {p2, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object p2

    .line 65
    check-cast p2, Landroid/view/View;

    .line 66
    .line 67
    instance-of v0, p2, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;

    .line 68
    .line 69
    if-eqz v0, :cond_2

    .line 70
    .line 71
    check-cast p2, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;

    .line 72
    .line 73
    invoke-virtual {p2}, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->preload()V

    .line 74
    .line 75
    .line 76
    invoke-virtual {p0, p1, v1}, Lcom/mbridge/msdk/video/bt/component/a;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    goto :goto_2

    .line 80
    :cond_2
    const-string p2, "view not exist"

    .line 81
    .line 82
    invoke-virtual {p0, p1, p2}, Lcom/mbridge/msdk/video/bt/component/a;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    goto :goto_2

    .line 86
    :cond_3
    const-string p2, "instanceId not exist"

    .line 87
    .line 88
    invoke-virtual {p0, p1, p2}, Lcom/mbridge/msdk/video/bt/component/a;->a(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 89
    .line 90
    .line 91
    goto :goto_2

    .line 92
    :goto_1
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    invoke-virtual {p0, p1, v0}, Lcom/mbridge/msdk/video/bt/component/a;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    new-instance p1, Ljava/lang/StringBuilder;

    .line 100
    .line 101
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 102
    .line 103
    .line 104
    const-string v0, "preloadSubPlayTemplateView failed: "

    .line 105
    .line 106
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object p2

    .line 113
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object p1

    .line 120
    const-string p2, "OperateViews"

    .line 121
    .line 122
    invoke-static {p2, p1}, Lcom/mbridge/msdk/foundation/tools/o0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    .line 124
    .line 125
    :goto_2
    return-void
.end method

.method public D(Ljava/lang/Object;Lorg/json/JSONObject;)V
    .locals 5

    .line 1
    const-string v0, "OperateViews"

    .line 2
    .line 3
    :try_start_0
    const-string v1, "unitId"

    .line 4
    .line 5
    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    const-string v2, "id"

    .line 10
    .line 11
    invoke-virtual {p2, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    invoke-virtual {p0, v2}, Lcom/mbridge/msdk/video/bt/component/a;->e(Ljava/lang/String;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 20
    .line 21
    .line 22
    move-result v4

    .line 23
    if-eqz v4, :cond_0

    .line 24
    .line 25
    move-object v4, p1

    .line 26
    check-cast v4, Lcom/mbridge/msdk/mbsignalcommon/windvane/a;

    .line 27
    .line 28
    iget-object v4, v4, Lcom/mbridge/msdk/mbsignalcommon/windvane/a;->b:Lcom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

    .line 29
    .line 30
    if-eqz v4, :cond_0

    .line 31
    .line 32
    invoke-virtual {v4}, Lcom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;->getRid()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    goto :goto_0

    .line 37
    :catchall_0
    move-exception p2

    .line 38
    goto/16 :goto_1

    .line 39
    .line 40
    :cond_0
    :goto_0
    const-string v4, "data"

    .line 41
    .line 42
    invoke-virtual {p2, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 43
    .line 44
    .line 45
    move-result-object p2

    .line 46
    if-nez p2, :cond_1

    .line 47
    .line 48
    const-string p2, "data is empty"

    .line 49
    .line 50
    invoke-virtual {p0, p1, p2}, Lcom/mbridge/msdk/video/bt/component/a;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    return-void

    .line 54
    :cond_1
    invoke-virtual {p0, v1, v3}, Lcom/mbridge/msdk/video/bt/component/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/util/LinkedHashMap;

    .line 55
    .line 56
    .line 57
    move-result-object p2

    .line 58
    invoke-virtual {p2, v2}, Ljava/util/AbstractMap;->containsKey(Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    move-result v1

    .line 62
    if-eqz v1, :cond_4

    .line 63
    .line 64
    invoke-virtual {p2, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object p2

    .line 68
    check-cast p2, Landroid/view/View;

    .line 69
    .line 70
    if-eqz p2, :cond_3

    .line 71
    .line 72
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    if-eqz v1, :cond_3

    .line 77
    .line 78
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 79
    .line 80
    .line 81
    move-result-object v1

    .line 82
    check-cast v1, Landroid/view/ViewGroup;

    .line 83
    .line 84
    if-eqz v1, :cond_2

    .line 85
    .line 86
    invoke-virtual {v1, p2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {p0, p1, v2}, Lcom/mbridge/msdk/video/bt/component/a;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    const-string p2, "onRemoveFromView"

    .line 93
    .line 94
    invoke-virtual {p0, p1, p2, v2}, Lcom/mbridge/msdk/video/bt/component/a;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    new-instance p2, Ljava/lang/StringBuilder;

    .line 98
    .line 99
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 100
    .line 101
    .line 102
    const-string v1, "removeFromSuperView instanceId = "

    .line 103
    .line 104
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object p2

    .line 114
    invoke-static {v0, p2}, Lcom/mbridge/msdk/foundation/tools/o0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    goto :goto_2

    .line 118
    :cond_2
    const-string p2, "parent is null"

    .line 119
    .line 120
    invoke-virtual {p0, p1, p2}, Lcom/mbridge/msdk/video/bt/component/a;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    new-instance p2, Ljava/lang/StringBuilder;

    .line 124
    .line 125
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 126
    .line 127
    .line 128
    const-string v1, "removeFromSuperView failed: parent is null instanceId = "

    .line 129
    .line 130
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    .line 132
    .line 133
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    .line 135
    .line 136
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object p2

    .line 140
    invoke-static {v0, p2}, Lcom/mbridge/msdk/foundation/tools/o0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    .line 142
    .line 143
    goto :goto_2

    .line 144
    :cond_3
    const-string p2, "view is null"

    .line 145
    .line 146
    invoke-virtual {p0, p1, p2}, Lcom/mbridge/msdk/video/bt/component/a;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 147
    .line 148
    .line 149
    new-instance p2, Ljava/lang/StringBuilder;

    .line 150
    .line 151
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 152
    .line 153
    .line 154
    const-string v1, "removeFromSuperView failed: view is null instanceId = "

    .line 155
    .line 156
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    .line 158
    .line 159
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    .line 161
    .line 162
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object p2

    .line 166
    invoke-static {v0, p2}, Lcom/mbridge/msdk/foundation/tools/o0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    .line 168
    .line 169
    goto :goto_2

    .line 170
    :cond_4
    const-string p2, "params not enough"

    .line 171
    .line 172
    invoke-virtual {p0, p1, p2}, Lcom/mbridge/msdk/video/bt/component/a;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 173
    .line 174
    .line 175
    new-instance p2, Ljava/lang/StringBuilder;

    .line 176
    .line 177
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 178
    .line 179
    .line 180
    const-string v1, "removeFromSuperView failed: params not enough instanceId = "

    .line 181
    .line 182
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    .line 184
    .line 185
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    .line 187
    .line 188
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 189
    .line 190
    .line 191
    move-result-object p2

    .line 192
    invoke-static {v0, p2}, Lcom/mbridge/msdk/foundation/tools/o0;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 193
    .line 194
    .line 195
    goto :goto_2

    .line 196
    :goto_1
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 197
    .line 198
    .line 199
    move-result-object v1

    .line 200
    invoke-virtual {p0, p1, v1}, Lcom/mbridge/msdk/video/bt/component/a;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 201
    .line 202
    .line 203
    new-instance p1, Ljava/lang/StringBuilder;

    .line 204
    .line 205
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 206
    .line 207
    .line 208
    const-string v1, "removeFromSuperView failed: "

    .line 209
    .line 210
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    .line 212
    .line 213
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 214
    .line 215
    .line 216
    move-result-object p2

    .line 217
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 218
    .line 219
    .line 220
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 221
    .line 222
    .line 223
    move-result-object p1

    .line 224
    invoke-static {v0, p1}, Lcom/mbridge/msdk/foundation/tools/o0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    .line 226
    .line 227
    :goto_2
    return-void
.end method

.method public E(Ljava/lang/Object;Lorg/json/JSONObject;)V
    .locals 12

    .line 1
    const-string v0, "id"

    .line 2
    .line 3
    const-string v1, "OperateViews"

    .line 4
    .line 5
    :try_start_0
    move-object v2, p1

    .line 6
    check-cast v2, Lcom/mbridge/msdk/mbsignalcommon/windvane/a;

    .line 7
    .line 8
    iget-object v2, v2, Lcom/mbridge/msdk/mbsignalcommon/windvane/a;->b:Lcom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    .line 10
    const-string v3, ""

    .line 11
    .line 12
    if-eqz v2, :cond_0

    .line 13
    .line 14
    :try_start_1
    invoke-virtual {v2}, Lcom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;->getRid()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    goto :goto_0

    .line 19
    :catchall_0
    move-exception p2

    .line 20
    goto/16 :goto_2

    .line 21
    .line 22
    :cond_0
    move-object v2, v3

    .line 23
    :goto_0
    const-string v4, "unitId"

    .line 24
    .line 25
    invoke-virtual {p2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v4

    .line 29
    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v5

    .line 33
    const-string v6, "data"

    .line 34
    .line 35
    invoke-virtual {p2, v6}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 36
    .line 37
    .line 38
    move-result-object p2

    .line 39
    const-string v6, "userId"

    .line 40
    .line 41
    invoke-virtual {p2, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v6

    .line 45
    const-string v7, "expired"

    .line 46
    .line 47
    invoke-virtual {p2, v7}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    .line 48
    .line 49
    .line 50
    move-result v7

    .line 51
    const-string v8, "reward"

    .line 52
    .line 53
    invoke-virtual {p2, v8}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 54
    .line 55
    .line 56
    move-result-object v8

    .line 57
    const-string v9, "extra"

    .line 58
    .line 59
    invoke-virtual {p2, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object p2

    .line 63
    if-eqz v8, :cond_1

    .line 64
    .line 65
    new-instance v3, Lcom/mbridge/msdk/videocommon/entity/c;

    .line 66
    .line 67
    const-string v9, "name"

    .line 68
    .line 69
    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v9

    .line 73
    const-string v10, "amount"

    .line 74
    .line 75
    invoke-virtual {v8, v10}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    .line 76
    .line 77
    .line 78
    move-result v10

    .line 79
    invoke-direct {v3, v9, v10}, Lcom/mbridge/msdk/videocommon/entity/c;-><init>(Ljava/lang/String;I)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    move-object v11, v3

    .line 87
    move-object v3, v0

    .line 88
    move-object v0, v11

    .line 89
    goto :goto_1

    .line 90
    :cond_1
    const/4 v0, 0x0

    .line 91
    :goto_1
    invoke-virtual {p0, v4, v2}, Lcom/mbridge/msdk/video/bt/component/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/util/LinkedHashMap;

    .line 92
    .line 93
    .line 94
    move-result-object v2

    .line 95
    invoke-virtual {v2}, Ljava/util/AbstractMap;->size()I

    .line 96
    .line 97
    .line 98
    move-result v4

    .line 99
    if-lez v4, :cond_4

    .line 100
    .line 101
    sget-object v4, Lcom/mbridge/msdk/video/bt/component/a;->e:Ljava/util/LinkedHashMap;

    .line 102
    .line 103
    invoke-virtual {v4, v5}, Ljava/util/AbstractMap;->containsKey(Ljava/lang/Object;)Z

    .line 104
    .line 105
    .line 106
    move-result v4

    .line 107
    if-eqz v4, :cond_4

    .line 108
    .line 109
    invoke-virtual {v2, v5}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    .line 111
    .line 112
    move-result-object v2

    .line 113
    check-cast v2, Landroid/view/View;

    .line 114
    .line 115
    instance-of v4, v2, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;

    .line 116
    .line 117
    if-eqz v4, :cond_3

    .line 118
    .line 119
    check-cast v2, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;

    .line 120
    .line 121
    invoke-virtual {v2, v0}, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->setReward(Lcom/mbridge/msdk/videocommon/entity/c;)V

    .line 122
    .line 123
    .line 124
    invoke-virtual {v2, v6}, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->setUserId(Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    invoke-virtual {v2, v3}, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->setRewardId(Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    invoke-virtual {v2, v7}, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->setCampaignExpired(Z)V

    .line 131
    .line 132
    .line 133
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 134
    .line 135
    .line 136
    move-result v0

    .line 137
    if-nez v0, :cond_2

    .line 138
    .line 139
    invoke-virtual {v2, p2}, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->setDeveloperExtraData(Ljava/lang/String;)V

    .line 140
    .line 141
    .line 142
    :cond_2
    invoke-virtual {p0, p1, v5}, Lcom/mbridge/msdk/video/bt/component/a;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 143
    .line 144
    .line 145
    new-instance p2, Ljava/lang/StringBuilder;

    .line 146
    .line 147
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 148
    .line 149
    .line 150
    const-string v0, "setSubPlayTemplateInfo success instanceId = "

    .line 151
    .line 152
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    .line 154
    .line 155
    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    .line 157
    .line 158
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object p2

    .line 162
    invoke-static {v1, p2}, Lcom/mbridge/msdk/foundation/tools/o0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    .line 164
    .line 165
    goto :goto_3

    .line 166
    :cond_3
    const-string p2, "instanceId not exist"

    .line 167
    .line 168
    invoke-virtual {p0, p1, p2}, Lcom/mbridge/msdk/video/bt/component/a;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 169
    .line 170
    .line 171
    new-instance p2, Ljava/lang/StringBuilder;

    .line 172
    .line 173
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 174
    .line 175
    .line 176
    const-string v0, "setSubPlayTemplateInfo failed: instanceId not exist instanceId = "

    .line 177
    .line 178
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    .line 180
    .line 181
    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    .line 183
    .line 184
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 185
    .line 186
    .line 187
    move-result-object p2

    .line 188
    invoke-static {v1, p2}, Lcom/mbridge/msdk/foundation/tools/o0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    .line 190
    .line 191
    goto :goto_3

    .line 192
    :cond_4
    const-string p2, "unitId not exist"

    .line 193
    .line 194
    invoke-virtual {p0, p1, p2}, Lcom/mbridge/msdk/video/bt/component/a;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 195
    .line 196
    .line 197
    new-instance p2, Ljava/lang/StringBuilder;

    .line 198
    .line 199
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 200
    .line 201
    .line 202
    const-string v0, "setSubPlayTemplateInfo failed: unitId not exist instanceId = "

    .line 203
    .line 204
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 205
    .line 206
    .line 207
    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 208
    .line 209
    .line 210
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 211
    .line 212
    .line 213
    move-result-object p2

    .line 214
    invoke-static {v1, p2}, Lcom/mbridge/msdk/foundation/tools/o0;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 215
    .line 216
    .line 217
    goto :goto_3

    .line 218
    :goto_2
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 219
    .line 220
    .line 221
    move-result-object v0

    .line 222
    invoke-virtual {p0, p1, v0}, Lcom/mbridge/msdk/video/bt/component/a;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 223
    .line 224
    .line 225
    new-instance p1, Ljava/lang/StringBuilder;

    .line 226
    .line 227
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 228
    .line 229
    .line 230
    const-string v0, "setSubPlayTemplateInfo failed: "

    .line 231
    .line 232
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 233
    .line 234
    .line 235
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 236
    .line 237
    .line 238
    move-result-object p2

    .line 239
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 240
    .line 241
    .line 242
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 243
    .line 244
    .line 245
    move-result-object p1

    .line 246
    invoke-static {v1, p1}, Lcom/mbridge/msdk/foundation/tools/o0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    .line 248
    .line 249
    :goto_3
    return-void
.end method

.method public F(Ljava/lang/Object;Lorg/json/JSONObject;)V
    .locals 7

    .line 1
    const-string v0, "OperateViews"

    .line 2
    .line 3
    :try_start_0
    const-string v1, "unitId"

    .line 4
    .line 5
    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    const-string v2, "id"

    .line 10
    .line 11
    invoke-virtual {p2, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    invoke-virtual {p0, v2}, Lcom/mbridge/msdk/video/bt/component/a;->e(Ljava/lang/String;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 20
    .line 21
    .line 22
    move-result v4

    .line 23
    if-eqz v4, :cond_0

    .line 24
    .line 25
    move-object v4, p1

    .line 26
    check-cast v4, Lcom/mbridge/msdk/mbsignalcommon/windvane/a;

    .line 27
    .line 28
    iget-object v4, v4, Lcom/mbridge/msdk/mbsignalcommon/windvane/a;->b:Lcom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

    .line 29
    .line 30
    if-eqz v4, :cond_0

    .line 31
    .line 32
    invoke-virtual {v4}, Lcom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;->getRid()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    goto :goto_0

    .line 37
    :catchall_0
    move-exception p2

    .line 38
    goto/16 :goto_1

    .line 39
    .line 40
    :cond_0
    :goto_0
    const-string v4, "data"

    .line 41
    .line 42
    invoke-virtual {p2, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 43
    .line 44
    .line 45
    move-result-object p2

    .line 46
    if-nez p2, :cond_1

    .line 47
    .line 48
    const-string p2, "data is empty"

    .line 49
    .line 50
    invoke-virtual {p0, p1, p2}, Lcom/mbridge/msdk/video/bt/component/a;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    return-void

    .line 54
    :cond_1
    const-string v4, "alpha"

    .line 55
    .line 56
    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    .line 57
    .line 58
    invoke-virtual {p2, v4, v5, v6}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    .line 59
    .line 60
    .line 61
    move-result-wide v4

    .line 62
    invoke-virtual {p0, v1, v3}, Lcom/mbridge/msdk/video/bt/component/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/util/LinkedHashMap;

    .line 63
    .line 64
    .line 65
    move-result-object p2

    .line 66
    invoke-virtual {p2, v2}, Ljava/util/AbstractMap;->containsKey(Ljava/lang/Object;)Z

    .line 67
    .line 68
    .line 69
    move-result v1

    .line 70
    if-eqz v1, :cond_3

    .line 71
    .line 72
    invoke-virtual {p2, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object p2

    .line 76
    check-cast p2, Landroid/view/View;

    .line 77
    .line 78
    if-eqz p2, :cond_2

    .line 79
    .line 80
    double-to-float v1, v4

    .line 81
    invoke-virtual {p2, v1}, Landroid/view/View;->setAlpha(F)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {p0, p1, v2}, Lcom/mbridge/msdk/video/bt/component/a;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    const-string p2, "onViewAlphaChanged"

    .line 88
    .line 89
    invoke-virtual {p0, p1, p2, v2}, Lcom/mbridge/msdk/video/bt/component/a;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    new-instance p2, Ljava/lang/StringBuilder;

    .line 93
    .line 94
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 95
    .line 96
    .line 97
    const-string v1, "setViewAlpha instanceId = "

    .line 98
    .line 99
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object p2

    .line 109
    invoke-static {v0, p2}, Lcom/mbridge/msdk/foundation/tools/o0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    goto :goto_2

    .line 113
    :cond_2
    const-string p2, "view not exist"

    .line 114
    .line 115
    invoke-virtual {p0, p1, p2}, Lcom/mbridge/msdk/video/bt/component/a;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    new-instance p2, Ljava/lang/StringBuilder;

    .line 119
    .line 120
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 121
    .line 122
    .line 123
    const-string v1, "setViewAlpha failed: view not exist instanceId = "

    .line 124
    .line 125
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object p2

    .line 135
    invoke-static {v0, p2}, Lcom/mbridge/msdk/foundation/tools/o0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    .line 137
    .line 138
    goto :goto_2

    .line 139
    :cond_3
    const-string p2, "instanceId not exist"

    .line 140
    .line 141
    invoke-virtual {p0, p1, p2}, Lcom/mbridge/msdk/video/bt/component/a;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 142
    .line 143
    .line 144
    new-instance p2, Ljava/lang/StringBuilder;

    .line 145
    .line 146
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 147
    .line 148
    .line 149
    const-string v1, "setViewAlpha failed: instanceId not exist instanceId = "

    .line 150
    .line 151
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    .line 153
    .line 154
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    .line 156
    .line 157
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object p2

    .line 161
    invoke-static {v0, p2}, Lcom/mbridge/msdk/foundation/tools/o0;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 162
    .line 163
    .line 164
    goto :goto_2

    .line 165
    :goto_1
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object v1

    .line 169
    invoke-virtual {p0, p1, v1}, Lcom/mbridge/msdk/video/bt/component/a;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 170
    .line 171
    .line 172
    new-instance p1, Ljava/lang/StringBuilder;

    .line 173
    .line 174
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 175
    .line 176
    .line 177
    const-string v1, "setViewAlpha failed: "

    .line 178
    .line 179
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    .line 181
    .line 182
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 183
    .line 184
    .line 185
    move-result-object p2

    .line 186
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    .line 188
    .line 189
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 190
    .line 191
    .line 192
    move-result-object p1

    .line 193
    invoke-static {v0, p1}, Lcom/mbridge/msdk/foundation/tools/o0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    .line 195
    .line 196
    :goto_2
    return-void
.end method

.method public G(Ljava/lang/Object;Lorg/json/JSONObject;)V
    .locals 5

    .line 1
    const-string v0, "OperateViews"

    .line 2
    .line 3
    :try_start_0
    const-string v1, "unitId"

    .line 4
    .line 5
    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    const-string v2, "id"

    .line 10
    .line 11
    invoke-virtual {p2, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    invoke-virtual {p0, v2}, Lcom/mbridge/msdk/video/bt/component/a;->e(Ljava/lang/String;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 20
    .line 21
    .line 22
    move-result v4

    .line 23
    if-eqz v4, :cond_0

    .line 24
    .line 25
    move-object v4, p1

    .line 26
    check-cast v4, Lcom/mbridge/msdk/mbsignalcommon/windvane/a;

    .line 27
    .line 28
    iget-object v4, v4, Lcom/mbridge/msdk/mbsignalcommon/windvane/a;->b:Lcom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

    .line 29
    .line 30
    if-eqz v4, :cond_0

    .line 31
    .line 32
    invoke-virtual {v4}, Lcom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;->getRid()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    goto :goto_0

    .line 37
    :catchall_0
    move-exception p2

    .line 38
    goto/16 :goto_1

    .line 39
    .line 40
    :cond_0
    :goto_0
    const-string v4, "data"

    .line 41
    .line 42
    invoke-virtual {p2, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 43
    .line 44
    .line 45
    move-result-object p2

    .line 46
    if-nez p2, :cond_1

    .line 47
    .line 48
    const-string p2, "data is empty"

    .line 49
    .line 50
    invoke-virtual {p0, p1, p2}, Lcom/mbridge/msdk/video/bt/component/a;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    return-void

    .line 54
    :cond_1
    const-string v4, "color"

    .line 55
    .line 56
    invoke-virtual {p2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object p2

    .line 60
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 61
    .line 62
    .line 63
    move-result v4

    .line 64
    if-eqz v4, :cond_2

    .line 65
    .line 66
    const-string p2, "color is not exist"

    .line 67
    .line 68
    invoke-virtual {p0, p1, p2}, Lcom/mbridge/msdk/video/bt/component/a;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    return-void

    .line 72
    :cond_2
    invoke-virtual {p0, v1, v3}, Lcom/mbridge/msdk/video/bt/component/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/util/LinkedHashMap;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    invoke-virtual {v1, v2}, Ljava/util/AbstractMap;->containsKey(Ljava/lang/Object;)Z

    .line 77
    .line 78
    .line 79
    move-result v3

    .line 80
    if-eqz v3, :cond_4

    .line 81
    .line 82
    invoke-virtual {v1, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    move-result-object v1

    .line 86
    check-cast v1, Landroid/view/View;

    .line 87
    .line 88
    if-eqz v1, :cond_3

    .line 89
    .line 90
    invoke-virtual {p0, p1, v2}, Lcom/mbridge/msdk/video/bt/component/a;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 94
    .line 95
    .line 96
    move-result p2

    .line 97
    invoke-virtual {v1, p2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 98
    .line 99
    .line 100
    const-string p2, "onViewBgColorChanged"

    .line 101
    .line 102
    invoke-virtual {p0, p1, p2, v2}, Lcom/mbridge/msdk/video/bt/component/a;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    new-instance p2, Ljava/lang/StringBuilder;

    .line 106
    .line 107
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 108
    .line 109
    .line 110
    const-string v1, "setViewBgColor instanceId = "

    .line 111
    .line 112
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object p2

    .line 122
    invoke-static {v0, p2}, Lcom/mbridge/msdk/foundation/tools/o0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    .line 124
    .line 125
    goto :goto_2

    .line 126
    :cond_3
    const-string p2, "view not exist"

    .line 127
    .line 128
    invoke-virtual {p0, p1, p2}, Lcom/mbridge/msdk/video/bt/component/a;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    new-instance p2, Ljava/lang/StringBuilder;

    .line 132
    .line 133
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 134
    .line 135
    .line 136
    const-string v1, "setViewBgColor failed: view not exist instanceId = "

    .line 137
    .line 138
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    .line 140
    .line 141
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    .line 143
    .line 144
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object p2

    .line 148
    invoke-static {v0, p2}, Lcom/mbridge/msdk/foundation/tools/o0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    .line 150
    .line 151
    goto :goto_2

    .line 152
    :cond_4
    const-string p2, "instanceId not exist"

    .line 153
    .line 154
    invoke-virtual {p0, p1, p2}, Lcom/mbridge/msdk/video/bt/component/a;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 155
    .line 156
    .line 157
    new-instance p2, Ljava/lang/StringBuilder;

    .line 158
    .line 159
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 160
    .line 161
    .line 162
    const-string v1, "setViewBgColor failed: instanceId not exist instanceId = "

    .line 163
    .line 164
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    .line 166
    .line 167
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    .line 169
    .line 170
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 171
    .line 172
    .line 173
    move-result-object p2

    .line 174
    invoke-static {v0, p2}, Lcom/mbridge/msdk/foundation/tools/o0;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 175
    .line 176
    .line 177
    goto :goto_2

    .line 178
    :goto_1
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    move-result-object v1

    .line 182
    invoke-virtual {p0, p1, v1}, Lcom/mbridge/msdk/video/bt/component/a;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 183
    .line 184
    .line 185
    new-instance p1, Ljava/lang/StringBuilder;

    .line 186
    .line 187
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 188
    .line 189
    .line 190
    const-string v1, "setViewBgColor failed: "

    .line 191
    .line 192
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 193
    .line 194
    .line 195
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 196
    .line 197
    .line 198
    move-result-object p2

    .line 199
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    .line 201
    .line 202
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 203
    .line 204
    .line 205
    move-result-object p1

    .line 206
    invoke-static {v0, p1}, Lcom/mbridge/msdk/foundation/tools/o0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    .line 208
    .line 209
    :goto_2
    return-void
.end method

.method public H(Ljava/lang/Object;Lorg/json/JSONObject;)V
    .locals 8

    .line 1
    const-string v0, "OperateViews"

    .line 2
    .line 3
    :try_start_0
    const-string v1, "unitId"

    .line 4
    .line 5
    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    const-string v2, "id"

    .line 10
    .line 11
    invoke-virtual {p2, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    invoke-virtual {p0, v2}, Lcom/mbridge/msdk/video/bt/component/a;->e(Ljava/lang/String;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 20
    .line 21
    .line 22
    move-result v4

    .line 23
    if-eqz v4, :cond_0

    .line 24
    .line 25
    move-object v4, p1

    .line 26
    check-cast v4, Lcom/mbridge/msdk/mbsignalcommon/windvane/a;

    .line 27
    .line 28
    iget-object v4, v4, Lcom/mbridge/msdk/mbsignalcommon/windvane/a;->b:Lcom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

    .line 29
    .line 30
    if-eqz v4, :cond_0

    .line 31
    .line 32
    invoke-virtual {v4}, Lcom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;->getRid()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    goto :goto_0

    .line 37
    :catchall_0
    move-exception p2

    .line 38
    goto/16 :goto_2

    .line 39
    .line 40
    :cond_0
    :goto_0
    const-string v4, "data"

    .line 41
    .line 42
    invoke-virtual {p2, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 43
    .line 44
    .line 45
    move-result-object p2

    .line 46
    if-nez p2, :cond_1

    .line 47
    .line 48
    const-string p2, "data is empty"

    .line 49
    .line 50
    invoke-virtual {p0, p1, p2}, Lcom/mbridge/msdk/video/bt/component/a;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    return-void

    .line 54
    :cond_1
    const-string v4, "rect"

    .line 55
    .line 56
    invoke-virtual {p2, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 57
    .line 58
    .line 59
    move-result-object p2

    .line 60
    if-nez p2, :cond_2

    .line 61
    .line 62
    const-string p2, "rect not exist"

    .line 63
    .line 64
    invoke-virtual {p0, p1, p2}, Lcom/mbridge/msdk/video/bt/component/a;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    return-void

    .line 68
    :cond_2
    invoke-virtual {p0, v1, v3}, Lcom/mbridge/msdk/video/bt/component/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/util/LinkedHashMap;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    const-string v3, "left"

    .line 73
    .line 74
    const/16 v4, -0x3e7

    .line 75
    .line 76
    invoke-virtual {p2, v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 77
    .line 78
    .line 79
    move-result v3

    .line 80
    const-string v5, "top"

    .line 81
    .line 82
    invoke-virtual {p2, v5, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 83
    .line 84
    .line 85
    move-result v5

    .line 86
    const-string v6, "right"

    .line 87
    .line 88
    invoke-virtual {p2, v6, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 89
    .line 90
    .line 91
    move-result v6

    .line 92
    const-string v7, "bottom"

    .line 93
    .line 94
    invoke-virtual {p2, v7, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 95
    .line 96
    .line 97
    move-result v4

    .line 98
    new-instance v7, Landroid/graphics/Rect;

    .line 99
    .line 100
    invoke-direct {v7, v3, v5, v6, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 101
    .line 102
    .line 103
    const-string v3, "width"

    .line 104
    .line 105
    invoke-virtual {p2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    .line 106
    .line 107
    .line 108
    move-result v3

    .line 109
    const-string v4, "height"

    .line 110
    .line 111
    invoke-virtual {p2, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    .line 112
    .line 113
    .line 114
    move-result p2

    .line 115
    invoke-virtual {v1, v2}, Ljava/util/AbstractMap;->containsKey(Ljava/lang/Object;)Z

    .line 116
    .line 117
    .line 118
    move-result v4

    .line 119
    if-eqz v4, :cond_7

    .line 120
    .line 121
    invoke-virtual {v1, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    .line 123
    .line 124
    move-result-object v1

    .line 125
    check-cast v1, Landroid/view/View;

    .line 126
    .line 127
    if-eqz v1, :cond_6

    .line 128
    .line 129
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 130
    .line 131
    .line 132
    move-result-object v4

    .line 133
    if-eqz v4, :cond_3

    .line 134
    .line 135
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 136
    .line 137
    .line 138
    move-result-object v4

    .line 139
    invoke-virtual {p0, v4, v7, v3, p2}, Lcom/mbridge/msdk/video/bt/component/a;->a(Landroid/view/ViewGroup$LayoutParams;Landroid/graphics/Rect;II)Landroid/view/ViewGroup$LayoutParams;

    .line 140
    .line 141
    .line 142
    move-result-object p2

    .line 143
    invoke-virtual {v1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 144
    .line 145
    .line 146
    invoke-virtual {v1}, Landroid/view/View;->requestLayout()V

    .line 147
    .line 148
    .line 149
    goto :goto_1

    .line 150
    :cond_3
    instance-of v4, v1, Lcom/mbridge/msdk/video/bt/module/MBridgeBTWebView;

    .line 151
    .line 152
    if-eqz v4, :cond_4

    .line 153
    .line 154
    move-object v4, v1

    .line 155
    check-cast v4, Lcom/mbridge/msdk/video/bt/module/MBridgeBTWebView;

    .line 156
    .line 157
    invoke-virtual {v4, v7}, Lcom/mbridge/msdk/video/bt/module/BTBaseView;->setRect(Landroid/graphics/Rect;)V

    .line 158
    .line 159
    .line 160
    move-object v4, v1

    .line 161
    check-cast v4, Lcom/mbridge/msdk/video/bt/module/MBridgeBTWebView;

    .line 162
    .line 163
    invoke-virtual {v4, v3, p2}, Lcom/mbridge/msdk/video/bt/module/BTBaseView;->setLayout(II)V

    .line 164
    .line 165
    .line 166
    :cond_4
    instance-of v4, v1, Lcom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;

    .line 167
    .line 168
    if-eqz v4, :cond_5

    .line 169
    .line 170
    move-object v4, v1

    .line 171
    check-cast v4, Lcom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;

    .line 172
    .line 173
    invoke-virtual {v4, v7}, Lcom/mbridge/msdk/video/bt/module/BTBaseView;->setRect(Landroid/graphics/Rect;)V

    .line 174
    .line 175
    .line 176
    check-cast v1, Lcom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;

    .line 177
    .line 178
    invoke-virtual {v1, v3, p2}, Lcom/mbridge/msdk/video/bt/module/BTBaseView;->setLayout(II)V

    .line 179
    .line 180
    .line 181
    :cond_5
    :goto_1
    invoke-virtual {p0, p1, v2}, Lcom/mbridge/msdk/video/bt/component/a;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 182
    .line 183
    .line 184
    const-string p2, "onViewRectChanged"

    .line 185
    .line 186
    invoke-virtual {p0, p1, p2, v2}, Lcom/mbridge/msdk/video/bt/component/a;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    .line 188
    .line 189
    new-instance p2, Ljava/lang/StringBuilder;

    .line 190
    .line 191
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 192
    .line 193
    .line 194
    const-string v1, "setViewRect instanceId = "

    .line 195
    .line 196
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    .line 198
    .line 199
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    .line 201
    .line 202
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 203
    .line 204
    .line 205
    move-result-object p2

    .line 206
    invoke-static {v0, p2}, Lcom/mbridge/msdk/foundation/tools/o0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    .line 208
    .line 209
    goto :goto_3

    .line 210
    :cond_6
    const-string p2, "view is null"

    .line 211
    .line 212
    invoke-virtual {p0, p1, p2}, Lcom/mbridge/msdk/video/bt/component/a;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 213
    .line 214
    .line 215
    const-string p2, "setViewRect failed: view is null"

    .line 216
    .line 217
    invoke-static {v0, p2}, Lcom/mbridge/msdk/foundation/tools/o0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    .line 219
    .line 220
    goto :goto_3

    .line 221
    :cond_7
    const-string p2, "instanceId not exist"

    .line 222
    .line 223
    invoke-virtual {p0, p1, p2}, Lcom/mbridge/msdk/video/bt/component/a;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 224
    .line 225
    .line 226
    const-string p2, "setViewRect failed: instanceId not exist"

    .line 227
    .line 228
    invoke-static {v0, p2}, Lcom/mbridge/msdk/foundation/tools/o0;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 229
    .line 230
    .line 231
    goto :goto_3

    .line 232
    :goto_2
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 233
    .line 234
    .line 235
    move-result-object v1

    .line 236
    invoke-virtual {p0, p1, v1}, Lcom/mbridge/msdk/video/bt/component/a;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 237
    .line 238
    .line 239
    new-instance p1, Ljava/lang/StringBuilder;

    .line 240
    .line 241
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 242
    .line 243
    .line 244
    const-string v1, "setViewRect failed: "

    .line 245
    .line 246
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 247
    .line 248
    .line 249
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 250
    .line 251
    .line 252
    move-result-object p2

    .line 253
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 254
    .line 255
    .line 256
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 257
    .line 258
    .line 259
    move-result-object p1

    .line 260
    invoke-static {v0, p1}, Lcom/mbridge/msdk/foundation/tools/o0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    .line 262
    .line 263
    :goto_3
    return-void
.end method

.method public I(Ljava/lang/Object;Lorg/json/JSONObject;)V
    .locals 9

    .line 1
    const-string v0, "OperateViews"

    .line 2
    .line 3
    :try_start_0
    const-string v1, "unitId"

    .line 4
    .line 5
    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    const-string v2, "id"

    .line 10
    .line 11
    invoke-virtual {p2, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    invoke-virtual {p0, v2}, Lcom/mbridge/msdk/video/bt/component/a;->e(Ljava/lang/String;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 20
    .line 21
    .line 22
    move-result v4

    .line 23
    if-eqz v4, :cond_0

    .line 24
    .line 25
    move-object v4, p1

    .line 26
    check-cast v4, Lcom/mbridge/msdk/mbsignalcommon/windvane/a;

    .line 27
    .line 28
    iget-object v4, v4, Lcom/mbridge/msdk/mbsignalcommon/windvane/a;->b:Lcom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

    .line 29
    .line 30
    if-eqz v4, :cond_0

    .line 31
    .line 32
    invoke-virtual {v4}, Lcom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;->getRid()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    goto :goto_0

    .line 37
    :catchall_0
    move-exception p2

    .line 38
    goto/16 :goto_1

    .line 39
    .line 40
    :cond_0
    :goto_0
    const-string v4, "data"

    .line 41
    .line 42
    invoke-virtual {p2, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 43
    .line 44
    .line 45
    move-result-object p2

    .line 46
    if-nez p2, :cond_1

    .line 47
    .line 48
    const-string p2, "data is empty"

    .line 49
    .line 50
    invoke-virtual {p0, p1, p2}, Lcom/mbridge/msdk/video/bt/component/a;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    return-void

    .line 54
    :cond_1
    const-string v4, "vertical"

    .line 55
    .line 56
    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    .line 57
    .line 58
    invoke-virtual {p2, v4, v5, v6}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    .line 59
    .line 60
    .line 61
    move-result-wide v7

    .line 62
    const-string v4, "horizon"

    .line 63
    .line 64
    invoke-virtual {p2, v4, v5, v6}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    .line 65
    .line 66
    .line 67
    move-result-wide v4

    .line 68
    invoke-virtual {p0, v1, v3}, Lcom/mbridge/msdk/video/bt/component/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/util/LinkedHashMap;

    .line 69
    .line 70
    .line 71
    move-result-object p2

    .line 72
    invoke-virtual {p2, v2}, Ljava/util/AbstractMap;->containsKey(Ljava/lang/Object;)Z

    .line 73
    .line 74
    .line 75
    move-result v1

    .line 76
    if-eqz v1, :cond_3

    .line 77
    .line 78
    invoke-virtual {p2, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object p2

    .line 82
    check-cast p2, Landroid/view/View;

    .line 83
    .line 84
    if-eqz p2, :cond_2

    .line 85
    .line 86
    double-to-float v1, v4

    .line 87
    invoke-virtual {p2, v1}, Landroid/view/View;->setScaleX(F)V

    .line 88
    .line 89
    .line 90
    double-to-float v1, v7

    .line 91
    invoke-virtual {p2, v1}, Landroid/view/View;->setScaleY(F)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {p0, p1, v2}, Lcom/mbridge/msdk/video/bt/component/a;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    const-string p2, "onViewScaleChanged"

    .line 98
    .line 99
    invoke-virtual {p0, p1, p2, v2}, Lcom/mbridge/msdk/video/bt/component/a;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    new-instance p2, Ljava/lang/StringBuilder;

    .line 103
    .line 104
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 105
    .line 106
    .line 107
    const-string v1, "setViewScale instanceId = "

    .line 108
    .line 109
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object p2

    .line 119
    invoke-static {v0, p2}, Lcom/mbridge/msdk/foundation/tools/o0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    goto :goto_2

    .line 123
    :cond_2
    const-string p2, "view not exist"

    .line 124
    .line 125
    invoke-virtual {p0, p1, p2}, Lcom/mbridge/msdk/video/bt/component/a;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 126
    .line 127
    .line 128
    new-instance p2, Ljava/lang/StringBuilder;

    .line 129
    .line 130
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 131
    .line 132
    .line 133
    const-string v1, "setViewScale failed: view not exist instanceId = "

    .line 134
    .line 135
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    .line 137
    .line 138
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    .line 140
    .line 141
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object p2

    .line 145
    invoke-static {v0, p2}, Lcom/mbridge/msdk/foundation/tools/o0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    .line 147
    .line 148
    goto :goto_2

    .line 149
    :cond_3
    const-string p2, "instanceId not exist"

    .line 150
    .line 151
    invoke-virtual {p0, p1, p2}, Lcom/mbridge/msdk/video/bt/component/a;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 152
    .line 153
    .line 154
    new-instance p2, Ljava/lang/StringBuilder;

    .line 155
    .line 156
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 157
    .line 158
    .line 159
    const-string v1, "setViewScale failed: instanceId not exist instanceId = "

    .line 160
    .line 161
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    .line 163
    .line 164
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    .line 166
    .line 167
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object p2

    .line 171
    invoke-static {v0, p2}, Lcom/mbridge/msdk/foundation/tools/o0;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 172
    .line 173
    .line 174
    goto :goto_2

    .line 175
    :goto_1
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object v1

    .line 179
    invoke-virtual {p0, p1, v1}, Lcom/mbridge/msdk/video/bt/component/a;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 180
    .line 181
    .line 182
    new-instance p1, Ljava/lang/StringBuilder;

    .line 183
    .line 184
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 185
    .line 186
    .line 187
    const-string v1, "setViewScale failed: "

    .line 188
    .line 189
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    .line 191
    .line 192
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 193
    .line 194
    .line 195
    move-result-object p2

    .line 196
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    .line 198
    .line 199
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 200
    .line 201
    .line 202
    move-result-object p1

    .line 203
    invoke-static {v0, p1}, Lcom/mbridge/msdk/foundation/tools/o0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    .line 205
    .line 206
    :goto_2
    return-void
.end method

.method public J(Ljava/lang/Object;Lorg/json/JSONObject;)V
    .locals 5

    .line 1
    const-string v0, "OperateViews"

    .line 2
    .line 3
    :try_start_0
    const-string v1, "unitId"

    .line 4
    .line 5
    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    const-string v2, "id"

    .line 10
    .line 11
    invoke-virtual {p2, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    invoke-virtual {p0, v2}, Lcom/mbridge/msdk/video/bt/component/a;->e(Ljava/lang/String;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 20
    .line 21
    .line 22
    move-result v4

    .line 23
    if-eqz v4, :cond_0

    .line 24
    .line 25
    move-object v4, p1

    .line 26
    check-cast v4, Lcom/mbridge/msdk/mbsignalcommon/windvane/a;

    .line 27
    .line 28
    iget-object v4, v4, Lcom/mbridge/msdk/mbsignalcommon/windvane/a;->b:Lcom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

    .line 29
    .line 30
    if-eqz v4, :cond_0

    .line 31
    .line 32
    invoke-virtual {v4}, Lcom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;->getRid()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    goto :goto_0

    .line 37
    :catchall_0
    move-exception p2

    .line 38
    goto/16 :goto_1

    .line 39
    .line 40
    :cond_0
    :goto_0
    const-string v4, "data"

    .line 41
    .line 42
    invoke-virtual {p2, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 43
    .line 44
    .line 45
    move-result-object p2

    .line 46
    if-nez p2, :cond_1

    .line 47
    .line 48
    const-string p2, "data is empty"

    .line 49
    .line 50
    invoke-virtual {p0, p1, p2}, Lcom/mbridge/msdk/video/bt/component/a;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    return-void

    .line 54
    :cond_1
    invoke-virtual {p0, v1, v3}, Lcom/mbridge/msdk/video/bt/component/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/util/LinkedHashMap;

    .line 55
    .line 56
    .line 57
    move-result-object p2

    .line 58
    invoke-virtual {p2, v2}, Ljava/util/AbstractMap;->containsKey(Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    move-result v1

    .line 62
    if-eqz v1, :cond_3

    .line 63
    .line 64
    invoke-virtual {p2, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object p2

    .line 68
    check-cast p2, Landroid/view/View;

    .line 69
    .line 70
    if-eqz p2, :cond_2

    .line 71
    .line 72
    const/4 v1, 0x0

    .line 73
    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {p0, p1, v2}, Lcom/mbridge/msdk/video/bt/component/a;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    const-string p2, "onShowView"

    .line 80
    .line 81
    invoke-virtual {p0, p1, p2, v2}, Lcom/mbridge/msdk/video/bt/component/a;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    new-instance p2, Ljava/lang/StringBuilder;

    .line 85
    .line 86
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 87
    .line 88
    .line 89
    const-string v1, "showView instanceId = "

    .line 90
    .line 91
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object p2

    .line 101
    invoke-static {v0, p2}, Lcom/mbridge/msdk/foundation/tools/o0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    goto :goto_2

    .line 105
    :cond_2
    const-string p2, "view not exist"

    .line 106
    .line 107
    invoke-virtual {p0, p1, p2}, Lcom/mbridge/msdk/video/bt/component/a;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    new-instance p2, Ljava/lang/StringBuilder;

    .line 111
    .line 112
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 113
    .line 114
    .line 115
    const-string v1, "showView failed: view not exist instanceId = "

    .line 116
    .line 117
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object p2

    .line 127
    invoke-static {v0, p2}, Lcom/mbridge/msdk/foundation/tools/o0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    goto :goto_2

    .line 131
    :cond_3
    const-string p2, "instanceId not exist"

    .line 132
    .line 133
    invoke-virtual {p0, p1, p2}, Lcom/mbridge/msdk/video/bt/component/a;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 134
    .line 135
    .line 136
    new-instance p2, Ljava/lang/StringBuilder;

    .line 137
    .line 138
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 139
    .line 140
    .line 141
    const-string v1, "showView failed: instanceId not exist instanceId = "

    .line 142
    .line 143
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    .line 145
    .line 146
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    .line 148
    .line 149
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object p2

    .line 153
    invoke-static {v0, p2}, Lcom/mbridge/msdk/foundation/tools/o0;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 154
    .line 155
    .line 156
    goto :goto_2

    .line 157
    :goto_1
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object v1

    .line 161
    invoke-virtual {p0, p1, v1}, Lcom/mbridge/msdk/video/bt/component/a;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 162
    .line 163
    .line 164
    new-instance p1, Ljava/lang/StringBuilder;

    .line 165
    .line 166
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 167
    .line 168
    .line 169
    const-string v1, "showView failed: "

    .line 170
    .line 171
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    .line 173
    .line 174
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 175
    .line 176
    .line 177
    move-result-object p2

    .line 178
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    .line 180
    .line 181
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 182
    .line 183
    .line 184
    move-result-object p1

    .line 185
    invoke-static {v0, p1}, Lcom/mbridge/msdk/foundation/tools/o0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    .line 187
    .line 188
    :goto_2
    return-void
.end method

.method public K(Ljava/lang/Object;Lorg/json/JSONObject;)V
    .locals 8

    .line 1
    const-string v0, "OperateViews"

    .line 2
    .line 3
    :try_start_0
    move-object v1, p1

    .line 4
    check-cast v1, Lcom/mbridge/msdk/mbsignalcommon/windvane/a;

    .line 5
    .line 6
    const-string v2, ""

    .line 7
    .line 8
    iget-object v1, v1, Lcom/mbridge/msdk/mbsignalcommon/windvane/a;->b:Lcom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

    .line 9
    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    invoke-virtual {v1}, Lcom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;->getRid()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    goto :goto_0

    .line 17
    :catchall_0
    move-exception p2

    .line 18
    goto/16 :goto_2

    .line 19
    .line 20
    :cond_0
    :goto_0
    const-string v1, "unitId"

    .line 21
    .line 22
    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    const-string v3, "id"

    .line 27
    .line 28
    invoke-virtual {p2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    const-string v4, "data"

    .line 33
    .line 34
    invoke-virtual {p2, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 35
    .line 36
    .line 37
    move-result-object p2

    .line 38
    const-string v4, "eventName"

    .line 39
    .line 40
    invoke-virtual {p2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v4

    .line 44
    const-string v5, "eventData"

    .line 45
    .line 46
    invoke-virtual {p2, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 47
    .line 48
    .line 49
    move-result-object p2

    .line 50
    if-nez p2, :cond_1

    .line 51
    .line 52
    new-instance p2, Lorg/json/JSONObject;

    .line 53
    .line 54
    invoke-direct {p2}, Lorg/json/JSONObject;-><init>()V

    .line 55
    .line 56
    .line 57
    :cond_1
    invoke-virtual {p0, v1, v2}, Lcom/mbridge/msdk/video/bt/component/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/util/LinkedHashMap;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    invoke-virtual {v1}, Ljava/util/AbstractMap;->size()I

    .line 62
    .line 63
    .line 64
    move-result v2

    .line 65
    if-lez v2, :cond_4

    .line 66
    .line 67
    invoke-virtual {v1, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    check-cast v1, Landroid/view/View;

    .line 72
    .line 73
    instance-of v2, v1, Landroid/view/ViewGroup;

    .line 74
    .line 75
    if-eqz v2, :cond_3

    .line 76
    .line 77
    check-cast v1, Landroid/view/ViewGroup;

    .line 78
    .line 79
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    .line 80
    .line 81
    .line 82
    move-result v2

    .line 83
    const/4 v5, 0x0

    .line 84
    :goto_1
    if-ge v5, v2, :cond_3

    .line 85
    .line 86
    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 87
    .line 88
    .line 89
    move-result-object v6

    .line 90
    instance-of v7, v6, Lcom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

    .line 91
    .line 92
    if-eqz v7, :cond_2

    .line 93
    .line 94
    check-cast v6, Lcom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

    .line 95
    .line 96
    invoke-static {}, Lcom/mbridge/msdk/mbsignalcommon/windvane/f;->a()Lcom/mbridge/msdk/mbsignalcommon/windvane/f;

    .line 97
    .line 98
    .line 99
    move-result-object v1

    .line 100
    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object p2

    .line 104
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    .line 105
    .line 106
    .line 107
    move-result-object p2

    .line 108
    const/4 v2, 0x2

    .line 109
    invoke-static {p2, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object p2

    .line 113
    invoke-virtual {v1, v6, v4, p2}, Lcom/mbridge/msdk/mbsignalcommon/windvane/f;->a(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    invoke-virtual {p0, p1, v3}, Lcom/mbridge/msdk/video/bt/component/a;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    new-instance p2, Ljava/lang/StringBuilder;

    .line 120
    .line 121
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 122
    .line 123
    .line 124
    const-string v1, "webviewFireEvent instanceId = "

    .line 125
    .line 126
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    .line 128
    .line 129
    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object p2

    .line 136
    invoke-static {v0, p2}, Lcom/mbridge/msdk/foundation/tools/o0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    .line 138
    .line 139
    return-void

    .line 140
    :cond_2
    add-int/lit8 v5, v5, 0x1

    .line 141
    .line 142
    goto :goto_1

    .line 143
    :cond_3
    const-string p2, "instanceId not exist"

    .line 144
    .line 145
    invoke-virtual {p0, p1, p2}, Lcom/mbridge/msdk/video/bt/component/a;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 146
    .line 147
    .line 148
    new-instance p2, Ljava/lang/StringBuilder;

    .line 149
    .line 150
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 151
    .line 152
    .line 153
    const-string v1, "webviewFireEvent failed: instanceId not exist instanceId = "

    .line 154
    .line 155
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    .line 157
    .line 158
    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    .line 160
    .line 161
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object p2

    .line 165
    invoke-static {v0, p2}, Lcom/mbridge/msdk/foundation/tools/o0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    .line 167
    .line 168
    goto :goto_3

    .line 169
    :cond_4
    const-string p2, "unitId not exist"

    .line 170
    .line 171
    invoke-virtual {p0, p1, p2}, Lcom/mbridge/msdk/video/bt/component/a;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 172
    .line 173
    .line 174
    const-string p2, "webviewFireEvent failed: unitId not exist"

    .line 175
    .line 176
    invoke-static {v0, p2}, Lcom/mbridge/msdk/foundation/tools/o0;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 177
    .line 178
    .line 179
    goto :goto_3

    .line 180
    :goto_2
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 181
    .line 182
    .line 183
    move-result-object v1

    .line 184
    invoke-virtual {p0, p1, v1}, Lcom/mbridge/msdk/video/bt/component/a;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 185
    .line 186
    .line 187
    new-instance p1, Ljava/lang/StringBuilder;

    .line 188
    .line 189
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 190
    .line 191
    .line 192
    const-string v1, "webviewFireEvent failed: "

    .line 193
    .line 194
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    .line 196
    .line 197
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 198
    .line 199
    .line 200
    move-result-object p2

    .line 201
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    .line 203
    .line 204
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 205
    .line 206
    .line 207
    move-result-object p1

    .line 208
    invoke-static {v0, p1}, Lcom/mbridge/msdk/foundation/tools/o0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    .line 210
    .line 211
    :goto_3
    return-void
.end method

.method public L(Ljava/lang/Object;Lorg/json/JSONObject;)V
    .locals 5

    .line 1
    const-string v0, "OperateViews"

    .line 2
    .line 3
    :try_start_0
    const-string v1, "unitId"

    .line 4
    .line 5
    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    const-string v2, "id"

    .line 10
    .line 11
    invoke-virtual {p2, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    invoke-virtual {p0, v2}, Lcom/mbridge/msdk/video/bt/component/a;->e(Ljava/lang/String;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 20
    .line 21
    .line 22
    move-result v4

    .line 23
    if-eqz v4, :cond_0

    .line 24
    .line 25
    move-object v4, p1

    .line 26
    check-cast v4, Lcom/mbridge/msdk/mbsignalcommon/windvane/a;

    .line 27
    .line 28
    iget-object v4, v4, Lcom/mbridge/msdk/mbsignalcommon/windvane/a;->b:Lcom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

    .line 29
    .line 30
    if-eqz v4, :cond_0

    .line 31
    .line 32
    invoke-virtual {v4}, Lcom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;->getRid()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    goto :goto_0

    .line 37
    :catchall_0
    move-exception p2

    .line 38
    goto/16 :goto_1

    .line 39
    .line 40
    :cond_0
    :goto_0
    const-string v4, "data"

    .line 41
    .line 42
    invoke-virtual {p2, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 43
    .line 44
    .line 45
    move-result-object p2

    .line 46
    if-nez p2, :cond_1

    .line 47
    .line 48
    const-string p2, "data is empty"

    .line 49
    .line 50
    invoke-virtual {p0, p1, p2}, Lcom/mbridge/msdk/video/bt/component/a;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    return-void

    .line 54
    :cond_1
    invoke-virtual {p0, v1, v3}, Lcom/mbridge/msdk/video/bt/component/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/util/LinkedHashMap;

    .line 55
    .line 56
    .line 57
    move-result-object p2

    .line 58
    invoke-virtual {p2, v2}, Ljava/util/AbstractMap;->containsKey(Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    move-result v1

    .line 62
    if-eqz v1, :cond_4

    .line 63
    .line 64
    invoke-virtual {p2, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object p2

    .line 68
    check-cast p2, Landroid/view/View;

    .line 69
    .line 70
    instance-of v1, p2, Lcom/mbridge/msdk/video/bt/module/MBridgeBTWebView;

    .line 71
    .line 72
    if-eqz v1, :cond_3

    .line 73
    .line 74
    check-cast p2, Lcom/mbridge/msdk/video/bt/module/MBridgeBTWebView;

    .line 75
    .line 76
    invoke-virtual {p2}, Lcom/mbridge/msdk/video/bt/module/MBridgeBTWebView;->webviewGoBack()Z

    .line 77
    .line 78
    .line 79
    move-result p2

    .line 80
    if-eqz p2, :cond_2

    .line 81
    .line 82
    invoke-virtual {p0, p1, v2}, Lcom/mbridge/msdk/video/bt/component/a;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    new-instance p2, Ljava/lang/StringBuilder;

    .line 86
    .line 87
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 88
    .line 89
    .line 90
    const-string v1, "webviewGoBack instanceId = "

    .line 91
    .line 92
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object p2

    .line 102
    invoke-static {v0, p2}, Lcom/mbridge/msdk/foundation/tools/o0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    goto :goto_2

    .line 106
    :cond_2
    const-string p2, "webviewGoBack failed"

    .line 107
    .line 108
    invoke-virtual {p0, p1, p2}, Lcom/mbridge/msdk/video/bt/component/a;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    new-instance p2, Ljava/lang/StringBuilder;

    .line 112
    .line 113
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 114
    .line 115
    .line 116
    const-string v1, "webviewGoBack failed instanceId = "

    .line 117
    .line 118
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object p2

    .line 128
    invoke-static {v0, p2}, Lcom/mbridge/msdk/foundation/tools/o0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    goto :goto_2

    .line 132
    :cond_3
    const-string p2, "view not exist"

    .line 133
    .line 134
    invoke-virtual {p0, p1, p2}, Lcom/mbridge/msdk/video/bt/component/a;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 135
    .line 136
    .line 137
    new-instance p2, Ljava/lang/StringBuilder;

    .line 138
    .line 139
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 140
    .line 141
    .line 142
    const-string v1, "webviewGoBack failed view not exist instanceId = "

    .line 143
    .line 144
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    .line 146
    .line 147
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    .line 149
    .line 150
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object p2

    .line 154
    invoke-static {v0, p2}, Lcom/mbridge/msdk/foundation/tools/o0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    .line 156
    .line 157
    goto :goto_2

    .line 158
    :cond_4
    const-string p2, "instanceId not exist"

    .line 159
    .line 160
    invoke-virtual {p0, p1, p2}, Lcom/mbridge/msdk/video/bt/component/a;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 161
    .line 162
    .line 163
    new-instance p2, Ljava/lang/StringBuilder;

    .line 164
    .line 165
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 166
    .line 167
    .line 168
    const-string v1, "webviewGoBack failed instanceId not exist instanceId = "

    .line 169
    .line 170
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    .line 172
    .line 173
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    .line 175
    .line 176
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    move-result-object p2

    .line 180
    invoke-static {v0, p2}, Lcom/mbridge/msdk/foundation/tools/o0;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 181
    .line 182
    .line 183
    goto :goto_2

    .line 184
    :goto_1
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 185
    .line 186
    .line 187
    move-result-object v1

    .line 188
    invoke-virtual {p0, p1, v1}, Lcom/mbridge/msdk/video/bt/component/a;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 189
    .line 190
    .line 191
    new-instance p1, Ljava/lang/StringBuilder;

    .line 192
    .line 193
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 194
    .line 195
    .line 196
    const-string v1, "webviewGoBack failed: "

    .line 197
    .line 198
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    .line 200
    .line 201
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 202
    .line 203
    .line 204
    move-result-object p2

    .line 205
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 206
    .line 207
    .line 208
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 209
    .line 210
    .line 211
    move-result-object p1

    .line 212
    invoke-static {v0, p1}, Lcom/mbridge/msdk/foundation/tools/o0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    .line 214
    .line 215
    :goto_2
    return-void
.end method

.method public M(Ljava/lang/Object;Lorg/json/JSONObject;)V
    .locals 5

    .line 1
    const-string v0, "OperateViews"

    .line 2
    .line 3
    :try_start_0
    const-string v1, "unitId"

    .line 4
    .line 5
    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    const-string v2, "id"

    .line 10
    .line 11
    invoke-virtual {p2, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    invoke-virtual {p0, v2}, Lcom/mbridge/msdk/video/bt/component/a;->e(Ljava/lang/String;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 20
    .line 21
    .line 22
    move-result v4

    .line 23
    if-eqz v4, :cond_0

    .line 24
    .line 25
    move-object v4, p1

    .line 26
    check-cast v4, Lcom/mbridge/msdk/mbsignalcommon/windvane/a;

    .line 27
    .line 28
    iget-object v4, v4, Lcom/mbridge/msdk/mbsignalcommon/windvane/a;->b:Lcom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

    .line 29
    .line 30
    if-eqz v4, :cond_0

    .line 31
    .line 32
    invoke-virtual {v4}, Lcom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;->getRid()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    goto :goto_0

    .line 37
    :catchall_0
    move-exception p2

    .line 38
    goto/16 :goto_1

    .line 39
    .line 40
    :cond_0
    :goto_0
    const-string v4, "data"

    .line 41
    .line 42
    invoke-virtual {p2, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 43
    .line 44
    .line 45
    move-result-object p2

    .line 46
    if-nez p2, :cond_1

    .line 47
    .line 48
    const-string p2, "data is empty"

    .line 49
    .line 50
    invoke-virtual {p0, p1, p2}, Lcom/mbridge/msdk/video/bt/component/a;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    return-void

    .line 54
    :cond_1
    invoke-virtual {p0, v1, v3}, Lcom/mbridge/msdk/video/bt/component/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/util/LinkedHashMap;

    .line 55
    .line 56
    .line 57
    move-result-object p2

    .line 58
    invoke-virtual {p2, v2}, Ljava/util/AbstractMap;->containsKey(Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    move-result v1

    .line 62
    if-eqz v1, :cond_4

    .line 63
    .line 64
    invoke-virtual {p2, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object p2

    .line 68
    check-cast p2, Landroid/view/View;

    .line 69
    .line 70
    instance-of v1, p2, Lcom/mbridge/msdk/video/bt/module/MBridgeBTWebView;

    .line 71
    .line 72
    if-eqz v1, :cond_3

    .line 73
    .line 74
    check-cast p2, Lcom/mbridge/msdk/video/bt/module/MBridgeBTWebView;

    .line 75
    .line 76
    invoke-virtual {p2}, Lcom/mbridge/msdk/video/bt/module/MBridgeBTWebView;->webviewGoForward()Z

    .line 77
    .line 78
    .line 79
    move-result p2

    .line 80
    if-eqz p2, :cond_2

    .line 81
    .line 82
    invoke-virtual {p0, p1, v2}, Lcom/mbridge/msdk/video/bt/component/a;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    new-instance p2, Ljava/lang/StringBuilder;

    .line 86
    .line 87
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 88
    .line 89
    .line 90
    const-string v1, "webviewGoForward instanceId = "

    .line 91
    .line 92
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object p2

    .line 102
    invoke-static {v0, p2}, Lcom/mbridge/msdk/foundation/tools/o0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    goto :goto_2

    .line 106
    :cond_2
    const-string p2, "webviewGoForward failed"

    .line 107
    .line 108
    invoke-virtual {p0, p1, p2}, Lcom/mbridge/msdk/video/bt/component/a;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    new-instance p2, Ljava/lang/StringBuilder;

    .line 112
    .line 113
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 114
    .line 115
    .line 116
    const-string v1, "webviewGoForward failed instanceId = "

    .line 117
    .line 118
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object p2

    .line 128
    invoke-static {v0, p2}, Lcom/mbridge/msdk/foundation/tools/o0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    goto :goto_2

    .line 132
    :cond_3
    const-string p2, "view not exist"

    .line 133
    .line 134
    invoke-virtual {p0, p1, p2}, Lcom/mbridge/msdk/video/bt/component/a;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 135
    .line 136
    .line 137
    new-instance p2, Ljava/lang/StringBuilder;

    .line 138
    .line 139
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 140
    .line 141
    .line 142
    const-string v1, "webviewGoForward failed view not exist instanceId = "

    .line 143
    .line 144
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    .line 146
    .line 147
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    .line 149
    .line 150
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object p2

    .line 154
    invoke-static {v0, p2}, Lcom/mbridge/msdk/foundation/tools/o0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    .line 156
    .line 157
    goto :goto_2

    .line 158
    :cond_4
    const-string p2, "instanceId not exist"

    .line 159
    .line 160
    invoke-virtual {p0, p1, p2}, Lcom/mbridge/msdk/video/bt/component/a;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 161
    .line 162
    .line 163
    new-instance p2, Ljava/lang/StringBuilder;

    .line 164
    .line 165
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 166
    .line 167
    .line 168
    const-string v1, "webviewGoForward failed instanceId not exist instanceId = "

    .line 169
    .line 170
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    .line 172
    .line 173
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    .line 175
    .line 176
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    move-result-object p2

    .line 180
    invoke-static {v0, p2}, Lcom/mbridge/msdk/foundation/tools/o0;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 181
    .line 182
    .line 183
    goto :goto_2

    .line 184
    :goto_1
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 185
    .line 186
    .line 187
    move-result-object v1

    .line 188
    invoke-virtual {p0, p1, v1}, Lcom/mbridge/msdk/video/bt/component/a;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 189
    .line 190
    .line 191
    new-instance p1, Ljava/lang/StringBuilder;

    .line 192
    .line 193
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 194
    .line 195
    .line 196
    const-string v1, "webviewGoForward failed: "

    .line 197
    .line 198
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    .line 200
    .line 201
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 202
    .line 203
    .line 204
    move-result-object p2

    .line 205
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 206
    .line 207
    .line 208
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 209
    .line 210
    .line 211
    move-result-object p1

    .line 212
    invoke-static {v0, p1}, Lcom/mbridge/msdk/foundation/tools/o0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    .line 214
    .line 215
    :goto_2
    return-void
.end method

.method public N(Ljava/lang/Object;Lorg/json/JSONObject;)V
    .locals 18

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v2, p1

    .line 4
    .line 5
    move-object/from16 v0, p2

    .line 6
    .line 7
    const-string v3, "unitId"

    .line 8
    .line 9
    const-string v4, "OperateViews"

    .line 10
    .line 11
    :try_start_0
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v5

    .line 15
    const-string v6, "id"

    .line 16
    .line 17
    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v6

    .line 21
    invoke-virtual {v1, v6}, Lcom/mbridge/msdk/video/bt/component/a;->e(Ljava/lang/String;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v7

    .line 25
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 26
    .line 27
    .line 28
    move-result v8

    .line 29
    if-eqz v8, :cond_0

    .line 30
    .line 31
    move-object v8, v2

    .line 32
    check-cast v8, Lcom/mbridge/msdk/mbsignalcommon/windvane/a;

    .line 33
    .line 34
    iget-object v8, v8, Lcom/mbridge/msdk/mbsignalcommon/windvane/a;->b:Lcom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

    .line 35
    .line 36
    if-eqz v8, :cond_0

    .line 37
    .line 38
    invoke-virtual {v8}, Lcom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;->getRid()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v7

    .line 42
    goto :goto_0

    .line 43
    :catchall_0
    move-exception v0

    .line 44
    move-object v3, v4

    .line 45
    goto/16 :goto_5

    .line 46
    .line 47
    :cond_0
    :goto_0
    const-string v8, "data"

    .line 48
    .line 49
    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 50
    .line 51
    .line 52
    move-result-object v8

    .line 53
    if-nez v8, :cond_1

    .line 54
    .line 55
    const-string v0, "data is empty"

    .line 56
    .line 57
    invoke-virtual {v1, v2, v0}, Lcom/mbridge/msdk/video/bt/component/a;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    return-void

    .line 61
    :cond_1
    const-string v9, "content"

    .line 62
    .line 63
    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 64
    .line 65
    .line 66
    move-result-object v8

    .line 67
    if-nez v8, :cond_2

    .line 68
    .line 69
    const-string v0, "content is empty"

    .line 70
    .line 71
    invoke-virtual {v1, v2, v0}, Lcom/mbridge/msdk/video/bt/component/a;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    return-void

    .line 75
    :cond_2
    const-string v9, "fileURL"

    .line 76
    .line 77
    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v9

    .line 81
    const-string v10, "filePath"

    .line 82
    .line 83
    invoke-virtual {v8, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v10

    .line 87
    const-string v11, "html"

    .line 88
    .line 89
    invoke-virtual {v8, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v11

    .line 93
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 94
    .line 95
    .line 96
    move-result v12

    .line 97
    if-eqz v12, :cond_3

    .line 98
    .line 99
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 100
    .line 101
    .line 102
    move-result v12

    .line 103
    if-eqz v12, :cond_3

    .line 104
    .line 105
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 106
    .line 107
    .line 108
    move-result v12

    .line 109
    if-eqz v12, :cond_3

    .line 110
    .line 111
    const-string v0, "url is empty"

    .line 112
    .line 113
    invoke-virtual {v1, v2, v0}, Lcom/mbridge/msdk/video/bt/component/a;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    return-void

    .line 117
    :cond_3
    const-string v12, "campaigns"

    .line 118
    .line 119
    invoke-virtual {v8, v12}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 120
    .line 121
    .line 122
    move-result-object v12

    .line 123
    new-instance v13, Ljava/util/ArrayList;

    .line 124
    .line 125
    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 126
    .line 127
    .line 128
    if-eqz v12, :cond_5

    .line 129
    .line 130
    invoke-virtual {v12}, Lorg/json/JSONArray;->length()I

    .line 131
    .line 132
    .line 133
    move-result v15

    .line 134
    if-lez v15, :cond_5

    .line 135
    .line 136
    invoke-virtual {v12}, Lorg/json/JSONArray;->length()I

    .line 137
    .line 138
    .line 139
    move-result v15

    .line 140
    const/4 v14, 0x0

    .line 141
    :goto_1
    if-ge v14, v15, :cond_5

    .line 142
    .line 143
    invoke-virtual {v12, v14}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    .line 144
    .line 145
    .line 146
    move-result-object v16

    .line 147
    move-object/from16 v17, v12

    .line 148
    .line 149
    invoke-static/range {v16 .. v16}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->parseCampaignWithBackData(Lorg/json/JSONObject;)Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 150
    .line 151
    .line 152
    move-result-object v12

    .line 153
    if-eqz v12, :cond_4

    .line 154
    .line 155
    invoke-virtual {v12, v5}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->setCampaignUnitId(Ljava/lang/String;)V

    .line 156
    .line 157
    .line 158
    invoke-interface {v13, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 159
    .line 160
    .line 161
    :cond_4
    add-int/lit8 v14, v14, 0x1

    .line 162
    .line 163
    move-object/from16 v12, v17

    .line 164
    .line 165
    goto :goto_1

    .line 166
    :cond_5
    invoke-virtual {v8, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object v3

    .line 170
    const-string v12, "unitSetting"

    .line 171
    .line 172
    invoke-virtual {v8, v12}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 173
    .line 174
    .line 175
    move-result-object v12

    .line 176
    invoke-static {v12}, Lcom/mbridge/msdk/videocommon/setting/c;->a(Lorg/json/JSONObject;)Lcom/mbridge/msdk/videocommon/setting/c;

    .line 177
    .line 178
    .line 179
    move-result-object v12

    .line 180
    if-eqz v12, :cond_6

    .line 181
    .line 182
    invoke-virtual {v12, v3}, Lcom/mbridge/msdk/videocommon/setting/c;->h(Ljava/lang/String;)V

    .line 183
    .line 184
    .line 185
    :cond_6
    const-string v3, "rect"

    .line 186
    .line 187
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 188
    .line 189
    .line 190
    move-result-object v0

    .line 191
    new-instance v3, Landroid/graphics/Rect;

    .line 192
    .line 193
    const/16 v14, -0x3e7

    .line 194
    .line 195
    invoke-direct {v3, v14, v14, v14, v14}, Landroid/graphics/Rect;-><init>(IIII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 196
    .line 197
    .line 198
    if-eqz v0, :cond_7

    .line 199
    .line 200
    :try_start_1
    const-string v3, "left"

    .line 201
    .line 202
    invoke-virtual {v0, v3, v14}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 203
    .line 204
    .line 205
    move-result v3

    .line 206
    const-string v15, "top"

    .line 207
    .line 208
    invoke-virtual {v0, v15, v14}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 209
    .line 210
    .line 211
    move-result v15
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 212
    move-object/from16 v16, v4

    .line 213
    .line 214
    :try_start_2
    const-string v4, "right"

    .line 215
    .line 216
    invoke-virtual {v0, v4, v14}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 217
    .line 218
    .line 219
    move-result v4

    .line 220
    const-string v2, "bottom"

    .line 221
    .line 222
    invoke-virtual {v0, v2, v14}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 223
    .line 224
    .line 225
    move-result v2

    .line 226
    new-instance v14, Landroid/graphics/Rect;

    .line 227
    .line 228
    invoke-direct {v14, v3, v15, v4, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 229
    .line 230
    .line 231
    const-string v2, "width"

    .line 232
    .line 233
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    .line 234
    .line 235
    .line 236
    move-result v2

    .line 237
    const-string v3, "height"

    .line 238
    .line 239
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    .line 240
    .line 241
    .line 242
    move-result v0

    .line 243
    move-object v3, v14

    .line 244
    goto :goto_4

    .line 245
    :catchall_1
    move-exception v0

    .line 246
    :goto_2
    move-object/from16 v2, p1

    .line 247
    .line 248
    :goto_3
    move-object/from16 v3, v16

    .line 249
    .line 250
    goto/16 :goto_5

    .line 251
    .line 252
    :catchall_2
    move-exception v0

    .line 253
    move-object/from16 v16, v4

    .line 254
    .line 255
    goto :goto_2

    .line 256
    :cond_7
    move-object/from16 v16, v4

    .line 257
    .line 258
    const/4 v0, 0x0

    .line 259
    const/4 v2, 0x0

    .line 260
    :goto_4
    const-string v4, "refreshCache"

    .line 261
    .line 262
    const/4 v14, 0x0

    .line 263
    invoke-virtual {v8, v4, v14}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 264
    .line 265
    .line 266
    move-result v4

    .line 267
    invoke-virtual {v1, v5, v7}, Lcom/mbridge/msdk/video/bt/component/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/util/LinkedHashMap;

    .line 268
    .line 269
    .line 270
    move-result-object v5

    .line 271
    invoke-virtual {v5, v6}, Ljava/util/AbstractMap;->containsKey(Ljava/lang/Object;)Z

    .line 272
    .line 273
    .line 274
    move-result v7

    .line 275
    if-eqz v7, :cond_9

    .line 276
    .line 277
    invoke-virtual {v5, v6}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 278
    .line 279
    .line 280
    move-result-object v5

    .line 281
    check-cast v5, Landroid/view/View;

    .line 282
    .line 283
    instance-of v7, v5, Lcom/mbridge/msdk/video/bt/module/MBridgeBTWebView;

    .line 284
    .line 285
    if-eqz v7, :cond_8

    .line 286
    .line 287
    check-cast v5, Lcom/mbridge/msdk/video/bt/module/MBridgeBTWebView;

    .line 288
    .line 289
    invoke-virtual {v5, v11}, Lcom/mbridge/msdk/video/bt/module/MBridgeBTWebView;->setHtml(Ljava/lang/String;)V

    .line 290
    .line 291
    .line 292
    invoke-virtual {v5, v10}, Lcom/mbridge/msdk/video/bt/module/MBridgeBTWebView;->setFilePath(Ljava/lang/String;)V

    .line 293
    .line 294
    .line 295
    invoke-virtual {v5, v9}, Lcom/mbridge/msdk/video/bt/module/MBridgeBTWebView;->setFileURL(Ljava/lang/String;)V

    .line 296
    .line 297
    .line 298
    invoke-virtual {v5, v3}, Lcom/mbridge/msdk/video/bt/module/BTBaseView;->setRect(Landroid/graphics/Rect;)V

    .line 299
    .line 300
    .line 301
    invoke-virtual {v5, v2, v0}, Lcom/mbridge/msdk/video/bt/module/BTBaseView;->setLayout(II)V

    .line 302
    .line 303
    .line 304
    invoke-virtual {v5, v13}, Lcom/mbridge/msdk/video/bt/module/MBridgeBTWebView;->setCampaigns(Ljava/util/List;)V

    .line 305
    .line 306
    .line 307
    invoke-virtual {v5, v12}, Lcom/mbridge/msdk/video/bt/module/MBridgeBTWebView;->setRewardUnitSetting(Lcom/mbridge/msdk/videocommon/setting/c;)V

    .line 308
    .line 309
    .line 310
    invoke-virtual {v5, v4}, Lcom/mbridge/msdk/video/bt/module/MBridgeBTWebView;->webviewLoad(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 311
    .line 312
    .line 313
    move-object/from16 v2, p1

    .line 314
    .line 315
    :try_start_3
    invoke-virtual {v1, v2, v6}, Lcom/mbridge/msdk/video/bt/component/a;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 316
    .line 317
    .line 318
    new-instance v0, Ljava/lang/StringBuilder;

    .line 319
    .line 320
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 321
    .line 322
    .line 323
    const-string v3, "webviewLoad instanceId = "

    .line 324
    .line 325
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 326
    .line 327
    .line 328
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 329
    .line 330
    .line 331
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 332
    .line 333
    .line 334
    move-result-object v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    .line 335
    move-object/from16 v3, v16

    .line 336
    .line 337
    :try_start_4
    invoke-static {v3, v0}, Lcom/mbridge/msdk/foundation/tools/o0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 338
    .line 339
    .line 340
    goto :goto_6

    .line 341
    :catchall_3
    move-exception v0

    .line 342
    goto :goto_5

    .line 343
    :catchall_4
    move-exception v0

    .line 344
    goto :goto_3

    .line 345
    :cond_8
    move-object/from16 v2, p1

    .line 346
    .line 347
    move-object/from16 v3, v16

    .line 348
    .line 349
    const-string v0, "view not exist"

    .line 350
    .line 351
    invoke-virtual {v1, v2, v0}, Lcom/mbridge/msdk/video/bt/component/a;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 352
    .line 353
    .line 354
    new-instance v0, Ljava/lang/StringBuilder;

    .line 355
    .line 356
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 357
    .line 358
    .line 359
    const-string v4, "webviewLoad failed: view not exist instanceId = "

    .line 360
    .line 361
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 362
    .line 363
    .line 364
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 365
    .line 366
    .line 367
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 368
    .line 369
    .line 370
    move-result-object v0

    .line 371
    invoke-static {v3, v0}, Lcom/mbridge/msdk/foundation/tools/o0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 372
    .line 373
    .line 374
    goto :goto_6

    .line 375
    :cond_9
    move-object/from16 v2, p1

    .line 376
    .line 377
    move-object/from16 v3, v16

    .line 378
    .line 379
    const-string v0, "instanceId not exist"

    .line 380
    .line 381
    invoke-virtual {v1, v2, v0}, Lcom/mbridge/msdk/video/bt/component/a;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 382
    .line 383
    .line 384
    new-instance v0, Ljava/lang/StringBuilder;

    .line 385
    .line 386
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 387
    .line 388
    .line 389
    const-string v4, "webviewLoad failed: instanceId not exist instanceId = "

    .line 390
    .line 391
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 392
    .line 393
    .line 394
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 395
    .line 396
    .line 397
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 398
    .line 399
    .line 400
    move-result-object v0

    .line 401
    invoke-static {v3, v0}, Lcom/mbridge/msdk/foundation/tools/o0;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 402
    .line 403
    .line 404
    goto :goto_6

    .line 405
    :goto_5
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 406
    .line 407
    .line 408
    move-result-object v4

    .line 409
    invoke-virtual {v1, v2, v4}, Lcom/mbridge/msdk/video/bt/component/a;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 410
    .line 411
    .line 412
    new-instance v2, Ljava/lang/StringBuilder;

    .line 413
    .line 414
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 415
    .line 416
    .line 417
    const-string v4, "webviewLoad failed: "

    .line 418
    .line 419
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 420
    .line 421
    .line 422
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 423
    .line 424
    .line 425
    move-result-object v0

    .line 426
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 427
    .line 428
    .line 429
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 430
    .line 431
    .line 432
    move-result-object v0

    .line 433
    invoke-static {v3, v0}, Lcom/mbridge/msdk/foundation/tools/o0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 434
    .line 435
    .line 436
    :goto_6
    return-void
.end method

.method public O(Ljava/lang/Object;Lorg/json/JSONObject;)V
    .locals 5

    .line 1
    const-string v0, "OperateViews"

    .line 2
    .line 3
    :try_start_0
    const-string v1, "unitId"

    .line 4
    .line 5
    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    const-string v2, "id"

    .line 10
    .line 11
    invoke-virtual {p2, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    invoke-virtual {p0, v2}, Lcom/mbridge/msdk/video/bt/component/a;->e(Ljava/lang/String;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 20
    .line 21
    .line 22
    move-result v4

    .line 23
    if-eqz v4, :cond_0

    .line 24
    .line 25
    move-object v4, p1

    .line 26
    check-cast v4, Lcom/mbridge/msdk/mbsignalcommon/windvane/a;

    .line 27
    .line 28
    iget-object v4, v4, Lcom/mbridge/msdk/mbsignalcommon/windvane/a;->b:Lcom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

    .line 29
    .line 30
    if-eqz v4, :cond_0

    .line 31
    .line 32
    invoke-virtual {v4}, Lcom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;->getRid()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    goto :goto_0

    .line 37
    :catchall_0
    move-exception p2

    .line 38
    goto/16 :goto_1

    .line 39
    .line 40
    :cond_0
    :goto_0
    const-string v4, "data"

    .line 41
    .line 42
    invoke-virtual {p2, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 43
    .line 44
    .line 45
    move-result-object p2

    .line 46
    if-nez p2, :cond_1

    .line 47
    .line 48
    const-string p2, "data is empty"

    .line 49
    .line 50
    invoke-virtual {p0, p1, p2}, Lcom/mbridge/msdk/video/bt/component/a;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    return-void

    .line 54
    :cond_1
    invoke-virtual {p0, v1, v3}, Lcom/mbridge/msdk/video/bt/component/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/util/LinkedHashMap;

    .line 55
    .line 56
    .line 57
    move-result-object p2

    .line 58
    invoke-virtual {p2, v2}, Ljava/util/AbstractMap;->containsKey(Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    move-result v1

    .line 62
    if-eqz v1, :cond_4

    .line 63
    .line 64
    invoke-virtual {p2, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object p2

    .line 68
    check-cast p2, Landroid/view/View;

    .line 69
    .line 70
    instance-of v1, p2, Lcom/mbridge/msdk/video/bt/module/MBridgeBTWebView;

    .line 71
    .line 72
    if-eqz v1, :cond_3

    .line 73
    .line 74
    check-cast p2, Lcom/mbridge/msdk/video/bt/module/MBridgeBTWebView;

    .line 75
    .line 76
    invoke-virtual {p2}, Lcom/mbridge/msdk/video/bt/module/MBridgeBTWebView;->webviewReload()Z

    .line 77
    .line 78
    .line 79
    move-result p2

    .line 80
    if-eqz p2, :cond_2

    .line 81
    .line 82
    invoke-virtual {p0, p1, v2}, Lcom/mbridge/msdk/video/bt/component/a;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    new-instance p2, Ljava/lang/StringBuilder;

    .line 86
    .line 87
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 88
    .line 89
    .line 90
    const-string v1, "webviewReload instanceId = "

    .line 91
    .line 92
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object p2

    .line 102
    invoke-static {v0, p2}, Lcom/mbridge/msdk/foundation/tools/o0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    goto :goto_2

    .line 106
    :cond_2
    const-string p2, "reload failed"

    .line 107
    .line 108
    invoke-virtual {p0, p1, p2}, Lcom/mbridge/msdk/video/bt/component/a;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    new-instance p2, Ljava/lang/StringBuilder;

    .line 112
    .line 113
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 114
    .line 115
    .line 116
    const-string v1, "webviewReload failed reload failed instanceId = "

    .line 117
    .line 118
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object p2

    .line 128
    invoke-static {v0, p2}, Lcom/mbridge/msdk/foundation/tools/o0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    goto :goto_2

    .line 132
    :cond_3
    const-string p2, "view not exist"

    .line 133
    .line 134
    invoke-virtual {p0, p1, p2}, Lcom/mbridge/msdk/video/bt/component/a;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 135
    .line 136
    .line 137
    new-instance p2, Ljava/lang/StringBuilder;

    .line 138
    .line 139
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 140
    .line 141
    .line 142
    const-string v1, "webviewReload failed view not exist instanceId = "

    .line 143
    .line 144
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    .line 146
    .line 147
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    .line 149
    .line 150
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object p2

    .line 154
    invoke-static {v0, p2}, Lcom/mbridge/msdk/foundation/tools/o0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    .line 156
    .line 157
    goto :goto_2

    .line 158
    :cond_4
    const-string p2, "instanceId not exist"

    .line 159
    .line 160
    invoke-virtual {p0, p1, p2}, Lcom/mbridge/msdk/video/bt/component/a;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 161
    .line 162
    .line 163
    new-instance p2, Ljava/lang/StringBuilder;

    .line 164
    .line 165
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 166
    .line 167
    .line 168
    const-string v1, "webviewReload failed instanceId not exist instanceId = "

    .line 169
    .line 170
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    .line 172
    .line 173
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    .line 175
    .line 176
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    move-result-object p2

    .line 180
    invoke-static {v0, p2}, Lcom/mbridge/msdk/foundation/tools/o0;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 181
    .line 182
    .line 183
    goto :goto_2

    .line 184
    :goto_1
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 185
    .line 186
    .line 187
    move-result-object v1

    .line 188
    invoke-virtual {p0, p1, v1}, Lcom/mbridge/msdk/video/bt/component/a;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 189
    .line 190
    .line 191
    new-instance p1, Ljava/lang/StringBuilder;

    .line 192
    .line 193
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 194
    .line 195
    .line 196
    const-string v1, "webviewReload failed: "

    .line 197
    .line 198
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    .line 200
    .line 201
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 202
    .line 203
    .line 204
    move-result-object p2

    .line 205
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 206
    .line 207
    .line 208
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 209
    .line 210
    .line 211
    move-result-object p1

    .line 212
    invoke-static {v0, p1}, Lcom/mbridge/msdk/foundation/tools/o0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    .line 214
    .line 215
    :goto_2
    return-void
.end method

.method public a(Landroid/view/ViewGroup$LayoutParams;Landroid/graphics/Rect;II)Landroid/view/ViewGroup$LayoutParams;
    .locals 4

    const/16 v0, -0x3e7

    if-nez p2, :cond_0

    .line 41
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2, v0, v0, v0, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 42
    :cond_0
    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/c;->m()Lcom/mbridge/msdk/foundation/controller/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mbridge/msdk/foundation/controller/a;->d()Landroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_1

    return-object p1

    .line 43
    :cond_1
    instance-of v2, p1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x1

    if-eqz v2, :cond_8

    .line 44
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {p1, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 45
    iget v2, p2, Landroid/graphics/Rect;->left:I

    if-eq v2, v0, :cond_2

    int-to-float v2, v2

    .line 46
    invoke-static {v1, v2}, Lcom/mbridge/msdk/foundation/tools/t0;->a(Landroid/content/Context;F)I

    move-result v2

    iput v2, p1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 47
    :cond_2
    iget v2, p2, Landroid/graphics/Rect;->top:I

    if-eq v2, v0, :cond_3

    int-to-float v2, v2

    .line 48
    invoke-static {v1, v2}, Lcom/mbridge/msdk/foundation/tools/t0;->a(Landroid/content/Context;F)I

    move-result v2

    iput v2, p1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 49
    :cond_3
    iget v2, p2, Landroid/graphics/Rect;->right:I

    if-eq v2, v0, :cond_4

    int-to-float v2, v2

    .line 50
    invoke-static {v1, v2}, Lcom/mbridge/msdk/foundation/tools/t0;->a(Landroid/content/Context;F)I

    move-result v2

    iput v2, p1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 51
    :cond_4
    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    if-eq p2, v0, :cond_5

    int-to-float p2, p2

    .line 52
    invoke-static {v1, p2}, Lcom/mbridge/msdk/foundation/tools/t0;->a(Landroid/content/Context;F)I

    move-result p2

    iput p2, p1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    :cond_5
    if-lez p3, :cond_6

    int-to-float p2, p3

    .line 53
    invoke-static {v1, p2}, Lcom/mbridge/msdk/foundation/tools/t0;->a(Landroid/content/Context;F)I

    move-result p2

    iput p2, p1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    :cond_6
    if-lez p4, :cond_7

    int-to-float p2, p4

    .line 54
    invoke-static {v1, p2}, Lcom/mbridge/msdk/foundation/tools/t0;->a(Landroid/content/Context;F)I

    move-result p2

    iput p2, p1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    :cond_7
    return-object p1

    .line 55
    :cond_8
    instance-of v2, p1, Landroid/widget/RelativeLayout$LayoutParams;

    if-eqz v2, :cond_f

    .line 56
    new-instance p1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {p1, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 57
    iget v2, p2, Landroid/graphics/Rect;->left:I

    if-eq v2, v0, :cond_9

    int-to-float v2, v2

    .line 58
    invoke-static {v1, v2}, Lcom/mbridge/msdk/foundation/tools/t0;->a(Landroid/content/Context;F)I

    move-result v2

    iput v2, p1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 59
    :cond_9
    iget v2, p2, Landroid/graphics/Rect;->top:I

    if-eq v2, v0, :cond_a

    int-to-float v2, v2

    .line 60
    invoke-static {v1, v2}, Lcom/mbridge/msdk/foundation/tools/t0;->a(Landroid/content/Context;F)I

    move-result v2

    iput v2, p1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 61
    :cond_a
    iget v2, p2, Landroid/graphics/Rect;->right:I

    if-eq v2, v0, :cond_b

    int-to-float v2, v2

    .line 62
    invoke-static {v1, v2}, Lcom/mbridge/msdk/foundation/tools/t0;->a(Landroid/content/Context;F)I

    move-result v2

    iput v2, p1, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 63
    :cond_b
    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    if-eq p2, v0, :cond_c

    int-to-float p2, p2

    .line 64
    invoke-static {v1, p2}, Lcom/mbridge/msdk/foundation/tools/t0;->a(Landroid/content/Context;F)I

    move-result p2

    iput p2, p1, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    :cond_c
    if-lez p3, :cond_d

    int-to-float p2, p3

    .line 65
    invoke-static {v1, p2}, Lcom/mbridge/msdk/foundation/tools/t0;->a(Landroid/content/Context;F)I

    move-result p2

    iput p2, p1, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    :cond_d
    if-lez p4, :cond_e

    int-to-float p2, p4

    .line 66
    invoke-static {v1, p2}, Lcom/mbridge/msdk/foundation/tools/t0;->a(Landroid/content/Context;F)I

    move-result p2

    iput p2, p1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    :cond_e
    return-object p1

    .line 67
    :cond_f
    instance-of v2, p1, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz v2, :cond_15

    .line 68
    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p1, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 69
    iget v2, p2, Landroid/graphics/Rect;->left:I

    if-eq v2, v0, :cond_10

    int-to-float v2, v2

    .line 70
    invoke-static {v1, v2}, Lcom/mbridge/msdk/foundation/tools/t0;->a(Landroid/content/Context;F)I

    move-result v2

    iput v2, p1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 71
    :cond_10
    iget v2, p2, Landroid/graphics/Rect;->top:I

    if-eq v2, v0, :cond_11

    int-to-float v2, v2

    .line 72
    invoke-static {v1, v2}, Lcom/mbridge/msdk/foundation/tools/t0;->a(Landroid/content/Context;F)I

    move-result v2

    iput v2, p1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 73
    :cond_11
    iget v2, p2, Landroid/graphics/Rect;->right:I

    if-eq v2, v0, :cond_12

    int-to-float v2, v2

    .line 74
    invoke-static {v1, v2}, Lcom/mbridge/msdk/foundation/tools/t0;->a(Landroid/content/Context;F)I

    move-result v2

    iput v2, p1, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 75
    :cond_12
    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    if-eq p2, v0, :cond_13

    int-to-float p2, p2

    .line 76
    invoke-static {v1, p2}, Lcom/mbridge/msdk/foundation/tools/t0;->a(Landroid/content/Context;F)I

    move-result p2

    iput p2, p1, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    :cond_13
    if-lez p3, :cond_14

    int-to-float p2, p3

    .line 77
    invoke-static {v1, p2}, Lcom/mbridge/msdk/foundation/tools/t0;->a(Landroid/content/Context;F)I

    move-result p2

    iput p2, p1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    :cond_14
    if-lez p4, :cond_15

    int-to-float p2, p4

    .line 78
    invoke-static {v1, p2}, Lcom/mbridge/msdk/foundation/tools/t0;->a(Landroid/content/Context;F)I

    move-result p2

    iput p2, p1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    :cond_15
    return-object p1
.end method

.method public a(IIIII)V
    .locals 8

    .line 194
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OperateViews setNotchString = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x5

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v1, v6, v7

    const/4 v1, 0x1

    aput-object v2, v6, v1

    const/4 v1, 0x2

    aput-object v3, v6, v1

    const/4 v1, 0x3

    aput-object v4, v6, v1

    const/4 v1, 0x4

    aput-object v5, v6, v1

    const-string v1, "%1$s-%2$s-%3$s-%4$s-%5$s"

    invoke-static {v1, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OperateViews"

    invoke-static {v1, v0}, Lcom/mbridge/msdk/foundation/tools/o0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    invoke-static {p1, p2, p3, p4, p5}, Lcom/mbridge/msdk/foundation/tools/b0;->a(IIIII)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mbridge/msdk/video/bt/component/a;->k:Ljava/lang/String;

    .line 196
    sput p1, Lcom/mbridge/msdk/video/bt/component/a;->l:I

    .line 197
    sput p2, Lcom/mbridge/msdk/video/bt/component/a;->m:I

    .line 198
    sput p3, Lcom/mbridge/msdk/video/bt/component/a;->n:I

    .line 199
    sput p4, Lcom/mbridge/msdk/video/bt/component/a;->o:I

    .line 200
    sput p5, Lcom/mbridge/msdk/video/bt/component/a;->p:I

    return-void
.end method

.method public a(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 3

    .line 19
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 20
    const-string v1, "code"

    sget v2, Lcom/mbridge/msdk/video/bt/component/a;->j:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 21
    const-string v1, "message"

    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 22
    const-string p2, "data"

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v0, p2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 23
    invoke-static {}, Lcom/mbridge/msdk/mbsignalcommon/windvane/f;->a()Lcom/mbridge/msdk/mbsignalcommon/windvane/f;

    move-result-object p2

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Lcom/mbridge/msdk/mbsignalcommon/windvane/f;->b(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 24
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string p2, "OperateViews"

    invoke-static {p2, p1}, Lcom/mbridge/msdk/foundation/tools/o0;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public a(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 33
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 34
    const-string v1, "code"

    sget v2, Lcom/mbridge/msdk/video/bt/component/a;->i:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 35
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 36
    const-string v2, "id"

    invoke-virtual {v1, v2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 37
    const-string p3, "data"

    invoke-virtual {v0, p3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 38
    invoke-static {}, Lcom/mbridge/msdk/mbsignalcommon/windvane/f;->a()Lcom/mbridge/msdk/mbsignalcommon/windvane/f;

    move-result-object p3

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, p1, p2, v0}, Lcom/mbridge/msdk/mbsignalcommon/windvane/f;->a(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 39
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p1, p3}, Lcom/mbridge/msdk/video/bt/component/a;->a(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 40
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string p2, "OperateViews"

    invoke-static {p2, p1}, Lcom/mbridge/msdk/foundation/tools/o0;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public a(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 3

    .line 13
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 14
    const-string v1, "code"

    sget v2, Lcom/mbridge/msdk/video/bt/component/a;->j:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 15
    const-string v1, "message"

    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 16
    const-string p2, "data"

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v0, p2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 17
    invoke-static {}, Lcom/mbridge/msdk/mbsignalcommon/windvane/f;->a()Lcom/mbridge/msdk/mbsignalcommon/windvane/f;

    move-result-object p2

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Lcom/mbridge/msdk/mbsignalcommon/windvane/f;->b(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 18
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string p2, "OperateViews"

    invoke-static {p2, p1}, Lcom/mbridge/msdk/foundation/tools/o0;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 25
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 26
    const-string v1, "code"

    sget v2, Lcom/mbridge/msdk/video/bt/component/a;->i:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 27
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 28
    const-string v2, "id"

    invoke-virtual {v1, v2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 29
    const-string p3, "data"

    invoke-virtual {v0, p3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 30
    invoke-static {}, Lcom/mbridge/msdk/mbsignalcommon/windvane/f;->a()Lcom/mbridge/msdk/mbsignalcommon/windvane/f;

    move-result-object p3

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, p1, p2, v0}, Lcom/mbridge/msdk/mbsignalcommon/windvane/f;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 31
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p1, p3}, Lcom/mbridge/msdk/video/bt/component/a;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string p2, "OperateViews"

    invoke-static {p2, p1}, Lcom/mbridge/msdk/foundation/tools/o0;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public a(Ljava/lang/Object;Lorg/json/JSONObject;)V
    .locals 17

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v0, p2

    const-string v4, "id"

    const-string v5, "OperateViews"

    .line 79
    :try_start_0
    const-string v6, "unitId"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 80
    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 81
    invoke-virtual {v1, v7}, Lcom/mbridge/msdk/video/bt/component/a;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 82
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 83
    move-object v9, v2

    check-cast v9, Lcom/mbridge/msdk/mbsignalcommon/windvane/a;

    .line 84
    iget-object v9, v9, Lcom/mbridge/msdk/mbsignalcommon/windvane/a;->b:Lcom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

    if-eqz v9, :cond_0

    .line 85
    invoke-virtual {v9}, Lcom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;->getRid()Ljava/lang/String;

    move-result-object v8

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_6

    .line 86
    :cond_0
    :goto_0
    const-string v9, "data"

    invoke-virtual {v0, v9}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-nez v0, :cond_1

    .line 87
    const-string v0, "data is empty"

    invoke-virtual {v1, v2, v0}, Lcom/mbridge/msdk/video/bt/component/a;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 88
    :cond_1
    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 89
    invoke-virtual {v1, v6, v8}, Lcom/mbridge/msdk/video/bt/component/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/util/LinkedHashMap;

    move-result-object v6

    .line 90
    invoke-virtual {v6, v4}, Ljava/util/AbstractMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_c

    invoke-virtual {v6, v7}, Ljava/util/AbstractMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_c

    .line 91
    invoke-virtual {v6, v7}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/ViewGroup;

    .line 92
    invoke-virtual {v6, v4}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/View;

    .line 93
    invoke-static {v9}, Lcom/mbridge/msdk/foundation/tools/c1;->a(Landroid/view/View;)V

    if-eqz v8, :cond_b

    if-nez v9, :cond_2

    goto/16 :goto_5

    .line 94
    :cond_2
    const-string v10, "rect"

    invoke-virtual {v0, v10}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v10

    .line 95
    instance-of v0, v9, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;

    if-eqz v0, :cond_4

    .line 96
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "OperateViews setNotchString = "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "%1$s-%2$s-%3$s-%4$s-%5$s"

    sget v11, Lcom/mbridge/msdk/video/bt/component/a;->l:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    sget v12, Lcom/mbridge/msdk/video/bt/component/a;->m:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    sget v13, Lcom/mbridge/msdk/video/bt/component/a;->n:I

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    sget v14, Lcom/mbridge/msdk/video/bt/component/a;->o:I

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    sget v15, Lcom/mbridge/msdk/video/bt/component/a;->p:I

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/Object;

    const/16 v16, 0x0

    aput-object v11, v3, v16

    const/4 v11, 0x1

    aput-object v12, v3, v11

    const/4 v11, 0x2

    aput-object v13, v3, v11

    const/4 v11, 0x3

    aput-object v14, v3, v11

    const/4 v11, 0x4

    aput-object v15, v3, v11

    invoke-static {v8, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    move-object v11, v9

    check-cast v11, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;

    sget v12, Lcom/mbridge/msdk/video/bt/component/a;->l:I

    sget v13, Lcom/mbridge/msdk/video/bt/component/a;->m:I

    sget v14, Lcom/mbridge/msdk/video/bt/component/a;->n:I

    sget v15, Lcom/mbridge/msdk/video/bt/component/a;->o:I

    sget v16, Lcom/mbridge/msdk/video/bt/component/a;->p:I

    invoke-virtual/range {v11 .. v16}, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->setNotchPadding(IIIII)V

    .line 98
    invoke-virtual {v6}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 99
    instance-of v6, v3, Lcom/mbridge/msdk/video/bt/module/MBridgeBTContainer;

    if-eqz v6, :cond_3

    .line 100
    invoke-static {v9}, Lcom/mbridge/msdk/foundation/tools/c1;->a(Landroid/view/View;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 101
    :try_start_1
    move-object v0, v9

    check-cast v0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;

    .line 102
    move-object v6, v2

    check-cast v6, Lcom/mbridge/msdk/mbsignalcommon/windvane/a;

    iget-object v6, v6, Lcom/mbridge/msdk/mbsignalcommon/windvane/a;->b:Lcom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

    invoke-virtual {v6}, Lcom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;->getObject()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/mbridge/msdk/video/signal/impl/k;

    .line 103
    invoke-virtual {v6}, Lcom/mbridge/msdk/video/signal/impl/a;->j()Lcom/iab/omid/library/mmadbridge/adsession/a;

    move-result-object v8

    invoke-virtual {v0, v8}, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->setAdEvents(Lcom/iab/omid/library/mmadbridge/adsession/a;)V

    .line 104
    invoke-virtual {v6}, Lcom/mbridge/msdk/video/signal/impl/a;->k()Lcom/iab/omid/library/mmadbridge/adsession/b;

    move-result-object v8

    invoke-virtual {v0, v8}, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->setAdSession(Lcom/iab/omid/library/mmadbridge/adsession/b;)V

    .line 105
    invoke-virtual {v6}, Lcom/mbridge/msdk/video/signal/impl/a;->o()Lcom/iab/omid/library/mmadbridge/adsession/media/a;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->setVideoEvents(Lcom/iab/omid/library/mmadbridge/adsession/media/a;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 106
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    :goto_1
    move-object v0, v3

    check-cast v0, Lcom/mbridge/msdk/video/bt/module/MBridgeBTContainer;

    check-cast v3, Lcom/mbridge/msdk/video/bt/module/MBridgeBTContainer;

    check-cast v9, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;

    invoke-virtual {v0, v3, v9, v10}, Lcom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->appendSubView(Lcom/mbridge/msdk/video/bt/module/MBridgeBTContainer;Lcom/mbridge/msdk/video/bt/module/MBTempContainer;Lorg/json/JSONObject;)V

    goto/16 :goto_4

    :cond_4
    const/16 v16, 0x0

    if-nez v10, :cond_6

    .line 108
    instance-of v0, v9, Lcom/mbridge/msdk/video/bt/module/BTBaseView;

    if-eqz v0, :cond_5

    .line 109
    move-object v0, v9

    check-cast v0, Lcom/mbridge/msdk/video/bt/module/BTBaseView;

    invoke-virtual {v0}, Lcom/mbridge/msdk/video/bt/module/BTBaseView;->getRect()Landroid/graphics/Rect;

    move-result-object v0

    .line 110
    move-object v3, v9

    check-cast v3, Lcom/mbridge/msdk/video/bt/module/BTBaseView;

    invoke-virtual {v3}, Lcom/mbridge/msdk/video/bt/module/BTBaseView;->getViewWidth()I

    move-result v3

    .line 111
    move-object v6, v9

    check-cast v6, Lcom/mbridge/msdk/video/bt/module/BTBaseView;

    invoke-virtual {v6}, Lcom/mbridge/msdk/video/bt/module/BTBaseView;->getViewHeight()I

    move-result v6

    goto :goto_2

    :cond_5
    const/4 v0, 0x0

    move/from16 v3, v16

    move v6, v3

    goto :goto_2

    .line 112
    :cond_6
    const-string v0, "left"

    const/16 v3, -0x3e7

    invoke-virtual {v10, v0, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    .line 113
    const-string v6, "top"

    invoke-virtual {v10, v6, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v6

    .line 114
    const-string v11, "right"

    invoke-virtual {v10, v11, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v11

    .line 115
    const-string v12, "bottom"

    invoke-virtual {v10, v12, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    .line 116
    new-instance v12, Landroid/graphics/Rect;

    invoke-direct {v12, v0, v6, v11, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 117
    const-string v0, "width"

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    .line 118
    const-string v0, "height"

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    move v6, v0

    move-object v0, v12

    .line 119
    :goto_2
    new-instance v10, Landroid/view/ViewGroup$LayoutParams;

    const/4 v11, -0x1

    invoke-direct {v10, v11, v11}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 120
    instance-of v12, v8, Landroid/widget/FrameLayout;

    if-eqz v12, :cond_7

    .line 121
    new-instance v10, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v10, v11, v11}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    goto :goto_3

    .line 122
    :cond_7
    instance-of v12, v8, Landroid/widget/RelativeLayout;

    if-eqz v12, :cond_8

    .line 123
    new-instance v10, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v10, v11, v11}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    goto :goto_3

    .line 124
    :cond_8
    instance-of v12, v8, Landroid/widget/LinearLayout;

    if-eqz v12, :cond_9

    .line 125
    new-instance v10, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v10, v11, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 126
    :cond_9
    :goto_3
    invoke-virtual {v1, v10, v0, v3, v6}, Lcom/mbridge/msdk/video/bt/component/a;->a(Landroid/view/ViewGroup$LayoutParams;Landroid/graphics/Rect;II)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 127
    invoke-static {v9}, Lcom/mbridge/msdk/foundation/tools/c1;->a(Landroid/view/View;)V

    .line 128
    invoke-virtual {v8, v9, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 129
    :cond_a
    :goto_4
    invoke-virtual {v1, v2, v7}, Lcom/mbridge/msdk/video/bt/component/a;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 130
    const-string v0, "onAppendView"

    invoke-virtual {v1, v2, v0, v7}, Lcom/mbridge/msdk/video/bt/component/a;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "appendSubView parentId = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " childId = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/mbridge/msdk/foundation/tools/o0;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    .line 132
    :cond_b
    :goto_5
    const-string v0, "view is not exist"

    invoke-virtual {v1, v2, v0}, Lcom/mbridge/msdk/video/bt/component/a;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 133
    :cond_c
    const-string v0, "instanceId is not exist"

    invoke-virtual {v1, v2, v0}, Lcom/mbridge/msdk/video/bt/component/a;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 134
    const-string v0, "appendSubView failed: instanceId is not exist"

    invoke-static {v5, v0}, Lcom/mbridge/msdk/foundation/tools/o0;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_7

    .line 135
    :goto_6
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/mbridge/msdk/video/bt/component/a;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 136
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "appendSubView failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/mbridge/msdk/foundation/tools/o0;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_7
    return-void
.end method

.method public a(Ljava/lang/Object;Lorg/json/JSONObject;Z)V
    .locals 11

    const-string v0, "OperateViews"

    .line 137
    :try_start_0
    const-string v1, "unitId"

    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 138
    const-string v2, "id"

    invoke-virtual {p2, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 139
    invoke-virtual {p0, v2}, Lcom/mbridge/msdk/video/bt/component/a;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 140
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 141
    move-object v4, p1

    check-cast v4, Lcom/mbridge/msdk/mbsignalcommon/windvane/a;

    .line 142
    iget-object v4, v4, Lcom/mbridge/msdk/mbsignalcommon/windvane/a;->b:Lcom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

    if-eqz v4, :cond_0

    .line 143
    invoke-virtual {v4}, Lcom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;->getRid()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :catchall_0
    move-exception p2

    goto/16 :goto_3

    .line 144
    :cond_0
    :goto_0
    const-string v4, "data"

    invoke-virtual {p2, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p2

    if-nez p2, :cond_1

    .line 145
    const-string p2, "data is empty"

    invoke-virtual {p0, p1, p2}, Lcom/mbridge/msdk/video/bt/component/a;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 146
    :cond_1
    const-string v4, "targetComponentId"

    invoke-virtual {p2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 147
    const-string v5, "rect"

    invoke-virtual {p2, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p2

    .line 148
    invoke-virtual {p0, v1, v3}, Lcom/mbridge/msdk/video/bt/component/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/util/LinkedHashMap;

    move-result-object v1

    .line 149
    invoke-virtual {v1, v2}, Ljava/util/AbstractMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-virtual {v1, v4}, Ljava/util/AbstractMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 150
    invoke-virtual {v1, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 151
    invoke-virtual {v1, v4}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    if-eqz v1, :cond_8

    .line 152
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    if-eqz v5, :cond_8

    .line 153
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    .line 154
    invoke-virtual {v5, v1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v1

    if-nez p2, :cond_3

    .line 155
    instance-of p2, v3, Lcom/mbridge/msdk/video/bt/module/BTBaseView;

    if-eqz p2, :cond_2

    .line 156
    move-object p2, v3

    check-cast p2, Lcom/mbridge/msdk/video/bt/module/BTBaseView;

    invoke-virtual {p2}, Lcom/mbridge/msdk/video/bt/module/BTBaseView;->getRect()Landroid/graphics/Rect;

    move-result-object p2

    .line 157
    move-object v6, v3

    check-cast v6, Lcom/mbridge/msdk/video/bt/module/BTBaseView;

    invoke-virtual {v6}, Lcom/mbridge/msdk/video/bt/module/BTBaseView;->getViewWidth()I

    move-result v6

    .line 158
    move-object v7, v3

    check-cast v7, Lcom/mbridge/msdk/video/bt/module/BTBaseView;

    invoke-virtual {v7}, Lcom/mbridge/msdk/video/bt/module/BTBaseView;->getViewHeight()I

    move-result v7

    goto :goto_1

    :cond_2
    const/4 v6, 0x0

    const/4 p2, 0x0

    move v7, v6

    goto :goto_1

    .line 159
    :cond_3
    const-string v6, "left"

    const/16 v7, -0x3e7

    invoke-virtual {p2, v6, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v6

    .line 160
    const-string v8, "top"

    invoke-virtual {p2, v8, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v8

    .line 161
    const-string v9, "right"

    invoke-virtual {p2, v9, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v9

    .line 162
    const-string v10, "bottom"

    invoke-virtual {p2, v10, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v7

    .line 163
    new-instance v10, Landroid/graphics/Rect;

    invoke-direct {v10, v6, v8, v9, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 164
    const-string v6, "width"

    invoke-virtual {p2, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v6

    .line 165
    const-string v7, "height"

    invoke-virtual {p2, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v7

    move-object p2, v10

    .line 166
    :goto_1
    new-instance v8, Landroid/view/ViewGroup$LayoutParams;

    const/4 v9, -0x1

    invoke-direct {v8, v9, v9}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 167
    instance-of v10, v5, Landroid/widget/FrameLayout;

    if-eqz v10, :cond_4

    .line 168
    new-instance v8, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v8, v9, v9}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    goto :goto_2

    .line 169
    :cond_4
    instance-of v10, v5, Landroid/widget/RelativeLayout;

    if-eqz v10, :cond_5

    .line 170
    new-instance v8, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v8, v9, v9}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    goto :goto_2

    .line 171
    :cond_5
    instance-of v10, v5, Landroid/widget/LinearLayout;

    if-eqz v10, :cond_6

    .line 172
    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v8, v9, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 173
    :cond_6
    :goto_2
    invoke-virtual {p0, v8, p2, v6, v7}, Lcom/mbridge/msdk/video/bt/component/a;->a(Landroid/view/ViewGroup$LayoutParams;Landroid/graphics/Rect;II)Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    if-eqz p3, :cond_7

    .line 174
    invoke-static {v3}, Lcom/mbridge/msdk/foundation/tools/c1;->a(Landroid/view/View;)V

    :cond_7
    add-int/lit8 v1, v1, 0x1

    .line 175
    invoke-virtual {v5, v3, v1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 176
    invoke-virtual {p0, p1, v2}, Lcom/mbridge/msdk/video/bt/component/a;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 177
    const-string p2, "onInsertViewAbove"

    invoke-virtual {p0, p1, p2, v2}, Lcom/mbridge/msdk/video/bt/component/a;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "insertViewAbove instanceId = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " brotherId = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/mbridge/msdk/foundation/tools/o0;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 179
    :cond_8
    const-string p2, "view not exist"

    invoke-virtual {p0, p1, p2}, Lcom/mbridge/msdk/video/bt/component/a;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 180
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "insertViewAbove failed: view not exist instanceId = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/mbridge/msdk/foundation/tools/o0;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 181
    :cond_9
    const-string p2, "instanceId not exist"

    invoke-virtual {p0, p1, p2}, Lcom/mbridge/msdk/video/bt/component/a;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 182
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "insertViewAbove failed: instanceId not exist instanceId = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/mbridge/msdk/foundation/tools/o0;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_4

    .line 183
    :goto_3
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p1, p3}, Lcom/mbridge/msdk/video/bt/component/a;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 184
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "insertViewAbove failed: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/mbridge/msdk/foundation/tools/o0;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_4
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    .line 5
    sget-object v0, Lcom/mbridge/msdk/video/bt/component/a;->e:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/AbstractMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6
    sget-object v0, Lcom/mbridge/msdk/video/bt/component/a;->e:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/AbstractMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    :cond_0
    sget-object v0, Lcom/mbridge/msdk/video/bt/component/a;->d:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/AbstractMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 8
    sget-object v0, Lcom/mbridge/msdk/video/bt/component/a;->d:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/AbstractMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    :cond_1
    sget-object v0, Lcom/mbridge/msdk/video/bt/component/a;->c:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/AbstractMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 10
    sget-object v0, Lcom/mbridge/msdk/video/bt/component/a;->c:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/AbstractMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    :cond_2
    sget-object v0, Lcom/mbridge/msdk/video/bt/component/a;->b:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/AbstractMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 12
    sget-object v0, Lcom/mbridge/msdk/video/bt/component/a;->b:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/AbstractMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    return-void
.end method

.method public a(Ljava/lang/String;I)V
    .locals 1

    .line 4
    sget-object v0, Lcom/mbridge/msdk/video/bt/component/a;->f:Ljava/util/LinkedHashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public a(Ljava/lang/String;Landroid/app/Activity;)V
    .locals 1

    .line 3
    sget-object v0, Lcom/mbridge/msdk/video/bt/component/a;->g:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .line 1
    sget v0, Lcom/mbridge/msdk/video/bt/component/a;->h:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/mbridge/msdk/video/bt/component/a;->h:I

    .line 2
    sget v0, Lcom/mbridge/msdk/video/bt/component/a;->h:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized b(Ljava/lang/String;Ljava/lang/String;)Ljava/util/LinkedHashMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 5
    :try_start_0
    sget-object v0, Lcom/mbridge/msdk/video/bt/component/a;->a:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6
    sget-object v0, Lcom/mbridge/msdk/video/bt/component/a;->a:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "_"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/LinkedHashMap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_0

    .line 7
    :cond_0
    :try_start_1
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 8
    sget-object v1, Lcom/mbridge/msdk/video/bt/component/a;->a:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "_"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    :goto_0
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public b(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 3

    .line 9
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 10
    const-string v1, "code"

    sget v2, Lcom/mbridge/msdk/video/bt/component/a;->i:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 11
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 12
    const-string v2, "id"

    invoke-virtual {v1, v2, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 13
    const-string p2, "data"

    invoke-virtual {v0, p2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 14
    invoke-static {}, Lcom/mbridge/msdk/mbsignalcommon/windvane/f;->a()Lcom/mbridge/msdk/mbsignalcommon/windvane/f;

    move-result-object p2

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Lcom/mbridge/msdk/mbsignalcommon/windvane/f;->b(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 15
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/mbridge/msdk/video/bt/component/a;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string p2, "OperateViews"

    invoke-static {p2, p1}, Lcom/mbridge/msdk/foundation/tools/o0;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public b(Ljava/lang/Object;Lorg/json/JSONObject;)V
    .locals 10

    const-string v0, "id"

    const-string v1, "OperateViews"

    .line 17
    :try_start_0
    const-string v2, "unitId"

    invoke-virtual {p2, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 18
    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 19
    invoke-virtual {p0, v3}, Lcom/mbridge/msdk/video/bt/component/a;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 20
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 21
    move-object v5, p1

    check-cast v5, Lcom/mbridge/msdk/mbsignalcommon/windvane/a;

    .line 22
    iget-object v5, v5, Lcom/mbridge/msdk/mbsignalcommon/windvane/a;->b:Lcom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

    if-eqz v5, :cond_0

    .line 23
    invoke-virtual {v5}, Lcom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;->getRid()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :catchall_0
    move-exception p2

    goto/16 :goto_6

    .line 24
    :cond_0
    :goto_0
    const-string v5, "data"

    invoke-virtual {p2, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p2

    if-eqz p2, :cond_d

    .line 25
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    goto/16 :goto_5

    .line 26
    :cond_1
    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 27
    invoke-virtual {p0, v2, v4}, Lcom/mbridge/msdk/video/bt/component/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/util/LinkedHashMap;

    move-result-object v2

    .line 28
    invoke-virtual {v2, v3}, Ljava/util/AbstractMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    invoke-virtual {v2, v0}, Ljava/util/AbstractMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 29
    invoke-virtual {v2, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    .line 30
    invoke-virtual {v2, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    .line 31
    invoke-static {v5}, Lcom/mbridge/msdk/foundation/tools/c1;->a(Landroid/view/View;)V

    if-eqz v4, :cond_b

    if-nez v5, :cond_2

    goto/16 :goto_4

    .line 32
    :cond_2
    const-string v6, "rect"

    invoke-virtual {p2, v6}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p2

    .line 33
    instance-of v6, v5, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;

    if-eqz v6, :cond_4

    .line 34
    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    .line 35
    instance-of v6, v4, Lcom/mbridge/msdk/video/bt/module/MBridgeBTContainer;

    if-eqz v6, :cond_3

    .line 36
    invoke-static {v5}, Lcom/mbridge/msdk/foundation/tools/c1;->a(Landroid/view/View;)V

    .line 37
    move-object v2, v4

    check-cast v2, Lcom/mbridge/msdk/video/bt/module/MBridgeBTContainer;

    check-cast v4, Lcom/mbridge/msdk/video/bt/module/MBridgeBTContainer;

    check-cast v5, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;

    invoke-virtual {v2, v4, v5, p2}, Lcom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->appendSubView(Lcom/mbridge/msdk/video/bt/module/MBridgeBTContainer;Lcom/mbridge/msdk/video/bt/module/MBTempContainer;Lorg/json/JSONObject;)V

    goto/16 :goto_3

    :cond_4
    if-nez p2, :cond_6

    .line 38
    instance-of p2, v5, Lcom/mbridge/msdk/video/bt/module/BTBaseView;

    if-eqz p2, :cond_5

    .line 39
    move-object p2, v5

    check-cast p2, Lcom/mbridge/msdk/video/bt/module/BTBaseView;

    invoke-virtual {p2}, Lcom/mbridge/msdk/video/bt/module/BTBaseView;->getRect()Landroid/graphics/Rect;

    move-result-object p2

    .line 40
    move-object v2, v5

    check-cast v2, Lcom/mbridge/msdk/video/bt/module/BTBaseView;

    invoke-virtual {v2}, Lcom/mbridge/msdk/video/bt/module/BTBaseView;->getViewWidth()I

    move-result v2

    .line 41
    move-object v6, v5

    check-cast v6, Lcom/mbridge/msdk/video/bt/module/BTBaseView;

    invoke-virtual {v6}, Lcom/mbridge/msdk/video/bt/module/BTBaseView;->getViewHeight()I

    move-result v6

    goto :goto_1

    :cond_5
    const/4 v2, 0x0

    const/4 p2, 0x0

    move v6, v2

    goto :goto_1

    .line 42
    :cond_6
    const-string v2, "left"

    const/16 v6, -0x3e7

    invoke-virtual {p2, v2, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    .line 43
    const-string v7, "top"

    invoke-virtual {p2, v7, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v7

    .line 44
    const-string v8, "right"

    invoke-virtual {p2, v8, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v8

    .line 45
    const-string v9, "bottom"

    invoke-virtual {p2, v9, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v6

    .line 46
    new-instance v9, Landroid/graphics/Rect;

    invoke-direct {v9, v2, v7, v8, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 47
    const-string v2, "width"

    invoke-virtual {p2, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    .line 48
    const-string v6, "height"

    invoke-virtual {p2, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v6

    move-object p2, v9

    .line 49
    :goto_1
    new-instance v7, Landroid/view/ViewGroup$LayoutParams;

    const/4 v8, -0x1

    invoke-direct {v7, v8, v8}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 50
    instance-of v9, v4, Landroid/widget/FrameLayout;

    if-eqz v9, :cond_7

    .line 51
    new-instance v7, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v7, v8, v8}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    goto :goto_2

    .line 52
    :cond_7
    instance-of v9, v4, Landroid/widget/RelativeLayout;

    if-eqz v9, :cond_8

    .line 53
    new-instance v7, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v7, v8, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    goto :goto_2

    .line 54
    :cond_8
    instance-of v9, v4, Landroid/widget/LinearLayout;

    if-eqz v9, :cond_9

    .line 55
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v7, v8, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 56
    :cond_9
    :goto_2
    invoke-virtual {p0, v7, p2, v2, v6}, Lcom/mbridge/msdk/video/bt/component/a;->a(Landroid/view/ViewGroup$LayoutParams;Landroid/graphics/Rect;II)Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    .line 57
    invoke-static {v5}, Lcom/mbridge/msdk/foundation/tools/c1;->a(Landroid/view/View;)V

    .line 58
    invoke-virtual {v4, v5, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 59
    :cond_a
    :goto_3
    invoke-virtual {p0, p1, v3}, Lcom/mbridge/msdk/video/bt/component/a;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    const-string p2, "onAppendViewTo"

    invoke-virtual {p0, p1, p2, v3}, Lcom/mbridge/msdk/video/bt/component/a;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "appendViewTo parentId = "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " childId = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Lcom/mbridge/msdk/foundation/tools/o0;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    .line 62
    :cond_b
    :goto_4
    const-string p2, "view is not exist"

    invoke-virtual {p0, p1, p2}, Lcom/mbridge/msdk/video/bt/component/a;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 63
    :cond_c
    const-string p2, "instanceId is not exist"

    invoke-virtual {p0, p1, p2}, Lcom/mbridge/msdk/video/bt/component/a;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    const-string p2, "appendViewTo failed: instanceId is not exist"

    invoke-static {v1, p2}, Lcom/mbridge/msdk/foundation/tools/o0;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    .line 65
    :cond_d
    :goto_5
    const-string p2, "unitId or data is empty"

    invoke-virtual {p0, p1, p2}, Lcom/mbridge/msdk/video/bt/component/a;->a(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    .line 66
    :goto_6
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/mbridge/msdk/video/bt/component/a;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "appendViewTo failed: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/mbridge/msdk/foundation/tools/o0;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_7
    return-void
.end method

.method public b(Ljava/lang/Object;Lorg/json/JSONObject;Z)V
    .locals 11

    const-string v0, "OperateViews"

    .line 68
    :try_start_0
    const-string v1, "unitId"

    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 69
    const-string v2, "id"

    invoke-virtual {p2, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 70
    invoke-virtual {p0, v2}, Lcom/mbridge/msdk/video/bt/component/a;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 71
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 72
    move-object v4, p1

    check-cast v4, Lcom/mbridge/msdk/mbsignalcommon/windvane/a;

    .line 73
    iget-object v4, v4, Lcom/mbridge/msdk/mbsignalcommon/windvane/a;->b:Lcom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

    if-eqz v4, :cond_0

    .line 74
    invoke-virtual {v4}, Lcom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;->getRid()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :catchall_0
    move-exception p2

    goto/16 :goto_3

    .line 75
    :cond_0
    :goto_0
    const-string v4, "data"

    invoke-virtual {p2, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p2

    if-nez p2, :cond_1

    .line 76
    const-string p2, "data is empty"

    invoke-virtual {p0, p1, p2}, Lcom/mbridge/msdk/video/bt/component/a;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 77
    :cond_1
    const-string v4, "targetComponentId"

    invoke-virtual {p2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 78
    const-string v5, "rect"

    invoke-virtual {p2, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p2

    .line 79
    invoke-virtual {p0, v1, v3}, Lcom/mbridge/msdk/video/bt/component/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/util/LinkedHashMap;

    move-result-object v1

    .line 80
    invoke-virtual {v1, v2}, Ljava/util/AbstractMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-virtual {v1, v4}, Ljava/util/AbstractMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 81
    invoke-virtual {v1, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 82
    invoke-virtual {v1, v4}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    if-eqz v1, :cond_9

    .line 83
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    if-eqz v4, :cond_9

    .line 84
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    .line 85
    invoke-virtual {v4, v1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v1

    const/4 v5, 0x0

    if-nez p2, :cond_3

    .line 86
    instance-of p2, v3, Lcom/mbridge/msdk/video/bt/module/BTBaseView;

    if-eqz p2, :cond_2

    .line 87
    move-object p2, v3

    check-cast p2, Lcom/mbridge/msdk/video/bt/module/BTBaseView;

    invoke-virtual {p2}, Lcom/mbridge/msdk/video/bt/module/BTBaseView;->getRect()Landroid/graphics/Rect;

    move-result-object p2

    .line 88
    move-object v6, v3

    check-cast v6, Lcom/mbridge/msdk/video/bt/module/BTBaseView;

    invoke-virtual {v6}, Lcom/mbridge/msdk/video/bt/module/BTBaseView;->getViewWidth()I

    move-result v6

    .line 89
    move-object v7, v3

    check-cast v7, Lcom/mbridge/msdk/video/bt/module/BTBaseView;

    invoke-virtual {v7}, Lcom/mbridge/msdk/video/bt/module/BTBaseView;->getViewHeight()I

    move-result v7

    goto :goto_1

    :cond_2
    const/4 p2, 0x0

    move v6, v5

    move v7, v6

    goto :goto_1

    .line 90
    :cond_3
    const-string v6, "left"

    const/16 v7, -0x3e7

    invoke-virtual {p2, v6, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v6

    .line 91
    const-string v8, "top"

    invoke-virtual {p2, v8, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v8

    .line 92
    const-string v9, "right"

    invoke-virtual {p2, v9, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v9

    .line 93
    const-string v10, "bottom"

    invoke-virtual {p2, v10, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v7

    .line 94
    new-instance v10, Landroid/graphics/Rect;

    invoke-direct {v10, v6, v8, v9, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 95
    const-string v6, "width"

    invoke-virtual {p2, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v6

    .line 96
    const-string v7, "height"

    invoke-virtual {p2, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v7

    move-object p2, v10

    .line 97
    :goto_1
    new-instance v8, Landroid/view/ViewGroup$LayoutParams;

    const/4 v9, -0x1

    invoke-direct {v8, v9, v9}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 98
    instance-of v10, v4, Landroid/widget/FrameLayout;

    if-eqz v10, :cond_4

    .line 99
    new-instance v8, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v8, v9, v9}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    goto :goto_2

    .line 100
    :cond_4
    instance-of v10, v4, Landroid/widget/RelativeLayout;

    if-eqz v10, :cond_5

    .line 101
    new-instance v8, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v8, v9, v9}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    goto :goto_2

    .line 102
    :cond_5
    instance-of v10, v4, Landroid/widget/LinearLayout;

    if-eqz v10, :cond_6

    .line 103
    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v8, v9, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 104
    :cond_6
    :goto_2
    invoke-virtual {p0, v8, p2, v6, v7}, Lcom/mbridge/msdk/video/bt/component/a;->a(Landroid/view/ViewGroup$LayoutParams;Landroid/graphics/Rect;II)Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    if-eqz p3, :cond_7

    .line 105
    invoke-static {v3}, Lcom/mbridge/msdk/foundation/tools/c1;->a(Landroid/view/View;)V

    :cond_7
    add-int/lit8 v1, v1, -0x1

    if-le v1, v9, :cond_8

    move v5, v1

    .line 106
    :cond_8
    invoke-virtual {v4, v3, v5, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 107
    invoke-virtual {p0, p1, v2}, Lcom/mbridge/msdk/video/bt/component/a;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 108
    const-string p2, "onInsertViewBelow"

    invoke-virtual {p0, p1, p2, v2}, Lcom/mbridge/msdk/video/bt/component/a;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "insertViewBelow instanceId = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/mbridge/msdk/foundation/tools/o0;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 110
    :cond_9
    const-string p2, "view not exist"

    invoke-virtual {p0, p1, p2}, Lcom/mbridge/msdk/video/bt/component/a;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 111
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "insertViewBelow failed: view not exist instanceId = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/mbridge/msdk/foundation/tools/o0;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 112
    :cond_a
    const-string p2, "instanceId not exist"

    invoke-virtual {p0, p1, p2}, Lcom/mbridge/msdk/video/bt/component/a;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 113
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "insertViewBelow failed: instanceId not exist instanceId = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/mbridge/msdk/foundation/tools/o0;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_4

    .line 114
    :goto_3
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p1, p3}, Lcom/mbridge/msdk/video/bt/component/a;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 115
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "insertViewBelow failed: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/mbridge/msdk/foundation/tools/o0;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_4
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 1

    .line 3
    sget-object v0, Lcom/mbridge/msdk/video/bt/component/a;->f:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/AbstractMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    sget-object v0, Lcom/mbridge/msdk/video/bt/component/a;->f:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/AbstractMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public c(Ljava/lang/String;)Lcom/mbridge/msdk/foundation/entity/CampaignEx;
    .locals 1

    .line 1
    sget-object v0, Lcom/mbridge/msdk/video/bt/component/a;->c:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/AbstractMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lcom/mbridge/msdk/video/bt/component/a;->c:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public c(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 16

    move-object/from16 v0, p2

    .line 29
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "reportUrls:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OperateViews"

    invoke-static {v2, v1}, Lcom/mbridge/msdk/foundation/tools/o0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 31
    :try_start_0
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    move v3, v0

    .line 32
    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v5, ""

    if-ge v3, v4, :cond_3

    .line 33
    :try_start_1
    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 34
    const-string v6, "type"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v6

    .line 35
    const-string v7, "url"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 36
    const-string v8, "&tun="

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/mbridge/msdk/foundation/tools/k0;->y()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v8, v5}, Lcom/mbridge/msdk/foundation/tools/t0;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 37
    const-string v5, "report"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v15

    const/4 v4, 0x1

    if-nez v15, :cond_1

    .line 38
    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/c;->m()Lcom/mbridge/msdk/foundation/controller/c;

    move-result-object v5

    invoke-virtual {v5}, Lcom/mbridge/msdk/foundation/controller/a;->d()Landroid/content/Context;

    move-result-object v9

    const-string v11, ""

    if-eqz v6, :cond_0

    move v14, v4

    goto :goto_1

    :cond_0
    move v14, v0

    :goto_1
    const/4 v10, 0x0

    const/4 v13, 0x0

    invoke-static/range {v9 .. v14}, Lcom/mbridge/msdk/click/a;->a(Landroid/content/Context;Lcom/mbridge/msdk/foundation/entity/CampaignEx;Ljava/lang/String;Ljava/lang/String;ZZ)V

    goto :goto_3

    :catchall_0
    move-exception v0

    move-object/from16 v1, p0

    goto :goto_4

    .line 39
    :cond_1
    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/c;->m()Lcom/mbridge/msdk/foundation/controller/c;

    move-result-object v5

    invoke-virtual {v5}, Lcom/mbridge/msdk/foundation/controller/a;->d()Landroid/content/Context;

    move-result-object v9

    const-string v11, ""

    if-eqz v6, :cond_2

    move v14, v4

    goto :goto_2

    :cond_2
    move v14, v0

    :goto_2
    const/4 v10, 0x0

    const/4 v13, 0x0

    invoke-static/range {v9 .. v15}, Lcom/mbridge/msdk/click/a;->a(Landroid/content/Context;Lcom/mbridge/msdk/foundation/entity/CampaignEx;Ljava/lang/String;Ljava/lang/String;ZZI)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    move-object/from16 v1, p0

    move-object/from16 v0, p1

    .line 40
    :try_start_2
    invoke-virtual {v1, v0, v5}, Lcom/mbridge/msdk/video/bt/component/a;->b(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_5

    :catchall_1
    move-exception v0

    .line 41
    :goto_4
    const-string v3, "reportUrls"

    invoke-static {v2, v3, v0}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_5

    :cond_4
    move-object/from16 v1, p0

    :goto_5
    return-void
.end method

.method public c(Ljava/lang/Object;Lorg/json/JSONObject;)V
    .locals 5

    const-string v0, "OperateViews"

    .line 3
    :try_start_0
    const-string v1, "unitId"

    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 4
    const-string v2, "id"

    invoke-virtual {p2, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 5
    invoke-virtual {p0, v2}, Lcom/mbridge/msdk/video/bt/component/a;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 6
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 7
    move-object v4, p1

    check-cast v4, Lcom/mbridge/msdk/mbsignalcommon/windvane/a;

    .line 8
    iget-object v4, v4, Lcom/mbridge/msdk/mbsignalcommon/windvane/a;->b:Lcom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

    if-eqz v4, :cond_0

    .line 9
    invoke-virtual {v4}, Lcom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;->getRid()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :catchall_0
    move-exception p2

    goto :goto_1

    .line 10
    :cond_0
    :goto_0
    const-string v4, "data"

    invoke-virtual {p2, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p2

    if-nez p2, :cond_1

    .line 11
    const-string p2, "data is empty"

    invoke-virtual {p0, p1, p2}, Lcom/mbridge/msdk/video/bt/component/a;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 12
    :cond_1
    invoke-virtual {p0, v1, v3}, Lcom/mbridge/msdk/video/bt/component/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/util/LinkedHashMap;

    move-result-object p2

    .line 13
    invoke-virtual {p2, v2}, Ljava/util/AbstractMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 14
    invoke-virtual {p2, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/View;

    if-eqz p2, :cond_3

    .line 15
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 16
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_2

    .line 17
    invoke-virtual {v1, p2}, Landroid/view/ViewGroup;->bringChildToFront(Landroid/view/View;)V

    .line 18
    invoke-virtual {p0, p1, v2}, Lcom/mbridge/msdk/video/bt/component/a;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    const-string p2, "onBringViewToFront"

    invoke-virtual {p0, p1, p2, v2}, Lcom/mbridge/msdk/video/bt/component/a;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "bringViewToFront instanceId = "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/mbridge/msdk/foundation/tools/o0;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 21
    :cond_2
    const-string p2, "parent is null"

    invoke-virtual {p0, p1, p2}, Lcom/mbridge/msdk/video/bt/component/a;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    const-string p2, "bringViewToFront failed: parent is null"

    invoke-static {v0, p2}, Lcom/mbridge/msdk/foundation/tools/o0;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 23
    :cond_3
    const-string p2, "view is null"

    invoke-virtual {p0, p1, p2}, Lcom/mbridge/msdk/video/bt/component/a;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    const-string p2, "bringViewToFront failed: view is null"

    invoke-static {v0, p2}, Lcom/mbridge/msdk/foundation/tools/o0;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 25
    :cond_4
    const-string p2, "instanceId is not exist"

    invoke-virtual {p0, p1, p2}, Lcom/mbridge/msdk/video/bt/component/a;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    const-string p2, "bringViewToFront failed: instanceId is not exist"

    invoke-static {v0, p2}, Lcom/mbridge/msdk/foundation/tools/o0;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 27
    :goto_1
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcom/mbridge/msdk/video/bt/component/a;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "bringViewToFront failed: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/mbridge/msdk/foundation/tools/o0;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    return-void
.end method

.method public c(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 42
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/mbridge/msdk/video/bt/component/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/util/LinkedHashMap;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 43
    invoke-virtual {p1}, Ljava/util/AbstractMap;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_1

    .line 44
    :cond_0
    invoke-virtual {p1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/View;

    .line 45
    instance-of v0, p2, Lcom/mbridge/msdk/video/bt/module/MBridgeBTContainer;

    if-eqz v0, :cond_1

    .line 46
    check-cast p2, Lcom/mbridge/msdk/video/bt/module/MBridgeBTContainer;

    .line 47
    invoke-virtual {p2}, Lcom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->addNativeCloseButtonWhenWebViewCrash()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_2
    :goto_1
    return-void

    .line 48
    :goto_2
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string p2, "OperateViews"

    invoke-static {p2, p1}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method public d(Ljava/lang/String;)Lcom/mbridge/msdk/videocommon/setting/c;
    .locals 1

    .line 2
    sget-object v0, Lcom/mbridge/msdk/video/bt/component/a;->d:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/AbstractMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    sget-object v0, Lcom/mbridge/msdk/video/bt/component/a;->d:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/mbridge/msdk/videocommon/setting/c;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public d(Ljava/lang/Object;Lorg/json/JSONObject;)V
    .locals 5

    .line 4
    :try_start_0
    move-object v0, p1

    check-cast v0, Lcom/mbridge/msdk/mbsignalcommon/windvane/a;

    .line 5
    iget-object v0, v0, Lcom/mbridge/msdk/mbsignalcommon/windvane/a;->b:Lcom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v1, ""

    if-eqz v0, :cond_0

    .line 6
    :try_start_1
    invoke-virtual {v0}, Lcom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;->getRid()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :catchall_0
    move-exception p2

    goto :goto_2

    :cond_0
    move-object v0, v1

    .line 7
    :goto_0
    const-string v2, "unitId"

    invoke-virtual {p2, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 8
    const-string v3, "eventName"

    invoke-virtual {p2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 9
    const-string v4, "data"

    invoke-virtual {p2, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p2

    .line 10
    invoke-virtual {p0, v2, v0}, Lcom/mbridge/msdk/video/bt/component/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/util/LinkedHashMap;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 11
    invoke-virtual {v0}, Ljava/util/AbstractMap;->size()I

    move-result v2

    if-lez v2, :cond_4

    .line 12
    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 13
    instance-of v4, v2, Lcom/mbridge/msdk/video/bt/module/MBridgeBTWebView;

    if-eqz v4, :cond_2

    .line 14
    move-object v4, v2

    check-cast v4, Lcom/mbridge/msdk/video/bt/module/MBridgeBTWebView;

    invoke-virtual {v4, v3, p2}, Lcom/mbridge/msdk/video/bt/module/MBridgeBTWebView;->broadcast(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 15
    :cond_2
    instance-of v4, v2, Lcom/mbridge/msdk/video/bt/module/MBridgeBTLayout;

    if-eqz v4, :cond_1

    .line 16
    check-cast v2, Lcom/mbridge/msdk/video/bt/module/MBridgeBTLayout;

    invoke-virtual {v2, v3, p2}, Lcom/mbridge/msdk/video/bt/module/MBridgeBTLayout;->broadcast(Ljava/lang/String;Lorg/json/JSONObject;)V

    goto :goto_1

    .line 17
    :cond_3
    invoke-virtual {p0, p1, v1}, Lcom/mbridge/msdk/video/bt/component/a;->b(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_3

    .line 18
    :cond_4
    const-string p2, "unitId not exist"

    invoke-virtual {p0, p1, p2}, Lcom/mbridge/msdk/video/bt/component/a;->a(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    .line 19
    :goto_2
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/mbridge/msdk/video/bt/component/a;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "broadcast failed: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "OperateViews"

    invoke-static {p2, p1}, Lcom/mbridge/msdk/foundation/tools/o0;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_3
    return-void
.end method

.method public d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/mbridge/msdk/video/bt/component/a;->b:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public e(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/mbridge/msdk/video/bt/component/a;->b:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/AbstractMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lcom/mbridge/msdk/video/bt/component/a;->b:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    .line 3
    :cond_0
    const-string p1, ""

    return-object p1
.end method

.method public e(Ljava/lang/Object;Lorg/json/JSONObject;)V
    .locals 9

    const-string v0, "OperateViews"

    .line 4
    :try_start_0
    const-string v1, "unitId"

    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 5
    const-string v2, "id"

    invoke-virtual {p2, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 6
    invoke-virtual {p0, v2}, Lcom/mbridge/msdk/video/bt/component/a;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 7
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 8
    move-object v4, p1

    check-cast v4, Lcom/mbridge/msdk/mbsignalcommon/windvane/a;

    .line 9
    iget-object v4, v4, Lcom/mbridge/msdk/mbsignalcommon/windvane/a;->b:Lcom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

    if-eqz v4, :cond_0

    .line 10
    invoke-virtual {v4}, Lcom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;->getRid()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :catchall_0
    move-exception p2

    goto/16 :goto_2

    .line 11
    :cond_0
    :goto_0
    const-string v4, "data"

    invoke-virtual {p2, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p2

    if-nez p2, :cond_1

    .line 12
    const-string p2, "data is empty"

    invoke-virtual {p0, p1, p2}, Lcom/mbridge/msdk/video/bt/component/a;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 13
    :cond_1
    invoke-virtual {p0, v1, v3}, Lcom/mbridge/msdk/video/bt/component/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/util/LinkedHashMap;

    move-result-object p2

    .line 14
    invoke-virtual {p2}, Ljava/util/AbstractMap;->size()I

    move-result v4

    if-lez v4, :cond_8

    .line 15
    invoke-virtual {p2}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    const/4 v5, 0x0

    :cond_2
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    .line 16
    instance-of v7, v6, Lcom/mbridge/msdk/video/bt/module/MBridgeBTContainer;

    if-eqz v7, :cond_3

    .line 17
    move-object v5, v6

    check-cast v5, Lcom/mbridge/msdk/video/bt/module/MBridgeBTContainer;

    goto :goto_1

    .line 18
    :cond_3
    instance-of v7, v6, Lcom/mbridge/msdk/video/bt/module/MBridgeBTWebView;

    if-eqz v7, :cond_4

    .line 19
    check-cast v6, Lcom/mbridge/msdk/video/bt/module/MBridgeBTWebView;

    invoke-virtual {v6}, Lcom/mbridge/msdk/video/bt/module/MBridgeBTWebView;->onDestory()V

    goto :goto_1

    .line 20
    :cond_4
    instance-of v7, v6, Lcom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;

    if-eqz v7, :cond_5

    .line 21
    move-object v7, v6

    check-cast v7, Lcom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;

    invoke-virtual {v7}, Lcom/mbridge/msdk/video/bt/module/BTBaseView;->getInstanceId()Ljava/lang/String;

    move-result-object v7

    .line 22
    invoke-static {}, Lcom/mbridge/msdk/video/bt/component/b;->a()Lcom/mbridge/msdk/video/bt/component/b;

    move-result-object v8

    invoke-virtual {v8, v7}, Lcom/mbridge/msdk/video/bt/component/b;->a(Ljava/lang/String;)V

    .line 23
    check-cast v6, Lcom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;

    invoke-virtual {v6}, Lcom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;->onDestory()V

    goto :goto_1

    .line 24
    :cond_5
    instance-of v7, v6, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;

    if-eqz v7, :cond_2

    .line 25
    check-cast v6, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;

    invoke-virtual {v6}, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->onDestroy()V

    goto :goto_1

    :cond_6
    if-eqz v5, :cond_7

    .line 26
    invoke-virtual {v5}, Lcom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->onAdClose()V

    .line 27
    sget-object v4, Lcom/mbridge/msdk/video/bt/component/a;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4, p2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    invoke-virtual {p2}, Ljava/util/LinkedHashMap;->clear()V

    .line 29
    sget-object p2, Lcom/mbridge/msdk/video/bt/component/a;->a:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    invoke-virtual {p0, p1, v2}, Lcom/mbridge/msdk/video/bt/component/a;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 31
    :cond_7
    const-string p2, "not found MBridgeBTContainer"

    invoke-virtual {p0, p1, p2}, Lcom/mbridge/msdk/video/bt/component/a;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    const-string p2, "closeAd successed"

    invoke-static {v0, p2}, Lcom/mbridge/msdk/foundation/tools/o0;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 33
    :cond_8
    const-string p2, "unitId or instanceId not exist"

    invoke-virtual {p0, p1, p2}, Lcom/mbridge/msdk/video/bt/component/a;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "closeAd failed: unitId or instanceId not exist unitId = "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/mbridge/msdk/foundation/tools/o0;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    .line 35
    :goto_2
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcom/mbridge/msdk/video/bt/component/a;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "closeAd failed: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/mbridge/msdk/foundation/tools/o0;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_3
    return-void
.end method

.method public f(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/mbridge/msdk/video/bt/component/a;->e:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/AbstractMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lcom/mbridge/msdk/video/bt/component/a;->e:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    .line 3
    :cond_0
    const-string p1, ""

    return-object p1
.end method

.method public f(Ljava/lang/Object;Lorg/json/JSONObject;)V
    .locals 7

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "createNativeEC:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OperateViews"

    invoke-static {v1, v0}, Lcom/mbridge/msdk/foundation/tools/o0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    :try_start_0
    const-string v0, "unitId"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 6
    const-string v2, "data"

    invoke-virtual {p2, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p2

    if-eqz p2, :cond_5

    .line 7
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_1

    .line 8
    :cond_0
    const-string v2, ""

    .line 9
    const-string v3, "campaign"

    invoke-virtual {p2, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 10
    invoke-static {v3}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->parseCampaignWithBackData(Lorg/json/JSONObject;)Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 11
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 12
    invoke-virtual {v3, v0}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->setCampaignUnitId(Ljava/lang/String;)V

    .line 13
    invoke-virtual {v3}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getRequestId()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :catchall_0
    move-exception p2

    goto/16 :goto_2

    .line 14
    :cond_1
    :goto_0
    const-string v4, "unitSetting"

    invoke-virtual {p2, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p2

    .line 15
    invoke-static {p2}, Lcom/mbridge/msdk/videocommon/setting/c;->a(Lorg/json/JSONObject;)Lcom/mbridge/msdk/videocommon/setting/c;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 16
    invoke-virtual {p2, v0}, Lcom/mbridge/msdk/videocommon/setting/c;->h(Ljava/lang/String;)V

    .line 17
    :cond_2
    new-instance v4, Lcom/mbridge/msdk/video/bt/module/MBridgeBTNativeEC;

    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/c;->m()Lcom/mbridge/msdk/foundation/controller/c;

    move-result-object v5

    invoke-virtual {v5}, Lcom/mbridge/msdk/foundation/controller/a;->d()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/mbridge/msdk/video/bt/module/MBridgeBTNativeEC;-><init>(Landroid/content/Context;)V

    .line 18
    invoke-virtual {v4, v3}, Lcom/mbridge/msdk/video/bt/module/BTBaseView;->setCampaign(Lcom/mbridge/msdk/foundation/entity/CampaignEx;)V

    .line 19
    new-instance v5, Lcom/mbridge/msdk/video/signal/impl/k;

    const/4 v6, 0x0

    invoke-direct {v5, v6, v3}, Lcom/mbridge/msdk/video/signal/impl/k;-><init>(Landroid/app/Activity;Lcom/mbridge/msdk/foundation/entity/CampaignEx;)V

    .line 20
    invoke-virtual {v5, v0}, Lcom/mbridge/msdk/video/signal/impl/a;->setUnitId(Ljava/lang/String;)V

    .line 21
    invoke-virtual {v4, v5}, Lcom/mbridge/msdk/video/bt/module/MBridgeBTNativeEC;->setJSCommon(Lcom/mbridge/msdk/video/signal/impl/k;)V

    .line 22
    invoke-virtual {v4, v0}, Lcom/mbridge/msdk/video/bt/module/MBridgeBTNativeEC;->setUnitId(Ljava/lang/String;)V

    .line 23
    invoke-virtual {v4, p2}, Lcom/mbridge/msdk/video/bt/module/BTBaseView;->setRewardUnitSetting(Lcom/mbridge/msdk/videocommon/setting/c;)V

    .line 24
    move-object p2, p1

    check-cast p2, Lcom/mbridge/msdk/mbsignalcommon/windvane/a;

    .line 25
    iget-object p2, p2, Lcom/mbridge/msdk/mbsignalcommon/windvane/a;->b:Lcom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

    if-eqz p2, :cond_3

    .line 26
    invoke-virtual {p2}, Lcom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;->getRid()Ljava/lang/String;

    move-result-object v2

    .line 27
    invoke-virtual {v4, p2}, Lcom/mbridge/msdk/video/bt/module/MBridgeBTNativeEC;->setCreateWebView(Landroid/webkit/WebView;)V

    .line 28
    :cond_3
    invoke-virtual {p0, v0, v2}, Lcom/mbridge/msdk/video/bt/component/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/util/LinkedHashMap;

    move-result-object p2

    .line 29
    invoke-virtual {p0}, Lcom/mbridge/msdk/video/bt/component/a;->b()Ljava/lang/String;

    move-result-object v0

    .line 30
    sget-object v5, Lcom/mbridge/msdk/video/bt/component/a;->b:Ljava/util/LinkedHashMap;

    invoke-virtual {v5, v0, v2}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    invoke-virtual {v4, v0}, Lcom/mbridge/msdk/video/bt/module/BTBaseView;->setInstanceId(Ljava/lang/String;)V

    .line 32
    invoke-virtual {p2, v0, v4}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    invoke-virtual {v4}, Lcom/mbridge/msdk/video/bt/module/MBridgeBTNativeEC;->preLoadData()V

    if-nez v3, :cond_4

    .line 34
    const-string p2, "campaign is null"

    invoke-virtual {p0, p1, p2}, Lcom/mbridge/msdk/video/bt/component/a;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    const-string p2, "createNativeEC failed"

    invoke-static {v1, p2}, Lcom/mbridge/msdk/foundation/tools/o0;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 36
    :cond_4
    invoke-virtual {p0, p1, v0}, Lcom/mbridge/msdk/video/bt/component/a;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "createNativeEC instanceId = "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Lcom/mbridge/msdk/foundation/tools/o0;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 38
    :cond_5
    :goto_1
    const-string p2, "unitId or data is empty"

    invoke-virtual {p0, p1, p2}, Lcom/mbridge/msdk/video/bt/component/a;->a(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    .line 39
    :goto_2
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/mbridge/msdk/video/bt/component/a;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "createNativeEC failed\uff1a"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/mbridge/msdk/foundation/tools/o0;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_3
    return-void
.end method

.method public g(Ljava/lang/String;)I
    .locals 1

    .line 1
    sget-object v0, Lcom/mbridge/msdk/video/bt/component/a;->f:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/AbstractMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lcom/mbridge/msdk/video/bt/component/a;->f:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x2

    return p1
.end method

.method public g(Ljava/lang/Object;Lorg/json/JSONObject;)V
    .locals 11

    const-string v0, "OperateViews"

    .line 3
    :try_start_0
    const-string v1, "unitId"

    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 4
    const-string v2, "data"

    invoke-virtual {p2, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p2

    if-eqz p2, :cond_4

    .line 5
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_3

    .line 6
    :cond_0
    const-string v2, ""

    .line 7
    const-string v3, "campaign"

    invoke-virtual {p2, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 8
    invoke-static {v3}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->parseCampaignWithBackData(Lorg/json/JSONObject;)Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 9
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 10
    invoke-virtual {v3, v1}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->setCampaignUnitId(Ljava/lang/String;)V

    .line 11
    invoke-virtual {v3}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getRequestId()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :catchall_0
    move-exception p2

    goto/16 :goto_4

    .line 12
    :cond_1
    :goto_0
    const-string v4, "show_time"

    const/4 v5, 0x0

    invoke-virtual {p2, v4, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    .line 13
    const-string v6, "show_mute"

    invoke-virtual {p2, v6, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v6

    .line 14
    const-string v7, "show_close"

    invoke-virtual {p2, v7, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v7

    .line 15
    const-string v8, "orientation"

    const/4 v9, 0x1

    invoke-virtual {p2, v8, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v8

    .line 16
    const-string v9, "show_pgb"

    invoke-virtual {p2, v9, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p2

    .line 17
    new-instance v5, Lcom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;

    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/c;->m()Lcom/mbridge/msdk/foundation/controller/c;

    move-result-object v9

    invoke-virtual {v9}, Lcom/mbridge/msdk/foundation/controller/a;->d()Landroid/content/Context;

    move-result-object v9

    invoke-direct {v5, v9}, Lcom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;-><init>(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    :try_start_1
    move-object v9, p1

    check-cast v9, Lcom/mbridge/msdk/mbsignalcommon/windvane/a;

    iget-object v9, v9, Lcom/mbridge/msdk/mbsignalcommon/windvane/a;->b:Lcom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

    invoke-virtual {v9}, Lcom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;->getObject()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/mbridge/msdk/video/signal/impl/k;

    .line 19
    invoke-virtual {v9}, Lcom/mbridge/msdk/video/signal/impl/a;->j()Lcom/iab/omid/library/mmadbridge/adsession/a;

    move-result-object v10

    invoke-virtual {v5, v10}, Lcom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;->setAdEvents(Lcom/iab/omid/library/mmadbridge/adsession/a;)V

    .line 20
    invoke-virtual {v9}, Lcom/mbridge/msdk/video/signal/impl/a;->k()Lcom/iab/omid/library/mmadbridge/adsession/b;

    move-result-object v10

    invoke-virtual {v5, v10}, Lcom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;->setAdSession(Lcom/iab/omid/library/mmadbridge/adsession/b;)V

    .line 21
    invoke-virtual {v9}, Lcom/mbridge/msdk/video/signal/impl/a;->o()Lcom/iab/omid/library/mmadbridge/adsession/media/a;

    move-result-object v9

    invoke-virtual {v5, v9}, Lcom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;->setVideoEvents(Lcom/iab/omid/library/mmadbridge/adsession/media/a;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v9

    .line 22
    :try_start_2
    invoke-virtual {v9}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    :goto_1
    invoke-virtual {v5, v3}, Lcom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;->setCampaign(Lcom/mbridge/msdk/foundation/entity/CampaignEx;)V

    .line 24
    invoke-virtual {v5, v1}, Lcom/mbridge/msdk/video/bt/module/BTBaseView;->setUnitId(Ljava/lang/String;)V

    .line 25
    invoke-virtual {v5, v6}, Lcom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;->setShowMute(I)V

    .line 26
    invoke-virtual {v5, v4}, Lcom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;->setShowTime(I)V

    .line 27
    invoke-virtual {v5, v7}, Lcom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;->setShowClose(I)V

    .line 28
    invoke-virtual {v5, v8}, Lcom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;->setOrientation(I)V

    .line 29
    invoke-virtual {v5, p2}, Lcom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;->setProgressBarState(I)V

    .line 30
    move-object p2, p1

    check-cast p2, Lcom/mbridge/msdk/mbsignalcommon/windvane/a;

    .line 31
    iget-object p2, p2, Lcom/mbridge/msdk/mbsignalcommon/windvane/a;->b:Lcom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

    if-eqz p2, :cond_2

    .line 32
    invoke-virtual {p2}, Lcom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;->getRid()Ljava/lang/String;

    move-result-object v2

    .line 33
    invoke-virtual {v5, p2}, Lcom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;->setCreateWebView(Landroid/webkit/WebView;)V

    .line 34
    :cond_2
    invoke-virtual {p0, v1, v2}, Lcom/mbridge/msdk/video/bt/component/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/util/LinkedHashMap;

    move-result-object p2

    .line 35
    invoke-virtual {p0}, Lcom/mbridge/msdk/video/bt/component/a;->b()Ljava/lang/String;

    move-result-object v1

    .line 36
    sget-object v4, Lcom/mbridge/msdk/video/bt/component/a;->b:Ljava/util/LinkedHashMap;

    invoke-virtual {v4, v1, v2}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    invoke-virtual {v5, v1}, Lcom/mbridge/msdk/video/bt/module/BTBaseView;->setInstanceId(Ljava/lang/String;)V

    .line 38
    invoke-virtual {p2, v1, v5}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    invoke-virtual {v5}, Lcom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;->preLoadData()V

    if-nez v3, :cond_3

    .line 40
    const-string p2, "campaign is null"

    invoke-virtual {p0, p1, p2}, Lcom/mbridge/msdk/video/bt/component/a;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    const-string p2, "createPlayerView failed"

    invoke-static {v0, p2}, Lcom/mbridge/msdk/foundation/tools/o0;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 42
    :cond_3
    invoke-virtual {p0, p1, v1}, Lcom/mbridge/msdk/video/bt/component/a;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "createPlayerView instanceId = "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/mbridge/msdk/foundation/tools/o0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    :goto_2
    invoke-static {}, Lcom/mbridge/msdk/video/bt/component/b;->a()Lcom/mbridge/msdk/video/bt/component/b;

    move-result-object p2

    invoke-virtual {p2, v1, v5}, Lcom/mbridge/msdk/video/bt/component/b;->a(Ljava/lang/String;Lcom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;)V

    goto :goto_5

    .line 45
    :cond_4
    :goto_3
    const-string p2, "unitId or data is empty"

    invoke-virtual {p0, p1, p2}, Lcom/mbridge/msdk/video/bt/component/a;->a(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-void

    .line 46
    :goto_4
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcom/mbridge/msdk/video/bt/component/a;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "createPlayerView failed\uff1a"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/mbridge/msdk/foundation/tools/o0;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_5
    return-void
.end method

.method public h(Ljava/lang/Object;Lorg/json/JSONObject;)V
    .locals 13

    const-string v0, "OperateViews"

    .line 2
    :try_start_0
    const-string v1, "unitId"

    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3
    const-string v2, "data"

    invoke-virtual {p2, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p2

    if-eqz p2, :cond_8

    .line 4
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_2

    .line 5
    :cond_0
    const-string v2, "mute"

    invoke-virtual {p2, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    .line 6
    const-string v3, ""

    .line 7
    const-string v4, "campaign"

    invoke-virtual {p2, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    .line 8
    invoke-static {v4}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->parseCampaignWithBackData(Lorg/json/JSONObject;)Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 9
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 10
    invoke-virtual {v4, v1}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->setCampaignUnitId(Ljava/lang/String;)V

    .line 11
    invoke-virtual {v4}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getRequestId()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :catchall_0
    move-exception p2

    goto/16 :goto_3

    .line 12
    :cond_1
    :goto_0
    const-string v5, "unitSetting"

    invoke-virtual {p2, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    .line 13
    invoke-static {v5}, Lcom/mbridge/msdk/videocommon/setting/c;->a(Lorg/json/JSONObject;)Lcom/mbridge/msdk/videocommon/setting/c;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 14
    invoke-virtual {v5, v1}, Lcom/mbridge/msdk/videocommon/setting/c;->h(Ljava/lang/String;)V

    .line 15
    :cond_2
    const-string v6, "userId"

    invoke-virtual {p2, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 16
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 17
    move-object v7, p1

    check-cast v7, Lcom/mbridge/msdk/mbsignalcommon/windvane/a;

    .line 18
    iget-object v7, v7, Lcom/mbridge/msdk/mbsignalcommon/windvane/a;->b:Lcom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

    if-eqz v7, :cond_3

    .line 19
    invoke-virtual {v7}, Lcom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;->getRid()Ljava/lang/String;

    move-result-object v3

    .line 20
    :cond_3
    invoke-virtual {p0, v1, v3}, Lcom/mbridge/msdk/video/bt/component/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/util/LinkedHashMap;

    move-result-object v7

    .line 21
    invoke-virtual {p0}, Lcom/mbridge/msdk/video/bt/component/a;->b()Ljava/lang/String;

    move-result-object v8

    .line 22
    sget-object v9, Lcom/mbridge/msdk/video/bt/component/a;->b:Ljava/util/LinkedHashMap;

    invoke-virtual {v9, v8, v3}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    new-instance v3, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;

    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/c;->m()Lcom/mbridge/msdk/foundation/controller/c;

    move-result-object v9

    invoke-virtual {v9}, Lcom/mbridge/msdk/foundation/controller/a;->d()Landroid/content/Context;

    move-result-object v9

    invoke-direct {v3, v9}, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;-><init>(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    :try_start_1
    move-object v9, p1

    check-cast v9, Lcom/mbridge/msdk/mbsignalcommon/windvane/a;

    iget-object v9, v9, Lcom/mbridge/msdk/mbsignalcommon/windvane/a;->b:Lcom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

    invoke-virtual {v9}, Lcom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;->getObject()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/mbridge/msdk/video/signal/impl/k;

    .line 25
    invoke-virtual {v9}, Lcom/mbridge/msdk/video/signal/impl/a;->j()Lcom/iab/omid/library/mmadbridge/adsession/a;

    move-result-object v10

    invoke-virtual {v3, v10}, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->setAdEvents(Lcom/iab/omid/library/mmadbridge/adsession/a;)V

    .line 26
    invoke-virtual {v9}, Lcom/mbridge/msdk/video/signal/impl/a;->k()Lcom/iab/omid/library/mmadbridge/adsession/b;

    move-result-object v10

    invoke-virtual {v3, v10}, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->setAdSession(Lcom/iab/omid/library/mmadbridge/adsession/b;)V

    .line 27
    invoke-virtual {v9}, Lcom/mbridge/msdk/video/signal/impl/a;->o()Lcom/iab/omid/library/mmadbridge/adsession/media/a;

    move-result-object v9

    invoke-virtual {v3, v9}, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->setVideoEvents(Lcom/iab/omid/library/mmadbridge/adsession/media/a;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v9

    .line 28
    :try_start_2
    invoke-virtual {v9}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    :goto_1
    invoke-virtual {v3, v8}, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->setInstanceId(Ljava/lang/String;)V

    .line 30
    invoke-virtual {v3, v1}, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->setUnitId(Ljava/lang/String;)V

    .line 31
    invoke-virtual {v3, v4}, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->setCampaign(Lcom/mbridge/msdk/foundation/entity/CampaignEx;)V

    .line 32
    invoke-virtual {v3, v5}, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->setRewardUnitSetting(Lcom/mbridge/msdk/videocommon/setting/c;)V

    const/4 v9, 0x1

    .line 33
    invoke-virtual {v3, v9}, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->setBigOffer(Z)V

    .line 34
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_4

    .line 35
    invoke-virtual {v3, v6}, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->setUserId(Ljava/lang/String;)V

    .line 36
    :cond_4
    const-string v6, "reward"

    invoke-virtual {p2, v6}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    if-eqz v6, :cond_6

    .line 37
    const-string v9, "id"

    invoke-virtual {v6, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 38
    new-instance v10, Lcom/mbridge/msdk/videocommon/entity/c;

    const-string v11, "name"

    invoke-virtual {v6, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v12, "amount"

    invoke-virtual {v6, v12}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v6

    invoke-direct {v10, v11, v6}, Lcom/mbridge/msdk/videocommon/entity/c;-><init>(Ljava/lang/String;I)V

    .line 39
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 40
    invoke-virtual {v3, v9}, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->setRewardId(Ljava/lang/String;)V

    .line 41
    :cond_5
    invoke-virtual {v10}, Lcom/mbridge/msdk/videocommon/entity/c;->c()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_6

    .line 42
    invoke-virtual {v3, v10}, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->setReward(Lcom/mbridge/msdk/videocommon/entity/c;)V

    .line 43
    :cond_6
    const-string v6, "extra"

    invoke-virtual {p2, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 44
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_7

    .line 45
    invoke-virtual {v3, p2}, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->setDeveloperExtraData(Ljava/lang/String;)V

    .line 46
    :cond_7
    invoke-virtual {v3, v2}, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->setMute(I)V

    .line 47
    invoke-virtual {v7, v8, v3}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    sget-object p2, Lcom/mbridge/msdk/video/bt/component/a;->e:Ljava/util/LinkedHashMap;

    invoke-virtual {p2, v8, v1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    sget-object p2, Lcom/mbridge/msdk/video/bt/component/a;->c:Ljava/util/LinkedHashMap;

    invoke-virtual {p2, v8, v4}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    sget-object p2, Lcom/mbridge/msdk/video/bt/component/a;->d:Ljava/util/LinkedHashMap;

    invoke-virtual {p2, v8, v5}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    invoke-virtual {p0, p1, v8}, Lcom/mbridge/msdk/video/bt/component/a;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "createSubPlayTemplateView instanceId = "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/mbridge/msdk/foundation/tools/o0;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 53
    :cond_8
    :goto_2
    const-string p2, "unitId or data is empty"

    invoke-virtual {p0, p1, p2}, Lcom/mbridge/msdk/video/bt/component/a;->a(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-void

    .line 54
    :goto_3
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcom/mbridge/msdk/video/bt/component/a;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "createSubPlayTemplateView failed\uff1a"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/mbridge/msdk/foundation/tools/o0;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_4
    return-void
.end method

.method public h(Ljava/lang/String;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/mbridge/msdk/video/bt/component/a;->g:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/AbstractMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public i(Ljava/lang/Object;Lorg/json/JSONObject;)V
    .locals 8

    .line 1
    :try_start_0
    const-string v0, "unitId"

    .line 2
    .line 3
    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v4

    .line 7
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    const-string p2, "unitId is empty"

    .line 14
    .line 15
    invoke-virtual {p0, p1, p2}, Lcom/mbridge/msdk/video/bt/component/a;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :catchall_0
    move-exception p2

    .line 20
    goto/16 :goto_1

    .line 21
    .line 22
    :cond_0
    const-string v0, "data"

    .line 23
    .line 24
    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 25
    .line 26
    .line 27
    move-result-object p2

    .line 28
    const-string v0, "delay"

    .line 29
    .line 30
    const/4 v1, 0x0

    .line 31
    invoke-virtual {p2, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    const-string v2, "fileURL"

    .line 36
    .line 37
    invoke-virtual {p2, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    const-string v2, "filePath"

    .line 41
    .line 42
    invoke-virtual {p2, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    const-string v2, "html"

    .line 46
    .line 47
    invoke-virtual {p2, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    const-string v2, "rect"

    .line 51
    .line 52
    invoke-virtual {p2, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 53
    .line 54
    .line 55
    move-result-object p2

    .line 56
    new-instance v2, Landroid/graphics/Rect;

    .line 57
    .line 58
    const/16 v3, -0x3e7

    .line 59
    .line 60
    invoke-direct {v2, v3, v3, v3, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 61
    .line 62
    .line 63
    if-eqz p2, :cond_1

    .line 64
    .line 65
    new-instance v1, Landroid/graphics/Rect;

    .line 66
    .line 67
    const-string v2, "left"

    .line 68
    .line 69
    invoke-virtual {p2, v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 70
    .line 71
    .line 72
    move-result v2

    .line 73
    const-string v5, "top"

    .line 74
    .line 75
    invoke-virtual {p2, v5, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 76
    .line 77
    .line 78
    move-result v5

    .line 79
    const-string v6, "right"

    .line 80
    .line 81
    invoke-virtual {p2, v6, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 82
    .line 83
    .line 84
    move-result v6

    .line 85
    const-string v7, "bottom"

    .line 86
    .line 87
    invoke-virtual {p2, v7, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 88
    .line 89
    .line 90
    move-result v3

    .line 91
    invoke-direct {v1, v2, v5, v6, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 92
    .line 93
    .line 94
    const-string v2, "width"

    .line 95
    .line 96
    invoke-virtual {p2, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    .line 97
    .line 98
    .line 99
    move-result v2

    .line 100
    const-string v3, "height"

    .line 101
    .line 102
    invoke-virtual {p2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    .line 103
    .line 104
    .line 105
    move-result p2

    .line 106
    move v7, p2

    .line 107
    move-object v5, v1

    .line 108
    move v6, v2

    .line 109
    goto :goto_0

    .line 110
    :cond_1
    move v6, v1

    .line 111
    move v7, v6

    .line 112
    move-object v5, v2

    .line 113
    :goto_0
    new-instance p2, Lcom/mbridge/msdk/video/bt/component/a$a;

    .line 114
    .line 115
    move-object v1, p2

    .line 116
    move-object v2, p0

    .line 117
    move-object v3, p1

    .line 118
    invoke-direct/range {v1 .. v7}, Lcom/mbridge/msdk/video/bt/component/a$a;-><init>(Lcom/mbridge/msdk/video/bt/component/a;Ljava/lang/Object;Ljava/lang/String;Landroid/graphics/Rect;II)V

    .line 119
    .line 120
    .line 121
    new-instance v1, Landroid/os/Handler;

    .line 122
    .line 123
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 124
    .line 125
    .line 126
    move-result-object v2

    .line 127
    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 128
    .line 129
    .line 130
    int-to-long v2, v0

    .line 131
    invoke-virtual {v1, p2, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 132
    .line 133
    .line 134
    goto :goto_2

    .line 135
    :goto_1
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object v0

    .line 139
    invoke-virtual {p0, p1, v0}, Lcom/mbridge/msdk/video/bt/component/a;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 140
    .line 141
    .line 142
    new-instance p1, Ljava/lang/StringBuilder;

    .line 143
    .line 144
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 145
    .line 146
    .line 147
    const-string v0, "create view failed\uff1a"

    .line 148
    .line 149
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    .line 151
    .line 152
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object p2

    .line 156
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    .line 158
    .line 159
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object p1

    .line 163
    const-string p2, "OperateViews"

    .line 164
    .line 165
    invoke-static {p2, p1}, Lcom/mbridge/msdk/foundation/tools/o0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    .line 167
    .line 168
    :goto_2
    return-void
.end method

.method public j(Ljava/lang/Object;Lorg/json/JSONObject;)V
    .locals 11

    .line 1
    :try_start_0
    const-string v0, "unitId"

    .line 2
    .line 3
    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v4

    .line 7
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    const-string p2, "unitId is empty"

    .line 14
    .line 15
    invoke-virtual {p0, p1, p2}, Lcom/mbridge/msdk/video/bt/component/a;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :catchall_0
    move-exception p2

    .line 20
    goto/16 :goto_1

    .line 21
    .line 22
    :cond_0
    const-string v0, "data"

    .line 23
    .line 24
    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 25
    .line 26
    .line 27
    move-result-object p2

    .line 28
    const-string v0, "delay"

    .line 29
    .line 30
    const/4 v1, 0x0

    .line 31
    invoke-virtual {p2, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    const-string v2, "fileURL"

    .line 36
    .line 37
    invoke-virtual {p2, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v5

    .line 41
    const-string v2, "filePath"

    .line 42
    .line 43
    invoke-virtual {p2, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v6

    .line 47
    const-string v2, "html"

    .line 48
    .line 49
    invoke-virtual {p2, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v7

    .line 53
    const-string v2, "rect"

    .line 54
    .line 55
    invoke-virtual {p2, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 56
    .line 57
    .line 58
    move-result-object p2

    .line 59
    new-instance v2, Landroid/graphics/Rect;

    .line 60
    .line 61
    const/16 v3, -0x3e7

    .line 62
    .line 63
    invoke-direct {v2, v3, v3, v3, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 64
    .line 65
    .line 66
    if-eqz p2, :cond_1

    .line 67
    .line 68
    new-instance v1, Landroid/graphics/Rect;

    .line 69
    .line 70
    const-string v2, "left"

    .line 71
    .line 72
    invoke-virtual {p2, v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 73
    .line 74
    .line 75
    move-result v2

    .line 76
    const-string v8, "top"

    .line 77
    .line 78
    invoke-virtual {p2, v8, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 79
    .line 80
    .line 81
    move-result v8

    .line 82
    const-string v9, "right"

    .line 83
    .line 84
    invoke-virtual {p2, v9, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 85
    .line 86
    .line 87
    move-result v9

    .line 88
    const-string v10, "bottom"

    .line 89
    .line 90
    invoke-virtual {p2, v10, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 91
    .line 92
    .line 93
    move-result v3

    .line 94
    invoke-direct {v1, v2, v8, v9, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 95
    .line 96
    .line 97
    const-string v2, "width"

    .line 98
    .line 99
    invoke-virtual {p2, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    .line 100
    .line 101
    .line 102
    move-result v2

    .line 103
    const-string v3, "height"

    .line 104
    .line 105
    invoke-virtual {p2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    .line 106
    .line 107
    .line 108
    move-result p2

    .line 109
    move v10, p2

    .line 110
    move-object v8, v1

    .line 111
    move v9, v2

    .line 112
    goto :goto_0

    .line 113
    :cond_1
    move v9, v1

    .line 114
    move v10, v9

    .line 115
    move-object v8, v2

    .line 116
    :goto_0
    new-instance p2, Lcom/mbridge/msdk/video/bt/component/a$b;

    .line 117
    .line 118
    move-object v1, p2

    .line 119
    move-object v2, p0

    .line 120
    move-object v3, p1

    .line 121
    invoke-direct/range {v1 .. v10}, Lcom/mbridge/msdk/video/bt/component/a$b;-><init>(Lcom/mbridge/msdk/video/bt/component/a;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Rect;II)V

    .line 122
    .line 123
    .line 124
    new-instance v1, Landroid/os/Handler;

    .line 125
    .line 126
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 127
    .line 128
    .line 129
    move-result-object v2

    .line 130
    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 131
    .line 132
    .line 133
    int-to-long v2, v0

    .line 134
    invoke-virtual {v1, p2, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 135
    .line 136
    .line 137
    goto :goto_2

    .line 138
    :goto_1
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object v0

    .line 142
    invoke-virtual {p0, p1, v0}, Lcom/mbridge/msdk/video/bt/component/a;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 143
    .line 144
    .line 145
    new-instance p1, Ljava/lang/StringBuilder;

    .line 146
    .line 147
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 148
    .line 149
    .line 150
    const-string v0, "createWebview failed\uff1a"

    .line 151
    .line 152
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    .line 154
    .line 155
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object p2

    .line 159
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    .line 161
    .line 162
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object p1

    .line 166
    const-string p2, "OperateViews"

    .line 167
    .line 168
    invoke-static {p2, p1}, Lcom/mbridge/msdk/foundation/tools/o0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    .line 170
    .line 171
    :goto_2
    return-void
.end method

.method public k(Ljava/lang/Object;Lorg/json/JSONObject;)V
    .locals 9

    .line 1
    const-string v0, "destroyComponent failed"

    .line 2
    .line 3
    const-string v1, "OperateViews"

    .line 4
    .line 5
    :try_start_0
    const-string v2, "unitId"

    .line 6
    .line 7
    invoke-virtual {p2, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    const-string v3, "id"

    .line 12
    .line 13
    invoke-virtual {p2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    const-string v4, "data"

    .line 18
    .line 19
    invoke-virtual {p2, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 20
    .line 21
    .line 22
    move-result-object p2

    .line 23
    if-eqz p2, :cond_b

    .line 24
    .line 25
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 26
    .line 27
    .line 28
    move-result p2

    .line 29
    if-eqz p2, :cond_0

    .line 30
    .line 31
    goto/16 :goto_3

    .line 32
    .line 33
    :cond_0
    invoke-virtual {p0, v3}, Lcom/mbridge/msdk/video/bt/component/a;->e(Ljava/lang/String;)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p2

    .line 37
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 38
    .line 39
    .line 40
    move-result v4

    .line 41
    if-eqz v4, :cond_1

    .line 42
    .line 43
    move-object v4, p1

    .line 44
    check-cast v4, Lcom/mbridge/msdk/mbsignalcommon/windvane/a;

    .line 45
    .line 46
    iget-object v4, v4, Lcom/mbridge/msdk/mbsignalcommon/windvane/a;->b:Lcom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

    .line 47
    .line 48
    if-eqz v4, :cond_1

    .line 49
    .line 50
    invoke-virtual {v4}, Lcom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;->getRid()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p2

    .line 54
    goto :goto_0

    .line 55
    :catchall_0
    move-exception p2

    .line 56
    goto/16 :goto_4

    .line 57
    .line 58
    :cond_1
    :goto_0
    invoke-virtual {p0, v2, p2}, Lcom/mbridge/msdk/video/bt/component/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/util/LinkedHashMap;

    .line 59
    .line 60
    .line 61
    move-result-object p2

    .line 62
    if-eqz p2, :cond_a

    .line 63
    .line 64
    invoke-virtual {p2, v3}, Ljava/util/AbstractMap;->containsKey(Ljava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    move-result v2

    .line 68
    if-eqz v2, :cond_a

    .line 69
    .line 70
    invoke-virtual {p2, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object v2

    .line 74
    check-cast v2, Landroid/view/View;

    .line 75
    .line 76
    invoke-virtual {p2, v3}, Ljava/util/AbstractMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    if-eqz v2, :cond_6

    .line 80
    .line 81
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 82
    .line 83
    .line 84
    move-result-object v4

    .line 85
    if-eqz v4, :cond_6

    .line 86
    .line 87
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 88
    .line 89
    .line 90
    move-result-object v4

    .line 91
    check-cast v4, Landroid/view/ViewGroup;

    .line 92
    .line 93
    if-eqz v4, :cond_2

    .line 94
    .line 95
    invoke-virtual {v4, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 96
    .line 97
    .line 98
    :cond_2
    instance-of v4, v2, Landroid/view/ViewGroup;

    .line 99
    .line 100
    if-eqz v4, :cond_6

    .line 101
    .line 102
    move-object v4, v2

    .line 103
    check-cast v4, Landroid/view/ViewGroup;

    .line 104
    .line 105
    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    .line 106
    .line 107
    .line 108
    move-result v5

    .line 109
    if-lez v5, :cond_6

    .line 110
    .line 111
    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    .line 112
    .line 113
    .line 114
    move-result v5

    .line 115
    const/4 v6, 0x0

    .line 116
    :goto_1
    if-ge v6, v5, :cond_6

    .line 117
    .line 118
    invoke-virtual {v4, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 119
    .line 120
    .line 121
    move-result-object v7

    .line 122
    instance-of v8, v7, Lcom/mbridge/msdk/video/bt/module/MBridgeBTWebView;

    .line 123
    .line 124
    if-eqz v8, :cond_3

    .line 125
    .line 126
    move-object v8, v7

    .line 127
    check-cast v8, Lcom/mbridge/msdk/video/bt/module/MBridgeBTWebView;

    .line 128
    .line 129
    invoke-virtual {v8}, Lcom/mbridge/msdk/video/bt/module/BTBaseView;->getInstanceId()Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object v8

    .line 133
    invoke-virtual {p2, v8}, Ljava/util/AbstractMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    .line 135
    .line 136
    check-cast v7, Lcom/mbridge/msdk/video/bt/module/MBridgeBTWebView;

    .line 137
    .line 138
    invoke-virtual {v7}, Lcom/mbridge/msdk/video/bt/module/MBridgeBTWebView;->onDestory()V

    .line 139
    .line 140
    .line 141
    goto :goto_2

    .line 142
    :cond_3
    instance-of v8, v7, Lcom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;

    .line 143
    .line 144
    if-eqz v8, :cond_4

    .line 145
    .line 146
    move-object v8, v7

    .line 147
    check-cast v8, Lcom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;

    .line 148
    .line 149
    invoke-virtual {v8}, Lcom/mbridge/msdk/video/bt/module/BTBaseView;->getInstanceId()Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object v8

    .line 153
    invoke-virtual {p2, v8}, Ljava/util/AbstractMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    .line 155
    .line 156
    check-cast v7, Lcom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;

    .line 157
    .line 158
    invoke-virtual {v7}, Lcom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;->onDestory()V

    .line 159
    .line 160
    .line 161
    goto :goto_2

    .line 162
    :cond_4
    instance-of v8, v7, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;

    .line 163
    .line 164
    if-eqz v8, :cond_5

    .line 165
    .line 166
    move-object v8, v7

    .line 167
    check-cast v8, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;

    .line 168
    .line 169
    invoke-virtual {v8}, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->getInstanceId()Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object v8

    .line 173
    invoke-virtual {p2, v8}, Ljava/util/AbstractMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    .line 175
    .line 176
    check-cast v7, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;

    .line 177
    .line 178
    invoke-virtual {v7}, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->onDestroy()V

    .line 179
    .line 180
    .line 181
    :cond_5
    :goto_2
    add-int/lit8 v6, v6, 0x1

    .line 182
    .line 183
    goto :goto_1

    .line 184
    :cond_6
    instance-of p2, v2, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;

    .line 185
    .line 186
    if-eqz p2, :cond_7

    .line 187
    .line 188
    move-object p2, v2

    .line 189
    check-cast p2, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;

    .line 190
    .line 191
    invoke-virtual {p2}, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->onDestroy()V

    .line 192
    .line 193
    .line 194
    :cond_7
    instance-of p2, v2, Lcom/mbridge/msdk/video/bt/module/MBridgeBTWebView;

    .line 195
    .line 196
    if-eqz p2, :cond_8

    .line 197
    .line 198
    move-object p2, v2

    .line 199
    check-cast p2, Lcom/mbridge/msdk/video/bt/module/MBridgeBTWebView;

    .line 200
    .line 201
    invoke-virtual {p2}, Lcom/mbridge/msdk/video/bt/module/MBridgeBTWebView;->onDestory()V

    .line 202
    .line 203
    .line 204
    :cond_8
    instance-of p2, v2, Lcom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;

    .line 205
    .line 206
    if-eqz p2, :cond_9

    .line 207
    .line 208
    check-cast v2, Lcom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;

    .line 209
    .line 210
    invoke-virtual {v2}, Lcom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;->onDestory()V

    .line 211
    .line 212
    .line 213
    :cond_9
    invoke-virtual {p0, p1, v3}, Lcom/mbridge/msdk/video/bt/component/a;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 214
    .line 215
    .line 216
    const-string p2, "onComponentDestroy"

    .line 217
    .line 218
    invoke-virtual {p0, p1, p2, v3}, Lcom/mbridge/msdk/video/bt/component/a;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    .line 220
    .line 221
    new-instance p2, Ljava/lang/StringBuilder;

    .line 222
    .line 223
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 224
    .line 225
    .line 226
    const-string v2, "destroyComponent instanceId = "

    .line 227
    .line 228
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 229
    .line 230
    .line 231
    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 232
    .line 233
    .line 234
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 235
    .line 236
    .line 237
    move-result-object p2

    .line 238
    invoke-static {v1, p2}, Lcom/mbridge/msdk/foundation/tools/o0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    .line 240
    .line 241
    goto :goto_5

    .line 242
    :cond_a
    const-string p2, "unitId or instanceId not exist"

    .line 243
    .line 244
    invoke-virtual {p0, p1, p2}, Lcom/mbridge/msdk/video/bt/component/a;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 245
    .line 246
    .line 247
    invoke-static {v1, v0}, Lcom/mbridge/msdk/foundation/tools/o0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    .line 249
    .line 250
    goto :goto_5

    .line 251
    :cond_b
    :goto_3
    const-string p2, "unidId or data is empty"

    .line 252
    .line 253
    invoke-virtual {p0, p1, p2}, Lcom/mbridge/msdk/video/bt/component/a;->a(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 254
    .line 255
    .line 256
    return-void

    .line 257
    :goto_4
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 258
    .line 259
    .line 260
    move-result-object p2

    .line 261
    invoke-virtual {p0, p1, p2}, Lcom/mbridge/msdk/video/bt/component/a;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 262
    .line 263
    .line 264
    invoke-static {v1, v0}, Lcom/mbridge/msdk/foundation/tools/o0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    .line 266
    .line 267
    :goto_5
    return-void
.end method

.method public l(Ljava/lang/Object;Lorg/json/JSONObject;)V
    .locals 2

    .line 1
    :try_start_0
    const-string v0, "unitId"

    .line 2
    .line 3
    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    const-string v0, "id"

    .line 7
    .line 8
    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    const-string v1, "data"

    .line 13
    .line 14
    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 15
    .line 16
    .line 17
    move-result-object p2

    .line 18
    if-nez p2, :cond_0

    .line 19
    .line 20
    const-string p2, "data is empty"

    .line 21
    .line 22
    invoke-virtual {p0, p1, p2}, Lcom/mbridge/msdk/video/bt/component/a;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :catchall_0
    move-exception p2

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    invoke-virtual {p0, p1, v0}, Lcom/mbridge/msdk/video/bt/component/a;->b(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    .line 30
    .line 31
    goto :goto_1

    .line 32
    :goto_0
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p2

    .line 36
    invoke-virtual {p0, p1, p2}, Lcom/mbridge/msdk/video/bt/component/a;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    :goto_1
    return-void
.end method

.method public m(Ljava/lang/Object;Lorg/json/JSONObject;)V
    .locals 19

    .line 1
    move-object/from16 v1, p1

    .line 2
    .line 3
    move-object/from16 v0, p2

    .line 4
    .line 5
    const-string v2, "resource"

    .line 6
    .line 7
    const-string v3, "type"

    .line 8
    .line 9
    const-string v4, ""

    .line 10
    .line 11
    new-instance v5, Lorg/json/JSONObject;

    .line 12
    .line 13
    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 14
    .line 15
    .line 16
    const-string v6, "message"

    .line 17
    .line 18
    const-string v7, "code"

    .line 19
    .line 20
    const/4 v8, 0x2

    .line 21
    const/4 v9, 0x1

    .line 22
    const-string v10, "OperateViews"

    .line 23
    .line 24
    if-nez v0, :cond_0

    .line 25
    .line 26
    :try_start_0
    invoke-virtual {v5, v7, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 27
    .line 28
    .line 29
    const-string v0, "params is null"

    .line 30
    .line 31
    invoke-virtual {v5, v6, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 32
    .line 33
    .line 34
    invoke-static {}, Lcom/mbridge/msdk/mbsignalcommon/windvane/f;->a()Lcom/mbridge/msdk/mbsignalcommon/windvane/f;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    invoke-static {v2, v8}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    invoke-virtual {v0, v1, v2}, Lcom/mbridge/msdk/mbsignalcommon/windvane/f;->b(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    .line 52
    .line 53
    goto :goto_0

    .line 54
    :catch_0
    move-exception v0

    .line 55
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    invoke-static {v10, v0}, Lcom/mbridge/msdk/foundation/tools/o0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    :goto_0
    return-void

    .line 63
    :cond_0
    const/4 v11, 0x0

    .line 64
    :try_start_1
    invoke-virtual {v5, v7, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v5, v6, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 71
    .line 72
    .line 73
    move-result-object v12
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_6

    .line 74
    if-eqz v12, :cond_c

    .line 75
    .line 76
    :try_start_2
    invoke-virtual {v12}, Lorg/json/JSONArray;->length()I

    .line 77
    .line 78
    .line 79
    move-result v0

    .line 80
    if-lez v0, :cond_c

    .line 81
    .line 82
    new-instance v13, Lorg/json/JSONArray;

    .line 83
    .line 84
    invoke-direct {v13}, Lorg/json/JSONArray;-><init>()V

    .line 85
    .line 86
    .line 87
    invoke-virtual {v12}, Lorg/json/JSONArray;->length()I

    .line 88
    .line 89
    .line 90
    move-result v14

    .line 91
    move v15, v11

    .line 92
    :goto_1
    if-ge v15, v14, :cond_b

    .line 93
    .line 94
    invoke-virtual {v12, v15}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    const-string v8, "ref"

    .line 99
    .line 100
    invoke-virtual {v0, v8, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v8

    .line 104
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    .line 105
    .line 106
    .line 107
    move-result v0

    .line 108
    new-instance v11, Lorg/json/JSONObject;

    .line 109
    .line 110
    invoke-direct {v11}, Lorg/json/JSONObject;-><init>()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 111
    .line 112
    .line 113
    move-object/from16 p2, v12

    .line 114
    .line 115
    const-string v12, "path"

    .line 116
    .line 117
    if-ne v0, v9, :cond_4

    .line 118
    .line 119
    :try_start_3
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 120
    .line 121
    .line 122
    move-result v16

    .line 123
    if-nez v16, :cond_4

    .line 124
    .line 125
    new-instance v0, Lorg/json/JSONObject;

    .line 126
    .line 127
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 128
    .line 129
    .line 130
    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/c;->m()Lcom/mbridge/msdk/foundation/controller/c;

    .line 131
    .line 132
    .line 133
    move-result-object v16

    .line 134
    invoke-virtual/range {v16 .. v16}, Lcom/mbridge/msdk/foundation/controller/a;->d()Landroid/content/Context;

    .line 135
    .line 136
    .line 137
    move-result-object v16

    .line 138
    invoke-static/range {v16 .. v16}, Lcom/mbridge/msdk/foundation/db/g;->a(Landroid/content/Context;)Lcom/mbridge/msdk/foundation/db/g;

    .line 139
    .line 140
    .line 141
    move-result-object v16

    .line 142
    invoke-static/range {v16 .. v16}, Lcom/mbridge/msdk/foundation/db/m;->a(Lcom/mbridge/msdk/foundation/db/f;)Lcom/mbridge/msdk/foundation/db/m;

    .line 143
    .line 144
    .line 145
    move-result-object v9

    .line 146
    invoke-virtual {v9, v8}, Lcom/mbridge/msdk/foundation/db/m;->b(Ljava/lang/String;)Lcom/mbridge/msdk/foundation/entity/l;

    .line 147
    .line 148
    .line 149
    move-result-object v9

    .line 150
    if-eqz v9, :cond_3

    .line 151
    .line 152
    move/from16 v16, v14

    .line 153
    .line 154
    const-string v14, "VideoBean not null"

    .line 155
    .line 156
    invoke-static {v10, v14}, Lcom/mbridge/msdk/foundation/tools/o0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    .line 158
    .line 159
    const/4 v14, 0x1

    .line 160
    invoke-virtual {v0, v3, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 161
    .line 162
    .line 163
    const-string v14, "videoDataLength"
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 164
    .line 165
    move-object/from16 v17, v6

    .line 166
    .line 167
    :try_start_4
    invoke-virtual {v9}, Lcom/mbridge/msdk/foundation/entity/l;->d()I

    .line 168
    .line 169
    .line 170
    move-result v6

    .line 171
    invoke-virtual {v0, v14, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 172
    .line 173
    .line 174
    invoke-virtual {v9}, Lcom/mbridge/msdk/foundation/entity/l;->e()Ljava/lang/String;

    .line 175
    .line 176
    .line 177
    move-result-object v6

    .line 178
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 179
    .line 180
    .line 181
    move-result v14
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 182
    move-object/from16 v18, v7

    .line 183
    .line 184
    const-string v7, "path4Web"

    .line 185
    .line 186
    if-eqz v14, :cond_1

    .line 187
    .line 188
    :try_start_5
    const-string v6, "VideoPath null"

    .line 189
    .line 190
    invoke-static {v10, v6}, Lcom/mbridge/msdk/foundation/tools/o0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    .line 192
    .line 193
    invoke-virtual {v0, v12, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 194
    .line 195
    .line 196
    invoke-virtual {v0, v7, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 197
    .line 198
    .line 199
    goto :goto_4

    .line 200
    :catchall_0
    move-exception v0

    .line 201
    :goto_2
    move-object/from16 v3, v17

    .line 202
    .line 203
    move-object/from16 v2, v18

    .line 204
    .line 205
    :goto_3
    const/4 v4, 0x1

    .line 206
    goto/16 :goto_c

    .line 207
    .line 208
    :cond_1
    const-string v14, "VideoPath not null"

    .line 209
    .line 210
    invoke-static {v10, v14}, Lcom/mbridge/msdk/foundation/tools/o0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    .line 212
    .line 213
    invoke-virtual {v0, v12, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 214
    .line 215
    .line 216
    invoke-virtual {v0, v7, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 217
    .line 218
    .line 219
    :goto_4
    invoke-virtual {v9}, Lcom/mbridge/msdk/foundation/entity/l;->b()I

    .line 220
    .line 221
    .line 222
    move-result v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 223
    const/4 v7, 0x5

    .line 224
    const-string v9, "downloaded"

    .line 225
    .line 226
    if-ne v6, v7, :cond_2

    .line 227
    .line 228
    const/4 v6, 0x1

    .line 229
    :try_start_6
    invoke-virtual {v0, v9, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 230
    .line 231
    .line 232
    const/4 v6, 0x0

    .line 233
    goto :goto_5

    .line 234
    :cond_2
    const/4 v6, 0x0

    .line 235
    invoke-virtual {v0, v9, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 236
    .line 237
    .line 238
    :goto_5
    invoke-virtual {v11, v8, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 239
    .line 240
    .line 241
    invoke-virtual {v13, v11}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 242
    .line 243
    .line 244
    goto/16 :goto_a

    .line 245
    .line 246
    :catchall_1
    move-exception v0

    .line 247
    :goto_6
    move-object/from16 v18, v7

    .line 248
    .line 249
    goto :goto_2

    .line 250
    :catchall_2
    move-exception v0

    .line 251
    move-object/from16 v17, v6

    .line 252
    .line 253
    goto :goto_6

    .line 254
    :cond_3
    move-object/from16 v17, v6

    .line 255
    .line 256
    move-object/from16 v18, v7

    .line 257
    .line 258
    move/from16 v16, v14

    .line 259
    .line 260
    const/4 v6, 0x0

    .line 261
    const-string v0, "VideoBean null"

    .line 262
    .line 263
    invoke-static {v10, v0}, Lcom/mbridge/msdk/foundation/tools/o0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    .line 265
    .line 266
    goto/16 :goto_a

    .line 267
    .line 268
    :cond_4
    move-object/from16 v17, v6

    .line 269
    .line 270
    move-object/from16 v18, v7

    .line 271
    .line 272
    move/from16 v16, v14

    .line 273
    .line 274
    const/4 v6, 0x0

    .line 275
    const/4 v7, 0x2

    .line 276
    if-ne v0, v7, :cond_6

    .line 277
    .line 278
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 279
    .line 280
    .line 281
    move-result v9

    .line 282
    if-nez v9, :cond_6

    .line 283
    .line 284
    new-instance v0, Lorg/json/JSONObject;

    .line 285
    .line 286
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 287
    .line 288
    .line 289
    invoke-virtual {v0, v3, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 290
    .line 291
    .line 292
    invoke-static {}, Lcom/mbridge/msdk/foundation/download/download/H5DownLoadManager;->getInstance()Lcom/mbridge/msdk/foundation/download/download/H5DownLoadManager;

    .line 293
    .line 294
    .line 295
    move-result-object v7

    .line 296
    invoke-virtual {v7, v8}, Lcom/mbridge/msdk/foundation/download/download/H5DownLoadManager;->getH5ResAddress(Ljava/lang/String;)Ljava/lang/String;

    .line 297
    .line 298
    .line 299
    move-result-object v7

    .line 300
    if-nez v7, :cond_5

    .line 301
    .line 302
    move-object v7, v4

    .line 303
    goto :goto_7

    .line 304
    :cond_5
    invoke-static {}, Lcom/mbridge/msdk/foundation/download/download/H5DownLoadManager;->getInstance()Lcom/mbridge/msdk/foundation/download/download/H5DownLoadManager;

    .line 305
    .line 306
    .line 307
    move-result-object v7

    .line 308
    invoke-virtual {v7, v8}, Lcom/mbridge/msdk/foundation/download/download/H5DownLoadManager;->getH5ResAddress(Ljava/lang/String;)Ljava/lang/String;

    .line 309
    .line 310
    .line 311
    move-result-object v7

    .line 312
    :goto_7
    invoke-virtual {v0, v12, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 313
    .line 314
    .line 315
    invoke-virtual {v11, v8, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 316
    .line 317
    .line 318
    invoke-virtual {v13, v11}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 319
    .line 320
    .line 321
    goto/16 :goto_a

    .line 322
    .line 323
    :cond_6
    const/4 v7, 0x3

    .line 324
    if-ne v0, v7, :cond_8

    .line 325
    .line 326
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 327
    .line 328
    .line 329
    move-result v9
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 330
    if-nez v9, :cond_8

    .line 331
    .line 332
    :try_start_7
    new-instance v0, Ljava/io/File;

    .line 333
    .line 334
    invoke-direct {v0, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 335
    .line 336
    .line 337
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 338
    .line 339
    .line 340
    move-result v9

    .line 341
    if-eqz v9, :cond_7

    .line 342
    .line 343
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    .line 344
    .line 345
    .line 346
    move-result v9

    .line 347
    if-eqz v9, :cond_7

    .line 348
    .line 349
    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    .line 350
    .line 351
    .line 352
    move-result v0

    .line 353
    if-eqz v0, :cond_7

    .line 354
    .line 355
    new-instance v0, Ljava/lang/StringBuilder;

    .line 356
    .line 357
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 358
    .line 359
    .line 360
    const-string v9, "getFileInfo Mraid file "

    .line 361
    .line 362
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 363
    .line 364
    .line 365
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 366
    .line 367
    .line 368
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 369
    .line 370
    .line 371
    move-result-object v0

    .line 372
    invoke-static {v10, v0}, Lcom/mbridge/msdk/foundation/tools/o0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 373
    .line 374
    .line 375
    new-instance v0, Ljava/lang/StringBuilder;

    .line 376
    .line 377
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 378
    .line 379
    .line 380
    const-string v9, "file:////"

    .line 381
    .line 382
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 383
    .line 384
    .line 385
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 386
    .line 387
    .line 388
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 389
    .line 390
    .line 391
    move-result-object v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 392
    goto :goto_8

    .line 393
    :catchall_3
    move-exception v0

    .line 394
    :try_start_8
    sget-boolean v9, Lcom/mbridge/msdk/MBridgeConstans;->DEBUG:Z

    .line 395
    .line 396
    if-eqz v9, :cond_7

    .line 397
    .line 398
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 399
    .line 400
    .line 401
    :cond_7
    move-object v0, v4

    .line 402
    :goto_8
    new-instance v9, Lorg/json/JSONObject;

    .line 403
    .line 404
    invoke-direct {v9}, Lorg/json/JSONObject;-><init>()V

    .line 405
    .line 406
    .line 407
    invoke-virtual {v9, v3, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 408
    .line 409
    .line 410
    invoke-virtual {v9, v12, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 411
    .line 412
    .line 413
    invoke-virtual {v11, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 414
    .line 415
    .line 416
    invoke-virtual {v13, v11}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 417
    .line 418
    .line 419
    goto :goto_a

    .line 420
    :cond_8
    const/4 v7, 0x4

    .line 421
    if-ne v0, v7, :cond_a

    .line 422
    .line 423
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 424
    .line 425
    .line 426
    move-result v0

    .line 427
    if-nez v0, :cond_a

    .line 428
    .line 429
    new-instance v0, Lorg/json/JSONObject;

    .line 430
    .line 431
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 432
    .line 433
    .line 434
    invoke-virtual {v0, v3, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 435
    .line 436
    .line 437
    invoke-static {v8}, Lcom/mbridge/msdk/foundation/tools/s0;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 438
    .line 439
    .line 440
    move-result-object v7

    .line 441
    if-nez v7, :cond_9

    .line 442
    .line 443
    move-object v7, v4

    .line 444
    goto :goto_9

    .line 445
    :cond_9
    invoke-static {v8}, Lcom/mbridge/msdk/foundation/tools/s0;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 446
    .line 447
    .line 448
    move-result-object v7

    .line 449
    :goto_9
    invoke-virtual {v0, v12, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 450
    .line 451
    .line 452
    invoke-virtual {v11, v8, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 453
    .line 454
    .line 455
    invoke-virtual {v13, v11}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 456
    .line 457
    .line 458
    :cond_a
    :goto_a
    add-int/lit8 v15, v15, 0x1

    .line 459
    .line 460
    move-object/from16 v12, p2

    .line 461
    .line 462
    move v11, v6

    .line 463
    move/from16 v14, v16

    .line 464
    .line 465
    move-object/from16 v6, v17

    .line 466
    .line 467
    move-object/from16 v7, v18

    .line 468
    .line 469
    const/4 v8, 0x2

    .line 470
    const/4 v9, 0x1

    .line 471
    goto/16 :goto_1

    .line 472
    .line 473
    :cond_b
    move-object/from16 v17, v6

    .line 474
    .line 475
    move-object/from16 v18, v7

    .line 476
    .line 477
    invoke-virtual {v5, v2, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 478
    .line 479
    .line 480
    invoke-static {}, Lcom/mbridge/msdk/mbsignalcommon/windvane/f;->a()Lcom/mbridge/msdk/mbsignalcommon/windvane/f;

    .line 481
    .line 482
    .line 483
    move-result-object v0

    .line 484
    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 485
    .line 486
    .line 487
    move-result-object v2

    .line 488
    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    .line 489
    .line 490
    .line 491
    move-result-object v2

    .line 492
    const/4 v3, 0x2

    .line 493
    invoke-static {v2, v3}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    .line 494
    .line 495
    .line 496
    move-result-object v2

    .line 497
    invoke-virtual {v0, v1, v2}, Lcom/mbridge/msdk/mbsignalcommon/windvane/f;->b(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 498
    .line 499
    .line 500
    goto :goto_d

    .line 501
    :cond_c
    move-object/from16 v17, v6

    .line 502
    .line 503
    move-object v2, v7

    .line 504
    move v3, v9

    .line 505
    :try_start_9
    invoke-virtual {v5, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 506
    .line 507
    .line 508
    const-string v0, "resource is null"
    :try_end_9
    .catch Lorg/json/JSONException; {:try_start_9 .. :try_end_9} :catch_2
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    .line 509
    .line 510
    move-object/from16 v3, v17

    .line 511
    .line 512
    :try_start_a
    invoke-virtual {v5, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 513
    .line 514
    .line 515
    invoke-static {}, Lcom/mbridge/msdk/mbsignalcommon/windvane/f;->a()Lcom/mbridge/msdk/mbsignalcommon/windvane/f;

    .line 516
    .line 517
    .line 518
    move-result-object v0

    .line 519
    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 520
    .line 521
    .line 522
    move-result-object v4

    .line 523
    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    .line 524
    .line 525
    .line 526
    move-result-object v4

    .line 527
    const/4 v6, 0x2

    .line 528
    invoke-static {v4, v6}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    .line 529
    .line 530
    .line 531
    move-result-object v4

    .line 532
    invoke-virtual {v0, v1, v4}, Lcom/mbridge/msdk/mbsignalcommon/windvane/f;->b(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_a
    .catch Lorg/json/JSONException; {:try_start_a .. :try_end_a} :catch_1
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    .line 533
    .line 534
    .line 535
    goto :goto_d

    .line 536
    :catchall_4
    move-exception v0

    .line 537
    goto/16 :goto_3

    .line 538
    .line 539
    :catch_1
    move-exception v0

    .line 540
    goto :goto_b

    .line 541
    :catchall_5
    move-exception v0

    .line 542
    move-object/from16 v3, v17

    .line 543
    .line 544
    goto/16 :goto_3

    .line 545
    .line 546
    :catch_2
    move-exception v0

    .line 547
    move-object/from16 v3, v17

    .line 548
    .line 549
    :goto_b
    :try_start_b
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 550
    .line 551
    .line 552
    move-result-object v0

    .line 553
    invoke-static {v10, v0}, Lcom/mbridge/msdk/foundation/tools/o0;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    .line 554
    .line 555
    .line 556
    goto :goto_d

    .line 557
    :catchall_6
    move-exception v0

    .line 558
    move-object v3, v6

    .line 559
    move-object v2, v7

    .line 560
    goto/16 :goto_3

    .line 561
    .line 562
    :goto_c
    :try_start_c
    invoke-virtual {v5, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 563
    .line 564
    .line 565
    invoke-virtual {v0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    .line 566
    .line 567
    .line 568
    move-result-object v0

    .line 569
    invoke-virtual {v5, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 570
    .line 571
    .line 572
    invoke-static {}, Lcom/mbridge/msdk/mbsignalcommon/windvane/f;->a()Lcom/mbridge/msdk/mbsignalcommon/windvane/f;

    .line 573
    .line 574
    .line 575
    move-result-object v0

    .line 576
    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 577
    .line 578
    .line 579
    move-result-object v2

    .line 580
    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    .line 581
    .line 582
    .line 583
    move-result-object v2

    .line 584
    const/4 v3, 0x2

    .line 585
    invoke-static {v2, v3}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    .line 586
    .line 587
    .line 588
    move-result-object v2

    .line 589
    invoke-virtual {v0, v1, v2}, Lcom/mbridge/msdk/mbsignalcommon/windvane/f;->b(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_c
    .catch Lorg/json/JSONException; {:try_start_c .. :try_end_c} :catch_3

    .line 590
    .line 591
    .line 592
    goto :goto_d

    .line 593
    :catch_3
    move-exception v0

    .line 594
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 595
    .line 596
    .line 597
    move-result-object v0

    .line 598
    invoke-static {v10, v0}, Lcom/mbridge/msdk/foundation/tools/o0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 599
    .line 600
    .line 601
    :goto_d
    return-void
.end method

.method public n(Ljava/lang/Object;Lorg/json/JSONObject;)V
    .locals 5

    .line 1
    const-string v0, "OperateViews"

    .line 2
    .line 3
    :try_start_0
    const-string v1, "unitId"

    .line 4
    .line 5
    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    const-string v2, "id"

    .line 10
    .line 11
    invoke-virtual {p2, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    invoke-virtual {p0, v2}, Lcom/mbridge/msdk/video/bt/component/a;->e(Ljava/lang/String;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 20
    .line 21
    .line 22
    move-result v4

    .line 23
    if-eqz v4, :cond_0

    .line 24
    .line 25
    move-object v4, p1

    .line 26
    check-cast v4, Lcom/mbridge/msdk/mbsignalcommon/windvane/a;

    .line 27
    .line 28
    iget-object v4, v4, Lcom/mbridge/msdk/mbsignalcommon/windvane/a;->b:Lcom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

    .line 29
    .line 30
    if-eqz v4, :cond_0

    .line 31
    .line 32
    invoke-virtual {v4}, Lcom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;->getRid()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    goto :goto_0

    .line 37
    :catchall_0
    move-exception p2

    .line 38
    goto :goto_1

    .line 39
    :cond_0
    :goto_0
    const-string v4, "data"

    .line 40
    .line 41
    invoke-virtual {p2, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 42
    .line 43
    .line 44
    move-result-object p2

    .line 45
    if-nez p2, :cond_1

    .line 46
    .line 47
    const-string p2, "data is empty"

    .line 48
    .line 49
    invoke-virtual {p0, p1, p2}, Lcom/mbridge/msdk/video/bt/component/a;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    return-void

    .line 53
    :cond_1
    invoke-virtual {p0, v1, v3}, Lcom/mbridge/msdk/video/bt/component/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/util/LinkedHashMap;

    .line 54
    .line 55
    .line 56
    move-result-object p2

    .line 57
    invoke-virtual {p2, v2}, Ljava/util/AbstractMap;->containsKey(Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    move-result v1

    .line 61
    if-eqz v1, :cond_3

    .line 62
    .line 63
    invoke-virtual {p2, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object p2

    .line 67
    check-cast p2, Landroid/view/View;

    .line 68
    .line 69
    if-eqz p2, :cond_2

    .line 70
    .line 71
    const/16 v1, 0x8

    .line 72
    .line 73
    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {p0, p1, v2}, Lcom/mbridge/msdk/video/bt/component/a;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    const-string p2, "onHideView"

    .line 80
    .line 81
    invoke-virtual {p0, p1, p2, v2}, Lcom/mbridge/msdk/video/bt/component/a;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    new-instance p2, Ljava/lang/StringBuilder;

    .line 85
    .line 86
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 87
    .line 88
    .line 89
    const-string v1, "hideView instanceId = "

    .line 90
    .line 91
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object p2

    .line 101
    invoke-static {v0, p2}, Lcom/mbridge/msdk/foundation/tools/o0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    goto :goto_2

    .line 105
    :cond_2
    const-string p2, "view not exist"

    .line 106
    .line 107
    invoke-virtual {p0, p1, p2}, Lcom/mbridge/msdk/video/bt/component/a;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    const-string p2, "hideView failed: view not exist"

    .line 111
    .line 112
    invoke-static {v0, p2}, Lcom/mbridge/msdk/foundation/tools/o0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    goto :goto_2

    .line 116
    :cond_3
    const-string p2, "instanceId not exist"

    .line 117
    .line 118
    invoke-virtual {p0, p1, p2}, Lcom/mbridge/msdk/video/bt/component/a;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    const-string p2, "hideView failed: instanceId not exist"

    .line 122
    .line 123
    invoke-static {v0, p2}, Lcom/mbridge/msdk/foundation/tools/o0;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 124
    .line 125
    .line 126
    goto :goto_2

    .line 127
    :goto_1
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object v1

    .line 131
    invoke-virtual {p0, p1, v1}, Lcom/mbridge/msdk/video/bt/component/a;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 132
    .line 133
    .line 134
    new-instance p1, Ljava/lang/StringBuilder;

    .line 135
    .line 136
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 137
    .line 138
    .line 139
    const-string v1, "hideView failed: + "

    .line 140
    .line 141
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    .line 143
    .line 144
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object p2

    .line 148
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    .line 150
    .line 151
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object p1

    .line 155
    invoke-static {v0, p1}, Lcom/mbridge/msdk/foundation/tools/o0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    .line 157
    .line 158
    :goto_2
    return-void
.end method

.method public o(Ljava/lang/Object;Lorg/json/JSONObject;)V
    .locals 1

    .line 1
    :try_start_0
    const-string v0, "data"

    .line 2
    .line 3
    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 4
    .line 5
    .line 6
    move-result-object p2

    .line 7
    if-nez p2, :cond_0

    .line 8
    .line 9
    const-string p2, "data is empty"

    .line 10
    .line 11
    invoke-virtual {p0, p1, p2}, Lcom/mbridge/msdk/video/bt/component/a;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :catchall_0
    move-exception p2

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    invoke-static {p2}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->parseCampaignWithBackData(Lorg/json/JSONObject;)Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 18
    .line 19
    .line 20
    move-result-object p2

    .line 21
    if-nez p2, :cond_1

    .line 22
    .line 23
    const-string p2, "data camapign is empty"

    .line 24
    .line 25
    invoke-virtual {p0, p1, p2}, Lcom/mbridge/msdk/video/bt/component/a;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    return-void

    .line 29
    :cond_1
    invoke-direct {p0, p2}, Lcom/mbridge/msdk/video/bt/component/a;->a(Lcom/mbridge/msdk/foundation/entity/CampaignEx;)V

    .line 30
    .line 31
    .line 32
    const-string p2, ""

    .line 33
    .line 34
    invoke-virtual {p0, p1, p2}, Lcom/mbridge/msdk/video/bt/component/a;->b(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    .line 36
    .line 37
    goto :goto_1

    .line 38
    :goto_0
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p2

    .line 42
    invoke-virtual {p0, p1, p2}, Lcom/mbridge/msdk/video/bt/component/a;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    :goto_1
    return-void
.end method

.method public p(Ljava/lang/Object;Lorg/json/JSONObject;)V
    .locals 17

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v2, p1

    .line 4
    .line 5
    move-object/from16 v0, p2

    .line 6
    .line 7
    const-string v4, "id"

    .line 8
    .line 9
    const-string v5, "OperateViews"

    .line 10
    .line 11
    :try_start_0
    const-string v6, "unitId"

    .line 12
    .line 13
    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v6

    .line 17
    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v7

    .line 21
    invoke-virtual {v1, v7}, Lcom/mbridge/msdk/video/bt/component/a;->e(Ljava/lang/String;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v8

    .line 25
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 26
    .line 27
    .line 28
    move-result v9

    .line 29
    if-eqz v9, :cond_0

    .line 30
    .line 31
    move-object v9, v2

    .line 32
    check-cast v9, Lcom/mbridge/msdk/mbsignalcommon/windvane/a;

    .line 33
    .line 34
    iget-object v9, v9, Lcom/mbridge/msdk/mbsignalcommon/windvane/a;->b:Lcom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

    .line 35
    .line 36
    if-eqz v9, :cond_0

    .line 37
    .line 38
    invoke-virtual {v9}, Lcom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;->getRid()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v8

    .line 42
    goto :goto_0

    .line 43
    :catchall_0
    move-exception v0

    .line 44
    goto/16 :goto_5

    .line 45
    .line 46
    :cond_0
    :goto_0
    const-string v9, "data"

    .line 47
    .line 48
    invoke-virtual {v0, v9}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    if-nez v0, :cond_1

    .line 53
    .line 54
    const-string v0, "data is empty"

    .line 55
    .line 56
    invoke-virtual {v1, v2, v0}, Lcom/mbridge/msdk/video/bt/component/a;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    return-void

    .line 60
    :cond_1
    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v4

    .line 64
    invoke-virtual {v1, v6, v8}, Lcom/mbridge/msdk/video/bt/component/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/util/LinkedHashMap;

    .line 65
    .line 66
    .line 67
    move-result-object v6

    .line 68
    invoke-virtual {v6, v4}, Ljava/util/AbstractMap;->containsKey(Ljava/lang/Object;)Z

    .line 69
    .line 70
    .line 71
    move-result v8

    .line 72
    if-eqz v8, :cond_c

    .line 73
    .line 74
    invoke-virtual {v6, v7}, Ljava/util/AbstractMap;->containsKey(Ljava/lang/Object;)Z

    .line 75
    .line 76
    .line 77
    move-result v8

    .line 78
    if-eqz v8, :cond_c

    .line 79
    .line 80
    invoke-virtual {v6, v7}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object v8

    .line 84
    check-cast v8, Landroid/view/ViewGroup;

    .line 85
    .line 86
    invoke-virtual {v6, v4}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    move-result-object v9

    .line 90
    check-cast v9, Landroid/view/View;

    .line 91
    .line 92
    if-eqz v8, :cond_b

    .line 93
    .line 94
    if-nez v9, :cond_2

    .line 95
    .line 96
    goto/16 :goto_4

    .line 97
    .line 98
    :cond_2
    const-string v10, "rect"

    .line 99
    .line 100
    invoke-virtual {v0, v10}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    instance-of v10, v9, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;

    .line 105
    .line 106
    if-eqz v10, :cond_4

    .line 107
    .line 108
    new-instance v8, Ljava/lang/StringBuilder;

    .line 109
    .line 110
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 111
    .line 112
    .line 113
    const-string v10, "OperateViews setNotchString = "

    .line 114
    .line 115
    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    const-string v10, "%1$s-%2$s-%3$s-%4$s-%5$s"

    .line 119
    .line 120
    sget v11, Lcom/mbridge/msdk/video/bt/component/a;->l:I

    .line 121
    .line 122
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 123
    .line 124
    .line 125
    move-result-object v11

    .line 126
    sget v12, Lcom/mbridge/msdk/video/bt/component/a;->m:I

    .line 127
    .line 128
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 129
    .line 130
    .line 131
    move-result-object v12

    .line 132
    sget v13, Lcom/mbridge/msdk/video/bt/component/a;->n:I

    .line 133
    .line 134
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 135
    .line 136
    .line 137
    move-result-object v13

    .line 138
    sget v14, Lcom/mbridge/msdk/video/bt/component/a;->o:I

    .line 139
    .line 140
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 141
    .line 142
    .line 143
    move-result-object v14

    .line 144
    sget v15, Lcom/mbridge/msdk/video/bt/component/a;->p:I

    .line 145
    .line 146
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 147
    .line 148
    .line 149
    move-result-object v15

    .line 150
    const/4 v3, 0x5

    .line 151
    new-array v3, v3, [Ljava/lang/Object;

    .line 152
    .line 153
    const/16 v16, 0x0

    .line 154
    .line 155
    aput-object v11, v3, v16

    .line 156
    .line 157
    const/4 v11, 0x1

    .line 158
    aput-object v12, v3, v11

    .line 159
    .line 160
    const/4 v11, 0x2

    .line 161
    aput-object v13, v3, v11

    .line 162
    .line 163
    const/4 v11, 0x3

    .line 164
    aput-object v14, v3, v11

    .line 165
    .line 166
    const/4 v11, 0x4

    .line 167
    aput-object v15, v3, v11

    .line 168
    .line 169
    invoke-static {v10, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object v3

    .line 173
    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    .line 175
    .line 176
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    move-result-object v3

    .line 180
    invoke-static {v5, v3}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    .line 182
    .line 183
    move-object v10, v9

    .line 184
    check-cast v10, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;

    .line 185
    .line 186
    sget v11, Lcom/mbridge/msdk/video/bt/component/a;->l:I

    .line 187
    .line 188
    sget v12, Lcom/mbridge/msdk/video/bt/component/a;->m:I

    .line 189
    .line 190
    sget v13, Lcom/mbridge/msdk/video/bt/component/a;->n:I

    .line 191
    .line 192
    sget v14, Lcom/mbridge/msdk/video/bt/component/a;->o:I

    .line 193
    .line 194
    sget v15, Lcom/mbridge/msdk/video/bt/component/a;->p:I

    .line 195
    .line 196
    invoke-virtual/range {v10 .. v15}, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->setNotchPadding(IIIII)V

    .line 197
    .line 198
    .line 199
    invoke-virtual {v6}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    .line 200
    .line 201
    .line 202
    move-result-object v3

    .line 203
    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 204
    .line 205
    .line 206
    move-result-object v3

    .line 207
    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 208
    .line 209
    .line 210
    move-result v6

    .line 211
    if-eqz v6, :cond_a

    .line 212
    .line 213
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 214
    .line 215
    .line 216
    move-result-object v6

    .line 217
    check-cast v6, Landroid/view/View;

    .line 218
    .line 219
    instance-of v8, v6, Lcom/mbridge/msdk/video/bt/module/MBridgeBTContainer;

    .line 220
    .line 221
    if-eqz v8, :cond_3

    .line 222
    .line 223
    invoke-static {v9}, Lcom/mbridge/msdk/foundation/tools/c1;->a(Landroid/view/View;)V

    .line 224
    .line 225
    .line 226
    move-object v3, v6

    .line 227
    check-cast v3, Lcom/mbridge/msdk/video/bt/module/MBridgeBTContainer;

    .line 228
    .line 229
    check-cast v6, Lcom/mbridge/msdk/video/bt/module/MBridgeBTContainer;

    .line 230
    .line 231
    check-cast v9, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;

    .line 232
    .line 233
    invoke-virtual {v3, v6, v9, v0}, Lcom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->appendSubView(Lcom/mbridge/msdk/video/bt/module/MBridgeBTContainer;Lcom/mbridge/msdk/video/bt/module/MBTempContainer;Lorg/json/JSONObject;)V

    .line 234
    .line 235
    .line 236
    goto/16 :goto_3

    .line 237
    .line 238
    :cond_4
    const/16 v16, 0x0

    .line 239
    .line 240
    if-nez v0, :cond_6

    .line 241
    .line 242
    instance-of v0, v9, Lcom/mbridge/msdk/video/bt/module/BTBaseView;

    .line 243
    .line 244
    if-eqz v0, :cond_5

    .line 245
    .line 246
    move-object v0, v9

    .line 247
    check-cast v0, Lcom/mbridge/msdk/video/bt/module/BTBaseView;

    .line 248
    .line 249
    invoke-virtual {v0}, Lcom/mbridge/msdk/video/bt/module/BTBaseView;->getRect()Landroid/graphics/Rect;

    .line 250
    .line 251
    .line 252
    move-result-object v0

    .line 253
    move-object v3, v9

    .line 254
    check-cast v3, Lcom/mbridge/msdk/video/bt/module/BTBaseView;

    .line 255
    .line 256
    invoke-virtual {v3}, Lcom/mbridge/msdk/video/bt/module/BTBaseView;->getViewWidth()I

    .line 257
    .line 258
    .line 259
    move-result v3

    .line 260
    move-object v6, v9

    .line 261
    check-cast v6, Lcom/mbridge/msdk/video/bt/module/BTBaseView;

    .line 262
    .line 263
    invoke-virtual {v6}, Lcom/mbridge/msdk/video/bt/module/BTBaseView;->getViewHeight()I

    .line 264
    .line 265
    .line 266
    move-result v6

    .line 267
    goto :goto_1

    .line 268
    :cond_5
    const/4 v0, 0x0

    .line 269
    move/from16 v3, v16

    .line 270
    .line 271
    move v6, v3

    .line 272
    goto :goto_1

    .line 273
    :cond_6
    const-string v3, "left"

    .line 274
    .line 275
    const/16 v6, -0x3e7

    .line 276
    .line 277
    invoke-virtual {v0, v3, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 278
    .line 279
    .line 280
    move-result v3

    .line 281
    const-string v10, "top"

    .line 282
    .line 283
    invoke-virtual {v0, v10, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 284
    .line 285
    .line 286
    move-result v10

    .line 287
    const-string v11, "right"

    .line 288
    .line 289
    invoke-virtual {v0, v11, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 290
    .line 291
    .line 292
    move-result v11

    .line 293
    const-string v12, "bottom"

    .line 294
    .line 295
    invoke-virtual {v0, v12, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 296
    .line 297
    .line 298
    move-result v6

    .line 299
    new-instance v12, Landroid/graphics/Rect;

    .line 300
    .line 301
    invoke-direct {v12, v3, v10, v11, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 302
    .line 303
    .line 304
    const-string v3, "width"

    .line 305
    .line 306
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    .line 307
    .line 308
    .line 309
    move-result v3

    .line 310
    const-string v6, "height"

    .line 311
    .line 312
    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    .line 313
    .line 314
    .line 315
    move-result v0

    .line 316
    move v6, v0

    .line 317
    move-object v0, v12

    .line 318
    :goto_1
    new-instance v10, Landroid/view/ViewGroup$LayoutParams;

    .line 319
    .line 320
    const/4 v11, -0x1

    .line 321
    invoke-direct {v10, v11, v11}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 322
    .line 323
    .line 324
    instance-of v12, v8, Landroid/widget/FrameLayout;

    .line 325
    .line 326
    if-eqz v12, :cond_7

    .line 327
    .line 328
    new-instance v10, Landroid/widget/FrameLayout$LayoutParams;

    .line 329
    .line 330
    invoke-direct {v10, v11, v11}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 331
    .line 332
    .line 333
    goto :goto_2

    .line 334
    :cond_7
    instance-of v12, v8, Landroid/widget/RelativeLayout;

    .line 335
    .line 336
    if-eqz v12, :cond_8

    .line 337
    .line 338
    new-instance v10, Landroid/widget/RelativeLayout$LayoutParams;

    .line 339
    .line 340
    invoke-direct {v10, v11, v11}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 341
    .line 342
    .line 343
    goto :goto_2

    .line 344
    :cond_8
    instance-of v12, v8, Landroid/widget/LinearLayout;

    .line 345
    .line 346
    if-eqz v12, :cond_9

    .line 347
    .line 348
    new-instance v10, Landroid/widget/LinearLayout$LayoutParams;

    .line 349
    .line 350
    invoke-direct {v10, v11, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 351
    .line 352
    .line 353
    :cond_9
    :goto_2
    invoke-virtual {v1, v10, v0, v3, v6}, Lcom/mbridge/msdk/video/bt/component/a;->a(Landroid/view/ViewGroup$LayoutParams;Landroid/graphics/Rect;II)Landroid/view/ViewGroup$LayoutParams;

    .line 354
    .line 355
    .line 356
    move-result-object v0

    .line 357
    invoke-virtual {v8, v9, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 358
    .line 359
    .line 360
    :cond_a
    :goto_3
    invoke-virtual {v1, v2, v7}, Lcom/mbridge/msdk/video/bt/component/a;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 361
    .line 362
    .line 363
    const-string v0, "onAppendView"

    .line 364
    .line 365
    invoke-virtual {v1, v2, v0, v7}, Lcom/mbridge/msdk/video/bt/component/a;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    .line 366
    .line 367
    .line 368
    new-instance v0, Ljava/lang/StringBuilder;

    .line 369
    .line 370
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 371
    .line 372
    .line 373
    const-string v3, "appendSubView parentId = "

    .line 374
    .line 375
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 376
    .line 377
    .line 378
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 379
    .line 380
    .line 381
    const-string v3, " childId = "

    .line 382
    .line 383
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 384
    .line 385
    .line 386
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 387
    .line 388
    .line 389
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 390
    .line 391
    .line 392
    move-result-object v0

    .line 393
    invoke-static {v5, v0}, Lcom/mbridge/msdk/foundation/tools/o0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 394
    .line 395
    .line 396
    goto :goto_6

    .line 397
    :cond_b
    :goto_4
    const-string v0, "view is not exist"

    .line 398
    .line 399
    invoke-virtual {v1, v2, v0}, Lcom/mbridge/msdk/video/bt/component/a;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 400
    .line 401
    .line 402
    return-void

    .line 403
    :cond_c
    const-string v0, "instanceId is not exist"

    .line 404
    .line 405
    invoke-virtual {v1, v2, v0}, Lcom/mbridge/msdk/video/bt/component/a;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 406
    .line 407
    .line 408
    const-string v0, "appendSubView failed: instanceId is not exist"

    .line 409
    .line 410
    invoke-static {v5, v0}, Lcom/mbridge/msdk/foundation/tools/o0;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 411
    .line 412
    .line 413
    goto :goto_6

    .line 414
    :goto_5
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 415
    .line 416
    .line 417
    move-result-object v3

    .line 418
    invoke-virtual {v1, v2, v3}, Lcom/mbridge/msdk/video/bt/component/a;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 419
    .line 420
    .line 421
    new-instance v2, Ljava/lang/StringBuilder;

    .line 422
    .line 423
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 424
    .line 425
    .line 426
    const-string v3, "appendSubView failed: "

    .line 427
    .line 428
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 429
    .line 430
    .line 431
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 432
    .line 433
    .line 434
    move-result-object v0

    .line 435
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 436
    .line 437
    .line 438
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 439
    .line 440
    .line 441
    move-result-object v0

    .line 442
    invoke-static {v5, v0}, Lcom/mbridge/msdk/foundation/tools/o0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 443
    .line 444
    .line 445
    :goto_6
    return-void
.end method

.method public q(Ljava/lang/Object;Lorg/json/JSONObject;)V
    .locals 10

    .line 1
    const-string v0, "id"

    .line 2
    .line 3
    const-string v1, "OperateViews"

    .line 4
    .line 5
    :try_start_0
    const-string v2, "unitId"

    .line 6
    .line 7
    invoke-virtual {p2, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v3

    .line 15
    invoke-virtual {p0, v3}, Lcom/mbridge/msdk/video/bt/component/a;->e(Ljava/lang/String;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v4

    .line 19
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 20
    .line 21
    .line 22
    move-result v5

    .line 23
    if-eqz v5, :cond_0

    .line 24
    .line 25
    move-object v5, p1

    .line 26
    check-cast v5, Lcom/mbridge/msdk/mbsignalcommon/windvane/a;

    .line 27
    .line 28
    iget-object v5, v5, Lcom/mbridge/msdk/mbsignalcommon/windvane/a;->b:Lcom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

    .line 29
    .line 30
    if-eqz v5, :cond_0

    .line 31
    .line 32
    invoke-virtual {v5}, Lcom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;->getRid()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v4

    .line 36
    goto :goto_0

    .line 37
    :catchall_0
    move-exception p2

    .line 38
    goto/16 :goto_6

    .line 39
    .line 40
    :cond_0
    :goto_0
    const-string v5, "data"

    .line 41
    .line 42
    invoke-virtual {p2, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 43
    .line 44
    .line 45
    move-result-object p2

    .line 46
    if-eqz p2, :cond_d

    .line 47
    .line 48
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 49
    .line 50
    .line 51
    move-result v5

    .line 52
    if-eqz v5, :cond_1

    .line 53
    .line 54
    goto/16 :goto_5

    .line 55
    .line 56
    :cond_1
    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    invoke-virtual {p0, v2, v4}, Lcom/mbridge/msdk/video/bt/component/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/util/LinkedHashMap;

    .line 61
    .line 62
    .line 63
    move-result-object v2

    .line 64
    invoke-virtual {v2, v3}, Ljava/util/AbstractMap;->containsKey(Ljava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    move-result v4

    .line 68
    if-eqz v4, :cond_c

    .line 69
    .line 70
    invoke-virtual {v2, v0}, Ljava/util/AbstractMap;->containsKey(Ljava/lang/Object;)Z

    .line 71
    .line 72
    .line 73
    move-result v4

    .line 74
    if-eqz v4, :cond_c

    .line 75
    .line 76
    invoke-virtual {v2, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object v4

    .line 80
    check-cast v4, Landroid/view/ViewGroup;

    .line 81
    .line 82
    invoke-virtual {v2, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    move-result-object v5

    .line 86
    check-cast v5, Landroid/view/View;

    .line 87
    .line 88
    if-eqz v4, :cond_b

    .line 89
    .line 90
    if-nez v5, :cond_2

    .line 91
    .line 92
    goto/16 :goto_4

    .line 93
    .line 94
    :cond_2
    const-string v6, "rect"

    .line 95
    .line 96
    invoke-virtual {p2, v6}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 97
    .line 98
    .line 99
    move-result-object p2

    .line 100
    instance-of v6, v5, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;

    .line 101
    .line 102
    if-eqz v6, :cond_4

    .line 103
    .line 104
    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    .line 105
    .line 106
    .line 107
    move-result-object v2

    .line 108
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 109
    .line 110
    .line 111
    move-result-object v2

    .line 112
    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 113
    .line 114
    .line 115
    move-result v4

    .line 116
    if-eqz v4, :cond_a

    .line 117
    .line 118
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 119
    .line 120
    .line 121
    move-result-object v4

    .line 122
    check-cast v4, Landroid/view/View;

    .line 123
    .line 124
    instance-of v6, v4, Lcom/mbridge/msdk/video/bt/module/MBridgeBTContainer;

    .line 125
    .line 126
    if-eqz v6, :cond_3

    .line 127
    .line 128
    invoke-static {v5}, Lcom/mbridge/msdk/foundation/tools/c1;->a(Landroid/view/View;)V

    .line 129
    .line 130
    .line 131
    move-object v2, v4

    .line 132
    check-cast v2, Lcom/mbridge/msdk/video/bt/module/MBridgeBTContainer;

    .line 133
    .line 134
    check-cast v4, Lcom/mbridge/msdk/video/bt/module/MBridgeBTContainer;

    .line 135
    .line 136
    check-cast v5, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;

    .line 137
    .line 138
    invoke-virtual {v2, v4, v5, p2}, Lcom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->appendSubView(Lcom/mbridge/msdk/video/bt/module/MBridgeBTContainer;Lcom/mbridge/msdk/video/bt/module/MBTempContainer;Lorg/json/JSONObject;)V

    .line 139
    .line 140
    .line 141
    goto/16 :goto_3

    .line 142
    .line 143
    :cond_4
    if-nez p2, :cond_6

    .line 144
    .line 145
    instance-of p2, v5, Lcom/mbridge/msdk/video/bt/module/BTBaseView;

    .line 146
    .line 147
    if-eqz p2, :cond_5

    .line 148
    .line 149
    move-object p2, v5

    .line 150
    check-cast p2, Lcom/mbridge/msdk/video/bt/module/BTBaseView;

    .line 151
    .line 152
    invoke-virtual {p2}, Lcom/mbridge/msdk/video/bt/module/BTBaseView;->getRect()Landroid/graphics/Rect;

    .line 153
    .line 154
    .line 155
    move-result-object p2

    .line 156
    move-object v2, v5

    .line 157
    check-cast v2, Lcom/mbridge/msdk/video/bt/module/BTBaseView;

    .line 158
    .line 159
    invoke-virtual {v2}, Lcom/mbridge/msdk/video/bt/module/BTBaseView;->getViewWidth()I

    .line 160
    .line 161
    .line 162
    move-result v2

    .line 163
    move-object v6, v5

    .line 164
    check-cast v6, Lcom/mbridge/msdk/video/bt/module/BTBaseView;

    .line 165
    .line 166
    invoke-virtual {v6}, Lcom/mbridge/msdk/video/bt/module/BTBaseView;->getViewHeight()I

    .line 167
    .line 168
    .line 169
    move-result v6

    .line 170
    goto :goto_1

    .line 171
    :cond_5
    const/4 v2, 0x0

    .line 172
    const/4 p2, 0x0

    .line 173
    move v6, v2

    .line 174
    goto :goto_1

    .line 175
    :cond_6
    const-string v2, "left"

    .line 176
    .line 177
    const/16 v6, -0x3e7

    .line 178
    .line 179
    invoke-virtual {p2, v2, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 180
    .line 181
    .line 182
    move-result v2

    .line 183
    const-string v7, "top"

    .line 184
    .line 185
    invoke-virtual {p2, v7, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 186
    .line 187
    .line 188
    move-result v7

    .line 189
    const-string v8, "right"

    .line 190
    .line 191
    invoke-virtual {p2, v8, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 192
    .line 193
    .line 194
    move-result v8

    .line 195
    const-string v9, "bottom"

    .line 196
    .line 197
    invoke-virtual {p2, v9, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 198
    .line 199
    .line 200
    move-result v6

    .line 201
    new-instance v9, Landroid/graphics/Rect;

    .line 202
    .line 203
    invoke-direct {v9, v2, v7, v8, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 204
    .line 205
    .line 206
    const-string v2, "width"

    .line 207
    .line 208
    invoke-virtual {p2, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    .line 209
    .line 210
    .line 211
    move-result v2

    .line 212
    const-string v6, "height"

    .line 213
    .line 214
    invoke-virtual {p2, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    .line 215
    .line 216
    .line 217
    move-result v6

    .line 218
    move-object p2, v9

    .line 219
    :goto_1
    new-instance v7, Landroid/view/ViewGroup$LayoutParams;

    .line 220
    .line 221
    const/4 v8, -0x1

    .line 222
    invoke-direct {v7, v8, v8}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 223
    .line 224
    .line 225
    instance-of v9, v4, Landroid/widget/FrameLayout;

    .line 226
    .line 227
    if-eqz v9, :cond_7

    .line 228
    .line 229
    new-instance v7, Landroid/widget/FrameLayout$LayoutParams;

    .line 230
    .line 231
    invoke-direct {v7, v8, v8}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 232
    .line 233
    .line 234
    goto :goto_2

    .line 235
    :cond_7
    instance-of v9, v4, Landroid/widget/RelativeLayout;

    .line 236
    .line 237
    if-eqz v9, :cond_8

    .line 238
    .line 239
    new-instance v7, Landroid/widget/RelativeLayout$LayoutParams;

    .line 240
    .line 241
    invoke-direct {v7, v8, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 242
    .line 243
    .line 244
    goto :goto_2

    .line 245
    :cond_8
    instance-of v9, v4, Landroid/widget/LinearLayout;

    .line 246
    .line 247
    if-eqz v9, :cond_9

    .line 248
    .line 249
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    .line 250
    .line 251
    invoke-direct {v7, v8, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 252
    .line 253
    .line 254
    :cond_9
    :goto_2
    invoke-virtual {p0, v7, p2, v2, v6}, Lcom/mbridge/msdk/video/bt/component/a;->a(Landroid/view/ViewGroup$LayoutParams;Landroid/graphics/Rect;II)Landroid/view/ViewGroup$LayoutParams;

    .line 255
    .line 256
    .line 257
    move-result-object p2

    .line 258
    invoke-virtual {v4, v5, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 259
    .line 260
    .line 261
    :cond_a
    :goto_3
    invoke-virtual {p0, p1, v3}, Lcom/mbridge/msdk/video/bt/component/a;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 262
    .line 263
    .line 264
    const-string p2, "onAppendViewTo"

    .line 265
    .line 266
    invoke-virtual {p0, p1, p2, v3}, Lcom/mbridge/msdk/video/bt/component/a;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    .line 268
    .line 269
    new-instance p2, Ljava/lang/StringBuilder;

    .line 270
    .line 271
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 272
    .line 273
    .line 274
    const-string v2, "appendViewTo parentId = "

    .line 275
    .line 276
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 277
    .line 278
    .line 279
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 280
    .line 281
    .line 282
    const-string v0, " childId = "

    .line 283
    .line 284
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 285
    .line 286
    .line 287
    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 288
    .line 289
    .line 290
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 291
    .line 292
    .line 293
    move-result-object p2

    .line 294
    invoke-static {v1, p2}, Lcom/mbridge/msdk/foundation/tools/o0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    .line 296
    .line 297
    goto :goto_7

    .line 298
    :cond_b
    :goto_4
    const-string p2, "view is not exist"

    .line 299
    .line 300
    invoke-virtual {p0, p1, p2}, Lcom/mbridge/msdk/video/bt/component/a;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 301
    .line 302
    .line 303
    return-void

    .line 304
    :cond_c
    const-string p2, "instanceId is not exist"

    .line 305
    .line 306
    invoke-virtual {p0, p1, p2}, Lcom/mbridge/msdk/video/bt/component/a;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 307
    .line 308
    .line 309
    const-string p2, "appendViewTo failed: instanceId is not exist"

    .line 310
    .line 311
    invoke-static {v1, p2}, Lcom/mbridge/msdk/foundation/tools/o0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 312
    .line 313
    .line 314
    goto :goto_7

    .line 315
    :cond_d
    :goto_5
    const-string p2, "unitId or data is empty"

    .line 316
    .line 317
    invoke-virtual {p0, p1, p2}, Lcom/mbridge/msdk/video/bt/component/a;->a(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 318
    .line 319
    .line 320
    return-void

    .line 321
    :goto_6
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 322
    .line 323
    .line 324
    move-result-object v0

    .line 325
    invoke-virtual {p0, p1, v0}, Lcom/mbridge/msdk/video/bt/component/a;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 326
    .line 327
    .line 328
    new-instance p1, Ljava/lang/StringBuilder;

    .line 329
    .line 330
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 331
    .line 332
    .line 333
    const-string v0, "appendViewTo failed: "

    .line 334
    .line 335
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 336
    .line 337
    .line 338
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 339
    .line 340
    .line 341
    move-result-object p2

    .line 342
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 343
    .line 344
    .line 345
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 346
    .line 347
    .line 348
    move-result-object p1

    .line 349
    invoke-static {v1, p1}, Lcom/mbridge/msdk/foundation/tools/o0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 350
    .line 351
    .line 352
    :goto_7
    return-void
.end method

.method public r(Ljava/lang/Object;Lorg/json/JSONObject;)V
    .locals 11

    .line 1
    const-string v0, "OperateViews"

    .line 2
    .line 3
    :try_start_0
    const-string v1, "unitId"

    .line 4
    .line 5
    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    const-string v2, "id"

    .line 10
    .line 11
    invoke-virtual {p2, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    invoke-virtual {p0, v2}, Lcom/mbridge/msdk/video/bt/component/a;->e(Ljava/lang/String;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 20
    .line 21
    .line 22
    move-result v4

    .line 23
    if-eqz v4, :cond_0

    .line 24
    .line 25
    move-object v4, p1

    .line 26
    check-cast v4, Lcom/mbridge/msdk/mbsignalcommon/windvane/a;

    .line 27
    .line 28
    iget-object v4, v4, Lcom/mbridge/msdk/mbsignalcommon/windvane/a;->b:Lcom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

    .line 29
    .line 30
    if-eqz v4, :cond_0

    .line 31
    .line 32
    invoke-virtual {v4}, Lcom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;->getRid()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    goto :goto_0

    .line 37
    :catchall_0
    move-exception p2

    .line 38
    goto/16 :goto_3

    .line 39
    .line 40
    :cond_0
    :goto_0
    const-string v4, "data"

    .line 41
    .line 42
    invoke-virtual {p2, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 43
    .line 44
    .line 45
    move-result-object p2

    .line 46
    if-nez p2, :cond_1

    .line 47
    .line 48
    const-string p2, "data is empty"

    .line 49
    .line 50
    invoke-virtual {p0, p1, p2}, Lcom/mbridge/msdk/video/bt/component/a;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    return-void

    .line 54
    :cond_1
    const-string v4, "targetComponentId"

    .line 55
    .line 56
    invoke-virtual {p2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v4

    .line 60
    const-string v5, "rect"

    .line 61
    .line 62
    invoke-virtual {p2, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 63
    .line 64
    .line 65
    move-result-object p2

    .line 66
    invoke-virtual {p0, v1, v3}, Lcom/mbridge/msdk/video/bt/component/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/util/LinkedHashMap;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    invoke-virtual {v1, v2}, Ljava/util/AbstractMap;->containsKey(Ljava/lang/Object;)Z

    .line 71
    .line 72
    .line 73
    move-result v3

    .line 74
    if-eqz v3, :cond_8

    .line 75
    .line 76
    invoke-virtual {v1, v4}, Ljava/util/AbstractMap;->containsKey(Ljava/lang/Object;)Z

    .line 77
    .line 78
    .line 79
    move-result v3

    .line 80
    if-eqz v3, :cond_8

    .line 81
    .line 82
    invoke-virtual {v1, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    move-result-object v3

    .line 86
    check-cast v3, Landroid/view/View;

    .line 87
    .line 88
    invoke-virtual {v1, v4}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object v1

    .line 92
    check-cast v1, Landroid/view/View;

    .line 93
    .line 94
    if-eqz v1, :cond_7

    .line 95
    .line 96
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 97
    .line 98
    .line 99
    move-result-object v5

    .line 100
    if-eqz v5, :cond_7

    .line 101
    .line 102
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 103
    .line 104
    .line 105
    move-result-object v5

    .line 106
    check-cast v5, Landroid/view/ViewGroup;

    .line 107
    .line 108
    invoke-virtual {v5, v1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    .line 109
    .line 110
    .line 111
    move-result v1

    .line 112
    if-nez p2, :cond_3

    .line 113
    .line 114
    instance-of p2, v3, Lcom/mbridge/msdk/video/bt/module/BTBaseView;

    .line 115
    .line 116
    if-eqz p2, :cond_2

    .line 117
    .line 118
    move-object p2, v3

    .line 119
    check-cast p2, Lcom/mbridge/msdk/video/bt/module/BTBaseView;

    .line 120
    .line 121
    invoke-virtual {p2}, Lcom/mbridge/msdk/video/bt/module/BTBaseView;->getRect()Landroid/graphics/Rect;

    .line 122
    .line 123
    .line 124
    move-result-object p2

    .line 125
    move-object v6, v3

    .line 126
    check-cast v6, Lcom/mbridge/msdk/video/bt/module/BTBaseView;

    .line 127
    .line 128
    invoke-virtual {v6}, Lcom/mbridge/msdk/video/bt/module/BTBaseView;->getViewWidth()I

    .line 129
    .line 130
    .line 131
    move-result v6

    .line 132
    move-object v7, v3

    .line 133
    check-cast v7, Lcom/mbridge/msdk/video/bt/module/BTBaseView;

    .line 134
    .line 135
    invoke-virtual {v7}, Lcom/mbridge/msdk/video/bt/module/BTBaseView;->getViewHeight()I

    .line 136
    .line 137
    .line 138
    move-result v7

    .line 139
    goto :goto_1

    .line 140
    :cond_2
    const/4 v6, 0x0

    .line 141
    const/4 p2, 0x0

    .line 142
    move v7, v6

    .line 143
    goto :goto_1

    .line 144
    :cond_3
    const-string v6, "left"

    .line 145
    .line 146
    const/16 v7, -0x3e7

    .line 147
    .line 148
    invoke-virtual {p2, v6, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 149
    .line 150
    .line 151
    move-result v6

    .line 152
    const-string v8, "top"

    .line 153
    .line 154
    invoke-virtual {p2, v8, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 155
    .line 156
    .line 157
    move-result v8

    .line 158
    const-string v9, "right"

    .line 159
    .line 160
    invoke-virtual {p2, v9, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 161
    .line 162
    .line 163
    move-result v9

    .line 164
    const-string v10, "bottom"

    .line 165
    .line 166
    invoke-virtual {p2, v10, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 167
    .line 168
    .line 169
    move-result v7

    .line 170
    new-instance v10, Landroid/graphics/Rect;

    .line 171
    .line 172
    invoke-direct {v10, v6, v8, v9, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 173
    .line 174
    .line 175
    const-string v6, "width"

    .line 176
    .line 177
    invoke-virtual {p2, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    .line 178
    .line 179
    .line 180
    move-result v6

    .line 181
    const-string v7, "height"

    .line 182
    .line 183
    invoke-virtual {p2, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    .line 184
    .line 185
    .line 186
    move-result v7

    .line 187
    move-object p2, v10

    .line 188
    :goto_1
    new-instance v8, Landroid/view/ViewGroup$LayoutParams;

    .line 189
    .line 190
    const/4 v9, -0x1

    .line 191
    invoke-direct {v8, v9, v9}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 192
    .line 193
    .line 194
    instance-of v10, v5, Landroid/widget/FrameLayout;

    .line 195
    .line 196
    if-eqz v10, :cond_4

    .line 197
    .line 198
    new-instance v8, Landroid/widget/FrameLayout$LayoutParams;

    .line 199
    .line 200
    invoke-direct {v8, v9, v9}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 201
    .line 202
    .line 203
    goto :goto_2

    .line 204
    :cond_4
    instance-of v10, v5, Landroid/widget/RelativeLayout;

    .line 205
    .line 206
    if-eqz v10, :cond_5

    .line 207
    .line 208
    new-instance v8, Landroid/widget/RelativeLayout$LayoutParams;

    .line 209
    .line 210
    invoke-direct {v8, v9, v9}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 211
    .line 212
    .line 213
    goto :goto_2

    .line 214
    :cond_5
    instance-of v10, v5, Landroid/widget/LinearLayout;

    .line 215
    .line 216
    if-eqz v10, :cond_6

    .line 217
    .line 218
    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    .line 219
    .line 220
    invoke-direct {v8, v9, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 221
    .line 222
    .line 223
    :cond_6
    :goto_2
    invoke-virtual {p0, v8, p2, v6, v7}, Lcom/mbridge/msdk/video/bt/component/a;->a(Landroid/view/ViewGroup$LayoutParams;Landroid/graphics/Rect;II)Landroid/view/ViewGroup$LayoutParams;

    .line 224
    .line 225
    .line 226
    move-result-object p2

    .line 227
    add-int/lit8 v1, v1, 0x1

    .line 228
    .line 229
    invoke-virtual {v5, v3, v1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 230
    .line 231
    .line 232
    invoke-virtual {p0, p1, v2}, Lcom/mbridge/msdk/video/bt/component/a;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 233
    .line 234
    .line 235
    const-string p2, "onInsertViewAbove"

    .line 236
    .line 237
    invoke-virtual {p0, p1, p2, v2}, Lcom/mbridge/msdk/video/bt/component/a;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    .line 239
    .line 240
    new-instance p2, Ljava/lang/StringBuilder;

    .line 241
    .line 242
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 243
    .line 244
    .line 245
    const-string v1, "insertViewAbove instanceId = "

    .line 246
    .line 247
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 248
    .line 249
    .line 250
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 251
    .line 252
    .line 253
    const-string v1, " brotherId = "

    .line 254
    .line 255
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 256
    .line 257
    .line 258
    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 259
    .line 260
    .line 261
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 262
    .line 263
    .line 264
    move-result-object p2

    .line 265
    invoke-static {v0, p2}, Lcom/mbridge/msdk/foundation/tools/o0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    .line 267
    .line 268
    goto :goto_4

    .line 269
    :cond_7
    const-string p2, "view not exist"

    .line 270
    .line 271
    invoke-virtual {p0, p1, p2}, Lcom/mbridge/msdk/video/bt/component/a;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 272
    .line 273
    .line 274
    new-instance p2, Ljava/lang/StringBuilder;

    .line 275
    .line 276
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 277
    .line 278
    .line 279
    const-string v1, "insertViewAbove failed: view not exist instanceId = "

    .line 280
    .line 281
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 282
    .line 283
    .line 284
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 285
    .line 286
    .line 287
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 288
    .line 289
    .line 290
    move-result-object p2

    .line 291
    invoke-static {v0, p2}, Lcom/mbridge/msdk/foundation/tools/o0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    .line 293
    .line 294
    goto :goto_4

    .line 295
    :cond_8
    const-string p2, "instanceId not exist"

    .line 296
    .line 297
    invoke-virtual {p0, p1, p2}, Lcom/mbridge/msdk/video/bt/component/a;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 298
    .line 299
    .line 300
    new-instance p2, Ljava/lang/StringBuilder;

    .line 301
    .line 302
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 303
    .line 304
    .line 305
    const-string v1, "insertViewAbove failed: instanceId not exist instanceId = "

    .line 306
    .line 307
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 308
    .line 309
    .line 310
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 311
    .line 312
    .line 313
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 314
    .line 315
    .line 316
    move-result-object p2

    .line 317
    invoke-static {v0, p2}, Lcom/mbridge/msdk/foundation/tools/o0;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 318
    .line 319
    .line 320
    goto :goto_4

    .line 321
    :goto_3
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 322
    .line 323
    .line 324
    move-result-object v1

    .line 325
    invoke-virtual {p0, p1, v1}, Lcom/mbridge/msdk/video/bt/component/a;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 326
    .line 327
    .line 328
    new-instance p1, Ljava/lang/StringBuilder;

    .line 329
    .line 330
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 331
    .line 332
    .line 333
    const-string v1, "insertViewAbove failed: "

    .line 334
    .line 335
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 336
    .line 337
    .line 338
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 339
    .line 340
    .line 341
    move-result-object p2

    .line 342
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 343
    .line 344
    .line 345
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 346
    .line 347
    .line 348
    move-result-object p1

    .line 349
    invoke-static {v0, p1}, Lcom/mbridge/msdk/foundation/tools/o0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 350
    .line 351
    .line 352
    :goto_4
    return-void
.end method

.method public s(Ljava/lang/Object;Lorg/json/JSONObject;)V
    .locals 7

    .line 1
    const-string v0, "data"

    .line 2
    .line 3
    const-string v1, "id"

    .line 4
    .line 5
    const-string v2, "OperateViews"

    .line 6
    .line 7
    :try_start_0
    const-string v3, "unitId"

    .line 8
    .line 9
    invoke-virtual {p2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v3

    .line 13
    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v4

    .line 17
    invoke-virtual {p0, v4}, Lcom/mbridge/msdk/video/bt/component/a;->e(Ljava/lang/String;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v5

    .line 21
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 22
    .line 23
    .line 24
    move-result v6

    .line 25
    if-eqz v6, :cond_0

    .line 26
    .line 27
    move-object v6, p1

    .line 28
    check-cast v6, Lcom/mbridge/msdk/mbsignalcommon/windvane/a;

    .line 29
    .line 30
    iget-object v6, v6, Lcom/mbridge/msdk/mbsignalcommon/windvane/a;->b:Lcom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

    .line 31
    .line 32
    if-eqz v6, :cond_0

    .line 33
    .line 34
    invoke-virtual {v6}, Lcom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;->getRid()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v5

    .line 38
    goto :goto_0

    .line 39
    :catchall_0
    move-exception p2

    .line 40
    goto/16 :goto_1

    .line 41
    .line 42
    :cond_0
    :goto_0
    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 43
    .line 44
    .line 45
    move-result-object p2

    .line 46
    if-nez p2, :cond_1

    .line 47
    .line 48
    const-string p2, "data is empty"

    .line 49
    .line 50
    invoke-virtual {p0, p1, p2}, Lcom/mbridge/msdk/video/bt/component/a;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    return-void

    .line 54
    :cond_1
    invoke-virtual {p0, v3, v5}, Lcom/mbridge/msdk/video/bt/component/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/util/LinkedHashMap;

    .line 55
    .line 56
    .line 57
    move-result-object p2

    .line 58
    invoke-virtual {p2, v4}, Ljava/util/AbstractMap;->containsKey(Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    move-result v3

    .line 62
    if-eqz v3, :cond_3

    .line 63
    .line 64
    invoke-virtual {p2, v4}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object p2

    .line 68
    check-cast p2, Landroid/view/View;

    .line 69
    .line 70
    instance-of v3, p2, Lcom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;

    .line 71
    .line 72
    if-eqz v3, :cond_2

    .line 73
    .line 74
    check-cast p2, Lcom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;

    .line 75
    .line 76
    invoke-virtual {p2}, Lcom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;->getMute()I

    .line 77
    .line 78
    .line 79
    move-result p2

    .line 80
    new-instance v3, Lorg/json/JSONObject;

    .line 81
    .line 82
    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 83
    .line 84
    .line 85
    const-string v5, "code"

    .line 86
    .line 87
    sget v6, Lcom/mbridge/msdk/video/bt/component/a;->i:I

    .line 88
    .line 89
    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 90
    .line 91
    .line 92
    new-instance v5, Lorg/json/JSONObject;

    .line 93
    .line 94
    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 95
    .line 96
    .line 97
    invoke-virtual {v5, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 98
    .line 99
    .line 100
    const-string v1, "mute"

    .line 101
    .line 102
    invoke-virtual {v5, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 103
    .line 104
    .line 105
    invoke-virtual {v3, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 106
    .line 107
    .line 108
    invoke-static {}, Lcom/mbridge/msdk/mbsignalcommon/windvane/f;->a()Lcom/mbridge/msdk/mbsignalcommon/windvane/f;

    .line 109
    .line 110
    .line 111
    move-result-object v0

    .line 112
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v1

    .line 116
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    .line 117
    .line 118
    .line 119
    move-result-object v1

    .line 120
    const/4 v3, 0x2

    .line 121
    invoke-static {v1, v3}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v1

    .line 125
    invoke-virtual {v0, p1, v1}, Lcom/mbridge/msdk/mbsignalcommon/windvane/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 126
    .line 127
    .line 128
    new-instance v0, Ljava/lang/StringBuilder;

    .line 129
    .line 130
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 131
    .line 132
    .line 133
    const-string v1, "playerGetMuteState successed mute = "

    .line 134
    .line 135
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    .line 137
    .line 138
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 139
    .line 140
    .line 141
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object p2

    .line 145
    invoke-static {v2, p2}, Lcom/mbridge/msdk/foundation/tools/o0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    .line 147
    .line 148
    goto :goto_2

    .line 149
    :cond_2
    const-string p2, "instanceId is not player"

    .line 150
    .line 151
    invoke-virtual {p0, p1, p2}, Lcom/mbridge/msdk/video/bt/component/a;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 152
    .line 153
    .line 154
    const-string p2, "playerGetMuteState failed instanceId is not player"

    .line 155
    .line 156
    invoke-static {v2, p2}, Lcom/mbridge/msdk/foundation/tools/o0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    .line 158
    .line 159
    goto :goto_2

    .line 160
    :cond_3
    const-string p2, "instanceId not exist"

    .line 161
    .line 162
    invoke-virtual {p0, p1, p2}, Lcom/mbridge/msdk/video/bt/component/a;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 163
    .line 164
    .line 165
    const-string p2, "playerGetMuteState failed instanceId not exist"

    .line 166
    .line 167
    invoke-static {v2, p2}, Lcom/mbridge/msdk/foundation/tools/o0;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 168
    .line 169
    .line 170
    goto :goto_2

    .line 171
    :goto_1
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    move-result-object v0

    .line 175
    invoke-virtual {p0, p1, v0}, Lcom/mbridge/msdk/video/bt/component/a;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 176
    .line 177
    .line 178
    new-instance p1, Ljava/lang/StringBuilder;

    .line 179
    .line 180
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 181
    .line 182
    .line 183
    const-string v0, "playerGetMuteState failed: "

    .line 184
    .line 185
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    .line 187
    .line 188
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 189
    .line 190
    .line 191
    move-result-object p2

    .line 192
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 193
    .line 194
    .line 195
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 196
    .line 197
    .line 198
    move-result-object p1

    .line 199
    invoke-static {v2, p1}, Lcom/mbridge/msdk/foundation/tools/o0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    .line 201
    .line 202
    :goto_2
    return-void
.end method

.method public t(Ljava/lang/Object;Lorg/json/JSONObject;)V
    .locals 5

    .line 1
    const-string v0, "OperateViews"

    .line 2
    .line 3
    :try_start_0
    const-string v1, "unitId"

    .line 4
    .line 5
    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    const-string v2, "id"

    .line 10
    .line 11
    invoke-virtual {p2, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    invoke-virtual {p0, v2}, Lcom/mbridge/msdk/video/bt/component/a;->e(Ljava/lang/String;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 20
    .line 21
    .line 22
    move-result v4

    .line 23
    if-eqz v4, :cond_0

    .line 24
    .line 25
    move-object v4, p1

    .line 26
    check-cast v4, Lcom/mbridge/msdk/mbsignalcommon/windvane/a;

    .line 27
    .line 28
    iget-object v4, v4, Lcom/mbridge/msdk/mbsignalcommon/windvane/a;->b:Lcom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

    .line 29
    .line 30
    if-eqz v4, :cond_0

    .line 31
    .line 32
    invoke-virtual {v4}, Lcom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;->getRid()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    goto :goto_0

    .line 37
    :catchall_0
    move-exception p2

    .line 38
    goto :goto_1

    .line 39
    :cond_0
    :goto_0
    const-string v4, "data"

    .line 40
    .line 41
    invoke-virtual {p2, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 42
    .line 43
    .line 44
    move-result-object p2

    .line 45
    if-nez p2, :cond_1

    .line 46
    .line 47
    const-string p2, "data is empty"

    .line 48
    .line 49
    invoke-virtual {p0, p1, p2}, Lcom/mbridge/msdk/video/bt/component/a;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    return-void

    .line 53
    :cond_1
    invoke-virtual {p0, v1, v3}, Lcom/mbridge/msdk/video/bt/component/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/util/LinkedHashMap;

    .line 54
    .line 55
    .line 56
    move-result-object p2

    .line 57
    invoke-virtual {p2, v2}, Ljava/util/AbstractMap;->containsKey(Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    move-result v1

    .line 61
    if-eqz v1, :cond_4

    .line 62
    .line 63
    invoke-virtual {p2, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object p2

    .line 67
    check-cast p2, Landroid/view/View;

    .line 68
    .line 69
    instance-of v1, p2, Lcom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;

    .line 70
    .line 71
    if-eqz v1, :cond_3

    .line 72
    .line 73
    check-cast p2, Lcom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;

    .line 74
    .line 75
    invoke-virtual {p2}, Lcom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;->playMute()Z

    .line 76
    .line 77
    .line 78
    move-result p2

    .line 79
    if-eqz p2, :cond_2

    .line 80
    .line 81
    invoke-virtual {p0, p1, v2}, Lcom/mbridge/msdk/video/bt/component/a;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    const-string p2, "playerMute success"

    .line 85
    .line 86
    invoke-static {v0, p2}, Lcom/mbridge/msdk/foundation/tools/o0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    goto :goto_2

    .line 90
    :cond_2
    const-string p2, "set mute failed"

    .line 91
    .line 92
    invoke-virtual {p0, p1, p2}, Lcom/mbridge/msdk/video/bt/component/a;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    const-string p2, "playerMute failed set mute failed"

    .line 96
    .line 97
    invoke-static {v0, p2}, Lcom/mbridge/msdk/foundation/tools/o0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    goto :goto_2

    .line 101
    :cond_3
    const-string p2, "instanceId is not player"

    .line 102
    .line 103
    invoke-virtual {p0, p1, p2}, Lcom/mbridge/msdk/video/bt/component/a;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    const-string p2, "playerMute failed: instanceId is not player"

    .line 107
    .line 108
    invoke-static {v0, p2}, Lcom/mbridge/msdk/foundation/tools/o0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    goto :goto_2

    .line 112
    :cond_4
    const-string p2, "instanceId not exist"

    .line 113
    .line 114
    invoke-virtual {p0, p1, p2}, Lcom/mbridge/msdk/video/bt/component/a;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    const-string p2, "playerMute failed: instanceId is not exist"

    .line 118
    .line 119
    invoke-static {v0, p2}, Lcom/mbridge/msdk/foundation/tools/o0;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 120
    .line 121
    .line 122
    goto :goto_2

    .line 123
    :goto_1
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v1

    .line 127
    invoke-virtual {p0, p1, v1}, Lcom/mbridge/msdk/video/bt/component/a;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    new-instance p1, Ljava/lang/StringBuilder;

    .line 131
    .line 132
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 133
    .line 134
    .line 135
    const-string v1, "playerMute failed: "

    .line 136
    .line 137
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    .line 139
    .line 140
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object p2

    .line 144
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    .line 146
    .line 147
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object p1

    .line 151
    invoke-static {v0, p1}, Lcom/mbridge/msdk/foundation/tools/o0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    .line 153
    .line 154
    :goto_2
    return-void
.end method

.method public u(Ljava/lang/Object;Lorg/json/JSONObject;)V
    .locals 5

    .line 1
    const-string v0, "OperateViews"

    .line 2
    .line 3
    :try_start_0
    const-string v1, "unitId"

    .line 4
    .line 5
    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    const-string v2, "id"

    .line 10
    .line 11
    invoke-virtual {p2, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    invoke-virtual {p0, v2}, Lcom/mbridge/msdk/video/bt/component/a;->e(Ljava/lang/String;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 20
    .line 21
    .line 22
    move-result v4

    .line 23
    if-eqz v4, :cond_0

    .line 24
    .line 25
    move-object v4, p1

    .line 26
    check-cast v4, Lcom/mbridge/msdk/mbsignalcommon/windvane/a;

    .line 27
    .line 28
    iget-object v4, v4, Lcom/mbridge/msdk/mbsignalcommon/windvane/a;->b:Lcom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

    .line 29
    .line 30
    if-eqz v4, :cond_0

    .line 31
    .line 32
    invoke-virtual {v4}, Lcom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;->getRid()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    goto :goto_0

    .line 37
    :catchall_0
    move-exception p2

    .line 38
    goto :goto_1

    .line 39
    :cond_0
    :goto_0
    const-string v4, "data"

    .line 40
    .line 41
    invoke-virtual {p2, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 42
    .line 43
    .line 44
    move-result-object p2

    .line 45
    if-nez p2, :cond_1

    .line 46
    .line 47
    const-string p2, "data is empty"

    .line 48
    .line 49
    invoke-virtual {p0, p1, p2}, Lcom/mbridge/msdk/video/bt/component/a;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    return-void

    .line 53
    :cond_1
    invoke-virtual {p0, v1, v3}, Lcom/mbridge/msdk/video/bt/component/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/util/LinkedHashMap;

    .line 54
    .line 55
    .line 56
    move-result-object p2

    .line 57
    invoke-virtual {p2, v2}, Ljava/util/AbstractMap;->containsKey(Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    move-result v1

    .line 61
    if-eqz v1, :cond_3

    .line 62
    .line 63
    invoke-virtual {p2, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object p2

    .line 67
    check-cast p2, Landroid/view/View;

    .line 68
    .line 69
    instance-of v1, p2, Lcom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;

    .line 70
    .line 71
    if-eqz v1, :cond_2

    .line 72
    .line 73
    check-cast p2, Lcom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;

    .line 74
    .line 75
    invoke-virtual {p2}, Lcom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;->pause()V

    .line 76
    .line 77
    .line 78
    invoke-virtual {p0, p1, v2}, Lcom/mbridge/msdk/video/bt/component/a;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    const-string p2, "playerPause success"

    .line 82
    .line 83
    invoke-static {v0, p2}, Lcom/mbridge/msdk/foundation/tools/o0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    goto :goto_2

    .line 87
    :cond_2
    const-string p2, "instanceId is not player"

    .line 88
    .line 89
    invoke-virtual {p0, p1, p2}, Lcom/mbridge/msdk/video/bt/component/a;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    new-instance p2, Ljava/lang/StringBuilder;

    .line 93
    .line 94
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 95
    .line 96
    .line 97
    const-string v1, "playerPause failed instanceId is not player instanceId = "

    .line 98
    .line 99
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object p2

    .line 109
    invoke-static {v0, p2}, Lcom/mbridge/msdk/foundation/tools/o0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    goto :goto_2

    .line 113
    :cond_3
    const-string p2, "instanceId not exit"

    .line 114
    .line 115
    invoke-virtual {p0, p1, p2}, Lcom/mbridge/msdk/video/bt/component/a;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    new-instance p2, Ljava/lang/StringBuilder;

    .line 119
    .line 120
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 121
    .line 122
    .line 123
    const-string v1, "playerPause failed instanceId not exit instanceId = "

    .line 124
    .line 125
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object p2

    .line 135
    invoke-static {v0, p2}, Lcom/mbridge/msdk/foundation/tools/o0;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 136
    .line 137
    .line 138
    goto :goto_2

    .line 139
    :goto_1
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object v1

    .line 143
    invoke-virtual {p0, p1, v1}, Lcom/mbridge/msdk/video/bt/component/a;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 144
    .line 145
    .line 146
    new-instance p1, Ljava/lang/StringBuilder;

    .line 147
    .line 148
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 149
    .line 150
    .line 151
    const-string v1, "playerPause failed: "

    .line 152
    .line 153
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    .line 155
    .line 156
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object p2

    .line 160
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    .line 162
    .line 163
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object p1

    .line 167
    invoke-static {v0, p1}, Lcom/mbridge/msdk/foundation/tools/o0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    .line 169
    .line 170
    :goto_2
    return-void
.end method

.method public v(Ljava/lang/Object;Lorg/json/JSONObject;)V
    .locals 5

    .line 1
    const-string v0, "OperateViews"

    .line 2
    .line 3
    :try_start_0
    const-string v1, "unitId"

    .line 4
    .line 5
    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    const-string v2, "id"

    .line 10
    .line 11
    invoke-virtual {p2, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    invoke-virtual {p0, v2}, Lcom/mbridge/msdk/video/bt/component/a;->e(Ljava/lang/String;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 20
    .line 21
    .line 22
    move-result v4

    .line 23
    if-eqz v4, :cond_0

    .line 24
    .line 25
    move-object v4, p1

    .line 26
    check-cast v4, Lcom/mbridge/msdk/mbsignalcommon/windvane/a;

    .line 27
    .line 28
    iget-object v4, v4, Lcom/mbridge/msdk/mbsignalcommon/windvane/a;->b:Lcom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

    .line 29
    .line 30
    if-eqz v4, :cond_0

    .line 31
    .line 32
    invoke-virtual {v4}, Lcom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;->getRid()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    goto :goto_0

    .line 37
    :catchall_0
    move-exception p2

    .line 38
    goto/16 :goto_1

    .line 39
    .line 40
    :cond_0
    :goto_0
    const-string v4, "data"

    .line 41
    .line 42
    invoke-virtual {p2, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 43
    .line 44
    .line 45
    move-result-object p2

    .line 46
    if-nez p2, :cond_1

    .line 47
    .line 48
    const-string p2, "data is empty"

    .line 49
    .line 50
    invoke-virtual {p0, p1, p2}, Lcom/mbridge/msdk/video/bt/component/a;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    return-void

    .line 54
    :cond_1
    invoke-virtual {p0, v1, v3}, Lcom/mbridge/msdk/video/bt/component/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/util/LinkedHashMap;

    .line 55
    .line 56
    .line 57
    move-result-object p2

    .line 58
    invoke-virtual {p2, v2}, Ljava/util/AbstractMap;->containsKey(Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    move-result v4

    .line 62
    if-eqz v4, :cond_4

    .line 63
    .line 64
    invoke-virtual {p2, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object p2

    .line 68
    check-cast p2, Landroid/view/View;

    .line 69
    .line 70
    instance-of v4, p2, Lcom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;

    .line 71
    .line 72
    if-eqz v4, :cond_3

    .line 73
    .line 74
    check-cast p2, Lcom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;

    .line 75
    .line 76
    invoke-direct {p0, v1, v3}, Lcom/mbridge/msdk/video/bt/component/a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/mbridge/msdk/video/bt/module/MBridgeBTContainer;

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    if-eqz v1, :cond_2

    .line 81
    .line 82
    invoke-virtual {v1}, Lcom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->getAdEvents()Lcom/iab/omid/library/mmadbridge/adsession/a;

    .line 83
    .line 84
    .line 85
    move-result-object v3

    .line 86
    invoke-virtual {p2, v3}, Lcom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;->setAdEvents(Lcom/iab/omid/library/mmadbridge/adsession/a;)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {v1}, Lcom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->getAdSession()Lcom/iab/omid/library/mmadbridge/adsession/b;

    .line 90
    .line 91
    .line 92
    move-result-object v3

    .line 93
    invoke-virtual {p2, v3}, Lcom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;->setAdSession(Lcom/iab/omid/library/mmadbridge/adsession/b;)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {v1}, Lcom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->getVideoEvents()Lcom/iab/omid/library/mmadbridge/adsession/media/a;

    .line 97
    .line 98
    .line 99
    move-result-object v1

    .line 100
    invoke-virtual {p2, v1}, Lcom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;->setVideoEvents(Lcom/iab/omid/library/mmadbridge/adsession/media/a;)V

    .line 101
    .line 102
    .line 103
    :cond_2
    invoke-virtual {p2}, Lcom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;->play()V

    .line 104
    .line 105
    .line 106
    invoke-virtual {p0, p1, v2}, Lcom/mbridge/msdk/video/bt/component/a;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    const-string p2, "playerPlay success"

    .line 110
    .line 111
    invoke-static {v0, p2}, Lcom/mbridge/msdk/foundation/tools/o0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    goto :goto_2

    .line 115
    :cond_3
    const-string p2, "instanceId is not player"

    .line 116
    .line 117
    invoke-virtual {p0, p1, p2}, Lcom/mbridge/msdk/video/bt/component/a;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    new-instance p2, Ljava/lang/StringBuilder;

    .line 121
    .line 122
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 123
    .line 124
    .line 125
    const-string v1, "playerPlay failed instanceId is not player instanceId = "

    .line 126
    .line 127
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    .line 129
    .line 130
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    .line 132
    .line 133
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object p2

    .line 137
    invoke-static {v0, p2}, Lcom/mbridge/msdk/foundation/tools/o0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    .line 139
    .line 140
    goto :goto_2

    .line 141
    :cond_4
    const-string p2, "instanceId not exit"

    .line 142
    .line 143
    invoke-virtual {p0, p1, p2}, Lcom/mbridge/msdk/video/bt/component/a;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 144
    .line 145
    .line 146
    new-instance p2, Ljava/lang/StringBuilder;

    .line 147
    .line 148
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 149
    .line 150
    .line 151
    const-string v1, "playerPlay failed instanceId not exit instanceId = "

    .line 152
    .line 153
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    .line 155
    .line 156
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    .line 158
    .line 159
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object p2

    .line 163
    invoke-static {v0, p2}, Lcom/mbridge/msdk/foundation/tools/o0;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 164
    .line 165
    .line 166
    goto :goto_2

    .line 167
    :goto_1
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object v1

    .line 171
    invoke-virtual {p0, p1, v1}, Lcom/mbridge/msdk/video/bt/component/a;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 172
    .line 173
    .line 174
    new-instance p1, Ljava/lang/StringBuilder;

    .line 175
    .line 176
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 177
    .line 178
    .line 179
    const-string v1, "playerPlay failed: "

    .line 180
    .line 181
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    .line 183
    .line 184
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 185
    .line 186
    .line 187
    move-result-object p2

    .line 188
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    .line 190
    .line 191
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 192
    .line 193
    .line 194
    move-result-object p1

    .line 195
    invoke-static {v0, p1}, Lcom/mbridge/msdk/foundation/tools/o0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    .line 197
    .line 198
    :goto_2
    return-void
.end method

.method public w(Ljava/lang/Object;Lorg/json/JSONObject;)V
    .locals 5

    .line 1
    const-string v0, "OperateViews"

    .line 2
    .line 3
    :try_start_0
    const-string v1, "unitId"

    .line 4
    .line 5
    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    const-string v2, "id"

    .line 10
    .line 11
    invoke-virtual {p2, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    invoke-virtual {p0, v2}, Lcom/mbridge/msdk/video/bt/component/a;->e(Ljava/lang/String;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 20
    .line 21
    .line 22
    move-result v4

    .line 23
    if-eqz v4, :cond_0

    .line 24
    .line 25
    move-object v4, p1

    .line 26
    check-cast v4, Lcom/mbridge/msdk/mbsignalcommon/windvane/a;

    .line 27
    .line 28
    iget-object v4, v4, Lcom/mbridge/msdk/mbsignalcommon/windvane/a;->b:Lcom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

    .line 29
    .line 30
    if-eqz v4, :cond_0

    .line 31
    .line 32
    invoke-virtual {v4}, Lcom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;->getRid()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    goto :goto_0

    .line 37
    :catchall_0
    move-exception p2

    .line 38
    goto :goto_1

    .line 39
    :cond_0
    :goto_0
    const-string v4, "data"

    .line 40
    .line 41
    invoke-virtual {p2, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 42
    .line 43
    .line 44
    move-result-object p2

    .line 45
    if-nez p2, :cond_1

    .line 46
    .line 47
    const-string p2, "data is empty"

    .line 48
    .line 49
    invoke-virtual {p0, p1, p2}, Lcom/mbridge/msdk/video/bt/component/a;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    return-void

    .line 53
    :cond_1
    invoke-virtual {p0, v1, v3}, Lcom/mbridge/msdk/video/bt/component/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/util/LinkedHashMap;

    .line 54
    .line 55
    .line 56
    move-result-object p2

    .line 57
    invoke-virtual {p2, v2}, Ljava/util/AbstractMap;->containsKey(Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    move-result v1

    .line 61
    if-eqz v1, :cond_3

    .line 62
    .line 63
    invoke-virtual {p2, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object p2

    .line 67
    check-cast p2, Landroid/view/View;

    .line 68
    .line 69
    instance-of v1, p2, Lcom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;

    .line 70
    .line 71
    if-eqz v1, :cond_2

    .line 72
    .line 73
    check-cast p2, Lcom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;

    .line 74
    .line 75
    invoke-virtual {p2}, Lcom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;->resume()V

    .line 76
    .line 77
    .line 78
    invoke-virtual {p0, p1, v2}, Lcom/mbridge/msdk/video/bt/component/a;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    const-string p2, "playerResume success"

    .line 82
    .line 83
    invoke-static {v0, p2}, Lcom/mbridge/msdk/foundation/tools/o0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    goto :goto_2

    .line 87
    :cond_2
    const-string p2, "instanceId is not player"

    .line 88
    .line 89
    invoke-virtual {p0, p1, p2}, Lcom/mbridge/msdk/video/bt/component/a;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    new-instance p2, Ljava/lang/StringBuilder;

    .line 93
    .line 94
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 95
    .line 96
    .line 97
    const-string v1, "playerResume failed instanceId is not player instanceId = "

    .line 98
    .line 99
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object p2

    .line 109
    invoke-static {v0, p2}, Lcom/mbridge/msdk/foundation/tools/o0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    goto :goto_2

    .line 113
    :cond_3
    const-string p2, "instanceId not exit"

    .line 114
    .line 115
    invoke-virtual {p0, p1, p2}, Lcom/mbridge/msdk/video/bt/component/a;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    new-instance p2, Ljava/lang/StringBuilder;

    .line 119
    .line 120
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 121
    .line 122
    .line 123
    const-string v1, "playerResume failed instanceId not exit instanceId = "

    .line 124
    .line 125
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object p2

    .line 135
    invoke-static {v0, p2}, Lcom/mbridge/msdk/foundation/tools/o0;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 136
    .line 137
    .line 138
    goto :goto_2

    .line 139
    :goto_1
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object v1

    .line 143
    invoke-virtual {p0, p1, v1}, Lcom/mbridge/msdk/video/bt/component/a;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 144
    .line 145
    .line 146
    new-instance p1, Ljava/lang/StringBuilder;

    .line 147
    .line 148
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 149
    .line 150
    .line 151
    const-string v1, "playerResume failed: "

    .line 152
    .line 153
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    .line 155
    .line 156
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object p2

    .line 160
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    .line 162
    .line 163
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object p1

    .line 167
    invoke-static {v0, p1}, Lcom/mbridge/msdk/foundation/tools/o0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    .line 169
    .line 170
    :goto_2
    return-void
.end method

.method public x(Ljava/lang/Object;Lorg/json/JSONObject;)V
    .locals 1

    .line 1
    :try_start_0
    const-string v0, "unitId"

    .line 2
    .line 3
    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    const-string v0, "id"

    .line 7
    .line 8
    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    const-string v0, "data"

    .line 12
    .line 13
    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 14
    .line 15
    .line 16
    move-result-object p2

    .line 17
    if-nez p2, :cond_0

    .line 18
    .line 19
    const-string p2, "data is empty"

    .line 20
    .line 21
    invoke-virtual {p0, p1, p2}, Lcom/mbridge/msdk/video/bt/component/a;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    return-void

    .line 25
    :catchall_0
    move-exception p2

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    const-string p2, "android mediaPlayer not support setScaleType"

    .line 28
    .line 29
    invoke-virtual {p0, p1, p2}, Lcom/mbridge/msdk/video/bt/component/a;->a(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    .line 31
    .line 32
    goto :goto_1

    .line 33
    :goto_0
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p2

    .line 37
    invoke-virtual {p0, p1, p2}, Lcom/mbridge/msdk/video/bt/component/a;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    :goto_1
    return-void
.end method

.method public y(Ljava/lang/Object;Lorg/json/JSONObject;)V
    .locals 1

    .line 1
    :try_start_0
    const-string v0, "unitId"

    .line 2
    .line 3
    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    const-string v0, "data"

    .line 7
    .line 8
    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 9
    .line 10
    .line 11
    move-result-object p2

    .line 12
    if-nez p2, :cond_0

    .line 13
    .line 14
    const-string p2, "data is empty"

    .line 15
    .line 16
    invoke-virtual {p0, p1, p2}, Lcom/mbridge/msdk/video/bt/component/a;->a(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :catchall_0
    move-exception p2

    .line 21
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p2

    .line 25
    invoke-virtual {p0, p1, p2}, Lcom/mbridge/msdk/video/bt/component/a;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    :cond_0
    return-void
.end method

.method public z(Ljava/lang/Object;Lorg/json/JSONObject;)V
    .locals 5

    .line 1
    const-string v0, "OperateViews"

    .line 2
    .line 3
    :try_start_0
    const-string v1, "unitId"

    .line 4
    .line 5
    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    const-string v2, "id"

    .line 10
    .line 11
    invoke-virtual {p2, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    invoke-virtual {p0, v2}, Lcom/mbridge/msdk/video/bt/component/a;->e(Ljava/lang/String;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 20
    .line 21
    .line 22
    move-result v4

    .line 23
    if-eqz v4, :cond_0

    .line 24
    .line 25
    move-object v4, p1

    .line 26
    check-cast v4, Lcom/mbridge/msdk/mbsignalcommon/windvane/a;

    .line 27
    .line 28
    iget-object v4, v4, Lcom/mbridge/msdk/mbsignalcommon/windvane/a;->b:Lcom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

    .line 29
    .line 30
    if-eqz v4, :cond_0

    .line 31
    .line 32
    invoke-virtual {v4}, Lcom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;->getRid()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    goto :goto_0

    .line 37
    :catchall_0
    move-exception p2

    .line 38
    goto :goto_1

    .line 39
    :cond_0
    :goto_0
    const-string v4, "data"

    .line 40
    .line 41
    invoke-virtual {p2, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 42
    .line 43
    .line 44
    move-result-object p2

    .line 45
    if-nez p2, :cond_1

    .line 46
    .line 47
    const-string p2, "data is empty"

    .line 48
    .line 49
    invoke-virtual {p0, p1, p2}, Lcom/mbridge/msdk/video/bt/component/a;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    return-void

    .line 53
    :cond_1
    invoke-virtual {p0, v1, v3}, Lcom/mbridge/msdk/video/bt/component/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/util/LinkedHashMap;

    .line 54
    .line 55
    .line 56
    move-result-object p2

    .line 57
    invoke-virtual {p2, v2}, Ljava/util/AbstractMap;->containsKey(Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    move-result v1

    .line 61
    if-eqz v1, :cond_3

    .line 62
    .line 63
    invoke-virtual {p2, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object p2

    .line 67
    check-cast p2, Landroid/view/View;

    .line 68
    .line 69
    instance-of v1, p2, Lcom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;

    .line 70
    .line 71
    if-eqz v1, :cond_2

    .line 72
    .line 73
    check-cast p2, Lcom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;

    .line 74
    .line 75
    invoke-virtual {p2}, Lcom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;->stop()V

    .line 76
    .line 77
    .line 78
    invoke-virtual {p0, p1, v2}, Lcom/mbridge/msdk/video/bt/component/a;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    const-string p2, "playerStop success"

    .line 82
    .line 83
    invoke-static {v0, p2}, Lcom/mbridge/msdk/foundation/tools/o0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    goto :goto_2

    .line 87
    :cond_2
    const-string p2, "instanceId is not player"

    .line 88
    .line 89
    invoke-virtual {p0, p1, p2}, Lcom/mbridge/msdk/video/bt/component/a;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    new-instance p2, Ljava/lang/StringBuilder;

    .line 93
    .line 94
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 95
    .line 96
    .line 97
    const-string v1, "playerStop failed instanceId is not player instanceId = "

    .line 98
    .line 99
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object p2

    .line 109
    invoke-static {v0, p2}, Lcom/mbridge/msdk/foundation/tools/o0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    goto :goto_2

    .line 113
    :cond_3
    const-string p2, "instanceId not exit"

    .line 114
    .line 115
    invoke-virtual {p0, p1, p2}, Lcom/mbridge/msdk/video/bt/component/a;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    new-instance p2, Ljava/lang/StringBuilder;

    .line 119
    .line 120
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 121
    .line 122
    .line 123
    const-string v1, "playerStop failed instanceId not exit instanceId = "

    .line 124
    .line 125
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object p2

    .line 135
    invoke-static {v0, p2}, Lcom/mbridge/msdk/foundation/tools/o0;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 136
    .line 137
    .line 138
    goto :goto_2

    .line 139
    :goto_1
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object v1

    .line 143
    invoke-virtual {p0, p1, v1}, Lcom/mbridge/msdk/video/bt/component/a;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 144
    .line 145
    .line 146
    new-instance p1, Ljava/lang/StringBuilder;

    .line 147
    .line 148
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 149
    .line 150
    .line 151
    const-string v1, "playerStop failed: "

    .line 152
    .line 153
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    .line 155
    .line 156
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object p2

    .line 160
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    .line 162
    .line 163
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object p1

    .line 167
    invoke-static {v0, p1}, Lcom/mbridge/msdk/foundation/tools/o0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    .line 169
    .line 170
    :goto_2
    return-void
.end method
