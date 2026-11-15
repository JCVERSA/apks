.class public final Lcom/yandex/mobile/ads/impl/l5;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/i80;

.field private final b:Lcom/yandex/mobile/ads/impl/le2;

.field private final c:Lcom/yandex/mobile/ads/impl/q9;

.field private final d:Lcom/yandex/mobile/ads/impl/o5;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/o9;Lcom/yandex/mobile/ads/impl/i80;Lcom/yandex/mobile/ads/impl/le2;Lcom/yandex/mobile/ads/impl/q9;Lcom/yandex/mobile/ads/impl/o5;)V
    .locals 1

    const-string v0, "adStateDataController"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "fakePositionConfigurator"

    invoke-static {p2, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "videoCompletedNotifier"

    invoke-static {p3, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "adStateHolder"

    invoke-static {p4, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "adPlaybackStateController"

    invoke-static {p5, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/l5;->a:Lcom/yandex/mobile/ads/impl/i80;

    iput-object p3, p0, Lcom/yandex/mobile/ads/impl/l5;->b:Lcom/yandex/mobile/ads/impl/le2;

    iput-object p4, p0, Lcom/yandex/mobile/ads/impl/l5;->c:Lcom/yandex/mobile/ads/impl/q9;

    iput-object p5, p0, Lcom/yandex/mobile/ads/impl/l5;->d:Lcom/yandex/mobile/ads/impl/o5;

    return-void
.end method


# virtual methods
.method public final a(Landroidx/media3/common/Player;Z)V
    .locals 9

    const-string v0, "player"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/l5;->b:Lcom/yandex/mobile/ads/impl/le2;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/le2;->b()Z

    move-result v0

    invoke-interface {p1}, Landroidx/media3/common/Player;->getCurrentAdGroupIndex()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/l5;->d:Lcom/yandex/mobile/ads/impl/o5;

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/o5;->a()Landroidx/media3/common/AdPlaybackState;

    move-result-object v1

    invoke-interface {p1}, Landroidx/media3/common/Player;->getContentPosition()J

    move-result-wide v3

    invoke-interface {p1}, Landroidx/media3/common/Player;->getContentDuration()J

    move-result-wide v5

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p1, v5, v7

    if-eqz p1, :cond_0

    cmp-long p1, v3, v7

    if-eqz p1, :cond_0

    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMicros(J)J

    move-result-wide v3

    invoke-virtual {p1, v5, v6}, Ljava/util/concurrent/TimeUnit;->toMicros(J)J

    move-result-wide v5

    invoke-virtual {v1, v3, v4, v5, v6}, Landroidx/media3/common/AdPlaybackState;->getAdGroupIndexForPositionUs(JJ)I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v2

    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/yandex/mobile/ads/impl/l5;->c:Lcom/yandex/mobile/ads/impl/q9;

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/q9;->b()Z

    move-result p1

    if-nez v0, :cond_3

    if-nez p2, :cond_3

    if-eq v1, v2, :cond_3

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/yandex/mobile/ads/impl/l5;->d:Lcom/yandex/mobile/ads/impl/o5;

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/o5;->a()Landroidx/media3/common/AdPlaybackState;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroidx/media3/common/AdPlaybackState;->getAdGroup(I)Landroidx/media3/common/AdPlaybackState$AdGroup;

    move-result-object p2

    iget-wide v2, p2, Landroidx/media3/common/AdPlaybackState$AdGroup;->timeUs:J

    const-wide/high16 v4, -0x8000000000000000L

    cmp-long p2, v2, v4

    if-nez p2, :cond_2

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/l5;->b:Lcom/yandex/mobile/ads/impl/le2;

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/le2;->a()V

    goto :goto_1

    :cond_2
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/l5;->a:Lcom/yandex/mobile/ads/impl/i80;

    invoke-virtual {p0, p1, v1}, Lcom/yandex/mobile/ads/impl/i80;->a(Landroidx/media3/common/AdPlaybackState;I)V

    :cond_3
    :goto_1
    return-void
.end method
