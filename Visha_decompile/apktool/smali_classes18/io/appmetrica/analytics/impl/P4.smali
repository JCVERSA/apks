.class public final Lio/appmetrica/analytics/impl/P4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/impl/T7;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Landroid/content/Context;Lio/appmetrica/analytics/impl/f5;Lio/appmetrica/analytics/impl/G4;)Lio/appmetrica/analytics/impl/Na;
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lio/appmetrica/analytics/impl/f5;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lio/appmetrica/analytics/impl/G4;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p0, p1, p2, p3}, Lio/appmetrica/analytics/impl/P4;->b(Landroid/content/Context;Lio/appmetrica/analytics/impl/f5;Lio/appmetrica/analytics/impl/G4;)Lio/appmetrica/analytics/impl/O4;

    move-result-object p0

    return-object p0
.end method

.method public final b(Landroid/content/Context;Lio/appmetrica/analytics/impl/f5;Lio/appmetrica/analytics/impl/G4;)Lio/appmetrica/analytics/impl/O4;
    .locals 6
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lio/appmetrica/analytics/impl/f5;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lio/appmetrica/analytics/impl/G4;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    new-instance p0, Lio/appmetrica/analytics/impl/O4;

    sget-object v2, Lio/appmetrica/analytics/impl/il;->a:Lio/appmetrica/analytics/impl/jl;

    sget-object v0, Lio/appmetrica/analytics/impl/ua;->E:Lio/appmetrica/analytics/impl/ua;

    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/ua;->t()Lio/appmetrica/analytics/impl/ag;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lio/appmetrica/analytics/impl/O4;-><init>(Landroid/content/Context;Lio/appmetrica/analytics/impl/jl;Lio/appmetrica/analytics/impl/f5;Lio/appmetrica/analytics/impl/G4;Lio/appmetrica/analytics/impl/ag;)V

    return-object p0
.end method
