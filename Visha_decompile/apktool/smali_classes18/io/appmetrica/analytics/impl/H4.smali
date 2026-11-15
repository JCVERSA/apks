.class public final Lio/appmetrica/analytics/impl/H4;
.super Lio/appmetrica/analytics/impl/I4;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/impl/ii;)V
    .locals 0
    .param p1    # Lio/appmetrica/analytics/impl/ii;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0, p1}, Lio/appmetrica/analytics/impl/I4;-><init>(Lio/appmetrica/analytics/impl/ii;)V

    return-void
.end method


# virtual methods
.method public final a(Lio/appmetrica/analytics/impl/hb;Ljava/util/List;)V
    .locals 1
    .param p1    # Lio/appmetrica/analytics/impl/hb;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/appmetrica/analytics/impl/hb;",
            "Ljava/util/List<",
            "Lio/appmetrica/analytics/impl/Gg;",
            ">;)V"
        }
    .end annotation

    sget-object v0, Lio/appmetrica/analytics/impl/C9;->h:Ljava/util/EnumSet;

    invoke-virtual {v0, p1}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lio/appmetrica/analytics/impl/I4;->a:Lio/appmetrica/analytics/impl/ii;

    iget-object v0, v0, Lio/appmetrica/analytics/impl/ii;->s:Lio/appmetrica/analytics/impl/hd;

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    sget-object v0, Lio/appmetrica/analytics/impl/C9;->b:Ljava/util/EnumSet;

    invoke-virtual {v0, p1}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p0, p0, Lio/appmetrica/analytics/impl/I4;->a:Lio/appmetrica/analytics/impl/ii;

    iget-object p0, p0, Lio/appmetrica/analytics/impl/ii;->c:Lio/appmetrica/analytics/impl/hh;

    invoke-interface {p2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method
