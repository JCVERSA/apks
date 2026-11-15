.class public abstract Lio/appmetrica/analytics/impl/xd;
.super Lio/appmetrica/analytics/impl/Me;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/impl/Wk;


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/impl/Oa;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, v0}, Lio/appmetrica/analytics/impl/xd;-><init>(Lio/appmetrica/analytics/impl/Oa;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lio/appmetrica/analytics/impl/Oa;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lio/appmetrica/analytics/impl/Me;-><init>(Lio/appmetrica/analytics/impl/Oa;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final c(Ljava/lang/String;I)I
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/impl/xd;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 4
    iget-object p0, p0, Lio/appmetrica/analytics/impl/Me;->a:Lio/appmetrica/analytics/impl/Oa;

    invoke-interface {p0, p1, p2}, Lio/appmetrica/analytics/impl/Oa;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public final c(Ljava/lang/String;J)J
    .locals 0

    .line 5
    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/impl/xd;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 6
    iget-object p0, p0, Lio/appmetrica/analytics/impl/Me;->a:Lio/appmetrica/analytics/impl/Oa;

    invoke-interface {p0, p1, p2, p3}, Lio/appmetrica/analytics/impl/Oa;->getLong(Ljava/lang/String;J)J

    move-result-wide p0

    return-wide p0
.end method

.method public final c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/impl/xd;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2
    iget-object p0, p0, Lio/appmetrica/analytics/impl/Me;->a:Lio/appmetrica/analytics/impl/Oa;

    invoke-interface {p0, p1, p2}, Lio/appmetrica/analytics/impl/Oa;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final c(Ljava/lang/String;Z)Z
    .locals 0

    .line 7
    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/impl/xd;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 8
    iget-object p0, p0, Lio/appmetrica/analytics/impl/Me;->a:Lio/appmetrica/analytics/impl/Oa;

    invoke-interface {p0, p1, p2}, Lio/appmetrica/analytics/impl/Oa;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public final d(Ljava/lang/String;I)Lio/appmetrica/analytics/impl/Wk;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/impl/xd;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lio/appmetrica/analytics/impl/Me;->b(Ljava/lang/String;I)Lio/appmetrica/analytics/impl/Me;

    move-result-object p0

    check-cast p0, Lio/appmetrica/analytics/impl/Wk;

    return-object p0
.end method

.method public final d(Ljava/lang/String;J)Lio/appmetrica/analytics/impl/Wk;
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/impl/xd;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2, p3}, Lio/appmetrica/analytics/impl/Me;->b(Ljava/lang/String;J)Lio/appmetrica/analytics/impl/Me;

    move-result-object p0

    check-cast p0, Lio/appmetrica/analytics/impl/Wk;

    return-object p0
.end method

.method public final d(Ljava/lang/String;Ljava/lang/String;)Lio/appmetrica/analytics/impl/Wk;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/impl/xd;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lio/appmetrica/analytics/impl/Me;->b(Ljava/lang/String;Ljava/lang/String;)Lio/appmetrica/analytics/impl/Me;

    move-result-object p0

    check-cast p0, Lio/appmetrica/analytics/impl/Wk;

    return-object p0
.end method

.method public final d(Ljava/lang/String;Z)Lio/appmetrica/analytics/impl/Wk;
    .locals 0

    .line 4
    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/impl/xd;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lio/appmetrica/analytics/impl/Me;->b(Ljava/lang/String;Z)Lio/appmetrica/analytics/impl/Me;

    move-result-object p0

    check-cast p0, Lio/appmetrica/analytics/impl/Wk;

    return-object p0
.end method

.method public final e(Ljava/lang/String;)Z
    .locals 0

    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/impl/xd;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lio/appmetrica/analytics/impl/Me;->a:Lio/appmetrica/analytics/impl/Oa;

    invoke-interface {p0, p1}, Lio/appmetrica/analytics/impl/Oa;->a(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public abstract f(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public g(Ljava/lang/String;)Lio/appmetrica/analytics/impl/Wk;
    .locals 0

    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/impl/xd;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/impl/Me;->d(Ljava/lang/String;)Lio/appmetrica/analytics/impl/Me;

    move-result-object p0

    check-cast p0, Lio/appmetrica/analytics/impl/Wk;

    return-object p0
.end method
