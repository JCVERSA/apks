.class public Lcom/snaptube/extractor/pluginlib/common/QuickDownloadConfigProvider;
.super Ljava/lang/Object;

# interfaces
.implements Lo/tg3;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snaptube/extractor/pluginlib/common/QuickDownloadConfigProvider$a;
    }
.end annotation


# static fields
.field public static final METHOD_GET:Ljava/lang/String; = "get"

.field public static final METHOD_GET_INSTANCE:Ljava/lang/String; = "getInstance"

.field private static volatile instance:Lo/tg3;


# instance fields
.field private pluginProvider:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic access$000(Lo/fg7;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/snaptube/extractor/pluginlib/common/QuickDownloadConfigProvider;->siteCodecToJson(Lo/fg7;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getFormatConfigs()Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/snaptube/extractor/pluginlib/common/QuickDownloadConfigProvider$a;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x3

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Lcom/snaptube/extractor/pluginlib/common/QuickDownloadConfigProvider$a;

    sget-object v3, Lcom/snaptube/video/videoextractor/impl/xvideos/XVideosCodec;->MP4_LOW_QUALITY:Lcom/snaptube/video/videoextractor/impl/xvideos/XVideosCodec;

    sget-object v4, Lcom/snaptube/video/videoextractor/impl/xvideos/XVideosCodec;->MP4_HIGH_QUALITY:Lcom/snaptube/video/videoextractor/impl/xvideos/XVideosCodec;

    const/4 v5, 0x2

    new-array v6, v5, [Lo/fg7;

    const/4 v7, 0x0

    aput-object v3, v6, v7

    const/4 v8, 0x1

    aput-object v4, v6, v8

    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    const-string v9, ".*\\\\.xnxx(?!\\\\.gold).*/video[-\\\\w]+/.*"

    invoke-direct {v2, v9, v6}, Lcom/snaptube/extractor/pluginlib/common/QuickDownloadConfigProvider$a;-><init>(Ljava/lang/String;Ljava/util/List;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/snaptube/extractor/pluginlib/common/QuickDownloadConfigProvider$a;

    new-array v6, v5, [Lo/fg7;

    aput-object v3, v6, v7

    aput-object v4, v6, v8

    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    const-string v4, ".*.xvideos.*/video[\\\\w.]*/.*"

    invoke-direct {v2, v4, v3}, Lcom/snaptube/extractor/pluginlib/common/QuickDownloadConfigProvider$a;-><init>(Ljava/lang/String;Ljava/util/List;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/snaptube/extractor/pluginlib/common/QuickDownloadConfigProvider$a;

    new-array v3, v5, [Lo/fg7;

    sget-object v4, Lcom/snaptube/video/videoextractor/impl/tiktok/TikTokCodec;->CLASSIC_MP3:Lcom/snaptube/video/videoextractor/impl/tiktok/TikTokCodec;

    aput-object v4, v3, v7

    sget-object v4, Lcom/snaptube/video/videoextractor/impl/tiktok/TikTokCodec;->CLASSIC_MP4:Lcom/snaptube/video/videoextractor/impl/tiktok/TikTokCodec;

    aput-object v4, v3, v8

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    const-string v4, ".*.tiktok.*/((v/\\\\d+\\\\.html.*)|(.*/video/\\\\d+/?.*))"

    invoke-direct {v2, v4, v3}, Lcom/snaptube/extractor/pluginlib/common/QuickDownloadConfigProvider$a;-><init>(Ljava/lang/String;Ljava/util/List;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lo/g73;->d()Z

    move-result v2

    const-string v3, ".*.(instagram.*|ig.me)/reels?/.*"

    if-eqz v2, :cond_0

    new-instance v2, Lcom/snaptube/extractor/pluginlib/common/QuickDownloadConfigProvider$a;

    new-array v4, v5, [Lo/fg7;

    sget-object v6, Lcom/snaptube/video/videoextractor/impl/instagram/InstagramCodec;->CLASSIC_MP3:Lcom/snaptube/video/videoextractor/impl/instagram/InstagramCodec;

    aput-object v6, v4, v7

    sget-object v6, Lcom/snaptube/video/videoextractor/impl/instagram/InstagramCodec;->CLASSIC_REEL_VIDEO:Lcom/snaptube/video/videoextractor/impl/instagram/InstagramCodec;

    aput-object v6, v4, v8

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/snaptube/extractor/pluginlib/common/QuickDownloadConfigProvider$a;-><init>(Ljava/lang/String;Ljava/util/List;)V

    goto :goto_0

    :cond_0
    new-instance v2, Lcom/snaptube/extractor/pluginlib/common/QuickDownloadConfigProvider$a;

    sget-object v4, Lcom/snaptube/video/videoextractor/impl/instagram/InstagramCodec;->CLASSIC_REEL_VIDEO:Lcom/snaptube/video/videoextractor/impl/instagram/InstagramCodec;

    invoke-static {v4}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/snaptube/extractor/pluginlib/common/QuickDownloadConfigProvider$a;-><init>(Ljava/lang/String;Ljava/util/List;)V

    :goto_0
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lo/g73;->b()Z

    move-result v2

    const-string v3, ".*.facebook.*/(reel/|share/r/|share/v).*"

    if-eqz v2, :cond_1

    new-instance v2, Lcom/snaptube/extractor/pluginlib/common/QuickDownloadConfigProvider$a;

    const/4 v4, 0x4

    new-array v4, v4, [Lo/fg7;

    sget-object v6, Lcom/snaptube/video/videoextractor/impl/facebook/FacebookCodec$FBAudio;->Mp4:Lcom/snaptube/video/videoextractor/impl/facebook/FacebookCodec$FBAudio;

    aput-object v6, v4, v7

    sget-object v6, Lcom/snaptube/video/videoextractor/impl/facebook/FacebookCodec$FBAudio;->MP3:Lcom/snaptube/video/videoextractor/impl/facebook/FacebookCodec$FBAudio;

    aput-object v6, v4, v8

    sget-object v6, Lcom/snaptube/video/videoextractor/impl/facebook/FacebookCodec$FBVideo;->FB_SD_480P:Lcom/snaptube/video/videoextractor/impl/facebook/FacebookCodec$FBVideo;

    aput-object v6, v4, v5

    sget-object v5, Lcom/snaptube/video/videoextractor/impl/facebook/FacebookCodec$FBVideo;->FB_HD_720P:Lcom/snaptube/video/videoextractor/impl/facebook/FacebookCodec$FBVideo;

    aput-object v5, v4, v0

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v2, v3, v0}, Lcom/snaptube/extractor/pluginlib/common/QuickDownloadConfigProvider$a;-><init>(Ljava/lang/String;Ljava/util/List;)V

    goto :goto_1

    :cond_1
    new-instance v2, Lcom/snaptube/extractor/pluginlib/common/QuickDownloadConfigProvider$a;

    new-array v0, v0, [Lo/fg7;

    sget-object v4, Lcom/snaptube/video/videoextractor/impl/facebook/FacebookCodec$FBAudio;->Mp4:Lcom/snaptube/video/videoextractor/impl/facebook/FacebookCodec$FBAudio;

    aput-object v4, v0, v7

    sget-object v4, Lcom/snaptube/video/videoextractor/impl/facebook/FacebookCodec$FBVideo;->FB_SD:Lcom/snaptube/video/videoextractor/impl/facebook/FacebookCodec$FBVideo;

    aput-object v4, v0, v8

    sget-object v4, Lcom/snaptube/video/videoextractor/impl/facebook/FacebookCodec$FBVideo;->FB_HD:Lcom/snaptube/video/videoextractor/impl/facebook/FacebookCodec$FBVideo;

    aput-object v4, v0, v5

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v2, v3, v0}, Lcom/snaptube/extractor/pluginlib/common/QuickDownloadConfigProvider$a;-><init>(Ljava/lang/String;Ljava/util/List;)V

    :goto_1
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v1
.end method

.method public static getInstance()Lo/tg3;
    .locals 2

    sget-object v0, Lcom/snaptube/extractor/pluginlib/common/QuickDownloadConfigProvider;->instance:Lo/tg3;

    if-nez v0, :cond_1

    const-class v0, Lcom/snaptube/extractor/pluginlib/common/QuickDownloadConfigProvider;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/snaptube/extractor/pluginlib/common/QuickDownloadConfigProvider;->instance:Lo/tg3;

    if-nez v1, :cond_0

    new-instance v1, Lcom/snaptube/extractor/pluginlib/common/QuickDownloadConfigProvider;

    invoke-direct {v1}, Lcom/snaptube/extractor/pluginlib/common/QuickDownloadConfigProvider;-><init>()V

    sput-object v1, Lcom/snaptube/extractor/pluginlib/common/QuickDownloadConfigProvider;->instance:Lo/tg3;

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
    sget-object v0, Lcom/snaptube/extractor/pluginlib/common/QuickDownloadConfigProvider;->instance:Lo/tg3;

    return-object v0
.end method

.method private getResultFormPlugin()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/snaptube/extractor/pluginlib/common/QuickDownloadConfigProvider;->pluginProvider:Ljava/lang/Object;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    const-class v0, Lcom/snaptube/extractor/pluginlib/common/QuickDownloadConfigProvider;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    iget-object v2, p0, Lcom/snaptube/extractor/pluginlib/common/QuickDownloadConfigProvider;->pluginProvider:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    if-ne v0, v2, :cond_1

    return-object v1

    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/snaptube/extractor/pluginlib/common/QuickDownloadConfigProvider;->pluginProvider:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v2, "get"

    invoke-virtual {v0, v2, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iget-object v2, p0, Lcom/snaptube/extractor/pluginlib/common/QuickDownloadConfigProvider;->pluginProvider:Ljava/lang/Object;

    invoke-virtual {v0, v2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    return-object v1
.end method

.method private static siteCodecToJson(Lo/fg7;)Ljava/lang/String;
    .locals 4

    invoke-interface {p0}, Lo/fg7;->getAlias()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0}, Lo/fg7;->getTag()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0}, Lo/fg7;->getMime()Ljava/lang/String;

    move-result-object p0

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const/4 v0, 0x2

    aput-object p0, v2, v0

    const-string p0, "{\"alias\":\"%s\",\"tag\":\"%s\",\"mime\":\"%s\"}"

    invoke-static {p0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public get()Ljava/lang/String;
    .locals 4

    invoke-direct {p0}, Lcom/snaptube/extractor/pluginlib/common/QuickDownloadConfigProvider;->getResultFormPlugin()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/snaptube/extractor/pluginlib/common/QuickDownloadConfigProvider;->getFormatConfigs()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/snaptube/extractor/pluginlib/common/QuickDownloadConfigProvider$a;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_1

    const-string v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    invoke-virtual {v2}, Lcom/snaptube/extractor/pluginlib/common/QuickDownloadConfigProvider$a;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_2
    const-string v1, "[%s]"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public loadPlugin(Ljava/lang/ClassLoader;)V
    .locals 2

    :try_start_0
    const-class v0, Lcom/snaptube/extractor/pluginlib/common/QuickDownloadConfigProvider;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    const-string v0, "getInstance"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    invoke-virtual {p1, v1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/snaptube/extractor/pluginlib/common/QuickDownloadConfigProvider;->pluginProvider:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method
