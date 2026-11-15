.class public final Lio/appmetrica/analytics/impl/r0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/impl/Cc;


# instance fields
.field public final synthetic a:Lio/appmetrica/analytics/impl/t0;

.field public final synthetic b:Lio/appmetrica/analytics/AppMetricaConfig;

.field public final synthetic c:Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/impl/t0;Lio/appmetrica/analytics/AppMetricaConfig;Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;)V
    .locals 0

    iput-object p1, p0, Lio/appmetrica/analytics/impl/r0;->a:Lio/appmetrica/analytics/impl/t0;

    iput-object p2, p0, Lio/appmetrica/analytics/impl/r0;->b:Lio/appmetrica/analytics/AppMetricaConfig;

    iput-object p3, p0, Lio/appmetrica/analytics/impl/r0;->c:Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lio/appmetrica/analytics/impl/nc;
    .locals 3

    iget-object v0, p0, Lio/appmetrica/analytics/impl/r0;->a:Lio/appmetrica/analytics/impl/t0;

    iget-object v1, v0, Lio/appmetrica/analytics/impl/t0;->g:Lio/appmetrica/analytics/impl/bi;

    iget-object v2, p0, Lio/appmetrica/analytics/impl/r0;->b:Lio/appmetrica/analytics/AppMetricaConfig;

    iget-object p0, p0, Lio/appmetrica/analytics/impl/r0;->c:Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;

    iget-object v0, v0, Lio/appmetrica/analytics/impl/t0;->i:Lio/appmetrica/analytics/impl/L7;

    iget-boolean v0, v0, Lio/appmetrica/analytics/impl/L7;->g:Z

    invoke-virtual {v1, v2, p0, v0}, Lio/appmetrica/analytics/impl/bi;->d(Lio/appmetrica/analytics/AppMetricaConfig;Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;Z)Lio/appmetrica/analytics/impl/nc;

    move-result-object p0

    return-object p0
.end method
