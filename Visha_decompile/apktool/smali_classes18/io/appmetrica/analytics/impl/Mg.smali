.class public final Lio/appmetrica/analytics/impl/Mg;
.super Lio/appmetrica/analytics/impl/Gg;
.source "SourceFile"


# instance fields
.field public final b:Lio/appmetrica/analytics/IReporter;


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/impl/m5;Lio/appmetrica/analytics/IReporter;)V
    .locals 0
    .param p1    # Lio/appmetrica/analytics/impl/m5;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lio/appmetrica/analytics/IReporter;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0, p1}, Lio/appmetrica/analytics/impl/Gg;-><init>(Lio/appmetrica/analytics/impl/m5;)V

    iput-object p2, p0, Lio/appmetrica/analytics/impl/Mg;->b:Lio/appmetrica/analytics/IReporter;

    return-void
.end method


# virtual methods
.method public final a(Lio/appmetrica/analytics/impl/a6;)Z
    .locals 3
    .param p1    # Lio/appmetrica/analytics/impl/a6;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget p1, p1, Lio/appmetrica/analytics/impl/a6;->d:I

    sget-object v0, Lio/appmetrica/analytics/impl/Mc;->c:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/appmetrica/analytics/impl/Mc;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p1, Lio/appmetrica/analytics/impl/Mc;->a:Ljava/lang/String;

    const-string v2, "type"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p1, Lio/appmetrica/analytics/impl/Mc;->b:Ljava/lang/String;

    const-string v1, "delivery_method"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lio/appmetrica/analytics/impl/Mg;->b:Lio/appmetrica/analytics/IReporter;

    const-string p1, "crash_saved"

    invoke-interface {p0, p1, v0}, Lio/appmetrica/analytics/IReporter;->reportEvent(Ljava/lang/String;Ljava/util/Map;)V

    const/4 p0, 0x0

    return p0
.end method
