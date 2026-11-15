.class public final Lio/appmetrica/analytics/impl/ef;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/coreapi/internal/data/Converter;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Integer;)Lio/appmetrica/analytics/impl/X7;
    .locals 0
    .param p1    # Ljava/lang/Integer;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 6
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    const/4 p1, 0x1

    if-eq p0, p1, :cond_2

    const/4 p1, 0x2

    if-eq p0, p1, :cond_1

    const/4 p1, 0x3

    if-eq p0, p1, :cond_0

    .line 7
    sget-object p0, Lio/appmetrica/analytics/impl/X7;->b:Lio/appmetrica/analytics/impl/X7;

    return-object p0

    .line 8
    :cond_0
    sget-object p0, Lio/appmetrica/analytics/impl/X7;->d:Lio/appmetrica/analytics/impl/X7;

    return-object p0

    .line 9
    :cond_1
    sget-object p0, Lio/appmetrica/analytics/impl/X7;->e:Lio/appmetrica/analytics/impl/X7;

    return-object p0

    .line 10
    :cond_2
    sget-object p0, Lio/appmetrica/analytics/impl/X7;->c:Lio/appmetrica/analytics/impl/X7;

    return-object p0
.end method

.method public final a(Lio/appmetrica/analytics/impl/X7;)Ljava/lang/Integer;
    .locals 1
    .param p1    # Lio/appmetrica/analytics/impl/X7;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    const/4 p1, 0x1

    if-eq p0, p1, :cond_2

    const/4 p1, 0x3

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    if-eq p0, p1, :cond_0

    const/4 p0, 0x0

    .line 2
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    .line 3
    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    .line 4
    :cond_1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    .line 5
    :cond_2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

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

    check-cast p1, Lio/appmetrica/analytics/impl/X7;

    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/impl/ef;->a(Lio/appmetrica/analytics/impl/X7;)Ljava/lang/Integer;

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

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/impl/ef;->a(Ljava/lang/Integer;)Lio/appmetrica/analytics/impl/X7;

    move-result-object p0

    return-object p0
.end method
