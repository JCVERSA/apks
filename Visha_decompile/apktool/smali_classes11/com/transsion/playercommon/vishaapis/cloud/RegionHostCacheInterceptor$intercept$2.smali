.class final Lcom/transsion/playercommon/vishaapis/cloud/RegionHostCacheInterceptor$intercept$2;
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
    c = "com.transsion.playercommon.vishaapis.cloud.RegionHostCacheInterceptor$intercept$2"
    f = "RegionHostCacheInterceptor.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $host:Ljava/lang/String;

.field label:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Lwh1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lwh1<",
            "-",
            "Lcom/transsion/playercommon/vishaapis/cloud/RegionHostCacheInterceptor$intercept$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/transsion/playercommon/vishaapis/cloud/RegionHostCacheInterceptor$intercept$2;->$host:Ljava/lang/String;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILwh1;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lwh1;)Lwh1;
    .locals 0
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

    new-instance p1, Lcom/transsion/playercommon/vishaapis/cloud/RegionHostCacheInterceptor$intercept$2;

    iget-object p0, p0, Lcom/transsion/playercommon/vishaapis/cloud/RegionHostCacheInterceptor$intercept$2;->$host:Ljava/lang/String;

    invoke-direct {p1, p0, p2}, Lcom/transsion/playercommon/vishaapis/cloud/RegionHostCacheInterceptor$intercept$2;-><init>(Ljava/lang/String;Lwh1;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Lnk1;

    check-cast p2, Lwh1;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/playercommon/vishaapis/cloud/RegionHostCacheInterceptor$intercept$2;->invoke(Lnk1;Lwh1;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lcom/transsion/playercommon/vishaapis/cloud/RegionHostCacheInterceptor$intercept$2;->create(Ljava/lang/Object;Lwh1;)Lwh1;

    move-result-object p0

    check-cast p0, Lcom/transsion/playercommon/vishaapis/cloud/RegionHostCacheInterceptor$intercept$2;

    sget-object p1, Lzfb;->a:Lzfb;

    invoke-virtual {p0, p1}, Lcom/transsion/playercommon/vishaapis/cloud/RegionHostCacheInterceptor$intercept$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    invoke-static {}, Lz45;->f()Ljava/lang/Object;

    iget v0, p0, Lcom/transsion/playercommon/vishaapis/cloud/RegionHostCacheInterceptor$intercept$2;->label:I

    if-nez v0, :cond_3

    invoke-static {p1}, Lkotlin/c;->b(Ljava/lang/Object;)V

    sget-object p1, Lcom/transsion/playercommon/vishaapis/cloud/RegionHostCacheInterceptor;->Companion:Lcom/transsion/playercommon/vishaapis/cloud/RegionHostCacheInterceptor$Companion;

    invoke-virtual {p1}, Lcom/transsion/playercommon/vishaapis/cloud/RegionHostCacheInterceptor$Companion;->getSRegionCache()Ljava/util/List;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/playercommon/vishaapis/cloud/RegionHostCacheInterceptor$intercept$2;->$host:Ljava/lang/String;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p1}, Lcom/transsion/playercommon/vishaapis/cloud/RegionHostCacheInterceptor$Companion;->getSRegionCache()Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/transsion/playercommon/vishaapis/cloud/RegionHostModel;

    invoke-virtual {v2}, Lcom/transsion/playercommon/vishaapis/cloud/RegionHostModel;->getOriginUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p0}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_0
    check-cast v1, Lcom/transsion/playercommon/vishaapis/cloud/RegionHostModel;

    if-eqz v1, :cond_2

    sget-object p0, Lcom/transsion/playercommon/vishaapis/cloud/RegionHostCacheInterceptor;->Companion:Lcom/transsion/playercommon/vishaapis/cloud/RegionHostCacheInterceptor$Companion;

    invoke-virtual {p0}, Lcom/transsion/playercommon/vishaapis/cloud/RegionHostCacheInterceptor$Companion;->getSRegionCache()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/transsion/playercommon/vishaapis/cloud/RegionHostCacheInterceptor$Companion;->getSRegionCache()Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lfi1;->e(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {}, Lcom/tencent/mmkv/MMKV;->p()Lcom/tencent/mmkv/MMKV;

    move-result-object p1

    if-eqz p1, :cond_2

    const-string v1, "cloud_url_host_cache"

    invoke-virtual {p1, v1, p0}, Lcom/tencent/mmkv/MMKV;->w(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    invoke-static {p0}, Lmk0;->a(Z)Ljava/lang/Boolean;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    monitor-exit v0

    sget-object p0, Lzfb;->a:Lzfb;

    return-object p0

    :goto_1
    monitor-exit v0

    throw p0

    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
