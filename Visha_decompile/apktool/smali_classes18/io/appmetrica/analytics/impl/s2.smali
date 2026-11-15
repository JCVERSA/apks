.class public final Lio/appmetrica/analytics/impl/s2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/coreapi/internal/data/ProtobufConverter;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lio/appmetrica/analytics/impl/Ql;)Lio/appmetrica/analytics/billinginterface/internal/config/BillingConfig;
    .locals 1
    .param p1    # Lio/appmetrica/analytics/impl/Ql;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 4
    new-instance p0, Lio/appmetrica/analytics/billinginterface/internal/config/BillingConfig;

    iget v0, p1, Lio/appmetrica/analytics/impl/Ql;->a:I

    iget p1, p1, Lio/appmetrica/analytics/impl/Ql;->b:I

    invoke-direct {p0, v0, p1}, Lio/appmetrica/analytics/billinginterface/internal/config/BillingConfig;-><init>(II)V

    return-object p0
.end method

.method public final a(Lio/appmetrica/analytics/billinginterface/internal/config/BillingConfig;)Lio/appmetrica/analytics/impl/Ql;
    .locals 1
    .param p1    # Lio/appmetrica/analytics/billinginterface/internal/config/BillingConfig;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    new-instance p0, Lio/appmetrica/analytics/impl/Ql;

    invoke-direct {p0}, Lio/appmetrica/analytics/impl/Ql;-><init>()V

    .line 2
    iget v0, p1, Lio/appmetrica/analytics/billinginterface/internal/config/BillingConfig;->sendFrequencySeconds:I

    iput v0, p0, Lio/appmetrica/analytics/impl/Ql;->a:I

    .line 3
    iget p1, p1, Lio/appmetrica/analytics/billinginterface/internal/config/BillingConfig;->firstCollectingInappMaxAgeSeconds:I

    iput p1, p0, Lio/appmetrica/analytics/impl/Ql;->b:I

    return-object p0
.end method

.method public final bridge synthetic fromModel(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    check-cast p1, Lio/appmetrica/analytics/billinginterface/internal/config/BillingConfig;

    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/impl/s2;->a(Lio/appmetrica/analytics/billinginterface/internal/config/BillingConfig;)Lio/appmetrica/analytics/impl/Ql;

    move-result-object p0

    return-object p0
.end method

.method public final toModel(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    check-cast p1, Lio/appmetrica/analytics/impl/Ql;

    new-instance p0, Lio/appmetrica/analytics/billinginterface/internal/config/BillingConfig;

    iget v0, p1, Lio/appmetrica/analytics/impl/Ql;->a:I

    iget p1, p1, Lio/appmetrica/analytics/impl/Ql;->b:I

    invoke-direct {p0, v0, p1}, Lio/appmetrica/analytics/billinginterface/internal/config/BillingConfig;-><init>(II)V

    return-object p0
.end method
