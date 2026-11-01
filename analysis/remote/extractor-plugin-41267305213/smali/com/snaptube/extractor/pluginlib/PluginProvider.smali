.class public Lcom/snaptube/extractor/pluginlib/PluginProvider;
.super Ljava/lang/Object;


# static fields
.field private static final SITE_TYPE_ALL:Ljava/lang/String; = "all"

.field private static final SITE_TYPE_OWN:Ljava/lang/String; = "own"

.field private static final sExtractors:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lo/fc3;",
            ">;"
        }
    .end annotation
.end field

.field private static sIsInited:Z

.field private static volatile sVideoAudioMuxWrapper:Lo/ui3;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/snaptube/extractor/pluginlib/PluginProvider;->sExtractors:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/snaptube/extractor/pluginlib/utils/PluginContextUtil;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/snaptube/extractor/pluginlib/PluginProvider;->init(Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic a()V
    .locals 0

    invoke-static {}, Lcom/snaptube/extractor/pluginlib/PluginProvider;->lambda$preloadYouTubeJsCode$0()V

    return-void
.end method

.method public static synthetic b()V
    .locals 0

    invoke-static {}, Lcom/snaptube/extractor/pluginlib/PluginProvider;->triggerYouTubeJsCodeDownload()V

    return-void
.end method

.method public static init(Landroid/content/Context;)V
    .locals 3

    sget-boolean v0, Lcom/snaptube/extractor/pluginlib/PluginProvider;->sIsInited:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Lcom/snaptube/extractor/pluginlib/PluginProvider;->sIsInited:Z

    new-instance v0, Lo/ld2;

    invoke-direct {v0}, Lo/ld2;-><init>()V

    invoke-static {}, Lo/xm3;->d()Lo/xm3;

    move-result-object v1

    new-instance v2, Lcom/snaptube/extractor/pluginlib/PluginProvider$a;

    invoke-direct {v2, p0, v0}, Lcom/snaptube/extractor/pluginlib/PluginProvider$a;-><init>(Landroid/content/Context;Lo/ld2;)V

    invoke-virtual {v1, v2}, Lo/xm3;->j(Lo/xm3$c;)V

    invoke-static {}, Lcom/snaptube/extractor/pluginlib/PluginProvider;->preloadYouTubeJsCode()V

    return-void
.end method

.method private isUnSupportedVersion(Landroid/content/Context;)Z
    .locals 1

    invoke-static {p1}, Lo/um8;->a(Landroid/content/Context;)I

    move-result p1

    if-lez p1, :cond_0

    const v0, 0x472eb2

    if-le p1, v0, :cond_1

    :cond_0
    const v0, 0x47e7da

    if-ne p1, v0, :cond_2

    :cond_1
    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private static synthetic lambda$preloadYouTubeJsCode$0()V
    .locals 1

    new-instance v0, Lo/x06;

    invoke-direct {v0}, Lo/x06;-><init>()V

    invoke-static {v0}, Lo/wc2;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static preloadYouTubeJsCode()V
    .locals 4

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lo/w06;

    invoke-direct {v1}, Lo/w06;-><init>()V

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private static triggerYouTubeJsCodeDownload()V
    .locals 2

    invoke-static {}, Lo/xm3;->d()Lo/xm3;

    move-result-object v0

    invoke-virtual {v0}, Lo/xm3;->g()Lo/af3;

    move-result-object v0

    invoke-interface {v0}, Lo/af3;->h()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-static {}, Lcom/snaptube/extractor/pluginlib/sites/youtube/a;->i()Lcom/snaptube/extractor/pluginlib/sites/youtube/a;

    move-result-object v0

    const-string v1, "jNQXAC9IVRw"

    invoke-virtual {v0, v1}, Lcom/snaptube/extractor/pluginlib/sites/youtube/a;->k(Ljava/lang/String;)Ljava/lang/Integer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method


# virtual methods
.method public getExtractor()Lo/fc3;
    .locals 1

    const-string v0, "all"

    invoke-virtual {p0, v0}, Lcom/snaptube/extractor/pluginlib/PluginProvider;->getExtractor(Ljava/lang/String;)Lo/fc3;

    move-result-object v0

    return-object v0
.end method

.method public getExtractor(Ljava/lang/String;)Lo/fc3;
    .locals 6

    sget-object v0, Lcom/snaptube/extractor/pluginlib/PluginProvider;->sExtractors:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/fc3;

    if-nez v1, :cond_3

    monitor-enter p0

    :try_start_0
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/fc3;

    if-nez v1, :cond_2

    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    invoke-static {}, Lcom/snaptube/extractor/pluginlib/utils/PluginContextUtil;->getAppContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/snaptube/extractor/pluginlib/PluginProvider;->isUnSupportedVersion(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "own"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    new-instance v2, Lcom/snaptube/extractor/pluginlib/sites/Youtube;

    invoke-direct {v2}, Lcom/snaptube/extractor/pluginlib/sites/Youtube;-><init>()V

    new-instance v3, Lo/b64;

    invoke-direct {v3}, Lo/b64;-><init>()V

    new-instance v4, Lo/hc1;

    invoke-direct {v4}, Lo/hc1;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v5, Lcom/snaptube/extractor/pluginlib/sites/Facebook;

    invoke-direct {v5}, Lcom/snaptube/extractor/pluginlib/sites/Facebook;-><init>()V

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v5, Lo/v58;

    invoke-direct {v5}, Lo/v58;-><init>()V

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lo/g73;->f()Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v3, Lcom/snaptube/extractor/pluginlib/sites/ShazamVideoExtractor;

    invoke-direct {v3}, Lcom/snaptube/extractor/pluginlib/sites/ShazamVideoExtractor;-><init>()V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Lo/ro7;

    invoke-direct {v3}, Lo/ro7;-><init>()V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Lcom/snaptube/extractor/pluginlib/sites/DeezerVideoExtractor;

    invoke-direct {v3}, Lcom/snaptube/extractor/pluginlib/sites/DeezerVideoExtractor;-><init>()V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Lcom/snaptube/extractor/pluginlib/sites/TidalVideoExtractor;

    invoke-direct {v3}, Lcom/snaptube/extractor/pluginlib/sites/TidalVideoExtractor;-><init>()V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    new-instance v3, Lo/ma9;

    invoke-direct {v3}, Lo/ma9;-><init>()V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Lo/hi7;

    invoke-direct {v3}, Lo/hi7;-><init>()V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Lo/zm8;

    invoke-direct {v3}, Lo/zm8;-><init>()V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Lo/id8;

    invoke-direct {v3, v2, v4}, Lo/id8;-><init>(Lcom/snaptube/extractor/pluginlib/sites/Youtube;Lo/hc1;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Lo/mg5;

    invoke-direct {v3}, Lo/mg5;-><init>()V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Lo/im3;

    invoke-direct {v3}, Lo/im3;-><init>()V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Lcom/snaptube/extractor/pluginlib/sites/GoogleSearchVideoExtractor;

    invoke-direct {v3, v2}, Lcom/snaptube/extractor/pluginlib/sites/GoogleSearchVideoExtractor;-><init>(Lo/eg7;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Lo/e13;

    new-instance v3, Lcom/snaptube/extractor/pluginlib/ExtractorWrapper;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {v3, v4}, Lcom/snaptube/extractor/pluginlib/ExtractorWrapper;-><init>(Ljava/util/List;)V

    invoke-direct {v2, v3}, Lo/e13;-><init>(Lo/fc3;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Lo/yj7;

    invoke-direct {v2}, Lo/yj7;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    new-instance v2, Lcom/snaptube/extractor/pluginlib/ExtractorWrapper;

    invoke-direct {v2, v1}, Lcom/snaptube/extractor/pluginlib/ExtractorWrapper;-><init>(Ljava/util/List;)V

    invoke-interface {v0, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v2

    :cond_2
    monitor-exit p0

    goto :goto_2

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_3
    :goto_2
    return-object v1
.end method

.method public getVideoAudioMux()Lo/ui3;
    .locals 2

    sget-object v0, Lcom/snaptube/extractor/pluginlib/PluginProvider;->sVideoAudioMuxWrapper:Lo/ui3;

    if-nez v0, :cond_1

    monitor-enter p0

    :try_start_0
    sget-object v1, Lcom/snaptube/extractor/pluginlib/PluginProvider;->sVideoAudioMuxWrapper:Lo/ui3;

    if-nez v1, :cond_0

    new-instance v0, Lcom/snaptube/extractor/pluginlib/VideoAudioMuxImpl;

    invoke-direct {v0}, Lcom/snaptube/extractor/pluginlib/VideoAudioMuxImpl;-><init>()V

    sput-object v0, Lcom/snaptube/extractor/pluginlib/PluginProvider;->sVideoAudioMuxWrapper:Lo/ui3;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p0

    goto :goto_2

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :goto_2
    return-object v0
.end method
