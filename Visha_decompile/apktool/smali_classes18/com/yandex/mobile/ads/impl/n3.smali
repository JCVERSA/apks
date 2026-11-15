.class public final Lcom/yandex/mobile/ads/impl/n3;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/ql;

.field private final b:Lcom/yandex/mobile/ads/impl/z5;

.field private final c:Lcom/yandex/mobile/ads/impl/r9;

.field private final d:Lcom/yandex/mobile/ads/impl/p5;

.field private final e:Lcom/yandex/mobile/ads/impl/b70;

.field private final f:Lcom/yandex/mobile/ads/impl/zi1;

.field private final g:Lcom/yandex/mobile/ads/impl/vi1;

.field private final h:Lcom/yandex/mobile/ads/impl/t5;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/ql;Lcom/yandex/mobile/ads/impl/p9;Lcom/yandex/mobile/ads/impl/ti1;Lcom/yandex/mobile/ads/impl/z5;Lcom/yandex/mobile/ads/impl/r9;Lcom/yandex/mobile/ads/impl/p5;Lcom/yandex/mobile/ads/impl/b70;Lcom/yandex/mobile/ads/impl/zi1;Lcom/yandex/mobile/ads/impl/vi1;Lcom/yandex/mobile/ads/impl/t5;)V
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

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/n3;->a:Lcom/yandex/mobile/ads/impl/ql;

    iput-object p4, p0, Lcom/yandex/mobile/ads/impl/n3;->b:Lcom/yandex/mobile/ads/impl/z5;

    iput-object p5, p0, Lcom/yandex/mobile/ads/impl/n3;->c:Lcom/yandex/mobile/ads/impl/r9;

    iput-object p6, p0, Lcom/yandex/mobile/ads/impl/n3;->d:Lcom/yandex/mobile/ads/impl/p5;

    iput-object p7, p0, Lcom/yandex/mobile/ads/impl/n3;->e:Lcom/yandex/mobile/ads/impl/b70;

    iput-object p8, p0, Lcom/yandex/mobile/ads/impl/n3;->f:Lcom/yandex/mobile/ads/impl/zi1;

    iput-object p9, p0, Lcom/yandex/mobile/ads/impl/n3;->g:Lcom/yandex/mobile/ads/impl/vi1;

    iput-object p10, p0, Lcom/yandex/mobile/ads/impl/n3;->h:Lcom/yandex/mobile/ads/impl/t5;

    return-void
.end method


# virtual methods
.method public final a(Lcom/yandex/mobile/ads/impl/v4;Lcom/yandex/mobile/ads/impl/go0;)V
    .locals 7

    const-string v0, "videoAd"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adInfo"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/n3;->a:Lcom/yandex/mobile/ads/impl/ql;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/ql;->b()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/n3;->c:Lcom/yandex/mobile/ads/impl/r9;

    invoke-virtual {v0, p2}, Lcom/yandex/mobile/ads/impl/r9;->a(Lcom/yandex/mobile/ads/impl/go0;)Lcom/yandex/mobile/ads/impl/wm0;

    move-result-object v0

    sget-object v2, Lcom/yandex/mobile/ads/impl/wm0;->b:Lcom/yandex/mobile/ads/impl/wm0;

    if-ne v2, v0, :cond_1

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/n3;->d:Lcom/yandex/mobile/ads/impl/p5;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/p5;->a()Lcom/google/android/exoplayer2/source/ads/a;

    move-result-object v0

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/v4;->a()I

    move-result v2

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/v4;->b()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Lcom/google/android/exoplayer2/source/ads/a;->g(II)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/n3;->c:Lcom/yandex/mobile/ads/impl/r9;

    sget-object v2, Lcom/yandex/mobile/ads/impl/wm0;->f:Lcom/yandex/mobile/ads/impl/wm0;

    invoke-virtual {v1, p2, v2}, Lcom/yandex/mobile/ads/impl/r9;->a(Lcom/yandex/mobile/ads/impl/go0;Lcom/yandex/mobile/ads/impl/wm0;)V

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/v4;->a()I

    move-result p2

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/v4;->b()I

    move-result p1

    invoke-virtual {v0, p2, p1}, Lcom/google/android/exoplayer2/source/ads/a;->p(II)Lcom/google/android/exoplayer2/source/ads/a;

    move-result-object p1

    const-string p2, "withSkippedAd(...)"

    invoke-static {p1, p2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/n3;->d:Lcom/yandex/mobile/ads/impl/p5;

    invoke-virtual {p0, p1}, Lcom/yandex/mobile/ads/impl/p5;->a(Lcom/google/android/exoplayer2/source/ads/a;)V

    goto/16 :goto_2

    :cond_0
    new-array p0, v1, [Ljava/lang/Object;

    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/sp0;->b([Ljava/lang/Object;)V

    goto/16 :goto_2

    :cond_1
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/n3;->e:Lcom/yandex/mobile/ads/impl/b70;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/b70;->b()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/v4;->a()I

    move-result v0

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/v4;->b()I

    move-result p1

    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/n3;->d:Lcom/yandex/mobile/ads/impl/p5;

    invoke-virtual {v2}, Lcom/yandex/mobile/ads/impl/p5;->a()Lcom/google/android/exoplayer2/source/ads/a;

    move-result-object v2

    invoke-virtual {v2, v0, p1}, Lcom/google/android/exoplayer2/source/ads/a;->g(II)Z

    move-result v3

    iget-object v4, p0, Lcom/yandex/mobile/ads/impl/n3;->h:Lcom/yandex/mobile/ads/impl/t5;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v4, "adPlaybackState"

    invoke-static {v2, v4}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget v4, v2, Lcom/google/android/exoplayer2/source/ads/a;->c:I

    if-ge v0, v4, :cond_2

    invoke-virtual {v2, v0}, Lcom/google/android/exoplayer2/source/ads/a;->d(I)Lcom/google/android/exoplayer2/source/ads/a$a;

    move-result-object v4

    const-string v5, "getAdGroup(...)"

    invoke-static {v4, v5}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iget v5, v4, Lcom/google/android/exoplayer2/source/ads/a$a;->c:I

    const/4 v6, -0x1

    if-eq v5, v6, :cond_2

    if-ge p1, v5, :cond_2

    iget-object v4, v4, Lcom/google/android/exoplayer2/source/ads/a$a;->e:[I

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

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/n3;->c:Lcom/yandex/mobile/ads/impl/r9;

    sget-object v3, Lcom/yandex/mobile/ads/impl/wm0;->h:Lcom/yandex/mobile/ads/impl/wm0;

    invoke-virtual {v1, p2, v3}, Lcom/yandex/mobile/ads/impl/r9;->a(Lcom/yandex/mobile/ads/impl/go0;Lcom/yandex/mobile/ads/impl/wm0;)V

    invoke-virtual {v2, v0, p1}, Lcom/google/android/exoplayer2/source/ads/a;->o(II)Lcom/google/android/exoplayer2/source/ads/a;

    move-result-object p1

    const-wide/16 v0, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/google/android/exoplayer2/source/ads/a;->l(J)Lcom/google/android/exoplayer2/source/ads/a;

    move-result-object p1

    const-string v0, "withAdResumePositionUs(...)"

    invoke-static {p1, v0}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/n3;->d:Lcom/yandex/mobile/ads/impl/p5;

    invoke-virtual {v0, p1}, Lcom/yandex/mobile/ads/impl/p5;->a(Lcom/google/android/exoplayer2/source/ads/a;)V

    iget-object p1, p0, Lcom/yandex/mobile/ads/impl/n3;->g:Lcom/yandex/mobile/ads/impl/vi1;

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/vi1;->c()Z

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/yandex/mobile/ads/impl/n3;->c:Lcom/yandex/mobile/ads/impl/r9;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/yandex/mobile/ads/impl/r9;->a(Lcom/yandex/mobile/ads/impl/cj1;)V

    goto :goto_1

    :cond_3
    new-array p1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Lcom/yandex/mobile/ads/impl/sp0;->b([Ljava/lang/Object;)V

    :cond_4
    :goto_1
    iget-object p1, p0, Lcom/yandex/mobile/ads/impl/n3;->f:Lcom/yandex/mobile/ads/impl/zi1;

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/zi1;->b()V

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/n3;->b:Lcom/yandex/mobile/ads/impl/z5;

    invoke-virtual {p0, p2}, Lcom/yandex/mobile/ads/impl/z5;->g(Lcom/yandex/mobile/ads/impl/go0;)V

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
