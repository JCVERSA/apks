.class public Lcom/mgmi/f/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String; = "com.mgmi.f.b"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a()I
    .locals 1

    .line 122
    invoke-static {}, Lcom/mgmi/platform/b/b;->a()Lcom/mgmi/platform/b/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mgmi/platform/b/b;->i()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static a(Lcom/mgmi/ads/api/a/d;)I
    .locals 2

    if-eqz p0, :cond_1

    .line 466
    const-string v0, "ADS_TYPE_SLIDEBANNER"

    invoke-interface {p0}, Lcom/mgmi/ads/api/a/d;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ADS_BANNER"

    .line 467
    invoke-interface {p0}, Lcom/mgmi/ads/api/a/d;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ADS_TYPE_PAUSED"

    .line 468
    invoke-interface {p0}, Lcom/mgmi/ads/api/a/d;->j()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/16 p0, 0x12

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private static a(Lcom/mgmi/ads/api/a/d;Lcom/mgmi/platform/view/a;)I
    .locals 3

    const/16 v0, 0x12

    if-eqz p0, :cond_1

    .line 469
    const-string v1, "ADS_TYPE_SLIDEBANNER"

    invoke-interface {p0}, Lcom/mgmi/ads/api/a/d;->j()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "ADS_BANNER"

    .line 470
    invoke-interface {p0}, Lcom/mgmi/ads/api/a/d;->j()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "ADS_TYPE_PAUSED"

    .line 471
    invoke-interface {p0}, Lcom/mgmi/ads/api/a/d;->j()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "ADS_VIDEO_WIDGET_CORNNER"

    .line 472
    invoke-interface {p0}, Lcom/mgmi/ads/api/a/d;->j()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    return v0

    :cond_1
    if-eqz p1, :cond_3

    .line 473
    invoke-virtual {p1}, Lcom/mgmi/platform/view/a;->s()I

    move-result p0

    const/16 v1, 0x64

    if-eq p0, v1, :cond_3

    invoke-virtual {p1}, Lcom/mgmi/platform/view/a;->s()I

    move-result p0

    const/4 v1, 0x2

    if-eq p0, v1, :cond_3

    invoke-virtual {p1}, Lcom/mgmi/platform/view/a;->s()I

    move-result p0

    const/4 v1, 0x1

    if-eq p0, v1, :cond_3

    invoke-virtual {p1}, Lcom/mgmi/platform/view/a;->s()I

    move-result p0

    const/16 p1, 0x9

    if-ne p0, p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    return p0

    :cond_3
    :goto_0
    return v0
.end method

.method public static a(Lcom/mgmi/g/a;)Ljava/lang/String;
    .locals 4

    .line 64
    invoke-virtual {p0}, Lcom/mgmi/g/a;->s()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/mgmi/g/a;->s()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 65
    invoke-virtual {p0}, Lcom/mgmi/g/a;->s()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 66
    :cond_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 67
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 68
    :try_start_0
    const-string v2, "channellive"

    invoke-virtual {p0}, Lcom/mgmi/g/a;->t()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 69
    const-string v2, "id"

    invoke-virtual {p0}, Lcom/mgmi/g/a;->h()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 70
    const-string v2, "activity_id"

    invoke-virtual {p0}, Lcom/mgmi/g/a;->a()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 71
    const-string v2, "camera_id"

    invoke-virtual {p0}, Lcom/mgmi/g/a;->h()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 72
    const-string v2, "channel_id"

    invoke-virtual {p0}, Lcom/mgmi/g/a;->m()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 73
    const-string v2, "hid"

    invoke-virtual {p0}, Lcom/mgmi/g/a;->l()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 74
    const-string v2, "vip"

    invoke-static {}, Lcom/mgmi/f/f;->i()Z

    move-result v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 75
    const-string v2, "ispay"

    invoke-virtual {p0}, Lcom/mgmi/g/a;->q()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 76
    const-string v2, "ispreview"

    invoke-virtual {p0}, Lcom/mgmi/g/a;->r()I

    move-result p0

    invoke-virtual {v0, v2, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 77
    const-string p0, "v"

    invoke-virtual {v1, p0, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 78
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 79
    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static a(Lcom/mgmi/g/a;Lcom/mgmi/platform/view/a;)Ljava/lang/String;
    .locals 3

    .line 474
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 475
    :try_start_0
    const-string v1, "mid"

    invoke-virtual {p0}, Lcom/mgmi/g/a;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 476
    const-string v1, "pid"

    if-eqz p1, :cond_0

    :try_start_1
    invoke-virtual {p1}, Lcom/mgmi/platform/view/a;->c()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 477
    invoke-virtual {p1}, Lcom/mgmi/platform/view/a;->c()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    .line 478
    :cond_0
    invoke-virtual {p0}, Lcom/mgmi/g/a;->g()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 479
    :goto_0
    const-string p1, "cnt"

    invoke-virtual {p0}, Lcom/mgmi/g/a;->e()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 480
    const-string p1, "nid"

    invoke-virtual {p0}, Lcom/mgmi/g/a;->F()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 481
    const-string p1, "npos"

    invoke-virtual {p0}, Lcom/mgmi/g/a;->E()I

    move-result p0

    invoke-virtual {v0, p1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 482
    :goto_1
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 483
    :goto_2
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static a(Lcom/mgmi/model/n;)Ljava/lang/String;
    .locals 3

    if-eqz p0, :cond_0

    .line 80
    invoke-virtual {p0}, Lcom/mgmi/model/n;->g()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 81
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 82
    :try_start_0
    const-string v1, "branch"

    invoke-virtual {p0}, Lcom/mgmi/model/n;->g()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 83
    const-string v1, "reload"

    invoke-virtual {p0}, Lcom/mgmi/model/n;->h()I

    move-result p0

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 84
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 85
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static a(Ljava/lang/String;Landroid/content/Context;Lcom/mgmi/g/a;Lcom/mgmi/platform/view/a;IIILcom/mgmi/ads/api/a/d;)Ljava/lang/String;
    .locals 8

    .line 86
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 87
    :try_start_0
    const-string v1, "c"

    invoke-static {p1}, Lcom/mgmi/f/b;->a(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 88
    const-string v1, "permission"

    invoke-static {p1}, Li2d;->a(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 89
    const-string v1, "dev_param"

    invoke-static {p1}, Lu7d;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 90
    const-string v1, "m"

    const/4 v6, 0x1

    move-object v2, p0

    move v3, p4

    move v4, p5

    move v5, p6

    move-object v7, p3

    invoke-static/range {v2 .. v7}, Lcom/mgmi/f/b;->a(Ljava/lang/String;IIIILcom/mgmi/platform/view/a;)Lorg/json/JSONObject;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 91
    const-string p0, "u"

    invoke-static {p2}, Lcom/mgmi/f/b;->c(Lcom/mgmi/g/a;)Lorg/json/JSONObject;

    move-result-object p4

    invoke-virtual {v0, p0, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 92
    const-string p0, "oversea"

    invoke-static {}, Lcom/mgmi/platform/b/b;->a()Lcom/mgmi/platform/b/b;

    move-result-object p4

    invoke-virtual {p4}, Lcom/mgmi/platform/b/b;->c()I

    move-result p4

    invoke-virtual {v0, p0, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 93
    const-string p0, "region"

    invoke-static {}, Lcom/mgmi/platform/b/b;->a()Lcom/mgmi/platform/b/b;

    move-result-object p4

    invoke-virtual {p4}, Lcom/mgmi/platform/b/b;->c()I

    move-result p4

    invoke-virtual {v0, p0, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 94
    const-string p0, "iplay"

    invoke-static {p7, p3}, Lcom/mgmi/f/b;->a(Lcom/mgmi/ads/api/a/d;Lcom/mgmi/platform/view/a;)I

    move-result p3

    invoke-virtual {v0, p0, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 95
    const-string p0, "parameter"

    const-wide/32 p3, 0x4088fff

    invoke-virtual {v0, p0, p3, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 96
    invoke-static {}, Lcom/mgmi/platform/b;->a()Lcom/mgmi/platform/b;

    move-result-object p0

    invoke-virtual {p0}, Lcom/mgmi/platform/b;->h()Z

    move-result p0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const-string p3, "float_ex"

    if-eqz p0, :cond_0

    const/4 p0, 0x5

    .line 97
    :try_start_1
    invoke-virtual {v0, p3, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto :goto_0

    :catch_0
    move-exception p0

    goto/16 :goto_6

    :cond_0
    const/4 p0, 0x4

    .line 98
    invoke-virtual {v0, p3, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 99
    :goto_0
    const-string p0, "sdkversion"

    invoke-static {}, Lcom/mgmi/platform/b/b;->a()Lcom/mgmi/platform/b/b;

    move-result-object p3

    invoke-virtual {p3}, Lcom/mgmi/platform/b/b;->b()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p0, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 100
    const-string p0, "ch"

    invoke-static {}, Lcom/mgmi/f/f;->m()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p0, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 101
    const-string p0, "from"

    invoke-virtual {p2}, Lcom/mgmi/g/a;->u()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p0, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 102
    const-string p0, "source"

    invoke-virtual {p2}, Lcom/mgmi/g/a;->n()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p0, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 103
    const-string p0, "fpn"

    invoke-static {}, Lcom/mgmi/f/f;->a()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p0, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 104
    const-string p0, "rdc"

    invoke-virtual {p2}, Lcom/mgmi/g/a;->v()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p0, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 105
    const-string p0, "rch"

    invoke-virtual {p2}, Lcom/mgmi/g/a;->w()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p0, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 106
    const-string p0, "auid"

    invoke-static {p2}, Lcom/mgmi/f/b;->f(Lcom/mgmi/g/a;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 107
    invoke-static {v0}, Lcom/mgmi/f/b;->a(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    .line 108
    const-string p0, "icf"

    invoke-static {}, Lcom/mgmi/f/b;->a()I

    move-result p2

    invoke-virtual {v0, p0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 109
    :try_start_2
    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    .line 110
    const-string p2, "dx_ip"

    invoke-static {p1}, Lcom/mgmi/thirdparty/IpdxManager;->a(Landroid/content/Context;)Lcom/mgmi/thirdparty/IpdxManager;

    move-result-object p3

    iget-object p3, p3, Lcom/mgmi/thirdparty/IpdxManager;->a:Lcom/mgmi/thirdparty/IpdxManager$IpdxBean;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    const-string p4, ""

    if-nez p3, :cond_1

    move-object p3, p4

    goto :goto_1

    :cond_1
    :try_start_3
    invoke-static {p1}, Lcom/mgmi/thirdparty/IpdxManager;->a(Landroid/content/Context;)Lcom/mgmi/thirdparty/IpdxManager;

    move-result-object p3

    iget-object p3, p3, Lcom/mgmi/thirdparty/IpdxManager;->a:Lcom/mgmi/thirdparty/IpdxManager$IpdxBean;

    iget-object p3, p3, Lcom/mgmi/thirdparty/IpdxManager$IpdxBean;->ip:Ljava/lang/String;

    :goto_1
    invoke-virtual {p0, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 111
    const-string p2, "dx_geo"

    invoke-static {p1}, Lcom/mgmi/thirdparty/IpdxManager;->a(Landroid/content/Context;)Lcom/mgmi/thirdparty/IpdxManager;

    move-result-object p3

    iget-object p3, p3, Lcom/mgmi/thirdparty/IpdxManager;->a:Lcom/mgmi/thirdparty/IpdxManager$IpdxBean;

    if-nez p3, :cond_2

    move-object p3, p4

    goto :goto_2

    :cond_2
    invoke-static {p1}, Lcom/mgmi/thirdparty/IpdxManager;->a(Landroid/content/Context;)Lcom/mgmi/thirdparty/IpdxManager;

    move-result-object p3

    iget-object p3, p3, Lcom/mgmi/thirdparty/IpdxManager;->a:Lcom/mgmi/thirdparty/IpdxManager$IpdxBean;

    iget-object p3, p3, Lcom/mgmi/thirdparty/IpdxManager$IpdxBean;->geocode:Ljava/lang/String;

    :goto_2
    invoke-virtual {p0, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 112
    const-string p2, "dx_id"

    invoke-static {p1}, Lcom/mgmi/thirdparty/IpdxManager;->a(Landroid/content/Context;)Lcom/mgmi/thirdparty/IpdxManager;

    move-result-object p3

    iget-object p3, p3, Lcom/mgmi/thirdparty/IpdxManager;->a:Lcom/mgmi/thirdparty/IpdxManager$IpdxBean;

    if-nez p3, :cond_3

    goto :goto_3

    :cond_3
    invoke-static {p1}, Lcom/mgmi/thirdparty/IpdxManager;->a(Landroid/content/Context;)Lcom/mgmi/thirdparty/IpdxManager;

    move-result-object p3

    iget-object p3, p3, Lcom/mgmi/thirdparty/IpdxManager;->a:Lcom/mgmi/thirdparty/IpdxManager$IpdxBean;

    iget-object p4, p3, Lcom/mgmi/thirdparty/IpdxManager$IpdxBean;->id:Ljava/lang/String;

    :goto_3
    invoke-virtual {p0, p2, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 113
    const-string p2, "dx_exp"

    invoke-static {p1}, Lcom/mgmi/thirdparty/IpdxManager;->a(Landroid/content/Context;)Lcom/mgmi/thirdparty/IpdxManager;

    move-result-object p3

    iget-object p3, p3, Lcom/mgmi/thirdparty/IpdxManager;->a:Lcom/mgmi/thirdparty/IpdxManager$IpdxBean;

    if-nez p3, :cond_4

    const/4 p1, 0x0

    goto :goto_4

    :cond_4
    invoke-static {p1}, Lcom/mgmi/thirdparty/IpdxManager;->a(Landroid/content/Context;)Lcom/mgmi/thirdparty/IpdxManager;

    move-result-object p1

    iget-object p1, p1, Lcom/mgmi/thirdparty/IpdxManager;->a:Lcom/mgmi/thirdparty/IpdxManager$IpdxBean;

    iget p1, p1, Lcom/mgmi/thirdparty/IpdxManager$IpdxBean;->exptime:I

    :goto_4
    invoke-virtual {p0, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 114
    const-string p1, "ipdx"

    invoke-virtual {v0, p1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_5

    :catch_1
    move-exception p0

    .line 115
    :try_start_4
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 116
    :goto_5
    invoke-static {}, Lcom/mgmi/f/a;->b()Ljava/lang/String;

    move-result-object p0

    .line 117
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_5

    .line 118
    const-string p1, "dex"

    invoke-virtual {v0, p1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 119
    :cond_5
    const-string p0, "pkgch"

    invoke-static {}, Lcom/mgmi/platform/b/b;->a()Lcom/mgmi/platform/b/b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mgmi/platform/b/b;->g()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_7

    .line 120
    :goto_6
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 121
    :goto_7
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/lang/StringBuilder;IILjava/lang/String;IILjava/lang/String;Landroid/content/Context;)Ljava/lang/StringBuilder;
    .locals 5

    .line 392
    invoke-static {p6}, Lg4d;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p6

    .line 393
    invoke-static {p3}, Lg4d;->h(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p3

    .line 394
    array-length v0, p3

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    const-string v4, ""

    if-lt v0, v1, :cond_0

    .line 395
    aget-object v0, p3, v3

    .line 396
    aget-object p3, p3, v2

    goto :goto_0

    .line 397
    :cond_0
    array-length v0, p3

    if-lt v0, v2, :cond_1

    .line 398
    aget-object v0, p3, v3

    move-object p3, v4

    goto :goto_0

    :cond_1
    move-object p3, v4

    move-object v0, p3

    :goto_0
    if-eqz p0, :cond_2

    .line 399
    const-string v1, "?e="

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "&f="

    .line 400
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "&h="

    .line 401
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lg4d;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "&s="

    .line 402
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "&l="

    .line 403
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Lg4d;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "&t="

    .line 404
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "&m="

    .line 405
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "&lm="

    .line 406
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p7}, Lcom/mgmi/f/f;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lg4d;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "&mf="

    .line 407
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lmpd;->b()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lg4d;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "&mod="

    .line 408
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lmpd;->e()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lg4d;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "&net="

    .line 409
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p7}, Lfyd;->d(Landroid/content/Context;)I

    move-result p2

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "&sv="

    .line 410
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/mgmi/f/f;->d()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lg4d;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "&v="

    .line 411
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/mgmi/f/f;->e()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lg4d;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "&msg="

    .line 412
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "&uuid="

    .line 413
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/mgmi/f/f;->h()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "&osv="

    .line 414
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/mgmi/platform/b/b;->a()Lcom/mgmi/platform/b/b;

    move-result-object p2

    invoke-virtual {p2}, Lcom/mgmi/platform/b/b;->c()I

    move-result p2

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "&sdkver="

    .line 415
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/mgmi/platform/b/b;->a()Lcom/mgmi/platform/b/b;

    move-result-object p2

    invoke-virtual {p2}, Lcom/mgmi/platform/b/b;->b()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lg4d;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "&oaid="

    .line 416
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p7}, Lcom/mgmi/f/f;->m(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "&did="

    .line 417
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p7}, Lcom/mgmi/f/f;->l(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "&aver="

    .line 418
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/mgmi/f/f;->e()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lg4d;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "&sver="

    .line 419
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "aphone-"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/mgmi/f/f;->d()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lg4d;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "&ch="

    .line 420
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/mgmi/f/f;->m()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lg4d;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "&time="

    .line 421
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p2, Lznd;->a:Ljava/text/SimpleDateFormat;

    invoke-static {p2}, Lznd;->a(Ljava/text/SimpleDateFormat;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "&c="

    .line 422
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "&d="

    .line 423
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "&paid="

    .line 424
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/mgmi/f/f;->q()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "&ntime="

    .line 425
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, "&pt="

    .line 426
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_2
    return-object p0
.end method

.method public static a(Ljava/lang/StringBuilder;IILjava/lang/String;Ljava/lang/String;IILjava/lang/String;Landroid/content/Context;)Ljava/lang/StringBuilder;
    .locals 1

    .line 427
    invoke-static {p7}, Lg4d;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p7

    if-eqz p0, :cond_0

    .line 428
    const-string v0, "?e="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "&f="

    .line 429
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "&h="

    .line 430
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Lg4d;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "&s="

    .line 431
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "&l="

    .line 432
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p4}, Lg4d;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "&t="

    .line 433
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "&m="

    .line 434
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ""

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "&lm="

    .line 435
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p8}, Lcom/mgmi/f/f;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lg4d;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "&mf="

    .line 436
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lmpd;->b()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lg4d;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "&mod="

    .line 437
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lmpd;->e()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lg4d;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "&net="

    .line 438
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p8}, Lfyd;->d(Landroid/content/Context;)I

    move-result p2

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "&sv="

    .line 439
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/mgmi/f/f;->d()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lg4d;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "&v="

    .line 440
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/mgmi/f/f;->e()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lg4d;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "&msg="

    .line 441
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "&uuid="

    .line 442
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/mgmi/f/f;->h()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "&osv="

    .line 443
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/mgmi/platform/b/b;->a()Lcom/mgmi/platform/b/b;

    move-result-object p2

    invoke-virtual {p2}, Lcom/mgmi/platform/b/b;->c()I

    move-result p2

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "&sdkver="

    .line 444
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/mgmi/platform/b/b;->a()Lcom/mgmi/platform/b/b;

    move-result-object p2

    invoke-virtual {p2}, Lcom/mgmi/platform/b/b;->b()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lg4d;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "&oaid="

    .line 445
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p8}, Lcom/mgmi/f/f;->m(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "&did="

    .line 446
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p8}, Lcom/mgmi/f/f;->l(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "&aver="

    .line 447
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/mgmi/f/f;->e()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lg4d;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "&sver="

    .line 448
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "aphone-"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/mgmi/f/f;->d()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lg4d;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "&ch="

    .line 449
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/mgmi/f/f;->m()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lg4d;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "&time="

    .line 450
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p2, Lznd;->a:Ljava/text/SimpleDateFormat;

    invoke-static {p2}, Lznd;->a(Ljava/text/SimpleDateFormat;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "&c="

    .line 451
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "&d="

    .line 452
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "&paid="

    .line 453
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/mgmi/f/f;->q()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "&ntime="

    .line 454
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, "&pt="

    .line 455
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_0
    return-object p0
.end method

.method public static a(Landroid/content/Context;Lcom/mgmi/ads/api/a/d;Ljava/lang/String;)Ljava/util/Map;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/mgmi/ads/api/a/d;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 14
    const-string v0, "v"

    const-string v1, "id"

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 15
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 16
    :try_start_0
    const-string v4, "_v"

    invoke-static {}, Lcom/mgmi/f/f;->e()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 17
    const-string v4, "c"

    invoke-interface {p1, p0}, Lcom/mgmi/ads/api/a/d;->a(Landroid/content/Context;)I

    move-result v5

    invoke-static {p0, v5}, Lcom/mgmi/f/b;->a(Landroid/content/Context;I)Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 18
    const-string v4, "permission"

    invoke-static {p0}, Li2d;->a(Landroid/content/Context;)I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 19
    const-string v4, "dev_param"

    invoke-static {p0}, Lu7d;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 20
    const-string v4, "oversea"

    invoke-static {}, Lcom/mgmi/platform/b/b;->a()Lcom/mgmi/platform/b/b;

    move-result-object v5

    invoke-virtual {v5}, Lcom/mgmi/platform/b/b;->c()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 21
    const-string v4, "region"

    invoke-static {}, Lcom/mgmi/platform/b/b;->a()Lcom/mgmi/platform/b/b;

    move-result-object v5

    invoke-virtual {v5}, Lcom/mgmi/platform/b/b;->c()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 22
    const-string v4, "sdkversion"

    invoke-static {}, Lcom/mgmi/platform/b/b;->a()Lcom/mgmi/platform/b/b;

    move-result-object v5

    invoke-virtual {v5}, Lcom/mgmi/platform/b/b;->b()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 23
    const-string v4, "iplay"

    invoke-static {p1}, Lcom/mgmi/f/b;->a(Lcom/mgmi/ads/api/a/d;)I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 24
    const-string v4, "parameter"

    const-wide/32 v5, 0x4088fff

    invoke-virtual {v3, v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 25
    const-string v4, "ch"

    invoke-static {}, Lcom/mgmi/f/f;->m()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 26
    const-string v4, "u"

    invoke-interface {p1}, Lcom/mgmi/ads/api/a/d;->k()Lcom/mgmi/g/a;

    move-result-object v5

    invoke-static {v5}, Lcom/mgmi/f/b;->c(Lcom/mgmi/g/a;)Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 27
    const-string v4, "d"

    invoke-interface {p1}, Lcom/mgmi/ads/api/a/d;->k()Lcom/mgmi/g/a;

    move-result-object v5

    invoke-static {v5}, Lcom/mgmi/f/b;->e(Lcom/mgmi/g/a;)Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 28
    const-string v4, "m"

    invoke-static {p1}, Lcom/mgmi/f/b;->b(Lcom/mgmi/ads/api/a/d;)Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 29
    const-string v4, "rdc"

    invoke-interface {p1}, Lcom/mgmi/ads/api/a/d;->k()Lcom/mgmi/g/a;

    move-result-object v5

    invoke-virtual {v5}, Lcom/mgmi/g/a;->v()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 30
    const-string v4, "rch"

    invoke-interface {p1}, Lcom/mgmi/ads/api/a/d;->k()Lcom/mgmi/g/a;

    move-result-object v5

    invoke-virtual {v5}, Lcom/mgmi/g/a;->w()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 31
    const-string v4, "auid"

    invoke-interface {p1}, Lcom/mgmi/ads/api/a/d;->k()Lcom/mgmi/g/a;

    move-result-object v5

    invoke-static {v5}, Lcom/mgmi/f/b;->f(Lcom/mgmi/g/a;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    .line 32
    :try_start_1
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 33
    const-string v5, "dx_ip"

    invoke-static {p0}, Lcom/mgmi/thirdparty/IpdxManager;->a(Landroid/content/Context;)Lcom/mgmi/thirdparty/IpdxManager;

    move-result-object v6

    iget-object v6, v6, Lcom/mgmi/thirdparty/IpdxManager;->a:Lcom/mgmi/thirdparty/IpdxManager$IpdxBean;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    const-string v7, ""

    if-nez v6, :cond_0

    move-object v6, v7

    goto :goto_0

    :cond_0
    :try_start_2
    invoke-static {p0}, Lcom/mgmi/thirdparty/IpdxManager;->a(Landroid/content/Context;)Lcom/mgmi/thirdparty/IpdxManager;

    move-result-object v6

    iget-object v6, v6, Lcom/mgmi/thirdparty/IpdxManager;->a:Lcom/mgmi/thirdparty/IpdxManager$IpdxBean;

    iget-object v6, v6, Lcom/mgmi/thirdparty/IpdxManager$IpdxBean;->ip:Ljava/lang/String;

    :goto_0
    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 34
    const-string v5, "dx_geo"

    invoke-static {p0}, Lcom/mgmi/thirdparty/IpdxManager;->a(Landroid/content/Context;)Lcom/mgmi/thirdparty/IpdxManager;

    move-result-object v6

    iget-object v6, v6, Lcom/mgmi/thirdparty/IpdxManager;->a:Lcom/mgmi/thirdparty/IpdxManager$IpdxBean;

    if-nez v6, :cond_1

    move-object v6, v7

    goto :goto_1

    :cond_1
    invoke-static {p0}, Lcom/mgmi/thirdparty/IpdxManager;->a(Landroid/content/Context;)Lcom/mgmi/thirdparty/IpdxManager;

    move-result-object v6

    iget-object v6, v6, Lcom/mgmi/thirdparty/IpdxManager;->a:Lcom/mgmi/thirdparty/IpdxManager$IpdxBean;

    iget-object v6, v6, Lcom/mgmi/thirdparty/IpdxManager$IpdxBean;->geocode:Ljava/lang/String;

    :goto_1
    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 35
    const-string v5, "dx_id"

    invoke-static {p0}, Lcom/mgmi/thirdparty/IpdxManager;->a(Landroid/content/Context;)Lcom/mgmi/thirdparty/IpdxManager;

    move-result-object v6

    iget-object v6, v6, Lcom/mgmi/thirdparty/IpdxManager;->a:Lcom/mgmi/thirdparty/IpdxManager$IpdxBean;

    if-nez v6, :cond_2

    goto :goto_2

    :cond_2
    invoke-static {p0}, Lcom/mgmi/thirdparty/IpdxManager;->a(Landroid/content/Context;)Lcom/mgmi/thirdparty/IpdxManager;

    move-result-object v6

    iget-object v6, v6, Lcom/mgmi/thirdparty/IpdxManager;->a:Lcom/mgmi/thirdparty/IpdxManager$IpdxBean;

    iget-object v7, v6, Lcom/mgmi/thirdparty/IpdxManager$IpdxBean;->id:Ljava/lang/String;

    :goto_2
    invoke-virtual {v4, v5, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 36
    const-string v5, "dx_exp"

    invoke-static {p0}, Lcom/mgmi/thirdparty/IpdxManager;->a(Landroid/content/Context;)Lcom/mgmi/thirdparty/IpdxManager;

    move-result-object v6

    iget-object v6, v6, Lcom/mgmi/thirdparty/IpdxManager;->a:Lcom/mgmi/thirdparty/IpdxManager$IpdxBean;

    if-nez v6, :cond_3

    const/4 p0, 0x0

    goto :goto_3

    :cond_3
    invoke-static {p0}, Lcom/mgmi/thirdparty/IpdxManager;->a(Landroid/content/Context;)Lcom/mgmi/thirdparty/IpdxManager;

    move-result-object p0

    iget-object p0, p0, Lcom/mgmi/thirdparty/IpdxManager;->a:Lcom/mgmi/thirdparty/IpdxManager$IpdxBean;

    iget p0, p0, Lcom/mgmi/thirdparty/IpdxManager$IpdxBean;->exptime:I

    :goto_3
    invoke-virtual {v4, v5, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 37
    const-string p0, "ipdx"

    invoke-virtual {v3, p0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_4

    :catch_0
    move-exception p0

    .line 38
    :try_start_3
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 39
    :goto_4
    invoke-static {}, Lcom/mgmi/f/a;->b()Ljava/lang/String;

    move-result-object p0

    .line 40
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 41
    const-string v4, "dex"

    invoke-virtual {v3, v4, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_5

    :catch_1
    move-exception p0

    goto :goto_6

    .line 42
    :cond_4
    :goto_5
    const-string p0, "pkgch"

    invoke-static {}, Lcom/mgmi/platform/b/b;->a()Lcom/mgmi/platform/b/b;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mgmi/platform/b/b;->g()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, p0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 43
    const-string p0, "icf"

    invoke-static {}, Lcom/mgmi/f/b;->a()I

    move-result v4

    invoke-virtual {v3, p0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 44
    invoke-interface {p1}, Lcom/mgmi/ads/api/a/d;->q()Ljava/lang/String;

    move-result-object p0

    .line 45
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 46
    const-string v4, "castid"

    invoke-virtual {v3, v4, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_7

    .line 47
    :goto_6
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 48
    :cond_5
    :goto_7
    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    .line 49
    :try_start_4
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 50
    invoke-interface {p1}, Lcom/mgmi/ads/api/a/d;->k()Lcom/mgmi/g/a;

    move-result-object v5

    invoke-virtual {v5}, Lcom/mgmi/g/a;->h()I

    move-result v5

    invoke-virtual {v4, v1, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 51
    const-string v5, "hid"

    invoke-interface {p1}, Lcom/mgmi/ads/api/a/d;->k()Lcom/mgmi/g/a;

    move-result-object v6

    invoke-virtual {v6}, Lcom/mgmi/g/a;->l()I

    move-result v6

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 52
    const-string v5, "channel_id"

    invoke-interface {p1}, Lcom/mgmi/ads/api/a/d;->k()Lcom/mgmi/g/a;

    move-result-object v6

    invoke-virtual {v6}, Lcom/mgmi/g/a;->m()I

    move-result v6

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 53
    invoke-virtual {p0, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_8

    :catch_2
    move-exception v4

    .line 54
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    .line 55
    :goto_8
    const-string v4, "p"

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v2, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    invoke-interface {p1}, Lcom/mgmi/ads/api/a/d;->k()Lcom/mgmi/g/a;

    move-result-object p0

    invoke-static {p0}, Lcom/mgmi/f/b;->g(Lcom/mgmi/g/a;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "s"

    invoke-interface {v2, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    .line 59
    :try_start_5
    invoke-virtual {p0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 60
    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v2, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 61
    :catch_3
    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v2, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    const-string p0, "_op"

    const-string p1, "post"

    invoke-interface {v2, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    const-string p0, "_type_object"

    const-string p1, "p,v"

    invoke-interface {v2, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v2
.end method

.method public static a(Landroid/content/Context;Lcom/mgmi/g/a;Ljava/lang/String;)Ljava/util/Map;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/mgmi/g/a;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 360
    const-string v0, ""

    const-string v1, "id"

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 361
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 362
    :try_start_0
    const-string v4, "_v"

    invoke-static {}, Lcom/mgmi/f/f;->e()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 363
    const-string v4, "oversea"

    invoke-static {}, Lcom/mgmi/platform/b/b;->a()Lcom/mgmi/platform/b/b;

    move-result-object v5

    invoke-virtual {v5}, Lcom/mgmi/platform/b/b;->c()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 364
    const-string v4, "region"

    invoke-static {}, Lcom/mgmi/platform/b/b;->a()Lcom/mgmi/platform/b/b;

    move-result-object v5

    invoke-virtual {v5}, Lcom/mgmi/platform/b/b;->c()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 365
    const-string v4, "sdkversion"

    invoke-static {}, Lcom/mgmi/platform/b/b;->a()Lcom/mgmi/platform/b/b;

    move-result-object v5

    invoke-virtual {v5}, Lcom/mgmi/platform/b/b;->b()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 366
    const-string v4, "parameter"

    const-wide/32 v5, 0x4088fff

    invoke-virtual {v3, v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 367
    const-string v4, "ch"

    invoke-static {}, Lcom/mgmi/f/f;->m()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 368
    const-string v4, "m"

    invoke-virtual {p1}, Lcom/mgmi/g/a;->x()I

    move-result v5

    invoke-virtual {p1}, Lcom/mgmi/g/a;->k()J

    move-result-wide v6

    const/4 v8, 0x0

    invoke-static {v5, v6, v7, v0, v8}, Lcom/mgmi/f/b;->a(IJLjava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 369
    const-string v4, "u"

    new-instance v5, Lcom/mgmi/g/a;

    invoke-direct {v5}, Lcom/mgmi/g/a;-><init>()V

    invoke-virtual {p1}, Lcom/mgmi/g/a;->k()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lcom/mgmi/g/a;->a(J)Lcom/mgmi/g/a;

    move-result-object v5

    invoke-static {v5}, Lcom/mgmi/f/b;->d(Lcom/mgmi/g/a;)Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 370
    const-string v4, "c"

    invoke-static {p0}, Lcom/mgmi/f/b;->a(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 371
    const-string v4, "permission"

    invoke-static {p0}, Li2d;->a(Landroid/content/Context;)I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 372
    const-string v4, "dev_param"

    invoke-static {p0}, Lu7d;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, v4, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 373
    const-string p0, "auid"

    invoke-static {p1}, Lcom/mgmi/f/b;->f(Lcom/mgmi/g/a;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, p0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 374
    const-string p0, "rdc"

    invoke-virtual {p1}, Lcom/mgmi/g/a;->v()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, p0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 375
    const-string p0, "rch"

    invoke-virtual {p1}, Lcom/mgmi/g/a;->w()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, p0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 376
    invoke-static {}, Lcom/mgmi/f/a;->b()Ljava/lang/String;

    move-result-object p0

    .line 377
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 378
    const-string v4, "dex"

    invoke-virtual {v3, v4, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    .line 379
    :cond_0
    :goto_0
    const-string p0, "pkgch"

    invoke-static {}, Lcom/mgmi/platform/b/b;->a()Lcom/mgmi/platform/b/b;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mgmi/platform/b/b;->g()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, p0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 380
    const-string p0, "icf"

    invoke-static {}, Lcom/mgmi/f/b;->a()I

    move-result v4

    invoke-virtual {v3, p0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 381
    :goto_1
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 382
    :goto_2
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v3, "p"

    invoke-interface {v2, v3, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 383
    const-string p0, "v"

    invoke-interface {v2, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 384
    const-string p0, "s"

    invoke-static {p1}, Lcom/mgmi/f/b;->g(Lcom/mgmi/g/a;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v2, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 385
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_1

    .line 386
    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    .line 387
    :try_start_1
    invoke-virtual {p0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 388
    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v2, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 389
    :catch_1
    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v2, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 390
    :cond_1
    const-string p0, "_op"

    const-string p1, "get"

    invoke-interface {v2, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 391
    const-string p0, "_type_object"

    invoke-interface {v2, p0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v2
.end method

.method public static a(Landroid/content/Context;Lcom/mgmi/g/a;Ljava/lang/String;I)Ljava/util/Map;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/mgmi/g/a;",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 323
    const-string v0, ""

    const-string v1, "id"

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 324
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 325
    :try_start_0
    const-string v4, "_v"

    invoke-static {}, Lcom/mgmi/f/f;->e()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 326
    const-string v4, "oversea"

    invoke-static {}, Lcom/mgmi/platform/b/b;->a()Lcom/mgmi/platform/b/b;

    move-result-object v5

    invoke-virtual {v5}, Lcom/mgmi/platform/b/b;->c()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 327
    const-string v4, "region"

    invoke-static {}, Lcom/mgmi/platform/b/b;->a()Lcom/mgmi/platform/b/b;

    move-result-object v5

    invoke-virtual {v5}, Lcom/mgmi/platform/b/b;->c()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 328
    const-string v4, "sdkversion"

    invoke-static {}, Lcom/mgmi/platform/b/b;->a()Lcom/mgmi/platform/b/b;

    move-result-object v5

    invoke-virtual {v5}, Lcom/mgmi/platform/b/b;->b()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 329
    const-string v4, "iplay"

    invoke-static {}, Lcom/mgmi/f/b;->d()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 330
    const-string v4, "parameter"

    const-wide/32 v5, 0x4088fff

    invoke-virtual {v3, v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 331
    const-string v4, "ch"

    invoke-static {}, Lcom/mgmi/f/f;->m()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 332
    invoke-virtual {p1}, Lcom/mgmi/g/a;->C()I

    .line 333
    const-string v4, "m"

    const/4 v5, 0x0

    invoke-static {p1, v0, v5}, Lcom/mgmi/f/b;->a(Lcom/mgmi/g/a;Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v6

    invoke-virtual {v3, v4, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 334
    const-string v4, "u"

    new-instance v6, Lcom/mgmi/g/a;

    invoke-direct {v6}, Lcom/mgmi/g/a;-><init>()V

    invoke-virtual {p1}, Lcom/mgmi/g/a;->k()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Lcom/mgmi/g/a;->a(J)Lcom/mgmi/g/a;

    move-result-object v6

    invoke-static {v6}, Lcom/mgmi/f/b;->d(Lcom/mgmi/g/a;)Lorg/json/JSONObject;

    move-result-object v6

    invoke-virtual {v3, v4, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 335
    const-string v4, "c"

    invoke-static {p0}, Lcom/mgmi/f/b;->a(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v6

    invoke-virtual {v3, v4, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 336
    const-string v4, "permission"

    invoke-static {p0}, Li2d;->a(Landroid/content/Context;)I

    move-result v6

    invoke-virtual {v3, v4, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 337
    const-string v4, "dev_param"

    invoke-static {p0}, Lu7d;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, v4, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const/4 p0, 0x1

    if-eq p3, p0, :cond_0

    const/4 v4, 0x2

    if-ne p3, v4, :cond_1

    .line 338
    :cond_0
    const-string v4, "warm_boot"

    invoke-virtual {v3, v4, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 339
    :cond_1
    const-string p3, "rdc"

    invoke-virtual {p1}, Lcom/mgmi/g/a;->v()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, p3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 340
    const-string p3, "rch"

    invoke-virtual {p1}, Lcom/mgmi/g/a;->w()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, p3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 341
    invoke-static {}, Lcom/mgmi/f/a;->b()Ljava/lang/String;

    move-result-object p3

    .line 342
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 343
    const-string v4, "dex"

    invoke-virtual {v3, v4, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_3

    .line 344
    :cond_2
    :goto_0
    const-string p3, "pkgch"

    invoke-static {}, Lcom/mgmi/platform/b/b;->a()Lcom/mgmi/platform/b/b;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mgmi/platform/b/b;->g()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, p3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 345
    invoke-static {}, Lmpd;->z()Z

    move-result p3
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v4, "debug"

    if-nez p3, :cond_4

    :try_start_1
    invoke-static {}, Lmpd;->B()Z

    move-result p3

    if-eqz p3, :cond_3

    goto :goto_1

    .line 346
    :cond_3
    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto :goto_2

    .line 347
    :cond_4
    :goto_1
    invoke-virtual {v3, v4, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 348
    :goto_2
    const-string p0, "icf"

    invoke-static {}, Lcom/mgmi/f/b;->a()I

    move-result p3

    invoke-virtual {v3, p0, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4

    .line 349
    :goto_3
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 350
    :goto_4
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p3, "p"

    invoke-interface {v2, p3, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 351
    const-string p0, "v"

    invoke-interface {v2, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 352
    const-string p0, "s"

    invoke-static {p1}, Lcom/mgmi/f/b;->g(Lcom/mgmi/g/a;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v2, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 353
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_5

    .line 354
    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    .line 355
    :try_start_2
    invoke-virtual {p0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 356
    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v2, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 357
    :catch_1
    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v2, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 358
    :cond_5
    const-string p0, "_op"

    const-string p1, "get"

    invoke-interface {v2, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 359
    const-string p0, "_type_object"

    invoke-interface {v2, p0, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v2
.end method

.method public static a(Landroid/content/Context;Lcom/mgmi/g/a;Ljava/lang/String;Z)Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/mgmi/g/a;",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    if-eqz p3, :cond_0

    const/4 p3, 0x1

    .line 321
    invoke-static {p0, p1, p2, p3}, Lcom/mgmi/f/b;->a(Landroid/content/Context;Lcom/mgmi/g/a;Ljava/lang/String;I)Ljava/util/Map;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p3, 0x0

    .line 322
    invoke-static {p0, p1, p2, p3}, Lcom/mgmi/f/b;->a(Landroid/content/Context;Lcom/mgmi/g/a;Ljava/lang/String;I)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/content/Context;Lcom/mgmi/model/n;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/mgmi/model/n;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 2
    invoke-static {p0, p1, v0}, Lcom/mgmi/f/b;->a(Landroid/content/Context;Lcom/mgmi/model/n;Lcom/mgmi/ads/api/a/d;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/content/Context;Lcom/mgmi/model/n;Lcom/mgmi/ads/api/a/d;)Ljava/util/Map;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/mgmi/model/n;",
            "Lcom/mgmi/ads/api/a/d;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 3
    const-string v0, "id"

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 4
    invoke-virtual {p1}, Lcom/mgmi/model/n;->a()Lcom/mgmi/g/a;

    move-result-object v4

    invoke-virtual {p1}, Lcom/mgmi/model/n;->b()Lcom/mgmi/platform/view/a;

    move-result-object v5

    invoke-virtual {p1}, Lcom/mgmi/model/n;->c()I

    move-result v6

    .line 5
    invoke-virtual {p1}, Lcom/mgmi/model/n;->d()I

    move-result v7

    invoke-virtual {p1}, Lcom/mgmi/model/n;->e()I

    move-result v8

    .line 6
    const-string v2, "ADS_ONLINE_VIDEO"

    move-object v3, p0

    move-object v9, p2

    invoke-static/range {v2 .. v9}, Lcom/mgmi/f/b;->a(Ljava/lang/String;Landroid/content/Context;Lcom/mgmi/g/a;Lcom/mgmi/platform/view/a;IIILcom/mgmi/ads/api/a/d;)Ljava/lang/String;

    move-result-object p0

    const-string p2, "p"

    invoke-interface {v1, p2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    invoke-virtual {p1}, Lcom/mgmi/model/n;->a()Lcom/mgmi/g/a;

    move-result-object p0

    invoke-static {p0}, Lcom/mgmi/f/b;->a(Lcom/mgmi/g/a;)Ljava/lang/String;

    move-result-object p0

    const-string p2, "v"

    invoke-interface {v1, p2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    invoke-virtual {p1}, Lcom/mgmi/model/n;->a()Lcom/mgmi/g/a;

    move-result-object p0

    invoke-virtual {p1}, Lcom/mgmi/model/n;->b()Lcom/mgmi/platform/view/a;

    move-result-object p2

    invoke-static {p0, p2}, Lcom/mgmi/f/b;->a(Lcom/mgmi/g/a;Lcom/mgmi/platform/view/a;)Ljava/lang/String;

    move-result-object p0

    const-string p2, "s"

    invoke-interface {v1, p2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    invoke-static {p1}, Lcom/mgmi/f/b;->a(Lcom/mgmi/model/n;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 10
    const-string p2, "i"

    invoke-interface {v1, p2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    :cond_0
    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    .line 12
    :try_start_0
    invoke-virtual {p1}, Lcom/mgmi/model/n;->f()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 13
    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v1, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-object v1
.end method

.method private static a(IJLjava/lang/String;I)Lorg/json/JSONObject;
    .locals 2

    .line 313
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 314
    :try_start_0
    const-string v1, "p"

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 315
    const-string p0, "aid"

    invoke-virtual {v0, p0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 316
    const-string p0, "pu"

    invoke-virtual {v0, p0, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 317
    const-string p0, "init"

    invoke-virtual {v0, p0, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 318
    const-string p0, "ptype"

    const-string p1, "loading"

    invoke-virtual {v0, p0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 319
    const-string p0, "vm"

    invoke-static {}, Lcom/mgmi/f/f;->r()I

    move-result p1

    invoke-virtual {v0, p0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 320
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-object v0
.end method

.method private static a(Landroid/content/Context;)Lorg/json/JSONObject;
    .locals 4

    .line 207
    const-string v0, ""

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 208
    :try_start_0
    invoke-static {v1, p0}, Lcom/mgmi/f/b;->a(Lorg/json/JSONObject;Landroid/content/Context;)V

    .line 209
    const-string v2, "type"

    invoke-static {p0}, Lcom/mgmi/f/f;->e(Landroid/content/Context;)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 210
    const-string v2, "os"

    invoke-static {}, Lcom/mgmi/f/f;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 211
    const-string v2, "version"

    invoke-static {}, Lcom/mgmi/f/f;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 212
    const-string v2, "mn"

    invoke-static {}, Lmpd;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 213
    const-string v2, "rs"

    invoke-static {p0}, Lmpd;->t(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 214
    const-string v2, "mac"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 215
    const-string v2, "lmac"

    invoke-static {p0}, Lcom/mgmi/f/f;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 216
    const-string v2, "muid"

    invoke-static {p0}, Lcom/mgmi/f/f;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 217
    const-string v2, "anid"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 218
    const-string v0, "lanid"

    invoke-static {p0}, Lcom/mgmi/f/f;->g(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 219
    const-string v0, "oaid"

    invoke-static {p0}, Lcom/mgmi/f/f;->m(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 220
    const-string v0, "net"

    invoke-static {p0}, Lfyd;->b(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 221
    const-string v0, "ua"

    invoke-static {}, Lcom/mgmi/f/f;->j()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 222
    const-string v0, "lct"

    invoke-static {p0}, Lcom/mgmi/f/f;->k(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 223
    const-string v0, "ts"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 224
    const-string v0, "openudid"

    invoke-static {}, Lcom/mgmi/f/f;->k()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 225
    const-string v0, "did"

    invoke-static {p0}, Lmpd;->x(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 226
    const-string v0, "sid"

    invoke-static {}, Lcom/mgmi/f/f;->n()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 227
    const-string v0, "paid"

    invoke-static {}, Lcom/mgmi/f/f;->q()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 228
    const-string v0, "ntime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 229
    const-string v0, "odin"

    invoke-static {p0}, Ln3d;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 230
    const-string v0, "lt"

    invoke-static {p0}, Lcom/mgmi/f/f;->h(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 231
    const-string v0, "dpi"

    invoke-static {p0}, Lcom/mgmi/f/f;->i(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 232
    const-string v0, "brand"

    invoke-static {}, Lmpd;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 233
    const-string v0, "pkgname"

    invoke-static {p0}, Lcom/mgmi/f/f;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 234
    invoke-static {}, Lmpd;->u()Ljava/lang/String;

    move-result-object v0

    .line 235
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 236
    const-string v2, "hms"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 237
    :cond_0
    :goto_0
    invoke-static {}, Lmpd;->s()Ljava/lang/String;

    move-result-object v0

    .line 238
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 239
    const-string v2, "ag"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 240
    :cond_1
    invoke-static {}, Lmpd;->w()Ljava/lang/String;

    move-result-object v0

    .line 241
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 242
    const-string v2, "maker"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 243
    :cond_2
    invoke-static {p0, v1}, Lcom/mgmi/f/b;->a(Landroid/content/Context;Lorg/json/JSONObject;)V

    .line 244
    invoke-static {p0}, Lcom/mgmi/f/f;->j(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    .line 245
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v2, 0x5

    if-ne v0, v2, :cond_3

    .line 246
    const-string v0, "operator"

    const/4 v3, 0x3

    invoke-virtual {p0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 247
    const-string v0, "mcc"

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, v0, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 248
    :cond_3
    invoke-static {}, Lcom/mgmi/ssp/MGTVAdFactory;->getInstance()Lcom/mgmi/ssp/MGTVAdFactory;

    move-result-object p0

    invoke-virtual {p0}, Lcom/mgmi/ssp/MGTVAdFactory;->getGaid()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_4

    .line 249
    const-string p0, "aaid"

    invoke-static {}, Lcom/mgmi/ssp/MGTVAdFactory;->getInstance()Lcom/mgmi/ssp/MGTVAdFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mgmi/ssp/MGTVAdFactory;->getGaid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, p0, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 250
    :goto_1
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_4
    :goto_2
    return-object v1
.end method

.method private static a(Landroid/content/Context;I)Lorg/json/JSONObject;
    .locals 4

    .line 253
    const-string v0, ""

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 254
    :try_start_0
    invoke-static {v1, p0}, Lcom/mgmi/f/b;->a(Lorg/json/JSONObject;Landroid/content/Context;)V

    .line 255
    const-string v2, "type"

    invoke-static {p0}, Lcom/mgmi/f/f;->e(Landroid/content/Context;)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 256
    const-string v2, "os"

    invoke-static {}, Lcom/mgmi/f/f;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 257
    const-string v2, "version"

    invoke-static {}, Lcom/mgmi/f/f;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 258
    const-string v2, "mn"

    invoke-static {}, Lmpd;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 259
    const-string v2, "rs"

    invoke-static {p0}, Lmpd;->t(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 260
    const-string v2, "mac"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 261
    const-string v2, "lmac"

    invoke-static {p0}, Lcom/mgmi/f/f;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 262
    const-string v2, "muid"

    invoke-static {p0}, Lcom/mgmi/f/f;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 263
    const-string v2, "anid"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 264
    const-string v0, "lanid"

    invoke-static {p0}, Lcom/mgmi/f/f;->g(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 265
    const-string v0, "oaid"

    invoke-static {p0}, Lcom/mgmi/f/f;->m(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 266
    const-string v0, "net"

    invoke-static {p0}, Lfyd;->b(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 267
    const-string v0, "ua"

    invoke-static {}, Lcom/mgmi/f/f;->j()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 268
    const-string v0, "lct"

    invoke-static {p0}, Lcom/mgmi/f/f;->k(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 269
    const-string v0, "ts"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 270
    const-string v0, "openudid"

    invoke-static {}, Lcom/mgmi/f/f;->k()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 271
    const-string v0, "did"

    invoke-static {p0}, Lmpd;->x(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 272
    const-string v0, "sid"

    invoke-static {}, Lcom/mgmi/f/f;->n()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 273
    const-string v0, "paid"

    invoke-static {}, Lcom/mgmi/f/f;->q()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 274
    const-string v0, "ntime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 275
    const-string v0, "odin"

    invoke-static {p0}, Ln3d;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 276
    const-string v0, "lt"

    invoke-virtual {v1, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 277
    const-string p1, "dpi"

    invoke-static {p0}, Lcom/mgmi/f/f;->i(Landroid/content/Context;)I

    move-result v0

    invoke-virtual {v1, p1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 278
    const-string p1, "brand"

    invoke-static {}, Lmpd;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, p1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 279
    const-string p1, "pkgname"

    invoke-static {p0}, Lcom/mgmi/f/f;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, p1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 280
    invoke-static {}, Lmpd;->u()Ljava/lang/String;

    move-result-object p1

    .line 281
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 282
    const-string v0, "hms"

    invoke-virtual {v1, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 283
    :cond_0
    :goto_0
    invoke-static {}, Lmpd;->s()Ljava/lang/String;

    move-result-object p1

    .line 284
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 285
    const-string v0, "ag"

    invoke-virtual {v1, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 286
    :cond_1
    invoke-static {}, Lmpd;->w()Ljava/lang/String;

    move-result-object p1

    .line 287
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 288
    const-string v0, "maker"

    invoke-virtual {v1, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 289
    :cond_2
    invoke-static {p0}, Lcom/mgmi/f/f;->j(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    .line 290
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    const/4 v0, 0x5

    if-ne p1, v0, :cond_3

    .line 291
    const-string p1, "operator"

    const/4 v2, 0x3

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, p1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 292
    const-string p1, "mcc"

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 293
    :cond_3
    invoke-static {}, Lcom/mgmi/ssp/MGTVAdFactory;->getInstance()Lcom/mgmi/ssp/MGTVAdFactory;

    move-result-object p0

    invoke-virtual {p0}, Lcom/mgmi/ssp/MGTVAdFactory;->getGaid()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_4

    .line 294
    const-string p0, "aaid"

    invoke-static {}, Lcom/mgmi/ssp/MGTVAdFactory;->getInstance()Lcom/mgmi/ssp/MGTVAdFactory;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mgmi/ssp/MGTVAdFactory;->getGaid()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 295
    :goto_1
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_4
    :goto_2
    return-object v1
.end method

.method private static a(Lcom/mgmi/g/a;Ljava/lang/String;I)Lorg/json/JSONObject;
    .locals 4

    .line 296
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 297
    :try_start_0
    const-string v1, "p"

    invoke-virtual {p0}, Lcom/mgmi/g/a;->x()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 298
    const-string v1, "aid"

    invoke-virtual {p0}, Lcom/mgmi/g/a;->k()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 299
    const-string v1, "eaid"

    invoke-virtual {p0}, Lcom/mgmi/g/a;->j()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 300
    const-string v1, "pu"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 301
    const-string p1, "init"

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 302
    const-string p1, "vm"

    invoke-static {}, Lcom/mgmi/f/f;->r()I

    move-result p2

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 303
    invoke-virtual {p0}, Lcom/mgmi/g/a;->C()I

    move-result p1

    if-lez p1, :cond_0

    .line 304
    const-string p2, "c2s_preload"

    invoke-virtual {v0, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    .line 305
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/mgmi/g/a;->y()I

    move-result p1

    const/4 p2, -0x1

    if-le p1, p2, :cond_1

    .line 306
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, ""

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/mgmi/g/a;->y()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lwrd;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 307
    const-string p2, "min_price"

    invoke-virtual {v0, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 308
    :cond_1
    invoke-virtual {p0}, Lcom/mgmi/g/a;->z()I

    move-result p1

    const/16 p2, -0x3e7

    if-eq p1, p2, :cond_2

    .line 309
    const-string p1, "width"

    invoke-virtual {p0}, Lcom/mgmi/g/a;->z()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 310
    :cond_2
    invoke-virtual {p0}, Lcom/mgmi/g/a;->A()I

    move-result p1

    if-eq p1, p2, :cond_3

    .line 311
    const-string p1, "height"

    invoke-virtual {p0}, Lcom/mgmi/g/a;->A()I

    move-result p0

    invoke-virtual {v0, p1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 312
    :goto_1
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_3
    :goto_2
    return-object v0
.end method

.method private static a(Ljava/lang/String;IIIILcom/mgmi/platform/view/a;)Lorg/json/JSONObject;
    .locals 5

    .line 123
    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    .line 124
    :try_start_0
    const-string v0, "p"

    invoke-virtual {p0, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const/4 p1, -0x1

    if-eq p2, p1, :cond_0

    .line 125
    const-string p1, "p_refer"

    invoke-virtual {p0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    goto/16 :goto_2

    .line 126
    :cond_0
    :goto_0
    const-string p1, "ptype"

    if-nez p5, :cond_1

    .line 127
    :try_start_1
    const-string p2, "front"

    invoke-virtual {p0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_1

    .line 128
    :cond_1
    invoke-virtual {p5}, Lcom/mgmi/platform/view/a;->s()I

    move-result p2

    const/16 v0, 0xa

    if-ne p2, v0, :cond_2

    .line 129
    const-string p2, "ad_dot"

    invoke-virtual {p0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_1

    .line 130
    :cond_2
    invoke-virtual {p5}, Lcom/mgmi/platform/view/a;->s()I

    move-result p2
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    const/4 v0, 0x1

    const-string v1, "trigger_nt"

    const-string v2, "float"

    const-string v3, "trigger_time"

    const-string v4, "id"

    if-ne p2, v0, :cond_4

    .line 131
    :try_start_2
    invoke-virtual {p0, p1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 132
    invoke-virtual {p5}, Lcom/mgmi/platform/view/a;->v()I

    move-result p1

    invoke-virtual {p0, v4, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 133
    invoke-virtual {p5}, Lcom/mgmi/platform/view/a;->v()I

    move-result p1

    int-to-long p1, p1

    invoke-static {p0, p1, p2}, Lcom/mgmi/f/b;->a(Lorg/json/JSONObject;J)V

    .line 134
    invoke-virtual {p5}, Lcom/mgmi/platform/view/a;->w()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 135
    invoke-virtual {p5}, Lcom/mgmi/platform/view/a;->t()F

    move-result p1

    float-to-double p1, p1

    invoke-virtual {p0, v3, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 136
    :cond_3
    invoke-static {p5}, Lcom/mgmi/ads/api/e/d;->a(Lcom/mgmi/platform/view/a;)Z

    move-result p1

    if-eqz p1, :cond_10

    .line 137
    invoke-virtual {p5}, Lcom/mgmi/platform/view/a;->m()J

    move-result-wide p1

    invoke-virtual {p0, v1, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    goto/16 :goto_1

    .line 138
    :cond_4
    invoke-virtual {p5}, Lcom/mgmi/platform/view/a;->s()I

    move-result p2

    const/16 v0, 0x8

    if-ne p2, v0, :cond_6

    .line 139
    const-string p2, "rprain"

    invoke-virtual {p0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 140
    invoke-virtual {p5}, Lcom/mgmi/platform/view/a;->v()I

    move-result p1

    invoke-virtual {p0, v4, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 141
    invoke-virtual {p5}, Lcom/mgmi/platform/view/a;->w()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 142
    invoke-virtual {p5}, Lcom/mgmi/platform/view/a;->t()F

    move-result p1

    float-to-double p1, p1

    invoke-virtual {p0, v3, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 143
    :cond_5
    invoke-virtual {p5}, Lcom/mgmi/platform/view/a;->v()I

    move-result p1

    int-to-long p1, p1

    invoke-static {p0, p1, p2}, Lcom/mgmi/f/b;->a(Lorg/json/JSONObject;J)V

    goto/16 :goto_1

    .line 144
    :cond_6
    invoke-virtual {p5}, Lcom/mgmi/platform/view/a;->s()I

    move-result p2

    const/16 v0, 0x9

    if-ne p2, v0, :cond_7

    .line 145
    invoke-virtual {p0, p1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 146
    invoke-virtual {p5}, Lcom/mgmi/platform/view/a;->v()I

    move-result p1

    invoke-virtual {p0, v4, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 147
    invoke-virtual {p5}, Lcom/mgmi/platform/view/a;->m()J

    move-result-wide p1

    invoke-virtual {p0, v1, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 148
    invoke-virtual {p5}, Lcom/mgmi/platform/view/a;->v()I

    move-result p1

    int-to-long p1, p1

    invoke-static {p0, p1, p2}, Lcom/mgmi/f/b;->a(Lorg/json/JSONObject;J)V

    goto/16 :goto_1

    .line 149
    :cond_7
    invoke-virtual {p5}, Lcom/mgmi/platform/view/a;->s()I

    move-result p2

    const/16 v0, 0x64

    if-ne p2, v0, :cond_8

    .line 150
    const-string p2, "paster"

    invoke-virtual {p0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 151
    invoke-virtual {p5}, Lcom/mgmi/platform/view/a;->v()I

    move-result p1

    invoke-virtual {p0, v4, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 152
    invoke-virtual {p5}, Lcom/mgmi/platform/view/a;->v()I

    move-result p1

    int-to-long p1, p1

    invoke-static {p0, p1, p2}, Lcom/mgmi/f/b;->a(Lorg/json/JSONObject;J)V

    goto/16 :goto_1

    .line 153
    :cond_8
    invoke-virtual {p5}, Lcom/mgmi/platform/view/a;->s()I

    move-result p2

    if-nez p2, :cond_9

    .line 154
    const-string p2, "mid"

    invoke-virtual {p0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 155
    invoke-virtual {p5}, Lcom/mgmi/platform/view/a;->v()I

    move-result p1

    invoke-virtual {p0, v4, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 156
    invoke-virtual {p5}, Lcom/mgmi/platform/view/a;->v()I

    move-result p1

    int-to-long p1, p1

    invoke-static {p0, p1, p2}, Lcom/mgmi/f/b;->a(Lorg/json/JSONObject;J)V

    goto/16 :goto_1

    .line 157
    :cond_9
    invoke-virtual {p5}, Lcom/mgmi/platform/view/a;->s()I

    move-result p2

    const/16 v0, 0xb

    if-ne p2, v0, :cond_a

    .line 158
    const-string p2, "backend"

    invoke-virtual {p0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 159
    invoke-virtual {p5}, Lcom/mgmi/platform/view/a;->v()I

    move-result p1

    invoke-virtual {p0, v4, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 160
    invoke-virtual {p5}, Lcom/mgmi/platform/view/a;->v()I

    move-result p1

    int-to-long p1, p1

    invoke-static {p0, p1, p2}, Lcom/mgmi/f/b;->a(Lorg/json/JSONObject;J)V

    goto/16 :goto_1

    .line 161
    :cond_a
    invoke-virtual {p5}, Lcom/mgmi/platform/view/a;->s()I

    move-result p2

    const/4 v0, 0x3

    if-ne p2, v0, :cond_b

    .line 162
    const-string p2, "progress"

    invoke-virtual {p0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 163
    invoke-virtual {p5}, Lcom/mgmi/platform/view/a;->v()I

    move-result p1

    invoke-virtual {p0, v4, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 164
    invoke-virtual {p5}, Lcom/mgmi/platform/view/a;->v()I

    move-result p1

    int-to-long p1, p1

    invoke-static {p0, p1, p2}, Lcom/mgmi/f/b;->a(Lorg/json/JSONObject;J)V

    goto/16 :goto_1

    .line 165
    :cond_b
    invoke-virtual {p5}, Lcom/mgmi/platform/view/a;->s()I

    move-result p2

    const/4 v0, 0x2

    if-ne p2, v0, :cond_c

    .line 166
    const-string p2, "pause"

    invoke-virtual {p0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 167
    invoke-virtual {p5}, Lcom/mgmi/platform/view/a;->v()I

    move-result p1

    invoke-virtual {p0, v4, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 168
    invoke-virtual {p5}, Lcom/mgmi/platform/view/a;->v()I

    move-result p1

    int-to-long p1, p1

    invoke-static {p0, p1, p2}, Lcom/mgmi/f/b;->a(Lorg/json/JSONObject;J)V

    goto/16 :goto_1

    .line 169
    :cond_c
    invoke-virtual {p5}, Lcom/mgmi/platform/view/a;->s()I

    move-result p2

    const/4 v0, 0x4

    if-ne p2, v0, :cond_d

    .line 170
    const-string p2, "focus"

    invoke-virtual {p0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 171
    invoke-virtual {p5}, Lcom/mgmi/platform/view/a;->v()I

    move-result p1

    invoke-virtual {p0, v4, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 172
    invoke-virtual {p5}, Lcom/mgmi/platform/view/a;->v()I

    move-result p1

    int-to-long p1, p1

    invoke-static {p0, p1, p2}, Lcom/mgmi/f/b;->a(Lorg/json/JSONObject;J)V

    goto :goto_1

    .line 173
    :cond_d
    invoke-virtual {p5}, Lcom/mgmi/platform/view/a;->s()I

    move-result p2

    const/4 v0, 0x5

    if-ne p2, v0, :cond_e

    .line 174
    const-string p2, "barrage"

    invoke-virtual {p0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 175
    invoke-virtual {p5}, Lcom/mgmi/platform/view/a;->v()I

    move-result p1

    invoke-virtual {p0, v4, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 176
    invoke-virtual {p5}, Lcom/mgmi/platform/view/a;->t()F

    move-result p1

    float-to-double p1, p1

    invoke-virtual {p0, v3, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 177
    invoke-virtual {p5}, Lcom/mgmi/platform/view/a;->v()I

    move-result p1

    int-to-long p1, p1

    invoke-static {p0, p1, p2}, Lcom/mgmi/f/b;->a(Lorg/json/JSONObject;J)V

    goto :goto_1

    .line 178
    :cond_e
    invoke-virtual {p5}, Lcom/mgmi/platform/view/a;->s()I

    move-result p2

    const/4 v0, 0x6

    if-ne p2, v0, :cond_f

    .line 179
    const-string p2, "ai_implant"

    invoke-virtual {p0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 180
    invoke-virtual {p5}, Lcom/mgmi/platform/view/a;->v()I

    move-result p1

    invoke-virtual {p0, v4, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 181
    const-string p1, "ai_plan"

    iget-object p2, p5, Lcom/mgmi/platform/view/a;->u:Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 182
    invoke-virtual {p5}, Lcom/mgmi/platform/view/a;->v()I

    move-result p1

    int-to-long p1, p1

    invoke-static {p0, p1, p2}, Lcom/mgmi/f/b;->a(Lorg/json/JSONObject;J)V

    goto :goto_1

    .line 183
    :cond_f
    invoke-virtual {p5}, Lcom/mgmi/platform/view/a;->s()I

    move-result p2

    const/16 v0, 0xd

    if-ne p2, v0, :cond_10

    .line 184
    const-string p2, "baike_float"

    invoke-virtual {p0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 185
    invoke-virtual {p5}, Lcom/mgmi/platform/view/a;->v()I

    move-result p1

    invoke-virtual {p0, v4, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 186
    invoke-virtual {p5}, Lcom/mgmi/platform/view/a;->v()I

    move-result p1

    int-to-long p1, p1

    invoke-static {p0, p1, p2}, Lcom/mgmi/f/b;->a(Lorg/json/JSONObject;J)V

    .line 187
    invoke-virtual {p5}, Lcom/mgmi/platform/view/a;->w()Z

    move-result p1

    if-eqz p1, :cond_10

    .line 188
    invoke-virtual {p5}, Lcom/mgmi/platform/view/a;->t()F

    move-result p1

    float-to-double p1, p1

    invoke-virtual {p0, v3, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 189
    :cond_10
    :goto_1
    const-string p1, "allowad"

    invoke-virtual {p0, p1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 190
    const-string p1, "vip_report"

    invoke-virtual {p0, p1, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 191
    const-string p1, "vm"

    invoke-static {}, Lcom/mgmi/f/f;->r()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 192
    invoke-static {}, Lcom/mgmi/f/b;->c()Ljava/lang/String;

    move-result-object p1

    .line 193
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_11

    .line 194
    const-string p2, "ac_id"

    const-string p3, "dFzVcOTg3zkcESsXYE1/1e02fgkxiWlU"

    const-string p4, "mapkey@2023timeSave"

    invoke-static {p3, p4}, Ln4d;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p3}, Ln4d;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3

    .line 195
    :goto_2
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_11
    :goto_3
    return-object p0
.end method

.method private static a(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 2

    if-eqz p0, :cond_1

    .line 251
    :try_start_0
    const-string v0, "bk_msg_switch"

    invoke-static {}, Lcom/mgmi/platform/c;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "1"

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_0
    const-string v1, "0"

    :goto_0
    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 252
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    :goto_2
    return-object p0
.end method

.method private static a(Landroid/content/Context;Lorg/json/JSONObject;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 1
    return-void
.end method

.method private static a(Lorg/json/JSONObject;J)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 196
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    const-wide/16 v1, 0x0

    cmp-long v1, p1, v1

    if-lez v1, :cond_1

    .line 197
    invoke-static {}, Lcom/mgmi/ads/api/e/i;->a()Lcom/mgmi/ads/api/e/i;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mgmi/ads/api/e/i;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 198
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    .line 199
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mgmi/ads/api/e/i$a;

    iget v4, v4, Lcom/mgmi/ads/api/e/i$a;->a:I

    .line 200
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/mgmi/ads/api/e/i$a;

    iget v5, v5, Lcom/mgmi/ads/api/e/i$a;->b:I

    .line 201
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    .line 202
    const-string v7, "aid"

    invoke-virtual {v6, v7, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 203
    const-string v7, "mid"

    invoke-virtual {v6, v7, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 204
    const-string v4, "id"

    invoke-virtual {v6, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 205
    invoke-virtual {v0, v6}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 206
    :cond_0
    const-string p1, "pair"

    invoke-virtual {p0, p1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_1
    return-void
.end method

.method private static a(Lorg/json/JSONObject;Landroid/content/Context;)V
    .locals 6

    .line 456
    const-string v0, ""

    if-eqz p0, :cond_1

    .line 457
    :try_start_0
    const-string v1, "carrier_name"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lmpd;->G(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 458
    const-string p1, "local_tz_name"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 459
    const-string p1, "startup_time"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    long-to-int v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 460
    const-string p1, "cpu_num"

    invoke-static {}, Lmpd;->m()I

    move-result v1

    invoke-virtual {p0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 461
    const-string p1, "disk_total"

    invoke-static {}, Lmpd;->o()J

    move-result-wide v1

    invoke-virtual {p0, p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 462
    const-string p1, "mem_total"

    invoke-static {}, Lmpd;->r()J

    move-result-wide v1

    invoke-virtual {p0, p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 463
    const-string p1, "pit"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/mgmi/platform/b/b;->a()Lcom/mgmi/platform/b/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mgmi/platform/b/b;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 464
    const-string p1, "pits"

    invoke-static {}, Lcom/mgmi/platform/b/b;->a()Lcom/mgmi/platform/b/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mgmi/platform/b/b;->e()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    .line 465
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    :goto_1
    return-void
.end method

.method private static b()Ljava/lang/String;
    .locals 2

    .line 51
    invoke-static {}, Lcom/mgmi/platform/a;->a()Lcom/mgmi/platform/a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 52
    invoke-static {}, Lcom/mgmi/platform/a;->a()Lcom/mgmi/platform/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mgmi/platform/a;->b()Ljava/lang/ref/WeakReference;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 53
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 54
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 55
    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method private static b(Lcom/mgmi/g/a;)Ljava/lang/String;
    .locals 4

    .line 37
    invoke-virtual {p0}, Lcom/mgmi/g/a;->s()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/mgmi/g/a;->s()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 38
    invoke-virtual {p0}, Lcom/mgmi/g/a;->s()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 39
    :cond_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 40
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 41
    :try_start_0
    const-string v2, "id"

    invoke-virtual {p0}, Lcom/mgmi/g/a;->h()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 42
    const-string v2, "channel_id"

    invoke-virtual {p0}, Lcom/mgmi/g/a;->m()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 43
    const-string v2, "activity_id"

    invoke-virtual {p0}, Lcom/mgmi/g/a;->a()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 44
    const-string v2, "camera_id"

    invoke-virtual {p0}, Lcom/mgmi/g/a;->h()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 45
    const-string v2, "hid"

    invoke-virtual {p0}, Lcom/mgmi/g/a;->l()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 46
    const-string v2, "ispay"

    invoke-virtual {p0}, Lcom/mgmi/g/a;->q()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 47
    const-string v2, "ispreview"

    invoke-virtual {p0}, Lcom/mgmi/g/a;->r()I

    move-result p0

    invoke-virtual {v0, v2, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 48
    const-string p0, "v"

    invoke-virtual {v1, p0, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 49
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 50
    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static b(Landroid/content/Context;Lcom/mgmi/model/n;Lcom/mgmi/ads/api/a/d;)Ljava/util/Map;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/mgmi/model/n;",
            "Lcom/mgmi/ads/api/a/d;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    const-string v0, "id"

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 2
    invoke-virtual {p1}, Lcom/mgmi/model/n;->a()Lcom/mgmi/g/a;

    move-result-object v4

    invoke-virtual {p1}, Lcom/mgmi/model/n;->b()Lcom/mgmi/platform/view/a;

    move-result-object v5

    invoke-virtual {p1}, Lcom/mgmi/model/n;->c()I

    move-result v6

    const/4 v7, -0x1

    .line 3
    invoke-virtual {p1}, Lcom/mgmi/model/n;->e()I

    move-result v8

    .line 4
    const-string v2, "ADS_OFFVIDEO_ONLINE"

    move-object v3, p0

    move-object v9, p2

    invoke-static/range {v2 .. v9}, Lcom/mgmi/f/b;->a(Ljava/lang/String;Landroid/content/Context;Lcom/mgmi/g/a;Lcom/mgmi/platform/view/a;IIILcom/mgmi/ads/api/a/d;)Ljava/lang/String;

    move-result-object p0

    const-string p2, "p"

    invoke-interface {v1, p2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    invoke-virtual {p1}, Lcom/mgmi/model/n;->a()Lcom/mgmi/g/a;

    move-result-object p0

    invoke-static {p0}, Lcom/mgmi/f/b;->b(Lcom/mgmi/g/a;)Ljava/lang/String;

    move-result-object p0

    const-string p2, "v"

    invoke-interface {v1, p2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    invoke-virtual {p1}, Lcom/mgmi/model/n;->a()Lcom/mgmi/g/a;

    move-result-object p0

    invoke-static {p0}, Lcom/mgmi/f/b;->g(Lcom/mgmi/g/a;)Ljava/lang/String;

    move-result-object p0

    const-string p2, "s"

    invoke-interface {v1, p2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    .line 8
    :try_start_0
    invoke-virtual {p1}, Lcom/mgmi/model/n;->f()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 9
    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    :catch_0
    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v1, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v1
.end method

.method private static b(Lcom/mgmi/ads/api/a/d;)Lorg/json/JSONObject;
    .locals 7

    .line 11
    const-string v0, ""

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 12
    :try_start_0
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 13
    invoke-interface {p0}, Lcom/mgmi/ads/api/a/d;->k()Lcom/mgmi/g/a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mgmi/g/a;->k()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONArray;->put(J)Lorg/json/JSONArray;

    .line 14
    invoke-interface {p0}, Lcom/mgmi/ads/api/a/d;->k()Lcom/mgmi/g/a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mgmi/g/a;->d()I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    .line 15
    const-string v3, "el_t"

    invoke-interface {p0}, Lcom/mgmi/ads/api/a/d;->k()Lcom/mgmi/g/a;

    move-result-object v5

    invoke-virtual {v5}, Lcom/mgmi/g/a;->d()I

    move-result v5

    invoke-virtual {v1, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto :goto_0

    :catch_0
    move-exception p0

    goto/16 :goto_2

    .line 16
    :cond_0
    :goto_0
    invoke-interface {p0}, Lcom/mgmi/ads/api/a/d;->j()Ljava/lang/String;

    move-result-object v3

    const-string v5, "ADS_BANNER"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 17
    const-string v3, "p"

    const/16 v5, 0x11e4

    invoke-virtual {v1, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 18
    :cond_1
    invoke-interface {p0}, Lcom/mgmi/ads/api/a/d;->j()Ljava/lang/String;

    move-result-object v3

    const-string v5, "ADS_TYPE_PULL_REFRESH"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v5, "ptype"

    if-eqz v3, :cond_2

    .line 19
    :try_start_1
    const-string v3, "el"

    invoke-virtual {v1, v5, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_1

    .line 20
    :cond_2
    invoke-interface {p0}, Lcom/mgmi/ads/api/a/d;->j()Ljava/lang/String;

    move-result-object v3

    const-string v6, "ADS_VIDEO_RED_MAIN"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 21
    const-string v3, "rprain"

    invoke-virtual {v1, v5, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_1

    .line 22
    :cond_3
    invoke-interface {p0}, Lcom/mgmi/ads/api/a/d;->j()Ljava/lang/String;

    move-result-object v3

    const-string v6, "ADS_INTENIVE"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 23
    const-string v3, "reward"

    invoke-virtual {v1, v5, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 24
    :cond_4
    :goto_1
    const-string v3, "aids"

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 25
    const-string v2, "pu"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 26
    const-string v2, "vm"

    invoke-static {}, Lcom/mgmi/f/f;->r()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 27
    const-string v2, "aid_info"

    invoke-interface {p0}, Lcom/mgmi/ads/api/a/d;->k()Lcom/mgmi/g/a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mgmi/g/a;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 28
    invoke-interface {p0}, Lcom/mgmi/ads/api/a/d;->k()Lcom/mgmi/g/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mgmi/g/a;->y()I

    move-result v2

    if-le v2, v4, :cond_5

    .line 29
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Lcom/mgmi/ads/api/a/d;->k()Lcom/mgmi/g/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mgmi/g/a;->y()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lwrd;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 30
    const-string v2, "min_price"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 31
    :cond_5
    invoke-interface {p0}, Lcom/mgmi/ads/api/a/d;->k()Lcom/mgmi/g/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mgmi/g/a;->z()I

    move-result v0

    const/16 v2, -0x3e7

    if-eq v0, v2, :cond_6

    .line 32
    const-string v0, "width"

    invoke-interface {p0}, Lcom/mgmi/ads/api/a/d;->k()Lcom/mgmi/g/a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mgmi/g/a;->z()I

    move-result v3

    invoke-virtual {v1, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 33
    :cond_6
    invoke-interface {p0}, Lcom/mgmi/ads/api/a/d;->k()Lcom/mgmi/g/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mgmi/g/a;->A()I

    move-result v0

    if-eq v0, v2, :cond_7

    .line 34
    const-string v0, "height"

    invoke-interface {p0}, Lcom/mgmi/ads/api/a/d;->k()Lcom/mgmi/g/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mgmi/g/a;->A()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 35
    :cond_7
    invoke-interface {p0}, Lcom/mgmi/ads/api/a/d;->k()Lcom/mgmi/g/a;

    move-result-object p0

    invoke-virtual {p0}, Lcom/mgmi/g/a;->k()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/mgmi/f/b;->a(Lorg/json/JSONObject;J)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    .line 36
    :goto_2
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_3
    return-object v1
.end method

.method private static c()Ljava/lang/String;
    .locals 3

    .line 1
    :try_start_0
    invoke-static {}, Lcom/mgmi/f/b;->b()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3
    const-string v1, "dFzVcOTg3zkcESsXYE1/1e02fgkxiWlU"

    const-string v2, "mapkey@2023timeSave"

    invoke-static {v1, v2}, Ln4d;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ln4d;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 4
    :catch_0
    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method private static c(Lcom/mgmi/g/a;)Lorg/json/JSONObject;
    .locals 3

    .line 5
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 6
    :try_start_0
    const-string v1, "vip"

    invoke-static {}, Lcom/mgmi/f/f;->i()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 7
    const-string v1, "isContinue"

    invoke-virtual {p0}, Lcom/mgmi/g/a;->o()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 8
    const-string v1, "passport"

    invoke-virtual {p0}, Lcom/mgmi/g/a;->p()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 9
    const-string p0, "uuid"

    invoke-static {}, Lcom/mgmi/f/f;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 10
    const-string p0, "acid"

    invoke-static {}, Lcom/mgmi/f/f;->u()I

    move-result v1

    invoke-virtual {v0, p0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 11
    const-string p0, "male"

    invoke-static {}, Lcom/mgmi/f/f;->t()I

    move-result v1

    invoke-virtual {v0, p0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 12
    const-string p0, "nick"

    invoke-static {}, Lcom/mgmi/f/f;->s()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 13
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-object v0
.end method

.method private static d()I
    .locals 1

    .line 1
    const/16 v0, 0x12

    return v0
.end method

.method private static d(Lcom/mgmi/g/a;)Lorg/json/JSONObject;
    .locals 3

    .line 2
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 3
    :try_start_0
    const-string v1, "vip"

    invoke-static {}, Lcom/mgmi/f/f;->i()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 4
    const-string v1, "isContinue"

    invoke-virtual {p0}, Lcom/mgmi/g/a;->o()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 5
    const-string v1, "passport"

    invoke-virtual {p0}, Lcom/mgmi/g/a;->p()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 6
    const-string p0, "uuid"

    invoke-static {}, Lcom/mgmi/f/f;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 7
    const-string p0, "acid"

    invoke-static {}, Lcom/mgmi/f/f;->u()I

    move-result v1

    invoke-virtual {v0, p0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 8
    const-string p0, "male"

    invoke-static {}, Lcom/mgmi/f/f;->t()I

    move-result v1

    invoke-virtual {v0, p0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 9
    const-string p0, "nick"

    invoke-static {}, Lcom/mgmi/f/f;->s()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 10
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-object v0
.end method

.method private static e(Lcom/mgmi/g/a;)Lorg/json/JSONObject;
    .locals 2

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "cid"

    invoke-virtual {p0}, Lcom/mgmi/g/a;->B()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-object v0
.end method

.method private static f(Lcom/mgmi/g/a;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/mgmi/g/a;->D()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/mgmi/g/a;->c(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0}, Lcom/mgmi/g/a;->D()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static g(Lcom/mgmi/g/a;)Ljava/lang/String;
    .locals 3

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "mid"

    invoke-virtual {p0}, Lcom/mgmi/g/a;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "pid"

    invoke-virtual {p0}, Lcom/mgmi/g/a;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "cnt"

    invoke-virtual {p0}, Lcom/mgmi/g/a;->e()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "nid"

    invoke-virtual {p0}, Lcom/mgmi/g/a;->F()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "npos"

    invoke-virtual {p0}, Lcom/mgmi/g/a;->E()I

    move-result p0

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
