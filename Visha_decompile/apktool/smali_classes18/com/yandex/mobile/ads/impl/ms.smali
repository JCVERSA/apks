.class public final Lcom/yandex/mobile/ads/impl/ms;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/impl/a82;


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/ns;

.field private final b:Lcom/yandex/mobile/ads/impl/gh;

.field private final c:Lcom/yandex/mobile/ads/impl/an0;

.field private final d:Lcom/yandex/mobile/ads/impl/xm0;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/bv1;Lcom/yandex/mobile/ads/impl/am0;Lcom/yandex/mobile/ads/impl/co0;Lcom/yandex/mobile/ads/impl/gt;Lcom/yandex/mobile/ads/impl/zb2;Lcom/yandex/mobile/ads/impl/mg2;Lcom/yandex/mobile/ads/impl/yk1;Lcom/yandex/mobile/ads/impl/nb2;Lcom/yandex/mobile/ads/impl/ns;Lcom/yandex/mobile/ads/impl/in0;Lcom/yandex/mobile/ads/impl/hn0;Lcom/yandex/mobile/ads/impl/zg;Ljava/util/List;Lcom/yandex/mobile/ads/impl/gh;Lcom/yandex/mobile/ads/impl/an0;Lcom/yandex/mobile/ads/impl/qn0;Lcom/yandex/mobile/ads/impl/pn0;Lcom/yandex/mobile/ads/impl/xm0;)V
    .locals 7

    move-object v0, p0

    move-object/from16 v1, p10

    move-object/from16 v2, p15

    move-object/from16 v3, p16

    move-object/from16 v4, p19

    const-string v5, "context"

    move-object v6, p1

    invoke-static {p1, v5}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "sdkEnvironmentModule"

    move-object v6, p2

    invoke-static {p2, v5}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "customUiElementsHolder"

    move-object v6, p3

    invoke-static {p3, v5}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "instreamVastAdPlayer"

    move-object v6, p4

    invoke-static {p4, v5}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "coreInstreamAdBreak"

    move-object v6, p5

    invoke-static {p5, v5}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "videoAdInfo"

    move-object v6, p6

    invoke-static {p6, v5}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "videoTracker"

    move-object v6, p7

    invoke-static {p7, v5}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "imageProvider"

    move-object v6, p8

    invoke-static {p8, v5}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "playbackListener"

    move-object/from16 v6, p9

    invoke-static {v6, v5}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "controlsViewConfigurator"

    invoke-static {v1, v5}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "assetsWrapperProvider"

    move-object/from16 v6, p11

    invoke-static {v6, v5}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "assetsWrapper"

    move-object/from16 v6, p12

    invoke-static {v6, v5}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "assetViewConfiguratorsCreator"

    move-object/from16 v6, p13

    invoke-static {v6, v5}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "assetViewConfigurators"

    move-object/from16 v6, p14

    invoke-static {v6, v5}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "assetsViewConfigurator"

    invoke-static {v2, v5}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "instreamAdViewUiElementsManager"

    invoke-static {v3, v5}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "instreamDesignProvider"

    move-object/from16 v6, p17

    invoke-static {v6, v5}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "instreamDesign"

    move-object/from16 v6, p18

    invoke-static {v6, v5}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "instreamAdUiElementsController"

    invoke-static {v4, v5}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, Lcom/yandex/mobile/ads/impl/ms;->a:Lcom/yandex/mobile/ads/impl/ns;

    iput-object v2, v0, Lcom/yandex/mobile/ads/impl/ms;->b:Lcom/yandex/mobile/ads/impl/gh;

    iput-object v3, v0, Lcom/yandex/mobile/ads/impl/ms;->c:Lcom/yandex/mobile/ads/impl/an0;

    iput-object v4, v0, Lcom/yandex/mobile/ads/impl/ms;->d:Lcom/yandex/mobile/ads/impl/xm0;

    return-void
.end method


# virtual methods
.method public final a(Lcom/yandex/mobile/ads/impl/t70;)V
    .locals 2

    .line 11
    const-string v0, "instreamAdView"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/ms;->c:Lcom/yandex/mobile/ads/impl/an0;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/t70;->getAdUiElements()Lcom/yandex/mobile/ads/impl/ob2;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 15
    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/ob2;->a()Lcom/monetization/ads/video/playback/view/ExtendedVideoAdControlsContainer;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 16
    :cond_0
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/ms;->c:Lcom/yandex/mobile/ads/impl/an0;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    .line 18
    invoke-virtual {p1, p0}, Lcom/yandex/mobile/ads/impl/t70;->setAdUiElements(Lcom/yandex/mobile/ads/impl/ob2;)V

    return-void
.end method

.method public final a(Lcom/yandex/mobile/ads/impl/t70;Lcom/yandex/mobile/ads/impl/ln0;)V
    .locals 3

    .line 1
    const-string v0, "instreamAdView"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "controlsState"

    invoke-static {p2, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/ms;->d:Lcom/yandex/mobile/ads/impl/xm0;

    invoke-virtual {v1, p1}, Lcom/yandex/mobile/ads/impl/xm0;->a(Lcom/yandex/mobile/ads/impl/t70;)Lcom/yandex/mobile/ads/impl/ob2;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3
    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/ms;->a:Lcom/yandex/mobile/ads/impl/ns;

    invoke-virtual {v2, v1, p2}, Lcom/yandex/mobile/ads/impl/ns;->a(Lcom/yandex/mobile/ads/impl/ob2;Lcom/yandex/mobile/ads/impl/ln0;)V

    .line 4
    iget-object p2, p0, Lcom/yandex/mobile/ads/impl/ms;->b:Lcom/yandex/mobile/ads/impl/gh;

    invoke-virtual {p2, v1}, Lcom/yandex/mobile/ads/impl/gh;->a(Lcom/yandex/mobile/ads/impl/ob2;)V

    .line 5
    new-instance p2, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {p2, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 6
    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/ob2;->a()Lcom/monetization/ads/video/playback/view/ExtendedVideoAdControlsContainer;

    move-result-object v2

    .line 7
    invoke-virtual {p1, v2, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 8
    :cond_0
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/ms;->c:Lcom/yandex/mobile/ads/impl/an0;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    invoke-virtual {p1, v1}, Lcom/yandex/mobile/ads/impl/t70;->setAdUiElements(Lcom/yandex/mobile/ads/impl/ob2;)V

    return-void
.end method
