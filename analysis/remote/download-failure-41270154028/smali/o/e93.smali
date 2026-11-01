.class public Lo/e93;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    :try_start_0
    const/4 v0, 0x0

    invoke-static {p1}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    move-result-object p1

    const/4 v0, 0x3

    invoke-virtual {p1}, Landroid/webkit/CookieSyncManager;->startSync()V

    goto :goto_0

    :catch_0
    move-exception p0

    const/4 v0, 0x6

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v0, 0x6

    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, p0}, Landroid/webkit/CookieManager;->getCookie(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x3

    return-object p0

    :goto_1
    const/4 v0, 0x1

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 v0, 0x3

    const/4 p0, 0x0

    return-object p0
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    :try_start_0
    invoke-static {}, Lo/pz5;->a()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {p0, v0}, Lo/e93;->a(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x5

    return-object p0

    :catch_0
    const/4 v1, 0x0

    const/4 p0, 0x0

    return-object p0
.end method

.method public static c(Ljava/lang/String;)Ljava/util/Map;
    .locals 8

    const/4 v7, 0x2

    new-instance v0, Ljava/util/HashMap;

    const/4 v7, 0x2

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v7, 0x3

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v7, 0x3

    if-nez v1, :cond_1

    const/4 v7, 0x4

    const-string v1, ";"

    const/4 v7, 0x7

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    const/4 v7, 0x7

    if-eqz p0, :cond_1

    const/4 v7, 0x7

    array-length v1, p0

    const/4 v2, 0x0

    const/4 v7, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, p0, v3

    const/4 v7, 0x3

    if-eqz v4, :cond_0

    const/4 v7, 0x1

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    const/4 v7, 0x1

    const-string v5, "="

    const/4 v7, 0x5

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    const/4 v7, 0x2

    if-lez v5, :cond_0

    const/4 v7, 0x5

    invoke-virtual {v4, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x6

    add-int/lit8 v5, v5, 0x1

    const/4 v7, 0x6

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    const/4 v7, 0x4

    invoke-interface {v0, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v3, v3, 0x1

    const/4 v7, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static d(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    invoke-static {p0}, Lo/tt7;->g(Ljava/lang/String;)Z

    move-result v0

    const/4 v4, 0x1

    const-string v1, ""

    const/4 v4, 0x6

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    const/4 v4, 0x3

    const/16 v0, 0x3f

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v4, 0x6

    if-ltz v0, :cond_1

    const/4 v4, 0x2

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_1
    const/4 v4, 0x0

    const/16 v0, 0x2f

    const/4 v4, 0x6

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    const/4 v4, 0x7

    const/16 v2, 0x5c

    const/4 v4, 0x5

    invoke-virtual {p0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    const/4 v4, 0x1

    const/16 v3, 0x2e

    const/4 v4, 0x4

    invoke-virtual {p0, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    const/4 v4, 0x7

    if-lt v3, v0, :cond_3

    const/4 v4, 0x6

    if-ge v3, v2, :cond_2

    goto :goto_0

    :cond_2
    const/4 v4, 0x3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    const/4 v4, 0x7

    return-object p0

    :cond_3
    :goto_0
    const/4 v4, 0x7

    return-object v1
.end method

.method public static e(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;
    .locals 1

    invoke-static {p0, p1}, Lo/e93;->f(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    const/4 v0, 0x1

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    const/4 v0, 0x6

    if-nez p1, :cond_0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    const/4 v0, 0x3

    add-int/lit8 p1, p1, -0x1

    const/4 v0, 0x2

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    const/4 v0, 0x4

    check-cast p0, Ljava/lang/String;

    const/4 v0, 0x4

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    const/4 v0, 0x3

    return-object p0
.end method

.method public static f(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;
    .locals 6

    const/4 v5, 0x3

    invoke-static {}, Lo/yq8;->j()Lo/yq8;

    move-result-object v0

    invoke-virtual {v0}, Lo/yq8;->i()Lo/p83;

    move-result-object v0

    const/4 v5, 0x3

    invoke-static {}, Lo/yq8;->j()Lo/yq8;

    move-result-object v1

    const/4 v5, 0x4

    invoke-virtual {v1}, Lo/yq8;->e()Lo/ac2;

    move-result-object v1

    new-instance v2, Lcom/snaptube/video/videoextractor/net/HttpRequest;

    invoke-direct {v2}, Lcom/snaptube/video/videoextractor/net/HttpRequest;-><init>()V

    const/4 v5, 0x0

    const-string v3, "GET"

    invoke-virtual {v2, v3}, Lcom/snaptube/video/videoextractor/net/HttpRequest;->setMethod(Ljava/lang/String;)V

    const/4 v5, 0x4

    invoke-virtual {v2, p0}, Lcom/snaptube/video/videoextractor/net/HttpRequest;->setUrl(Ljava/lang/String;)V

    const/4 v5, 0x7

    const/4 v3, 0x0

    const/4 v5, 0x5

    invoke-virtual {v2, v3}, Lcom/snaptube/video/videoextractor/net/HttpRequest;->setMaxBodySize(I)V

    if-eqz p1, :cond_0

    invoke-virtual {v2, p1}, Lcom/snaptube/video/videoextractor/net/HttpRequest;->setHeaders(Ljava/util/List;)V

    :cond_0
    const/4 v5, 0x6

    if-eqz v1, :cond_1

    const/4 v5, 0x1

    invoke-virtual {v1}, Lo/ac2;->d()Ljava/lang/String;

    move-result-object p1

    const/4 v5, 0x2

    invoke-virtual {v2, p1}, Lcom/snaptube/video/videoextractor/net/HttpRequest;->setProxyGroup(Ljava/lang/String;)V

    :cond_1
    const/4 v5, 0x7

    invoke-virtual {v2, v3}, Lcom/snaptube/video/videoextractor/net/HttpRequest;->setFollowRedirectBehavior(I)V

    new-instance p1, Ljava/util/ArrayList;

    const/4 v5, 0x7

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    invoke-virtual {v2, p0}, Lcom/snaptube/video/videoextractor/net/HttpRequest;->setUrl(Ljava/lang/String;)V

    :try_start_0
    invoke-interface {v0, v2}, Lo/p83;->a(Lcom/snaptube/video/videoextractor/net/HttpRequest;)Lo/a93;

    move-result-object p0

    const/4 v5, 0x3

    const-string v1, "nLsiotoa"

    const-string v1, "Location"

    const/4 v5, 0x6

    invoke-virtual {p0, v1}, Lo/a93;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v5, 0x3

    invoke-static {v1}, Lo/hf8;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v5, 0x2

    if-eqz v1, :cond_2

    const/4 v5, 0x6

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    const/4 v5, 0x2

    invoke-virtual {p0}, Lo/a93;->h()I

    move-result v3

    const/4 v5, 0x6

    const/16 v4, 0x12c

    const/4 v5, 0x4

    if-lt v3, v4, :cond_4

    const/4 v5, 0x4

    invoke-virtual {p0}, Lo/a93;->h()I

    move-result p0

    const/4 v5, 0x2

    const/16 v3, 0x12f

    const/4 v5, 0x7

    if-gt p0, v3, :cond_4

    if-nez v1, :cond_3

    const/4 v5, 0x1

    goto :goto_1

    :cond_3
    move-object p0, v1

    const/4 v5, 0x6

    goto :goto_0

    :catch_0
    :cond_4
    :goto_1
    const/4 v5, 0x0

    return-object p1
.end method

.method public static g(Ljava/lang/String;Ljava/util/Map;Lcom/snaptube/extractor/pluginlib/common/SiteExtractLog;)Lo/a93;
    .locals 2

    const/4 v0, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x5

    invoke-static {p0, p1, v0, p2}, Lo/e93;->h(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Lcom/snaptube/extractor/pluginlib/common/SiteExtractLog;)Lo/a93;

    move-result-object p0

    const/4 v1, 0x4

    return-object p0
.end method

.method public static h(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Lcom/snaptube/extractor/pluginlib/common/SiteExtractLog;)Lo/a93;
    .locals 5

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v4, 0x4

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    move v4, p0

    return-object p0

    :cond_0
    new-instance v0, Lo/eh;

    const/4 v4, 0x0

    invoke-direct {v0}, Lo/eh;-><init>()V

    const/4 v4, 0x5

    new-instance v1, Lcom/snaptube/video/videoextractor/net/HttpRequest;

    invoke-direct {v1}, Lcom/snaptube/video/videoextractor/net/HttpRequest;-><init>()V

    const/high16 v2, 0x400000

    invoke-virtual {v1, v2}, Lcom/snaptube/video/videoextractor/net/HttpRequest;->setMaxBodySize(I)V

    const/4 v4, 0x2

    if-eqz p2, :cond_1

    const/4 v4, 0x7

    const-string v2, "POST"

    const/4 v4, 0x1

    invoke-virtual {v1, v2}, Lcom/snaptube/video/videoextractor/net/HttpRequest;->setMethod(Ljava/lang/String;)V

    const/4 v4, 0x4

    invoke-virtual {v1, p2}, Lcom/snaptube/video/videoextractor/net/HttpRequest;->setData(Ljava/lang/String;)V

    const/4 v4, 0x5

    goto :goto_0

    :cond_1
    const-string p2, "GET"

    const-string p2, "GET"

    const/4 v4, 0x0

    invoke-virtual {v1, p2}, Lcom/snaptube/video/videoextractor/net/HttpRequest;->setMethod(Ljava/lang/String;)V

    :goto_0
    invoke-virtual {v1, p0}, Lcom/snaptube/video/videoextractor/net/HttpRequest;->setUrl(Ljava/lang/String;)V

    if-eqz p1, :cond_3

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    const/4 v4, 0x4

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    const/4 v4, 0x1

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    const/4 v4, 0x4

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    const/4 v4, 0x2

    check-cast p2, Ljava/util/Map$Entry;

    new-instance v2, Lcom/snaptube/video/videoextractor/net/HttpHeader;

    const/4 v4, 0x5

    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    const/4 v4, 0x5

    check-cast v3, Ljava/lang/String;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    const/4 v4, 0x1

    check-cast p2, Ljava/lang/String;

    invoke-direct {v2, v3, p2}, Lcom/snaptube/video/videoextractor/net/HttpHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x0

    invoke-interface {p0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    invoke-virtual {v1, p0}, Lcom/snaptube/video/videoextractor/net/HttpRequest;->setHeaders(Ljava/util/List;)V

    :cond_3
    invoke-interface {v0, v1}, Lo/p83;->a(Lcom/snaptube/video/videoextractor/net/HttpRequest;)Lo/a93;

    move-result-object p0

    const/4 v4, 0x2

    if-eqz p3, :cond_4

    invoke-virtual {p0}, Lo/a93;->h()I

    move-result p1

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "eptmth_od"

    const-string p2, "http_code"

    const/4 v4, 0x5

    invoke-virtual {p3, p2, p1}, Lcom/snaptube/extractor/pluginlib/common/SiteExtractLog;->putInfo(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_4
    const/4 v4, 0x2

    return-object p0
.end method

.method public static i(Lcom/snaptube/extractor/pluginlib/models/PageContext;Ljava/lang/String;Lcom/snaptube/extractor/pluginlib/common/SiteExtractLog;)Ljava/lang/String;
    .locals 5

    const/4 v4, 0x6

    const/4 v0, 0x0

    const/4 v4, 0x3

    if-nez p0, :cond_0

    move-object v1, v0

    move-object v1, v0

    const/4 v4, 0x3

    goto :goto_0

    :cond_0
    const/4 v4, 0x7

    invoke-virtual {p0}, Lcom/snaptube/extractor/pluginlib/models/PageContext;->j()Ljava/lang/String;

    move-result-object v1

    :goto_0
    const/4 v4, 0x4

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v4, 0x2

    if-eqz v2, :cond_1

    return-object v0

    :cond_1
    const/4 v4, 0x1

    new-instance v0, Ljava/util/HashMap;

    const/4 v4, 0x2

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v2, "ekcooo"

    const-string v2, "cookie"

    const/4 v4, 0x3

    invoke-virtual {p0, v2}, Lcom/snaptube/extractor/pluginlib/models/PageContext;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {v1}, Lo/e93;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :cond_2
    const/4 v4, 0x1

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    const/4 v4, 0x4

    const-string v1, "Cookie"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    const/4 v4, 0x6

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string p1, "userAgent"

    const/4 v4, 0x1

    invoke-virtual {p0, p1}, Lcom/snaptube/extractor/pluginlib/models/PageContext;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_4
    const/4 v4, 0x1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v4, 0x0

    if-nez v1, :cond_5

    const-string v1, "AegUebrn-s"

    const-string v1, "User-Agent"

    const/4 v4, 0x1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    const/4 v4, 0x3

    const-string p1, "btapec"

    const-string p1, "accept"

    invoke-virtual {p0, p1}, Lcom/snaptube/extractor/pluginlib/models/PageContext;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v4, 0x4

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    const-string v1, "eef-shetctsic-"

    const-string v1, "sec-fetch-site"

    const/4 v4, 0x0

    const-string v2, "noen"

    const-string v2, "none"

    const/4 v4, 0x0

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v4, 0x2

    const-string v1, "tru-hcfepcees-"

    const-string v1, "sec-fetch-user"

    const-string v2, "?1"

    const-string v2, "?1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "c-md-cseftetoh"

    const-string v1, "sec-fetch-mode"

    const/4 v4, 0x5

    const-string v2, "navigate"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v4, 0x3

    const-string v1, "Accept"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    if-eqz p2, :cond_7

    const-string p1, "head"

    const/4 v4, 0x1

    invoke-virtual {p2, p1, v0}, Lcom/snaptube/extractor/pluginlib/common/SiteExtractLog;->putInfo(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_7
    invoke-virtual {p0}, Lcom/snaptube/extractor/pluginlib/models/PageContext;->j()Ljava/lang/String;

    move-result-object p0

    const/4 v4, 0x1

    invoke-static {p0, v0, p2}, Lo/e93;->m(Ljava/lang/String;Ljava/util/Map;Lcom/snaptube/extractor/pluginlib/common/SiteExtractLog;)Ljava/lang/String;

    move-result-object p0

    const/4 v4, 0x6

    return-object p0
.end method

.method public static j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/4 v1, 0x6

    const/4 v0, 0x0

    const/4 v1, 0x5

    invoke-static {p0, p1, v0, v0}, Lo/e93;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/snaptube/extractor/pluginlib/common/SiteExtractLog;)Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x1

    return-object p0
.end method

.method public static k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/snaptube/extractor/pluginlib/common/SiteExtractLog;)Ljava/lang/String;
    .locals 3

    const/4 v2, 0x6

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v2, 0x6

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    const/4 v2, 0x7

    return-object p0

    :cond_0
    const/4 v2, 0x3

    new-instance v0, Ljava/util/HashMap;

    const/4 v2, 0x7

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    const/4 v2, 0x3

    const-string v1, "User-Agent"

    const/4 v2, 0x6

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    const/4 v2, 0x1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 v2, 0x7

    if-nez p1, :cond_2

    const-string p1, "ooskei"

    const-string p1, "Cookie"

    const/4 v2, 0x6

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    const/4 v2, 0x4

    invoke-static {p0, v0, p3}, Lo/e93;->m(Ljava/lang/String;Ljava/util/Map;Lcom/snaptube/extractor/pluginlib/common/SiteExtractLog;)Ljava/lang/String;

    move-result-object p0

    const/4 v2, 0x4

    return-object p0
.end method

.method public static l(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lo/e93;->m(Ljava/lang/String;Ljava/util/Map;Lcom/snaptube/extractor/pluginlib/common/SiteExtractLog;)Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x4

    return-object p0
.end method

.method public static m(Ljava/lang/String;Ljava/util/Map;Lcom/snaptube/extractor/pluginlib/common/SiteExtractLog;)Ljava/lang/String;
    .locals 3

    const/4 v2, 0x7

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v2, 0x0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    return-object v1

    :cond_0
    const/4 v2, 0x5

    invoke-static {p0, p1, p2}, Lo/e93;->g(Ljava/lang/String;Ljava/util/Map;Lcom/snaptube/extractor/pluginlib/common/SiteExtractLog;)Lo/a93;

    move-result-object p0

    const/4 v2, 0x2

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lo/a93;->j()Ljava/lang/String;

    move-result-object v1

    :goto_0
    const/4 v2, 0x0

    return-object v1
.end method
