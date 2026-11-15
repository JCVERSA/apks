.class public final Lcom/yandex/mobile/ads/impl/bb1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/impl/yc0;
.implements Lcom/yandex/mobile/ads/impl/jb1;


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/db1;

.field private final b:Lcom/yandex/mobile/ads/impl/zp;

.field private final c:Ljava/lang/Long;

.field private final d:Lcom/yandex/mobile/ads/impl/aq;

.field private final e:Lcom/yandex/mobile/ads/impl/kp;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/o8;Lcom/yandex/mobile/ads/impl/db1;Lcom/yandex/mobile/ads/impl/zp;Lcom/yandex/mobile/ads/impl/f52;Ljava/lang/Long;Lcom/yandex/mobile/ads/impl/aq;Lcom/yandex/mobile/ads/impl/kp;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yandex/mobile/ads/impl/o8<",
            "*>;",
            "Lcom/yandex/mobile/ads/impl/db1;",
            "Lcom/yandex/mobile/ads/impl/zp;",
            "Lcom/yandex/mobile/ads/impl/f52;",
            "Ljava/lang/Long;",
            "Lcom/yandex/mobile/ads/impl/aq;",
            "Lcom/yandex/mobile/ads/impl/kp;",
            ")V"
        }
    .end annotation

    const-string v0, "adResponse"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "nativeVideoController"

    invoke-static {p2, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "closeShowListener"

    invoke-static {p3, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "timeProviderContainer"

    invoke-static {p4, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "closeTimerProgressIncrementer"

    invoke-static {p6, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "closableAdChecker"

    invoke-static {p7, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/bb1;->a:Lcom/yandex/mobile/ads/impl/db1;

    iput-object p3, p0, Lcom/yandex/mobile/ads/impl/bb1;->b:Lcom/yandex/mobile/ads/impl/zp;

    iput-object p5, p0, Lcom/yandex/mobile/ads/impl/bb1;->c:Ljava/lang/Long;

    iput-object p6, p0, Lcom/yandex/mobile/ads/impl/bb1;->d:Lcom/yandex/mobile/ads/impl/aq;

    iput-object p7, p0, Lcom/yandex/mobile/ads/impl/bb1;->e:Lcom/yandex/mobile/ads/impl/kp;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/bb1;->b:Lcom/yandex/mobile/ads/impl/zp;

    invoke-interface {v0}, Lcom/yandex/mobile/ads/impl/zp;->a()V

    .line 8
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/bb1;->a:Lcom/yandex/mobile/ads/impl/db1;

    invoke-virtual {v0, p0}, Lcom/yandex/mobile/ads/impl/db1;->b(Lcom/yandex/mobile/ads/impl/jb1;)V

    return-void
.end method

.method public final a(JJ)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/bb1;->e:Lcom/yandex/mobile/ads/impl/kp;

    invoke-interface {v0}, Lcom/yandex/mobile/ads/impl/kp;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/bb1;->d:Lcom/yandex/mobile/ads/impl/aq;

    sub-long/2addr p1, p3

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/yandex/mobile/ads/impl/aq;->a(JJ)V

    .line 3
    iget-object p1, p0, Lcom/yandex/mobile/ads/impl/bb1;->d:Lcom/yandex/mobile/ads/impl/aq;

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/aq;->a()J

    move-result-wide p1

    add-long/2addr p1, p3

    .line 4
    iget-object p3, p0, Lcom/yandex/mobile/ads/impl/bb1;->c:Ljava/lang/Long;

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide p3

    cmp-long p1, p1, p3

    if-ltz p1, :cond_0

    .line 5
    iget-object p1, p0, Lcom/yandex/mobile/ads/impl/bb1;->b:Lcom/yandex/mobile/ads/impl/zp;

    invoke-interface {p1}, Lcom/yandex/mobile/ads/impl/zp;->a()V

    .line 6
    iget-object p1, p0, Lcom/yandex/mobile/ads/impl/bb1;->a:Lcom/yandex/mobile/ads/impl/db1;

    invoke-virtual {p1, p0}, Lcom/yandex/mobile/ads/impl/db1;->b(Lcom/yandex/mobile/ads/impl/jb1;)V

    :cond_0
    return-void
.end method

.method public final b()V
    .locals 1

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/bb1;->e:Lcom/yandex/mobile/ads/impl/kp;

    invoke-interface {v0}, Lcom/yandex/mobile/ads/impl/kp;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/bb1;->b:Lcom/yandex/mobile/ads/impl/zp;

    invoke-interface {v0}, Lcom/yandex/mobile/ads/impl/zp;->a()V

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/bb1;->a:Lcom/yandex/mobile/ads/impl/db1;

    invoke-virtual {v0, p0}, Lcom/yandex/mobile/ads/impl/db1;->b(Lcom/yandex/mobile/ads/impl/jb1;)V

    :cond_0
    return-void
.end method

.method public final invalidate()V
    .locals 1

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/bb1;->a:Lcom/yandex/mobile/ads/impl/db1;

    invoke-virtual {v0, p0}, Lcom/yandex/mobile/ads/impl/db1;->b(Lcom/yandex/mobile/ads/impl/jb1;)V

    return-void
.end method

.method public final pause()V
    .locals 0

    return-void
.end method

.method public final resume()V
    .locals 0

    return-void
.end method

.method public final start()V
    .locals 4

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/bb1;->a:Lcom/yandex/mobile/ads/impl/db1;

    invoke-virtual {v0, p0}, Lcom/yandex/mobile/ads/impl/db1;->a(Lcom/yandex/mobile/ads/impl/jb1;)V

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/bb1;->e:Lcom/yandex/mobile/ads/impl/kp;

    invoke-interface {v0}, Lcom/yandex/mobile/ads/impl/kp;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/bb1;->c:Ljava/lang/Long;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/bb1;->d:Lcom/yandex/mobile/ads/impl/aq;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/aq;->a()J

    move-result-wide v0

    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/bb1;->c:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/bb1;->b:Lcom/yandex/mobile/ads/impl/zp;

    invoke-interface {v0}, Lcom/yandex/mobile/ads/impl/zp;->a()V

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/bb1;->a:Lcom/yandex/mobile/ads/impl/db1;

    invoke-virtual {v0, p0}, Lcom/yandex/mobile/ads/impl/db1;->b(Lcom/yandex/mobile/ads/impl/jb1;)V

    :cond_0
    return-void
.end method
