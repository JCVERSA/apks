.class public Lcom/snaptube/extractor/pluginlib/ExtractorWrapper;
.super Ljava/lang/Object;

# interfaces
.implements Lo/fc3;


# static fields
.field private static final PATTER_URL_FIX:Ljava/util/regex/Pattern;

.field public static final TAG:Ljava/lang/String; = "ExtractorWrapper"


# instance fields
.field private final extractSourceTracker:Lo/uc2;

.field private final mSites:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo/qh3;",
            ">;"
        }
    .end annotation
.end field

.field private final mainHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "^(\\S+).*"

    const/16 v1, 0x20

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/snaptube/extractor/pluginlib/ExtractorWrapper;->PATTER_URL_FIX:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lo/qh3;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    :cond_0
    iput-object p1, p0, Lcom/snaptube/extractor/pluginlib/ExtractorWrapper;->mSites:Ljava/util/List;

    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/snaptube/extractor/pluginlib/ExtractorWrapper;->mainHandler:Landroid/os/Handler;

    new-instance p1, Lo/uc2;

    invoke-direct {p1}, Lo/uc2;-><init>()V

    iput-object p1, p0, Lcom/snaptube/extractor/pluginlib/ExtractorWrapper;->extractSourceTracker:Lo/uc2;

    return-void
.end method

.method public static synthetic a(Lo/uc2$b;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/snaptube/extractor/pluginlib/ExtractorWrapper;->lambda$extract$0(Lo/uc2$b;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic b(Lcom/snaptube/extractor/pluginlib/models/PageContext;Lo/df3;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/snaptube/extractor/pluginlib/ExtractorWrapper;->lambda$extract$1(Lcom/snaptube/extractor/pluginlib/models/PageContext;Lo/df3;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private buildForbiddenResult(Lcom/snaptube/extractor/pluginlib/models/PageContext;)Lcom/snaptube/extractor/pluginlib/models/ExtractResult;
    .locals 5

    new-instance v0, Lcom/snaptube/extractor/pluginlib/models/ExtractResult;

    invoke-direct {v0}, Lcom/snaptube/extractor/pluginlib/models/ExtractResult;-><init>()V

    new-instance v1, Lcom/snaptube/extractor/pluginlib/models/VideoInfo;

    invoke-direct {v1}, Lcom/snaptube/extractor/pluginlib/models/VideoInfo;-><init>()V

    invoke-virtual {p1}, Lcom/snaptube/extractor/pluginlib/models/PageContext;->j()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/snaptube/extractor/pluginlib/models/VideoInfo;->setSource(Ljava/lang/String;)V

    new-instance v2, Ljava/util/ArrayList;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    sget-object v3, Lcom/snaptube/extractor/pluginlib/youtube/YoutubeCodec;->M4A_128K:Lcom/snaptube/extractor/pluginlib/youtube/YoutubeCodec;

    invoke-virtual {v3}, Lcom/snaptube/extractor/pluginlib/youtube/YoutubeCodec;->getAlias()Ljava/lang/String;

    move-result-object v3

    const-string v4, "https://rr5---sn-i3b7kn6s.googlevideo.com/videoplayback"

    invoke-static {v4, p1, v3}, Lcom/snaptube/extractor/pluginlib/models/Format;->fromSingleUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/snaptube/extractor/pluginlib/models/Format;

    move-result-object p1

    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1, v2}, Lcom/snaptube/extractor/pluginlib/models/VideoInfo;->setFormats(Ljava/util/List;)V

    const-string p1, "forbidden_pirate_apk"

    invoke-virtual {v1, p1}, Lcom/snaptube/extractor/pluginlib/models/VideoInfo;->setExtractorType(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/snaptube/extractor/pluginlib/models/ExtractResult;->v(Lcom/snaptube/extractor/pluginlib/models/VideoInfo;)V

    return-object v0
.end method

.method private findSite(Ljava/lang/String;)Lo/qh3;
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/snaptube/extractor/pluginlib/ExtractorWrapper;->mSites:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/qh3;

    invoke-interface {v2, p1}, Lo/qh3;->hostMatches(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    return-object v2

    :cond_2
    :goto_0
    return-object v0
.end method

.method public static fixHiddenFile(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    const-string v0, "."

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    return-object p0

    :cond_1
    const-string v0, "^\\."

    const-string v1, "_"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static fixTabChar(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-static {}, Lo/pz5;->b()I

    move-result v0

    const v1, 0x45ffec0

    if-le v0, v1, :cond_0

    return-object p0

    :cond_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-object p0

    :cond_1
    const-string v0, "\t"

    const-string v1, "_"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private fixTitle(Lcom/snaptube/extractor/pluginlib/models/ExtractResult;)V
    .locals 2

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/snaptube/extractor/pluginlib/models/ExtractResult;->j()Lcom/snaptube/extractor/pluginlib/models/VideoInfo;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/snaptube/extractor/pluginlib/models/ExtractResult;->j()Lcom/snaptube/extractor/pluginlib/models/VideoInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/snaptube/extractor/pluginlib/models/VideoInfo;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    :cond_1
    invoke-static {v0}, Lcom/snaptube/extractor/pluginlib/ExtractorWrapper;->fixTabChar(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/snaptube/extractor/pluginlib/ExtractorWrapper;->fixHiddenFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/snaptube/extractor/pluginlib/models/VideoInfo;->setTitle(Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private fixUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    :cond_0
    sget-object v0, Lcom/snaptube/extractor/pluginlib/ExtractorWrapper;->PATTER_URL_FIX:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 p1, 0x1

    invoke-virtual {v0, p1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p1

    :cond_1
    return-object p1
.end method

.method private static synthetic lambda$extract$0(Lo/uc2$b;Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0}, Lo/uc2$b;->b()Landroid/content/Context;

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method private static synthetic lambda$extract$1(Lcom/snaptube/extractor/pluginlib/models/PageContext;Lo/df3;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    const-string p2, "redirected_url"

    invoke-virtual {p0, p2, p3}, Lcom/snaptube/extractor/pluginlib/models/PageContext;->n(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance p2, Lcom/snaptube/extractor/pluginlib/models/ExtractResult;

    invoke-direct {p2}, Lcom/snaptube/extractor/pluginlib/models/ExtractResult;-><init>()V

    invoke-virtual {p2, p0}, Lcom/snaptube/extractor/pluginlib/models/ExtractResult;->s(Lcom/snaptube/extractor/pluginlib/models/PageContext;)V

    const-string p0, "url_redirect_success"

    invoke-virtual {p2, p0}, Lcom/snaptube/extractor/pluginlib/models/ExtractResult;->r(Ljava/lang/String;)V

    invoke-interface {p1, p2}, Lo/df3;->a(Lcom/snaptube/extractor/pluginlib/models/ExtractResult;)V

    return-void
.end method


# virtual methods
.method public extract(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/snaptube/extractor/pluginlib/models/PageContext;->b(Lorg/json/JSONObject;)Lcom/snaptube/extractor/pluginlib/models/PageContext;

    move-result-object p1

    invoke-virtual {p1}, Lcom/snaptube/extractor/pluginlib/models/PageContext;->j()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lo/tc2;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "player"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {p1}, Lcom/snaptube/extractor/pluginlib/models/PageContext;->j()Ljava/lang/String;

    move-result-object v1

    const-string v2, "extract_from"

    invoke-static {v1, v2}, Lo/tc2;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/snaptube/extractor/pluginlib/models/PageContext;->s(Ljava/lang/String;)V

    if-eqz v0, :cond_0

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v2, "from_player"

    invoke-virtual {p1, v2, v1}, Lcom/snaptube/extractor/pluginlib/models/PageContext;->n(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    if-nez v0, :cond_3

    invoke-virtual {p1}, Lcom/snaptube/extractor/pluginlib/models/PageContext;->j()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lo/if9;->D(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lo/xm3;->d()Lo/xm3;

    move-result-object v0

    invoke-virtual {v0}, Lo/xm3;->a()Lo/ma3;

    move-result-object v0

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0xa

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v1

    invoke-interface {v0, v1, v2}, Lo/ma3;->checkAndWait(J)Z

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lo/ma3;->isAvailable(Z)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/snaptube/extractor/pluginlib/ExtractorWrapper;->extractSourceTracker:Lo/uc2;

    invoke-virtual {v0, p2}, Lo/uc2;->h(Ljava/lang/Object;)Lo/uc2$b;

    move-result-object v0

    invoke-virtual {v0}, Lo/uc2$b;->c()Z

    move-result v1

    if-eqz v1, :cond_3

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Code:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lo/xm3;->d()Lo/xm3;

    move-result-object p2

    invoke-virtual {p2}, Lo/xm3;->a()Lo/ma3;

    move-result-object p2

    invoke-interface {p2}, Lo/ma3;->getLastHttpStatusCode()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " This website is not available in your country or region."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0}, Lo/uc2$b;->b()Landroid/content/Context;

    move-result-object p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/snaptube/extractor/pluginlib/ExtractorWrapper;->mainHandler:Landroid/os/Handler;

    new-instance v1, Lo/rd2;

    invoke-direct {v1, v0, p1}, Lo/rd2;-><init>(Lo/uc2$b;Ljava/lang/String;)V

    invoke-virtual {p2, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    sget-object p2, Lcom/snaptube/extractor/pluginlib/ExtractorWrapper;->TAG:Ljava/lang/String;

    const-string v1, "from choose format fragment"

    invoke-static {p2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-virtual {v0}, Lo/uc2$b;->a()Ljava/lang/Runnable;

    move-result-object p2

    if-eqz p2, :cond_2

    iget-object p2, p0, Lcom/snaptube/extractor/pluginlib/ExtractorWrapper;->mainHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Lo/uc2$b;->a()Ljava/lang/Runnable;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_2
    new-instance p2, Lcom/snaptube/extractor/pluginlib/common/ExtractionException;

    sget-object v0, Lcom/snaptube/extractor/pluginlib/models/ExtractError;->NOT_SUPPORTED:Lcom/snaptube/extractor/pluginlib/models/ExtractError;

    invoke-direct {p2, v0, p1}, Lcom/snaptube/extractor/pluginlib/common/ExtractionException;-><init>(Lcom/snaptube/extractor/pluginlib/models/ExtractError;Ljava/lang/String;)V

    throw p2

    :cond_3
    invoke-static {p2}, Lo/no5;->i(Ljava/lang/Object;)Lo/no5;

    move-result-object p2

    new-instance v0, Lcom/snaptube/extractor/pluginlib/ExtractorWrapper$a;

    invoke-direct {v0, p0, p2}, Lcom/snaptube/extractor/pluginlib/ExtractorWrapper$a;-><init>(Lcom/snaptube/extractor/pluginlib/ExtractorWrapper;Lo/no5;)V

    invoke-virtual {p1}, Lcom/snaptube/extractor/pluginlib/models/PageContext;->j()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    :try_start_0
    invoke-static {}, Lo/pz5;->a()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/snaptube/extractor/pluginlib/piratical/OfficialWarningDialog;->h(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-direct {p0, p1}, Lcom/snaptube/extractor/pluginlib/ExtractorWrapper;->buildForbiddenResult(Lcom/snaptube/extractor/pluginlib/models/PageContext;)Lcom/snaptube/extractor/pluginlib/models/ExtractResult;

    move-result-object p2

    invoke-virtual {p2}, Lcom/snaptube/extractor/pluginlib/models/ExtractResult;->x()Lorg/json/JSONObject;

    move-result-object p2

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p1, v1}, Lcom/snaptube/extractor/pluginlib/models/PageContext;->s(Ljava/lang/String;)V

    invoke-static {}, Lo/yq8;->j()Lo/yq8;

    move-result-object p1

    invoke-virtual {p1, v2}, Lo/yq8;->p(Lo/ic2;)V

    invoke-static {}, Lo/zb2;->d()V

    return-object p2

    :catchall_0
    move-exception p2

    goto :goto_1

    :cond_4
    :try_start_1
    invoke-direct {p0, v1}, Lcom/snaptube/extractor/pluginlib/ExtractorWrapper;->fixUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/snaptube/extractor/pluginlib/models/PageContext;->s(Ljava/lang/String;)V

    invoke-static {}, Lo/yq8;->j()Lo/yq8;

    move-result-object v3

    new-instance v4, Lo/sd2;

    invoke-direct {v4, p1, v0}, Lo/sd2;-><init>(Lcom/snaptube/extractor/pluginlib/models/PageContext;Lo/df3;)V

    invoke-virtual {v3, v4}, Lo/yq8;->p(Lo/ic2;)V

    invoke-virtual {p1}, Lcom/snaptube/extractor/pluginlib/models/PageContext;->j()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/snaptube/extractor/pluginlib/ExtractorWrapper;->findSite(Ljava/lang/String;)Lo/qh3;

    move-result-object v3

    if-nez p2, :cond_5

    move-object v0, v2

    :cond_5
    invoke-interface {v3, p1, v0}, Lo/qh3;->extract(Lcom/snaptube/extractor/pluginlib/models/PageContext;Lo/df3;)Lcom/snaptube/extractor/pluginlib/models/ExtractResult;

    move-result-object p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {p1, v1}, Lcom/snaptube/extractor/pluginlib/models/PageContext;->s(Ljava/lang/String;)V

    invoke-static {}, Lo/yq8;->j()Lo/yq8;

    move-result-object p1

    invoke-virtual {p1, v2}, Lo/yq8;->p(Lo/ic2;)V

    invoke-static {}, Lo/zb2;->d()V

    invoke-direct {p0, p2}, Lcom/snaptube/extractor/pluginlib/ExtractorWrapper;->fixTitle(Lcom/snaptube/extractor/pluginlib/models/ExtractResult;)V

    if-nez p2, :cond_6

    goto :goto_0

    :cond_6
    invoke-virtual {p2}, Lcom/snaptube/extractor/pluginlib/models/ExtractResult;->x()Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_0
    return-object v2

    :goto_1
    :try_start_2
    invoke-static {p2}, Lo/dc2;->c(Ljava/lang/Throwable;)V

    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p2

    invoke-virtual {p1, v1}, Lcom/snaptube/extractor/pluginlib/models/PageContext;->s(Ljava/lang/String;)V

    invoke-static {}, Lo/yq8;->j()Lo/yq8;

    move-result-object p1

    invoke-virtual {p1, v2}, Lo/yq8;->p(Lo/ic2;)V

    invoke-static {}, Lo/zb2;->d()V

    throw p2
.end method

.method public getInjectionCode(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/snaptube/extractor/pluginlib/ExtractorWrapper;->findSite(Ljava/lang/String;)Lo/qh3;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lo/qh3;->getInjectionCode(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v1

    :goto_0
    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_1
    return-object v1
.end method

.method public hostMatches(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 0

    invoke-direct {p0, p1}, Lcom/snaptube/extractor/pluginlib/ExtractorWrapper;->findSite(Ljava/lang/String;)Lo/qh3;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public isJavaScriptControlled(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 1

    invoke-direct {p0, p1}, Lcom/snaptube/extractor/pluginlib/ExtractorWrapper;->findSite(Ljava/lang/String;)Lo/qh3;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lo/qh3;->isJavaScriptControlled(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public isMetaSearch(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 1

    invoke-direct {p0, p1}, Lcom/snaptube/extractor/pluginlib/ExtractorWrapper;->findSite(Ljava/lang/String;)Lo/qh3;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lo/dc3;->isMetaSearch(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public isUrlSupported(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 1

    invoke-direct {p0, p1}, Lcom/snaptube/extractor/pluginlib/ExtractorWrapper;->findSite(Ljava/lang/String;)Lo/qh3;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lo/qh3;->isUrlSupported(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public shouldInterceptRequest(Landroid/webkit/WebResourceRequest;)Landroid/webkit/WebResourceResponse;
    .locals 0

    invoke-static {p1}, Lo/gg7;->d(Landroid/webkit/WebResourceRequest;)Landroid/webkit/WebResourceResponse;

    move-result-object p1

    return-object p1
.end method

.method public test(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 1

    invoke-direct {p0, p1}, Lcom/snaptube/extractor/pluginlib/ExtractorWrapper;->findSite(Ljava/lang/String;)Lo/qh3;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lo/qh3;->test(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
