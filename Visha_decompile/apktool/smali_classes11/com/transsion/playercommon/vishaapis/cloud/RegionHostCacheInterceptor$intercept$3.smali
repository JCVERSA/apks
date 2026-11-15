.class final Lcom/transsion/playercommon/vishaapis/cloud/RegionHostCacheInterceptor$intercept$3;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Ls74;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/playercommon/vishaapis/cloud/RegionHostCacheInterceptor;->intercept(Lokhttp3/Interceptor$Chain;)Lokhttp3/Response;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Ls74;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n\u00a2\u0006\u0004\u0008\u0002\u0010\u0003"
    }
    d2 = {
        "Lnk1;",
        "Lzfb;",
        "<anonymous>",
        "(Lnk1;)V"
    }
    k = 0x3
    mv = {
        0x2,
        0x1,
        0x0
    }
.end annotation

.annotation runtime Lnt1;
    c = "com.transsion.playercommon.vishaapis.cloud.RegionHostCacheInterceptor$intercept$3"
    f = "RegionHostCacheInterceptor.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $host:Ljava/lang/String;

.field final synthetic $regionHost:Ljava/lang/String;

.field label:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lwh1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lwh1<",
            "-",
            "Lcom/transsion/playercommon/vishaapis/cloud/RegionHostCacheInterceptor$intercept$3;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/transsion/playercommon/vishaapis/cloud/RegionHostCacheInterceptor$intercept$3;->$regionHost:Ljava/lang/String;

    iput-object p2, p0, Lcom/transsion/playercommon/vishaapis/cloud/RegionHostCacheInterceptor$intercept$3;->$host:Ljava/lang/String;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILwh1;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lwh1;)Lwh1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lwh1<",
            "*>;)",
            "Lwh1<",
            "Lzfb;",
            ">;"
        }
    .end annotation

    new-instance p1, Lcom/transsion/playercommon/vishaapis/cloud/RegionHostCacheInterceptor$intercept$3;

    iget-object v0, p0, Lcom/transsion/playercommon/vishaapis/cloud/RegionHostCacheInterceptor$intercept$3;->$regionHost:Ljava/lang/String;

    iget-object p0, p0, Lcom/transsion/playercommon/vishaapis/cloud/RegionHostCacheInterceptor$intercept$3;->$host:Ljava/lang/String;

    invoke-direct {p1, v0, p0, p2}, Lcom/transsion/playercommon/vishaapis/cloud/RegionHostCacheInterceptor$intercept$3;-><init>(Ljava/lang/String;Ljava/lang/String;Lwh1;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Lnk1;

    check-cast p2, Lwh1;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/playercommon/vishaapis/cloud/RegionHostCacheInterceptor$intercept$3;->invoke(Lnk1;Lwh1;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invoke(Lnk1;Lwh1;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnk1;",
            "Lwh1<",
            "-",
            "Lzfb;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/transsion/playercommon/vishaapis/cloud/RegionHostCacheInterceptor$intercept$3;->create(Ljava/lang/Object;Lwh1;)Lwh1;

    move-result-object p0

    check-cast p0, Lcom/transsion/playercommon/vishaapis/cloud/RegionHostCacheInterceptor$intercept$3;

    sget-object p1, Lzfb;->a:Lzfb;

    invoke-virtual {p0, p1}, Lcom/transsion/playercommon/vishaapis/cloud/RegionHostCacheInterceptor$intercept$3;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    invoke-static {}, Lz45;->f()Ljava/lang/Object;

    iget v0, p0, Lcom/transsion/playercommon/vishaapis/cloud/RegionHostCacheInterceptor$intercept$3;->label:I

    if-nez v0, :cond_4

    invoke-static {p1}, Lkotlin/c;->b(Ljava/lang/Object;)V

    sget-object p1, Lcom/transsion/playercommon/vishaapis/cloud/RegionHostCacheInterceptor;->Companion:Lcom/transsion/playercommon/vishaapis/cloud/RegionHostCacheInterceptor$Companion;

    invoke-virtual {p1}, Lcom/transsion/playercommon/vishaapis/cloud/RegionHostCacheInterceptor$Companion;->getSRegionCache()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/playercommon/vishaapis/cloud/RegionHostCacheInterceptor$intercept$3;->$regionHost:Ljava/lang/String;

    iget-object p0, p0, Lcom/transsion/playercommon/vishaapis/cloud/RegionHostCacheInterceptor$intercept$3;->$host:Ljava/lang/String;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p1}, Lcom/transsion/playercommon/vishaapis/cloud/RegionHostCacheInterceptor$Companion;->ensureCacheLoaded()V

    invoke-virtual {p1}, Lcom/transsion/playercommon/vishaapis/cloud/RegionHostCacheInterceptor$Companion;->getSRegionCache()Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/transsion/playercommon/vishaapis/cloud/RegionHostModel;

    invoke-virtual {v3}, Lcom/transsion/playercommon/vishaapis/cloud/RegionHostModel;->getOriginUrl()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p0}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_1
    const/4 v2, 0x0

    :goto_0
    check-cast v2, Lcom/transsion/playercommon/vishaapis/cloud/RegionHostModel;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/transsion/playercommon/vishaapis/cloud/RegionHostModel;->getRegionHost()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v1}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    invoke-virtual {v2, v1}, Lcom/transsion/playercommon/vishaapis/cloud/RegionHostModel;->setRegionHost(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    sget-object p1, Lcom/transsion/playercommon/vishaapis/cloud/RegionHostCacheInterceptor;->Companion:Lcom/transsion/playercommon/vishaapis/cloud/RegionHostCacheInterceptor$Companion;

    invoke-virtual {p1}, Lcom/transsion/playercommon/vishaapis/cloud/RegionHostCacheInterceptor$Companion;->getSRegionCache()Ljava/util/List;

    move-result-object p1

    new-instance v2, Lcom/transsion/playercommon/vishaapis/cloud/RegionHostModel;

    invoke-direct {v2, p0, v1}, Lcom/transsion/playercommon/vishaapis/cloud/RegionHostModel;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    sget-object p0, Lcom/transsion/playercommon/vishaapis/cloud/RegionHostCacheInterceptor;->Companion:Lcom/transsion/playercommon/vishaapis/cloud/RegionHostCacheInterceptor$Companion;

    invoke-virtual {p0}, Lcom/transsion/playercommon/vishaapis/cloud/RegionHostCacheInterceptor$Companion;->getSRegionCache()Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lfi1;->e(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {}, Lcom/tencent/mmkv/MMKV;->p()Lcom/tencent/mmkv/MMKV;

    move-result-object p1

    if-eqz p1, :cond_3

    const-string v1, "cloud_url_host_cache"

    invoke-virtual {p1, v1, p0}, Lcom/tencent/mmkv/MMKV;->w(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    invoke-static {p0}, Lmk0;->a(Z)Ljava/lang/Boolean;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    monitor-exit v0

    sget-object p0, Lzfb;->a:Lzfb;

    return-object p0

    :goto_2
    monitor-exit v0

    throw p0

    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
