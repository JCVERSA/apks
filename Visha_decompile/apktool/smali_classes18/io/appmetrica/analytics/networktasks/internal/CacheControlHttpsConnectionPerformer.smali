.class public Lio/appmetrica/analytics/networktasks/internal/CacheControlHttpsConnectionPerformer;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/appmetrica/analytics/networktasks/internal/CacheControlHttpsConnectionPerformer$Client;
    }
.end annotation


# instance fields
.field private final a:Lio/appmetrica/analytics/networktasks/impl/a;

.field private final b:Ljavax/net/ssl/SSLSocketFactory;


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/networktasks/impl/a;Ljavax/net/ssl/SSLSocketFactory;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lio/appmetrica/analytics/networktasks/internal/CacheControlHttpsConnectionPerformer;->a:Lio/appmetrica/analytics/networktasks/impl/a;

    .line 4
    iput-object p2, p0, Lio/appmetrica/analytics/networktasks/internal/CacheControlHttpsConnectionPerformer;->b:Ljavax/net/ssl/SSLSocketFactory;

    return-void
.end method

.method public constructor <init>(Ljavax/net/ssl/SSLSocketFactory;)V
    .locals 1
    .param p1    # Ljavax/net/ssl/SSLSocketFactory;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    new-instance v0, Lio/appmetrica/analytics/networktasks/impl/a;

    invoke-direct {v0}, Lio/appmetrica/analytics/networktasks/impl/a;-><init>()V

    invoke-direct {p0, v0, p1}, Lio/appmetrica/analytics/networktasks/internal/CacheControlHttpsConnectionPerformer;-><init>(Lio/appmetrica/analytics/networktasks/impl/a;Ljavax/net/ssl/SSLSocketFactory;)V

    return-void
.end method


# virtual methods
.method public performConnection(Ljava/lang/String;Lio/appmetrica/analytics/networktasks/internal/CacheControlHttpsConnectionPerformer$Client;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lio/appmetrica/analytics/networktasks/internal/CacheControlHttpsConnectionPerformer$Client;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    :try_start_0
    iget-object v0, p0, Lio/appmetrica/analytics/networktasks/internal/CacheControlHttpsConnectionPerformer;->a:Lio/appmetrica/analytics/networktasks/impl/a;

    invoke-interface {p2}, Lio/appmetrica/analytics/networktasks/internal/CacheControlHttpsConnectionPerformer$Client;->getOldETag()Ljava/lang/String;

    move-result-object v1

    iget-object p0, p0, Lio/appmetrica/analytics/networktasks/internal/CacheControlHttpsConnectionPerformer;->b:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1, p1, p0}, Lio/appmetrica/analytics/networktasks/impl/a;->a(Ljava/lang/String;Ljava/lang/String;Ljavax/net/ssl/SSLSocketFactory;)Lio/appmetrica/analytics/network/internal/Response;

    move-result-object p0

    invoke-virtual {p0}, Lio/appmetrica/analytics/network/internal/Response;->getCode()I

    move-result p1

    const/16 v0, 0xc8

    if-eq p1, v0, :cond_1

    const/16 p0, 0x130

    if-eq p1, p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p2}, Lio/appmetrica/analytics/networktasks/internal/CacheControlHttpsConnectionPerformer$Client;->onNotModified()V

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lio/appmetrica/analytics/network/internal/Response;->getHeaders()Ljava/util/Map;

    move-result-object p1

    const-string v0, "ETag"

    invoke-static {p1, v0}, Lio/appmetrica/analytics/coreutils/internal/collection/CollectionUtils;->getFromMapIgnoreCase(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_3

    :cond_2
    const-string p1, ""

    :cond_3
    :try_start_1
    invoke-virtual {p0}, Lio/appmetrica/analytics/network/internal/Response;->getResponseData()[B

    move-result-object p0

    invoke-interface {p2, p1, p0}, Lio/appmetrica/analytics/networktasks/internal/CacheControlHttpsConnectionPerformer$Client;->onResponse(Ljava/lang/String;[B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    :goto_0
    invoke-interface {p2}, Lio/appmetrica/analytics/networktasks/internal/CacheControlHttpsConnectionPerformer$Client;->onError()V

    :goto_1
    return-void
.end method
