.class public final Lio/appmetrica/analytics/impl/W5;
.super Lio/appmetrica/analytics/networktasks/internal/BaseRequestConfig$DataSource;
.source "SourceFile"


# instance fields
.field public final a:Lio/appmetrica/analytics/impl/Hl;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final b:Lio/appmetrica/analytics/coreapi/internal/servicecomponents/SdkEnvironmentProvider;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/impl/Hl;Lio/appmetrica/analytics/coreapi/internal/servicecomponents/SdkEnvironmentProvider;Lio/appmetrica/analytics/coreapi/internal/identifiers/PlatformIdentifiers;Ljava/lang/Object;)V
    .locals 4
    .param p1    # Lio/appmetrica/analytics/impl/Hl;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lio/appmetrica/analytics/coreapi/internal/servicecomponents/SdkEnvironmentProvider;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lio/appmetrica/analytics/coreapi/internal/identifiers/PlatformIdentifiers;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/appmetrica/analytics/impl/Hl;",
            "Lio/appmetrica/analytics/coreapi/internal/servicecomponents/SdkEnvironmentProvider;",
            "Lio/appmetrica/analytics/coreapi/internal/identifiers/PlatformIdentifiers;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    new-instance v0, Lio/appmetrica/analytics/coreapi/internal/identifiers/SdkIdentifiers;

    invoke-virtual {p1}, Lio/appmetrica/analytics/impl/Hl;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lio/appmetrica/analytics/impl/Hl;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lio/appmetrica/analytics/impl/Hl;->b()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lio/appmetrica/analytics/coreapi/internal/identifiers/SdkIdentifiers;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0, p2, p3, p4}, Lio/appmetrica/analytics/networktasks/internal/BaseRequestConfig$DataSource;-><init>(Lio/appmetrica/analytics/coreapi/internal/identifiers/SdkIdentifiers;Lio/appmetrica/analytics/coreapi/internal/servicecomponents/SdkEnvironmentProvider;Lio/appmetrica/analytics/coreapi/internal/identifiers/PlatformIdentifiers;Ljava/lang/Object;)V

    iput-object p1, p0, Lio/appmetrica/analytics/impl/W5;->a:Lio/appmetrica/analytics/impl/Hl;

    iput-object p2, p0, Lio/appmetrica/analytics/impl/W5;->b:Lio/appmetrica/analytics/coreapi/internal/servicecomponents/SdkEnvironmentProvider;

    return-void
.end method
