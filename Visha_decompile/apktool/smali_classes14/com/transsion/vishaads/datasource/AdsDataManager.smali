.class public Lcom/transsion/vishaads/datasource/AdsDataManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static volatile k:Lcom/transsion/vishaads/datasource/AdsDataManager;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public d:Lcom/transsion/dbdata/beans/adsbean/AdsDataBean;

.field public e:Z

.field public f:Lcom/transsion/vishaads/datasource/AdSourceDownloader;

.field public g:Ljava/util/List;

.field public h:Ljava/util/List;

.field public i:Ljava/util/List;

.field public j:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "AdsDataManager"

    iput-object v0, p0, Lcom/transsion/vishaads/datasource/AdsDataManager;->a:Ljava/lang/String;

    const-string v1, "visha_ad_cache"

    iput-object v1, p0, Lcom/transsion/vishaads/datasource/AdsDataManager;->b:Ljava/lang/String;

    const-string v1, ","

    iput-object v1, p0, Lcom/transsion/vishaads/datasource/AdsDataManager;->c:Ljava/lang/String;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/transsion/vishaads/datasource/AdsDataManager;->g:Ljava/util/List;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/transsion/vishaads/datasource/AdsDataManager;->h:Ljava/util/List;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/transsion/vishaads/datasource/AdsDataManager;->i:Ljava/util/List;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/transsion/vishaads/datasource/AdsDataManager;->j:Ljava/util/List;

    const-string v1, "AdsDataManager initialized"

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Lcom/transsion/vishaads/datasource/AdSourceDownloader;

    invoke-direct {v0}, Lcom/transsion/vishaads/datasource/AdSourceDownloader;-><init>()V

    iput-object v0, p0, Lcom/transsion/vishaads/datasource/AdsDataManager;->f:Lcom/transsion/vishaads/datasource/AdSourceDownloader;

    return-void
.end method

.method public static synthetic a(Lcom/transsion/dbdata/beans/adsbean/AdItemBean;Lcom/transsion/dbdata/beans/adsbean/AdItemBean;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/vishaads/datasource/AdsDataManager;->s(Lcom/transsion/dbdata/beans/adsbean/AdItemBean;Lcom/transsion/dbdata/beans/adsbean/AdItemBean;)Z

    move-result p0

    return p0
.end method

.method public static synthetic b(Lcom/transsion/dbdata/beans/adsbean/AdItemBean;Ljava/lang/String;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/vishaads/datasource/AdsDataManager;->o(Lcom/transsion/dbdata/beans/adsbean/AdItemBean;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static synthetic c(Lcom/transsion/dbdata/beans/adsbean/AdItemBean;Ljava/lang/String;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/vishaads/datasource/AdsDataManager;->q(Lcom/transsion/dbdata/beans/adsbean/AdItemBean;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static synthetic d(Lcom/transsion/dbdata/beans/adsbean/AdItemBean;Ljava/lang/String;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/vishaads/datasource/AdsDataManager;->r(Lcom/transsion/dbdata/beans/adsbean/AdItemBean;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static synthetic e(Lcom/transsion/dbdata/beans/adsbean/AdItemBean;Lcom/transsion/dbdata/beans/adsbean/AdItemBean;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/vishaads/datasource/AdsDataManager;->u(Lcom/transsion/dbdata/beans/adsbean/AdItemBean;Lcom/transsion/dbdata/beans/adsbean/AdItemBean;)Z

    move-result p0

    return p0
.end method

.method public static synthetic f(Lcom/transsion/dbdata/beans/adsbean/AdItemBean;Lcom/transsion/dbdata/beans/adsbean/AdItemBean;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/vishaads/datasource/AdsDataManager;->t(Lcom/transsion/dbdata/beans/adsbean/AdItemBean;Lcom/transsion/dbdata/beans/adsbean/AdItemBean;)Z

    move-result p0

    return p0
.end method

.method public static synthetic g(Lcom/transsion/dbdata/beans/adsbean/AdItemBean;Ljava/lang/String;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/vishaads/datasource/AdsDataManager;->p(Lcom/transsion/dbdata/beans/adsbean/AdItemBean;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic h(Lcom/transsion/vishaads/datasource/AdsDataManager;Lcom/transsion/dbdata/beans/adsbean/AdsDataBean;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/vishaads/datasource/AdsDataManager;->v(Lcom/transsion/dbdata/beans/adsbean/AdsDataBean;)V

    return-void
.end method

.method public static n()Lcom/transsion/vishaads/datasource/AdsDataManager;
    .locals 2

    sget-object v0, Lcom/transsion/vishaads/datasource/AdsDataManager;->k:Lcom/transsion/vishaads/datasource/AdsDataManager;

    if-nez v0, :cond_1

    const-class v0, Lcom/transsion/vishaads/datasource/AdsDataManager;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/transsion/vishaads/datasource/AdsDataManager;->k:Lcom/transsion/vishaads/datasource/AdsDataManager;

    if-nez v1, :cond_0

    new-instance v1, Lcom/transsion/vishaads/datasource/AdsDataManager;

    invoke-direct {v1}, Lcom/transsion/vishaads/datasource/AdsDataManager;-><init>()V

    sput-object v1, Lcom/transsion/vishaads/datasource/AdsDataManager;->k:Lcom/transsion/vishaads/datasource/AdsDataManager;

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
    sget-object v0, Lcom/transsion/vishaads/datasource/AdsDataManager;->k:Lcom/transsion/vishaads/datasource/AdsDataManager;

    return-object v0
.end method

.method public static synthetic o(Lcom/transsion/dbdata/beans/adsbean/AdItemBean;Ljava/lang/String;)Z
    .locals 0

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0}, Lcom/transsion/dbdata/beans/adsbean/AdItemBean;->getId()I

    move-result p0

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static synthetic p(Lcom/transsion/dbdata/beans/adsbean/AdItemBean;Ljava/lang/String;)Z
    .locals 0

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0}, Lcom/transsion/dbdata/beans/adsbean/AdItemBean;->getId()I

    move-result p0

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static synthetic q(Lcom/transsion/dbdata/beans/adsbean/AdItemBean;Ljava/lang/String;)Z
    .locals 0

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0}, Lcom/transsion/dbdata/beans/adsbean/AdItemBean;->getId()I

    move-result p0

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static synthetic r(Lcom/transsion/dbdata/beans/adsbean/AdItemBean;Ljava/lang/String;)Z
    .locals 0

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0}, Lcom/transsion/dbdata/beans/adsbean/AdItemBean;->getId()I

    move-result p0

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static synthetic s(Lcom/transsion/dbdata/beans/adsbean/AdItemBean;Lcom/transsion/dbdata/beans/adsbean/AdItemBean;)Z
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/dbdata/beans/adsbean/AdItemBean;->getId()I

    move-result p0

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/adsbean/AdItemBean;->getId()I

    move-result p1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static synthetic t(Lcom/transsion/dbdata/beans/adsbean/AdItemBean;Lcom/transsion/dbdata/beans/adsbean/AdItemBean;)Z
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/dbdata/beans/adsbean/AdItemBean;->getId()I

    move-result p0

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/adsbean/AdItemBean;->getId()I

    move-result p1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static synthetic u(Lcom/transsion/dbdata/beans/adsbean/AdItemBean;Lcom/transsion/dbdata/beans/adsbean/AdItemBean;)Z
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/dbdata/beans/adsbean/AdItemBean;->getId()I

    move-result p0

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/adsbean/AdItemBean;->getId()I

    move-result p1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public A()V
    .locals 0

    return-void
.end method

.method public final i()V
    .locals 4

    iget-object v0, p0, Lcom/transsion/vishaads/datasource/AdsDataManager;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/transsion/vishaads/datasource/AdsDataManager;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/transsion/vishaads/datasource/AdsDataManager;->j:Ljava/util/List;

    iget-object v2, p0, Lcom/transsion/vishaads/datasource/AdsDataManager;->g:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/dbdata/beans/adsbean/AdItemBean;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/transsion/vishaads/datasource/AdsDataManager;->g:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_0
    iget-object v0, p0, Lcom/transsion/vishaads/datasource/AdsDataManager;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/transsion/vishaads/datasource/AdsDataManager;->j:Ljava/util/List;

    iget-object v2, p0, Lcom/transsion/vishaads/datasource/AdsDataManager;->h:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/dbdata/beans/adsbean/AdItemBean;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/transsion/vishaads/datasource/AdsDataManager;->h:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_1
    iget-object v0, p0, Lcom/transsion/vishaads/datasource/AdsDataManager;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/transsion/vishaads/datasource/AdsDataManager;->j:Ljava/util/List;

    iget-object v2, p0, Lcom/transsion/vishaads/datasource/AdsDataManager;->i:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/dbdata/beans/adsbean/AdItemBean;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/transsion/vishaads/datasource/AdsDataManager;->i:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_2
    iget-object v0, p0, Lcom/transsion/vishaads/datasource/AdsDataManager;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    iget-object v0, p0, Lcom/transsion/vishaads/datasource/AdsDataManager;->j:Ljava/util/List;

    iget-object v1, p0, Lcom/transsion/vishaads/datasource/AdsDataManager;->g:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_3
    iget-object v0, p0, Lcom/transsion/vishaads/datasource/AdsDataManager;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_4

    iget-object v0, p0, Lcom/transsion/vishaads/datasource/AdsDataManager;->j:Ljava/util/List;

    iget-object v1, p0, Lcom/transsion/vishaads/datasource/AdsDataManager;->h:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_4
    iget-object v0, p0, Lcom/transsion/vishaads/datasource/AdsDataManager;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_5

    iget-object v0, p0, Lcom/transsion/vishaads/datasource/AdsDataManager;->j:Ljava/util/List;

    iget-object v1, p0, Lcom/transsion/vishaads/datasource/AdsDataManager;->i:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_5
    iget-object v0, p0, Lcom/transsion/vishaads/datasource/AdsDataManager;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/dbdata/beans/adsbean/AdItemBean;

    iget-object v2, p0, Lcom/transsion/vishaads/datasource/AdsDataManager;->f:Lcom/transsion/vishaads/datasource/AdSourceDownloader;

    new-instance v3, Lcom/transsion/vishaads/datasource/AdsDataManager$3;

    invoke-direct {v3, p0}, Lcom/transsion/vishaads/datasource/AdsDataManager$3;-><init>(Lcom/transsion/vishaads/datasource/AdsDataManager;)V

    invoke-virtual {v2, v1, v3}, Lcom/transsion/vishaads/datasource/AdSourceDownloader;->d(Lcom/transsion/dbdata/beans/adsbean/AdItemBean;Lcom/transsion/vishaads/datasource/AdSourceDownloader$DownloadCallback;)V

    goto :goto_0

    :cond_6
    return-void
.end method

.method public j()Lcom/transsion/dbdata/beans/adsbean/AdItemBean;
    .locals 11

    iget-object v0, p0, Lcom/transsion/vishaads/datasource/AdsDataManager;->d:Lcom/transsion/dbdata/beans/adsbean/AdsDataBean;

    const/4 v1, 0x0

    const-string v2, "AdsDataManager"

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "visha_ad_cache_"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/transsion/playercommon/utils/CountryInfoUtil;->m()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/transsion/retrofit/cache/CacheManager;->getInstance()Lcom/transsion/retrofit/cache/CacheManager;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/transsion/retrofit/cache/CacheManager;->getCache(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lr0a;->g(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string p0, "[AudioBannerAD]getCurrentAudioBannerAd no cache found"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/blankj/utilcode/util/LogUtils;->m(Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v1

    :cond_0
    new-instance v3, Lcom/transsion/vishaads/datasource/AdsDataManager$6;

    invoke-direct {v3, p0}, Lcom/transsion/vishaads/datasource/AdsDataManager$6;-><init>(Lcom/transsion/vishaads/datasource/AdsDataManager;)V

    invoke-virtual {v3}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v3

    invoke-static {v0, v3}, Lfi1;->c(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/dbdata/beans/adsbean/AdsDataBean;

    iput-object v0, p0, Lcom/transsion/vishaads/datasource/AdsDataManager;->d:Lcom/transsion/dbdata/beans/adsbean/AdsDataBean;

    :cond_1
    iget-object v0, p0, Lcom/transsion/vishaads/datasource/AdsDataManager;->d:Lcom/transsion/dbdata/beans/adsbean/AdsDataBean;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Lcom/transsion/dbdata/beans/adsbean/AdsDataBean;->getAudioBannerList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/transsion/vishaads/datasource/AdsDataManager;->d:Lcom/transsion/dbdata/beans/adsbean/AdsDataBean;

    invoke-virtual {v0}, Lcom/transsion/dbdata/beans/adsbean/AdsDataBean;->getAudioBannerList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_2

    goto/16 :goto_2

    :cond_2
    const-string v0, "visha_ad"

    invoke-static {v0}, Lsg9;->e(Ljava/lang/String;)Lsg9;

    move-result-object v3

    const-string v4, "a_a_i"

    invoke-virtual {v3, v4}, Lsg9;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lr0a;->g(Ljava/lang/CharSequence;)Z

    move-result v5

    const-string v6, ","

    if-nez v5, :cond_3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[AudioBannerAD]audio ads has play ids:"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v3, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    :cond_3
    move-object v5, v1

    :goto_0
    iget-object p0, p0, Lcom/transsion/vishaads/datasource/AdsDataManager;->d:Lcom/transsion/dbdata/beans/adsbean/AdsDataBean;

    if-eqz p0, :cond_9

    invoke-virtual {p0}, Lcom/transsion/dbdata/beans/adsbean/AdsDataBean;->getAudioBannerList()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    move-object v7, v1

    :cond_4
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_8

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/transsion/dbdata/beans/adsbean/AdItemBean;

    if-eqz v5, :cond_5

    array-length v9, v5

    if-lez v9, :cond_5

    invoke-static {v5}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v9

    new-instance v10, Lu8;

    invoke-direct {v10, v8}, Lu8;-><init>(Lcom/transsion/dbdata/beans/adsbean/AdItemBean;)V

    invoke-interface {v9, v10}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v9

    if-eqz v9, :cond_5

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[AudioBannerAD]audio ads has already play id="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Lcom/transsion/dbdata/beans/adsbean/AdItemBean;->getId()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " adItemName="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Lcom/transsion/dbdata/beans/adsbean/AdItemBean;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    filled-new-array {v9}, [Ljava/lang/Object;

    move-result-object v9

    invoke-static {v2, v9}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    if-nez v7, :cond_4

    invoke-static {}, Lvna;->b()J

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Lcom/transsion/dbdata/beans/adsbean/AdItemBean;->isOnlineTime(J)Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-virtual {v8}, Lcom/transsion/dbdata/beans/adsbean/AdItemBean;->isLocalFileExists()Z

    move-result v9

    if-eqz v9, :cond_4

    move-object v7, v8

    goto :goto_1

    :cond_5
    invoke-static {}, Lvna;->b()J

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Lcom/transsion/dbdata/beans/adsbean/AdItemBean;->isOnlineTime(J)Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-virtual {v8}, Lcom/transsion/dbdata/beans/adsbean/AdItemBean;->isLocalFileExists()Z

    move-result v9

    if-eqz v9, :cond_7

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[AudioBannerAD]get current audio ad:"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/blankj/utilcode/util/LogUtils;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {v3}, Lr0a;->g(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_6

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_6
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Lcom/transsion/dbdata/beans/adsbean/AdItemBean;->getId()I

    move-result v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0}, Lsg9;->e(Ljava/lang/String;)Lsg9;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v4, p0}, Lsg9;->r(Ljava/lang/String;Ljava/lang/String;)V

    return-object v8

    :cond_7
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[AudioBannerAD]current audio banner ad,local file not exists:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    filled-new-array {v8}, [Ljava/lang/Object;

    move-result-object v8

    invoke-static {v2, v8}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_1

    :cond_8
    if-eqz v7, :cond_9

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[AudioBannerAD]all audio ad played,so start play first:"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/blankj/utilcode/util/LogUtils;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {v0}, Lsg9;->e(Ljava/lang/String;)Lsg9;

    move-result-object p0

    invoke-virtual {v7}, Lcom/transsion/dbdata/beans/adsbean/AdItemBean;->getId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v4, v0}, Lsg9;->r(Ljava/lang/String;Ljava/lang/String;)V

    return-object v7

    :cond_9
    const-string p0, "[AudioBannerAD]not get audio banner ad"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/blankj/utilcode/util/LogUtils;->m(Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v1

    :cond_a
    :goto_2
    const-string p0, "[AudioBannerAD]getCurrentAudioBannerAd no audio banner list found"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/blankj/utilcode/util/LogUtils;->m(Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v1
.end method

.method public k()Lcom/transsion/dbdata/beans/adsbean/AdItemBean;
    .locals 18

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/transsion/vishaads/datasource/AdsDataManager;->d:Lcom/transsion/dbdata/beans/adsbean/AdsDataBean;

    const/4 v2, 0x0

    const-string v3, "AdsDataManager"

    if-nez v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "visha_ad_cache_"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/transsion/playercommon/utils/CountryInfoUtil;->m()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/transsion/retrofit/cache/CacheManager;->getInstance()Lcom/transsion/retrofit/cache/CacheManager;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/transsion/retrofit/cache/CacheManager;->getCache(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lr0a;->g(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v0, "[LaunchAD]get current launch failed,no cache found"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/blankj/utilcode/util/LogUtils;->m(Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v2

    :cond_0
    const-string v4, "[LaunchAD]get current launch from cache:"

    filled-new-array {v4, v1}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v4, Lcom/transsion/vishaads/datasource/AdsDataManager$4;

    invoke-direct {v4, v0}, Lcom/transsion/vishaads/datasource/AdsDataManager$4;-><init>(Lcom/transsion/vishaads/datasource/AdsDataManager;)V

    invoke-virtual {v4}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v4

    invoke-static {v1, v4}, Lfi1;->c(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/dbdata/beans/adsbean/AdsDataBean;

    iput-object v1, v0, Lcom/transsion/vishaads/datasource/AdsDataManager;->d:Lcom/transsion/dbdata/beans/adsbean/AdsDataBean;

    :cond_1
    iget-object v1, v0, Lcom/transsion/vishaads/datasource/AdsDataManager;->d:Lcom/transsion/dbdata/beans/adsbean/AdsDataBean;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/transsion/dbdata/beans/adsbean/AdsDataBean;->getLaunchScreenList()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, v0, Lcom/transsion/vishaads/datasource/AdsDataManager;->d:Lcom/transsion/dbdata/beans/adsbean/AdsDataBean;

    invoke-virtual {v1}, Lcom/transsion/dbdata/beans/adsbean/AdsDataBean;->getLaunchScreenList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_3

    :cond_2
    move-object v0, v2

    goto/16 :goto_7

    :cond_3
    const-string v1, "yyyy-MM-dd"

    invoke-static {v1}, Lit1;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v4, "visha_ad"

    invoke-static {v4}, Lsg9;->e(Ljava/lang/String;)Lsg9;

    move-result-object v5

    invoke-virtual {v5, v1}, Lsg9;->f(Ljava/lang/String;)I

    move-result v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[LaunchAD]launch ads day:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " have show "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ",total times:"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v0, Lcom/transsion/vishaads/datasource/AdsDataManager;->d:Lcom/transsion/dbdata/beans/adsbean/AdsDataBean;

    invoke-virtual {v8}, Lcom/transsion/dbdata/beans/adsbean/AdsDataBean;->getTime()I

    move-result v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    filled-new-array {v6}, [Ljava/lang/Object;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v6, v0, Lcom/transsion/vishaads/datasource/AdsDataManager;->d:Lcom/transsion/dbdata/beans/adsbean/AdsDataBean;

    invoke-virtual {v6}, Lcom/transsion/dbdata/beans/adsbean/AdsDataBean;->getTime()I

    move-result v6

    if-lt v5, v6, :cond_4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " show "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " times, is out count "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lcom/transsion/vishaads/datasource/AdsDataManager;->d:Lcom/transsion/dbdata/beans/adsbean/AdsDataBean;

    invoke-virtual {v0}, Lcom/transsion/dbdata/beans/adsbean/AdsDataBean;->getTime()I

    move-result v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " times"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/blankj/utilcode/util/LogUtils;->m(Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v2

    :cond_4
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "l_a_s_i"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4}, Lsg9;->e(Ljava/lang/String;)Lsg9;

    move-result-object v7

    invoke-virtual {v7, v6}, Lsg9;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v4}, Lsg9;->e(Ljava/lang/String;)Lsg9;

    move-result-object v8

    const-string v9, "l_a_i"

    invoke-virtual {v8, v9}, Lsg9;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[LaunchAD]launch ads getInterval today: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " play ids:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    filled-new-array {v10}, [Ljava/lang/Object;

    move-result-object v10

    invoke-static {v3, v10}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {v7}, Lr0a;->g(Ljava/lang/CharSequence;)Z

    move-result v10

    const-string v11, ","

    const/4 v12, 0x1

    if-nez v10, :cond_a

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "[LaunchAD]launch ads has play interval:"

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    filled-new-array {v10}, [Ljava/lang/Object;

    move-result-object v10

    invoke-static {v3, v10}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v7, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    iget-object v13, v0, Lcom/transsion/vishaads/datasource/AdsDataManager;->d:Lcom/transsion/dbdata/beans/adsbean/AdsDataBean;

    invoke-virtual {v13}, Lcom/transsion/dbdata/beans/adsbean/AdsDataBean;->getIntervalCount()I

    move-result v13

    const-string v14, "0"

    const-string v15, "[LaunchAD]launch ads interval invalid,this time not play"

    if-lez v13, :cond_6

    array-length v13, v10

    iget-object v2, v0, Lcom/transsion/vishaads/datasource/AdsDataManager;->d:Lcom/transsion/dbdata/beans/adsbean/AdsDataBean;

    invoke-virtual {v2}, Lcom/transsion/dbdata/beans/adsbean/AdsDataBean;->getIntervalCount()I

    move-result v2

    if-lt v13, v2, :cond_5

    array-length v2, v10

    sub-int/2addr v2, v12

    aget-object v2, v10, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    if-ne v2, v12, :cond_6

    :cond_5
    filled-new-array {v15}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/blankj/utilcode/util/LogUtils;->m(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4}, Lsg9;->e(Ljava/lang/String;)Lsg9;

    move-result-object v1

    invoke-virtual {v1, v6, v0}, Lsg9;->r(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0

    :cond_6
    array-length v2, v10

    sub-int/2addr v2, v12

    const/4 v13, 0x0

    :goto_0
    if-ltz v2, :cond_a

    aget-object v16, v10, v2

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v16

    if-nez v16, :cond_8

    add-int/lit8 v13, v13, 0x1

    iget-object v12, v0, Lcom/transsion/vishaads/datasource/AdsDataManager;->d:Lcom/transsion/dbdata/beans/adsbean/AdsDataBean;

    invoke-virtual {v12}, Lcom/transsion/dbdata/beans/adsbean/AdsDataBean;->getIntervalCount()I

    move-result v12

    if-ne v13, v12, :cond_7

    const-string v2, "[LaunchAD]launch ads interval valid,this time can play,so find valid ad item"

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    :cond_7
    move-object/from16 v17, v10

    goto :goto_1

    :cond_8
    aget-object v12, v10, v2

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    move-object/from16 v17, v10

    const/4 v10, 0x1

    if-ne v12, v10, :cond_9

    iget-object v10, v0, Lcom/transsion/vishaads/datasource/AdsDataManager;->d:Lcom/transsion/dbdata/beans/adsbean/AdsDataBean;

    invoke-virtual {v10}, Lcom/transsion/dbdata/beans/adsbean/AdsDataBean;->getIntervalCount()I

    move-result v10

    if-ge v13, v10, :cond_9

    filled-new-array {v15}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/blankj/utilcode/util/LogUtils;->m(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4}, Lsg9;->e(Ljava/lang/String;)Lsg9;

    move-result-object v1

    invoke-virtual {v1, v6, v0}, Lsg9;->r(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0

    :cond_9
    :goto_1
    add-int/lit8 v2, v2, -0x1

    move-object/from16 v10, v17

    const/4 v12, 0x1

    goto :goto_0

    :cond_a
    :goto_2
    invoke-static {v8}, Lr0a;->g(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_b

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[LaunchAD]launch ads played ids:"

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v8, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    :cond_b
    const/4 v2, 0x0

    :goto_3
    iget-object v10, v0, Lcom/transsion/vishaads/datasource/AdsDataManager;->d:Lcom/transsion/dbdata/beans/adsbean/AdsDataBean;

    if-eqz v10, :cond_13

    invoke-virtual {v10}, Lcom/transsion/dbdata/beans/adsbean/AdsDataBean;->getLaunchScreenList()Ljava/util/List;

    move-result-object v10

    if-eqz v10, :cond_13

    iget-object v10, v0, Lcom/transsion/vishaads/datasource/AdsDataManager;->d:Lcom/transsion/dbdata/beans/adsbean/AdsDataBean;

    invoke-virtual {v10}, Lcom/transsion/dbdata/beans/adsbean/AdsDataBean;->getLaunchScreenList()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    if-lez v10, :cond_13

    iget-object v10, v0, Lcom/transsion/vishaads/datasource/AdsDataManager;->d:Lcom/transsion/dbdata/beans/adsbean/AdsDataBean;

    invoke-virtual {v10}, Lcom/transsion/dbdata/beans/adsbean/AdsDataBean;->getLaunchScreenList()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    const/4 v12, 0x0

    :goto_4
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    const-string v14, "1"

    if-eqz v13, :cond_12

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/transsion/dbdata/beans/adsbean/AdItemBean;

    if-eqz v2, :cond_e

    array-length v15, v2

    if-lez v15, :cond_e

    invoke-static {v2}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v15

    move-object/from16 v17, v2

    new-instance v2, Lv8;

    invoke-direct {v2, v13}, Lv8;-><init>(Lcom/transsion/dbdata/beans/adsbean/AdItemBean;)V

    invoke-interface {v15, v2}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v2

    if-eqz v2, :cond_d

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "id="

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Lcom/transsion/dbdata/beans/adsbean/AdItemBean;->getId()I

    move-result v14

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, " adItemName="

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Lcom/transsion/dbdata/beans/adsbean/AdItemBean;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v14, "[LaunchAD]launch ads has already play"

    filled-new-array {v14, v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    if-nez v12, :cond_c

    invoke-static {}, Lvna;->b()J

    move-result-wide v14

    invoke-virtual {v13, v14, v15}, Lcom/transsion/dbdata/beans/adsbean/AdItemBean;->isOnlineTime(J)Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-virtual {v13}, Lcom/transsion/dbdata/beans/adsbean/AdItemBean;->isLocalFileExists()Z

    move-result v2

    if-eqz v2, :cond_c

    move-object v12, v13

    :cond_c
    move-object/from16 v2, v17

    goto :goto_4

    :cond_d
    :goto_5
    move-object v2, v14

    goto :goto_6

    :cond_e
    move-object/from16 v17, v2

    goto :goto_5

    :goto_6
    invoke-static {}, Lvna;->b()J

    move-result-wide v14

    invoke-virtual {v13, v14, v15}, Lcom/transsion/dbdata/beans/adsbean/AdItemBean;->isOnlineTime(J)Z

    move-result v14

    if-eqz v14, :cond_c

    invoke-virtual {v13}, Lcom/transsion/dbdata/beans/adsbean/AdItemBean;->isLocalFileExists()Z

    move-result v14

    if-eqz v14, :cond_c

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "[LaunchAD] get current Launch ad:"

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    filled-new-array {v10}, [Ljava/lang/Object;

    move-result-object v10

    invoke-static {v3, v10}, Lcom/blankj/utilcode/util/LogUtils;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {v8}, Lr0a;->g(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_f

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    :cond_f
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Lcom/transsion/dbdata/beans/adsbean/AdItemBean;->getId()I

    move-result v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v8, 0x1

    add-int/2addr v5, v8

    invoke-static {v4}, Lsg9;->e(Ljava/lang/String;)Lsg9;

    move-result-object v8

    invoke-virtual {v8, v9, v3}, Lsg9;->r(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v4}, Lsg9;->e(Ljava/lang/String;)Lsg9;

    move-result-object v3

    invoke-virtual {v3, v1, v5}, Lsg9;->p(Ljava/lang/String;I)V

    iget-object v0, v0, Lcom/transsion/vishaads/datasource/AdsDataManager;->d:Lcom/transsion/dbdata/beans/adsbean/AdsDataBean;

    invoke-virtual {v0}, Lcom/transsion/dbdata/beans/adsbean/AdsDataBean;->getIntervalCount()I

    move-result v0

    if-lez v0, :cond_11

    invoke-static {v7}, Lr0a;->g(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_10

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    :cond_10
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4}, Lsg9;->e(Ljava/lang/String;)Lsg9;

    move-result-object v1

    invoke-virtual {v1, v6, v0}, Lsg9;->r(Ljava/lang/String;Ljava/lang/String;)V

    :cond_11
    return-object v13

    :cond_12
    move-object v2, v14

    if-eqz v12, :cond_13

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[LaunchAD] launch ads all ad played,so start play first:"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/blankj/utilcode/util/LogUtils;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {v4}, Lsg9;->e(Ljava/lang/String;)Lsg9;

    move-result-object v0

    invoke-virtual {v12}, Lcom/transsion/dbdata/beans/adsbean/AdItemBean;->getId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v9, v3}, Lsg9;->r(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v4}, Lsg9;->e(Ljava/lang/String;)Lsg9;

    move-result-object v0

    const/4 v3, 0x1

    add-int/2addr v5, v3

    invoke-virtual {v0, v1, v5}, Lsg9;->p(Ljava/lang/String;I)V

    invoke-static {v4}, Lsg9;->e(Ljava/lang/String;)Lsg9;

    move-result-object v0

    invoke-virtual {v0, v6, v2}, Lsg9;->r(Ljava/lang/String;Ljava/lang/String;)V

    return-object v12

    :cond_13
    const-string v0, "[LaunchAD]not get launch ad"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/blankj/utilcode/util/LogUtils;->m(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x0

    return-object v0

    :goto_7
    const-string v1, "[LaunchAD]no launch screen list found"

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/blankj/utilcode/util/LogUtils;->m(Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0
.end method

.method public l()Lcom/transsion/dbdata/beans/adsbean/AdItemBean;
    .locals 11

    iget-object v0, p0, Lcom/transsion/vishaads/datasource/AdsDataManager;->d:Lcom/transsion/dbdata/beans/adsbean/AdsDataBean;

    const/4 v1, 0x0

    const-string v2, "AdsDataManager"

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "visha_ad_cache_"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/transsion/playercommon/utils/CountryInfoUtil;->m()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/transsion/retrofit/cache/CacheManager;->getInstance()Lcom/transsion/retrofit/cache/CacheManager;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/transsion/retrofit/cache/CacheManager;->getCache(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lr0a;->g(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string p0, "[VideoBannerAD]getCurrentVideoBannerAd no cache found"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/blankj/utilcode/util/LogUtils;->m(Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v1

    :cond_0
    new-instance v3, Lcom/transsion/vishaads/datasource/AdsDataManager$5;

    invoke-direct {v3, p0}, Lcom/transsion/vishaads/datasource/AdsDataManager$5;-><init>(Lcom/transsion/vishaads/datasource/AdsDataManager;)V

    invoke-virtual {v3}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v3

    invoke-static {v0, v3}, Lfi1;->c(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/dbdata/beans/adsbean/AdsDataBean;

    iput-object v0, p0, Lcom/transsion/vishaads/datasource/AdsDataManager;->d:Lcom/transsion/dbdata/beans/adsbean/AdsDataBean;

    :cond_1
    iget-object v0, p0, Lcom/transsion/vishaads/datasource/AdsDataManager;->d:Lcom/transsion/dbdata/beans/adsbean/AdsDataBean;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Lcom/transsion/dbdata/beans/adsbean/AdsDataBean;->getVideoBannerList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/transsion/vishaads/datasource/AdsDataManager;->d:Lcom/transsion/dbdata/beans/adsbean/AdsDataBean;

    invoke-virtual {v0}, Lcom/transsion/dbdata/beans/adsbean/AdsDataBean;->getVideoBannerList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_2

    goto/16 :goto_2

    :cond_2
    const-string v0, "visha_ad"

    invoke-static {v0}, Lsg9;->e(Ljava/lang/String;)Lsg9;

    move-result-object v3

    const-string v4, "v_a_i"

    invoke-virtual {v3, v4}, Lsg9;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lr0a;->g(Ljava/lang/CharSequence;)Z

    move-result v5

    const-string v6, ","

    if-nez v5, :cond_3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[VideoBannerAD]video ads has play ids:"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v3, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    :cond_3
    move-object v5, v1

    :goto_0
    iget-object p0, p0, Lcom/transsion/vishaads/datasource/AdsDataManager;->d:Lcom/transsion/dbdata/beans/adsbean/AdsDataBean;

    if-eqz p0, :cond_9

    invoke-virtual {p0}, Lcom/transsion/dbdata/beans/adsbean/AdsDataBean;->getVideoBannerList()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    move-object v7, v1

    :cond_4
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_8

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/transsion/dbdata/beans/adsbean/AdItemBean;

    if-eqz v5, :cond_5

    array-length v9, v5

    if-lez v9, :cond_5

    invoke-static {v5}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v9

    new-instance v10, Lt8;

    invoke-direct {v10, v8}, Lt8;-><init>(Lcom/transsion/dbdata/beans/adsbean/AdItemBean;)V

    invoke-interface {v9, v10}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v9

    if-eqz v9, :cond_5

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "id="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Lcom/transsion/dbdata/beans/adsbean/AdItemBean;->getId()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " adItemName="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Lcom/transsion/dbdata/beans/adsbean/AdItemBean;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, "[VideoBannerAD]video ad has already play"

    filled-new-array {v10, v9}, [Ljava/lang/Object;

    move-result-object v9

    invoke-static {v2, v9}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    if-nez v7, :cond_4

    invoke-static {}, Lvna;->b()J

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Lcom/transsion/dbdata/beans/adsbean/AdItemBean;->isOnlineTime(J)Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-virtual {v8}, Lcom/transsion/dbdata/beans/adsbean/AdItemBean;->isLocalFileExists()Z

    move-result v9

    if-eqz v9, :cond_4

    move-object v7, v8

    goto :goto_1

    :cond_5
    invoke-static {}, Lvna;->b()J

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Lcom/transsion/dbdata/beans/adsbean/AdItemBean;->isOnlineTime(J)Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-virtual {v8}, Lcom/transsion/dbdata/beans/adsbean/AdItemBean;->isLocalFileExists()Z

    move-result v9

    if-eqz v9, :cond_7

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[VideoBannerAD] get current video banner ad:"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/blankj/utilcode/util/LogUtils;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {v3}, Lr0a;->g(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_6

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_6
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Lcom/transsion/dbdata/beans/adsbean/AdItemBean;->getId()I

    move-result v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0}, Lsg9;->e(Ljava/lang/String;)Lsg9;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v4, p0}, Lsg9;->r(Ljava/lang/String;Ljava/lang/String;)V

    return-object v8

    :cond_7
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[VideoBannerAD]current video banner ad,local file not exists:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    filled-new-array {v8}, [Ljava/lang/Object;

    move-result-object v8

    invoke-static {v2, v8}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_1

    :cond_8
    if-eqz v7, :cond_9

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[VideoBannerAD]all video ad played,so start play first:"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/blankj/utilcode/util/LogUtils;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {v0}, Lsg9;->e(Ljava/lang/String;)Lsg9;

    move-result-object p0

    invoke-virtual {v7}, Lcom/transsion/dbdata/beans/adsbean/AdItemBean;->getId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v4, v0}, Lsg9;->r(Ljava/lang/String;Ljava/lang/String;)V

    return-object v7

    :cond_9
    const-string p0, "[VideoBannerAD]not get video banner ad"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/blankj/utilcode/util/LogUtils;->m(Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v1

    :cond_a
    :goto_2
    const-string p0, "[VideoBannerAD]no video banner list found"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/blankj/utilcode/util/LogUtils;->m(Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v1
.end method

.method public m()Lcom/transsion/dbdata/beans/adsbean/AdItemBean;
    .locals 11

    iget-object v0, p0, Lcom/transsion/vishaads/datasource/AdsDataManager;->d:Lcom/transsion/dbdata/beans/adsbean/AdsDataBean;

    const/4 v1, 0x0

    const-string v2, "AdsDataManager"

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "visha_ad_cache_"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/transsion/playercommon/utils/CountryInfoUtil;->m()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/transsion/retrofit/cache/CacheManager;->getInstance()Lcom/transsion/retrofit/cache/CacheManager;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/transsion/retrofit/cache/CacheManager;->getCache(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lr0a;->g(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string p0, "[VideoIconAd]getCurrentVideoIconAd no cache found"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/blankj/utilcode/util/LogUtils;->m(Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v1

    :cond_0
    new-instance v3, Lcom/transsion/vishaads/datasource/AdsDataManager$7;

    invoke-direct {v3, p0}, Lcom/transsion/vishaads/datasource/AdsDataManager$7;-><init>(Lcom/transsion/vishaads/datasource/AdsDataManager;)V

    invoke-virtual {v3}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v3

    invoke-static {v0, v3}, Lfi1;->c(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/dbdata/beans/adsbean/AdsDataBean;

    iput-object v0, p0, Lcom/transsion/vishaads/datasource/AdsDataManager;->d:Lcom/transsion/dbdata/beans/adsbean/AdsDataBean;

    :cond_1
    iget-object v0, p0, Lcom/transsion/vishaads/datasource/AdsDataManager;->d:Lcom/transsion/dbdata/beans/adsbean/AdsDataBean;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lcom/transsion/dbdata/beans/adsbean/AdsDataBean;->getVideoIconList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/transsion/vishaads/datasource/AdsDataManager;->d:Lcom/transsion/dbdata/beans/adsbean/AdsDataBean;

    invoke-virtual {v0}, Lcom/transsion/dbdata/beans/adsbean/AdsDataBean;->getVideoIconList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_2

    goto/16 :goto_2

    :cond_2
    const-string v0, "visha_ad"

    invoke-static {v0}, Lsg9;->e(Ljava/lang/String;)Lsg9;

    move-result-object v3

    const-string v4, "v_i_a_i"

    invoke-virtual {v3, v4}, Lsg9;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lr0a;->g(Ljava/lang/CharSequence;)Z

    move-result v5

    const-string v6, ","

    if-nez v5, :cond_3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[VideoIconAd]video icon ad has play ids:"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v3, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    :cond_3
    move-object v5, v1

    :goto_0
    iget-object p0, p0, Lcom/transsion/vishaads/datasource/AdsDataManager;->d:Lcom/transsion/dbdata/beans/adsbean/AdsDataBean;

    if-eqz p0, :cond_8

    invoke-virtual {p0}, Lcom/transsion/dbdata/beans/adsbean/AdsDataBean;->getVideoIconList()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    move-object v7, v1

    :cond_4
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/transsion/dbdata/beans/adsbean/AdItemBean;

    if-eqz v5, :cond_5

    array-length v9, v5

    if-lez v9, :cond_5

    invoke-static {v5}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v9

    new-instance v10, Lw8;

    invoke-direct {v10, v8}, Lw8;-><init>(Lcom/transsion/dbdata/beans/adsbean/AdItemBean;)V

    invoke-interface {v9, v10}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v9

    if-eqz v9, :cond_5

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "id="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Lcom/transsion/dbdata/beans/adsbean/AdItemBean;->getId()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " adItemName="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Lcom/transsion/dbdata/beans/adsbean/AdItemBean;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, "[VideoIconAd]video icon Ad has already play"

    filled-new-array {v10, v9}, [Ljava/lang/Object;

    move-result-object v9

    invoke-static {v2, v9}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    if-nez v7, :cond_4

    invoke-static {}, Lvna;->b()J

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Lcom/transsion/dbdata/beans/adsbean/AdItemBean;->isOnlineTime(J)Z

    move-result v9

    if-eqz v9, :cond_4

    move-object v7, v8

    goto :goto_1

    :cond_5
    invoke-static {}, Lvna;->b()J

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Lcom/transsion/dbdata/beans/adsbean/AdItemBean;->isOnlineTime(J)Z

    move-result v9

    if-eqz v9, :cond_4

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[VideoIconAd]get current video icon ad:"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/blankj/utilcode/util/LogUtils;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {v3}, Lr0a;->g(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_6

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_6
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Lcom/transsion/dbdata/beans/adsbean/AdItemBean;->getId()I

    move-result v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0}, Lsg9;->e(Ljava/lang/String;)Lsg9;

    move-result-object v0

    invoke-virtual {v0, v4, p0}, Lsg9;->r(Ljava/lang/String;Ljava/lang/String;)V

    return-object v8

    :cond_7
    if-eqz v7, :cond_8

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[VideoIconAd]all video icon ad played,so start play first:"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/blankj/utilcode/util/LogUtils;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {v0}, Lsg9;->e(Ljava/lang/String;)Lsg9;

    move-result-object p0

    invoke-virtual {v7}, Lcom/transsion/dbdata/beans/adsbean/AdItemBean;->getId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v4, v0}, Lsg9;->r(Ljava/lang/String;Ljava/lang/String;)V

    return-object v7

    :cond_8
    const-string p0, "[VideoIconAd]not get video icon ad"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/blankj/utilcode/util/LogUtils;->m(Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v1

    :cond_9
    :goto_2
    const-string p0, "[VideoIconAd]no video icon list found"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/blankj/utilcode/util/LogUtils;->m(Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v1
.end method

.method public final v(Lcom/transsion/dbdata/beans/adsbean/AdsDataBean;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "visha_ad_cache_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/transsion/playercommon/utils/CountryInfoUtil;->m()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/transsion/retrofit/cache/CacheManager;->getInstance()Lcom/transsion/retrofit/cache/CacheManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/transsion/retrofit/cache/CacheManager;->getCache(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/transsion/vishaads/datasource/AdsDataManager$2;

    invoke-direct {v1, p0}, Lcom/transsion/vishaads/datasource/AdsDataManager$2;-><init>(Lcom/transsion/vishaads/datasource/AdsDataManager;)V

    invoke-virtual {v1}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-static {v0, v1}, Lfi1;->c(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/dbdata/beans/adsbean/AdsDataBean;

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/adsbean/AdsDataBean;->getLaunchScreenList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/transsion/vishaads/datasource/AdsDataManager;->x(Ljava/util/List;Lcom/transsion/dbdata/beans/adsbean/AdsDataBean;)V

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/adsbean/AdsDataBean;->getVideoBannerList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/transsion/vishaads/datasource/AdsDataManager;->y(Ljava/util/List;Lcom/transsion/dbdata/beans/adsbean/AdsDataBean;)V

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/adsbean/AdsDataBean;->getAudioBannerList()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Lcom/transsion/vishaads/datasource/AdsDataManager;->w(Ljava/util/List;Lcom/transsion/dbdata/beans/adsbean/AdsDataBean;)V

    invoke-virtual {p0}, Lcom/transsion/vishaads/datasource/AdsDataManager;->i()V

    return-void
.end method

.method public final w(Ljava/util/List;Lcom/transsion/dbdata/beans/adsbean/AdsDataBean;)V
    .locals 3

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/transsion/dbdata/beans/adsbean/AdsDataBean;->getAudioBannerList()Ljava/util/List;

    move-result-object p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    iget-object v0, p0, Lcom/transsion/vishaads/datasource/AdsDataManager;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/dbdata/beans/adsbean/AdItemBean;

    if-eqz p2, :cond_1

    invoke-interface {p2}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lx8;

    invoke-direct {v2, v0}, Lx8;-><init>(Lcom/transsion/dbdata/beans/adsbean/AdItemBean;)V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/transsion/dbdata/beans/adsbean/AdItemBean;->isLocalFileExists()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    const-string v1, "AudioBannerOnlineAD"

    invoke-virtual {v0, v1}, Lcom/transsion/dbdata/beans/adsbean/AdItemBean;->setAdType(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/transsion/vishaads/datasource/AdsDataManager;->i:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    return-void
.end method

.method public final x(Ljava/util/List;Lcom/transsion/dbdata/beans/adsbean/AdsDataBean;)V
    .locals 3

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/transsion/dbdata/beans/adsbean/AdsDataBean;->getLaunchScreenList()Ljava/util/List;

    move-result-object p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    iget-object v0, p0, Lcom/transsion/vishaads/datasource/AdsDataManager;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/dbdata/beans/adsbean/AdItemBean;

    if-eqz p2, :cond_1

    invoke-interface {p2}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lz8;

    invoke-direct {v2, v0}, Lz8;-><init>(Lcom/transsion/dbdata/beans/adsbean/AdItemBean;)V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/transsion/dbdata/beans/adsbean/AdItemBean;->isLocalFileExists()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    const-string v1, "LaunchOnlineAD"

    invoke-virtual {v0, v1}, Lcom/transsion/dbdata/beans/adsbean/AdItemBean;->setAdType(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/transsion/vishaads/datasource/AdsDataManager;->g:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    return-void
.end method

.method public final y(Ljava/util/List;Lcom/transsion/dbdata/beans/adsbean/AdsDataBean;)V
    .locals 3

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/transsion/dbdata/beans/adsbean/AdsDataBean;->getVideoBannerList()Ljava/util/List;

    move-result-object p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    iget-object v0, p0, Lcom/transsion/vishaads/datasource/AdsDataManager;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/dbdata/beans/adsbean/AdItemBean;

    if-eqz p2, :cond_1

    invoke-interface {p2}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Ly8;

    invoke-direct {v2, v0}, Ly8;-><init>(Lcom/transsion/dbdata/beans/adsbean/AdItemBean;)V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/transsion/dbdata/beans/adsbean/AdItemBean;->isLocalFileExists()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    const-string v1, "VideoBannerOnlineAD"

    invoke-virtual {v0, v1}, Lcom/transsion/dbdata/beans/adsbean/AdItemBean;->setAdType(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/transsion/vishaads/datasource/AdsDataManager;->h:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    return-void
.end method

.method public z(I)V
    .locals 3

    iget-boolean v0, p0, Lcom/transsion/vishaads/datasource/AdsDataManager;->e:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/transsion/vishaads/datasource/AdsDataManager;->e:Z

    invoke-static {}, Lcom/transsion/playercommon/vishaapis/onlinevideo/OnlineVideoApiManager;->getInstance()Lcom/transsion/playercommon/vishaapis/onlinevideo/OnlineVideoApiManager;

    move-result-object v0

    const-class v1, Lcom/transsion/playercommon/vishaapis/onlinevideo/IOnlineVideoApiService;

    invoke-virtual {v0, v1}, Lcom/transsion/retrofit/factory/BaseAPIManager;->getApi(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/playercommon/vishaapis/onlinevideo/IOnlineVideoApiService;

    int-to-long v1, p1

    invoke-interface {v0, v1, v2}, Lcom/transsion/playercommon/vishaapis/onlinevideo/IOnlineVideoApiService;->getVishaAds(J)Lmc7;

    move-result-object v0

    invoke-static {}, Lk29;->c()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmc7;->d0(Lio/reactivex/Scheduler;)Lmc7;

    move-result-object v0

    invoke-static {}, Lk29;->c()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmc7;->M(Lio/reactivex/Scheduler;)Lmc7;

    move-result-object v0

    new-instance v1, Lcom/transsion/vishaads/datasource/AdsDataManager$a;

    invoke-direct {v1, p0, p1}, Lcom/transsion/vishaads/datasource/AdsDataManager$a;-><init>(Lcom/transsion/vishaads/datasource/AdsDataManager;I)V

    invoke-virtual {v0, v1}, Lmc7;->subscribe(Lpd7;)V

    return-void
.end method
