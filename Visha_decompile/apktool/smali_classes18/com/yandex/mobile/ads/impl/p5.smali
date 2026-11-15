.class public final Lcom/yandex/mobile/ads/impl/p5;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lcom/google/android/exoplayer2/source/ads/b;

.field private b:Lcom/google/android/exoplayer2/source/ads/a;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/source/ads/b;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object p1, Lcom/google/android/exoplayer2/source/ads/a;->h:Lcom/google/android/exoplayer2/source/ads/a;

    const-string v0, "NONE"

    invoke-static {p1, v0}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/p5;->b:Lcom/google/android/exoplayer2/source/ads/a;

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/exoplayer2/source/ads/a;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/p5;->b:Lcom/google/android/exoplayer2/source/ads/a;

    return-object p0
.end method

.method public final a(Lcom/google/android/exoplayer2/source/ads/a;)V
    .locals 1

    .line 3
    const-string v0, "adPlaybackState"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/p5;->b:Lcom/google/android/exoplayer2/source/ads/a;

    .line 5
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/p5;->a:Lcom/google/android/exoplayer2/source/ads/b;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/google/android/exoplayer2/source/ads/b;->a(Lcom/google/android/exoplayer2/source/ads/a;)V

    :cond_0
    return-void
.end method

.method public final a(Lcom/google/android/exoplayer2/source/ads/b;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final b()V
    .locals 2

    sget-object v0, Lcom/google/android/exoplayer2/source/ads/a;->h:Lcom/google/android/exoplayer2/source/ads/a;

    const-string v1, "NONE"

    invoke-static {v0, v1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/yandex/mobile/ads/impl/p5;->b:Lcom/google/android/exoplayer2/source/ads/a;

    return-void
.end method
