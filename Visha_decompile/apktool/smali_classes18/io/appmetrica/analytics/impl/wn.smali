.class public final Lio/appmetrica/analytics/impl/wn;
.super Lio/appmetrica/analytics/impl/R4;
.source "SourceFile"


# instance fields
.field public final b:Lio/appmetrica/analytics/impl/L6;


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/impl/O4;Lio/appmetrica/analytics/impl/L6;)V
    .locals 0
    .param p1    # Lio/appmetrica/analytics/impl/O4;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lio/appmetrica/analytics/impl/L6;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0, p1}, Lio/appmetrica/analytics/impl/R4;-><init>(Lio/appmetrica/analytics/impl/O4;)V

    iput-object p2, p0, Lio/appmetrica/analytics/impl/wn;->b:Lio/appmetrica/analytics/impl/L6;

    return-void
.end method


# virtual methods
.method public final a(Lio/appmetrica/analytics/impl/a6;Lio/appmetrica/analytics/impl/L4;)Z
    .locals 3
    .param p1    # Lio/appmetrica/analytics/impl/a6;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lio/appmetrica/analytics/impl/L4;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object p1, p2, Lio/appmetrica/analytics/impl/L4;->b:Lio/appmetrica/analytics/impl/O4;

    iget-object p1, p1, Lio/appmetrica/analytics/impl/O4;->d:Lio/appmetrica/analytics/impl/rh;

    iget-object p1, p1, Lio/appmetrica/analytics/impl/rh;->a:Lio/appmetrica/analytics/impl/F4;

    iget-object p0, p0, Lio/appmetrica/analytics/impl/wn;->b:Lio/appmetrica/analytics/impl/L6;

    iget-object p2, p1, Lio/appmetrica/analytics/impl/F4;->i:Ljava/lang/Boolean;

    invoke-virtual {p0, p2}, Lio/appmetrica/analytics/impl/L6;->a(Ljava/lang/Boolean;)V

    sget-object p0, Lio/appmetrica/analytics/impl/ua;->E:Lio/appmetrica/analytics/impl/ua;

    invoke-virtual {p0}, Lio/appmetrica/analytics/impl/ua;->l()Lio/appmetrica/analytics/impl/Pb;

    move-result-object p0

    iget-object p2, p1, Lio/appmetrica/analytics/impl/F4;->b:Ljava/lang/Boolean;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, p2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_0

    invoke-interface {p0, v1}, Lio/appmetrica/analytics/impl/Sb;->a(Z)V

    goto :goto_0

    :cond_0
    iget-object p2, p1, Lio/appmetrica/analytics/impl/F4;->b:Ljava/lang/Boolean;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v2, p2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p0, v0}, Lio/appmetrica/analytics/impl/Sb;->a(Z)V

    :cond_1
    :goto_0
    iget-object p2, p1, Lio/appmetrica/analytics/impl/F4;->c:Landroid/location/Location;

    invoke-interface {p0, p2}, Lio/appmetrica/analytics/impl/Sb;->a(Landroid/location/Location;)V

    iget-object p0, p1, Lio/appmetrica/analytics/impl/F4;->n:Ljava/lang/Boolean;

    sget-object p1, Lio/appmetrica/analytics/impl/ua;->E:Lio/appmetrica/analytics/impl/ua;

    invoke-virtual {p1}, Lio/appmetrica/analytics/impl/ua;->b()Lio/appmetrica/analytics/impl/Q;

    move-result-object p1

    if-nez p0, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    :goto_1
    invoke-virtual {p1, v1}, Lio/appmetrica/analytics/impl/Q;->b(Z)V

    return v0
.end method
