.class public final Lio/appmetrica/analytics/impl/F2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/coreapi/internal/data/ProtobufConverter;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lio/appmetrica/analytics/impl/Z1;)Lio/appmetrica/analytics/impl/H2;
    .locals 3
    .param p1    # Lio/appmetrica/analytics/impl/Z1;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 13
    iget p0, p1, Lio/appmetrica/analytics/impl/Z1;->a:I

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p0, v0, :cond_4

    const/4 v2, 0x2

    if-eq p0, v2, :cond_3

    const/4 v2, 0x3

    if-eq p0, v2, :cond_2

    const/4 v2, 0x4

    if-eq p0, v2, :cond_1

    const/4 v2, 0x5

    if-eq p0, v2, :cond_0

    move-object p0, v1

    goto :goto_0

    .line 14
    :cond_0
    sget-object p0, Lio/appmetrica/analytics/impl/G2;->e:Lio/appmetrica/analytics/impl/G2;

    goto :goto_0

    .line 15
    :cond_1
    sget-object p0, Lio/appmetrica/analytics/impl/G2;->d:Lio/appmetrica/analytics/impl/G2;

    goto :goto_0

    .line 16
    :cond_2
    sget-object p0, Lio/appmetrica/analytics/impl/G2;->c:Lio/appmetrica/analytics/impl/G2;

    goto :goto_0

    .line 17
    :cond_3
    sget-object p0, Lio/appmetrica/analytics/impl/G2;->b:Lio/appmetrica/analytics/impl/G2;

    goto :goto_0

    .line 18
    :cond_4
    sget-object p0, Lio/appmetrica/analytics/impl/G2;->a:Lio/appmetrica/analytics/impl/G2;

    .line 19
    :goto_0
    iget p1, p1, Lio/appmetrica/analytics/impl/Z1;->b:I

    if-eqz p1, :cond_6

    if-eq p1, v0, :cond_5

    goto :goto_1

    .line 20
    :cond_5
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_1

    .line 21
    :cond_6
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 22
    :goto_1
    new-instance p1, Lio/appmetrica/analytics/impl/H2;

    invoke-direct {p1, p0, v1}, Lio/appmetrica/analytics/impl/H2;-><init>(Lio/appmetrica/analytics/impl/G2;Ljava/lang/Boolean;)V

    return-object p1
.end method

.method public final a(Lio/appmetrica/analytics/impl/H2;)Lio/appmetrica/analytics/impl/Z1;
    .locals 4
    .param p1    # Lio/appmetrica/analytics/impl/H2;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    new-instance p0, Lio/appmetrica/analytics/impl/Z1;

    invoke-direct {p0}, Lio/appmetrica/analytics/impl/Z1;-><init>()V

    .line 2
    iget-object v0, p1, Lio/appmetrica/analytics/impl/H2;->a:Lio/appmetrica/analytics/impl/G2;

    const/4 v1, 0x1

    if-eqz v0, :cond_5

    .line 3
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-eqz v0, :cond_4

    const/4 v2, 0x2

    if-eq v0, v1, :cond_3

    const/4 v3, 0x3

    if-eq v0, v2, :cond_2

    const/4 v2, 0x4

    if-eq v0, v3, :cond_1

    if-eq v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x5

    .line 4
    iput v0, p0, Lio/appmetrica/analytics/impl/Z1;->a:I

    goto :goto_0

    .line 5
    :cond_1
    iput v2, p0, Lio/appmetrica/analytics/impl/Z1;->a:I

    goto :goto_0

    .line 6
    :cond_2
    iput v3, p0, Lio/appmetrica/analytics/impl/Z1;->a:I

    goto :goto_0

    .line 7
    :cond_3
    iput v2, p0, Lio/appmetrica/analytics/impl/Z1;->a:I

    goto :goto_0

    .line 8
    :cond_4
    iput v1, p0, Lio/appmetrica/analytics/impl/Z1;->a:I

    .line 9
    :cond_5
    :goto_0
    iget-object p1, p1, Lio/appmetrica/analytics/impl/H2;->b:Ljava/lang/Boolean;

    if-eqz p1, :cond_7

    .line 10
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 11
    iput v1, p0, Lio/appmetrica/analytics/impl/Z1;->b:I

    goto :goto_1

    :cond_6
    const/4 p1, 0x0

    .line 12
    iput p1, p0, Lio/appmetrica/analytics/impl/Z1;->b:I

    :cond_7
    :goto_1
    return-object p0
.end method

.method public final bridge synthetic fromModel(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    check-cast p1, Lio/appmetrica/analytics/impl/H2;

    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/impl/F2;->a(Lio/appmetrica/analytics/impl/H2;)Lio/appmetrica/analytics/impl/Z1;

    move-result-object p0

    return-object p0
.end method

.method public final bridge synthetic toModel(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    check-cast p1, Lio/appmetrica/analytics/impl/Z1;

    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/impl/F2;->a(Lio/appmetrica/analytics/impl/Z1;)Lio/appmetrica/analytics/impl/H2;

    move-result-object p0

    return-object p0
.end method
