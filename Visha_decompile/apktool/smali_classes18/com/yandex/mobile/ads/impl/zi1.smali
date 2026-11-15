.class public final Lcom/yandex/mobile/ads/impl/zi1;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/b70;

.field private b:Ljava/lang/Float;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/b70;)V
    .locals 1

    const-string v0, "playerProvider"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/zi1;->a:Lcom/yandex/mobile/ads/impl/b70;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Float;
    .locals 0

    .line 5
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/zi1;->a:Lcom/yandex/mobile/ads/impl/b70;

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/b70;->a()Lcom/google/android/exoplayer2/t;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 6
    invoke-interface {p0}, Lcom/google/android/exoplayer2/t;->getVolume()F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public final a(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/zi1;->b:Ljava/lang/Float;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/zi1;->a()Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/mobile/ads/impl/zi1;->b:Ljava/lang/Float;

    .line 3
    :cond_0
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/zi1;->a:Lcom/yandex/mobile/ads/impl/b70;

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/b70;->a()Lcom/google/android/exoplayer2/t;

    move-result-object p0

    if-nez p0, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    invoke-interface {p0, p1}, Lcom/google/android/exoplayer2/t;->setVolume(F)V

    :goto_0
    return-void
.end method

.method public final b()V
    .locals 2

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/zi1;->b:Ljava/lang/Float;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/zi1;->a:Lcom/yandex/mobile/ads/impl/b70;

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/b70;->a()Lcom/google/android/exoplayer2/t;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v1, v0}, Lcom/google/android/exoplayer2/t;->setVolume(F)V

    :cond_1
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/yandex/mobile/ads/impl/zi1;->b:Ljava/lang/Float;

    return-void
.end method
