.class public final Lcom/yandex/mobile/ads/impl/vi1;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/google/android/exoplayer2/a0$b;

.field private b:Lcom/google/android/exoplayer2/a0;

.field private c:Z


# direct methods
.method public synthetic constructor <init>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/google/android/exoplayer2/a0$b;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/a0$b;-><init>()V

    .line 2
    sget-object v1, Lcom/google/android/exoplayer2/a0;->b:Lcom/google/android/exoplayer2/a0;

    const-string v2, "EMPTY"

    invoke-static {v1, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 3
    invoke-direct {p0, v0, v1, v2}, Lcom/yandex/mobile/ads/impl/vi1;-><init>(Lcom/google/android/exoplayer2/a0$b;Lcom/google/android/exoplayer2/a0;Z)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/exoplayer2/a0$b;Lcom/google/android/exoplayer2/a0;Z)V
    .locals 1

    .line 4
    const-string v0, "period"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "timeline"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/vi1;->a:Lcom/google/android/exoplayer2/a0$b;

    .line 7
    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/vi1;->b:Lcom/google/android/exoplayer2/a0;

    .line 8
    iput-boolean p3, p0, Lcom/yandex/mobile/ads/impl/vi1;->c:Z

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/exoplayer2/a0$b;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/vi1;->a:Lcom/google/android/exoplayer2/a0$b;

    return-object p0
.end method

.method public final a(Lcom/google/android/exoplayer2/a0;)V
    .locals 1

    .line 3
    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/vi1;->b:Lcom/google/android/exoplayer2/a0;

    return-void
.end method

.method public final a(Z)V
    .locals 0

    .line 2
    iput-boolean p1, p0, Lcom/yandex/mobile/ads/impl/vi1;->c:Z

    return-void
.end method

.method public final b()Lcom/google/android/exoplayer2/a0;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/vi1;->b:Lcom/google/android/exoplayer2/a0;

    return-object p0
.end method

.method public final c()Z
    .locals 0

    iget-boolean p0, p0, Lcom/yandex/mobile/ads/impl/vi1;->c:Z

    return p0
.end method
