.class public final Lcom/yandex/mobile/ads/impl/pi1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/impl/sj1;


# instance fields
.field private final a:Lcom/google/android/exoplayer2/t;

.field private final b:Lcom/yandex/mobile/ads/impl/vi1;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/t;Lcom/yandex/mobile/ads/impl/vi1;)V
    .locals 1

    const-string v0, "player"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "playerStateHolder"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/pi1;->a:Lcom/google/android/exoplayer2/t;

    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/pi1;->b:Lcom/yandex/mobile/ads/impl/vi1;

    return-void
.end method


# virtual methods
.method public final a()J
    .locals 4

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/pi1;->b:Lcom/yandex/mobile/ads/impl/vi1;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/vi1;->b()Lcom/google/android/exoplayer2/a0;

    move-result-object v0

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/pi1;->b:Lcom/yandex/mobile/ads/impl/vi1;

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/vi1;->a()Lcom/google/android/exoplayer2/a0$b;

    move-result-object v1

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/pi1;->a:Lcom/google/android/exoplayer2/t;

    invoke-interface {p0}, Lcom/google/android/exoplayer2/t;->getContentPosition()J

    move-result-wide v2

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/a0;->u()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/google/android/exoplayer2/a0;->j(ILcom/google/android/exoplayer2/a0$b;)Lcom/google/android/exoplayer2/a0$b;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/a0$b;->p()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    sub-long/2addr v2, v0

    return-wide v2
.end method
