.class public final Lcom/yandex/mobile/ads/impl/to0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/jm0;

.field private final b:Lcom/yandex/mobile/ads/impl/gf2;

.field private final c:Lcom/yandex/mobile/ads/impl/cn0;

.field private final d:Lcom/yandex/mobile/ads/impl/ro0;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/bv1;Lcom/yandex/mobile/ads/impl/et;Lcom/yandex/mobile/ads/impl/jm0;Lcom/yandex/mobile/ads/impl/gf2;Lcom/yandex/mobile/ads/impl/am0;)V
    .locals 10

    .line 1
    new-instance v8, Lcom/yandex/mobile/ads/impl/cn0;

    invoke-direct {v8}, Lcom/yandex/mobile/ads/impl/cn0;-><init>()V

    .line 2
    new-instance v9, Lcom/yandex/mobile/ads/impl/ro0;

    move-object v0, v9

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, v8

    move-object v6, p5

    move-object/from16 v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/yandex/mobile/ads/impl/ro0;-><init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/bv1;Lcom/yandex/mobile/ads/impl/et;Lcom/yandex/mobile/ads/impl/jm0;Lcom/yandex/mobile/ads/impl/cn0;Lcom/yandex/mobile/ads/impl/gf2;Lcom/yandex/mobile/ads/impl/am0;)V

    move-object v0, p0

    move-object v5, p5

    move-object/from16 v6, p6

    move-object v7, v8

    move-object v8, v9

    .line 3
    invoke-direct/range {v0 .. v8}, Lcom/yandex/mobile/ads/impl/to0;-><init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/bv1;Lcom/yandex/mobile/ads/impl/et;Lcom/yandex/mobile/ads/impl/jm0;Lcom/yandex/mobile/ads/impl/gf2;Lcom/yandex/mobile/ads/impl/am0;Lcom/yandex/mobile/ads/impl/cn0;Lcom/yandex/mobile/ads/impl/ro0;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/bv1;Lcom/yandex/mobile/ads/impl/et;Lcom/yandex/mobile/ads/impl/jm0;Lcom/yandex/mobile/ads/impl/gf2;Lcom/yandex/mobile/ads/impl/am0;Lcom/yandex/mobile/ads/impl/cn0;Lcom/yandex/mobile/ads/impl/ro0;)V
    .locals 1

    .line 4
    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "sdkEnvironmentModule"

    invoke-static {p2, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "instreamVideoAd"

    invoke-static {p3, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "instreamAdPlayerController"

    invoke-static {p4, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "videoPlayerController"

    invoke-static {p5, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "customUiElementsHolder"

    invoke-static {p6, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "instreamAdViewsHolderManager"

    invoke-static {p7, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "instreamVideoPresenter"

    invoke-static {p8, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object p4, p0, Lcom/yandex/mobile/ads/impl/to0;->a:Lcom/yandex/mobile/ads/impl/jm0;

    .line 7
    iput-object p5, p0, Lcom/yandex/mobile/ads/impl/to0;->b:Lcom/yandex/mobile/ads/impl/gf2;

    .line 8
    iput-object p7, p0, Lcom/yandex/mobile/ads/impl/to0;->c:Lcom/yandex/mobile/ads/impl/cn0;

    .line 9
    iput-object p8, p0, Lcom/yandex/mobile/ads/impl/to0;->d:Lcom/yandex/mobile/ads/impl/ro0;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    .line 6
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/to0;->d:Lcom/yandex/mobile/ads/impl/ro0;

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/ro0;->c()V

    return-void
.end method

.method public final a(Lcom/yandex/mobile/ads/impl/lo0;)V
    .locals 0

    .line 7
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/to0;->d:Lcom/yandex/mobile/ads/impl/ro0;

    invoke-virtual {p0, p1}, Lcom/yandex/mobile/ads/impl/ro0;->a(Lcom/yandex/mobile/ads/impl/lo0;)V

    return-void
.end method

.method public final a(Lcom/yandex/mobile/ads/impl/so0;)V
    .locals 0

    .line 8
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/to0;->d:Lcom/yandex/mobile/ads/impl/ro0;

    invoke-virtual {p0, p1}, Lcom/yandex/mobile/ads/impl/ro0;->a(Lcom/yandex/mobile/ads/impl/so0;)V

    return-void
.end method

.method public final a(Lcom/yandex/mobile/ads/impl/t70;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yandex/mobile/ads/impl/t70;",
            "Ljava/util/List<",
            "Lcom/yandex/mobile/ads/impl/xb2;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "instreamAdView"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "friendlyOverlays"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/to0;->c:Lcom/yandex/mobile/ads/impl/cn0;

    invoke-virtual {v0, p1, p2}, Lcom/yandex/mobile/ads/impl/cn0;->a(Lcom/yandex/mobile/ads/impl/t70;Ljava/util/List;)V

    .line 3
    iget-object p1, p0, Lcom/yandex/mobile/ads/impl/to0;->a:Lcom/yandex/mobile/ads/impl/jm0;

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/jm0;->a()V

    .line 4
    iget-object p1, p0, Lcom/yandex/mobile/ads/impl/to0;->b:Lcom/yandex/mobile/ads/impl/gf2;

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/gf2;->g()V

    .line 5
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/to0;->d:Lcom/yandex/mobile/ads/impl/ro0;

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/ro0;->a()V

    return-void
.end method

.method public final b()V
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/to0;->d:Lcom/yandex/mobile/ads/impl/ro0;

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/ro0;->d()V

    return-void
.end method

.method public final c()V
    .locals 1

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/to0;->a:Lcom/yandex/mobile/ads/impl/jm0;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/jm0;->a()V

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/to0;->d:Lcom/yandex/mobile/ads/impl/ro0;

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/ro0;->h()V

    return-void
.end method

.method public final d()V
    .locals 1

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/to0;->d:Lcom/yandex/mobile/ads/impl/ro0;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/ro0;->j()V

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/to0;->c:Lcom/yandex/mobile/ads/impl/cn0;

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/cn0;->b()V

    return-void
.end method
