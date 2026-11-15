.class public final Lio/appmetrica/analytics/impl/Tk;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lio/appmetrica/analytics/impl/Ic;

.field public final b:Lio/appmetrica/analytics/impl/Hc;


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/impl/Ic;Lio/appmetrica/analytics/impl/Hc;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lio/appmetrica/analytics/impl/Tk;->a:Lio/appmetrica/analytics/impl/Ic;

    .line 4
    iput-object p2, p0, Lio/appmetrica/analytics/impl/Tk;->b:Lio/appmetrica/analytics/impl/Hc;

    return-void
.end method

.method public constructor <init>(Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Lio/appmetrica/analytics/impl/Ic;

    invoke-direct {v0, p2, p1}, Lio/appmetrica/analytics/impl/Ic;-><init>(Ljava/lang/String;Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;)V

    new-instance v1, Lio/appmetrica/analytics/impl/Hc;

    invoke-direct {v1, p2, p1}, Lio/appmetrica/analytics/impl/Hc;-><init>(Ljava/lang/String;Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;)V

    invoke-direct {p0, v0, v1}, Lio/appmetrica/analytics/impl/Tk;-><init>(Lio/appmetrica/analytics/impl/Ic;Lio/appmetrica/analytics/impl/Hc;)V

    return-void
.end method


# virtual methods
.method public final declared-synchronized a(Lio/appmetrica/analytics/impl/Lc;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Ljava/util/AbstractMap;->size()I

    move-result v0

    iget-object v1, p0, Lio/appmetrica/analytics/impl/Tk;->a:Lio/appmetrica/analytics/impl/Ic;

    iget-object v1, v1, Lio/appmetrica/analytics/impl/Ic;->c:Lio/appmetrica/analytics/impl/D4;

    iget v1, v1, Lio/appmetrica/analytics/impl/D4;->a:I

    if-lt v0, v1, :cond_1

    invoke-virtual {p1}, Ljava/util/AbstractMap;->size()I

    move-result v0

    if-ne v1, v0, :cond_0

    invoke-virtual {p1, p2}, Ljava/util/AbstractMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_3

    :cond_0
    iget-object p1, p0, Lio/appmetrica/analytics/impl/Tk;->a:Lio/appmetrica/analytics/impl/Ic;

    iget-object p3, p1, Lio/appmetrica/analytics/impl/Ic;->d:Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;

    const-string v0, "The %s has reached the limit of %d items. Item with key %s will be ignored"

    iget-object v1, p1, Lio/appmetrica/analytics/impl/Ic;->e:Ljava/lang/String;

    iget-object p1, p1, Lio/appmetrica/analytics/impl/Ic;->c:Lio/appmetrica/analytics/impl/D4;

    iget p1, p1, Lio/appmetrica/analytics/impl/D4;->a:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {v1, p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p3, v0, p1}, Lio/appmetrica/analytics/logger/common/BaseReleaseLogger;->warning(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    :cond_1
    :goto_0
    iget-object v0, p0, Lio/appmetrica/analytics/impl/Tk;->b:Lio/appmetrica/analytics/impl/Hc;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p1, Lio/appmetrica/analytics/impl/Lc;->a:I

    if-eqz p3, :cond_2

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    invoke-virtual {p1, p2}, Ljava/util/AbstractMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p1, p2}, Ljava/util/AbstractMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v0, v1

    goto :goto_1

    :cond_3
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    :cond_4
    :goto_1
    const/16 v1, 0x1194

    if-le v0, v1, :cond_5

    iget-object p1, p0, Lio/appmetrica/analytics/impl/Tk;->b:Lio/appmetrica/analytics/impl/Hc;

    iget-object p3, p1, Lio/appmetrica/analytics/impl/Hc;->b:Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;

    iget-object p1, p1, Lio/appmetrica/analytics/impl/Hc;->a:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {p1, v0, p2}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "The %s has reached the total size limit that equals %d symbols. Item with key %s will be ignored"

    invoke-virtual {p3, p2, p1}, Lio/appmetrica/analytics/logger/common/BaseReleaseLogger;->warning(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_2
    monitor-exit p0

    const/4 p0, 0x0

    return p0

    :cond_5
    :try_start_1
    invoke-virtual {p1, p2, p3}, Lio/appmetrica/analytics/impl/Lc;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    const/4 p0, 0x1

    return p0

    :goto_3
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public final b(Lio/appmetrica/analytics/impl/Lc;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    if-eqz p1, :cond_2

    iget-object v0, p0, Lio/appmetrica/analytics/impl/Tk;->a:Lio/appmetrica/analytics/impl/Ic;

    iget-object v0, v0, Lio/appmetrica/analytics/impl/Ic;->a:Lio/appmetrica/analytics/impl/ym;

    invoke-virtual {v0, p2}, Lio/appmetrica/analytics/impl/ym;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lio/appmetrica/analytics/impl/Tk;->a:Lio/appmetrica/analytics/impl/Ic;

    iget-object v0, v0, Lio/appmetrica/analytics/impl/Ic;->b:Lio/appmetrica/analytics/impl/ym;

    invoke-virtual {v0, p3}, Lio/appmetrica/analytics/impl/ym;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p2}, Ljava/util/AbstractMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1, p2}, Ljava/util/AbstractMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz p3, :cond_0

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lio/appmetrica/analytics/impl/Tk;->a(Lio/appmetrica/analytics/impl/Lc;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_1
    if-eqz p3, :cond_2

    invoke-virtual {p0, p1, p2, p3}, Lio/appmetrica/analytics/impl/Tk;->a(Lio/appmetrica/analytics/impl/Lc;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method
