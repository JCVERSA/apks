.class public final Lcom/transsion/sniffer_load/sniffservice/SniffHeaderInjector;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final DEFAULT_ACCEPT:Ljava/lang/String; = "*/*"

.field private static final INSTAGRAM_WWW_ORIGIN:Ljava/lang/String; = "https://www.instagram.com"

.field private static final SNAPCHAT_WWW_ORIGIN:Ljava/lang/String; = "https://www.snapchat.com"

.field private static final YOUTUBE_WWW_ORIGIN:Ljava/lang/String; = "https://www.youtube.com"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static appendTrailingSlash(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_1
    :goto_0
    return-object p0
.end method

.method private static buildDefaultAcceptLanguage()Ljava/lang/String;
    .locals 4

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ","

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ";q=0.9"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static buildHeadersFromProgress(Lcom/lzy/okgo/model/Progress;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lzy/okgo/model/Progress;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {p0}, Lcom/transsion/sniffer_load/sniffservice/SniffHeaderInjector;->injectProgress(Lcom/lzy/okgo/model/Progress;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    const-string v1, "User-Agent"

    iget-object v2, p0, Lcom/lzy/okgo/model/Progress;->uaAgent:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/transsion/sniffer_load/sniffservice/SniffHeaderInjector;->putIfNotEmpty(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "Cookie"

    iget-object v2, p0, Lcom/lzy/okgo/model/Progress;->cookie:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/transsion/sniffer_load/sniffservice/SniffHeaderInjector;->putIfNotEmpty(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "Referer"

    iget-object v2, p0, Lcom/lzy/okgo/model/Progress;->referer:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/transsion/sniffer_load/sniffservice/SniffHeaderInjector;->putIfNotEmpty(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "Origin"

    iget-object v2, p0, Lcom/lzy/okgo/model/Progress;->origin:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/transsion/sniffer_load/sniffservice/SniffHeaderInjector;->putIfNotEmpty(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "Accept"

    iget-object v2, p0, Lcom/lzy/okgo/model/Progress;->acceptType:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/transsion/sniffer_load/sniffservice/SniffHeaderInjector;->putIfNotEmpty(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "Accept-Language"

    iget-object p0, p0, Lcom/lzy/okgo/model/Progress;->acceptLanguage:Ljava/lang/String;

    invoke-static {v0, v1, p0}, Lcom/transsion/sniffer_load/sniffservice/SniffHeaderInjector;->putIfNotEmpty(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private static fillHeaders(Lcom/lzy/okgo/model/Progress;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/lzy/okgo/model/Progress;->uaAgent:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lfr9;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 19
    sget-object v0, Lfr9;->d:Ljava/lang/String;

    iput-object v0, p0, Lcom/lzy/okgo/model/Progress;->uaAgent:Ljava/lang/String;

    .line 20
    :cond_0
    iget-object v0, p0, Lcom/lzy/okgo/model/Progress;->referer:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 21
    iput-object p1, p0, Lcom/lzy/okgo/model/Progress;->referer:Ljava/lang/String;

    .line 22
    :cond_1
    iget-object v0, p0, Lcom/lzy/okgo/model/Progress;->origin:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 23
    invoke-static {p1}, Lcom/transsion/sniffer_load/sniffservice/SniffHeaderInjector;->parseOrigin(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lzy/okgo/model/Progress;->origin:Ljava/lang/String;

    .line 24
    :cond_2
    iget-object v0, p0, Lcom/lzy/okgo/model/Progress;->cookie:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 25
    invoke-static {p2, p1}, Lcom/transsion/sniffer_load/sniffservice/SniffHeaderInjector;->resolveCookie(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lzy/okgo/model/Progress;->cookie:Ljava/lang/String;

    .line 26
    :cond_3
    iget-object v0, p0, Lcom/lzy/okgo/model/Progress;->acceptType:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 27
    const-string v0, "*/*"

    iput-object v0, p0, Lcom/lzy/okgo/model/Progress;->acceptType:Ljava/lang/String;

    .line 28
    :cond_4
    iget-object v0, p0, Lcom/lzy/okgo/model/Progress;->acceptLanguage:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 29
    invoke-static {}, Lcom/transsion/sniffer_load/sniffservice/SniffHeaderInjector;->buildDefaultAcceptLanguage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lzy/okgo/model/Progress;->acceptLanguage:Ljava/lang/String;

    .line 30
    :cond_5
    invoke-static {p1}, Lcom/transsion/sniffer_load/sniffservice/SniffHeaderInjector;->isUniversalDownloaderPage(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 31
    invoke-static {p1, p2}, Lcom/transsion/sniffer_load/sniffservice/SniffHeaderInjector;->resolveUniversalDownloaderOrigin(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 32
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_6

    .line 33
    iput-object p1, p0, Lcom/lzy/okgo/model/Progress;->origin:Ljava/lang/String;

    .line 34
    invoke-static {p1}, Lcom/transsion/sniffer_load/sniffservice/SniffHeaderInjector;->appendTrailingSlash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/lzy/okgo/model/Progress;->referer:Ljava/lang/String;

    :cond_6
    return-void
.end method

.method private static fillHeaders(Lcom/transsion/sniffer_load/okdownload/a;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/sniffer_load/okdownload/a;->n:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lfr9;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lfr9;->d:Ljava/lang/String;

    iput-object v0, p0, Lcom/transsion/sniffer_load/okdownload/a;->n:Ljava/lang/String;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/transsion/sniffer_load/okdownload/a;->s:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    iput-object p1, p0, Lcom/transsion/sniffer_load/okdownload/a;->s:Ljava/lang/String;

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/transsion/sniffer_load/okdownload/a;->r:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6
    invoke-static {p1}, Lcom/transsion/sniffer_load/sniffservice/SniffHeaderInjector;->parseOrigin(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/sniffer_load/okdownload/a;->r:Ljava/lang/String;

    .line 7
    :cond_2
    iget-object v0, p0, Lcom/transsion/sniffer_load/okdownload/a;->o:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 8
    invoke-static {p2, p1}, Lcom/transsion/sniffer_load/sniffservice/SniffHeaderInjector;->resolveCookie(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/sniffer_load/okdownload/a;->o:Ljava/lang/String;

    .line 9
    :cond_3
    iget-object v0, p0, Lcom/transsion/sniffer_load/okdownload/a;->q:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 10
    const-string v0, "*/*"

    iput-object v0, p0, Lcom/transsion/sniffer_load/okdownload/a;->q:Ljava/lang/String;

    .line 11
    :cond_4
    iget-object v0, p0, Lcom/transsion/sniffer_load/okdownload/a;->p:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 12
    invoke-static {}, Lcom/transsion/sniffer_load/sniffservice/SniffHeaderInjector;->buildDefaultAcceptLanguage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/sniffer_load/okdownload/a;->p:Ljava/lang/String;

    .line 13
    :cond_5
    invoke-static {p1}, Lcom/transsion/sniffer_load/sniffservice/SniffHeaderInjector;->isUniversalDownloaderPage(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 14
    invoke-static {p1, p2}, Lcom/transsion/sniffer_load/sniffservice/SniffHeaderInjector;->resolveUniversalDownloaderOrigin(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 15
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_6

    .line 16
    iput-object p1, p0, Lcom/transsion/sniffer_load/okdownload/a;->r:Ljava/lang/String;

    .line 17
    invoke-static {p1}, Lcom/transsion/sniffer_load/sniffservice/SniffHeaderInjector;->appendTrailingSlash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/sniffer_load/okdownload/a;->s:Ljava/lang/String;

    :cond_6
    return-void
.end method

.method private static fillTiktokProgress(Lcom/lzy/okgo/model/Progress;)V
    .locals 1

    const-string v0, "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36"

    iput-object v0, p0, Lcom/lzy/okgo/model/Progress;->uaAgent:Ljava/lang/String;

    const-string v0, "zh-CN,zh;q=0.9"

    iput-object v0, p0, Lcom/lzy/okgo/model/Progress;->acceptLanguage:Ljava/lang/String;

    const-string v0, "*/*"

    iput-object v0, p0, Lcom/lzy/okgo/model/Progress;->acceptType:Ljava/lang/String;

    const-string v0, "https://www.tiktok.com"

    iput-object v0, p0, Lcom/lzy/okgo/model/Progress;->origin:Ljava/lang/String;

    const-string v0, "https://www.tiktok.com/"

    iput-object v0, p0, Lcom/lzy/okgo/model/Progress;->referer:Ljava/lang/String;

    return-void
.end method

.method public static inject(Lcom/transsion/sniffer_load/okdownload/a;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lpp3;->q()Z

    move-result v0

    if-eqz v0, :cond_4

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/transsion/sniffer_load/okdownload/a;->k:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/transsion/sniffer_load/sniffservice/SniffHeaderInjector;->resolvePageUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p0}, Lcom/transsion/sniffer_load/sniffservice/SniffHeaderInjector;->resolveVideoUrl(Ljava/lang/String;Lcom/transsion/sniffer_load/okdownload/a;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/sniffer_load/sniffservice/SniffTiktokUtil;->isTiktokSite(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {p0}, Lcom/transsion/sniffer_load/sniffservice/SniffTiktokUtil;->fillDownloadingItem(Lcom/transsion/sniffer_load/okdownload/a;)V

    iget-object p2, p0, Lcom/transsion/sniffer_load/okdownload/a;->o:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-static {v0, p1}, Lcom/transsion/sniffer_load/sniffservice/SniffHeaderInjector;->resolveCookie(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/sniffer_load/okdownload/a;->o:Ljava/lang/String;

    :cond_1
    return-void

    :cond_2
    invoke-static {p1}, Lcom/transsion/sniffer_load/sniffservice/SniffTiktokUtil;->isTiktokSite(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {p0}, Lcom/transsion/sniffer_load/sniffservice/SniffHeaderInjector;->isTiktokHeaderFilled(Lcom/transsion/sniffer_load/okdownload/a;)Z

    move-result v0

    if-eqz v0, :cond_3

    return-void

    :cond_3
    invoke-static {p0, p1, p2}, Lcom/transsion/sniffer_load/sniffservice/SniffHeaderInjector;->fillHeaders(Lcom/transsion/sniffer_load/okdownload/a;Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_0
    return-void
.end method

.method public static injectProgress(Lcom/lzy/okgo/model/Progress;)V
    .locals 2

    invoke-static {}, Lpp3;->q()Z

    move-result v0

    if-eqz v0, :cond_4

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/lzy/okgo/model/Progress;->getOriginSite()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/lzy/okgo/model/Progress;->url:Ljava/lang/String;

    invoke-static {v1}, Lcom/transsion/sniffer_load/sniffservice/SniffTiktokUtil;->isTiktokSite(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {p0}, Lcom/transsion/sniffer_load/sniffservice/SniffHeaderInjector;->fillTiktokProgress(Lcom/lzy/okgo/model/Progress;)V

    iget-object v1, p0, Lcom/lzy/okgo/model/Progress;->cookie:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/lzy/okgo/model/Progress;->url:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/transsion/sniffer_load/sniffservice/SniffHeaderInjector;->resolveCookie(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lzy/okgo/model/Progress;->cookie:Ljava/lang/String;

    :cond_1
    return-void

    :cond_2
    invoke-static {v0}, Lcom/transsion/sniffer_load/sniffservice/SniffTiktokUtil;->isTiktokSite(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {p0}, Lcom/transsion/sniffer_load/sniffservice/SniffHeaderInjector;->isTiktokHeaderFilled(Lcom/lzy/okgo/model/Progress;)Z

    move-result v1

    if-eqz v1, :cond_3

    return-void

    :cond_3
    iget-object v1, p0, Lcom/lzy/okgo/model/Progress;->url:Ljava/lang/String;

    invoke-static {p0, v0, v1}, Lcom/transsion/sniffer_load/sniffservice/SniffHeaderInjector;->fillHeaders(Lcom/lzy/okgo/model/Progress;Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_0
    return-void
.end method

.method private static isTiktokHeaderFilled(Lcom/lzy/okgo/model/Progress;)Z
    .locals 1

    if-eqz p0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/lzy/okgo/model/Progress;->referer:Ljava/lang/String;

    .line 5
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "https://www.tiktok.com/"

    iget-object p0, p0, Lcom/lzy/okgo/model/Progress;->referer:Ljava/lang/String;

    .line 6
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static isTiktokHeaderFilled(Lcom/transsion/sniffer_load/okdownload/a;)Z
    .locals 1

    if-eqz p0, :cond_0

    .line 1
    iget-object v0, p0, Lcom/transsion/sniffer_load/okdownload/a;->s:Ljava/lang/String;

    .line 2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "https://www.tiktok.com/"

    iget-object p0, p0, Lcom/transsion/sniffer_load/okdownload/a;->s:Ljava/lang/String;

    .line 3
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static isUniversalDownloaderPage(Ljava/lang/String;)Z
    .locals 6

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const-string v0, "universal_downloader"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    invoke-static {}, Lcom/transsion/sniffer_load/sniffservice/SniffScriptConfigMgr;->getInstance()Lcom/transsion/sniffer_load/sniffservice/SniffScriptConfigMgr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/sniffer_load/sniffservice/SniffScriptConfigMgr;->getsClientForbidSniffUrlList()[Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    return v1

    :cond_2
    array-length v2, v0

    move v3, v1

    :goto_0
    if-ge v3, v2, :cond_4

    aget-object v4, v0, v3

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    invoke-virtual {p0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 p0, 0x1

    return p0

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    return v1
.end method

.method private static parseOrigin(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    :try_start_0
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/net/Uri;->getPort()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "://"

    if-lez v0, :cond_2

    const/16 v3, 0x50

    if-eq v0, v3, :cond_2

    const/16 v3, 0x1bb

    if-eq v0, v3, :cond_2

    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ":"

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object p0

    :catch_0
    :cond_3
    :goto_0
    return-object v1
.end method

.method private static putIfNotEmpty(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private static resolveCookie(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/just/agentweb/AgentWebConfig;->getCookiesByUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lr0a;->g(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lcom/just/agentweb/AgentWebConfig;->getCookiesByUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method private static resolvePageUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    return-object p1
.end method

.method private static resolveUniversalDownloaderOrigin(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    move-object p0, p1

    :cond_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p0, 0x0

    return-object p0

    :cond_1
    sget-object p1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, p1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "youtube.com"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p0, "https://www.youtube.com"

    return-object p0

    :cond_2
    const-string v0, "instagram.com"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string p0, "https://www.instagram.com"

    return-object p0

    :cond_3
    const-string v0, "snapchat.com"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_4

    const-string p0, "https://www.snapchat.com"

    return-object p0

    :cond_4
    invoke-static {p0}, Lcom/transsion/sniffer_load/sniffservice/SniffHeaderInjector;->parseOrigin(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static resolveVideoUrl(Ljava/lang/String;Lcom/transsion/sniffer_load/okdownload/a;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    if-eqz p1, :cond_1

    iget-object p0, p1, Lcom/transsion/sniffer_load/okdownload/a;->b:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method
