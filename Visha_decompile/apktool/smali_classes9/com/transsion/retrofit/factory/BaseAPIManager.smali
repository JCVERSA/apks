.class public abstract Lcom/transsion/retrofit/factory/BaseAPIManager;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected apiCache:Landroidx/collection/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/LruCache<",
            "Ljava/lang/Class;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field protected apiFactory:Lcom/transsion/retrofit/factory/AbsAPIFactory;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroidx/collection/LruCache;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Landroidx/collection/LruCache;-><init>(I)V

    iput-object v0, p0, Lcom/transsion/retrofit/factory/BaseAPIManager;->apiCache:Landroidx/collection/LruCache;

    new-instance v0, Lcom/transsion/retrofit/factory/BaseAPIManager$1;

    invoke-direct {v0, p0}, Lcom/transsion/retrofit/factory/BaseAPIManager$1;-><init>(Lcom/transsion/retrofit/factory/BaseAPIManager;)V

    iput-object v0, p0, Lcom/transsion/retrofit/factory/BaseAPIManager;->apiFactory:Lcom/transsion/retrofit/factory/AbsAPIFactory;

    return-void
.end method


# virtual methods
.method public abstract createBaseUrl()Ljava/lang/String;
.end method

.method public createGslbInterceptor()Lokhttp3/Interceptor;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public abstract createInterceptor()Lokhttp3/Interceptor;
.end method

.method public abstract createLogInterceptor()Lokhttp3/Interceptor;
.end method

.method public getApi(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/transsion/retrofit/factory/BaseAPIManager;->apiCache:Landroidx/collection/LruCache;

    invoke-virtual {v0, p1}, Landroidx/collection/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/transsion/retrofit/factory/BaseAPIManager;->apiFactory:Lcom/transsion/retrofit/factory/AbsAPIFactory;

    invoke-virtual {v0, p1}, Lcom/transsion/retrofit/factory/AbsAPIFactory;->makeApiClient(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/retrofit/factory/BaseAPIManager;->apiCache:Landroidx/collection/LruCache;

    invoke-virtual {p0, p1, v0}, Landroidx/collection/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method
