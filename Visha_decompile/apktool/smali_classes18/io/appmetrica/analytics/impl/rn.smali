.class public final Lio/appmetrica/analytics/impl/rn;
.super Lio/appmetrica/analytics/impl/va;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/impl/ii;)V
    .locals 0

    invoke-direct {p0, p1}, Lio/appmetrica/analytics/impl/va;-><init>(Lio/appmetrica/analytics/impl/ii;)V

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

    iget-object v0, v0, Lio/appmetrica/analytics/impl/ii;->a:Lio/appmetrica/analytics/impl/Wg;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lio/appmetrica/analytics/impl/va;->a:Lio/appmetrica/analytics/impl/ii;

    iget-object v0, v0, Lio/appmetrica/analytics/impl/ii;->b:Lio/appmetrica/analytics/impl/fh;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lio/appmetrica/analytics/impl/va;->a:Lio/appmetrica/analytics/impl/ii;

    iget-object v0, v0, Lio/appmetrica/analytics/impl/ii;->d:Lio/appmetrica/analytics/impl/ih;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p0, p0, Lio/appmetrica/analytics/impl/va;->a:Lio/appmetrica/analytics/impl/ii;

    iget-object p0, p0, Lio/appmetrica/analytics/impl/ii;->n:Lio/appmetrica/analytics/impl/Mg;

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method
