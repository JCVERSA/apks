.class public final Lcom/yandex/mobile/ads/impl/m3;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/pl;

.field private final b:Lcom/yandex/mobile/ads/impl/y5;

.field private final c:Lcom/yandex/mobile/ads/impl/q9;

.field private final d:Lcom/yandex/mobile/ads/impl/o5;

.field private final e:Lcom/yandex/mobile/ads/impl/a70;

.field private final f:Lcom/yandex/mobile/ads/impl/yi1;

.field private final g:Lcom/yandex/mobile/ads/impl/ui1;

.field private final h:Lcom/yandex/mobile/ads/impl/s5;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/pl;Lcom/yandex/mobile/ads/impl/o9;Lcom/yandex/mobile/ads/impl/si1;Lcom/yandex/mobile/ads/impl/y5;Lcom/yandex/mobile/ads/impl/q9;Lcom/yandex/mobile/ads/impl/o5;Lcom/yandex/mobile/ads/impl/a70;Lcom/yandex/mobile/ads/impl/yi1;Lcom/yandex/mobile/ads/impl/ui1;Lcom/yandex/mobile/ads/impl/s5;)V
    .locals 1

    const-string v0, "bindingControllerHolder"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adStateDataController"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "playerStateController"

    invoke-static {p3, p2}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "adPlayerEventsController"

    invoke-static {p4, p2}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "adStateHolder"

    invoke-static {p5, p2}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "adPlaybackStateController"

    invoke-static {p6, p2}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "exoPlayerProvider"

    invoke-static {p7, p2}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "playerVolumeController"

    invoke-static {p8, p2}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "playerStateHolder"

    invoke-static {p9, p2}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "adPlaybackStateSkipValidator"

    invoke-static {p10, p2}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/m3;->a:Lcom/yandex/mobile/ads/impl/pl;

    iput-object p4, p0, Lcom/yandex/mobile/ads/impl/m3;->b:Lcom/yandex/mobile/ads/impl/y5;

    iput-object p5, p0, Lcom/yandex/mobile/ads/impl/m3;->c:Lcom/yandex/mobile/ads/impl/q9;

    iput-object p6, p0, Lcom/yandex/mobile/ads/impl/m3;->d:Lcom/yandex/mobile/ads/impl/o5;

    iput-object p7, p0, Lcom/yandex/mobile/ads/impl/m3;->e:Lcom/yandex/mobile/ads/impl/a70;

    iput-object p8, p0, Lcom/yandex/mobile/ads/impl/m3;->f:Lcom/yandex/mobile/ads/impl/yi1;

    iput-object p9, p0, Lcom/yandex/mobile/ads/impl/m3;->g:Lcom/yandex/mobile/ads/impl/ui1;

    iput-object p10, p0, Lcom/yandex/mobile/ads/impl/m3;->h:Lcom/yandex/mobile/ads/impl/s5;

    return-void
.end method


# virtual methods
.method public final a(Lcom/yandex/mobile/ads/impl/u4;Lcom/yandex/mobile/ads/impl/go0;)V
    .locals 7

    const-string v0, "videoAd"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adInfo"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/m3;->a:Lcom/yandex/mobile/ads/impl/pl;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/pl;->b()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/m3;->c:Lcom/yandex/mobile/ads/impl/q9;

    invoke-virtual {v0, p2}, Lcom/yandex/mobile/ads/impl/q9;->a(Lcom/yandex/mobile/ads/impl/go0;)Lcom/yandex/mobile/ads/impl/vm0;

    move-result-object v0

    sget-object v2, Lcom/yandex/mobile/ads/impl/vm0;->b:Lcom/yandex/mobile/ads/impl/vm0;

    if-ne v2, v0, :cond_1

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/m3;->d:Lcom/yandex/mobile/ads/impl/o5;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/o5;->a()Landroidx/media3/common/AdPlaybackState;

    move-result-object v0

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/u4;->a()I

    move-result v2

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/u4;->b()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroidx/media3/common/AdPlaybackState;->isAdInErrorState(II)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/m3;->c:Lcom/yandex/mobile/ads/impl/q9;

    sget-object v2, Lcom/yandex/mobile/ads/impl/vm0;->f:Lcom/yandex/mobile/ads/impl/vm0;

    invoke-virtual {v1, p2, v2}, Lcom/yandex/mobile/ads/impl/q9;->a(Lcom/yandex/mobile/ads/impl/go0;Lcom/yandex/mobile/ads/impl/vm0;)V

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/u4;->a()I

    move-result p2

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/u4;->b()I

    move-result p1

    invoke-virtual {v0, p2, p1}, Landroidx/media3/common/AdPlaybackState;->withSkippedAd(II)Landroidx/media3/common/AdPlaybackState;

    move-result-object p1

    const-string p2, "withSkippedAd(...)"

    invoke-static {p1, p2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/m3;->d:Lcom/yandex/mobile/ads/impl/o5;

    invoke-virtual {p0, p1}, Lcom/yandex/mobile/ads/impl/o5;->a(Landroidx/media3/common/AdPlaybackState;)V

    goto/16 :goto_2

    :cond_0
    new-array p0, v1, [Ljava/lang/Object;

    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/sp0;->b([Ljava/lang/Object;)V

    goto/16 :goto_2

    :cond_1
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/m3;->e:Lcom/yandex/mobile/ads/impl/a70;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/a70;->b()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/u4;->a()I

    move-result v0

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/u4;->b()I

    move-result p1

    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/m3;->d:Lcom/yandex/mobile/ads/impl/o5;

    invoke-virtual {v2}, Lcom/yandex/mobile/ads/impl/o5;->a()Landroidx/media3/common/AdPlaybackState;

    move-result-object v2

    invoke-virtual {v2, v0, p1}, Landroidx/media3/common/AdPlaybackState;->isAdInErrorState(II)Z

    move-result v3

    iget-object v4, p0, Lcom/yandex/mobile/ads/impl/m3;->h:Lcom/yandex/mobile/ads/impl/s5;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v4, "adPlaybackState"

    invoke-static {v2, v4}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget v4, v2, Landroidx/media3/common/AdPlaybackState;->adGroupCount:I

    if-ge v0, v4, :cond_2

    invoke-virtual {v2, v0}, Landroidx/media3/common/AdPlaybackState;->getAdGroup(I)Landroidx/media3/common/AdPlaybackState$AdGroup;

    move-result-object v4

    const-string v5, "getAdGroup(...)"

    invoke-static {v4, v5}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iget v5, v4, Landroidx/media3/common/AdPlaybackState$AdGroup;->count:I

    const/4 v6, -0x1

    if-eq v5, v6, :cond_2

    if-ge p1, v5, :cond_2

    iget-object v4, v4, Landroidx/media3/common/AdPlaybackState$AdGroup;->states:[I

    aget v4, v4, p1

    const/4 v5, 0x2

    if-ne v4, v5, :cond_2

    const/4 v4, 0x1

    goto :goto_0

    :cond_2
    move v4, v1

    :goto_0
    if-nez v3, :cond_3

    if-nez v4, :cond_3

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/m3;->c:Lcom/yandex/mobile/ads/impl/q9;

    sget-object v3, Lcom/yandex/mobile/ads/impl/vm0;->h:Lcom/yandex/mobile/ads/impl/vm0;

    invoke-virtual {v1, p2, v3}, Lcom/yandex/mobile/ads/impl/q9;->a(Lcom/yandex/mobile/ads/impl/go0;Lcom/yandex/mobile/ads/impl/vm0;)V

    invoke-virtual {v2, v0, p1}, Landroidx/media3/common/AdPlaybackState;->withPlayedAd(II)Landroidx/media3/common/AdPlaybackState;

    move-result-object p1

    const-wide/16 v0, 0x0

    invoke-virtual {p1, v0, v1}, Landroidx/media3/common/AdPlaybackState;->withAdResumePositionUs(J)Landroidx/media3/common/AdPlaybackState;

    move-result-object p1

    const-string v0, "withAdResumePositionUs(...)"

    invoke-static {p1, v0}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/m3;->d:Lcom/yandex/mobile/ads/impl/o5;

    invoke-virtual {v0, p1}, Lcom/yandex/mobile/ads/impl/o5;->a(Landroidx/media3/common/AdPlaybackState;)V

    iget-object p1, p0, Lcom/yandex/mobile/ads/impl/m3;->g:Lcom/yandex/mobile/ads/impl/ui1;

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/ui1;->c()Z

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/yandex/mobile/ads/impl/m3;->c:Lcom/yandex/mobile/ads/impl/q9;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/yandex/mobile/ads/impl/q9;->a(Lcom/yandex/mobile/ads/impl/bj1;)V

    goto :goto_1

    :cond_3
    new-array p1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Lcom/yandex/mobile/ads/impl/sp0;->b([Ljava/lang/Object;)V

    :cond_4
    :goto_1
    iget-object p1, p0, Lcom/yandex/mobile/ads/impl/m3;->f:Lcom/yandex/mobile/ads/impl/yi1;

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/yi1;->b()V

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/m3;->b:Lcom/yandex/mobile/ads/impl/y5;

    invoke-virtual {p0, p2}, Lcom/yandex/mobile/ads/impl/y5;->g(Lcom/yandex/mobile/ads/impl/go0;)V

    goto :goto_2

    :cond_5
    new-array p0, v1, [Ljava/lang/Object;

    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/sp0;->b([Ljava/lang/Object;)V

    goto :goto_2

    :cond_6
    new-array p0, v1, [Ljava/lang/Object;

    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/sp0;->f([Ljava/lang/Object;)V

    :goto_2
    return-void
.end method
