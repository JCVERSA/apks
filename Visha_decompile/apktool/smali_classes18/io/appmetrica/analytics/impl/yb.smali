.class public final Lio/appmetrica/analytics/impl/yb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/impl/Oa;


# instance fields
.field public final a:Lio/appmetrica/analytics/impl/Oa;


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/impl/Oa;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/appmetrica/analytics/impl/yb;->a:Lio/appmetrica/analytics/impl/Oa;

    return-void
.end method


# virtual methods
.method public final a(ILjava/lang/String;)Lio/appmetrica/analytics/impl/Oa;
    .locals 1

    .line 3
    iget-object v0, p0, Lio/appmetrica/analytics/impl/yb;->a:Lio/appmetrica/analytics/impl/Oa;

    invoke-interface {v0, p1, p2}, Lio/appmetrica/analytics/impl/Oa;->a(ILjava/lang/String;)Lio/appmetrica/analytics/impl/Oa;

    return-object p0
.end method

.method public final a(Ljava/lang/String;F)Lio/appmetrica/analytics/impl/Oa;
    .locals 1

    .line 5
    iget-object v0, p0, Lio/appmetrica/analytics/impl/yb;->a:Lio/appmetrica/analytics/impl/Oa;

    invoke-interface {v0, p1, p2}, Lio/appmetrica/analytics/impl/Oa;->a(Ljava/lang/String;F)Lio/appmetrica/analytics/impl/Oa;

    return-object p0
.end method

.method public final a(Ljava/lang/String;J)Lio/appmetrica/analytics/impl/Oa;
    .locals 1

    .line 2
    iget-object v0, p0, Lio/appmetrica/analytics/impl/yb;->a:Lio/appmetrica/analytics/impl/Oa;

    invoke-interface {v0, p1, p2, p3}, Lio/appmetrica/analytics/impl/Oa;->a(Ljava/lang/String;J)Lio/appmetrica/analytics/impl/Oa;

    return-object p0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)Lio/appmetrica/analytics/impl/Oa;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/appmetrica/analytics/impl/yb;->a:Lio/appmetrica/analytics/impl/Oa;

    invoke-interface {v0, p1, p2}, Lio/appmetrica/analytics/impl/Oa;->a(Ljava/lang/String;Ljava/lang/String;)Lio/appmetrica/analytics/impl/Oa;

    return-object p0
.end method

.method public final a(Ljava/lang/String;Z)Lio/appmetrica/analytics/impl/Oa;
    .locals 1

    .line 4
    iget-object v0, p0, Lio/appmetrica/analytics/impl/yb;->a:Lio/appmetrica/analytics/impl/Oa;

    invoke-interface {v0, p1, p2}, Lio/appmetrica/analytics/impl/Oa;->a(Ljava/lang/String;Z)Lio/appmetrica/analytics/impl/Oa;

    return-object p0
.end method

.method public final a()Ljava/util/Set;
    .locals 0

    .line 7
    iget-object p0, p0, Lio/appmetrica/analytics/impl/yb;->a:Lio/appmetrica/analytics/impl/Oa;

    invoke-interface {p0}, Lio/appmetrica/analytics/impl/Oa;->a()Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public final a(Ljava/lang/String;)Z
    .locals 0

    .line 6
    iget-object p0, p0, Lio/appmetrica/analytics/impl/yb;->a:Lio/appmetrica/analytics/impl/Oa;

    invoke-interface {p0, p1}, Lio/appmetrica/analytics/impl/Oa;->a(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public final b()V
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/impl/yb;->a:Lio/appmetrica/analytics/impl/Oa;

    invoke-interface {p0}, Lio/appmetrica/analytics/impl/Oa;->b()V

    return-void
.end method

.method public final getBoolean(Ljava/lang/String;Z)Z
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/impl/yb;->a:Lio/appmetrica/analytics/impl/Oa;

    invoke-interface {p0, p1, p2}, Lio/appmetrica/analytics/impl/Oa;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public final getInt(Ljava/lang/String;I)I
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/impl/yb;->a:Lio/appmetrica/analytics/impl/Oa;

    invoke-interface {p0, p1, p2}, Lio/appmetrica/analytics/impl/Oa;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public final getLong(Ljava/lang/String;J)J
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/impl/yb;->a:Lio/appmetrica/analytics/impl/Oa;

    invoke-interface {p0, p1, p2, p3}, Lio/appmetrica/analytics/impl/Oa;->getLong(Ljava/lang/String;J)J

    move-result-wide p0

    return-wide p0
.end method

.method public final getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/impl/yb;->a:Lio/appmetrica/analytics/impl/Oa;

    invoke-interface {p0, p1, p2}, Lio/appmetrica/analytics/impl/Oa;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final remove(Ljava/lang/String;)Lio/appmetrica/analytics/impl/Oa;
    .locals 1

    iget-object v0, p0, Lio/appmetrica/analytics/impl/yb;->a:Lio/appmetrica/analytics/impl/Oa;

    invoke-interface {v0, p1}, Lio/appmetrica/analytics/impl/Oa;->remove(Ljava/lang/String;)Lio/appmetrica/analytics/impl/Oa;

    return-object p0
.end method
