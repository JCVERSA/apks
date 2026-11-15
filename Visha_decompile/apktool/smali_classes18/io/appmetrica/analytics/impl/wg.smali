.class public final Lio/appmetrica/analytics/impl/wg;
.super Lio/appmetrica/analytics/impl/vg;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/impl/ii;)V
    .locals 0

    invoke-direct {p0, p1}, Lio/appmetrica/analytics/impl/vg;-><init>(Lio/appmetrica/analytics/impl/ii;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/appmetrica/analytics/impl/Gg;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lio/appmetrica/analytics/impl/va;->a:Lio/appmetrica/analytics/impl/ii;

    iget-object v0, v0, Lio/appmetrica/analytics/impl/ii;->i:Lio/appmetrica/analytics/impl/Tg;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lio/appmetrica/analytics/impl/va;->a:Lio/appmetrica/analytics/impl/ii;

    iget-object v0, v0, Lio/appmetrica/analytics/impl/ii;->j:Lio/appmetrica/analytics/impl/Ng;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-super {p0, p1}, Lio/appmetrica/analytics/impl/vg;->a(Ljava/util/List;)V

    return-void
.end method
