.class public final Lio/appmetrica/analytics/impl/sc;
.super Lio/appmetrica/analytics/impl/f;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lio/appmetrica/analytics/impl/qg;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lio/appmetrica/analytics/impl/f;-><init>(Landroid/content/Context;Lio/appmetrica/analytics/impl/qg;)V

    return-void
.end method


# virtual methods
.method public final b(Lio/appmetrica/analytics/impl/a6;Lio/appmetrica/analytics/impl/G4;)V
    .locals 2
    .param p1    # Lio/appmetrica/analytics/impl/a6;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lio/appmetrica/analytics/impl/G4;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p2, Lio/appmetrica/analytics/impl/G4;->b:Lio/appmetrica/analytics/impl/F4;

    iget-object v0, v0, Lio/appmetrica/analytics/impl/F4;->b:Ljava/lang/Boolean;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v0, v1}, Lio/appmetrica/analytics/coreutils/internal/WrapUtils;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    sget-object v1, Lio/appmetrica/analytics/impl/ua;->E:Lio/appmetrica/analytics/impl/ua;

    invoke-virtual {v1}, Lio/appmetrica/analytics/impl/ua;->l()Lio/appmetrica/analytics/impl/Pb;

    move-result-object v1

    invoke-interface {v1, v0}, Lio/appmetrica/analytics/impl/Sb;->a(Z)V

    iget-object v0, p2, Lio/appmetrica/analytics/impl/G4;->b:Lio/appmetrica/analytics/impl/F4;

    iget-object v0, v0, Lio/appmetrica/analytics/impl/F4;->c:Landroid/location/Location;

    invoke-interface {v1, v0}, Lio/appmetrica/analytics/impl/Sb;->a(Landroid/location/Location;)V

    iget-object v0, p2, Lio/appmetrica/analytics/impl/G4;->b:Lio/appmetrica/analytics/impl/F4;

    iget-object v0, v0, Lio/appmetrica/analytics/impl/F4;->n:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    sget-object v1, Lio/appmetrica/analytics/impl/ua;->E:Lio/appmetrica/analytics/impl/ua;

    invoke-virtual {v1}, Lio/appmetrica/analytics/impl/ua;->b()Lio/appmetrica/analytics/impl/Q;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {v1, v0}, Lio/appmetrica/analytics/impl/Q;->b(Z)V

    :cond_0
    iget-object p0, p0, Lio/appmetrica/analytics/impl/f;->b:Lio/appmetrica/analytics/impl/qg;

    invoke-virtual {p0, p1, p2}, Lio/appmetrica/analytics/impl/qg;->a(Lio/appmetrica/analytics/impl/a6;Lio/appmetrica/analytics/impl/G4;)V

    return-void
.end method
