.class public final Lcom/yandex/mobile/ads/impl/j60;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/impl/kt;


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/r9;

.field private final b:Lcom/yandex/mobile/ads/impl/bm1;

.field private final c:Lcom/yandex/mobile/ads/impl/d6;

.field private final d:Lcom/yandex/mobile/ads/impl/b6;

.field private final e:Lcom/yandex/mobile/ads/impl/z5;

.field private final f:Lcom/yandex/mobile/ads/impl/vi1;

.field private final g:Lcom/yandex/mobile/ads/impl/zi1;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/r9;Lcom/yandex/mobile/ads/impl/ti1;Lcom/yandex/mobile/ads/impl/sl1;Lcom/yandex/mobile/ads/impl/d6;Lcom/yandex/mobile/ads/impl/b6;Lcom/yandex/mobile/ads/impl/z5;Lcom/yandex/mobile/ads/impl/vi1;Lcom/yandex/mobile/ads/impl/zi1;)V
    .locals 1

    const-string v0, "adStateHolder"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "playerStateController"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "progressProvider"

    invoke-static {p3, p2}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "prepareController"

    invoke-static {p4, p2}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "playController"

    invoke-static {p5, p2}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "adPlayerEventsController"

    invoke-static {p6, p2}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "playerStateHolder"

    invoke-static {p7, p2}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "playerVolumeController"

    invoke-static {p8, p2}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/j60;->a:Lcom/yandex/mobile/ads/impl/r9;

    iput-object p3, p0, Lcom/yandex/mobile/ads/impl/j60;->b:Lcom/yandex/mobile/ads/impl/bm1;

    iput-object p4, p0, Lcom/yandex/mobile/ads/impl/j60;->c:Lcom/yandex/mobile/ads/impl/d6;

    iput-object p5, p0, Lcom/yandex/mobile/ads/impl/j60;->d:Lcom/yandex/mobile/ads/impl/b6;

    iput-object p6, p0, Lcom/yandex/mobile/ads/impl/j60;->e:Lcom/yandex/mobile/ads/impl/z5;

    iput-object p7, p0, Lcom/yandex/mobile/ads/impl/j60;->f:Lcom/yandex/mobile/ads/impl/vi1;

    iput-object p8, p0, Lcom/yandex/mobile/ads/impl/j60;->g:Lcom/yandex/mobile/ads/impl/zi1;

    return-void
.end method


# virtual methods
.method public final a(Lcom/yandex/mobile/ads/impl/go0;)J
    .locals 1

    .line 1
    const-string v0, "videoAd"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/j60;->b:Lcom/yandex/mobile/ads/impl/bm1;

    invoke-interface {p0}, Lcom/yandex/mobile/ads/impl/bm1;->a()Lcom/yandex/mobile/ads/impl/ci1;

    move-result-object p0

    .line 3
    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/ci1;->b()J

    move-result-wide p0

    return-wide p0
.end method

.method public final a(Lcom/yandex/mobile/ads/impl/go0;F)V
    .locals 1

    .line 5
    const-string v0, "videoAd"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/j60;->g:Lcom/yandex/mobile/ads/impl/zi1;

    invoke-virtual {v0, p2}, Lcom/yandex/mobile/ads/impl/zi1;->a(F)V

    .line 7
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/j60;->e:Lcom/yandex/mobile/ads/impl/z5;

    invoke-virtual {p0, p1, p2}, Lcom/yandex/mobile/ads/impl/z5;->a(Lcom/yandex/mobile/ads/impl/go0;F)V

    return-void
.end method

.method public final a(Lcom/yandex/mobile/ads/impl/km0;)V
    .locals 0

    .line 4
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/j60;->e:Lcom/yandex/mobile/ads/impl/z5;

    invoke-virtual {p0, p1}, Lcom/yandex/mobile/ads/impl/z5;->a(Lcom/yandex/mobile/ads/impl/km0;)V

    return-void
.end method

.method public final b(Lcom/yandex/mobile/ads/impl/go0;)J
    .locals 1

    const-string v0, "videoAd"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/j60;->b:Lcom/yandex/mobile/ads/impl/bm1;

    invoke-interface {p0}, Lcom/yandex/mobile/ads/impl/bm1;->a()Lcom/yandex/mobile/ads/impl/ci1;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/ci1;->c()J

    move-result-wide p0

    return-wide p0
.end method

.method public final c(Lcom/yandex/mobile/ads/impl/go0;)V
    .locals 1

    const-string v0, "videoAd"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/j60;->d:Lcom/yandex/mobile/ads/impl/b6;

    invoke-virtual {p0, p1}, Lcom/yandex/mobile/ads/impl/b6;->b(Lcom/yandex/mobile/ads/impl/go0;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/sp0;->b([Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public final d(Lcom/yandex/mobile/ads/impl/go0;)V
    .locals 1

    const-string v0, "videoAd"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/j60;->c:Lcom/yandex/mobile/ads/impl/d6;

    invoke-virtual {p0, p1}, Lcom/yandex/mobile/ads/impl/d6;->a(Lcom/yandex/mobile/ads/impl/go0;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/sp0;->b([Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public final e(Lcom/yandex/mobile/ads/impl/go0;)V
    .locals 0

    const-string p0, "videoAd"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final f(Lcom/yandex/mobile/ads/impl/go0;)V
    .locals 1

    const-string v0, "videoAd"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/j60;->d:Lcom/yandex/mobile/ads/impl/b6;

    invoke-virtual {p0, p1}, Lcom/yandex/mobile/ads/impl/b6;->a(Lcom/yandex/mobile/ads/impl/go0;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/sp0;->b([Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public final g(Lcom/yandex/mobile/ads/impl/go0;)V
    .locals 1

    const-string v0, "videoAd"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/j60;->d:Lcom/yandex/mobile/ads/impl/b6;

    invoke-virtual {p0, p1}, Lcom/yandex/mobile/ads/impl/b6;->c(Lcom/yandex/mobile/ads/impl/go0;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/sp0;->b([Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public final h(Lcom/yandex/mobile/ads/impl/go0;)V
    .locals 1

    const-string v0, "videoAd"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/j60;->d:Lcom/yandex/mobile/ads/impl/b6;

    invoke-virtual {p0, p1}, Lcom/yandex/mobile/ads/impl/b6;->d(Lcom/yandex/mobile/ads/impl/go0;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/sp0;->b([Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public final i(Lcom/yandex/mobile/ads/impl/go0;)V
    .locals 1

    const-string v0, "videoAd"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/j60;->d:Lcom/yandex/mobile/ads/impl/b6;

    invoke-virtual {p0, p1}, Lcom/yandex/mobile/ads/impl/b6;->e(Lcom/yandex/mobile/ads/impl/go0;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/sp0;->b([Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public final j(Lcom/yandex/mobile/ads/impl/go0;)Z
    .locals 1

    const-string v0, "videoAd"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/j60;->a:Lcom/yandex/mobile/ads/impl/r9;

    invoke-virtual {v0, p1}, Lcom/yandex/mobile/ads/impl/r9;->a(Lcom/yandex/mobile/ads/impl/go0;)Lcom/yandex/mobile/ads/impl/wm0;

    move-result-object p1

    sget-object v0, Lcom/yandex/mobile/ads/impl/wm0;->b:Lcom/yandex/mobile/ads/impl/wm0;

    if-eq p1, v0, :cond_0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/j60;->f:Lcom/yandex/mobile/ads/impl/vi1;

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/vi1;->c()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final k(Lcom/yandex/mobile/ads/impl/go0;)F
    .locals 1

    const-string v0, "videoAd"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/j60;->g:Lcom/yandex/mobile/ads/impl/zi1;

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/zi1;->a()Ljava/lang/Float;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
