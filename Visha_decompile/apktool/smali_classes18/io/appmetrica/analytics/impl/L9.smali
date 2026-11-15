.class public final Lio/appmetrica/analytics/impl/L9;
.super Lio/appmetrica/analytics/impl/ob;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/impl/ii;)V
    .locals 0

    invoke-direct {p0, p1}, Lio/appmetrica/analytics/impl/ob;-><init>(Lio/appmetrica/analytics/impl/ii;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/appmetrica/analytics/impl/Gg;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lio/appmetrica/analytics/impl/va;->a:Lio/appmetrica/analytics/impl/ii;

    iget-object v0, v0, Lio/appmetrica/analytics/impl/ii;->u:Lio/appmetrica/analytics/impl/O9;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-super {p0, p1}, Lio/appmetrica/analytics/impl/ob;->a(Ljava/util/List;)V

    return-void
.end method
