.class public final Lcom/yandex/mobile/ads/impl/eg2;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/vi1;

.field private final b:Lcom/yandex/mobile/ads/impl/me2;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/vi1;Lcom/yandex/mobile/ads/impl/me2;)V
    .locals 1

    const-string v0, "playerStateHolder"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "videoCompletedNotifier"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/eg2;->a:Lcom/yandex/mobile/ads/impl/vi1;

    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/eg2;->b:Lcom/yandex/mobile/ads/impl/me2;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/exoplayer2/t;)V
    .locals 2

    const-string v0, "player"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/eg2;->a:Lcom/yandex/mobile/ads/impl/vi1;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/vi1;->c()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-interface {p1}, Lcom/google/android/exoplayer2/t;->isPlayingAd()Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/yandex/mobile/ads/impl/eg2;->b:Lcom/yandex/mobile/ads/impl/me2;

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/me2;->c()V

    iget-object p1, p0, Lcom/yandex/mobile/ads/impl/eg2;->b:Lcom/yandex/mobile/ads/impl/me2;

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/me2;->b()Z

    move-result p1

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/eg2;->a:Lcom/yandex/mobile/ads/impl/vi1;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/vi1;->b()Lcom/google/android/exoplayer2/a0;

    move-result-object v0

    const/4 v1, 0x0

    if-nez p1, :cond_1

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/a0;->u()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    move p1, v1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    if-nez p1, :cond_2

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/eg2;->a:Lcom/yandex/mobile/ads/impl/vi1;

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/vi1;->a()Lcom/google/android/exoplayer2/a0$b;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lcom/google/android/exoplayer2/a0;->j(ILcom/google/android/exoplayer2/a0$b;)Lcom/google/android/exoplayer2/a0$b;

    :cond_2
    return-void
.end method
