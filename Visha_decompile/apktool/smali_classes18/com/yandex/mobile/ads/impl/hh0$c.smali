.class public final Lcom/yandex/mobile/ads/impl/hh0$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/impl/nh0$c;
.implements Lc74;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/mobile/ads/impl/hh0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/yandex/mobile/ads/impl/nh0$c;",
        "Lc74;"
    }
.end annotation


# instance fields
.field private final b:Lcom/yandex/mobile/ads/impl/nh0;

.field final synthetic c:Lcom/yandex/mobile/ads/impl/hh0;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/hh0;Lcom/yandex/mobile/ads/impl/nh0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yandex/mobile/ads/impl/nh0;",
            ")V"
        }
    .end annotation

    const-string v0, "reader"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/hh0$c;->c:Lcom/yandex/mobile/ads/impl/hh0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/hh0$c;->b:Lcom/yandex/mobile/ads/impl/nh0;

    return-void
.end method


# virtual methods
.method public final a(IILokio/BufferedSource;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 32
    const-string v0, "source"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/hh0$c;->c:Lcom/yandex/mobile/ads/impl/hh0;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/yandex/mobile/ads/impl/hh0;->b(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 34
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/hh0$c;->c:Lcom/yandex/mobile/ads/impl/hh0;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/yandex/mobile/ads/impl/hh0;->a(IILokio/BufferedSource;Z)V

    return-void

    .line 35
    :cond_0
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/hh0$c;->c:Lcom/yandex/mobile/ads/impl/hh0;

    invoke-virtual {v0, p1}, Lcom/yandex/mobile/ads/impl/hh0;->a(I)Lcom/yandex/mobile/ads/impl/oh0;

    move-result-object v0

    if-nez v0, :cond_1

    .line 36
    iget-object p4, p0, Lcom/yandex/mobile/ads/impl/hh0$c;->c:Lcom/yandex/mobile/ads/impl/hh0;

    sget-object v0, Lcom/yandex/mobile/ads/impl/t50;->e:Lcom/yandex/mobile/ads/impl/t50;

    invoke-virtual {p4, p1, v0}, Lcom/yandex/mobile/ads/impl/hh0;->c(ILcom/yandex/mobile/ads/impl/t50;)V

    .line 37
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/hh0$c;->c:Lcom/yandex/mobile/ads/impl/hh0;

    int-to-long p1, p2

    invoke-virtual {p0, p1, p2}, Lcom/yandex/mobile/ads/impl/hh0;->b(J)V

    .line 38
    invoke-interface {p3, p1, p2}, Lokio/BufferedSource;->skip(J)V

    return-void

    .line 39
    :cond_1
    invoke-virtual {v0, p3, p2}, Lcom/yandex/mobile/ads/impl/oh0;->a(Lokio/BufferedSource;I)V

    if-eqz p4, :cond_2

    .line 40
    sget-object p0, Lcom/yandex/mobile/ads/impl/g92;->b:Lcom/yandex/mobile/ads/impl/qf0;

    const/4 p1, 0x1

    invoke-virtual {v0, p0, p1}, Lcom/yandex/mobile/ads/impl/oh0;->a(Lcom/yandex/mobile/ads/impl/qf0;Z)V

    :cond_2
    return-void
.end method

.method public final a(IIZ)V
    .locals 2

    if-eqz p3, :cond_3

    .line 73
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/hh0$c;->c:Lcom/yandex/mobile/ads/impl/hh0;

    monitor-enter p0

    const/4 p2, 0x1

    const-wide/16 v0, 0x1

    if-eq p1, p2, :cond_2

    const/4 p2, 0x2

    if-eq p1, p2, :cond_1

    const/4 p2, 0x3

    if-eq p1, p2, :cond_0

    goto :goto_0

    .line 74
    :cond_0
    :try_start_0
    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/hh0;->a(Lcom/yandex/mobile/ads/impl/hh0;)J

    move-result-wide p1

    add-long/2addr p1, v0

    invoke-static {p0, p1, p2}, Lcom/yandex/mobile/ads/impl/hh0;->a(Lcom/yandex/mobile/ads/impl/hh0;J)V

    .line 75
    const-string p1, "null cannot be cast to non-null type java.lang.Object"

    invoke-static {p0, p1}, Ly45;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 76
    :goto_0
    sget-object p1, Lzfb;->a:Lzfb;

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    .line 77
    :cond_1
    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/hh0;->c(Lcom/yandex/mobile/ads/impl/hh0;)J

    move-result-wide p1

    add-long/2addr p1, v0

    invoke-static {p0, p1, p2}, Lcom/yandex/mobile/ads/impl/hh0;->b(Lcom/yandex/mobile/ads/impl/hh0;J)V

    goto :goto_1

    .line 78
    :cond_2
    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/hh0;->e(Lcom/yandex/mobile/ads/impl/hh0;)J

    move-result-wide p1

    add-long/2addr p1, v0

    invoke-static {p0, p1, p2}, Lcom/yandex/mobile/ads/impl/hh0;->d(Lcom/yandex/mobile/ads/impl/hh0;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 79
    :goto_1
    monitor-exit p0

    goto :goto_3

    :goto_2
    monitor-exit p0

    throw p1

    .line 80
    :cond_3
    iget-object p3, p0, Lcom/yandex/mobile/ads/impl/hh0$c;->c:Lcom/yandex/mobile/ads/impl/hh0;

    invoke-static {p3}, Lcom/yandex/mobile/ads/impl/hh0;->i(Lcom/yandex/mobile/ads/impl/hh0;)Lcom/yandex/mobile/ads/impl/k42;

    move-result-object p3

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/hh0$c;->c:Lcom/yandex/mobile/ads/impl/hh0;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/hh0;->c()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " ping"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/hh0$c;->c:Lcom/yandex/mobile/ads/impl/hh0;

    .line 81
    new-instance v1, Lcom/yandex/mobile/ads/impl/jh0;

    invoke-direct {v1, v0, p0, p1, p2}, Lcom/yandex/mobile/ads/impl/jh0;-><init>(Ljava/lang/String;Lcom/yandex/mobile/ads/impl/hh0;II)V

    const-wide/16 p0, 0x0

    invoke-virtual {p3, v1, p0, p1}, Lcom/yandex/mobile/ads/impl/k42;->a(Lcom/yandex/mobile/ads/impl/h42;J)V

    :goto_3
    return-void
.end method

.method public final a(IJ)V
    .locals 2

    if-nez p1, :cond_0

    .line 92
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/hh0$c;->c:Lcom/yandex/mobile/ads/impl/hh0;

    monitor-enter p0

    .line 93
    :try_start_0
    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/hh0;->j()J

    move-result-wide v0

    add-long/2addr v0, p2

    invoke-static {p0, v0, v1}, Lcom/yandex/mobile/ads/impl/hh0;->e(Lcom/yandex/mobile/ads/impl/hh0;J)V

    .line 94
    const-string p1, "null cannot be cast to non-null type java.lang.Object"

    invoke-static {p0, p1}, Ly45;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 95
    sget-object p1, Lzfb;->a:Lzfb;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 96
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    .line 97
    :cond_0
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/hh0$c;->c:Lcom/yandex/mobile/ads/impl/hh0;

    invoke-virtual {p0, p1}, Lcom/yandex/mobile/ads/impl/hh0;->a(I)Lcom/yandex/mobile/ads/impl/oh0;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 98
    monitor-enter p0

    .line 99
    :try_start_1
    invoke-virtual {p0, p2, p3}, Lcom/yandex/mobile/ads/impl/oh0;->a(J)V

    .line 100
    sget-object p1, Lzfb;->a:Lzfb;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 101
    monitor-exit p0

    goto :goto_0

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method public final a(ILcom/yandex/mobile/ads/impl/t50;)V
    .locals 1

    .line 84
    const-string v0, "errorCode"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 85
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/hh0$c;->c:Lcom/yandex/mobile/ads/impl/hh0;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/yandex/mobile/ads/impl/hh0;->b(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 86
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/hh0$c;->c:Lcom/yandex/mobile/ads/impl/hh0;

    invoke-virtual {p0, p1, p2}, Lcom/yandex/mobile/ads/impl/hh0;->a(ILcom/yandex/mobile/ads/impl/t50;)V

    return-void

    .line 87
    :cond_0
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/hh0$c;->c:Lcom/yandex/mobile/ads/impl/hh0;

    invoke-virtual {p0, p1}, Lcom/yandex/mobile/ads/impl/hh0;->c(I)Lcom/yandex/mobile/ads/impl/oh0;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 88
    invoke-virtual {p0, p2}, Lcom/yandex/mobile/ads/impl/oh0;->b(Lcom/yandex/mobile/ads/impl/t50;)V

    :cond_1
    return-void
.end method

.method public final a(ILcom/yandex/mobile/ads/impl/t50;Lokio/ByteString;)V
    .locals 3

    .line 41
    const-string v0, "errorCode"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "debugData"

    invoke-static {p3, p2}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    invoke-virtual {p3}, Lokio/ByteString;->size()I

    .line 43
    iget-object p2, p0, Lcom/yandex/mobile/ads/impl/hh0$c;->c:Lcom/yandex/mobile/ads/impl/hh0;

    monitor-enter p2

    .line 44
    :try_start_0
    invoke-virtual {p2}, Lcom/yandex/mobile/ads/impl/hh0;->i()Ljava/util/LinkedHashMap;

    move-result-object p3

    invoke-virtual {p3}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object p3

    const/4 v0, 0x0

    .line 45
    new-array v1, v0, [Lcom/yandex/mobile/ads/impl/oh0;

    invoke-interface {p3, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p3

    .line 46
    invoke-static {p2}, Lcom/yandex/mobile/ads/impl/hh0;->k(Lcom/yandex/mobile/ads/impl/hh0;)V

    .line 47
    sget-object v1, Lzfb;->a:Lzfb;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    monitor-exit p2

    .line 49
    check-cast p3, [Lcom/yandex/mobile/ads/impl/oh0;

    array-length p2, p3

    :goto_0
    if-ge v0, p2, :cond_1

    aget-object v1, p3, v0

    .line 50
    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/oh0;->f()I

    move-result v2

    if-le v2, p1, :cond_0

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/oh0;->p()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 51
    sget-object v2, Lcom/yandex/mobile/ads/impl/t50;->h:Lcom/yandex/mobile/ads/impl/t50;

    invoke-virtual {v1, v2}, Lcom/yandex/mobile/ads/impl/oh0;->b(Lcom/yandex/mobile/ads/impl/t50;)V

    .line 52
    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/hh0$c;->c:Lcom/yandex/mobile/ads/impl/hh0;

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/oh0;->f()I

    move-result v1

    invoke-virtual {v2, v1}, Lcom/yandex/mobile/ads/impl/hh0;->c(I)Lcom/yandex/mobile/ads/impl/oh0;

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void

    :catchall_0
    move-exception p0

    .line 53
    monitor-exit p2

    throw p0
.end method

.method public final a(ILjava/util/List;)V
    .locals 1

    .line 82
    const-string v0, "requestHeaders"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 83
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/hh0$c;->c:Lcom/yandex/mobile/ads/impl/hh0;

    invoke-virtual {p0, p1, p2}, Lcom/yandex/mobile/ads/impl/hh0;->a(ILjava/util/List;)V

    return-void
.end method

.method public final a(Lcom/yandex/mobile/ads/impl/zx1;)V
    .locals 3

    .line 89
    const-string v0, "settings"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 90
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/hh0$c;->c:Lcom/yandex/mobile/ads/impl/hh0;

    invoke-static {v0}, Lcom/yandex/mobile/ads/impl/hh0;->i(Lcom/yandex/mobile/ads/impl/hh0;)Lcom/yandex/mobile/ads/impl/k42;

    move-result-object v0

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/hh0$c;->c:Lcom/yandex/mobile/ads/impl/hh0;

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/hh0;->c()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " applyAndAckSettings"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 91
    new-instance v2, Lcom/yandex/mobile/ads/impl/kh0;

    invoke-direct {v2, v1, p0, p1}, Lcom/yandex/mobile/ads/impl/kh0;-><init>(Ljava/lang/String;Lcom/yandex/mobile/ads/impl/hh0$c;Lcom/yandex/mobile/ads/impl/zx1;)V

    const-wide/16 p0, 0x0

    invoke-virtual {v0, v2, p0, p1}, Lcom/yandex/mobile/ads/impl/k42;->a(Lcom/yandex/mobile/ads/impl/h42;J)V

    return-void
.end method

.method public final a(ZILjava/util/List;)V
    .locals 6

    .line 54
    const-string v0, "headerBlock"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/hh0$c;->c:Lcom/yandex/mobile/ads/impl/hh0;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p2}, Lcom/yandex/mobile/ads/impl/hh0;->b(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 56
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/hh0$c;->c:Lcom/yandex/mobile/ads/impl/hh0;

    invoke-virtual {p0, p2, p3, p1}, Lcom/yandex/mobile/ads/impl/hh0;->a(ILjava/util/List;Z)V

    return-void

    .line 57
    :cond_0
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/hh0$c;->c:Lcom/yandex/mobile/ads/impl/hh0;

    monitor-enter p0

    .line 58
    :try_start_0
    invoke-virtual {p0, p2}, Lcom/yandex/mobile/ads/impl/hh0;->a(I)Lcom/yandex/mobile/ads/impl/oh0;

    move-result-object v0

    if-nez v0, :cond_4

    .line 59
    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/hh0;->j(Lcom/yandex/mobile/ads/impl/hh0;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    monitor-exit p0

    return-void

    .line 60
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/hh0;->d()I

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-gt p2, v0, :cond_2

    monitor-exit p0

    return-void

    .line 61
    :cond_2
    :try_start_2
    rem-int/lit8 v0, p2, 0x2

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/hh0;->f()I

    move-result v1

    rem-int/lit8 v1, v1, 0x2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-ne v0, v1, :cond_3

    monitor-exit p0

    return-void

    .line 62
    :cond_3
    :try_start_3
    invoke-static {p3}, Lcom/yandex/mobile/ads/impl/g92;->a(Ljava/util/List;)Lcom/yandex/mobile/ads/impl/qf0;

    move-result-object v5

    .line 63
    new-instance p3, Lcom/yandex/mobile/ads/impl/oh0;

    const/4 v3, 0x0

    move-object v0, p3

    move v1, p2

    move-object v2, p0

    move v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/yandex/mobile/ads/impl/oh0;-><init>(ILcom/yandex/mobile/ads/impl/hh0;ZZLcom/yandex/mobile/ads/impl/qf0;)V

    .line 64
    invoke-virtual {p0, p2}, Lcom/yandex/mobile/ads/impl/hh0;->d(I)V

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 65
    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/hh0;->i()Ljava/util/LinkedHashMap;

    move-result-object v0

    invoke-interface {v0, p1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/hh0;->h(Lcom/yandex/mobile/ads/impl/hh0;)Lcom/yandex/mobile/ads/impl/l42;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/l42;->e()Lcom/yandex/mobile/ads/impl/k42;

    move-result-object p1

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/hh0;->c()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "["

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "] onStream"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 67
    new-instance v0, Lcom/yandex/mobile/ads/impl/ih0;

    invoke-direct {v0, p2, p0, p3}, Lcom/yandex/mobile/ads/impl/ih0;-><init>(Ljava/lang/String;Lcom/yandex/mobile/ads/impl/hh0;Lcom/yandex/mobile/ads/impl/oh0;)V

    const-wide/16 p2, 0x0

    invoke-virtual {p1, v0, p2, p3}, Lcom/yandex/mobile/ads/impl/k42;->a(Lcom/yandex/mobile/ads/impl/h42;J)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 68
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    .line 69
    :cond_4
    :try_start_4
    sget-object p2, Lzfb;->a:Lzfb;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 70
    monitor-exit p0

    .line 71
    invoke-static {p3}, Lcom/yandex/mobile/ads/impl/g92;->a(Ljava/util/List;)Lcom/yandex/mobile/ads/impl/qf0;

    move-result-object p0

    invoke-virtual {v0, p0, p1}, Lcom/yandex/mobile/ads/impl/oh0;->a(Lcom/yandex/mobile/ads/impl/qf0;Z)V

    return-void

    .line 72
    :goto_0
    monitor-exit p0

    throw p1
.end method

.method public final a(ZLcom/yandex/mobile/ads/impl/zx1;)V
    .locals 9

    .line 1
    const-string v0, "settings"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance v0, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 3
    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/hh0$c;->c:Lcom/yandex/mobile/ads/impl/hh0;

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/hh0;->k()Lcom/yandex/mobile/ads/impl/ph0;

    move-result-object v1

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/hh0$c;->c:Lcom/yandex/mobile/ads/impl/hh0;

    monitor-enter v1

    .line 4
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 5
    :try_start_1
    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/hh0;->h()Lcom/yandex/mobile/ads/impl/zx1;

    move-result-object v2

    if-eqz p1, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    new-instance p1, Lcom/yandex/mobile/ads/impl/zx1;

    invoke-direct {p1}, Lcom/yandex/mobile/ads/impl/zx1;-><init>()V

    .line 7
    invoke-virtual {p1, v2}, Lcom/yandex/mobile/ads/impl/zx1;->a(Lcom/yandex/mobile/ads/impl/zx1;)V

    .line 8
    invoke-virtual {p1, p2}, Lcom/yandex/mobile/ads/impl/zx1;->a(Lcom/yandex/mobile/ads/impl/zx1;)V

    move-object p2, p1

    .line 9
    :goto_0
    iput-object p2, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 10
    invoke-virtual {p2}, Lcom/yandex/mobile/ads/impl/zx1;->b()I

    move-result p1

    int-to-long p1, p1

    .line 11
    invoke-virtual {v2}, Lcom/yandex/mobile/ads/impl/zx1;->b()I

    move-result v2

    int-to-long v2, v2

    sub-long/2addr p1, v2

    const-wide/16 v2, 0x0

    cmp-long v4, p1, v2

    const/4 v5, 0x0

    if-eqz v4, :cond_2

    .line 12
    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/hh0;->i()Ljava/util/LinkedHashMap;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Map;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_1

    .line 13
    :cond_1
    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/hh0;->i()Ljava/util/LinkedHashMap;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v4

    .line 14
    new-array v6, v5, [Lcom/yandex/mobile/ads/impl/oh0;

    invoke-interface {v4, v6}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lcom/yandex/mobile/ads/impl/oh0;

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_5

    :cond_2
    :goto_1
    const/4 v4, 0x0

    .line 15
    :goto_2
    iget-object v6, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v6, Lcom/yandex/mobile/ads/impl/zx1;

    invoke-virtual {p0, v6}, Lcom/yandex/mobile/ads/impl/hh0;->a(Lcom/yandex/mobile/ads/impl/zx1;)V

    .line 16
    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/hh0;->g(Lcom/yandex/mobile/ads/impl/hh0;)Lcom/yandex/mobile/ads/impl/k42;

    move-result-object v6

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/hh0;->c()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " onSettings"

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 17
    new-instance v8, Lcom/yandex/mobile/ads/impl/hh0$c$a;

    invoke-direct {v8, v7, p0, v0}, Lcom/yandex/mobile/ads/impl/hh0$c$a;-><init>(Ljava/lang/String;Lcom/yandex/mobile/ads/impl/hh0;Lkotlin/jvm/internal/Ref$ObjectRef;)V

    invoke-virtual {v6, v8, v2, v3}, Lcom/yandex/mobile/ads/impl/k42;->a(Lcom/yandex/mobile/ads/impl/h42;J)V

    .line 18
    sget-object v2, Lzfb;->a:Lzfb;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 19
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 20
    :try_start_3
    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/hh0;->k()Lcom/yandex/mobile/ads/impl/ph0;

    move-result-object v2

    iget-object v0, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v0, Lcom/yandex/mobile/ads/impl/zx1;

    invoke-virtual {v2, v0}, Lcom/yandex/mobile/ads/impl/ph0;->a(Lcom/yandex/mobile/ads/impl/zx1;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception p0

    goto :goto_6

    :catch_0
    move-exception v0

    .line 21
    :try_start_4
    invoke-static {p0, v0}, Lcom/yandex/mobile/ads/impl/hh0;->a(Lcom/yandex/mobile/ads/impl/hh0;Ljava/io/IOException;)V

    .line 22
    :goto_3
    sget-object p0, Lzfb;->a:Lzfb;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 23
    monitor-exit v1

    if-eqz v4, :cond_3

    .line 24
    array-length p0, v4

    :goto_4
    if-ge v5, p0, :cond_3

    aget-object v0, v4, v5

    .line 25
    monitor-enter v0

    .line 26
    :try_start_5
    invoke-virtual {v0, p1, p2}, Lcom/yandex/mobile/ads/impl/oh0;->a(J)V

    .line 27
    sget-object v1, Lzfb;->a:Lzfb;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 28
    monitor-exit v0

    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :catchall_2
    move-exception p0

    .line 29
    monitor-exit v0

    throw p0

    :cond_3
    return-void

    .line 30
    :goto_5
    :try_start_6
    monitor-exit p0

    throw p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 31
    :goto_6
    monitor-exit v1

    throw p0
.end method

.method public final invoke()Ljava/lang/Object;
    .locals 5

    sget-object v0, Lcom/yandex/mobile/ads/impl/t50;->f:Lcom/yandex/mobile/ads/impl/t50;

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/hh0$c;->b:Lcom/yandex/mobile/ads/impl/nh0;

    invoke-virtual {v2, p0}, Lcom/yandex/mobile/ads/impl/nh0;->a(Lcom/yandex/mobile/ads/impl/nh0$c;)V

    :cond_0
    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/hh0$c;->b:Lcom/yandex/mobile/ads/impl/nh0;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, p0}, Lcom/yandex/mobile/ads/impl/nh0;->a(ZLcom/yandex/mobile/ads/impl/nh0$c;)Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Lcom/yandex/mobile/ads/impl/t50;->d:Lcom/yandex/mobile/ads/impl/t50;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    sget-object v0, Lcom/yandex/mobile/ads/impl/t50;->i:Lcom/yandex/mobile/ads/impl/t50;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v3, p0, Lcom/yandex/mobile/ads/impl/hh0$c;->c:Lcom/yandex/mobile/ads/impl/hh0;

    invoke-virtual {v3, v2, v0, v1}, Lcom/yandex/mobile/ads/impl/hh0;->a(Lcom/yandex/mobile/ads/impl/t50;Lcom/yandex/mobile/ads/impl/t50;Ljava/io/IOException;)V

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/hh0$c;->b:Lcom/yandex/mobile/ads/impl/nh0;

    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/g92;->a(Ljava/io/Closeable;)V

    goto :goto_3

    :catchall_0
    move-exception v3

    goto :goto_4

    :catch_0
    move-exception v1

    goto :goto_2

    :catchall_1
    move-exception v2

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_1

    :goto_0
    move-object v3, v2

    move-object v2, v0

    goto :goto_4

    :goto_1
    move-object v2, v0

    :goto_2
    :try_start_2
    sget-object v0, Lcom/yandex/mobile/ads/impl/t50;->e:Lcom/yandex/mobile/ads/impl/t50;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/hh0$c;->c:Lcom/yandex/mobile/ads/impl/hh0;

    invoke-virtual {v2, v0, v0, v1}, Lcom/yandex/mobile/ads/impl/hh0;->a(Lcom/yandex/mobile/ads/impl/t50;Lcom/yandex/mobile/ads/impl/t50;Ljava/io/IOException;)V

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/hh0$c;->b:Lcom/yandex/mobile/ads/impl/nh0;

    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/g92;->a(Ljava/io/Closeable;)V

    :goto_3
    sget-object p0, Lzfb;->a:Lzfb;

    return-object p0

    :goto_4
    iget-object v4, p0, Lcom/yandex/mobile/ads/impl/hh0$c;->c:Lcom/yandex/mobile/ads/impl/hh0;

    invoke-virtual {v4, v2, v0, v1}, Lcom/yandex/mobile/ads/impl/hh0;->a(Lcom/yandex/mobile/ads/impl/t50;Lcom/yandex/mobile/ads/impl/t50;Ljava/io/IOException;)V

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/hh0$c;->b:Lcom/yandex/mobile/ads/impl/nh0;

    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/g92;->a(Ljava/io/Closeable;)V

    throw v3
.end method
