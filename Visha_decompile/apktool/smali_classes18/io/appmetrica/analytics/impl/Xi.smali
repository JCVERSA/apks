.class public final Lio/appmetrica/analytics/impl/Xi;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/impl/w4;


# instance fields
.field public final a:Lio/appmetrica/analytics/impl/qg;


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/impl/qg;)V
    .locals 0
    .param p1    # Lio/appmetrica/analytics/impl/qg;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/appmetrica/analytics/impl/Xi;->a:Lio/appmetrica/analytics/impl/qg;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    .line 1
    return-void
.end method

.method public final a(Lio/appmetrica/analytics/impl/a6;Lio/appmetrica/analytics/impl/G4;)V
    .locals 0
    .param p1    # Lio/appmetrica/analytics/impl/a6;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lio/appmetrica/analytics/impl/G4;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 2
    iget-object p0, p0, Lio/appmetrica/analytics/impl/Xi;->a:Lio/appmetrica/analytics/impl/qg;

    if-eqz p0, :cond_0

    .line 3
    invoke-virtual {p0, p1, p2}, Lio/appmetrica/analytics/impl/qg;->a(Lio/appmetrica/analytics/impl/a6;Lio/appmetrica/analytics/impl/G4;)V

    :cond_0
    return-void
.end method
