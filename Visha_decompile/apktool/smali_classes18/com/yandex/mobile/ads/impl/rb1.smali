.class public final Lcom/yandex/mobile/ads/impl/rb1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/impl/yc0;
.implements Lcom/yandex/mobile/ads/impl/jb1;


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/db1;

.field private final b:Lcom/yandex/mobile/ads/impl/yl1;

.field private final c:Lcom/yandex/mobile/ads/impl/xl1;

.field private final d:Lcom/yandex/mobile/ads/impl/z1;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/db1;Lcom/yandex/mobile/ads/impl/yl1;Lcom/yandex/mobile/ads/impl/f52;Lcom/yandex/mobile/ads/impl/xl1;Lcom/yandex/mobile/ads/impl/z1;)V
    .locals 1

    const-string v0, "nativeVideoController"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "progressListener"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "timeProviderContainer"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "progressIncrementer"

    invoke-static {p4, p3}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "adBlockDurationProvider"

    invoke-static {p5, p3}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/rb1;->a:Lcom/yandex/mobile/ads/impl/db1;

    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/rb1;->b:Lcom/yandex/mobile/ads/impl/yl1;

    iput-object p4, p0, Lcom/yandex/mobile/ads/impl/rb1;->c:Lcom/yandex/mobile/ads/impl/xl1;

    iput-object p5, p0, Lcom/yandex/mobile/ads/impl/rb1;->d:Lcom/yandex/mobile/ads/impl/z1;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .line 6
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/rb1;->b:Lcom/yandex/mobile/ads/impl/yl1;

    invoke-interface {v0}, Lcom/yandex/mobile/ads/impl/yl1;->a()V

    .line 7
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/rb1;->a:Lcom/yandex/mobile/ads/impl/db1;

    invoke-virtual {v0, p0}, Lcom/yandex/mobile/ads/impl/db1;->b(Lcom/yandex/mobile/ads/impl/jb1;)V

    return-void
.end method

.method public final a(JJ)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/rb1;->c:Lcom/yandex/mobile/ads/impl/xl1;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/xl1;->a()J

    move-result-wide v0

    add-long/2addr v0, p3

    .line 2
    iget-object p3, p0, Lcom/yandex/mobile/ads/impl/rb1;->d:Lcom/yandex/mobile/ads/impl/z1;

    invoke-interface {p3, p1, p2}, Lcom/yandex/mobile/ads/impl/z1;->a(J)J

    move-result-wide p1

    cmp-long p3, v0, p1

    if-ltz p3, :cond_0

    .line 3
    iget-object p1, p0, Lcom/yandex/mobile/ads/impl/rb1;->a:Lcom/yandex/mobile/ads/impl/db1;

    invoke-virtual {p1, p0}, Lcom/yandex/mobile/ads/impl/db1;->b(Lcom/yandex/mobile/ads/impl/jb1;)V

    .line 4
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/rb1;->b:Lcom/yandex/mobile/ads/impl/yl1;

    invoke-interface {p0}, Lcom/yandex/mobile/ads/impl/yl1;->a()V

    goto :goto_0

    .line 5
    :cond_0
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/rb1;->b:Lcom/yandex/mobile/ads/impl/yl1;

    invoke-interface {p0, p1, p2, v0, v1}, Lcom/yandex/mobile/ads/impl/yl1;->a(JJ)V

    :goto_0
    return-void
.end method

.method public final b()V
    .locals 1

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/rb1;->b:Lcom/yandex/mobile/ads/impl/yl1;

    invoke-interface {v0}, Lcom/yandex/mobile/ads/impl/yl1;->a()V

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/rb1;->a:Lcom/yandex/mobile/ads/impl/db1;

    invoke-virtual {v0, p0}, Lcom/yandex/mobile/ads/impl/db1;->b(Lcom/yandex/mobile/ads/impl/jb1;)V

    return-void
.end method

.method public final invalidate()V
    .locals 1

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/rb1;->a:Lcom/yandex/mobile/ads/impl/db1;

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
    .locals 1

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/rb1;->a:Lcom/yandex/mobile/ads/impl/db1;

    invoke-virtual {v0, p0}, Lcom/yandex/mobile/ads/impl/db1;->a(Lcom/yandex/mobile/ads/impl/jb1;)V

    return-void
.end method
