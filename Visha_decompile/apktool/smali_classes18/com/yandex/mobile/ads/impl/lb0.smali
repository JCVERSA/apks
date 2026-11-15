.class final Lcom/yandex/mobile/ads/impl/lb0;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/mobile/ads/impl/lb0$a;
    }
.end annotation


# instance fields
.field private a:Lcom/yandex/mobile/ads/impl/lb0$a;

.field private b:Lcom/yandex/mobile/ads/impl/lb0$a;

.field private c:Z

.field private d:J

.field private e:I


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/yandex/mobile/ads/impl/lb0$a;

    invoke-direct {v0}, Lcom/yandex/mobile/ads/impl/lb0$a;-><init>()V

    iput-object v0, p0, Lcom/yandex/mobile/ads/impl/lb0;->a:Lcom/yandex/mobile/ads/impl/lb0$a;

    new-instance v0, Lcom/yandex/mobile/ads/impl/lb0$a;

    invoke-direct {v0}, Lcom/yandex/mobile/ads/impl/lb0$a;-><init>()V

    iput-object v0, p0, Lcom/yandex/mobile/ads/impl/lb0;->b:Lcom/yandex/mobile/ads/impl/lb0$a;

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/yandex/mobile/ads/impl/lb0;->d:J

    return-void
.end method


# virtual methods
.method public final a()J
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/lb0;->a:Lcom/yandex/mobile/ads/impl/lb0$a;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/lb0$a;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/lb0;->a:Lcom/yandex/mobile/ads/impl/lb0$a;

    .line 3
    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/lb0$a;->b(Lcom/yandex/mobile/ads/impl/lb0$a;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/lb0$a;->c(Lcom/yandex/mobile/ads/impl/lb0$a;)J

    move-result-wide v2

    div-long/2addr v2, v0

    goto :goto_0

    :cond_1
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    :goto_0
    return-wide v2
.end method

.method public final a(J)V
    .locals 9

    .line 5
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/lb0;->a:Lcom/yandex/mobile/ads/impl/lb0$a;

    invoke-virtual {v0, p1, p2}, Lcom/yandex/mobile/ads/impl/lb0$a;->a(J)V

    .line 6
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/lb0;->a:Lcom/yandex/mobile/ads/impl/lb0$a;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/lb0$a;->a()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 7
    iput-boolean v2, p0, Lcom/yandex/mobile/ads/impl/lb0;->c:Z

    goto :goto_1

    .line 8
    :cond_0
    iget-wide v3, p0, Lcom/yandex/mobile/ads/impl/lb0;->d:J

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v3, v5

    if-eqz v0, :cond_4

    .line 9
    iget-boolean v0, p0, Lcom/yandex/mobile/ads/impl/lb0;->c:Z

    const-wide/16 v3, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/lb0;->b:Lcom/yandex/mobile/ads/impl/lb0$a;

    .line 10
    invoke-static {v0}, Lcom/yandex/mobile/ads/impl/lb0$a;->a(Lcom/yandex/mobile/ads/impl/lb0$a;)J

    move-result-wide v5

    cmp-long v7, v5, v3

    if-nez v7, :cond_1

    goto :goto_0

    .line 11
    :cond_1
    invoke-static {v0}, Lcom/yandex/mobile/ads/impl/lb0$a;->d(Lcom/yandex/mobile/ads/impl/lb0$a;)[Z

    move-result-object v0

    const-wide/16 v7, 0x1

    sub-long/2addr v5, v7

    const-wide/16 v7, 0xf

    .line 12
    rem-long/2addr v5, v7

    long-to-int v5, v5

    .line 13
    aget-boolean v0, v0, v5

    if-eqz v0, :cond_3

    .line 14
    :cond_2
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/lb0;->b:Lcom/yandex/mobile/ads/impl/lb0$a;

    .line 15
    invoke-static {v0, v3, v4}, Lcom/yandex/mobile/ads/impl/lb0$a;->e(Lcom/yandex/mobile/ads/impl/lb0$a;J)V

    .line 16
    invoke-static {v0, v3, v4}, Lcom/yandex/mobile/ads/impl/lb0$a;->f(Lcom/yandex/mobile/ads/impl/lb0$a;J)V

    .line 17
    invoke-static {v0, v3, v4}, Lcom/yandex/mobile/ads/impl/lb0$a;->g(Lcom/yandex/mobile/ads/impl/lb0$a;J)V

    .line 18
    invoke-static {v0, v2}, Lcom/yandex/mobile/ads/impl/lb0$a;->h(Lcom/yandex/mobile/ads/impl/lb0$a;I)V

    .line 19
    invoke-static {v0}, Lcom/yandex/mobile/ads/impl/lb0$a;->d(Lcom/yandex/mobile/ads/impl/lb0$a;)[Z

    move-result-object v0

    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([ZZ)V

    .line 20
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/lb0;->b:Lcom/yandex/mobile/ads/impl/lb0$a;

    iget-wide v3, p0, Lcom/yandex/mobile/ads/impl/lb0;->d:J

    invoke-virtual {v0, v3, v4}, Lcom/yandex/mobile/ads/impl/lb0$a;->a(J)V

    .line 21
    :cond_3
    :goto_0
    iput-boolean v1, p0, Lcom/yandex/mobile/ads/impl/lb0;->c:Z

    .line 22
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/lb0;->b:Lcom/yandex/mobile/ads/impl/lb0$a;

    invoke-virtual {v0, p1, p2}, Lcom/yandex/mobile/ads/impl/lb0$a;->a(J)V

    .line 23
    :cond_4
    :goto_1
    iget-boolean v0, p0, Lcom/yandex/mobile/ads/impl/lb0;->c:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/lb0;->b:Lcom/yandex/mobile/ads/impl/lb0$a;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/lb0$a;->a()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 24
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/lb0;->a:Lcom/yandex/mobile/ads/impl/lb0$a;

    .line 25
    iget-object v3, p0, Lcom/yandex/mobile/ads/impl/lb0;->b:Lcom/yandex/mobile/ads/impl/lb0$a;

    iput-object v3, p0, Lcom/yandex/mobile/ads/impl/lb0;->a:Lcom/yandex/mobile/ads/impl/lb0$a;

    .line 26
    iput-object v0, p0, Lcom/yandex/mobile/ads/impl/lb0;->b:Lcom/yandex/mobile/ads/impl/lb0$a;

    .line 27
    iput-boolean v2, p0, Lcom/yandex/mobile/ads/impl/lb0;->c:Z

    .line 28
    :cond_5
    iput-wide p1, p0, Lcom/yandex/mobile/ads/impl/lb0;->d:J

    .line 29
    iget-object p1, p0, Lcom/yandex/mobile/ads/impl/lb0;->a:Lcom/yandex/mobile/ads/impl/lb0$a;

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/lb0$a;->a()Z

    move-result p1

    if-eqz p1, :cond_6

    goto :goto_2

    :cond_6
    iget p1, p0, Lcom/yandex/mobile/ads/impl/lb0;->e:I

    add-int/lit8 v2, p1, 0x1

    :goto_2
    iput v2, p0, Lcom/yandex/mobile/ads/impl/lb0;->e:I

    return-void
.end method

.method public final b()F
    .locals 5

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/lb0;->a:Lcom/yandex/mobile/ads/impl/lb0$a;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/lb0$a;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/lb0;->a:Lcom/yandex/mobile/ads/impl/lb0$a;

    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/lb0$a;->b(Lcom/yandex/mobile/ads/impl/lb0$a;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/lb0$a;->c(Lcom/yandex/mobile/ads/impl/lb0$a;)J

    move-result-wide v2

    div-long/2addr v2, v0

    :goto_0
    long-to-double v0, v2

    const-wide v2, 0x41cdcd6500000000L    # 1.0E9

    div-double/2addr v2, v0

    double-to-float p0, v2

    goto :goto_1

    :cond_1
    const/high16 p0, -0x40800000    # -1.0f

    :goto_1
    return p0
.end method

.method public final c()I
    .locals 0

    iget p0, p0, Lcom/yandex/mobile/ads/impl/lb0;->e:I

    return p0
.end method

.method public final d()J
    .locals 2

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/lb0;->a:Lcom/yandex/mobile/ads/impl/lb0$a;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/lb0$a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/lb0;->a:Lcom/yandex/mobile/ads/impl/lb0$a;

    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/lb0$a;->c(Lcom/yandex/mobile/ads/impl/lb0$a;)J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    :goto_0
    return-wide v0
.end method

.method public final e()Z
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/lb0;->a:Lcom/yandex/mobile/ads/impl/lb0$a;

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/lb0$a;->a()Z

    move-result p0

    return p0
.end method

.method public final f()V
    .locals 4

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/lb0;->a:Lcom/yandex/mobile/ads/impl/lb0$a;

    const-wide/16 v1, 0x0

    invoke-static {v0, v1, v2}, Lcom/yandex/mobile/ads/impl/lb0$a;->e(Lcom/yandex/mobile/ads/impl/lb0$a;J)V

    invoke-static {v0, v1, v2}, Lcom/yandex/mobile/ads/impl/lb0$a;->f(Lcom/yandex/mobile/ads/impl/lb0$a;J)V

    invoke-static {v0, v1, v2}, Lcom/yandex/mobile/ads/impl/lb0$a;->g(Lcom/yandex/mobile/ads/impl/lb0$a;J)V

    const/4 v3, 0x0

    invoke-static {v0, v3}, Lcom/yandex/mobile/ads/impl/lb0$a;->h(Lcom/yandex/mobile/ads/impl/lb0$a;I)V

    invoke-static {v0}, Lcom/yandex/mobile/ads/impl/lb0$a;->d(Lcom/yandex/mobile/ads/impl/lb0$a;)[Z

    move-result-object v0

    invoke-static {v0, v3}, Ljava/util/Arrays;->fill([ZZ)V

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/lb0;->b:Lcom/yandex/mobile/ads/impl/lb0$a;

    invoke-static {v0, v1, v2}, Lcom/yandex/mobile/ads/impl/lb0$a;->e(Lcom/yandex/mobile/ads/impl/lb0$a;J)V

    invoke-static {v0, v1, v2}, Lcom/yandex/mobile/ads/impl/lb0$a;->f(Lcom/yandex/mobile/ads/impl/lb0$a;J)V

    invoke-static {v0, v1, v2}, Lcom/yandex/mobile/ads/impl/lb0$a;->g(Lcom/yandex/mobile/ads/impl/lb0$a;J)V

    invoke-static {v0, v3}, Lcom/yandex/mobile/ads/impl/lb0$a;->h(Lcom/yandex/mobile/ads/impl/lb0$a;I)V

    invoke-static {v0}, Lcom/yandex/mobile/ads/impl/lb0$a;->d(Lcom/yandex/mobile/ads/impl/lb0$a;)[Z

    move-result-object v0

    invoke-static {v0, v3}, Ljava/util/Arrays;->fill([ZZ)V

    iput-boolean v3, p0, Lcom/yandex/mobile/ads/impl/lb0;->c:Z

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/yandex/mobile/ads/impl/lb0;->d:J

    iput v3, p0, Lcom/yandex/mobile/ads/impl/lb0;->e:I

    return-void
.end method
