.class public final Lcom/transsion/onlinevideo/tiktok/repository/TiktokFeedRepository;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/onlinevideo/tiktok/repository/TiktokFeedRepository$Companion;,
        Lcom/transsion/onlinevideo/tiktok/repository/TiktokFeedRepository$a;
    }
.end annotation


# static fields
.field public static final e:Lcom/transsion/onlinevideo/tiktok/repository/TiktokFeedRepository$Companion;

.field public static final f:Lcom/google/gson/Gson;

.field public static final g:[Ljava/lang/String;

.field public static final h:[Ljava/lang/String;


# instance fields
.field public final a:Llw4;

.field public volatile b:Z

.field public volatile c:Z

.field public volatile d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/transsion/onlinevideo/tiktok/repository/TiktokFeedRepository$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/transsion/onlinevideo/tiktok/repository/TiktokFeedRepository$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/transsion/onlinevideo/tiktok/repository/TiktokFeedRepository;->e:Lcom/transsion/onlinevideo/tiktok/repository/TiktokFeedRepository$Companion;

    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    sput-object v0, Lcom/transsion/onlinevideo/tiktok/repository/TiktokFeedRepository;->f:Lcom/google/gson/Gson;

    const-string v0, "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerEscapes.mp4"

    const-string v1, "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerFun.mp4"

    const-string v2, "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/BigBuckBunny.mp4"

    const-string v3, "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ElephantsDream.mp4"

    const-string v4, "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerBlazes.mp4"

    filled-new-array {v2, v3, v4, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/transsion/onlinevideo/tiktok/repository/TiktokFeedRepository;->g:[Ljava/lang/String;

    const-string v0, "[\u6d4b\u8bd5] For Bigger Escapes"

    const-string v1, "[\u6d4b\u8bd5] For Bigger Fun"

    const-string v2, "[\u6d4b\u8bd5] Big Buck Bunny"

    const-string v3, "[\u6d4b\u8bd5] Elephants Dream"

    const-string v4, "[\u6d4b\u8bd5] For Bigger Blazes"

    filled-new-array {v2, v3, v4, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/transsion/onlinevideo/tiktok/repository/TiktokFeedRepository;->h:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 4
    invoke-static {}, Lcom/transsion/playercommon/vishaapis/onlinevideo/OnlineVideoApiManager;->getInstance()Lcom/transsion/playercommon/vishaapis/onlinevideo/OnlineVideoApiManager;

    move-result-object v0

    const-class v1, Llw4;

    invoke-virtual {v0, v1}, Lcom/transsion/retrofit/factory/BaseAPIManager;->getApi(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llw4;

    .line 5
    invoke-direct {p0, v0}, Lcom/transsion/onlinevideo/tiktok/repository/TiktokFeedRepository;-><init>(Llw4;)V

    return-void
.end method

.method public constructor <init>(Llw4;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/transsion/onlinevideo/tiktok/repository/TiktokFeedRepository;->a:Llw4;

    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, Lcom/transsion/onlinevideo/tiktok/repository/TiktokFeedRepository;->b:Z

    return-void
.end method

.method public static synthetic a(Le74;Ljava/lang/Object;)Ljava/util/List;
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/onlinevideo/tiktok/repository/TiktokFeedRepository;->n(Le74;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Le74;Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/onlinevideo/tiktok/repository/TiktokFeedRepository;->i(Le74;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic c(Lcom/transsion/onlinevideo/tiktok/repository/TiktokFeedRepository;Lcom/transsion/dbdata/beans/onlinevideo/tiktok/TtStreamResponse;)Ljava/util/List;
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/onlinevideo/tiktok/repository/TiktokFeedRepository;->m(Lcom/transsion/onlinevideo/tiktok/repository/TiktokFeedRepository;Lcom/transsion/dbdata/beans/onlinevideo/tiktok/TtStreamResponse;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d(Lcom/transsion/onlinevideo/tiktok/repository/TiktokFeedRepository;Ljava/util/List;)Lzfb;
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/onlinevideo/tiktok/repository/TiktokFeedRepository;->h(Lcom/transsion/onlinevideo/tiktok/repository/TiktokFeedRepository;Ljava/util/List;)Lzfb;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic e()Lcom/google/gson/Gson;
    .locals 1

    sget-object v0, Lcom/transsion/onlinevideo/tiktok/repository/TiktokFeedRepository;->f:Lcom/google/gson/Gson;

    return-object v0
.end method

.method public static final h(Lcom/transsion/onlinevideo/tiktok/repository/TiktokFeedRepository;Ljava/util/List;)Lzfb;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/onlinevideo/tiktok/repository/TiktokFeedRepository;->f(Ljava/util/List;)V

    sget-object p0, Lzfb;->a:Lzfb;

    return-object p0
.end method

.method public static final i(Le74;Ljava/lang/Object;)V
    .locals 0

    invoke-interface {p0, p1}, Le74;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static final m(Lcom/transsion/onlinevideo/tiktok/repository/TiktokFeedRepository;Lcom/transsion/dbdata/beans/onlinevideo/tiktok/TtStreamResponse;)Ljava/util/List;
    .locals 3

    const-string v0, "response"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/onlinevideo/tiktok/TtStreamResponse;->isHasMore()Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/onlinevideo/tiktok/repository/TiktokFeedRepository;->b:Z

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/onlinevideo/tiktok/TtStreamResponse;->getReqId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/onlinevideo/tiktok/repository/TiktokFeedRepository;->d:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/onlinevideo/tiktok/TtStreamResponse;->getData()Ljava/util/List;

    move-result-object p0

    if-nez p0, :cond_0

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    :cond_0
    move-object v0, p0

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/dbdata/beans/onlinevideo/tiktok/ArticleData;

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/onlinevideo/tiktok/TtStreamResponse;->getReqId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/transsion/dbdata/beans/onlinevideo/tiktok/ArticleData;->setReqId(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "\n "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ","

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "TiktokFeedRepository"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0
.end method

.method public static final n(Le74;Ljava/lang/Object;)Ljava/util/List;
    .locals 1

    const-string v0, "p0"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0, p1}, Le74;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public final f(Ljava/util/List;)V
    .locals 1

    move-object v0, p1

    check-cast v0, Ljava/util/Collection;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    new-instance v0, Lcom/transsion/dbdata/beans/onlinevideo/tiktok/TtFeedCache;

    invoke-direct {v0}, Lcom/transsion/dbdata/beans/onlinevideo/tiktok/TtFeedCache;-><init>()V

    iget-object p0, p0, Lcom/transsion/onlinevideo/tiktok/repository/TiktokFeedRepository;->d:Ljava/lang/String;

    invoke-virtual {v0, p0}, Lcom/transsion/dbdata/beans/onlinevideo/tiktok/TtFeedCache;->setReqId(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/transsion/dbdata/beans/onlinevideo/tiktok/TtFeedCache;->setData(Ljava/util/List;)V

    invoke-static {v0}, Lfi1;->e(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {}, Lcom/transsion/retrofit/cache/CacheManager;->getInstance()Lcom/transsion/retrofit/cache/CacheManager;

    move-result-object p1

    const-string v0, "tiktok_feed_first_page_cache"

    invoke-virtual {p1, v0, p0}, Lcom/transsion/retrofit/cache/CacheManager;->setCache(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "cacheFirstPage failed: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "TiktokFeedRepository"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method

.method public final g()Lmc7;
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/transsion/onlinevideo/tiktok/repository/TiktokFeedRepository;->c:Z

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/tiktok/repository/TiktokFeedRepository;->l()Lmc7;

    move-result-object v0

    new-instance v1, Leja;

    invoke-direct {v1, p0}, Leja;-><init>(Lcom/transsion/onlinevideo/tiktok/repository/TiktokFeedRepository;)V

    new-instance p0, Lfja;

    invoke-direct {p0, v1}, Lfja;-><init>(Le74;)V

    invoke-virtual {v0, p0}, Lmc7;->p(Lzf1;)Lmc7;

    move-result-object p0

    const-string v0, "doOnNext(...)"

    invoke-static {p0, v0}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final j()Lmc7;
    .locals 1

    iget-boolean v0, p0, Lcom/transsion/onlinevideo/tiktok/repository/TiktokFeedRepository;->b:Z

    if-nez v0, :cond_0

    invoke-static {}, Ly71;->k()Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lmc7;->K(Ljava/lang/Object;)Lmc7;

    move-result-object p0

    const-string v0, "just(...)"

    invoke-static {p0, v0}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lcom/transsion/onlinevideo/tiktok/repository/TiktokFeedRepository;->l()Lmc7;

    move-result-object p0

    return-object p0
.end method

.method public final k()Ljava/util/List;
    .locals 3

    const/4 p0, 0x0

    :try_start_0
    invoke-static {}, Lcom/transsion/retrofit/cache/CacheManager;->getInstance()Lcom/transsion/retrofit/cache/CacheManager;

    move-result-object v0

    const-string v1, "tiktok_feed_first_page_cache"

    invoke-virtual {v0, v1}, Lcom/transsion/retrofit/cache/CacheManager;->getCache(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/transsion/onlinevideo/tiktok/repository/TiktokFeedRepository;->e:Lcom/transsion/onlinevideo/tiktok/repository/TiktokFeedRepository$Companion;

    invoke-virtual {v1, v0}, Lcom/transsion/onlinevideo/tiktok/repository/TiktokFeedRepository$Companion;->b(Ljava/lang/String;)Lcom/transsion/onlinevideo/tiktok/repository/TiktokFeedRepository$a;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/transsion/onlinevideo/tiktok/repository/TiktokFeedRepository$a;->a()Ljava/util/List;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "readCache failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TiktokFeedRepository"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-object p0
.end method

.method public final l()Lmc7;
    .locals 12

    sget-object v0, Lcom/transsion/onlinevideo/tiktok/repository/TiktokFeedRepository;->e:Lcom/transsion/onlinevideo/tiktok/repository/TiktokFeedRepository$Companion;

    sget-object v1, Lcom/transsion/utils/deviceinfo/a;->d:Lcom/transsion/utils/deviceinfo/a$a;

    invoke-virtual {v1}, Lcom/transsion/utils/deviceinfo/a$a;->b()Lcom/transsion/utils/deviceinfo/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/transsion/utils/deviceinfo/a;->m()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/transsion/onlinevideo/tiktok/repository/TiktokFeedRepository$Companion;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Lcom/transsion/utils/deviceinfo/a$a;->b()Lcom/transsion/utils/deviceinfo/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/transsion/utils/deviceinfo/a;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/transsion/onlinevideo/tiktok/repository/TiktokFeedRepository$Companion;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1}, Lcom/transsion/utils/deviceinfo/a$a;->b()Lcom/transsion/utils/deviceinfo/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/utils/deviceinfo/a;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/onlinevideo/tiktok/repository/TiktokFeedRepository$Companion;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {}, Lydc;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/onlinevideo/tiktok/repository/TiktokFeedRepository$Companion;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0}, Lcom/transsion/onlinevideo/tiktok/repository/TiktokFeedRepository$Companion;->a()Ljava/lang/String;

    move-result-object v9

    invoke-static {}, Lcom/transsion/playercommon/utils/CountryInfoUtil;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/onlinevideo/tiktok/repository/TiktokFeedRepository$Companion;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {}, Lcom/blankj/utilcode/util/LanguageUtils;->b()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v11

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getStream params: dt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", device_brand="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", os=Android, os_version="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", client_version="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", ac="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", country="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", os_language="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TiktokFeedRepository"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/transsion/onlinevideo/tiktok/repository/TiktokFeedRepository;->a:Llw4;

    invoke-static {v3}, Ly45;->g(Ljava/lang/Object;)V

    const-string v6, "Android"

    invoke-interface/range {v3 .. v11}, Llw4;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lmc7;

    move-result-object v0

    invoke-static {}, Lk29;->c()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmc7;->d0(Lio/reactivex/Scheduler;)Lmc7;

    move-result-object v0

    invoke-static {}, Lvb;->a()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmc7;->M(Lio/reactivex/Scheduler;)Lmc7;

    move-result-object v0

    new-instance v1, Lgja;

    invoke-direct {v1, p0}, Lgja;-><init>(Lcom/transsion/onlinevideo/tiktok/repository/TiktokFeedRepository;)V

    new-instance p0, Lhja;

    invoke-direct {p0, v1}, Lhja;-><init>(Le74;)V

    invoke-virtual {v0, p0}, Lmc7;->L(Lt74;)Lmc7;

    move-result-object p0

    const-string v0, "map(...)"

    invoke-static {p0, v0}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method
