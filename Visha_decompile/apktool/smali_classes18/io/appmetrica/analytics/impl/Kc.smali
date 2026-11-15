.class public final Lio/appmetrica/analytics/impl/Kc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/impl/J8;
.implements Lio/appmetrica/analytics/impl/W8;


# instance fields
.field public final a:Lio/appmetrica/analytics/impl/S6;

.field public final b:Lio/appmetrica/analytics/impl/Fg;

.field public final c:Ljava/util/concurrent/atomic/AtomicLong;


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/impl/S6;Lio/appmetrica/analytics/impl/Fg;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/appmetrica/analytics/impl/Kc;->a:Lio/appmetrica/analytics/impl/S6;

    iput-object p2, p0, Lio/appmetrica/analytics/impl/Kc;->b:Lio/appmetrica/analytics/impl/Fg;

    new-instance p2, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p1}, Lio/appmetrica/analytics/impl/S6;->a()J

    move-result-wide v0

    invoke-direct {p2, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object p2, p0, Lio/appmetrica/analytics/impl/Kc;->c:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p1, p0}, Lio/appmetrica/analytics/impl/S6;->a(Lio/appmetrica/analytics/impl/W8;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 2
    iget-object v0, p0, Lio/appmetrica/analytics/impl/Kc;->c:Ljava/util/concurrent/atomic/AtomicLong;

    iget-object p0, p0, Lio/appmetrica/analytics/impl/Kc;->a:Lio/appmetrica/analytics/impl/S6;

    invoke-virtual {p0}, Lio/appmetrica/analytics/impl/S6;->a()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    return-void
.end method

.method public final a(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lio/appmetrica/analytics/impl/Kc;->c:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    int-to-long v0, p1

    invoke-virtual {p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    return-void
.end method

.method public final b(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 3
    iget-object p0, p0, Lio/appmetrica/analytics/impl/Kc;->c:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    int-to-long v0, p1

    neg-long v0, v0

    invoke-virtual {p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    return-void
.end method

.method public final b()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lio/appmetrica/analytics/impl/Kc;->c:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    iget-object p0, p0, Lio/appmetrica/analytics/impl/Kc;->b:Lio/appmetrica/analytics/impl/Fg;

    invoke-virtual {p0}, Lio/appmetrica/analytics/impl/B5;->a()Lio/appmetrica/analytics/networktasks/internal/BaseRequestConfig;

    move-result-object p0

    check-cast p0, Lio/appmetrica/analytics/impl/ch;

    .line 2
    iget p0, p0, Lio/appmetrica/analytics/impl/ch;->i:I

    int-to-long v2, p0

    cmp-long p0, v0, v2

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
