.class public final Lio/appmetrica/analytics/impl/D7;
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
.method public final a(Ljava/math/BigDecimal;)Lio/appmetrica/analytics/impl/m8;
    .locals 2
    .param p1    # Ljava/math/BigDecimal;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 2
    sget-object p0, Lio/appmetrica/analytics/impl/F7;->a:Ljava/math/BigInteger;

    .line 3
    invoke-virtual {p1}, Ljava/math/BigDecimal;->scale()I

    move-result p0

    neg-int p0, p0

    .line 4
    invoke-virtual {p1}, Ljava/math/BigDecimal;->unscaledValue()Ljava/math/BigInteger;

    move-result-object p1

    .line 5
    :goto_0
    sget-object v0, Lio/appmetrica/analytics/impl/F7;->a:Ljava/math/BigInteger;

    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-gtz v0, :cond_1

    sget-object v0, Lio/appmetrica/analytics/impl/F7;->b:Ljava/math/BigInteger;

    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-gez v0, :cond_0

    goto :goto_1

    .line 6
    :cond_0
    invoke-virtual {p1}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v0

    .line 7
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p1, p0}, Labb;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p0

    .line 8
    new-instance p1, Lio/appmetrica/analytics/impl/E7;

    invoke-virtual {p0}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    invoke-virtual {p0}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    invoke-direct {p1, p0, v0, v1}, Lio/appmetrica/analytics/impl/E7;-><init>(IJ)V

    .line 9
    new-instance p0, Lio/appmetrica/analytics/impl/m8;

    invoke-direct {p0}, Lio/appmetrica/analytics/impl/m8;-><init>()V

    .line 10
    iget-wide v0, p1, Lio/appmetrica/analytics/impl/E7;->a:J

    .line 11
    iput-wide v0, p0, Lio/appmetrica/analytics/impl/m8;->a:J

    .line 12
    iget p1, p1, Lio/appmetrica/analytics/impl/E7;->b:I

    .line 13
    iput p1, p0, Lio/appmetrica/analytics/impl/m8;->b:I

    return-object p0

    .line 14
    :cond_1
    :goto_1
    sget-object v0, Ljava/math/BigInteger;->TEN:Ljava/math/BigInteger;

    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    add-int/lit8 p0, p0, 0x1

    goto :goto_0
.end method

.method public final a(Lio/appmetrica/analytics/impl/m8;)Ljava/math/BigDecimal;
    .locals 0
    .param p1    # Lio/appmetrica/analytics/impl/m8;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public final bridge synthetic fromModel(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    check-cast p1, Ljava/math/BigDecimal;

    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/impl/D7;->a(Ljava/math/BigDecimal;)Lio/appmetrica/analytics/impl/m8;

    move-result-object p0

    return-object p0
.end method

.method public final toModel(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    check-cast p1, Lio/appmetrica/analytics/impl/m8;

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method
