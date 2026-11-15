.class public final Lcom/yandex/mobile/ads/impl/rg2;
.super Lcom/yandex/mobile/ads/impl/vg2;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yandex/mobile/ads/impl/vg2<",
        "Lcom/yandex/mobile/ads/impl/yb1;",
        "Lcom/yandex/mobile/ads/impl/lb2;",
        ">;"
    }
.end annotation


# instance fields
.field private final c:Lcom/yandex/mobile/ads/impl/o8;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yandex/mobile/ads/impl/o8<",
            "*>;"
        }
    .end annotation
.end field

.field private final d:Lcom/yandex/mobile/ads/impl/pg2;

.field private final e:Lcom/yandex/mobile/ads/impl/qb1;

.field private final f:Lcom/yandex/mobile/ads/impl/og2;

.field private final g:Lcom/yandex/mobile/ads/impl/eb1;

.field private h:Lcom/yandex/mobile/ads/impl/ng2;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/bv1;Lcom/yandex/mobile/ads/impl/yb1;Lcom/yandex/mobile/ads/impl/xe2;Lcom/yandex/mobile/ads/impl/o3;Lcom/yandex/mobile/ads/impl/o8;Lcom/yandex/mobile/ads/impl/pk0;Lcom/yandex/mobile/ads/impl/db1;Lcom/yandex/mobile/ads/impl/t81;Lcom/yandex/mobile/ads/impl/e51;Lcom/yandex/mobile/ads/impl/sj0;Lcom/yandex/mobile/ads/impl/yx1;Lcom/yandex/mobile/ads/impl/pg2;)V
    .locals 16

    move-object/from16 v11, p0

    move-object/from16 v0, p2

    move-object/from16 v5, p5

    move-object/from16 v12, p6

    move-object/from16 v13, p12

    const-string v1, "sdkEnvironmentModule"

    move-object/from16 v14, p1

    invoke-static {v14, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "view"

    invoke-static {v0, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "videoOptions"

    move-object/from16 v3, p3

    invoke-static {v3, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "adConfiguration"

    move-object/from16 v4, p4

    invoke-static {v4, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "adResponse"

    invoke-static {v5, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "impressionEventsObservable"

    invoke-static {v12, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "nativeVideoPlaybackEventListener"

    move-object/from16 v7, p7

    invoke-static {v7, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "nativeForcePauseObserver"

    move-object/from16 v8, p8

    invoke-static {v8, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "nativeAdControllers"

    move-object/from16 v15, p9

    invoke-static {v15, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "imageProvider"

    move-object/from16 v9, p10

    invoke-static {v9, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "videoTrackerForceImpressionController"

    invoke-static {v13, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v11, v0}, Lcom/yandex/mobile/ads/impl/vg2;-><init>(Landroid/view/View;)V

    iput-object v5, v11, Lcom/yandex/mobile/ads/impl/rg2;->c:Lcom/yandex/mobile/ads/impl/o8;

    iput-object v13, v11, Lcom/yandex/mobile/ads/impl/rg2;->d:Lcom/yandex/mobile/ads/impl/pg2;

    new-instance v10, Lcom/yandex/mobile/ads/impl/qb1;

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v0, "getContext(...)"

    invoke-static {v1, v0}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, v10

    move-object/from16 v2, p0

    move-object/from16 v6, p6

    move-object v14, v10

    move-object/from16 v10, p11

    invoke-direct/range {v0 .. v10}, Lcom/yandex/mobile/ads/impl/qb1;-><init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/rg2;Lcom/yandex/mobile/ads/impl/xe2;Lcom/yandex/mobile/ads/impl/o3;Lcom/yandex/mobile/ads/impl/o8;Lcom/yandex/mobile/ads/impl/ue2;Lcom/yandex/mobile/ads/impl/db1;Lcom/yandex/mobile/ads/impl/t81;Lcom/yandex/mobile/ads/impl/sj0;Lcom/yandex/mobile/ads/impl/yx1;)V

    iput-object v14, v11, Lcom/yandex/mobile/ads/impl/rg2;->e:Lcom/yandex/mobile/ads/impl/qb1;

    new-instance v0, Lcom/yandex/mobile/ads/impl/og2;

    invoke-interface/range {p1 .. p1}, Lcom/yandex/mobile/ads/impl/bv1;->d()Lcom/yandex/mobile/ads/impl/on2;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/yandex/mobile/ads/impl/og2;-><init>(Lcom/yandex/mobile/ads/impl/fb2;)V

    iput-object v0, v11, Lcom/yandex/mobile/ads/impl/rg2;->f:Lcom/yandex/mobile/ads/impl/og2;

    invoke-virtual/range {p9 .. p9}, Lcom/yandex/mobile/ads/impl/e51;->a()Lcom/yandex/mobile/ads/impl/eb1;

    move-result-object v0

    iput-object v0, v11, Lcom/yandex/mobile/ads/impl/rg2;->g:Lcom/yandex/mobile/ads/impl/eb1;

    invoke-virtual {v12, v13}, Lcom/yandex/mobile/ads/impl/pk0;->a(Lcom/yandex/mobile/ads/impl/hc0;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/rg2;->h:Lcom/yandex/mobile/ads/impl/ng2;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/ng2;->k()V

    .line 16
    :cond_0
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/rg2;->d:Lcom/yandex/mobile/ads/impl/pg2;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/yandex/mobile/ads/impl/pg2;->a(Lcom/yandex/mobile/ads/impl/ng2;)V

    return-void
.end method

.method public final a(Landroid/view/View;)V
    .locals 1

    .line 1
    check-cast p1, Lcom/yandex/mobile/ads/impl/yb1;

    .line 2
    const-string v0, "view"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/rg2;->e:Lcom/yandex/mobile/ads/impl/qb1;

    invoke-virtual {v0, p1}, Lcom/yandex/mobile/ads/impl/qb1;->a(Lcom/yandex/mobile/ads/impl/yb1;)V

    .line 4
    invoke-super {p0, p1}, Lcom/yandex/mobile/ads/impl/vg2;->a(Landroid/view/View;)V

    return-void
.end method

.method public final a(Lcom/yandex/mobile/ads/impl/ig;Lcom/yandex/mobile/ads/impl/yg2;Ljava/lang/Object;)V
    .locals 3

    .line 5
    check-cast p3, Lcom/yandex/mobile/ads/impl/lb2;

    .line 6
    const-string v0, "asset"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "viewConfigurator"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/vg2;->b()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/yandex/mobile/ads/impl/yb1;

    if-eqz v0, :cond_0

    .line 8
    invoke-interface {p2, v0, p1}, Lcom/yandex/mobile/ads/impl/yg2;->a(Landroid/view/View;Lcom/yandex/mobile/ads/impl/ig;)V

    if-eqz p3, :cond_0

    .line 9
    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/rg2;->h:Lcom/yandex/mobile/ads/impl/ng2;

    if-eqz v1, :cond_0

    .line 10
    invoke-virtual {p3}, Lcom/yandex/mobile/ads/impl/lb2;->b()Lcom/yandex/mobile/ads/impl/zb2;

    move-result-object p3

    .line 11
    invoke-virtual {p3}, Lcom/yandex/mobile/ads/impl/zb2;->b()Lcom/yandex/mobile/ads/impl/uu;

    move-result-object v1

    .line 12
    new-instance v2, Lcom/yandex/mobile/ads/impl/ge2;

    invoke-direct {v2, v0, v1}, Lcom/yandex/mobile/ads/impl/ge2;-><init>(Lcom/yandex/mobile/ads/impl/yb1;Lcom/yandex/mobile/ads/impl/uu;)V

    .line 13
    invoke-interface {p2, p1, v2}, Lcom/yandex/mobile/ads/impl/yg2;->a(Lcom/yandex/mobile/ads/impl/ig;Lcom/yandex/mobile/ads/impl/ap;)V

    .line 14
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/rg2;->e:Lcom/yandex/mobile/ads/impl/qb1;

    invoke-virtual {p0, v0, p3}, Lcom/yandex/mobile/ads/impl/qb1;->a(Lcom/yandex/mobile/ads/impl/yb1;Lcom/yandex/mobile/ads/impl/zb2;)V

    :cond_0
    return-void
.end method

.method public final a(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 0

    .line 17
    check-cast p1, Lcom/yandex/mobile/ads/impl/yb1;

    check-cast p2, Lcom/yandex/mobile/ads/impl/lb2;

    .line 18
    const-string p0, "view"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "value"

    invoke-static {p2, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0
.end method

.method public final b(Landroid/view/View;Ljava/lang/Object;)V
    .locals 5

    check-cast p1, Lcom/yandex/mobile/ads/impl/yb1;

    check-cast p2, Lcom/yandex/mobile/ads/impl/lb2;

    const-string v0, "view"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "video"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/yandex/mobile/ads/impl/lb2;->b()Lcom/yandex/mobile/ads/impl/zb2;

    move-result-object v0

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/rg2;->f:Lcom/yandex/mobile/ads/impl/og2;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "getContext(...)"

    invoke-static {v2, v3}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v4, Lcom/yandex/mobile/ads/impl/ad2;->e:Lcom/yandex/mobile/ads/impl/ad2;

    invoke-virtual {v1, v2, v0, v4}, Lcom/yandex/mobile/ads/impl/og2;->a(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/zb2;Lcom/yandex/mobile/ads/impl/ad2;)Lcom/yandex/mobile/ads/impl/ng2;

    move-result-object v1

    iput-object v1, p0, Lcom/yandex/mobile/ads/impl/rg2;->h:Lcom/yandex/mobile/ads/impl/ng2;

    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/rg2;->d:Lcom/yandex/mobile/ads/impl/pg2;

    invoke-virtual {v2, v1}, Lcom/yandex/mobile/ads/impl/pg2;->a(Lcom/yandex/mobile/ads/impl/ng2;)V

    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/rg2;->g:Lcom/yandex/mobile/ads/impl/eb1;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v3}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/yandex/mobile/ads/impl/rg2;->c:Lcom/yandex/mobile/ads/impl/o8;

    invoke-virtual {v2, v4, v0, v3}, Lcom/yandex/mobile/ads/impl/eb1;->a(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/zb2;Lcom/yandex/mobile/ads/impl/o8;)V

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/rg2;->e:Lcom/yandex/mobile/ads/impl/qb1;

    invoke-virtual {p0, p1, p2, v1}, Lcom/yandex/mobile/ads/impl/qb1;->a(Lcom/yandex/mobile/ads/impl/yb1;Lcom/yandex/mobile/ads/impl/lb2;Lcom/yandex/mobile/ads/impl/ng2;)V

    return-void
.end method
