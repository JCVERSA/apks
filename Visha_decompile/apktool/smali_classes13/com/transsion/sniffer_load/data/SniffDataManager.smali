.class public Lcom/transsion/sniffer_load/data/SniffDataManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final DIG_STYLE_TYPE_NORMAL:I = 0x1

.field public static final DIG_STYLE_TYPE_RESOLUTION:I = 0x2

.field private static final TAG:Ljava/lang/String; = "visha_SniffDataManager"

.field public static mCommonSniffCache:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoBean;",
            ">;>;"
        }
    .end annotation
.end field

.field public static mExist:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static mM3u8CoverCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static final mObject:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/transsion/sniffer_load/data/SniffDataManager;->mCommonSniffCache:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/transsion/sniffer_load/data/SniffDataManager;->mM3u8CoverCache:Ljava/util/Map;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/transsion/sniffer_load/data/SniffDataManager;->mObject:Ljava/lang/Object;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/transsion/sniffer_load/data/SniffDataManager;->mExist:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/sniffer_load/data/SniffDataManager;->lambda$clearSniffData$0(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static addData(Ljava/lang/String;Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoBean;)V
    .locals 6

    sget-object v0, Lcom/transsion/sniffer_load/data/SniffDataManager;->mObject:Ljava/lang/Object;

    monitor-enter v0

    if-eqz p0, :cond_8

    if-nez p1, :cond_0

    goto/16 :goto_2

    :cond_0
    :try_start_0
    invoke-static {p0}, Lcom/transsion/sniffer_load/sniffservice/SniffYoutubeUtil;->isSSYoutubeSite(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, ".youtube.com"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object p1, Lcom/transsion/sniffer_load/data/SniffDataManager;->mCommonSniffCache:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    invoke-virtual {p1, p0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto/16 :goto_3

    :cond_1
    sget-object v1, Lcom/transsion/sniffer_load/data/SniffDataManager;->mCommonSniffCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    new-instance v1, Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoArrayBean;

    invoke-direct {v1}, Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoArrayBean;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1, v3}, Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoArrayBean;->setMultiVideoList(Ljava/util/List;)V

    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v3, 0x10

    invoke-direct {v1, v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoBean;->getVideoList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/dbdata/beans/sniff/VideoFileInfoBean;

    invoke-virtual {v2}, Lcom/transsion/dbdata/beans/sniff/VideoFileInfoBean;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Lcom/transsion/sniffer_load/data/SniffDataManager;->mCommonSniffCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1, p0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    :cond_2
    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoBean;->getVideoList()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoBean;->getVideoList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_3

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoBean;->getVideoList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoBean;->getVideoList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/dbdata/beans/sniff/VideoFileInfoBean;

    invoke-virtual {v1}, Lcom/transsion/dbdata/beans/sniff/VideoFileInfoBean;->getUrl()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoBean;->getVideoList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/dbdata/beans/sniff/VideoFileInfoBean;

    invoke-virtual {v1}, Lcom/transsion/dbdata/beans/sniff/VideoFileInfoBean;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoBean;->getVideoList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/dbdata/beans/sniff/VideoFileInfoBean;

    invoke-virtual {v1}, Lcom/transsion/dbdata/beans/sniff/VideoFileInfoBean;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    rem-int/lit8 v1, v1, 0x64

    goto :goto_0

    :cond_3
    move v1, v2

    :goto_0
    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoBean;->getVideoFileName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x1

    if-le v4, v5, :cond_4

    invoke-virtual {v3, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v4, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoBean;->setVideoFileName(Ljava/lang/String;)V

    :cond_4
    sget-object v1, Lcom/transsion/sniffer_load/data/SniffDataManager;->mCommonSniffCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz p0, :cond_7

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoBean;->getVideoList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/dbdata/beans/sniff/VideoFileInfoBean;

    invoke-virtual {v1}, Lcom/transsion/dbdata/beans/sniff/VideoFileInfoBean;->getResolution()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lr0a;->g(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoBean;

    invoke-virtual {v3}, Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoBean;->getVideoList()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_5

    invoke-virtual {v3}, Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoBean;->getVideoList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_5

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoBean;->getVideoList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/transsion/dbdata/beans/sniff/VideoFileInfoBean;

    invoke-virtual {v4}, Lcom/transsion/dbdata/beans/sniff/VideoFileInfoBean;->getResolution()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoBean;->getVideoList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/transsion/dbdata/beans/sniff/VideoFileInfoBean;

    invoke-virtual {v3}, Lcom/transsion/dbdata/beans/sniff/VideoFileInfoBean;->getResolution()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    monitor-exit v0

    return-void

    :cond_6
    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoBean;->getVideoList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/dbdata/beans/sniff/VideoFileInfoBean;

    invoke-virtual {v1}, Lcom/transsion/dbdata/beans/sniff/VideoFileInfoBean;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    :goto_1
    monitor-exit v0

    return-void

    :cond_8
    :goto_2
    monitor-exit v0

    return-void

    :goto_3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static clearSniffData(Ljava/lang/String;)V
    .locals 2

    if-eqz p0, :cond_0

    sget-object v0, Lcom/transsion/sniffer_load/data/SniffDataManager;->mCommonSniffCache:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/transsion/sniffer_load/data/SniffDataManager;->mExist:Ljava/util/Set;

    new-instance v1, Liq9;

    invoke-direct {v1, p0}, Liq9;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/Collection;->removeIf(Ljava/util/function/Predicate;)Z

    :cond_0
    return-void
.end method

.method public static getM3u8Extra(Ljava/lang/String;)Lcom/transsion/sniffer_load/data/M3u8Extra;
    .locals 11

    const-string v0, "visha_SniffDataManager"

    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    invoke-static {p0, v2, v1}, Law5;->k(Ljava/lang/String;Ljava/util/Map;I)Lpv5;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lpv5;->f()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v1}, Lpv5;->f()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_2

    invoke-virtual {v1}, Lpv5;->f()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    invoke-virtual {v1}, Lpv5;->f()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lzv5;

    invoke-virtual {v3}, Lzv5;->n()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/transsion/sniffer_load/data/M3u8Extra;

    invoke-direct {v4}, Lcom/transsion/sniffer_load/data/M3u8Extra;-><init>()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    new-instance v2, Lcom/transsion/sniffer_load/sniffservice/SniffVideoMetaDataParser;

    invoke-direct {v2}, Lcom/transsion/sniffer_load/sniffservice/SniffVideoMetaDataParser;-><init>()V

    invoke-virtual {v2, v3}, Lcom/transsion/sniffer_load/sniffservice/SniffVideoMetaDataParser;->parseSync(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v2}, Lcom/transsion/sniffer_load/sniffservice/SniffVideoMetaDataParser;->hasVideoTrack()Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v5, ""

    invoke-static {v3, v5}, Lcom/transsion/sniffer_load/sniffservice/SniffDownloadHelper;->getContentLength(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v5

    invoke-virtual {v1}, Lpv5;->f()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    int-to-long v7, v1

    mul-long/2addr v5, v7

    invoke-virtual {v4, v5, v6}, Lcom/transsion/sniffer_load/data/M3u8Extra;->setSize(J)V

    invoke-virtual {v4, v3}, Lcom/transsion/sniffer_load/data/M3u8Extra;->setImg(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/transsion/sniffer_load/sniffservice/SniffVideoMetaDataParser;->getVideoResolution()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Lcom/transsion/sniffer_load/data/M3u8Extra;->setResolution(Ljava/lang/String;)V

    const-string v5, " parse m3u8 meta data:"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "url="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ts url="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/transsion/sniffer_load/data/M3u8Extra;->getSize()J

    move-result-wide v8

    invoke-virtual {v1, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cover url="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/transsion/sniffer_load/data/M3u8Extra;->getImg()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "resolution="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/transsion/sniffer_load/data/M3u8Extra;->getResolution()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    filled-new-array/range {v5 .. v10}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v1, Lcom/transsion/sniffer_load/data/SniffDataManager;->mM3u8CoverCache:Ljava/util/Map;

    invoke-interface {v1, p0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catch_0
    move-exception p0

    move-object v2, v4

    goto :goto_1

    :cond_0
    const/4 p0, 0x1

    invoke-virtual {v4, p0}, Lcom/transsion/sniffer_load/data/M3u8Extra;->setAudioOnly(Z)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_1
    :goto_0
    move-object v2, v4

    goto :goto_2

    :catch_1
    move-exception p0

    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getM3u8Extra error: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_2
    :goto_2
    return-object v2
.end method

.method public static getPageData(Ljava/lang/String;)Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoArrayBean;
    .locals 3

    new-instance v0, Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoArrayBean;

    invoke-direct {v0}, Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoArrayBean;-><init>()V

    if-eqz p0, :cond_1

    sget-object v1, Lcom/transsion/sniffer_load/data/SniffDataManager;->mCommonSniffCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v1, :cond_0

    new-instance v2, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v2}, Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoArrayBean;->setMultiVideoList(Ljava/util/List;)V

    invoke-virtual {v0}, Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoArrayBean;->getMultiVideoList()Ljava/util/List;

    move-result-object v1

    new-instance v2, Lcom/transsion/sniffer_load/data/SniffSizeComparator;

    invoke-direct {v2}, Lcom/transsion/sniffer_load/data/SniffSizeComparator;-><init>()V

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v1}, Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoArrayBean;->setMultiVideoList(Ljava/util/List;)V

    :goto_0
    invoke-static {p0}, Lcom/transsion/sniffer_load/sniffservice/SniffGoMovieUtil;->isGoMoviesWebSite(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x2

    invoke-virtual {v0, p0}, Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoArrayBean;->setSniffResultShowType(I)V

    :cond_1
    return-object v0
.end method

.method public static getPageDataForMarkPoint(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    sget-object v0, Lcom/transsion/sniffer_load/data/SniffDataManager;->mCommonSniffCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance p0, Ljava/lang/StringBuffer;

    invoke-direct {p0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoBean;

    invoke-virtual {v1}, Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoBean;->getVideoList()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/dbdata/beans/sniff/VideoFileInfoBean;

    invoke-virtual {v1}, Lcom/transsion/dbdata/beans/sniff/VideoFileInfoBean;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, ","

    invoke-virtual {p0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static isVideoUrlExist(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    invoke-static {p1}, Lr0a;->g(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    invoke-static {p0}, Lr0a;->g(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/transsion/sniffer_load/data/SniffDataManager;->mCommonSniffCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    if-eqz p0, :cond_2

    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_2
    :goto_0
    return v1
.end method

.method private static synthetic lambda$clearSniffData$0(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    invoke-static {p1}, Lr0a;->g(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static parseM3U8Stream(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lsv5;",
            ">;"
        }
    .end annotation

    invoke-static {p1}, Lr0a;->g(Ljava/lang/CharSequence;)Z

    move-result p0

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    return-object v0

    :cond_0
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :try_start_0
    invoke-static {p1, v0, v1}, Law5;->i(Ljava/lang/String;Ljava/util/Map;I)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_a

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_a

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_a

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lsv5;

    if-nez v2, :cond_1

    goto/16 :goto_2

    :cond_1
    invoke-virtual {v2}, Lsv5;->h()Lpv5;

    move-result-object v3

    if-eqz v3, :cond_9

    invoke-virtual {v3}, Lpv5;->f()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_9

    invoke-virtual {v3}, Lpv5;->f()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_9

    invoke-virtual {v3}, Lpv5;->f()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    invoke-virtual {v3}, Lpv5;->f()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lzv5;

    invoke-virtual {v4}, Lzv5;->n()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lsv5;->p(Ljava/lang/String;)V

    invoke-virtual {v2}, Lsv5;->f()I

    move-result v5

    invoke-static {v5}, Lcom/transsion/sniffer_load/sniffservice/SniffVideoMetaDataParser;->getVideoResolution(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lsv5;->t(Ljava/lang/String;)V

    invoke-virtual {v3}, Lpv5;->d()J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-lez v5, :cond_3

    invoke-virtual {v2}, Lsv5;->f()I

    move-result v5

    if-gtz v5, :cond_2

    goto :goto_1

    :cond_2
    sget-object v3, Lcom/transsion/sniffer_load/data/SniffDataManager;->mM3u8CoverCache:Ljava/util/Map;

    invoke-virtual {v2}, Lsv5;->d()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Lsv5;->c()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :catch_0
    move-exception p1

    goto :goto_3

    :cond_3
    :goto_1
    new-instance v5, Lcom/transsion/sniffer_load/sniffservice/SniffVideoMetaDataParser;

    invoke-direct {v5}, Lcom/transsion/sniffer_load/sniffservice/SniffVideoMetaDataParser;-><init>()V

    invoke-virtual {v5, v4}, Lcom/transsion/sniffer_load/sniffservice/SniffVideoMetaDataParser;->parseSync(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-virtual {v5}, Lcom/transsion/sniffer_load/sniffservice/SniffVideoMetaDataParser;->hasVideoTrack()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-virtual {v3}, Lpv5;->d()J

    move-result-wide v9

    cmp-long v6, v9, v7

    if-gtz v6, :cond_4

    const-string v6, ""

    invoke-static {v4, v6}, Lcom/transsion/sniffer_load/sniffservice/SniffDownloadHelper;->getContentLength(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v6

    invoke-virtual {v3}, Lpv5;->f()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    int-to-long v8, v4

    mul-long/2addr v6, v8

    invoke-virtual {v3, v6, v7}, Lpv5;->l(J)V

    :cond_4
    invoke-virtual {v2}, Lsv5;->f()I

    move-result v3

    if-gtz v3, :cond_5

    invoke-virtual {v5}, Lcom/transsion/sniffer_load/sniffservice/SniffVideoMetaDataParser;->getHeight()I

    move-result v3

    invoke-virtual {v2, v3}, Lsv5;->r(I)V

    :cond_5
    invoke-virtual {v2}, Lsv5;->k()I

    move-result v3

    if-gtz v3, :cond_6

    invoke-virtual {v5}, Lcom/transsion/sniffer_load/sniffservice/SniffVideoMetaDataParser;->getWidth()I

    move-result v3

    invoke-virtual {v2, v3}, Lsv5;->u(I)V

    :cond_6
    invoke-virtual {v2}, Lsv5;->f()I

    move-result v3

    invoke-static {v3}, Lcom/transsion/sniffer_load/sniffservice/SniffVideoMetaDataParser;->getVideoResolution(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lsv5;->t(Ljava/lang/String;)V

    :cond_7
    sget-object v3, Lcom/transsion/sniffer_load/data/SniffDataManager;->mM3u8CoverCache:Ljava/util/Map;

    invoke-virtual {v2}, Lsv5;->d()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Lsv5;->c()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_8
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lsv5;->o(Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_9
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :goto_3
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_a
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_b

    move-object v0, p0

    :cond_b
    return-object v0
.end method

.method public static removeData(Ljava/lang/String;Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoBean;)V
    .locals 0

    sget-object p1, Lcom/transsion/sniffer_load/data/SniffDataManager;->mCommonSniffCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1, p0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static setData(Ljava/lang/String;Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/transsion/dbdata/beans/sniff/DownloadMain$DownloadContent;",
            ">;)V"
        }
    .end annotation

    invoke-static {p0}, Lr0a;->g(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/dbdata/beans/sniff/DownloadMain$DownloadContent;

    new-instance v3, Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoBean;

    invoke-direct {v3}, Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoBean;-><init>()V

    invoke-virtual {v2}, Lcom/transsion/dbdata/beans/sniff/DownloadMain$DownloadContent;->getFile_name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoBean;->setVideoFileName(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/transsion/dbdata/beans/sniff/DownloadMain$DownloadContent;->getThumbnail()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoBean;->setVideoCover(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/transsion/dbdata/beans/sniff/DownloadMain$DownloadContent;->getFile_name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoBean;->setTitle(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/transsion/dbdata/beans/sniff/DownloadMain$DownloadContent;->getFile_type()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoBean;->setEncryptionType(Ljava/lang/String;)V

    new-instance v4, Lcom/transsion/dbdata/beans/sniff/VideoFileInfoBean;

    invoke-direct {v4}, Lcom/transsion/dbdata/beans/sniff/VideoFileInfoBean;-><init>()V

    invoke-virtual {v2}, Lcom/transsion/dbdata/beans/sniff/DownloadMain$DownloadContent;->getFile_type()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/transsion/dbdata/beans/sniff/VideoFileInfoBean;->setType(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/transsion/dbdata/beans/sniff/DownloadMain$DownloadContent;->getFile_size()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Lcom/transsion/dbdata/beans/sniff/VideoFileInfoBean;->setSize(J)V

    invoke-virtual {v2}, Lcom/transsion/dbdata/beans/sniff/DownloadMain$DownloadContent;->getLink()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Lcom/transsion/dbdata/beans/sniff/VideoFileInfoBean;->setUrl(Ljava/lang/String;)V

    filled-new-array {v4}, [Lcom/transsion/dbdata/beans/sniff/VideoFileInfoBean;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoBean;->setVideoList(Ljava/util/List;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    sget-object p1, Lcom/transsion/sniffer_load/data/SniffDataManager;->mCommonSniffCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1, p0, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    :goto_1
    return-void
.end method
