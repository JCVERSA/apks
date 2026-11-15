.class public Lcom/mgtv/ssp/feed/b;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/mgtv/ssp/feed/b;Lcom/mgtv/ssp/viewcard/BaseVideoListView;Lcom/mgtv/ssp/bean/SpaceBean;Lcom/mgtv/ssp/bean/a;JLcom/mgtv/ssp/net/ContentSdkBaseImgoHttpParams;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p6}, Lcom/mgtv/ssp/feed/b;->a(Lcom/mgtv/ssp/viewcard/BaseVideoListView;Lcom/mgtv/ssp/bean/SpaceBean;Lcom/mgtv/ssp/bean/a;JLcom/mgtv/ssp/net/ContentSdkBaseImgoHttpParams;)V

    return-void
.end method

.method private a(Lcom/mgtv/ssp/viewcard/BaseVideoListView;Lcom/mgtv/ssp/bean/SpaceBean;Lcom/mgtv/ssp/bean/a;JLcom/mgtv/ssp/net/ContentSdkBaseImgoHttpParams;)V
    .locals 8

    .line 16
    const-string v0, ""

    iget-object v1, p3, Lcom/mgtv/ssp/bean/a;->c:Lcom/mgtv/ssp/callback/MgSspSdkCallback;

    if-eqz v1, :cond_3

    if-eqz p2, :cond_0

    .line 17
    :try_start_0
    iget-object v2, p2, Lcom/mgtv/ssp/bean/SpaceBean;->data:Lcom/mgtv/ssp/bean/config/SspSpaceConfig;

    if-eqz v2, :cond_0

    .line 18
    invoke-static {}, Lcom/mgtv/ssp/auth/b;->a()Lcom/mgtv/ssp/auth/b;

    move-result-object p6

    invoke-virtual {p6}, Lcom/mgtv/ssp/auth/b;->f()Z

    move-result p6

    if-eqz p6, :cond_3

    .line 19
    invoke-static {}, Lcom/mgtv/ssp/auth/b;->a()Lcom/mgtv/ssp/auth/b;

    move-result-object p6

    iget-object p2, p2, Lcom/mgtv/ssp/bean/SpaceBean;->data:Lcom/mgtv/ssp/bean/config/SspSpaceConfig;

    invoke-virtual {p6, p2}, Lcom/mgtv/ssp/auth/b;->a(Lcom/mgtv/ssp/bean/config/SspSpaceConfig;)V

    .line 20
    invoke-virtual {p1}, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->n()V

    const/4 v3, 0x1

    const/4 v4, 0x0

    move-object v0, p0

    move-wide v1, p4

    move-object v5, p3

    .line 21
    invoke-virtual/range {v0 .. v5}, Lcom/mgtv/ssp/feed/b;->a(JZLcom/hunantv/imgo/data/ErrorData;Lcom/mgtv/ssp/bean/a;)V

    goto :goto_2

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_0
    const p2, 0x186a3

    .line 22
    invoke-interface {v1, p2, v0}, Lcom/mgtv/ssp/callback/MgSspSdkCallback;->onFail(ILjava/lang/String;)V

    .line 23
    new-instance v6, Lcom/hunantv/imgo/data/ErrorData;

    invoke-direct {v6}, Lcom/hunantv/imgo/data/ErrorData;-><init>()V

    const/4 p2, 0x2

    .line 24
    invoke-static {p2}, Lcom/mgtv/ssp/net/a;->a(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v6, p2}, Lcom/hunantv/imgo/data/ErrorData;->setUrl(Ljava/lang/String;)V

    .line 25
    const-string p2, "100003"

    invoke-virtual {v6, p2}, Lcom/hunantv/imgo/data/ErrorData;->setCode(Ljava/lang/String;)V

    .line 26
    const-string p2, "data is null"

    invoke-virtual {v6, p2}, Lcom/hunantv/imgo/data/ErrorData;->setMsg(Ljava/lang/String;)V

    if-nez p6, :cond_1

    goto :goto_0

    .line 27
    :cond_1
    invoke-virtual {p6}, Lcom/mgtv/task/http/HttpParams;->buildParameter()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v6, v0}, Lcom/hunantv/imgo/data/ErrorData;->setParam(Ljava/lang/String;)V

    .line 28
    invoke-static {}, Lcom/mgtv/ssp/auth/b;->a()Lcom/mgtv/ssp/auth/b;

    move-result-object p2

    invoke-virtual {p2}, Lcom/mgtv/ssp/auth/b;->f()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 29
    invoke-virtual {p1}, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->n()V

    :cond_2
    const/4 v5, 0x0

    move-object v2, p0

    move-wide v3, p4

    move-object v7, p3

    .line 30
    invoke-virtual/range {v2 .. v7}, Lcom/mgtv/ssp/feed/b;->a(JZLcom/hunantv/imgo/data/ErrorData;Lcom/mgtv/ssp/bean/a;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 31
    :goto_1
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 32
    iget-object p0, p3, Lcom/mgtv/ssp/bean/a;->c:Lcom/mgtv/ssp/callback/MgSspSdkCallback;

    const p1, 0x186a0

    const-string p2, "data error"

    invoke-interface {p0, p1, p2}, Lcom/mgtv/ssp/callback/MgSspSdkCallback;->onFail(ILjava/lang/String;)V

    :cond_3
    :goto_2
    return-void
.end method

.method private a(Lcom/mgtv/ssp/callback/MgSspSdkCallback;)Z
    .locals 4

    .line 5
    invoke-static {}, Lcom/mgtv/ssp/auth/b;->a()Lcom/mgtv/ssp/auth/b;

    move-result-object p0

    invoke-virtual {p0}, Lcom/mgtv/ssp/auth/b;->b()I

    move-result p0

    const-string v0, "\u521d\u59cb\u5316\u6ca1\u6709\u6210\u529f"

    const v1, 0x186a0

    const/4 v2, 0x0

    if-eqz p0, :cond_0

    .line 6
    invoke-static {}, Lcom/mgtv/ssp/auth/a;->a()V

    .line 7
    invoke-static {}, Lcom/mgtv/ssp/auth/b;->a()Lcom/mgtv/ssp/auth/b;

    move-result-object p0

    invoke-virtual {p0}, Lcom/mgtv/ssp/auth/b;->b()I

    move-result p0

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
    .locals 11

    if-eqz p1, :cond_7

    if-nez p2, :cond_0

    goto/16 :goto_2

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    new-instance v0, Lcom/mgtv/task/m;

    invoke-direct {v0, p1}, Lcom/mgtv/task/m;-><init>(Landroid/content/Context;)V

    invoke-static {}, Lcom/mgtv/ssp/net/a;->a()Lcom/mgtv/ssp/net/ContentSdkBaseImgoHttpParams;

    move-result-object v7

    invoke-static {}, Lcom/mgtv/ssp/auth/b;->a()Lcom/mgtv/ssp/auth/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mgtv/ssp/auth/b;->e()Lcom/mgtv/ssp/bean/config/SspSdkConfig;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v2, "cxid"

    invoke-virtual {v1}, Lcom/mgtv/ssp/bean/config/SspSdkConfig;->getCxid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v2, v1}, Lcom/mgtv/task/http/HttpParams;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/mgtv/task/http/HttpParams;

    :cond_1
    iget v1, p2, Lcom/mgtv/ssp/bean/a;->a:I

    const-string v2, "spaceId"

    const/4 v3, 0x2

    if-ne v1, v3, :cond_3

    iget-object v1, p2, Lcom/mgtv/ssp/bean/a;->b:Lcom/mgtv/ssp/auth/EntranceInfo;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/mgtv/ssp/auth/EntranceInfo;->getContentId()Ljava/lang/String;

    move-result-object v1

    const-string v6, "card"

    invoke-static {v1, v6}, Lcom/hunantv/imgo/util/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v6}, Lcom/hunantv/imgo/util/b;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v2, v1}, Lcom/mgtv/task/http/HttpParams;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/mgtv/task/http/HttpParams;

    :cond_2
    new-instance v1, Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;

    invoke-direct {v1, p1}, Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;-><init>(Landroid/content/Context;)V

    iget-object p1, p2, Lcom/mgtv/ssp/bean/a;->c:Lcom/mgtv/ssp/callback/MgSspSdkCallback;

    invoke-virtual {v1, p1}, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->setMgSspSdkCallback(Lcom/mgtv/ssp/callback/MgSspSdkCallback;)V

    iget-object p1, p2, Lcom/mgtv/ssp/bean/a;->b:Lcom/mgtv/ssp/auth/EntranceInfo;

    invoke-virtual {v1, p1}, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->setInfo(Lcom/mgtv/ssp/auth/EntranceInfo;)V

    :goto_0
    move-object p1, v1

    goto :goto_1

    :cond_3
    const/4 v6, 0x3

    if-ne v1, v6, :cond_5

    iget-object v1, p2, Lcom/mgtv/ssp/bean/a;->b:Lcom/mgtv/ssp/auth/EntranceInfo;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/mgtv/ssp/auth/EntranceInfo;->getContentId()Ljava/lang/String;

    move-result-object v1

    const-string v6, "immersion"

    invoke-static {v1, v6}, Lcom/hunantv/imgo/util/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v6}, Lcom/hunantv/imgo/util/b;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v2, v1}, Lcom/mgtv/task/http/HttpParams;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/mgtv/task/http/HttpParams;

    :cond_4
    new-instance v1, Lcom/mgtv/ssp/feed/viewcard/ImmersionVideoView;

    invoke-direct {v1, p1}, Lcom/mgtv/ssp/feed/viewcard/ImmersionVideoView;-><init>(Landroid/content/Context;)V

    iget-object p1, p2, Lcom/mgtv/ssp/bean/a;->c:Lcom/mgtv/ssp/callback/MgSspSdkCallback;

    invoke-virtual {v1, p1}, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->setMgSspSdkCallback(Lcom/mgtv/ssp/callback/MgSspSdkCallback;)V

    iget-object p1, p2, Lcom/mgtv/ssp/bean/a;->b:Lcom/mgtv/ssp/auth/EntranceInfo;

    invoke-virtual {v1, p1}, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->setInfo(Lcom/mgtv/ssp/auth/EntranceInfo;)V

    goto :goto_0

    :cond_5
    const/4 p1, 0x0

    :goto_1
    if-nez p1, :cond_6

    return-void

    :cond_6
    iget-object v1, p2, Lcom/mgtv/ssp/bean/a;->c:Lcom/mgtv/ssp/callback/MgSspSdkCallback;

    invoke-interface {v1, p1}, Lcom/mgtv/ssp/callback/MgSspSdkCallback;->onStarted(Lcom/mgtv/ssp/SspViewInterface;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/mgtv/task/m;->a(Z)Lcom/mgtv/task/m;

    move-result-object v0

    const/16 v1, 0x2710

    invoke-virtual {v0, v1}, Lcom/mgtv/task/m;->b(I)Lcom/mgtv/task/m;

    move-result-object v8

    invoke-static {v3}, Lcom/mgtv/ssp/net/a;->a(I)Ljava/lang/String;

    move-result-object v9

    new-instance v10, Lcom/mgtv/ssp/feed/b$1;

    move-object v0, v10

    move-object v1, p0

    move-object v2, p2

    move-object v3, p1

    move-object v6, v7

    invoke-direct/range {v0 .. v6}, Lcom/mgtv/ssp/feed/b$1;-><init>(Lcom/mgtv/ssp/feed/b;Lcom/mgtv/ssp/bean/a;Lcom/mgtv/ssp/viewcard/BaseVideoListView;JLcom/mgtv/ssp/net/ContentSdkBaseImgoHttpParams;)V

    invoke-virtual {v8, v9, v7, v10}, Lcom/mgtv/task/m;->a(Ljava/lang/String;Lcom/mgtv/task/http/HttpParams;Lcom/mgtv/task/http/c;)Lcom/mgtv/task/g;

    :cond_7
    :goto_2
    return-void
.end method


# virtual methods
.method public a(JZLcom/hunantv/imgo/data/ErrorData;Lcom/mgtv/ssp/bean/a;)V
    .locals 6

    if-eqz p5, :cond_2

    .line 33
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

    .line 2
    iget-object v0, p2, Lcom/mgtv/ssp/bean/a;->c:Lcom/mgtv/ssp/callback/MgSspSdkCallback;

    if-eqz v0, :cond_0

    .line 3
    invoke-direct {p0, v0}, Lcom/mgtv/ssp/feed/b;->a(Lcom/mgtv/ssp/callback/MgSspSdkCallback;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    invoke-direct {p0, p1, p2}, Lcom/mgtv/ssp/feed/b;->b(Landroid/content/Context;Lcom/mgtv/ssp/bean/a;)V

    :cond_0
    return-void
.end method
