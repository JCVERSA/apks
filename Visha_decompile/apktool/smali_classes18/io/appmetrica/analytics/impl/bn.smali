.class public Lio/appmetrica/analytics/impl/bn;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/impl/Pn;


# instance fields
.field public final a:Lio/appmetrica/analytics/impl/Pn;


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/impl/Pn;)V
    .locals 0
    .param p1    # Lio/appmetrica/analytics/impl/Pn;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/appmetrica/analytics/impl/Pn;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/appmetrica/analytics/impl/bn;->a:Lio/appmetrica/analytics/impl/Pn;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Lio/appmetrica/analytics/impl/Nn;
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lio/appmetrica/analytics/impl/Nn;"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lio/appmetrica/analytics/impl/bn;->a:Lio/appmetrica/analytics/impl/Pn;

    invoke-interface {p0, p1}, Lio/appmetrica/analytics/impl/Pn;->a(Ljava/lang/Object;)Lio/appmetrica/analytics/impl/Nn;

    move-result-object p0

    .line 2
    iget-boolean p1, p0, Lio/appmetrica/analytics/impl/Nn;->a:Z

    if-eqz p1, :cond_0

    return-object p0

    .line 3
    :cond_0
    new-instance p1, Lio/appmetrica/analytics/ValidationException;

    .line 4
    iget-object p0, p0, Lio/appmetrica/analytics/impl/Nn;->b:Ljava/lang/String;

    .line 5
    invoke-direct {p1, p0}, Lio/appmetrica/analytics/ValidationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final a()Lio/appmetrica/analytics/impl/Pn;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/appmetrica/analytics/impl/Pn;"
        }
    .end annotation

    .line 6
    iget-object p0, p0, Lio/appmetrica/analytics/impl/bn;->a:Lio/appmetrica/analytics/impl/Pn;

    return-object p0
.end method
