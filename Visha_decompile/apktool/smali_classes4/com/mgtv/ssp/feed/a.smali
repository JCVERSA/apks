.class public Lcom/mgtv/ssp/feed/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/mgtv/ssp/feed/a;->a:I

    return-void
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;Lcom/mgtv/ssp/bean/a;)V
    .locals 12

    if-eqz p1, :cond_8

    if-nez p3, :cond_0

    goto/16 :goto_2

    .line 16
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 17
    new-instance v0, Lcom/mgtv/task/m;

    invoke-direct {v0, p1}, Lcom/mgtv/task/m;-><init>(Landroid/content/Context;)V

    .line 18
    invoke-static {}, Lcom/mgtv/ssp/net/a;->a()Lcom/mgtv/ssp/net/ContentSdkBaseImgoHttpParams;

    move-result-object v9

    .line 19
    invoke-static {}, Lcom/mgtv/ssp/auth/b;->a()Lcom/mgtv/ssp/auth/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mgtv/ssp/auth/b;->e()Lcom/mgtv/ssp/bean/config/SspSdkConfig;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 20
    const-string v2, "cxid"

    invoke-virtual {v1}, Lcom/mgtv/ssp/bean/config/SspSdkConfig;->getCxid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v2, v1}, Lcom/mgtv/task/http/HttpParams;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/mgtv/task/http/HttpParams;

    .line 21
    :cond_1
    iget v1, p3, Lcom/mgtv/ssp/bean/a;->a:I

    const-string v2, "spaceId"

    const/4 v3, 0x2

    if-ne v1, v3, :cond_3

    .line 22
    iget-object v1, p3, Lcom/mgtv/ssp/bean/a;->b:Lcom/mgtv/ssp/auth/EntranceInfo;

    if-eqz v1, :cond_2

    .line 23
    invoke-virtual {v1}, Lcom/mgtv/ssp/auth/EntranceInfo;->getContentId()Ljava/lang/String;

    move-result-object v1

    const-string v4, "card"

    invoke-static {v1, v4}, Lcom/hunantv/imgo/util/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    invoke-static {v4}, Lcom/hunantv/imgo/util/b;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v2, v1}, Lcom/mgtv/task/http/HttpParams;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/mgtv/task/http/HttpParams;

    .line 25
    :cond_2
    new-instance v1, Lcom/mgtv/ssp/feed/fragment/FeedFragment;

    invoke-direct {v1}, Lcom/mgtv/ssp/feed/fragment/FeedFragment;-><init>()V

    .line 26
    iget-object v2, p3, Lcom/mgtv/ssp/bean/a;->c:Lcom/mgtv/ssp/callback/MgSspSdkCallback;

    invoke-virtual {v1, v2}, Lcom/mgtv/ssp/fragment/RootFragment;->a(Lcom/mgtv/ssp/callback/MgSspSdkCallback;)V

    .line 27
    iget-object v2, p3, Lcom/mgtv/ssp/bean/a;->b:Lcom/mgtv/ssp/auth/EntranceInfo;

    invoke-virtual {v1, v2}, Lcom/mgtv/ssp/fragment/RootFragment;->a(Lcom/mgtv/ssp/auth/EntranceInfo;)V

    :goto_0
    move-object v4, v1

    goto :goto_1

    :cond_3
    const/4 v4, 0x3

    if-ne v1, v4, :cond_5

    .line 28
    iget-object v1, p3, Lcom/mgtv/ssp/bean/a;->b:Lcom/mgtv/ssp/auth/EntranceInfo;

    if-eqz v1, :cond_4

    .line 29
    invoke-virtual {v1}, Lcom/mgtv/ssp/auth/EntranceInfo;->getContentId()Ljava/lang/String;

    move-result-object v1

    const-string v4, "immersion"

    invoke-static {v1, v4}, Lcom/hunantv/imgo/util/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    invoke-static {v4}, Lcom/hunantv/imgo/util/b;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v2, v1}, Lcom/mgtv/task/http/HttpParams;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/mgtv/task/http/HttpParams;

    .line 31
    :cond_4
    new-instance v1, Lcom/mgtv/ssp/immersion/ui/ImmersionVideoFragment;

    invoke-direct {v1}, Lcom/mgtv/ssp/immersion/ui/ImmersionVideoFragment;-><init>()V

    .line 32
    iget-object v2, p3, Lcom/mgtv/ssp/bean/a;->c:Lcom/mgtv/ssp/callback/MgSspSdkCallback;

    invoke-virtual {v1, v2}, Lcom/mgtv/ssp/fragment/RootFragment;->a(Lcom/mgtv/ssp/callback/MgSspSdkCallback;)V

    .line 33
    iget-object v2, p3, Lcom/mgtv/ssp/bean/a;->b:Lcom/mgtv/ssp/auth/EntranceInfo;

    invoke-virtual {v1, v2}, Lcom/mgtv/ssp/fragment/RootFragment;->a(Lcom/mgtv/ssp/auth/EntranceInfo;)V

    goto :goto_0

    :cond_5
    const/4 v1, 0x0

    goto :goto_0

    :goto_1
    if-nez v4, :cond_6

    return-void

    .line 34
    :cond_6
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 35
    invoke-static {v3}, Lcom/mgtv/ssp/net/a;->a(I)Ljava/lang/String;

    move-result-object p2

    .line 36
    :cond_7
    iget-object v1, p3, Lcom/mgtv/ssp/bean/a;->c:Lcom/mgtv/ssp/callback/MgSspSdkCallback;

    invoke-interface {v1, v4}, Lcom/mgtv/ssp/callback/MgSspSdkCallback;->onStarted(Lcom/mgtv/ssp/fragment/SspFragment;)V

    const/4 v1, 0x1

    .line 37
    invoke-virtual {v0, v1}, Lcom/mgtv/task/m;->a(Z)Lcom/mgtv/task/m;

    move-result-object v0

    const/16 v1, 0x2710

    invoke-virtual {v0, v1}, Lcom/mgtv/task/m;->b(I)Lcom/mgtv/task/m;

    move-result-object v10

    new-instance v11, Lcom/mgtv/ssp/feed/a$1;

    move-object v0, v11

    move-object v1, p0

    move-object v2, p3

    move-object v3, p1

    move-object v7, v9

    move-object v8, p2

    invoke-direct/range {v0 .. v8}, Lcom/mgtv/ssp/feed/a$1;-><init>(Lcom/mgtv/ssp/feed/a;Lcom/mgtv/ssp/bean/a;Landroid/content/Context;Lcom/mgtv/ssp/fragment/SspFragment;JLcom/mgtv/ssp/net/ContentSdkBaseImgoHttpParams;Ljava/lang/String;)V

    invoke-virtual {v10, p2, v9, v11}, Lcom/mgtv/task/m;->a(Ljava/lang/String;Lcom/mgtv/task/http/HttpParams;Lcom/mgtv/task/http/c;)Lcom/mgtv/task/g;

    :cond_8
    :goto_2
    return-void
.end method

.method public static synthetic a(Lcom/mgtv/ssp/feed/a;Landroid/content/Context;Lcom/mgtv/ssp/bean/a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/mgtv/ssp/feed/a;->b(Landroid/content/Context;Lcom/mgtv/ssp/bean/a;)V

    return-void
.end method

.method public static synthetic a(Lcom/mgtv/ssp/feed/a;Lcom/mgtv/ssp/fragment/SspFragment;Lcom/mgtv/ssp/bean/SpaceBean;Lcom/mgtv/ssp/bean/a;JLcom/mgtv/ssp/net/ContentSdkBaseImgoHttpParams;)V
    .locals 0

    .line 2
    invoke-direct/range {p0 .. p6}, Lcom/mgtv/ssp/feed/a;->a(Lcom/mgtv/ssp/fragment/SspFragment;Lcom/mgtv/ssp/bean/SpaceBean;Lcom/mgtv/ssp/bean/a;JLcom/mgtv/ssp/net/ContentSdkBaseImgoHttpParams;)V

    return-void
.end method

.method private a(Lcom/mgtv/ssp/fragment/SspFragment;Lcom/mgtv/ssp/bean/SpaceBean;Lcom/mgtv/ssp/bean/a;JLcom/mgtv/ssp/net/ContentSdkBaseImgoHttpParams;)V
    .locals 8

    .line 38
    const-string v0, ""

    iget-object v1, p3, Lcom/mgtv/ssp/bean/a;->c:Lcom/mgtv/ssp/callback/MgSspSdkCallback;

    if-eqz v1, :cond_2

    if-eqz p2, :cond_0

    .line 39
    :try_start_0
    iget-object v2, p2, Lcom/mgtv/ssp/bean/SpaceBean;->data:Lcom/mgtv/ssp/bean/config/SspSpaceConfig;

    if-eqz v2, :cond_0

    .line 40
    invoke-static {}, Lcom/mgtv/ssp/auth/b;->a()Lcom/mgtv/ssp/auth/b;

    move-result-object p6

    invoke-virtual {p6}, Lcom/mgtv/ssp/auth/b;->f()Z

    move-result p6

    if-eqz p6, :cond_2

    .line 41
    invoke-static {}, Lcom/mgtv/ssp/auth/b;->a()Lcom/mgtv/ssp/auth/b;

    move-result-object p6

    iget-object p2, p2, Lcom/mgtv/ssp/bean/SpaceBean;->data:Lcom/mgtv/ssp/bean/config/SspSpaceConfig;

    invoke-virtual {p6, p2}, Lcom/mgtv/ssp/auth/b;->a(Lcom/mgtv/ssp/bean/config/SspSpaceConfig;)V

    .line 42
    invoke-virtual {p1}, Lcom/mgtv/ssp/fragment/SspFragment;->requestData()V

    const/4 v3, 0x1

    const/4 v4, 0x0

    move-object v0, p0

    move-wide v1, p4

    move-object v5, p3

    .line 43
    invoke-virtual/range {v0 .. v5}, Lcom/mgtv/ssp/feed/a;->a(JZLcom/hunantv/imgo/data/ErrorData;Lcom/mgtv/ssp/bean/a;)V

    goto :goto_2

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_0
    const p1, 0x186a3

    .line 44
    invoke-interface {v1, p1, v0}, Lcom/mgtv/ssp/callback/MgSspSdkCallback;->onFail(ILjava/lang/String;)V

    .line 45
    new-instance v6, Lcom/hunantv/imgo/data/ErrorData;

    invoke-direct {v6}, Lcom/hunantv/imgo/data/ErrorData;-><init>()V

    const/4 p1, 0x2

    .line 46
    invoke-static {p1}, Lcom/mgtv/ssp/net/a;->a(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v6, p1}, Lcom/hunantv/imgo/data/ErrorData;->setUrl(Ljava/lang/String;)V

    .line 47
    const-string p1, "100003"

    invoke-virtual {v6, p1}, Lcom/hunantv/imgo/data/ErrorData;->setCode(Ljava/lang/String;)V

    .line 48
    const-string p1, "data is null"

    invoke-virtual {v6, p1}, Lcom/hunantv/imgo/data/ErrorData;->setMsg(Ljava/lang/String;)V

    if-nez p6, :cond_1

    goto :goto_0

    .line 49
    :cond_1
    invoke-virtual {p6}, Lcom/mgtv/task/http/HttpParams;->buildParameter()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v6, v0}, Lcom/hunantv/imgo/data/ErrorData;->setParam(Ljava/lang/String;)V

    const/4 v5, 0x0

    move-object v2, p0

    move-wide v3, p4

    move-object v7, p3

    .line 50
    invoke-virtual/range {v2 .. v7}, Lcom/mgtv/ssp/feed/a;->a(JZLcom/hunantv/imgo/data/ErrorData;Lcom/mgtv/ssp/bean/a;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 51
    :goto_1
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 52
    iget-object p0, p3, Lcom/mgtv/ssp/bean/a;->c:Lcom/mgtv/ssp/callback/MgSspSdkCallback;

    const p1, 0x186a0

    const-string p2, "data error"

    invoke-interface {p0, p1, p2}, Lcom/mgtv/ssp/callback/MgSspSdkCallback;->onFail(ILjava/lang/String;)V

    :cond_2
    :goto_2
    return-void
.end method

.method private a(Lcom/mgtv/ssp/callback/MgSspSdkCallback;)Z
    .locals 4

    .line 7
    invoke-static {}, Lcom/mgtv/ssp/auth/b;->a()Lcom/mgtv/ssp/auth/b;

    move-result-object p0

    invoke-virtual {p0}, Lcom/mgtv/ssp/auth/b;->b()I

    move-result p0

    const-string v0, "\u521d\u59cb\u5316\u6ca1\u6709\u6210\u529f"

    const v1, 0x186a0

    const/4 v2, 0x0

    if-eqz p0, :cond_0

    .line 8
    invoke-static {}, Lcom/mgtv/ssp/auth/b;->a()Lcom/mgtv/ssp/auth/b;

    move-result-object p0

    invoke-virtual {p0}, Lcom/mgtv/ssp/auth/b;->b()I

    move-result p0

    add-int/2addr p0, v1

    invoke-interface {p1, p0, v0}, Lcom/mgtv/ssp/callback/MgSspSdkCallback;->onFail(ILjava/lang/String;)V

    return v2

    .line 9
    :cond_0
    invoke-static {}, Lcom/mgtv/ssp/auth/b;->a()Lcom/mgtv/ssp/auth/b;

    move-result-object p0

    invoke-virtual {p0}, Lcom/mgtv/ssp/auth/b;->c()Lcom/mgtv/ssp/bean/config/a;

    move-result-object p0

    if-eqz p0, :cond_4

    .line 10
    invoke-static {}, Lcom/mgtv/ssp/auth/b;->a()Lcom/mgtv/ssp/auth/b;

    move-result-object p0

    invoke-virtual {p0}, Lcom/mgtv/ssp/auth/b;->c()Lcom/mgtv/ssp/bean/config/a;

    invoke-static {}, Lcom/mgtv/ssp/bean/config/a;->a()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    const-string v3, "\u6e20\u9053\u5f02\u5e38"

    if-nez p0, :cond_3

    .line 11
    invoke-static {}, Lcom/mgtv/ssp/auth/b;->a()Lcom/mgtv/ssp/auth/b;

    move-result-object p0

    invoke-virtual {p0}, Lcom/mgtv/ssp/auth/b;->e()Lcom/mgtv/ssp/bean/config/SspSdkConfig;

    move-result-object p0

    if-nez p0, :cond_1

    .line 12
    invoke-static {}, Lcom/mgtv/ssp/auth/b;->a()Lcom/mgtv/ssp/auth/b;

    move-result-object p0

    invoke-virtual {p0}, Lcom/mgtv/ssp/auth/b;->b()I

    move-result p0

    add-int/2addr p0, v1

    invoke-interface {p1, p0, v0}, Lcom/mgtv/ssp/callback/MgSspSdkCallback;->onFail(ILjava/lang/String;)V

    return v2

    .line 13
    :cond_1
    invoke-static {}, Lcom/mgtv/ssp/auth/b;->a()Lcom/mgtv/ssp/auth/b;

    move-result-object p0

    invoke-virtual {p0}, Lcom/mgtv/ssp/auth/b;->e()Lcom/mgtv/ssp/bean/config/SspSdkConfig;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-static {}, Lcom/mgtv/ssp/auth/b;->a()Lcom/mgtv/ssp/auth/b;

    move-result-object p0

    invoke-virtual {p0}, Lcom/mgtv/ssp/auth/b;->e()Lcom/mgtv/ssp/bean/config/SspSdkConfig;

    move-result-object p0

    invoke-virtual {p0}, Lcom/mgtv/ssp/bean/config/SspSdkConfig;->getStatus()I

    move-result p0

    if-nez p0, :cond_2

    const/4 p0, 0x1

    return p0

    .line 14
    :cond_2
    invoke-static {}, Lcom/mgtv/ssp/auth/b;->a()Lcom/mgtv/ssp/auth/b;

    move-result-object p0

    invoke-virtual {p0}, Lcom/mgtv/ssp/auth/b;->e()Lcom/mgtv/ssp/bean/config/SspSdkConfig;

    move-result-object p0

    invoke-virtual {p0}, Lcom/mgtv/ssp/bean/config/SspSdkConfig;->getStatus()I

    move-result p0

    add-int/2addr p0, v1

    invoke-interface {p1, p0, v3}, Lcom/mgtv/ssp/callback/MgSspSdkCallback;->onFail(ILjava/lang/String;)V

    goto :goto_0

    :cond_3
    const p0, 0x186a1

    .line 15
    invoke-interface {p1, p0, v3}, Lcom/mgtv/ssp/callback/MgSspSdkCallback;->onFail(ILjava/lang/String;)V

    :cond_4
    :goto_0
    return v2
.end method

.method private b(Landroid/content/Context;Lcom/mgtv/ssp/bean/a;)V
    .locals 2

    iget v0, p0, Lcom/mgtv/ssp/feed/a;->a:I

    if-nez v0, :cond_0

    const-string v0, "SDKCONFIG_SWITCH"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/hunantv/imgo/util/PreferencesUtil;->a(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/mgtv/ssp/feed/a;->a:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/mgtv/ssp/feed/a;->a:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/hunantv/imgo/net/a;->l()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/api/spaceConfig"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0, p2}, Lcom/mgtv/ssp/feed/a;->a(Landroid/content/Context;Ljava/lang/String;Lcom/mgtv/ssp/bean/a;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public a(JZLcom/hunantv/imgo/data/ErrorData;Lcom/mgtv/ssp/bean/a;)V
    .locals 6

    if-eqz p5, :cond_2

    .line 53
    invoke-static {}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->a()Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;

    move-result-object v0

    iget p0, p5, Lcom/mgtv/ssp/bean/a;->a:I

    const/4 p5, 0x2

    if-ne p0, p5, :cond_0

    const-string p0, "card"

    :goto_0
    move-object v5, p0

    goto :goto_1

    :cond_0
    const/4 p5, 0x3

    if-ne p0, p5, :cond_1

    const-string p0, "immersion"

    goto :goto_0

    :cond_1
    const-string p0, "vod"

    goto :goto_0

    :goto_1
    move-wide v1, p1

    move v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->a(JZLcom/hunantv/imgo/data/ErrorData;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public a(Landroid/content/Context;Lcom/mgtv/ssp/bean/a;)V
    .locals 1

    if-eqz p2, :cond_0

    .line 3
    iget-object v0, p2, Lcom/mgtv/ssp/bean/a;->c:Lcom/mgtv/ssp/callback/MgSspSdkCallback;

    if-eqz v0, :cond_0

    .line 4
    invoke-direct {p0, v0}, Lcom/mgtv/ssp/feed/a;->a(Lcom/mgtv/ssp/callback/MgSspSdkCallback;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/mgtv/ssp/feed/a;->a:I

    .line 6
    const-string v0, ""

    invoke-direct {p0, p1, v0, p2}, Lcom/mgtv/ssp/feed/a;->a(Landroid/content/Context;Ljava/lang/String;Lcom/mgtv/ssp/bean/a;)V

    :cond_0
    return-void
.end method
