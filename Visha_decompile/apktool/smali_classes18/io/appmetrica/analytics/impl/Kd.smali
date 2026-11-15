.class public final Lio/appmetrica/analytics/impl/Kd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/modulesapi/internal/service/ServiceNetworkContext;


# instance fields
.field public final a:Lio/appmetrica/analytics/impl/E9;

.field public final b:Ljava/lang/String;

.field public final c:Lio/appmetrica/analytics/impl/Uk;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lio/appmetrica/analytics/impl/E9;

    invoke-direct {v0, p1}, Lio/appmetrica/analytics/impl/E9;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lio/appmetrica/analytics/impl/Kd;->a:Lio/appmetrica/analytics/impl/E9;

    new-instance p1, Lio/appmetrica/analytics/impl/zn;

    invoke-direct {p1}, Lio/appmetrica/analytics/impl/zn;-><init>()V

    invoke-virtual {p1}, Lio/appmetrica/analytics/impl/zn;->a()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lio/appmetrica/analytics/impl/Kd;->b:Ljava/lang/String;

    new-instance p1, Lio/appmetrica/analytics/impl/Uk;

    invoke-direct {p1}, Lio/appmetrica/analytics/impl/Uk;-><init>()V

    iput-object p1, p0, Lio/appmetrica/analytics/impl/Kd;->c:Lio/appmetrica/analytics/impl/Uk;

    return-void
.end method


# virtual methods
.method public final getExecutionPolicy()Lio/appmetrica/analytics/coreapi/internal/io/IExecutionPolicy;
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/impl/Kd;->a:Lio/appmetrica/analytics/impl/E9;

    return-object p0
.end method

.method public final getNetworkApi()Lio/appmetrica/analytics/modulesapi/internal/network/SimpleNetworkApi;
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/impl/Kd;->c:Lio/appmetrica/analytics/impl/Uk;

    return-object p0
.end method

.method public final getSslSocketFactoryProvider()Lio/appmetrica/analytics/coreapi/internal/io/SslSocketFactoryProvider;
    .locals 0

    sget-object p0, Lio/appmetrica/analytics/impl/ua;->E:Lio/appmetrica/analytics/impl/ua;

    invoke-virtual {p0}, Lio/appmetrica/analytics/impl/ua;->y()Lio/appmetrica/analytics/impl/V2;

    move-result-object p0

    return-object p0
.end method

.method public final getUserAgent()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/impl/Kd;->b:Ljava/lang/String;

    return-object p0
.end method
