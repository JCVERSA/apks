.class public final Lio/appmetrica/analytics/impl/kc;
.super Lio/appmetrica/analytics/impl/tn;
.source "SourceFile"


# instance fields
.field public final b:Lio/appmetrica/analytics/AppMetricaConfig;


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/impl/ab;Lio/appmetrica/analytics/AppMetricaConfig;)V
    .locals 1
    .param p1    # Lio/appmetrica/analytics/impl/ab;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lio/appmetrica/analytics/AppMetricaConfig;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p2, Lio/appmetrica/analytics/AppMetricaConfig;->apiKey:Ljava/lang/String;

    invoke-direct {p0, p1}, Lio/appmetrica/analytics/impl/tn;-><init>(Lio/appmetrica/analytics/impl/ab;)V

    iput-object p2, p0, Lio/appmetrica/analytics/impl/kc;->b:Lio/appmetrica/analytics/AppMetricaConfig;

    return-void
.end method


# virtual methods
.method public final a()Lio/appmetrica/analytics/impl/bb;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lio/appmetrica/analytics/impl/tn;->a:Lio/appmetrica/analytics/impl/ab;

    invoke-interface {v0}, Lio/appmetrica/analytics/impl/ab;->a()Lio/appmetrica/analytics/impl/Za;

    move-result-object v0

    iget-object p0, p0, Lio/appmetrica/analytics/impl/kc;->b:Lio/appmetrica/analytics/AppMetricaConfig;

    invoke-interface {v0, p0}, Lio/appmetrica/analytics/impl/Za;->b(Lio/appmetrica/analytics/AppMetricaConfig;)Lio/appmetrica/analytics/impl/bb;

    move-result-object p0

    return-object p0
.end method
