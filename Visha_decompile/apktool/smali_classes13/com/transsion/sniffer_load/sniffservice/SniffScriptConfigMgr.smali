.class public Lcom/transsion/sniffer_load/sniffservice/SniffScriptConfigMgr;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final TAG:Ljava/lang/String;

.field private static volatile singleton:Lcom/transsion/sniffer_load/sniffservice/SniffScriptConfigMgr;


# instance fields
.field private final mLocalJSSniffUrlList:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mScriptEntityArrayList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/dbdata/beans/sniff/SniffScriptBean;",
            ">;"
        }
    .end annotation
.end field

.field private final sClientForbidSniffDomainList:[Ljava/lang/String;

.field private final sClientForbidSniffUrlList:[Ljava/lang/String;

.field private final sForbidSniffUrlList:[Ljava/lang/String;

.field private final sniffUrlDao:Lbr9;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "visha_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/transsion/sniffer_load/sniffservice/SniffScriptConfigMgr;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/transsion/sniffer_load/sniffservice/SniffScriptConfigMgr;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "facebook.com"

    const-string v1, "dailymotion.com"

    const-string v2, "visha.notion.site"

    const-string v3, "vimeo.com"

    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/sniffer_load/sniffservice/SniffScriptConfigMgr;->sForbidSniffUrlList:[Ljava/lang/String;

    const-string v7, "tiktok.com"

    const-string v8, "tumblr.com"

    const-string v1, ".youtube.com"

    const-string v2, "visha.notion.site"

    const-string v3, "vimeo.com"

    const-string v4, "facebook.com"

    const-string v5, "mxtakatak.com"

    const-string v6, "instagram.com"

    filled-new-array/range {v1 .. v8}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/sniffer_load/sniffservice/SniffScriptConfigMgr;->sClientForbidSniffDomainList:[Ljava/lang/String;

    const-string v0, "test-visha.transsion-os.com/vishaSnifferApi/static/universal_downloader"

    const-string v1, "api.vishavideo.com/vishaSnifferApi/static/universal_downloader"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/sniffer_load/sniffservice/SniffScriptConfigMgr;->sClientForbidSniffUrlList:[Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/sniffer_load/sniffservice/SniffScriptConfigMgr;->mScriptEntityArrayList:Ljava/util/List;

    invoke-static {}, Lcom/transsion/dbdata/database/SniffScriptDatabase;->a()Lcom/transsion/dbdata/database/SniffScriptDatabase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/dbdata/database/SniffScriptDatabase;->b()Lbr9;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/sniffer_load/sniffservice/SniffScriptConfigMgr;->sniffUrlDao:Lbr9;

    invoke-virtual {p0}, Lcom/transsion/sniffer_load/sniffservice/SniffScriptConfigMgr;->getConfigFromDatabase()V

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/transsion/sniffer_load/sniffservice/SniffScriptConfigMgr;->mLocalJSSniffUrlList:Landroid/util/ArrayMap;

    const-string p0, ".ted.com"

    const-string v1, "ted_1_0_0"

    invoke-virtual {v0, p0, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static getInstance()Lcom/transsion/sniffer_load/sniffservice/SniffScriptConfigMgr;
    .locals 2

    sget-object v0, Lcom/transsion/sniffer_load/sniffservice/SniffScriptConfigMgr;->singleton:Lcom/transsion/sniffer_load/sniffservice/SniffScriptConfigMgr;

    if-nez v0, :cond_1

    const-class v0, Lcom/transsion/sniffer_load/sniffservice/SniffScriptConfigMgr;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/transsion/sniffer_load/sniffservice/SniffScriptConfigMgr;->singleton:Lcom/transsion/sniffer_load/sniffservice/SniffScriptConfigMgr;

    if-nez v1, :cond_0

    new-instance v1, Lcom/transsion/sniffer_load/sniffservice/SniffScriptConfigMgr;

    invoke-direct {v1}, Lcom/transsion/sniffer_load/sniffservice/SniffScriptConfigMgr;-><init>()V

    sput-object v1, Lcom/transsion/sniffer_load/sniffservice/SniffScriptConfigMgr;->singleton:Lcom/transsion/sniffer_load/sniffservice/SniffScriptConfigMgr;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_2
    sget-object v0, Lcom/transsion/sniffer_load/sniffservice/SniffScriptConfigMgr;->singleton:Lcom/transsion/sniffer_load/sniffservice/SniffScriptConfigMgr;

    return-object v0
.end method


# virtual methods
.method public clearSniffScriptFromDatabase()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/sniffer_load/sniffservice/SniffScriptConfigMgr;->mScriptEntityArrayList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object p0, p0, Lcom/transsion/sniffer_load/sniffservice/SniffScriptConfigMgr;->sniffUrlDao:Lbr9;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lbr9;->deleteAll()V

    :cond_0
    return-void
.end method

.method public geAssetJsFileName(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    invoke-static {p1}, Lr0a;->g(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    iget-object v0, p0, Lcom/transsion/sniffer_load/sniffservice/SniffScriptConfigMgr;->mLocalJSSniffUrlList:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object p0, p0, Lcom/transsion/sniffer_load/sniffservice/SniffScriptConfigMgr;->mLocalJSSniffUrlList:Landroid/util/ArrayMap;

    invoke-virtual {p0, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    :cond_2
    return-object v1
.end method

.method public getConfigFromDatabase()V
    .locals 3

    iget-object v0, p0, Lcom/transsion/sniffer_load/sniffservice/SniffScriptConfigMgr;->sniffUrlDao:Lbr9;

    const-string v1, "sniff_url_dao_null"

    invoke-static {v0, v1}, Lfc7;->f(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/sniffer_load/sniffservice/SniffScriptConfigMgr;->mScriptEntityArrayList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/transsion/sniffer_load/sniffservice/SniffScriptConfigMgr;->sniffUrlDao:Lbr9;

    invoke-interface {v0}, Lbr9;->getAllSniffUrls()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/sniffer_load/sniffservice/SniffScriptConfigMgr;->mScriptEntityArrayList:Ljava/util/List;

    sget-object v1, Lcom/transsion/sniffer_load/sniffservice/SniffScriptConfigMgr;->TAG:Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "get_sniff_script_from_local:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/sniffer_load/sniffservice/SniffScriptConfigMgr;->mScriptEntityArrayList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string p0, "local_sniff_script_not_found"

    :goto_0
    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/blankj/utilcode/util/LogUtils;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public getSupportSniffScript(Ljava/lang/String;)Lcom/transsion/dbdata/beans/sniff/SniffScriptBean;
    .locals 5

    invoke-static {p1}, Lr0a;->g(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/transsion/sniffer_load/sniffservice/SniffScriptConfigMgr;->isForbidSeverSniff(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object p0, Lcom/transsion/sniffer_load/sniffservice/SniffScriptConfigMgr;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "forbid_sniff_url:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v1

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/transsion/sniffer_load/sniffservice/SniffScriptConfigMgr;->mScriptEntityArrayList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/dbdata/beans/sniff/SniffScriptBean;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/transsion/dbdata/beans/sniff/SniffScriptBean;->isMe(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v0}, Lcom/transsion/dbdata/beans/sniff/SniffScriptBean;->isSupportSniff()Z

    move-result p0
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "get_sniff_script:"

    if-nez p0, :cond_3

    :try_start_1
    sget-object p0, Lcom/transsion/sniffer_load/sniffservice/SniffScriptConfigMgr;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lcom/transsion/dbdata/beans/sniff/SniffScriptBean;->sniff_domain:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, " but_config_not_support_sniff_url:"

    filled-new-array {v0, v2, p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v1

    :cond_3
    sget-object p0, Lcom/transsion/sniffer_load/sniffservice/SniffScriptConfigMgr;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/transsion/dbdata/beans/sniff/SniffScriptBean;->sniff_domain:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " sniff_url:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    filled-new-array {v2, p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/transsion/dbdata/beans/sniff/SniffScriptBean;->isUpdateExpired()Z

    move-result p0

    if-eqz p0, :cond_4

    const-string p0, ""

    iput-object p0, v0, Lcom/transsion/dbdata/beans/sniff/SniffScriptBean;->script_content:Ljava/lang/String;
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_4
    return-object v0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_5
    return-object v1
.end method

.method public getsClientForbidSniffUrlList()[Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/sniffer_load/sniffservice/SniffScriptConfigMgr;->sClientForbidSniffUrlList:[Ljava/lang/String;

    return-object p0
.end method

.method public isClientForbidSniff(Ljava/lang/String;)Z
    .locals 7

    invoke-static {p1}, Lr0a;->g(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-static {p1}, Ldjb;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p1}, Ldjb;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, p1

    :goto_0
    iget-object v2, p0, Lcom/transsion/sniffer_load/sniffservice/SniffScriptConfigMgr;->sClientForbidSniffDomainList:[Ljava/lang/String;

    array-length v3, v2

    const/4 v4, 0x0

    move v5, v4

    :goto_1
    if-ge v5, v3, :cond_3

    aget-object v6, v2, v5

    invoke-virtual {v0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    return v1

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_3
    iget-object p0, p0, Lcom/transsion/sniffer_load/sniffservice/SniffScriptConfigMgr;->sClientForbidSniffUrlList:[Ljava/lang/String;

    array-length v0, p0

    move v2, v4

    :goto_2
    if-ge v2, v0, :cond_5

    aget-object v3, p0, v2

    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    return v1

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_5
    return v4
.end method

.method public isEmpty()Z
    .locals 0

    iget-object p0, p0, Lcom/transsion/sniffer_load/sniffservice/SniffScriptConfigMgr;->mScriptEntityArrayList:Ljava/util/List;

    invoke-static {p0}, Luh;->b(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public isForbidSeverSniff(Ljava/lang/String;)Z
    .locals 5

    invoke-static {p1}, Lr0a;->g(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object p0, p0, Lcom/transsion/sniffer_load/sniffservice/SniffScriptConfigMgr;->sForbidSniffUrlList:[Ljava/lang/String;

    array-length v0, p0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_2

    aget-object v4, p0, v3

    invoke-virtual {p1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    return v1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return v2
.end method

.method public requestConfigFromServer(Ljava/lang/String;Lcom/transsion/retrofit/callback/RequestCallback$OnRequestDataListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/transsion/retrofit/callback/RequestCallback$OnRequestDataListener<",
            "Lcom/transsion/dbdata/beans/sniff/SniffScriptBean;",
            ">;)V"
        }
    .end annotation

    invoke-static {p1}, Lr0a;->g(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    :try_start_0
    new-instance v0, Lcom/transsion/dbdata/beans/sniff/SniffGetScriptReqBean;

    invoke-direct {v0}, Lcom/transsion/dbdata/beans/sniff/SniffGetScriptReqBean;-><init>()V

    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/dbdata/beans/sniff/SniffGetScriptReqBean;->setScript_key(Ljava/lang/String;)V

    invoke-static {}, Lcom/blankj/utilcode/util/b;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/dbdata/beans/sniff/SniffGetScriptReqBean;->setApp_version(Ljava/lang/String;)V

    const-string v1, "1.0.0"

    invoke-virtual {v0, v1}, Lcom/transsion/dbdata/beans/sniff/SniffGetScriptReqBean;->setScript_version(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    const-class v1, Lcom/transsion/playercommon/vishaapis/APIService;

    if-nez p2, :cond_0

    :try_start_1
    invoke-static {}, Lcom/transsion/playercommon/vishaapis/APIServiceManager;->getInstance()Lcom/transsion/playercommon/vishaapis/APIServiceManager;

    move-result-object p2

    invoke-virtual {p2, v1}, Lcom/transsion/retrofit/factory/BaseAPIManager;->getApi(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/transsion/playercommon/vishaapis/APIService;

    invoke-interface {p2, v0}, Lcom/transsion/playercommon/vishaapis/APIService;->getSniffScript(Lcom/transsion/dbdata/beans/sniff/SniffGetScriptReqBean;)Ljq0;

    move-result-object p2

    new-instance v0, Lcom/transsion/sniffer_load/sniffservice/SniffScriptConfigMgr$1;

    invoke-direct {v0, p0, p1}, Lcom/transsion/sniffer_load/sniffservice/SniffScriptConfigMgr$1;-><init>(Lcom/transsion/sniffer_load/sniffservice/SniffScriptConfigMgr;Ljava/lang/String;)V

    invoke-interface {p2, v0}, Ljq0;->enqueue(Ltq0;)V

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/transsion/playercommon/vishaapis/APIServiceManager;->getInstance()Lcom/transsion/playercommon/vishaapis/APIServiceManager;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/transsion/retrofit/factory/BaseAPIManager;->getApi(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/playercommon/vishaapis/APIService;

    invoke-interface {p0, v0}, Lcom/transsion/playercommon/vishaapis/APIService;->getSniffScript(Lcom/transsion/dbdata/beans/sniff/SniffGetScriptReqBean;)Ljq0;

    move-result-object p0

    new-instance p1, Lcom/transsion/retrofit/callback/CallbackWithDirectData;

    invoke-direct {p1, p2}, Lcom/transsion/retrofit/callback/CallbackWithDirectData;-><init>(Lcom/transsion/retrofit/callback/RequestCallback$OnRequestDataListener;)V

    invoke-interface {p0, p1}, Ljq0;->enqueue(Ltq0;)V
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :goto_0
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    :goto_1
    return-void
.end method

.method public updateSniffScriptDB(Lcom/transsion/dbdata/beans/sniff/SniffScriptBean;Z)V
    .locals 1

    if-eqz p1, :cond_3

    iget-object v0, p1, Lcom/transsion/dbdata/beans/sniff/SniffScriptBean;->script_key:Ljava/lang/String;

    invoke-static {v0}, Lr0a;->g(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_2

    iget-object p2, p0, Lcom/transsion/sniffer_load/sniffservice/SniffScriptConfigMgr;->sniffUrlDao:Lbr9;

    iget-object v0, p1, Lcom/transsion/dbdata/beans/sniff/SniffScriptBean;->script_key:Ljava/lang/String;

    invoke-interface {p2, v0}, Lbr9;->getSniffScriptEntity(Ljava/lang/String;)Lcom/transsion/dbdata/beans/sniff/SniffScriptBean;

    move-result-object p2

    invoke-static {p2}, Lfc7;->c(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1, p2}, Lcom/transsion/dbdata/beans/sniff/SniffScriptBean;->isNewer(Lcom/transsion/dbdata/beans/sniff/SniffScriptBean;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/transsion/sniffer_load/sniffservice/SniffScriptConfigMgr;->sniffUrlDao:Lbr9;

    invoke-interface {v0, p1}, Lbr9;->updateSniffScriptEntity(Lcom/transsion/dbdata/beans/sniff/SniffScriptBean;)V

    iget-object v0, p0, Lcom/transsion/sniffer_load/sniffservice/SniffScriptConfigMgr;->mScriptEntityArrayList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iget-object p0, p0, Lcom/transsion/sniffer_load/sniffservice/SniffScriptConfigMgr;->mScriptEntityArrayList:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lcom/transsion/sniffer_load/sniffservice/SniffScriptConfigMgr;->sniffUrlDao:Lbr9;

    invoke-interface {p2, p1}, Lbr9;->insert(Lcom/transsion/dbdata/beans/sniff/SniffScriptBean;)V

    iget-object p0, p0, Lcom/transsion/sniffer_load/sniffservice/SniffScriptConfigMgr;->mScriptEntityArrayList:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    iget-object p2, p0, Lcom/transsion/sniffer_load/sniffservice/SniffScriptConfigMgr;->sniffUrlDao:Lbr9;

    invoke-interface {p2, p1}, Lbr9;->updateSniffScriptEntity(Lcom/transsion/dbdata/beans/sniff/SniffScriptBean;)V

    iget-object p0, p0, Lcom/transsion/sniffer_load/sniffservice/SniffScriptConfigMgr;->mScriptEntityArrayList:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    :goto_0
    return-void
.end method
