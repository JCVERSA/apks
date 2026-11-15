.class public final Lio/appmetrica/analytics/impl/B;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lio/appmetrica/analytics/AdRevenue;

.field public final b:Z

.field public final c:Lio/appmetrica/analytics/impl/ym;

.field public final d:Lio/appmetrica/analytics/impl/wm;


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/AdRevenue;ZLio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/appmetrica/analytics/impl/B;->a:Lio/appmetrica/analytics/AdRevenue;

    iput-boolean p2, p0, Lio/appmetrica/analytics/impl/B;->b:Z

    new-instance p1, Lio/appmetrica/analytics/impl/ym;

    const/16 p2, 0x64

    const-string v0, "ad revenue strings"

    invoke-direct {p1, p2, v0, p3}, Lio/appmetrica/analytics/impl/ym;-><init>(ILjava/lang/String;Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;)V

    iput-object p1, p0, Lio/appmetrica/analytics/impl/B;->c:Lio/appmetrica/analytics/impl/ym;

    new-instance p1, Lio/appmetrica/analytics/impl/wm;

    const/16 p2, 0x7800

    const-string v0, "ad revenue payload"

    invoke-direct {p1, p2, v0, p3}, Lio/appmetrica/analytics/impl/wm;-><init>(ILjava/lang/String;Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;)V

    iput-object p1, p0, Lio/appmetrica/analytics/impl/B;->d:Lio/appmetrica/analytics/impl/wm;

    return-void
.end method


# virtual methods
.method public final a()Lkotlin/Pair;
    .locals 10

    new-instance v0, Lio/appmetrica/analytics/impl/t;

    invoke-direct {v0}, Lio/appmetrica/analytics/impl/t;-><init>()V

    iget-object v1, p0, Lio/appmetrica/analytics/impl/B;->a:Lio/appmetrica/analytics/AdRevenue;

    iget-object v1, v1, Lio/appmetrica/analytics/AdRevenue;->adNetwork:Ljava/lang/String;

    new-instance v2, Lio/appmetrica/analytics/impl/u;

    invoke-direct {v2, v0}, Lio/appmetrica/analytics/impl/u;-><init>(Lio/appmetrica/analytics/impl/t;)V

    invoke-static {v1, v2}, Labb;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v3

    iget-object v1, p0, Lio/appmetrica/analytics/impl/B;->a:Lio/appmetrica/analytics/AdRevenue;

    iget-object v1, v1, Lio/appmetrica/analytics/AdRevenue;->adPlacementId:Ljava/lang/String;

    new-instance v2, Lio/appmetrica/analytics/impl/v;

    invoke-direct {v2, v0}, Lio/appmetrica/analytics/impl/v;-><init>(Lio/appmetrica/analytics/impl/t;)V

    invoke-static {v1, v2}, Labb;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v4

    iget-object v1, p0, Lio/appmetrica/analytics/impl/B;->a:Lio/appmetrica/analytics/AdRevenue;

    iget-object v1, v1, Lio/appmetrica/analytics/AdRevenue;->adPlacementName:Ljava/lang/String;

    new-instance v2, Lio/appmetrica/analytics/impl/w;

    invoke-direct {v2, v0}, Lio/appmetrica/analytics/impl/w;-><init>(Lio/appmetrica/analytics/impl/t;)V

    invoke-static {v1, v2}, Labb;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v5

    iget-object v1, p0, Lio/appmetrica/analytics/impl/B;->a:Lio/appmetrica/analytics/AdRevenue;

    iget-object v1, v1, Lio/appmetrica/analytics/AdRevenue;->adUnitId:Ljava/lang/String;

    new-instance v2, Lio/appmetrica/analytics/impl/x;

    invoke-direct {v2, v0}, Lio/appmetrica/analytics/impl/x;-><init>(Lio/appmetrica/analytics/impl/t;)V

    invoke-static {v1, v2}, Labb;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v6

    iget-object v1, p0, Lio/appmetrica/analytics/impl/B;->a:Lio/appmetrica/analytics/AdRevenue;

    iget-object v1, v1, Lio/appmetrica/analytics/AdRevenue;->adUnitName:Ljava/lang/String;

    new-instance v2, Lio/appmetrica/analytics/impl/y;

    invoke-direct {v2, v0}, Lio/appmetrica/analytics/impl/y;-><init>(Lio/appmetrica/analytics/impl/t;)V

    invoke-static {v1, v2}, Labb;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v7

    iget-object v1, p0, Lio/appmetrica/analytics/impl/B;->a:Lio/appmetrica/analytics/AdRevenue;

    iget-object v1, v1, Lio/appmetrica/analytics/AdRevenue;->precision:Ljava/lang/String;

    new-instance v2, Lio/appmetrica/analytics/impl/z;

    invoke-direct {v2, v0}, Lio/appmetrica/analytics/impl/z;-><init>(Lio/appmetrica/analytics/impl/t;)V

    invoke-static {v1, v2}, Labb;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v8

    iget-object v1, p0, Lio/appmetrica/analytics/impl/B;->a:Lio/appmetrica/analytics/AdRevenue;

    iget-object v1, v1, Lio/appmetrica/analytics/AdRevenue;->currency:Ljava/util/Currency;

    invoke-virtual {v1}, Ljava/util/Currency;->getCurrencyCode()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lio/appmetrica/analytics/impl/A;

    invoke-direct {v2, v0}, Lio/appmetrica/analytics/impl/A;-><init>(Lio/appmetrica/analytics/impl/t;)V

    invoke-static {v1, v2}, Labb;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v9

    filled-new-array/range {v3 .. v9}, [Lkotlin/Pair;

    move-result-object v1

    invoke-static {v1}, Ly71;->n([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lkotlin/Pair;

    invoke-virtual {v4}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Le74;

    iget-object v6, p0, Lio/appmetrica/analytics/impl/B;->c:Lio/appmetrica/analytics/impl/ym;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v6, v5}, Lio/appmetrica/analytics/impl/ym;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5}, Lio/appmetrica/analytics/coreutils/internal/StringUtils;->stringToBytesForProtobuf(Ljava/lang/String;)[B

    move-result-object v5

    invoke-static {v6}, Lio/appmetrica/analytics/coreutils/internal/StringUtils;->stringToBytesForProtobuf(Ljava/lang/String;)[B

    move-result-object v6

    invoke-interface {v4, v6}, Le74;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    array-length v4, v5

    array-length v5, v6

    sub-int/2addr v4, v5

    add-int/2addr v3, v4

    goto :goto_0

    :cond_0
    sget-object v1, Lio/appmetrica/analytics/impl/C;->a:Ljava/util/Map;

    iget-object v4, p0, Lio/appmetrica/analytics/impl/B;->a:Lio/appmetrica/analytics/AdRevenue;

    iget-object v4, v4, Lio/appmetrica/analytics/AdRevenue;->adType:Lio/appmetrica/analytics/AdType;

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    :cond_1
    iput v2, v0, Lio/appmetrica/analytics/impl/t;->d:I

    new-instance v1, Lio/appmetrica/analytics/impl/s;

    invoke-direct {v1}, Lio/appmetrica/analytics/impl/s;-><init>()V

    iget-object v2, p0, Lio/appmetrica/analytics/impl/B;->a:Lio/appmetrica/analytics/AdRevenue;

    iget-object v2, v2, Lio/appmetrica/analytics/AdRevenue;->adRevenue:Ljava/math/BigDecimal;

    sget-object v4, Lio/appmetrica/analytics/impl/F7;->a:Ljava/math/BigInteger;

    invoke-virtual {v2}, Ljava/math/BigDecimal;->scale()I

    move-result v4

    neg-int v4, v4

    invoke-virtual {v2}, Ljava/math/BigDecimal;->unscaledValue()Ljava/math/BigInteger;

    move-result-object v2

    :goto_1
    sget-object v5, Lio/appmetrica/analytics/impl/F7;->a:Ljava/math/BigInteger;

    invoke-virtual {v2, v5}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v5

    if-gtz v5, :cond_5

    sget-object v5, Lio/appmetrica/analytics/impl/F7;->b:Ljava/math/BigInteger;

    invoke-virtual {v2, v5}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v5

    if-gez v5, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v2}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v2, v4}, Labb;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    invoke-virtual {v2}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->longValue()J

    move-result-wide v4

    invoke-virtual {v2}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    iput-wide v4, v1, Lio/appmetrica/analytics/impl/s;->a:J

    iput v2, v1, Lio/appmetrica/analytics/impl/s;->b:I

    iput-object v1, v0, Lio/appmetrica/analytics/impl/t;->b:Lio/appmetrica/analytics/impl/s;

    iget-object v1, p0, Lio/appmetrica/analytics/impl/B;->a:Lio/appmetrica/analytics/AdRevenue;

    iget-object v1, v1, Lio/appmetrica/analytics/AdRevenue;->payload:Ljava/util/Map;

    if-eqz v1, :cond_3

    invoke-static {v1}, Lio/appmetrica/analytics/impl/mb;->b(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lio/appmetrica/analytics/impl/B;->d:Lio/appmetrica/analytics/impl/wm;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2, v1}, Lio/appmetrica/analytics/impl/wm;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lio/appmetrica/analytics/coreutils/internal/StringUtils;->stringToBytesForProtobuf(Ljava/lang/String;)[B

    move-result-object v2

    iput-object v2, v0, Lio/appmetrica/analytics/impl/t;->k:[B

    invoke-static {v1}, Lio/appmetrica/analytics/coreutils/internal/StringUtils;->stringToBytesForProtobuf(Ljava/lang/String;)[B

    move-result-object v1

    array-length v1, v1

    array-length v2, v2

    sub-int/2addr v1, v2

    add-int/2addr v3, v1

    :cond_3
    iget-boolean p0, p0, Lio/appmetrica/analytics/impl/B;->b:Z

    if-eqz p0, :cond_4

    const-string p0, "autocollected"

    sget-object v1, Lqv0;->b:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    iput-object p0, v0, Lio/appmetrica/analytics/impl/t;->a:[B

    :cond_4
    invoke-static {v0}, Lio/appmetrica/analytics/protobuf/nano/MessageNano;->toByteArray(Lio/appmetrica/analytics/protobuf/nano/MessageNano;)[B

    move-result-object p0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p0, v0}, Labb;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p0

    return-object p0

    :cond_5
    :goto_2
    sget-object v5, Ljava/math/BigInteger;->TEN:Ljava/math/BigInteger;

    invoke-virtual {v2, v5}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    add-int/lit8 v4, v4, 0x1

    goto :goto_1
.end method
