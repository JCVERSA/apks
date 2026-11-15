.class public final Lcom/yandex/mobile/ads/impl/l22;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/impl/fv0;


# instance fields
.field private final b:Lcom/yandex/mobile/ads/impl/jp;

.field private c:Z

.field private d:J

.field private e:J

.field private f:Lcom/yandex/mobile/ads/impl/bi1;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/y32;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/l22;->b:Lcom/yandex/mobile/ads/impl/jp;

    sget-object p1, Lcom/yandex/mobile/ads/impl/bi1;->e:Lcom/yandex/mobile/ads/impl/bi1;

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/l22;->f:Lcom/yandex/mobile/ads/impl/bi1;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 7
    iget-boolean v0, p0, Lcom/yandex/mobile/ads/impl/l22;->c:Z

    if-nez v0, :cond_0

    .line 8
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/l22;->b:Lcom/yandex/mobile/ads/impl/jp;

    invoke-interface {v0}, Lcom/yandex/mobile/ads/impl/jp;->b()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/yandex/mobile/ads/impl/l22;->e:J

    const/4 v0, 0x1

    .line 9
    iput-boolean v0, p0, Lcom/yandex/mobile/ads/impl/l22;->c:Z

    :cond_0
    return-void
.end method

.method public final a(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/yandex/mobile/ads/impl/l22;->d:J

    .line 2
    iget-boolean p1, p0, Lcom/yandex/mobile/ads/impl/l22;->c:Z

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/yandex/mobile/ads/impl/l22;->b:Lcom/yandex/mobile/ads/impl/jp;

    invoke-interface {p1}, Lcom/yandex/mobile/ads/impl/jp;->b()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/yandex/mobile/ads/impl/l22;->e:J

    :cond_0
    return-void
.end method

.method public final a(Lcom/yandex/mobile/ads/impl/bi1;)V
    .locals 2

    .line 4
    iget-boolean v0, p0, Lcom/yandex/mobile/ads/impl/l22;->c:Z

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/l22;->o()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/yandex/mobile/ads/impl/l22;->a(J)V

    .line 6
    :cond_0
    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/l22;->f:Lcom/yandex/mobile/ads/impl/bi1;

    return-void
.end method

.method public final b()V
    .locals 2

    iget-boolean v0, p0, Lcom/yandex/mobile/ads/impl/l22;->c:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/l22;->o()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/yandex/mobile/ads/impl/l22;->a(J)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/yandex/mobile/ads/impl/l22;->c:Z

    :cond_0
    return-void
.end method

.method public final getPlaybackParameters()Lcom/yandex/mobile/ads/impl/bi1;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/l22;->f:Lcom/yandex/mobile/ads/impl/bi1;

    return-object p0
.end method

.method public final o()J
    .locals 6

    iget-wide v0, p0, Lcom/yandex/mobile/ads/impl/l22;->d:J

    iget-boolean v2, p0, Lcom/yandex/mobile/ads/impl/l22;->c:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/l22;->b:Lcom/yandex/mobile/ads/impl/jp;

    invoke-interface {v2}, Lcom/yandex/mobile/ads/impl/jp;->b()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/yandex/mobile/ads/impl/l22;->e:J

    sub-long/2addr v2, v4

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/l22;->f:Lcom/yandex/mobile/ads/impl/bi1;

    iget v4, p0, Lcom/yandex/mobile/ads/impl/bi1;->b:F

    const/high16 v5, 0x3f800000    # 1.0f

    cmpl-float v4, v4, v5

    if-nez v4, :cond_0

    invoke-static {v2, v3}, Lcom/yandex/mobile/ads/impl/f92;->a(J)J

    move-result-wide v2

    :goto_0
    add-long/2addr v0, v2

    goto :goto_1

    :cond_0
    invoke-virtual {p0, v2, v3}, Lcom/yandex/mobile/ads/impl/bi1;->a(J)J

    move-result-wide v2

    goto :goto_0

    :cond_1
    :goto_1
    return-wide v0
.end method
