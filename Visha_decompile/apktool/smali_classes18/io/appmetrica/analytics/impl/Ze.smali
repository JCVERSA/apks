.class public final Lio/appmetrica/analytics/impl/Ze;
.super Lio/appmetrica/analytics/impl/W7;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lio/appmetrica/analytics/impl/W7;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lio/appmetrica/analytics/impl/ff;Lio/appmetrica/analytics/impl/ff;)Z
    .locals 3

    .line 2
    iget-boolean v0, p1, Lio/appmetrica/analytics/impl/ff;->c:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 3
    :cond_0
    iget-boolean v0, p2, Lio/appmetrica/analytics/impl/ff;->c:Z

    const/4 v2, 0x1

    if-nez v0, :cond_1

    return v2

    .line 4
    :cond_1
    iget-object v0, p0, Lio/appmetrica/analytics/impl/W7;->a:Lio/appmetrica/analytics/impl/Jc;

    .line 5
    iget-object p1, p1, Lio/appmetrica/analytics/impl/ff;->e:Lio/appmetrica/analytics/impl/X7;

    invoke-virtual {v0, p1}, Lio/appmetrica/analytics/impl/Jc;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    .line 6
    iget-object p0, p0, Lio/appmetrica/analytics/impl/W7;->a:Lio/appmetrica/analytics/impl/Jc;

    .line 7
    iget-object p2, p2, Lio/appmetrica/analytics/impl/ff;->e:Lio/appmetrica/analytics/impl/X7;

    invoke-virtual {p0, p2}, Lio/appmetrica/analytics/impl/Jc;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    if-le p1, p0, :cond_2

    move v1, v2

    :cond_2
    return v1
.end method

.method public final bridge synthetic a(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    .line 1
    check-cast p1, Lio/appmetrica/analytics/impl/ff;

    check-cast p2, Lio/appmetrica/analytics/impl/ff;

    invoke-virtual {p0, p1, p2}, Lio/appmetrica/analytics/impl/Ze;->a(Lio/appmetrica/analytics/impl/ff;Lio/appmetrica/analytics/impl/ff;)Z

    move-result p0

    return p0
.end method
