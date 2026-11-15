.class public final Lio/appmetrica/analytics/impl/dd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/coreapi/internal/data/JsonParser;
.implements Lio/appmetrica/analytics/coreapi/internal/data/Converter;


# instance fields
.field public final a:Lio/appmetrica/analytics/modulesapi/internal/service/RemoteConfigExtensionConfiguration;

.field public final synthetic b:Lio/appmetrica/analytics/coreapi/internal/data/JsonParser;

.field public final synthetic c:Lio/appmetrica/analytics/coreapi/internal/data/Converter;


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/modulesapi/internal/service/RemoteConfigExtensionConfiguration;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/appmetrica/analytics/modulesapi/internal/service/RemoteConfigExtensionConfiguration<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/appmetrica/analytics/impl/dd;->a:Lio/appmetrica/analytics/modulesapi/internal/service/RemoteConfigExtensionConfiguration;

    invoke-virtual {p1}, Lio/appmetrica/analytics/modulesapi/internal/service/RemoteConfigExtensionConfiguration;->getJsonParser()Lio/appmetrica/analytics/coreapi/internal/data/JsonParser;

    move-result-object v0

    iput-object v0, p0, Lio/appmetrica/analytics/impl/dd;->b:Lio/appmetrica/analytics/coreapi/internal/data/JsonParser;

    invoke-virtual {p1}, Lio/appmetrica/analytics/modulesapi/internal/service/RemoteConfigExtensionConfiguration;->getProtobufConverter()Lio/appmetrica/analytics/coreapi/internal/data/Converter;

    move-result-object p1

    iput-object p1, p0, Lio/appmetrica/analytics/impl/dd;->c:Lio/appmetrica/analytics/coreapi/internal/data/Converter;

    return-void
.end method


# virtual methods
.method public final a()Lio/appmetrica/analytics/modulesapi/internal/service/RemoteConfigExtensionConfiguration;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/appmetrica/analytics/modulesapi/internal/service/RemoteConfigExtensionConfiguration<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 4
    iget-object p0, p0, Lio/appmetrica/analytics/impl/dd;->a:Lio/appmetrica/analytics/modulesapi/internal/service/RemoteConfigExtensionConfiguration;

    return-object p0
.end method

.method public final a(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 0

    .line 2
    iget-object p0, p0, Lio/appmetrica/analytics/impl/dd;->b:Lio/appmetrica/analytics/coreapi/internal/data/JsonParser;

    invoke-interface {p0, p1}, Lio/appmetrica/analytics/coreapi/internal/data/Parser;->parse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final a([B)Ljava/lang/Object;
    .locals 0

    .line 3
    iget-object p0, p0, Lio/appmetrica/analytics/impl/dd;->c:Lio/appmetrica/analytics/coreapi/internal/data/Converter;

    invoke-interface {p0, p1}, Lio/appmetrica/analytics/coreapi/internal/data/Converter;->toModel(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final a(Ljava/lang/Object;)[B
    .locals 0

    .line 1
    iget-object p0, p0, Lio/appmetrica/analytics/impl/dd;->c:Lio/appmetrica/analytics/coreapi/internal/data/Converter;

    invoke-interface {p0, p1}, Lio/appmetrica/analytics/coreapi/internal/data/Converter;->fromModel(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [B

    return-object p0
.end method

.method public final b(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/impl/dd;->b:Lio/appmetrica/analytics/coreapi/internal/data/JsonParser;

    invoke-interface {p0, p1}, Lio/appmetrica/analytics/coreapi/internal/data/Parser;->parseOrNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final fromModel(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/impl/dd;->c:Lio/appmetrica/analytics/coreapi/internal/data/Converter;

    invoke-interface {p0, p1}, Lio/appmetrica/analytics/coreapi/internal/data/Converter;->fromModel(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [B

    return-object p0
.end method

.method public final parse(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lorg/json/JSONObject;

    iget-object p0, p0, Lio/appmetrica/analytics/impl/dd;->b:Lio/appmetrica/analytics/coreapi/internal/data/JsonParser;

    invoke-interface {p0, p1}, Lio/appmetrica/analytics/coreapi/internal/data/Parser;->parse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final parseOrNull(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lorg/json/JSONObject;

    iget-object p0, p0, Lio/appmetrica/analytics/impl/dd;->b:Lio/appmetrica/analytics/coreapi/internal/data/JsonParser;

    invoke-interface {p0, p1}, Lio/appmetrica/analytics/coreapi/internal/data/Parser;->parseOrNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final toModel(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [B

    iget-object p0, p0, Lio/appmetrica/analytics/impl/dd;->c:Lio/appmetrica/analytics/coreapi/internal/data/Converter;

    invoke-interface {p0, p1}, Lio/appmetrica/analytics/coreapi/internal/data/Converter;->toModel(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
