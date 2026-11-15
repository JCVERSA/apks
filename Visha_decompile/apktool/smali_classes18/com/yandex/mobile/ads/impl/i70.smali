.class public final Lcom/yandex/mobile/ads/impl/i70;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/impl/sa1;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/mobile/ads/impl/i70$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/n60;

.field private final b:Lcom/yandex/mobile/ads/impl/ax0;

.field private final c:Lcom/yandex/mobile/ads/impl/mf2;

.field private final d:Lcom/yandex/mobile/ads/impl/ra1;

.field private final e:Lcom/yandex/mobile/ads/impl/wf2;

.field private final f:Lcom/yandex/mobile/ads/impl/i70$a;

.field private final g:Lcom/yandex/mobile/ads/impl/z60;

.field private h:Lcom/yandex/mobile/ads/impl/kb1;

.field private i:Lcom/yandex/mobile/ads/impl/yc2;

.field private j:Z

.field private k:Z


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/n60;Lcom/yandex/mobile/ads/impl/ax0;Lcom/yandex/mobile/ads/impl/mf2;Lcom/yandex/mobile/ads/impl/ra1;Lcom/yandex/mobile/ads/impl/wf2;)V
    .locals 1

    const-string v0, "exoPlayer"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mediaSourceProvider"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "playerEventsReporter"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "videoAdPlayerErrorConverter"

    invoke-static {p4, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "videoScaleController"

    invoke-static {p5, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/i70;->a:Lcom/yandex/mobile/ads/impl/n60;

    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/i70;->b:Lcom/yandex/mobile/ads/impl/ax0;

    iput-object p3, p0, Lcom/yandex/mobile/ads/impl/i70;->c:Lcom/yandex/mobile/ads/impl/mf2;

    iput-object p4, p0, Lcom/yandex/mobile/ads/impl/i70;->d:Lcom/yandex/mobile/ads/impl/ra1;

    iput-object p5, p0, Lcom/yandex/mobile/ads/impl/i70;->e:Lcom/yandex/mobile/ads/impl/wf2;

    new-instance p2, Lcom/yandex/mobile/ads/impl/i70$a;

    invoke-direct {p2, p0}, Lcom/yandex/mobile/ads/impl/i70$a;-><init>(Lcom/yandex/mobile/ads/impl/i70;)V

    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/i70;->f:Lcom/yandex/mobile/ads/impl/i70$a;

    new-instance p3, Lcom/yandex/mobile/ads/impl/z60;

    invoke-direct {p3, p2}, Lcom/yandex/mobile/ads/impl/z60;-><init>(Lcom/yandex/mobile/ads/impl/hi1$b;)V

    iput-object p3, p0, Lcom/yandex/mobile/ads/impl/i70;->g:Lcom/yandex/mobile/ads/impl/z60;

    invoke-interface {p1, p2}, Lcom/yandex/mobile/ads/impl/hi1;->b(Lcom/yandex/mobile/ads/impl/hi1$b;)V

    invoke-interface {p1, p5}, Lcom/yandex/mobile/ads/impl/hi1;->b(Lcom/yandex/mobile/ads/impl/hi1$b;)V

    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/e6;->a(Lcom/yandex/mobile/ads/impl/i70;)V

    return-void
.end method

.method public static final synthetic a(Lcom/yandex/mobile/ads/impl/i70;)Lcom/yandex/mobile/ads/impl/n60;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/i70;->a:Lcom/yandex/mobile/ads/impl/n60;

    return-object p0
.end method

.method public static final synthetic b(Lcom/yandex/mobile/ads/impl/i70;)Lcom/yandex/mobile/ads/impl/z60;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/i70;->g:Lcom/yandex/mobile/ads/impl/z60;

    return-object p0
.end method

.method public static final synthetic c(Lcom/yandex/mobile/ads/impl/i70;)Lcom/yandex/mobile/ads/impl/mf2;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/i70;->c:Lcom/yandex/mobile/ads/impl/mf2;

    return-object p0
.end method

.method public static final synthetic d(Lcom/yandex/mobile/ads/impl/i70;)Lcom/yandex/mobile/ads/impl/rc2;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/i70;->h:Lcom/yandex/mobile/ads/impl/kb1;

    return-object p0
.end method

.method public static final synthetic e(Lcom/yandex/mobile/ads/impl/i70;)Lcom/yandex/mobile/ads/impl/ra1;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/i70;->d:Lcom/yandex/mobile/ads/impl/ra1;

    return-object p0
.end method

.method public static final synthetic f(Lcom/yandex/mobile/ads/impl/i70;)Lcom/yandex/mobile/ads/impl/yc2;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/i70;->i:Lcom/yandex/mobile/ads/impl/yc2;

    return-object p0
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 26
    iget-boolean v0, p0, Lcom/yandex/mobile/ads/impl/i70;->j:Z

    if-nez v0, :cond_1

    .line 27
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/i70;->i:Lcom/yandex/mobile/ads/impl/yc2;

    .line 28
    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/i70;->h:Lcom/yandex/mobile/ads/impl/kb1;

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 29
    invoke-interface {v0, v1}, Lcom/yandex/mobile/ads/impl/yc2;->e(Lcom/yandex/mobile/ads/impl/rc2;)V

    :cond_0
    const/4 v0, 0x1

    .line 30
    iput-boolean v0, p0, Lcom/yandex/mobile/ads/impl/i70;->j:Z

    const/4 v0, 0x0

    .line 31
    iput-boolean v0, p0, Lcom/yandex/mobile/ads/impl/i70;->k:Z

    .line 32
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/i70;->g:Lcom/yandex/mobile/ads/impl/z60;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/z60;->b()V

    .line 33
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/i70;->a:Lcom/yandex/mobile/ads/impl/n60;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/yandex/mobile/ads/impl/hi1;->setVideoTextureView(Landroid/view/TextureView;)V

    .line 34
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/i70;->e:Lcom/yandex/mobile/ads/impl/wf2;

    invoke-virtual {v0, v1}, Lcom/yandex/mobile/ads/impl/wf2;->a(Landroid/view/TextureView;)V

    .line 35
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/i70;->a:Lcom/yandex/mobile/ads/impl/n60;

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/i70;->f:Lcom/yandex/mobile/ads/impl/i70$a;

    invoke-interface {v0, v1}, Lcom/yandex/mobile/ads/impl/hi1;->a(Lcom/yandex/mobile/ads/impl/hi1$b;)V

    .line 36
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/i70;->a:Lcom/yandex/mobile/ads/impl/n60;

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/i70;->e:Lcom/yandex/mobile/ads/impl/wf2;

    invoke-interface {v0, v1}, Lcom/yandex/mobile/ads/impl/hi1;->a(Lcom/yandex/mobile/ads/impl/hi1$b;)V

    .line 37
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/i70;->a:Lcom/yandex/mobile/ads/impl/n60;

    invoke-interface {p0}, Lcom/yandex/mobile/ads/impl/hi1;->release()V

    :cond_1
    return-void
.end method

.method public final a(Landroid/view/TextureView;)V
    .locals 1

    .line 21
    iget-boolean v0, p0, Lcom/yandex/mobile/ads/impl/i70;->j:Z

    if-nez v0, :cond_0

    .line 22
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/i70;->e:Lcom/yandex/mobile/ads/impl/wf2;

    invoke-virtual {v0, p1}, Lcom/yandex/mobile/ads/impl/wf2;->a(Landroid/view/TextureView;)V

    .line 23
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/i70;->a:Lcom/yandex/mobile/ads/impl/n60;

    invoke-interface {p0, p1}, Lcom/yandex/mobile/ads/impl/hi1;->setVideoTextureView(Landroid/view/TextureView;)V

    :cond_0
    return-void
.end method

.method public final a(Lcom/yandex/mobile/ads/impl/kb1;)V
    .locals 2

    .line 12
    const-string v0, "playbackInfo"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/i70;->h:Lcom/yandex/mobile/ads/impl/kb1;

    .line 14
    iget-boolean v0, p0, Lcom/yandex/mobile/ads/impl/i70;->j:Z

    if-nez v0, :cond_0

    .line 15
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/i70;->b:Lcom/yandex/mobile/ads/impl/ax0;

    invoke-virtual {v0, p1}, Lcom/yandex/mobile/ads/impl/ax0;->a(Lcom/yandex/mobile/ads/impl/rc2;)Lcom/yandex/mobile/ads/impl/gm1;

    move-result-object p1

    .line 16
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/i70;->a:Lcom/yandex/mobile/ads/impl/n60;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/yandex/mobile/ads/impl/hi1;->setPlayWhenReady(Z)V

    .line 17
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/i70;->a:Lcom/yandex/mobile/ads/impl/n60;

    invoke-interface {v0, p1}, Lcom/yandex/mobile/ads/impl/n60;->a(Lcom/yandex/mobile/ads/impl/gm1;)V

    .line 18
    iget-object p1, p0, Lcom/yandex/mobile/ads/impl/i70;->a:Lcom/yandex/mobile/ads/impl/n60;

    invoke-interface {p1}, Lcom/yandex/mobile/ads/impl/hi1;->prepare()V

    .line 19
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/i70;->g:Lcom/yandex/mobile/ads/impl/z60;

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/z60;->a()V

    :cond_0
    return-void
.end method

.method public final a(Lcom/yandex/mobile/ads/impl/xc2;)V
    .locals 1

    .line 2
    const-string v0, "error"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-boolean p1, p0, Lcom/yandex/mobile/ads/impl/i70;->j:Z

    if-nez p1, :cond_0

    const/4 p1, 0x1

    .line 4
    iput-boolean p1, p0, Lcom/yandex/mobile/ads/impl/i70;->j:Z

    const/4 p1, 0x0

    .line 5
    iput-boolean p1, p0, Lcom/yandex/mobile/ads/impl/i70;->k:Z

    .line 6
    iget-object p1, p0, Lcom/yandex/mobile/ads/impl/i70;->g:Lcom/yandex/mobile/ads/impl/z60;

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/z60;->b()V

    .line 7
    iget-object p1, p0, Lcom/yandex/mobile/ads/impl/i70;->a:Lcom/yandex/mobile/ads/impl/n60;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/yandex/mobile/ads/impl/hi1;->setVideoTextureView(Landroid/view/TextureView;)V

    .line 8
    iget-object p1, p0, Lcom/yandex/mobile/ads/impl/i70;->e:Lcom/yandex/mobile/ads/impl/wf2;

    invoke-virtual {p1, v0}, Lcom/yandex/mobile/ads/impl/wf2;->a(Landroid/view/TextureView;)V

    .line 9
    iget-object p1, p0, Lcom/yandex/mobile/ads/impl/i70;->a:Lcom/yandex/mobile/ads/impl/n60;

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/i70;->f:Lcom/yandex/mobile/ads/impl/i70$a;

    invoke-interface {p1, v0}, Lcom/yandex/mobile/ads/impl/hi1;->a(Lcom/yandex/mobile/ads/impl/hi1$b;)V

    .line 10
    iget-object p1, p0, Lcom/yandex/mobile/ads/impl/i70;->a:Lcom/yandex/mobile/ads/impl/n60;

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/i70;->e:Lcom/yandex/mobile/ads/impl/wf2;

    invoke-interface {p1, v0}, Lcom/yandex/mobile/ads/impl/hi1;->a(Lcom/yandex/mobile/ads/impl/hi1$b;)V

    .line 11
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/i70;->a:Lcom/yandex/mobile/ads/impl/n60;

    invoke-interface {p0}, Lcom/yandex/mobile/ads/impl/hi1;->release()V

    :cond_0
    return-void
.end method

.method public final a(Lcom/yandex/mobile/ads/impl/yc2;)V
    .locals 0

    .line 20
    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/i70;->i:Lcom/yandex/mobile/ads/impl/yc2;

    return-void
.end method

.method public final a(Lcom/yandex/mobile/ads/impl/yf2;)V
    .locals 1

    .line 24
    iget-boolean v0, p0, Lcom/yandex/mobile/ads/impl/i70;->j:Z

    if-nez v0, :cond_0

    .line 25
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/i70;->e:Lcom/yandex/mobile/ads/impl/wf2;

    invoke-virtual {p0, p1}, Lcom/yandex/mobile/ads/impl/wf2;->a(Lcom/yandex/mobile/ads/impl/yf2;)V

    :cond_0
    return-void
.end method

.method public final b()J
    .locals 2

    .line 2
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/i70;->a:Lcom/yandex/mobile/ads/impl/n60;

    invoke-interface {p0}, Lcom/yandex/mobile/ads/impl/hi1;->getDuration()J

    move-result-wide v0

    return-wide v0
.end method

.method public final c()V
    .locals 2

    .line 2
    iget-boolean v0, p0, Lcom/yandex/mobile/ads/impl/i70;->j:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/i70;->a:Lcom/yandex/mobile/ads/impl/n60;

    invoke-interface {v0, v1}, Lcom/yandex/mobile/ads/impl/hi1;->setPlayWhenReady(Z)V

    .line 4
    :cond_0
    iget-boolean v0, p0, Lcom/yandex/mobile/ads/impl/i70;->k:Z

    if-ne v0, v1, :cond_1

    .line 5
    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/i70;->pauseAd()V

    :cond_1
    return-void
.end method

.method public final d()V
    .locals 1

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/yandex/mobile/ads/impl/i70;->k:Z

    return-void
.end method

.method public final e()Z
    .locals 0

    .line 2
    iget-boolean p0, p0, Lcom/yandex/mobile/ads/impl/i70;->j:Z

    return p0
.end method

.method public final f()V
    .locals 1

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/yandex/mobile/ads/impl/i70;->k:Z

    .line 3
    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/i70;->pauseAd()V

    return-void
.end method

.method public final getAdPosition()J
    .locals 2

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/i70;->a:Lcom/yandex/mobile/ads/impl/n60;

    invoke-interface {p0}, Lcom/yandex/mobile/ads/impl/hi1;->getCurrentPosition()J

    move-result-wide v0

    return-wide v0
.end method

.method public final getVolume()F
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/i70;->a:Lcom/yandex/mobile/ads/impl/n60;

    invoke-interface {p0}, Lcom/yandex/mobile/ads/impl/hi1;->getVolume()F

    move-result p0

    return p0
.end method

.method public final isPlayingAd()Z
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/i70;->a:Lcom/yandex/mobile/ads/impl/n60;

    check-cast p0, Lcom/yandex/mobile/ads/impl/rk;

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/rk;->b()Z

    move-result p0

    return p0
.end method

.method public final pauseAd()V
    .locals 1

    iget-boolean v0, p0, Lcom/yandex/mobile/ads/impl/i70;->j:Z

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/i70;->a:Lcom/yandex/mobile/ads/impl/n60;

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lcom/yandex/mobile/ads/impl/hi1;->setPlayWhenReady(Z)V

    :cond_0
    return-void
.end method

.method public final resumeAd()V
    .locals 1

    iget-boolean v0, p0, Lcom/yandex/mobile/ads/impl/i70;->j:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/yandex/mobile/ads/impl/i70;->k:Z

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/i70;->a:Lcom/yandex/mobile/ads/impl/n60;

    const/4 v0, 0x1

    invoke-interface {p0, v0}, Lcom/yandex/mobile/ads/impl/hi1;->setPlayWhenReady(Z)V

    :cond_0
    return-void
.end method

.method public final setVolume(F)V
    .locals 1

    iget-boolean v0, p0, Lcom/yandex/mobile/ads/impl/i70;->j:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/i70;->a:Lcom/yandex/mobile/ads/impl/n60;

    invoke-interface {v0, p1}, Lcom/yandex/mobile/ads/impl/hi1;->setVolume(F)V

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/i70;->i:Lcom/yandex/mobile/ads/impl/yc2;

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/i70;->h:Lcom/yandex/mobile/ads/impl/kb1;

    if-eqz v0, :cond_0

    if-eqz p0, :cond_0

    invoke-interface {v0, p0, p1}, Lcom/yandex/mobile/ads/impl/yc2;->a(Lcom/yandex/mobile/ads/impl/rc2;F)V

    :cond_0
    return-void
.end method
