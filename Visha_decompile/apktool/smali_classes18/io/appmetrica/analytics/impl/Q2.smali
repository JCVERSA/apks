.class public abstract Lio/appmetrica/analytics/impl/Q2;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lio/appmetrica/analytics/impl/qf;

.field public final b:Lio/appmetrica/analytics/impl/La;


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/impl/qf;Lio/appmetrica/analytics/impl/La;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/appmetrica/analytics/impl/Q2;->a:Lio/appmetrica/analytics/impl/qf;

    iput-object p2, p0, Lio/appmetrica/analytics/impl/Q2;->b:Lio/appmetrica/analytics/impl/La;

    return-void
.end method


# virtual methods
.method public final a()Lio/appmetrica/analytics/impl/La;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/appmetrica/analytics/impl/La;"
        }
    .end annotation

    .line 8
    iget-object p0, p0, Lio/appmetrica/analytics/impl/Q2;->b:Lio/appmetrica/analytics/impl/La;

    return-object p0
.end method

.method public final a(Lio/appmetrica/analytics/impl/a6;Lio/appmetrica/analytics/impl/P2;)Z
    .locals 1
    .param p1    # Lio/appmetrica/analytics/impl/a6;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lio/appmetrica/analytics/impl/P2;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/appmetrica/analytics/impl/a6;",
            "Lio/appmetrica/analytics/impl/P2;",
            ")Z"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lio/appmetrica/analytics/impl/Q2;->a:Lio/appmetrica/analytics/impl/qf;

    .line 2
    iget v0, p1, Lio/appmetrica/analytics/impl/a6;->d:I

    .line 3
    invoke-virtual {p0, v0}, Lio/appmetrica/analytics/impl/qf;->a(I)Lio/appmetrica/analytics/impl/c9;

    move-result-object p0

    .line 4
    check-cast p0, Lio/appmetrica/analytics/impl/b9;

    .line 5
    iget-object p0, p0, Lio/appmetrica/analytics/impl/b9;->a:Ljava/util/List;

    .line 6
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 7
    invoke-interface {p2, v0, p1}, Lio/appmetrica/analytics/impl/P2;->a(Ljava/lang/Object;Lio/appmetrica/analytics/impl/a6;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public final b()Lio/appmetrica/analytics/impl/qf;
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
        otherwise = 0x5
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/appmetrica/analytics/impl/qf;"
        }
    .end annotation

    iget-object p0, p0, Lio/appmetrica/analytics/impl/Q2;->a:Lio/appmetrica/analytics/impl/qf;

    return-object p0
.end method
