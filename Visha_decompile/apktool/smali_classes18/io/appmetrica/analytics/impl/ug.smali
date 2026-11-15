.class public final Lio/appmetrica/analytics/impl/ug;
.super Lio/appmetrica/analytics/impl/k5;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/impl/dm;)V
    .locals 0
    .param p1    # Lio/appmetrica/analytics/impl/dm;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0, p1}, Lio/appmetrica/analytics/impl/k5;-><init>(Lio/appmetrica/analytics/impl/dm;)V

    return-void
.end method


# virtual methods
.method public final a()Lio/appmetrica/analytics/impl/ml;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C::",
            "Lio/appmetrica/analytics/impl/La;",
            ">()",
            "Lio/appmetrica/analytics/impl/ml;"
        }
    .end annotation

    new-instance v0, Lio/appmetrica/analytics/impl/xg;

    iget-object p0, p0, Lio/appmetrica/analytics/impl/k5;->a:Lio/appmetrica/analytics/impl/dm;

    invoke-direct {v0, p0}, Lio/appmetrica/analytics/impl/xg;-><init>(Lio/appmetrica/analytics/impl/dm;)V

    return-object v0
.end method
