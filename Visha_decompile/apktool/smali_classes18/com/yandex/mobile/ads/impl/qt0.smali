.class public final Lcom/yandex/mobile/ads/impl/qt0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/impl/h82;


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/gt;

.field private final b:Lcom/yandex/mobile/ads/impl/xt0;

.field private final c:Lcom/yandex/mobile/ads/impl/nb2;

.field private final d:Lcom/yandex/mobile/ads/impl/tt0;

.field private final e:Lcom/yandex/mobile/ads/impl/lm0;

.field private f:Lcom/yandex/mobile/ads/impl/st0;

.field private g:Lcom/yandex/mobile/ads/impl/kt;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/bv1;Lcom/yandex/mobile/ads/impl/gt;Lcom/yandex/mobile/ads/impl/z2;Lcom/yandex/mobile/ads/impl/am0;Lcom/yandex/mobile/ads/impl/mm0;Lcom/yandex/mobile/ads/impl/xt0;Lcom/yandex/mobile/ads/impl/nb2;Lcom/yandex/mobile/ads/impl/tt0;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "sdkEnvironmentModule"

    invoke-static {p2, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "instreamAdBreak"

    invoke-static {p3, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "adBreakStatusController"

    invoke-static {p4, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "customUiElementsHolder"

    invoke-static {p5, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "instreamAdPlayerReuseControllerFactory"

    invoke-static {p6, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "manualPlaybackEventListener"

    invoke-static {p7, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "videoAdCreativePlaybackProxyListener"

    invoke-static {p8, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "presenterProvider"

    invoke-static {p9, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lcom/yandex/mobile/ads/impl/qt0;->a:Lcom/yandex/mobile/ads/impl/gt;

    iput-object p7, p0, Lcom/yandex/mobile/ads/impl/qt0;->b:Lcom/yandex/mobile/ads/impl/xt0;

    iput-object p8, p0, Lcom/yandex/mobile/ads/impl/qt0;->c:Lcom/yandex/mobile/ads/impl/nb2;

    iput-object p9, p0, Lcom/yandex/mobile/ads/impl/qt0;->d:Lcom/yandex/mobile/ads/impl/tt0;

    invoke-virtual {p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/mm0;->a(Lcom/yandex/mobile/ads/impl/h82;)Lcom/yandex/mobile/ads/impl/lm0;

    move-result-object p1

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/qt0;->e:Lcom/yandex/mobile/ads/impl/lm0;

    return-void
.end method


# virtual methods
.method public final a()Lcom/yandex/mobile/ads/impl/gt;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/qt0;->a:Lcom/yandex/mobile/ads/impl/gt;

    return-object p0
.end method

.method public final a(Lcom/yandex/mobile/ads/impl/cm2;)V
    .locals 0

    .line 15
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/qt0;->b:Lcom/yandex/mobile/ads/impl/xt0;

    invoke-virtual {p0, p1}, Lcom/yandex/mobile/ads/impl/xt0;->a(Lcom/yandex/mobile/ads/impl/cm2;)V

    return-void
.end method

.method public final a(Lcom/yandex/mobile/ads/impl/hm2;)V
    .locals 2

    .line 4
    const-string v0, "player"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/qt0;->f:Lcom/yandex/mobile/ads/impl/st0;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/st0;->a()V

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/qt0;->g:Lcom/yandex/mobile/ads/impl/kt;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/qt0;->e:Lcom/yandex/mobile/ads/impl/lm0;

    invoke-virtual {v1, v0}, Lcom/yandex/mobile/ads/impl/lm0;->b(Lcom/yandex/mobile/ads/impl/kt;)V

    :cond_1
    const/4 v0, 0x0

    .line 7
    iput-object v0, p0, Lcom/yandex/mobile/ads/impl/qt0;->f:Lcom/yandex/mobile/ads/impl/st0;

    .line 8
    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/qt0;->g:Lcom/yandex/mobile/ads/impl/kt;

    .line 9
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/qt0;->e:Lcom/yandex/mobile/ads/impl/lm0;

    invoke-virtual {v0, p1}, Lcom/yandex/mobile/ads/impl/lm0;->a(Lcom/yandex/mobile/ads/impl/kt;)V

    .line 10
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/qt0;->d:Lcom/yandex/mobile/ads/impl/tt0;

    invoke-virtual {v0, p1}, Lcom/yandex/mobile/ads/impl/tt0;->a(Lcom/yandex/mobile/ads/impl/hm2;)Lcom/yandex/mobile/ads/impl/st0;

    move-result-object p1

    .line 11
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/qt0;->c:Lcom/yandex/mobile/ads/impl/nb2;

    invoke-virtual {p1, v0}, Lcom/yandex/mobile/ads/impl/st0;->a(Lcom/yandex/mobile/ads/impl/nb2;)V

    .line 12
    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/st0;->c()V

    .line 13
    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/qt0;->f:Lcom/yandex/mobile/ads/impl/st0;

    return-void
.end method

.method public final a(Lcom/yandex/mobile/ads/impl/lo0;)V
    .locals 0

    .line 14
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/qt0;->c:Lcom/yandex/mobile/ads/impl/nb2;

    invoke-virtual {p0, p1}, Lcom/yandex/mobile/ads/impl/nb2;->a(Lcom/yandex/mobile/ads/impl/lo0;)V

    return-void
.end method

.method public final a(Lcom/yandex/mobile/ads/impl/t70;)V
    .locals 1

    .line 2
    const-string v0, "instreamAdView"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/qt0;->f:Lcom/yandex/mobile/ads/impl/st0;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/yandex/mobile/ads/impl/st0;->a(Lcom/yandex/mobile/ads/impl/t70;)V

    :cond_0
    return-void
.end method

.method public final b()V
    .locals 2

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/qt0;->f:Lcom/yandex/mobile/ads/impl/st0;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/st0;->a()V

    :cond_0
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/qt0;->g:Lcom/yandex/mobile/ads/impl/kt;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/qt0;->e:Lcom/yandex/mobile/ads/impl/lm0;

    invoke-virtual {v1, v0}, Lcom/yandex/mobile/ads/impl/lm0;->b(Lcom/yandex/mobile/ads/impl/kt;)V

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/yandex/mobile/ads/impl/qt0;->f:Lcom/yandex/mobile/ads/impl/st0;

    iput-object v0, p0, Lcom/yandex/mobile/ads/impl/qt0;->g:Lcom/yandex/mobile/ads/impl/kt;

    return-void
.end method

.method public final c()V
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/qt0;->f:Lcom/yandex/mobile/ads/impl/st0;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/st0;->b()V

    :cond_0
    return-void
.end method

.method public final d()V
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/qt0;->f:Lcom/yandex/mobile/ads/impl/st0;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/st0;->d()V

    :cond_0
    return-void
.end method

.method public final invalidateAdPlayer()V
    .locals 2

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/qt0;->f:Lcom/yandex/mobile/ads/impl/st0;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/st0;->a()V

    :cond_0
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/qt0;->g:Lcom/yandex/mobile/ads/impl/kt;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/qt0;->e:Lcom/yandex/mobile/ads/impl/lm0;

    invoke-virtual {v1, v0}, Lcom/yandex/mobile/ads/impl/lm0;->b(Lcom/yandex/mobile/ads/impl/kt;)V

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/yandex/mobile/ads/impl/qt0;->f:Lcom/yandex/mobile/ads/impl/st0;

    iput-object v0, p0, Lcom/yandex/mobile/ads/impl/qt0;->g:Lcom/yandex/mobile/ads/impl/kt;

    return-void
.end method
