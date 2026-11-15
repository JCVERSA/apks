.class public final Lio/appmetrica/analytics/impl/Kg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/coreapi/internal/backport/Consumer;


# instance fields
.field public final a:Lio/appmetrica/analytics/impl/z0;

.field public final b:Lio/appmetrica/analytics/coreapi/internal/backport/Function;

.field public final synthetic c:Lio/appmetrica/analytics/impl/Lg;


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/impl/Lg;Lio/appmetrica/analytics/impl/z0;Lio/appmetrica/analytics/coreapi/internal/backport/Function;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/appmetrica/analytics/impl/z0;",
            "Lio/appmetrica/analytics/coreapi/internal/backport/Function<",
            "Ljava/lang/String;",
            "Lio/appmetrica/analytics/impl/a6;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lio/appmetrica/analytics/impl/Kg;->c:Lio/appmetrica/analytics/impl/Lg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lio/appmetrica/analytics/impl/Kg;->a:Lio/appmetrica/analytics/impl/z0;

    iput-object p3, p0, Lio/appmetrica/analytics/impl/Kg;->b:Lio/appmetrica/analytics/coreapi/internal/backport/Function;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 11
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lio/appmetrica/analytics/impl/Kg;->c:Lio/appmetrica/analytics/impl/Lg;

    new-instance v7, Lio/appmetrica/analytics/impl/h4;

    iget-object v1, p0, Lio/appmetrica/analytics/impl/Kg;->a:Lio/appmetrica/analytics/impl/z0;

    iget-object v2, v1, Lio/appmetrica/analytics/impl/z0;->a:Ljava/lang/String;

    iget-object v8, v1, Lio/appmetrica/analytics/impl/z0;->b:Ljava/lang/String;

    iget v9, v1, Lio/appmetrica/analytics/impl/z0;->d:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v1, p0, Lio/appmetrica/analytics/impl/Kg;->a:Lio/appmetrica/analytics/impl/z0;

    iget-object v10, v1, Lio/appmetrica/analytics/impl/z0;->e:Ljava/lang/String;

    iget-object v6, v1, Lio/appmetrica/analytics/impl/z0;->c:Lio/appmetrica/analytics/internal/CounterConfigurationReporterType;

    move-object v1, v7

    move-object v3, v8

    move-object v5, v10

    invoke-direct/range {v1 .. v6}, Lio/appmetrica/analytics/impl/h4;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Lio/appmetrica/analytics/internal/CounterConfigurationReporterType;)V

    iget-object p0, p0, Lio/appmetrica/analytics/impl/Kg;->b:Lio/appmetrica/analytics/coreapi/internal/backport/Function;

    invoke-interface {p0, p1}, Lio/appmetrica/analytics/coreapi/internal/backport/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/appmetrica/analytics/impl/a6;

    new-instance p1, Lio/appmetrica/analytics/impl/G4;

    new-instance v1, Lio/appmetrica/analytics/impl/Bl;

    invoke-direct {v1}, Lio/appmetrica/analytics/impl/Bl;-><init>()V

    new-instance v2, Lio/appmetrica/analytics/impl/F4;

    invoke-direct {v2}, Lio/appmetrica/analytics/impl/F4;-><init>()V

    const/4 v3, 0x0

    invoke-direct {p1, v1, v2, v3}, Lio/appmetrica/analytics/impl/G4;-><init>(Lio/appmetrica/analytics/impl/Bl;Lio/appmetrica/analytics/impl/F4;Landroid/os/ResultReceiver;)V

    iget-object v1, v0, Lio/appmetrica/analytics/impl/Lg;->c:Lio/appmetrica/analytics/impl/s4;

    invoke-virtual {v1, v7, p1}, Lio/appmetrica/analytics/impl/s4;->a(Lio/appmetrica/analytics/impl/h4;Lio/appmetrica/analytics/impl/G4;)Lio/appmetrica/analytics/impl/w4;

    move-result-object v1

    invoke-interface {v1, p0, p1}, Lio/appmetrica/analytics/impl/w4;->a(Lio/appmetrica/analytics/impl/a6;Lio/appmetrica/analytics/impl/G4;)V

    iget-object p0, v0, Lio/appmetrica/analytics/impl/Lg;->c:Lio/appmetrica/analytics/impl/s4;

    invoke-virtual {p0, v9, v8, v10}, Lio/appmetrica/analytics/impl/s4;->a(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final bridge synthetic consume(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/impl/Kg;->a(Ljava/lang/String;)V

    return-void
.end method
