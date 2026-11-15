.class public final Lcom/yandex/mobile/ads/impl/nx0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/bv1;

.field private final b:Lcom/yandex/mobile/ads/impl/o8;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yandex/mobile/ads/impl/o8<",
            "*>;"
        }
    .end annotation
.end field

.field private final c:Lcom/yandex/mobile/ads/impl/hg2;

.field private final d:Lcom/yandex/mobile/ads/impl/ov;

.field private final e:Lcom/yandex/mobile/ads/impl/sb1;

.field private final f:Lcom/yandex/mobile/ads/impl/hb1;

.field private final g:Lcom/yandex/mobile/ads/impl/bc1;


# direct methods
.method public synthetic constructor <init>(Lcom/yandex/mobile/ads/impl/bv1;Lcom/yandex/mobile/ads/impl/o8;)V
    .locals 6

    .line 1
    new-instance v3, Lcom/yandex/mobile/ads/impl/hg2;

    invoke-direct {v3}, Lcom/yandex/mobile/ads/impl/hg2;-><init>()V

    .line 2
    new-instance v4, Lcom/yandex/mobile/ads/impl/ov;

    invoke-direct {v4}, Lcom/yandex/mobile/ads/impl/ov;-><init>()V

    .line 3
    new-instance v5, Lcom/yandex/mobile/ads/impl/sb1;

    invoke-direct {v5}, Lcom/yandex/mobile/ads/impl/sb1;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .line 4
    invoke-direct/range {v0 .. v5}, Lcom/yandex/mobile/ads/impl/nx0;-><init>(Lcom/yandex/mobile/ads/impl/bv1;Lcom/yandex/mobile/ads/impl/o8;Lcom/yandex/mobile/ads/impl/hg2;Lcom/yandex/mobile/ads/impl/ov;Lcom/yandex/mobile/ads/impl/sb1;)V

    return-void
.end method

.method public constructor <init>(Lcom/yandex/mobile/ads/impl/bv1;Lcom/yandex/mobile/ads/impl/o8;Lcom/yandex/mobile/ads/impl/hg2;Lcom/yandex/mobile/ads/impl/ov;Lcom/yandex/mobile/ads/impl/sb1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yandex/mobile/ads/impl/bv1;",
            "Lcom/yandex/mobile/ads/impl/o8<",
            "*>;",
            "Lcom/yandex/mobile/ads/impl/hg2;",
            "Lcom/yandex/mobile/ads/impl/ov;",
            "Lcom/yandex/mobile/ads/impl/sb1;",
            ")V"
        }
    .end annotation

    .line 5
    const-string v0, "sdkEnvironmentModule"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adResponse"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "videoSubViewBinder"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "customizableMediaViewManager"

    invoke-static {p4, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "nativeVideoScaleTypeProvider"

    invoke-static {p5, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/nx0;->a:Lcom/yandex/mobile/ads/impl/bv1;

    .line 8
    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/nx0;->b:Lcom/yandex/mobile/ads/impl/o8;

    .line 9
    iput-object p3, p0, Lcom/yandex/mobile/ads/impl/nx0;->c:Lcom/yandex/mobile/ads/impl/hg2;

    .line 10
    iput-object p4, p0, Lcom/yandex/mobile/ads/impl/nx0;->d:Lcom/yandex/mobile/ads/impl/ov;

    .line 11
    iput-object p5, p0, Lcom/yandex/mobile/ads/impl/nx0;->e:Lcom/yandex/mobile/ads/impl/sb1;

    .line 12
    new-instance p1, Lcom/yandex/mobile/ads/impl/hb1;

    invoke-direct {p1}, Lcom/yandex/mobile/ads/impl/hb1;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/nx0;->f:Lcom/yandex/mobile/ads/impl/hb1;

    .line 13
    new-instance p1, Lcom/yandex/mobile/ads/impl/bc1;

    invoke-direct {p1}, Lcom/yandex/mobile/ads/impl/bc1;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/nx0;->g:Lcom/yandex/mobile/ads/impl/bc1;

    return-void
.end method


# virtual methods
.method public final a(Lcom/monetization/ads/nativeads/CustomizableMediaView;Lcom/yandex/mobile/ads/impl/aw0;Lcom/yandex/mobile/ads/impl/o3;Lcom/yandex/mobile/ads/impl/pk0;Lcom/yandex/mobile/ads/impl/db1;Lcom/yandex/mobile/ads/impl/t81;Lcom/yandex/mobile/ads/impl/e51;Lcom/yandex/mobile/ads/impl/ox0;Lcom/yandex/mobile/ads/impl/sj0;Lcom/yandex/mobile/ads/impl/yx1;Lcom/yandex/mobile/ads/impl/lb2;)Lcom/yandex/mobile/ads/impl/cw1;
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p8

    const-string v3, "mediaView"

    invoke-static {v1, v3}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "customControls"

    move-object/from16 v8, p2

    invoke-static {v8, v4}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "adConfiguration"

    move-object/from16 v11, p3

    invoke-static {v11, v4}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "impressionEventsObservable"

    move-object/from16 v12, p4

    invoke-static {v12, v4}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "listener"

    move-object/from16 v13, p5

    invoke-static {v13, v4}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "nativeForcePauseObserver"

    move-object/from16 v14, p6

    invoke-static {v14, v4}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "nativeAdControllers"

    move-object/from16 v15, p7

    invoke-static {v15, v4}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "mediaViewRenderController"

    invoke-static {v2, v4}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "imageProvider"

    move-object/from16 v10, p9

    invoke-static {v10, v4}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    iget-object v4, v0, Lcom/yandex/mobile/ads/impl/nx0;->e:Lcom/yandex/mobile/ads/impl/sb1;

    invoke-virtual {v4, v1}, Lcom/yandex/mobile/ads/impl/sb1;->a(Lcom/monetization/ads/nativeads/CustomizableMediaView;)Lcom/yandex/mobile/ads/impl/yf2;

    move-result-object v4

    iget-object v5, v0, Lcom/yandex/mobile/ads/impl/nx0;->f:Lcom/yandex/mobile/ads/impl/hb1;

    if-eqz p11, :cond_0

    invoke-virtual/range {p11 .. p11}, Lcom/yandex/mobile/ads/impl/lb2;->d()Lcom/yandex/mobile/ads/impl/ag2;

    move-result-object v9

    goto :goto_0

    :cond_0
    const/4 v9, 0x0

    :goto_0
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v5, Lcom/yandex/mobile/ads/impl/xe2;

    if-eqz v9, :cond_1

    invoke-virtual {v9}, Lcom/yandex/mobile/ads/impl/ag2;->b()Z

    move-result v16

    :goto_1
    move/from16 v7, v16

    goto :goto_2

    :cond_1
    const/16 v16, 0x1

    goto :goto_1

    :goto_2
    if-eqz v9, :cond_2

    invoke-virtual {v9}, Lcom/yandex/mobile/ads/impl/ag2;->c()Z

    move-result v16

    :goto_3
    move/from16 v8, v16

    goto :goto_4

    :cond_2
    const/16 v16, 0x0

    goto :goto_3

    :goto_4
    if-eqz v9, :cond_3

    invoke-virtual {v9}, Lcom/yandex/mobile/ads/impl/ag2;->a()Ljava/lang/Double;

    move-result-object v9

    goto :goto_5

    :cond_3
    const/4 v9, 0x0

    :goto_5
    invoke-direct {v5, v4, v7, v8, v9}, Lcom/yandex/mobile/ads/impl/xe2;-><init>(Lcom/yandex/mobile/ads/impl/yf2;ZZLjava/lang/Double;)V

    iget-object v4, v0, Lcom/yandex/mobile/ads/impl/nx0;->d:Lcom/yandex/mobile/ads/impl/ov;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1, v3}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Lcom/monetization/ads/nativeads/CustomizableMediaView;->getVideoControlsLayoutId()I

    move-result v4

    iget-object v7, v0, Lcom/yandex/mobile/ads/impl/nx0;->g:Lcom/yandex/mobile/ads/impl/bc1;

    invoke-static {v6}, Ly45;->g(Ljava/lang/Object;)V

    move-object/from16 v16, v5

    move-object v5, v7

    move-object/from16 v7, v16

    move-object/from16 v8, p2

    move-object/from16 v9, p11

    move v10, v4

    invoke-virtual/range {v5 .. v10}, Lcom/yandex/mobile/ads/impl/bc1;->a(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/xe2;Lcom/yandex/mobile/ads/impl/aw0;Lcom/yandex/mobile/ads/impl/lb2;I)Lcom/yandex/mobile/ads/impl/yb1;

    move-result-object v7

    iget-object v4, v0, Lcom/yandex/mobile/ads/impl/nx0;->c:Lcom/yandex/mobile/ads/impl/hg2;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1, v3}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "nativeVideoView"

    invoke-static {v7, v3}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "getContext(...)"

    invoke-static {v3, v4}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v4, Lcom/yandex/mobile/ads/impl/w80;->e:Lcom/yandex/mobile/ads/impl/w80;

    invoke-static {v3, v4}, Lcom/yandex/mobile/ads/impl/x80;->a(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/w80;)Z

    move-result v3

    if-nez v3, :cond_4

    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->removeAllViews()V

    :cond_4
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v4, -0x1

    invoke-direct {v3, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v7, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v3, Lcom/yandex/mobile/ads/impl/rg2;

    iget-object v6, v0, Lcom/yandex/mobile/ads/impl/nx0;->a:Lcom/yandex/mobile/ads/impl/bv1;

    iget-object v10, v0, Lcom/yandex/mobile/ads/impl/nx0;->b:Lcom/yandex/mobile/ads/impl/o8;

    new-instance v17, Lcom/yandex/mobile/ads/impl/pg2;

    invoke-direct/range {v17 .. v17}, Lcom/yandex/mobile/ads/impl/pg2;-><init>()V

    move-object v5, v3

    move-object/from16 v8, v16

    move-object/from16 v9, p3

    move-object/from16 v11, p4

    move-object/from16 v12, p5

    move-object/from16 v13, p6

    move-object/from16 v14, p7

    move-object/from16 v15, p9

    move-object/from16 v16, p10

    invoke-direct/range {v5 .. v17}, Lcom/yandex/mobile/ads/impl/rg2;-><init>(Lcom/yandex/mobile/ads/impl/bv1;Lcom/yandex/mobile/ads/impl/yb1;Lcom/yandex/mobile/ads/impl/xe2;Lcom/yandex/mobile/ads/impl/o3;Lcom/yandex/mobile/ads/impl/o8;Lcom/yandex/mobile/ads/impl/pk0;Lcom/yandex/mobile/ads/impl/db1;Lcom/yandex/mobile/ads/impl/t81;Lcom/yandex/mobile/ads/impl/e51;Lcom/yandex/mobile/ads/impl/sj0;Lcom/yandex/mobile/ads/impl/yx1;Lcom/yandex/mobile/ads/impl/pg2;)V

    new-instance v0, Lcom/yandex/mobile/ads/impl/cw1;

    new-instance v4, Lcom/yandex/mobile/ads/impl/wg2;

    invoke-direct {v4, v3}, Lcom/yandex/mobile/ads/impl/wg2;-><init>(Lcom/yandex/mobile/ads/impl/vg2;)V

    invoke-direct {v0, v1, v3, v2, v4}, Lcom/yandex/mobile/ads/impl/cw1;-><init>(Lcom/monetization/ads/nativeads/CustomizableMediaView;Lcom/yandex/mobile/ads/impl/rg2;Lcom/yandex/mobile/ads/impl/ox0;Lcom/yandex/mobile/ads/impl/wg2;)V

    return-object v0
.end method
