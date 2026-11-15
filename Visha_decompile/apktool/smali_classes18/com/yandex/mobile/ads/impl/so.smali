.class public final Lcom/yandex/mobile/ads/impl/so;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/impl/a82;


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/zm0;

.field private final b:Lcom/yandex/mobile/ads/impl/f6;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/bv1;Lcom/yandex/mobile/ads/impl/gt;Lcom/yandex/mobile/ads/impl/co0;Lcom/yandex/mobile/ads/impl/zb2;Lcom/yandex/mobile/ads/impl/mg2;Lcom/yandex/mobile/ads/impl/nb2;Lcom/yandex/mobile/ads/impl/vu;Lcom/yandex/mobile/ads/impl/no0;Lcom/yandex/mobile/ads/impl/he2;Lcom/yandex/mobile/ads/impl/zm0;Lcom/yandex/mobile/ads/impl/f6;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "sdkEnvironmentModule"

    invoke-static {p2, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "coreInstreamAdBreak"

    invoke-static {p3, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "instreamVastAdPlayer"

    invoke-static {p4, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "videoAdInfo"

    invoke-static {p5, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "videoTracker"

    invoke-static {p6, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "playbackListener"

    invoke-static {p7, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "creativeAssetsProvider"

    invoke-static {p8, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "instreamVideoClicksProvider"

    invoke-static {p9, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "videoClicks"

    invoke-static {p10, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "clickListener"

    invoke-static {p11, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "adPlayerVolumeConfigurator"

    invoke-static {p12, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p11, p0, Lcom/yandex/mobile/ads/impl/so;->a:Lcom/yandex/mobile/ads/impl/zm0;

    iput-object p12, p0, Lcom/yandex/mobile/ads/impl/so;->b:Lcom/yandex/mobile/ads/impl/f6;

    return-void
.end method


# virtual methods
.method public final a(Lcom/yandex/mobile/ads/impl/t70;)V
    .locals 0

    .line 4
    const-string p0, "instreamAdView"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    .line 5
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 p0, 0x0

    .line 6
    invoke-virtual {p1, p0}, Landroid/view/View;->setClickable(Z)V

    return-void
.end method

.method public final a(Lcom/yandex/mobile/ads/impl/t70;Lcom/yandex/mobile/ads/impl/ln0;)V
    .locals 1

    .line 1
    const-string v0, "instreamAdView"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "controlsState"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/so;->a:Lcom/yandex/mobile/ads/impl/zm0;

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/so;->b:Lcom/yandex/mobile/ads/impl/f6;

    invoke-virtual {p2}, Lcom/yandex/mobile/ads/impl/ln0;->a()F

    move-result p1

    invoke-virtual {p2}, Lcom/yandex/mobile/ads/impl/ln0;->d()Z

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/yandex/mobile/ads/impl/f6;->a(FZ)V

    return-void
.end method
