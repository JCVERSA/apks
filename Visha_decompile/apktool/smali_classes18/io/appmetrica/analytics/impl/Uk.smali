.class public final Lio/appmetrica/analytics/impl/Uk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/modulesapi/internal/network/SimpleNetworkApi;


# instance fields
.field public final a:Lio/appmetrica/analytics/networktasks/internal/CacheControlHttpsConnectionPerformer;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lio/appmetrica/analytics/networktasks/internal/CacheControlHttpsConnectionPerformer;

    invoke-static {}, Lio/appmetrica/analytics/impl/ua;->j()Lio/appmetrica/analytics/impl/ua;

    move-result-object v1

    invoke-virtual {v1}, Lio/appmetrica/analytics/impl/ua;->y()Lio/appmetrica/analytics/impl/V2;

    move-result-object v1

    check-cast v1, Lio/appmetrica/analytics/impl/cl;

    invoke-virtual {v1}, Lio/appmetrica/analytics/impl/cl;->getSslSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v1

    invoke-direct {v0, v1}, Lio/appmetrica/analytics/networktasks/internal/CacheControlHttpsConnectionPerformer;-><init>(Ljavax/net/ssl/SSLSocketFactory;)V

    iput-object v0, p0, Lio/appmetrica/analytics/impl/Uk;->a:Lio/appmetrica/analytics/networktasks/internal/CacheControlHttpsConnectionPerformer;

    return-void
.end method


# virtual methods
.method public final performRequestWithCacheControl(Ljava/lang/String;Lio/appmetrica/analytics/modulesapi/internal/network/NetworkClientWithCacheControl;)V
    .locals 1

    iget-object p0, p0, Lio/appmetrica/analytics/impl/Uk;->a:Lio/appmetrica/analytics/networktasks/internal/CacheControlHttpsConnectionPerformer;

    new-instance v0, Lio/appmetrica/analytics/impl/y3;

    invoke-direct {v0, p2}, Lio/appmetrica/analytics/impl/y3;-><init>(Lio/appmetrica/analytics/modulesapi/internal/network/NetworkClientWithCacheControl;)V

    invoke-virtual {p0, p1, v0}, Lio/appmetrica/analytics/networktasks/internal/CacheControlHttpsConnectionPerformer;->performConnection(Ljava/lang/String;Lio/appmetrica/analytics/networktasks/internal/CacheControlHttpsConnectionPerformer$Client;)V

    return-void
.end method
