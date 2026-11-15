.class public final Lcom/yandex/mobile/ads/impl/ym0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/yandex/mobile/ads/impl/cn0;

.field private final c:Lcom/yandex/mobile/ads/impl/d82;

.field private d:Lcom/yandex/mobile/ads/impl/c82;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/bv1;Lcom/yandex/mobile/ads/impl/cn0;Lcom/yandex/mobile/ads/impl/aj1;Lcom/yandex/mobile/ads/impl/jm0;Lcom/yandex/mobile/ads/impl/am0;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sdkEnvironmentModule"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "instreamAdViewsHolderManager"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "playerVolumeProvider"

    invoke-static {p4, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "playerController"

    invoke-static {p5, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "customUiElementsHolder"

    invoke-static {p6, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/ym0;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/yandex/mobile/ads/impl/ym0;->b:Lcom/yandex/mobile/ads/impl/cn0;

    new-instance p1, Lcom/yandex/mobile/ads/impl/d82;

    invoke-direct {p1, p2, p4, p5, p6}, Lcom/yandex/mobile/ads/impl/d82;-><init>(Lcom/yandex/mobile/ads/impl/bv1;Lcom/yandex/mobile/ads/impl/aj1;Lcom/yandex/mobile/ads/impl/jm0;Lcom/yandex/mobile/ads/impl/am0;)V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/ym0;->c:Lcom/yandex/mobile/ads/impl/d82;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .line 9
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/ym0;->d:Lcom/yandex/mobile/ads/impl/c82;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/c82;->b()V

    :cond_0
    const/4 v0, 0x0

    .line 10
    iput-object v0, p0, Lcom/yandex/mobile/ads/impl/ym0;->d:Lcom/yandex/mobile/ads/impl/c82;

    return-void
.end method

.method public final a(Lcom/yandex/mobile/ads/impl/gt;Lcom/yandex/mobile/ads/impl/zb2;Lcom/yandex/mobile/ads/impl/mg2;Lcom/yandex/mobile/ads/impl/nb2;Lcom/yandex/mobile/ads/impl/yk1;)V
    .locals 9

    .line 1
    const-string v0, "coreInstreamAdBreak"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "videoAdInfo"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "videoTracker"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "playbackListener"

    invoke-static {p4, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "imageProvider"

    invoke-static {p5, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/ym0;->a()V

    .line 3
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/ym0;->b:Lcom/yandex/mobile/ads/impl/cn0;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/cn0;->a()Lcom/yandex/mobile/ads/impl/bn0;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 4
    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/ym0;->c:Lcom/yandex/mobile/ads/impl/d82;

    .line 5
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/ym0;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v0, "getApplicationContext(...)"

    invoke-static {v2, v0}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p5

    move-object v8, p4

    .line 6
    invoke-virtual/range {v1 .. v8}, Lcom/yandex/mobile/ads/impl/d82;->a(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/bn0;Lcom/yandex/mobile/ads/impl/gt;Lcom/yandex/mobile/ads/impl/zb2;Lcom/yandex/mobile/ads/impl/mg2;Lcom/yandex/mobile/ads/impl/yk1;Lcom/yandex/mobile/ads/impl/nb2;)Lcom/yandex/mobile/ads/impl/c82;

    move-result-object p1

    .line 7
    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/c82;->a()V

    .line 8
    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/ym0;->d:Lcom/yandex/mobile/ads/impl/c82;

    :cond_0
    return-void
.end method

.method public final a(Lcom/yandex/mobile/ads/impl/zb2;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yandex/mobile/ads/impl/zb2<",
            "Lcom/yandex/mobile/ads/impl/go0;",
            ">;)V"
        }
    .end annotation

    .line 11
    const-string v0, "nextVideo"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/ym0;->d:Lcom/yandex/mobile/ads/impl/c82;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/yandex/mobile/ads/impl/c82;->a(Lcom/yandex/mobile/ads/impl/zb2;)V

    :cond_0
    return-void
.end method
