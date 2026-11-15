.class public final Lio/appmetrica/analytics/impl/We;
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
.method public final a(Lio/appmetrica/analytics/impl/ff;)Ljava/lang/Boolean;
    .locals 0

    sget-object p0, Lio/appmetrica/analytics/impl/ua;->E:Lio/appmetrica/analytics/impl/ua;

    invoke-virtual {p0}, Lio/appmetrica/analytics/impl/ua;->C()V

    iget-object p0, p0, Lio/appmetrica/analytics/impl/ua;->j:Lio/appmetrica/analytics/impl/if;

    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/impl/U7;->b(Lio/appmetrica/analytics/impl/Y7;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public final bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lio/appmetrica/analytics/impl/ff;

    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/impl/We;->a(Lio/appmetrica/analytics/impl/ff;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
