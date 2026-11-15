.class public final Lcom/transsion/playercommon/vishaapis/cloud/RegionHostCacheInterceptor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lokhttp3/Interceptor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/playercommon/vishaapis/cloud/RegionHostCacheInterceptor$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u0000 \u000f2\u00020\u0001:\u0001\u000fB\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0017\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0016\u00a2\u0006\u0004\u0008\u0007\u0010\u0008R\u0014\u0010\n\u001a\u00020\t8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\n\u0010\u000bR\u0014\u0010\r\u001a\u00020\u000c8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\r\u0010\u000e\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/transsion/playercommon/vishaapis/cloud/RegionHostCacheInterceptor;",
        "Lokhttp3/Interceptor;",
        "<init>",
        "()V",
        "Lokhttp3/Interceptor$Chain;",
        "chain",
        "Lokhttp3/Response;",
        "intercept",
        "(Lokhttp3/Interceptor$Chain;)Lokhttp3/Response;",
        "Lhk1;",
        "coroutineExceptionHandler",
        "Lhk1;",
        "Lnk1;",
        "scope",
        "Lnk1;",
        "Companion",
        "playercommon_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Lcom/transsion/playercommon/vishaapis/cloud/RegionHostCacheInterceptor$Companion;

.field private static final HEADER_REGION_HOST:Ljava/lang/String; = "Region-Host"

.field private static final TAG:Ljava/lang/String; = "RegionHostInterceptor"

.field private static volatile isCacheLoaded:Z

.field private static final sRegionCache:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/playercommon/vishaapis/cloud/RegionHostModel;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final coroutineExceptionHandler:Lhk1;

.field private final scope:Lnk1;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/transsion/playercommon/vishaapis/cloud/RegionHostCacheInterceptor$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/transsion/playercommon/vishaapis/cloud/RegionHostCacheInterceptor$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/transsion/playercommon/vishaapis/cloud/RegionHostCacheInterceptor;->Companion:Lcom/transsion/playercommon/vishaapis/cloud/RegionHostCacheInterceptor$Companion;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    const-string v1, "synchronizedList(...)"

    invoke-static {v0, v1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/playercommon/vishaapis/cloud/RegionHostCacheInterceptor;->sRegionCache:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lhk1;->w1:Lhk1$b;

    new-instance v1, Lcom/transsion/playercommon/vishaapis/cloud/RegionHostCacheInterceptor$special$$inlined$CoroutineExceptionHandler$1;

    invoke-direct {v1, v0}, Lcom/transsion/playercommon/vishaapis/cloud/RegionHostCacheInterceptor$special$$inlined$CoroutineExceptionHandler$1;-><init>(Lhk1$b;)V

    iput-object v1, p0, Lcom/transsion/playercommon/vishaapis/cloud/RegionHostCacheInterceptor;->coroutineExceptionHandler:Lhk1;

    invoke-static {}, Lmc2;->b()Lkotlinx/coroutines/c;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v2, v3, v2}, Lv6a;->b(Lkotlinx/coroutines/j;ILjava/lang/Object;)Lpb1;

    move-result-object v2

    invoke-virtual {v0, v2}, Lkotlin/coroutines/a;->plus(Lkotlin/coroutines/d;)Lkotlin/coroutines/d;

    move-result-object v0

    invoke-interface {v0, v1}, Lkotlin/coroutines/d;->plus(Lkotlin/coroutines/d;)Lkotlin/coroutines/d;

    move-result-object v0

    invoke-static {v0}, Lkotlinx/coroutines/d;->a(Lkotlin/coroutines/d;)Lnk1;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/playercommon/vishaapis/cloud/RegionHostCacheInterceptor;->scope:Lnk1;

    return-void
.end method

.method public static final synthetic access$getSRegionCache$cp()Ljava/util/List;
    .locals 1

    sget-object v0, Lcom/transsion/playercommon/vishaapis/cloud/RegionHostCacheInterceptor;->sRegionCache:Ljava/util/List;

    return-object v0
.end method

.method public static final synthetic access$isCacheLoaded$cp()Z
    .locals 1

    sget-boolean v0, Lcom/transsion/playercommon/vishaapis/cloud/RegionHostCacheInterceptor;->isCacheLoaded:Z

    return v0
.end method

.method public static final synthetic access$setCacheLoaded$cp(Z)V
    .locals 0

    sput-boolean p0, Lcom/transsion/playercommon/vishaapis/cloud/RegionHostCacheInterceptor;->isCacheLoaded:Z

    return-void
.end method


# virtual methods
.method public intercept(Lokhttp3/Interceptor$Chain;)Lokhttp3/Response;
    .locals 19

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string v3, "/visha/api/cloud-storage"

    const-string v4, "RegionHostInterceptor"

    const-string v0, "chain"

    invoke-static {v2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface/range {p1 .. p1}, Lokhttp3/Interceptor$Chain;->request()Lokhttp3/Request;

    move-result-object v5

    invoke-virtual {v5}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/HttpUrl;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x2

    const/4 v9, 0x0

    const/4 v10, 0x0

    :try_start_0
    invoke-static {v6, v3, v10, v8, v9}, Lj1a;->X(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Lcom/transsion/playercommon/vishaapis/cloud/RegionHostCacheInterceptor;->sRegionCache:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    move-object v12, v11

    check-cast v12, Lcom/transsion/playercommon/vishaapis/cloud/RegionHostModel;

    invoke-virtual {v12}, Lcom/transsion/playercommon/vishaapis/cloud/RegionHostModel;->getOriginUrl()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12, v7}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_2

    :cond_1
    move-object v11, v9

    :goto_0
    check-cast v11, Lcom/transsion/playercommon/vishaapis/cloud/RegionHostModel;

    if-eqz v11, :cond_2

    invoke-virtual {v11}, Lcom/transsion/playercommon/vishaapis/cloud/RegionHostModel;->getRegionHost()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    move-object v0, v9

    :goto_1
    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_3

    goto :goto_3

    :cond_3
    sget-object v0, Lokhttp3/HttpUrl;->Companion:Lokhttp3/HttpUrl$Companion;

    invoke-static {v11}, Ly45;->g(Ljava/lang/Object;)V

    invoke-virtual {v11}, Lcom/transsion/playercommon/vishaapis/cloud/RegionHostModel;->getRegionHost()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ly45;->g(Ljava/lang/Object;)V

    invoke-virtual {v0, v11}, Lokhttp3/HttpUrl$Companion;->parse(Ljava/lang/String;)Lokhttp3/HttpUrl;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v5}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v11

    invoke-virtual {v11}, Lokhttp3/HttpUrl;->newBuilder()Lokhttp3/HttpUrl$Builder;

    move-result-object v11

    invoke-virtual {v0}, Lokhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Lokhttp3/HttpUrl$Builder;->host(Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/HttpUrl$Builder;->build()Lokhttp3/HttpUrl;

    move-result-object v0

    invoke-virtual {v5}, Lokhttp3/Request;->newBuilder()Lokhttp3/Request$Builder;

    move-result-object v11

    const-string v12, "g"

    invoke-virtual {v11, v12}, Lokhttp3/Request$Builder;->removeHeader(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v11

    invoke-virtual {v11, v0}, Lokhttp3/Request$Builder;->url(Lokhttp3/HttpUrl;)Lokhttp3/Request$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v11, 0x1

    goto :goto_4

    :goto_2
    const-string v11, "error in request logic"

    invoke-static {v4, v11, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_4
    :goto_3
    move-object v0, v5

    move v11, v10

    :goto_4
    :try_start_1
    invoke-interface {v2, v0}, Lokhttp3/Interceptor$Chain;->proceed(Lokhttp3/Request;)Lokhttp3/Response;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_5
    move-object v2, v0

    goto :goto_6

    :catch_1
    move-exception v0

    move-object v12, v0

    if-eqz v11, :cond_8

    instance-of v0, v12, Ljava/net/UnknownHostException;

    if-nez v0, :cond_5

    instance-of v0, v12, Ljava/net/ConnectException;

    if-eqz v0, :cond_8

    :cond_5
    const-string v0, "Region host failed, fallback to original host"

    invoke-static {v4, v0, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v13, v1, Lcom/transsion/playercommon/vishaapis/cloud/RegionHostCacheInterceptor;->scope:Lnk1;

    new-instance v0, Lcom/transsion/playercommon/vishaapis/cloud/RegionHostCacheInterceptor$intercept$2;

    invoke-direct {v0, v7, v9}, Lcom/transsion/playercommon/vishaapis/cloud/RegionHostCacheInterceptor$intercept$2;-><init>(Ljava/lang/String;Lwh1;)V

    const/16 v17, 0x3

    const/16 v18, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v16, v0

    invoke-static/range {v13 .. v18}, Lcl0;->d(Lnk1;Lkotlin/coroutines/d;Lkotlinx/coroutines/CoroutineStart;Ls74;ILjava/lang/Object;)Lkotlinx/coroutines/j;

    invoke-interface {v2, v5}, Lokhttp3/Interceptor$Chain;->proceed(Lokhttp3/Request;)Lokhttp3/Response;

    move-result-object v0

    goto :goto_5

    :goto_6
    :try_start_2
    invoke-static {v6, v3, v10, v8, v9}, Lj1a;->X(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, "Region-Host"

    invoke-static {v2, v0, v9, v8, v9}, Lokhttp3/Response;->header$default(Lokhttp3/Response;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-nez v3, :cond_6

    goto :goto_7

    :cond_6
    iget-object v10, v1, Lcom/transsion/playercommon/vishaapis/cloud/RegionHostCacheInterceptor;->scope:Lnk1;

    new-instance v13, Lcom/transsion/playercommon/vishaapis/cloud/RegionHostCacheInterceptor$intercept$3;

    invoke-direct {v13, v0, v7, v9}, Lcom/transsion/playercommon/vishaapis/cloud/RegionHostCacheInterceptor$intercept$3;-><init>(Ljava/lang/String;Ljava/lang/String;Lwh1;)V

    const/4 v14, 0x3

    const/4 v15, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-static/range {v10 .. v15}, Lcl0;->d(Lnk1;Lkotlin/coroutines/d;Lkotlinx/coroutines/CoroutineStart;Ls74;ILjava/lang/Object;)Lkotlinx/coroutines/j;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_7

    :catch_2
    move-exception v0

    const-string v1, "error in intercept logic"

    invoke-static {v4, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_7
    :goto_7
    return-object v2

    :cond_8
    throw v12
.end method
