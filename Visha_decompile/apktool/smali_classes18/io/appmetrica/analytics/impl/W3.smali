.class public final Lio/appmetrica/analytics/impl/W3;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/util/Map;Lio/appmetrica/analytics/impl/Hl;Lio/appmetrica/analytics/impl/T3;)Z
    .locals 2

    new-instance v0, Lio/appmetrica/analytics/impl/L3;

    sget-object v1, Lio/appmetrica/analytics/impl/X7;->c:Lio/appmetrica/analytics/impl/X7;

    invoke-direct {v0, p0, v1}, Lio/appmetrica/analytics/impl/L3;-><init>(Ljava/util/Map;Lio/appmetrica/analytics/impl/X7;)V

    invoke-virtual {p2, v0}, Lio/appmetrica/analytics/impl/U7;->a(Lio/appmetrica/analytics/impl/Y7;)Lio/appmetrica/analytics/impl/Y7;

    move-result-object p0

    check-cast p0, Lio/appmetrica/analytics/impl/L3;

    iget-object p0, p0, Lio/appmetrica/analytics/impl/L3;->a:Ljava/util/Map;

    invoke-static {p0}, Lio/appmetrica/analytics/impl/In;->a(Ljava/util/Map;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    iget-object p1, p1, Lio/appmetrica/analytics/impl/Hl;->m:Ljava/lang/String;

    invoke-static {p1}, Lio/appmetrica/analytics/impl/im;->a(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method
