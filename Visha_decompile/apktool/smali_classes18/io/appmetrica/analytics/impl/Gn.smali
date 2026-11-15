.class public final Lio/appmetrica/analytics/impl/Gn;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/impl/Ml;


# instance fields
.field public final a:Lio/appmetrica/analytics/coreutils/internal/services/UtilityServiceProvider;


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/coreutils/internal/services/UtilityServiceProvider;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/appmetrica/analytics/impl/Gn;->a:Lio/appmetrica/analytics/coreutils/internal/services/UtilityServiceProvider;

    return-void
.end method


# virtual methods
.method public final a(Lio/appmetrica/analytics/impl/Hl;)V
    .locals 5

    iget-object p0, p0, Lio/appmetrica/analytics/impl/Gn;->a:Lio/appmetrica/analytics/coreutils/internal/services/UtilityServiceProvider;

    new-instance v0, Lio/appmetrica/analytics/coreutils/internal/services/UtilityServiceConfiguration;

    iget-wide v1, p1, Lio/appmetrica/analytics/impl/Hl;->v:J

    iget-wide v3, p1, Lio/appmetrica/analytics/impl/Hl;->u:J

    invoke-direct {v0, v1, v2, v3, v4}, Lio/appmetrica/analytics/coreutils/internal/services/UtilityServiceConfiguration;-><init>(JJ)V

    invoke-virtual {p0, v0}, Lio/appmetrica/analytics/coreutils/internal/services/UtilityServiceProvider;->updateConfiguration(Lio/appmetrica/analytics/coreutils/internal/services/UtilityServiceConfiguration;)V

    return-void
.end method
