.class public final Lio/appmetrica/analytics/impl/K3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/impl/M5;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/Map;)Ljava/lang/Boolean;
    .locals 2
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/Boolean;"
        }
    .end annotation

    sget-object p0, Lio/appmetrica/analytics/impl/ua;->E:Lio/appmetrica/analytics/impl/ua;

    invoke-virtual {p0}, Lio/appmetrica/analytics/impl/ua;->e()Lio/appmetrica/analytics/impl/T3;

    move-result-object p0

    new-instance v0, Lio/appmetrica/analytics/impl/L3;

    sget-object v1, Lio/appmetrica/analytics/impl/X7;->e:Lio/appmetrica/analytics/impl/X7;

    invoke-direct {v0, p1, v1}, Lio/appmetrica/analytics/impl/L3;-><init>(Ljava/util/Map;Lio/appmetrica/analytics/impl/X7;)V

    invoke-virtual {p0, v0}, Lio/appmetrica/analytics/impl/U7;->b(Lio/appmetrica/analytics/impl/Y7;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public final bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/util/Map;

    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/impl/K3;->a(Ljava/util/Map;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
