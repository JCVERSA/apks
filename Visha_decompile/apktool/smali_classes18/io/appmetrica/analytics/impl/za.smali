.class public final Lio/appmetrica/analytics/impl/za;
.super Lio/appmetrica/analytics/impl/M2;
.source "SourceFile"


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0, p1}, Lio/appmetrica/analytics/impl/M2;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;)Lio/appmetrica/analytics/impl/jn;
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/impl/za;->a(Ljava/lang/String;)Lio/appmetrica/analytics/impl/jn;

    move-result-object p0

    return-object p0
.end method

.method public final a(Ljava/lang/String;)Lio/appmetrica/analytics/impl/jn;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lio/appmetrica/analytics/impl/jn;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 3
    iget p0, p0, Lio/appmetrica/analytics/impl/M2;->a:I

    if-le v1, p0, :cond_0

    .line 4
    invoke-virtual {p1, v0, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 5
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    array-length p1, p1

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v0, v0

    sub-int v0, p1, v0

    move-object p1, p0

    .line 6
    :cond_0
    new-instance p0, Lio/appmetrica/analytics/impl/jn;

    new-instance v1, Lio/appmetrica/analytics/impl/u3;

    invoke-direct {v1, v0}, Lio/appmetrica/analytics/impl/u3;-><init>(I)V

    invoke-direct {p0, p1, v1}, Lio/appmetrica/analytics/impl/jn;-><init>(Ljava/lang/Object;Lio/appmetrica/analytics/impl/v3;)V

    return-object p0
.end method
