.class final Lcom/yandex/mobile/ads/impl/al0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/impl/hx1;


# instance fields
.field private final a:J

.field private final b:Lcom/yandex/mobile/ads/impl/gt0;

.field private final c:Lcom/yandex/mobile/ads/impl/gt0;

.field private d:J


# direct methods
.method public constructor <init>(JJJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/yandex/mobile/ads/impl/al0;->d:J

    iput-wide p5, p0, Lcom/yandex/mobile/ads/impl/al0;->a:J

    new-instance p1, Lcom/yandex/mobile/ads/impl/gt0;

    invoke-direct {p1}, Lcom/yandex/mobile/ads/impl/gt0;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/al0;->b:Lcom/yandex/mobile/ads/impl/gt0;

    new-instance p2, Lcom/yandex/mobile/ads/impl/gt0;

    invoke-direct {p2}, Lcom/yandex/mobile/ads/impl/gt0;-><init>()V

    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/al0;->c:Lcom/yandex/mobile/ads/impl/gt0;

    const-wide/16 p5, 0x0

    invoke-virtual {p1, p5, p6}, Lcom/yandex/mobile/ads/impl/gt0;->a(J)V

    invoke-virtual {p2, p3, p4}, Lcom/yandex/mobile/ads/impl/gt0;->a(J)V

    return-void
.end method


# virtual methods
.method public final a()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/yandex/mobile/ads/impl/al0;->a:J

    return-wide v0
.end method

.method public final a(J)J
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/al0;->c:Lcom/yandex/mobile/ads/impl/gt0;

    .line 3
    invoke-static {v0, p1, p2}, Lcom/yandex/mobile/ads/impl/f92;->a(Lcom/yandex/mobile/ads/impl/gt0;J)I

    move-result p1

    .line 4
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/al0;->b:Lcom/yandex/mobile/ads/impl/gt0;

    invoke-virtual {p0, p1}, Lcom/yandex/mobile/ads/impl/gt0;->a(I)J

    move-result-wide p0

    return-wide p0
.end method

.method public final a(JJ)V
    .locals 1

    .line 5
    invoke-virtual {p0, p1, p2}, Lcom/yandex/mobile/ads/impl/al0;->c(J)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/al0;->b:Lcom/yandex/mobile/ads/impl/gt0;

    invoke-virtual {v0, p1, p2}, Lcom/yandex/mobile/ads/impl/gt0;->a(J)V

    .line 7
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/al0;->c:Lcom/yandex/mobile/ads/impl/gt0;

    invoke-virtual {p0, p3, p4}, Lcom/yandex/mobile/ads/impl/gt0;->a(J)V

    return-void
.end method

.method public final b(J)Lcom/yandex/mobile/ads/impl/ex1$a;
    .locals 6

    .line 2
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/al0;->b:Lcom/yandex/mobile/ads/impl/gt0;

    .line 3
    invoke-static {v0, p1, p2}, Lcom/yandex/mobile/ads/impl/f92;->a(Lcom/yandex/mobile/ads/impl/gt0;J)I

    move-result v0

    .line 4
    new-instance v1, Lcom/yandex/mobile/ads/impl/gx1;

    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/al0;->b:Lcom/yandex/mobile/ads/impl/gt0;

    invoke-virtual {v2, v0}, Lcom/yandex/mobile/ads/impl/gt0;->a(I)J

    move-result-wide v2

    iget-object v4, p0, Lcom/yandex/mobile/ads/impl/al0;->c:Lcom/yandex/mobile/ads/impl/gt0;

    invoke-virtual {v4, v0}, Lcom/yandex/mobile/ads/impl/gt0;->a(I)J

    move-result-wide v4

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/yandex/mobile/ads/impl/gx1;-><init>(JJ)V

    cmp-long p1, v2, p1

    if-eqz p1, :cond_1

    .line 5
    iget-object p1, p0, Lcom/yandex/mobile/ads/impl/al0;->b:Lcom/yandex/mobile/ads/impl/gt0;

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/gt0;->a()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    if-ne v0, p1, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    new-instance p1, Lcom/yandex/mobile/ads/impl/gx1;

    iget-object p2, p0, Lcom/yandex/mobile/ads/impl/al0;->b:Lcom/yandex/mobile/ads/impl/gt0;

    add-int/lit8 v0, v0, 0x1

    .line 7
    invoke-virtual {p2, v0}, Lcom/yandex/mobile/ads/impl/gt0;->a(I)J

    move-result-wide v2

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/al0;->c:Lcom/yandex/mobile/ads/impl/gt0;

    invoke-virtual {p0, v0}, Lcom/yandex/mobile/ads/impl/gt0;->a(I)J

    move-result-wide v4

    invoke-direct {p1, v2, v3, v4, v5}, Lcom/yandex/mobile/ads/impl/gx1;-><init>(JJ)V

    .line 8
    new-instance p0, Lcom/yandex/mobile/ads/impl/ex1$a;

    invoke-direct {p0, v1, p1}, Lcom/yandex/mobile/ads/impl/ex1$a;-><init>(Lcom/yandex/mobile/ads/impl/gx1;Lcom/yandex/mobile/ads/impl/gx1;)V

    return-object p0

    .line 9
    :cond_1
    :goto_0
    new-instance p0, Lcom/yandex/mobile/ads/impl/ex1$a;

    .line 10
    invoke-direct {p0, v1, v1}, Lcom/yandex/mobile/ads/impl/ex1$a;-><init>(Lcom/yandex/mobile/ads/impl/gx1;Lcom/yandex/mobile/ads/impl/gx1;)V

    return-object p0
.end method

.method public final b()Z
    .locals 0

    .line 1
    const/4 p0, 0x1

    return p0
.end method

.method public final c()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/yandex/mobile/ads/impl/al0;->d:J

    return-wide v0
.end method

.method public final c(J)Z
    .locals 4

    .line 2
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/al0;->b:Lcom/yandex/mobile/ads/impl/gt0;

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/gt0;->a()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/yandex/mobile/ads/impl/gt0;->a(I)J

    move-result-wide v2

    sub-long/2addr p1, v2

    const-wide/32 v2, 0x186a0

    cmp-long p0, p1, v2

    if-gez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public final d(J)V
    .locals 0

    iput-wide p1, p0, Lcom/yandex/mobile/ads/impl/al0;->d:J

    return-void
.end method
