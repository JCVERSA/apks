.class public Lcom/snaptube/extractor/pluginlib/PluginProvider;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final SITE_TYPE_ALL:Ljava/lang/String; = "all"

.field private static final SITE_TYPE_OWN:Ljava/lang/String; = "own"

.field private static final sExtractors:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lt/e;",
            ">;"
        }
    .end annotation
.end field

.field private static sIsInited:Z = false

.field private static volatile sVideoAudioMuxWrapper:Lt/l;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/snaptube/extractor/pluginlib/PluginProvider;->sExtractors:Ljava/util/Map;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lcom/snaptube/extractor/pluginlib/utils/PluginContextUtil;->getAppContext()Landroid/content/Context;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-static {v0}, Lcom/snaptube/extractor/pluginlib/PluginProvider;->init(Landroid/content/Context;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public static synthetic a()V
    .locals 0

    .line 1
    invoke-static {}, Lcom/snaptube/extractor/pluginlib/PluginProvider;->lambda$preloadYouTubeJsCode$0()V

    return-void
.end method

.method public static synthetic b()V
    .locals 0

    .line 1
    invoke-static {}, Lcom/snaptube/extractor/pluginlib/PluginProvider;->triggerYouTubeJsCodeDownload()V

    return-void
.end method

.method public static init(Landroid/content/Context;)V
    .locals 3

    .line 1
    sget-boolean v0, Lcom/snaptube/extractor/pluginlib/PluginProvider;->sIsInited:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const/4 v0, 0x1

    .line 7
    sput-boolean v0, Lcom/snaptube/extractor/pluginlib/PluginProvider;->sIsInited:Z

    .line 8
    .line 9
    new-instance v0, Ll/d;

    .line 10
    .line 11
    invoke-direct {v0}, Ll/d;-><init>()V

    .line 12
    .line 13
    .line 14
    invoke-static {}, Lj/c;->d()Lj/c;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    new-instance v2, Lcom/snaptube/extractor/pluginlib/PluginProvider$a;

    .line 19
    .line 20
    invoke-direct {v2, p0, v0}, Lcom/snaptube/extractor/pluginlib/PluginProvider$a;-><init>(Landroid/content/Context;Ll/d;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1, v2}, Lj/c;->j(Lj/c$c;)V

    .line 24
    .line 25
    .line 26
    invoke-static {}, Lcom/snaptube/extractor/pluginlib/PluginProvider;->preloadYouTubeJsCode()V

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method private isUnSupportedVersion(Landroid/content/Context;)Z
    .locals 1

    .line 1
    invoke-static {p1}, Lo/n;->a(Landroid/content/Context;)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    if-lez p1, :cond_0

    .line 6
    .line 7
    const v0, 0x472eb2

    .line 8
    .line 9
    .line 10
    if-le p1, v0, :cond_1

    .line 11
    .line 12
    :cond_0
    const v0, 0x47e7da

    .line 13
    .line 14
    .line 15
    if-ne p1, v0, :cond_2

    .line 16
    .line 17
    :cond_1
    const/4 p1, 0x1

    .line 18
    goto :goto_0

    .line 19
    :cond_2
    const/4 p1, 0x0

    .line 20
    :goto_0
    return p1
.end method

.method private static synthetic lambda$preloadYouTubeJsCode$0()V
    .locals 1

    .line 1
    new-instance v0, Lo/j;

    .line 2
    .line 3
    invoke-direct {v0}, Lo/j;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {v0}, Lcom/snaptube/extractor/pluginlib/common/g;->a(Ljava/lang/Runnable;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method private static preloadYouTubeJsCode()V
    .locals 4

    .line 1
    new-instance v0, Landroid/os/Handler;

    .line 2
    .line 3
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 8
    .line 9
    .line 10
    new-instance v1, Lo/i;

    .line 11
    .line 12
    invoke-direct {v1}, Lo/i;-><init>()V

    .line 13
    .line 14
    .line 15
    const-wide/16 v2, 0x1388

    .line 16
    .line 17
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method private static triggerYouTubeJsCodeDownload()V
    .locals 2

    .line 1
    invoke-static {}, Lj/c;->d()Lj/c;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lj/c;->g()Lj/b;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-interface {v0}, Lj/b;->h()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    :try_start_0
    invoke-static {}, LD/q;->j()LD/q;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    const-string v1, "jNQXAC9IVRw"

    .line 21
    .line 22
    invoke-virtual {v0, v1}, LD/q;->l(Ljava/lang/String;)Ljava/lang/Integer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    .line 24
    .line 25
    :catchall_0
    return-void
.end method


# virtual methods
.method public getExtractor()Lt/e;
    .locals 1

    .line 1
    const-string v0, "all"

    invoke-virtual {p0, v0}, Lcom/snaptube/extractor/pluginlib/PluginProvider;->getExtractor(Ljava/lang/String;)Lt/e;

    move-result-object v0

    return-object v0
.end method

.method public getExtractor(Ljava/lang/String;)Lt/e;
    .locals 5

    .line 2
    sget-object v0, Lcom/snaptube/extractor/pluginlib/PluginProvider;->sExtractors:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lt/e;

    if-nez v1, :cond_3

    .line 3
    monitor-enter p0

    .line 4
    :try_start_0
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lt/e;

    if-nez v1, :cond_2

    .line 5
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 6
    invoke-static {}, Lcom/snaptube/extractor/pluginlib/utils/PluginContextUtil;->getAppContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/snaptube/extractor/pluginlib/PluginProvider;->isUnSupportedVersion(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 7
    const-string v2, "own"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 8
    new-instance v2, Lcom/snaptube/extractor/pluginlib/sites/Youtube;

    invoke-direct {v2}, Lcom/snaptube/extractor/pluginlib/sites/Youtube;-><init>()V

    .line 9
    new-instance v3, Lz/k;

    invoke-direct {v3}, Lz/k;-><init>()V

    .line 10
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 11
    new-instance v4, Lcom/snaptube/extractor/pluginlib/sites/Facebook;

    invoke-direct {v4}, Lcom/snaptube/extractor/pluginlib/sites/Facebook;-><init>()V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 12
    new-instance v4, Lz/z;

    invoke-direct {v4}, Lz/z;-><init>()V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 13
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 14
    invoke-static {}, Lcom/snaptube/extractor/pluginlib/utils/j;->j()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 15
    new-instance v3, Lz/n;

    invoke-direct {v3}, Lz/n;-><init>()V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 16
    new-instance v3, Lz/t;

    invoke-direct {v3}, Lz/t;-><init>()V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 17
    new-instance v3, Lz/d;

    invoke-direct {v3}, Lz/d;-><init>()V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 18
    new-instance v3, Lz/w;

    invoke-direct {v3}, Lz/w;-><init>()V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_1

    .line 19
    :cond_0
    :goto_0
    new-instance v3, Lz/E;

    invoke-direct {v3}, Lz/E;-><init>()V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 20
    new-instance v3, Lz/r;

    invoke-direct {v3}, Lz/r;-><init>()V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 21
    new-instance v3, Lz/B;

    invoke-direct {v3}, Lz/B;-><init>()V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 22
    new-instance v3, Lz/m;

    invoke-direct {v3}, Lz/m;-><init>()V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 23
    new-instance v3, Lz/h;

    invoke-direct {v3}, Lz/h;-><init>()V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 24
    new-instance v3, Lz/f;

    invoke-direct {v3, v2}, Lz/f;-><init>(Lz/p;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 25
    new-instance v3, Lz/D;

    invoke-direct {v3, v2}, Lz/D;-><init>(Lz/p;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 26
    new-instance v2, Lz/g;

    new-instance v3, Lcom/snaptube/extractor/pluginlib/ExtractorWrapper;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {v3, v4}, Lcom/snaptube/extractor/pluginlib/ExtractorWrapper;-><init>(Ljava/util/List;)V

    invoke-direct {v2, v3}, Lz/g;-><init>(Lt/e;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 27
    new-instance v2, Lz/s;

    invoke-direct {v2}, Lz/s;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 28
    new-instance v2, Lz/A;

    invoke-direct {v2}, Lz/A;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 29
    invoke-static {}, Lcom/snaptube/extractor/pluginlib/utils/j;->k()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 30
    new-instance v2, LB/f;

    new-instance v3, LB/d;

    invoke-direct {v3}, LB/d;-><init>()V

    invoke-direct {v2, v3}, LB/f;-><init>(LB/d;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 31
    :cond_1
    new-instance v2, Lcom/snaptube/extractor/pluginlib/ExtractorWrapper;

    invoke-direct {v2, v1}, Lcom/snaptube/extractor/pluginlib/ExtractorWrapper;-><init>(Ljava/util/List;)V

    .line 32
    invoke-interface {v0, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v2

    .line 33
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

.method public getVideoAudioMux()Lt/l;
    .locals 2

    .line 1
    sget-object v0, Lcom/snaptube/extractor/pluginlib/PluginProvider;->sVideoAudioMuxWrapper:Lt/l;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    monitor-enter p0

    .line 6
    :try_start_0
    sget-object v1, Lcom/snaptube/extractor/pluginlib/PluginProvider;->sVideoAudioMuxWrapper:Lt/l;

    .line 7
    .line 8
    if-nez v1, :cond_0

    .line 9
    .line 10
    new-instance v0, Lcom/snaptube/extractor/pluginlib/VideoAudioMuxImpl;

    .line 11
    .line 12
    invoke-direct {v0}, Lcom/snaptube/extractor/pluginlib/VideoAudioMuxImpl;-><init>()V

    .line 13
    .line 14
    .line 15
    sput-object v0, Lcom/snaptube/extractor/pluginlib/PluginProvider;->sVideoAudioMuxWrapper:Lt/l;

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :catchall_0
    move-exception v0

    .line 19
    goto :goto_1

    .line 20
    :cond_0
    :goto_0
    monitor-exit p0

    .line 21
    goto :goto_2

    .line 22
    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    throw v0

    .line 24
    :cond_1
    :goto_2
    return-object v0
.end method
