.class public final Lio/appmetrica/analytics/impl/H3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/impl/yn;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;Lio/appmetrica/analytics/impl/L3;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/appmetrica/analytics/impl/L3;",
            ">;",
            "Lio/appmetrica/analytics/impl/L3;",
            ")",
            "Ljava/util/List<",
            "Lio/appmetrica/analytics/impl/L3;",
            ">;"
        }
    .end annotation

    instance-of p0, p1, Ljava/util/Collection;

    if-eqz p0, :cond_0

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/appmetrica/analytics/impl/L3;

    iget-object v0, v0, Lio/appmetrica/analytics/impl/L3;->b:Lio/appmetrica/analytics/impl/X7;

    iget-object v1, p2, Lio/appmetrica/analytics/impl/L3;->b:Lio/appmetrica/analytics/impl/X7;

    if-ne v0, v1, :cond_1

    sget-object p0, Lio/appmetrica/analytics/impl/X7;->c:Lio/appmetrica/analytics/impl/X7;

    if-ne v1, p0, :cond_4

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lio/appmetrica/analytics/impl/L3;

    iget-object v1, v1, Lio/appmetrica/analytics/impl/L3;->b:Lio/appmetrica/analytics/impl/X7;

    sget-object v2, Lio/appmetrica/analytics/impl/X7;->c:Lio/appmetrica/analytics/impl/X7;

    if-ne v1, v2, :cond_2

    goto :goto_0

    :cond_2
    invoke-interface {p0, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    invoke-static {p0, p2}, Li81;->K0(Ljava/util/Collection;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    goto :goto_2

    :cond_4
    const/4 p0, 0x0

    goto :goto_2

    :cond_5
    :goto_1
    invoke-static {p1, p2}, Li81;->K0(Ljava/util/Collection;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    :goto_2
    return-object p0
.end method

.method public final bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/util/List;

    check-cast p2, Lio/appmetrica/analytics/impl/L3;

    invoke-virtual {p0, p1, p2}, Lio/appmetrica/analytics/impl/H3;->a(Ljava/util/List;Lio/appmetrica/analytics/impl/L3;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method
