.class public final Lio/appmetrica/analytics/impl/r7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/coreapi/internal/data/Converter;


# instance fields
.field public final a:Lio/appmetrica/analytics/impl/de;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1
    invoke-direct {p0, v0, v1, v0}, Lio/appmetrica/analytics/impl/r7;-><init>(Lio/appmetrica/analytics/impl/de;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lio/appmetrica/analytics/impl/de;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lio/appmetrica/analytics/impl/r7;->a:Lio/appmetrica/analytics/impl/de;

    return-void
.end method

.method public synthetic constructor <init>(Lio/appmetrica/analytics/impl/de;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    .line 4
    new-instance p1, Lio/appmetrica/analytics/impl/de;

    invoke-direct {p1}, Lio/appmetrica/analytics/impl/de;-><init>()V

    .line 5
    :cond_0
    invoke-direct {p0, p1}, Lio/appmetrica/analytics/impl/r7;-><init>(Lio/appmetrica/analytics/impl/de;)V

    return-void
.end method


# virtual methods
.method public final a(Lio/appmetrica/analytics/impl/v7;)Lio/appmetrica/analytics/impl/q7;
    .locals 13

    if-nez p1, :cond_0

    .line 29
    new-instance p0, Lio/appmetrica/analytics/impl/q7;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    .line 30
    invoke-direct/range {v0 .. v10}, Lio/appmetrica/analytics/impl/q7;-><init>(Ljava/lang/Boolean;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;)V

    return-object p0

    .line 31
    :cond_0
    new-instance v0, Lio/appmetrica/analytics/impl/v7;

    invoke-direct {v0}, Lio/appmetrica/analytics/impl/v7;-><init>()V

    .line 32
    iget-object p0, p0, Lio/appmetrica/analytics/impl/r7;->a:Lio/appmetrica/analytics/impl/de;

    iget v1, p1, Lio/appmetrica/analytics/impl/v7;->a:I

    invoke-virtual {p0, v1}, Lio/appmetrica/analytics/impl/de;->a(I)Ljava/lang/Boolean;

    move-result-object v3

    .line 33
    iget-wide v1, p1, Lio/appmetrica/analytics/impl/v7;->c:D

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    iget-wide v4, v0, Lio/appmetrica/analytics/impl/v7;->c:D

    cmpg-double v1, v1, v4

    const/4 v2, 0x0

    const/4 v4, 0x1

    if-nez v1, :cond_1

    move v1, v4

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    const/4 v5, 0x0

    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    move-object p0, v5

    .line 34
    :goto_1
    iget-wide v6, p1, Lio/appmetrica/analytics/impl/v7;->b:D

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    iget-wide v8, v0, Lio/appmetrica/analytics/impl/v7;->b:D

    cmpg-double v6, v6, v8

    if-nez v6, :cond_3

    move v2, v4

    :cond_3
    if-nez v2, :cond_4

    move-object v4, v1

    goto :goto_2

    :cond_4
    move-object v4, v5

    .line 35
    :goto_2
    iget-wide v1, p1, Lio/appmetrica/analytics/impl/v7;->h:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    iget-wide v7, v0, Lio/appmetrica/analytics/impl/v7;->h:J

    cmp-long v1, v1, v7

    if-eqz v1, :cond_5

    move-object v10, v6

    goto :goto_3

    :cond_5
    move-object v10, v5

    .line 36
    :goto_3
    iget v1, p1, Lio/appmetrica/analytics/impl/v7;->f:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v6, v0, Lio/appmetrica/analytics/impl/v7;->f:I

    if-eq v1, v6, :cond_6

    move-object v8, v2

    goto :goto_4

    :cond_6
    move-object v8, v5

    .line 37
    :goto_4
    iget v1, p1, Lio/appmetrica/analytics/impl/v7;->e:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v6, v0, Lio/appmetrica/analytics/impl/v7;->e:I

    if-eq v1, v6, :cond_7

    move-object v7, v2

    goto :goto_5

    :cond_7
    move-object v7, v5

    .line 38
    :goto_5
    iget v1, p1, Lio/appmetrica/analytics/impl/v7;->g:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v6, v0, Lio/appmetrica/analytics/impl/v7;->g:I

    if-eq v1, v6, :cond_8

    move-object v9, v2

    goto :goto_6

    :cond_8
    move-object v9, v5

    .line 39
    :goto_6
    iget v1, p1, Lio/appmetrica/analytics/impl/v7;->d:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v6, v0, Lio/appmetrica/analytics/impl/v7;->d:I

    if-eq v1, v6, :cond_9

    move-object v6, v2

    goto :goto_7

    :cond_9
    move-object v6, v5

    .line 40
    :goto_7
    iget-object v1, p1, Lio/appmetrica/analytics/impl/v7;->i:Ljava/lang/String;

    iget-object v2, v0, Lio/appmetrica/analytics/impl/v7;->i:Ljava/lang/String;

    invoke-static {v1, v2}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    move-object v11, v1

    goto :goto_8

    :cond_a
    move-object v11, v5

    .line 41
    :goto_8
    iget-object p1, p1, Lio/appmetrica/analytics/impl/v7;->j:Ljava/lang/String;

    iget-object v0, v0, Lio/appmetrica/analytics/impl/v7;->j:Ljava/lang/String;

    invoke-static {p1, v0}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    move-object v12, p1

    goto :goto_9

    :cond_b
    move-object v12, v5

    .line 42
    :goto_9
    new-instance p1, Lio/appmetrica/analytics/impl/q7;

    move-object v2, p1

    move-object v5, p0

    invoke-direct/range {v2 .. v12}, Lio/appmetrica/analytics/impl/q7;-><init>(Ljava/lang/Boolean;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;)V

    return-object p1
.end method

.method public final a(Lio/appmetrica/analytics/impl/q7;)Lio/appmetrica/analytics/impl/v7;
    .locals 3

    .line 1
    new-instance v0, Lio/appmetrica/analytics/impl/v7;

    invoke-direct {v0}, Lio/appmetrica/analytics/impl/v7;-><init>()V

    .line 2
    iget-object v1, p1, Lio/appmetrica/analytics/impl/q7;->a:Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    .line 3
    iget-object p0, p0, Lio/appmetrica/analytics/impl/r7;->a:Lio/appmetrica/analytics/impl/de;

    invoke-virtual {p0, v1}, Lio/appmetrica/analytics/impl/de;->a(Ljava/lang/Boolean;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    iput p0, v0, Lio/appmetrica/analytics/impl/v7;->a:I

    .line 4
    :cond_0
    iget-object p0, p1, Lio/appmetrica/analytics/impl/q7;->c:Ljava/lang/Double;

    if-eqz p0, :cond_1

    .line 5
    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v1

    .line 6
    iput-wide v1, v0, Lio/appmetrica/analytics/impl/v7;->c:D

    .line 7
    :cond_1
    iget-object p0, p1, Lio/appmetrica/analytics/impl/q7;->b:Ljava/lang/Double;

    if-eqz p0, :cond_2

    .line 8
    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v1

    .line 9
    iput-wide v1, v0, Lio/appmetrica/analytics/impl/v7;->b:D

    .line 10
    :cond_2
    iget-object p0, p1, Lio/appmetrica/analytics/impl/q7;->h:Ljava/lang/Long;

    if-eqz p0, :cond_3

    .line 11
    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide v1

    .line 12
    iput-wide v1, v0, Lio/appmetrica/analytics/impl/v7;->h:J

    .line 13
    :cond_3
    iget-object p0, p1, Lio/appmetrica/analytics/impl/q7;->f:Ljava/lang/Integer;

    if-eqz p0, :cond_4

    .line 14
    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    .line 15
    iput p0, v0, Lio/appmetrica/analytics/impl/v7;->f:I

    .line 16
    :cond_4
    iget-object p0, p1, Lio/appmetrica/analytics/impl/q7;->e:Ljava/lang/Integer;

    if-eqz p0, :cond_5

    .line 17
    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    .line 18
    iput p0, v0, Lio/appmetrica/analytics/impl/v7;->e:I

    .line 19
    :cond_5
    iget-object p0, p1, Lio/appmetrica/analytics/impl/q7;->g:Ljava/lang/Integer;

    if-eqz p0, :cond_6

    .line 20
    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    .line 21
    iput p0, v0, Lio/appmetrica/analytics/impl/v7;->g:I

    .line 22
    :cond_6
    iget-object p0, p1, Lio/appmetrica/analytics/impl/q7;->d:Ljava/lang/Integer;

    if-eqz p0, :cond_7

    .line 23
    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    .line 24
    iput p0, v0, Lio/appmetrica/analytics/impl/v7;->d:I

    .line 25
    :cond_7
    iget-object p0, p1, Lio/appmetrica/analytics/impl/q7;->i:Ljava/lang/String;

    if-eqz p0, :cond_8

    .line 26
    iput-object p0, v0, Lio/appmetrica/analytics/impl/v7;->i:Ljava/lang/String;

    .line 27
    :cond_8
    iget-object p0, p1, Lio/appmetrica/analytics/impl/q7;->j:Ljava/lang/String;

    if-eqz p0, :cond_9

    .line 28
    iput-object p0, v0, Lio/appmetrica/analytics/impl/v7;->j:Ljava/lang/String;

    :cond_9
    return-object v0
.end method

.method public final bridge synthetic fromModel(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lio/appmetrica/analytics/impl/q7;

    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/impl/r7;->a(Lio/appmetrica/analytics/impl/q7;)Lio/appmetrica/analytics/impl/v7;

    move-result-object p0

    return-object p0
.end method

.method public final bridge synthetic toModel(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lio/appmetrica/analytics/impl/v7;

    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/impl/r7;->a(Lio/appmetrica/analytics/impl/v7;)Lio/appmetrica/analytics/impl/q7;

    move-result-object p0

    return-object p0
.end method
