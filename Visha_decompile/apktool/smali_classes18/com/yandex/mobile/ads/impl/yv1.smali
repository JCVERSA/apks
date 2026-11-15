.class public final Lcom/yandex/mobile/ads/impl/yv1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/impl/jx0;


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/o8;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yandex/mobile/ads/impl/o8<",
            "*>;"
        }
    .end annotation
.end field

.field private final b:Lcom/yandex/mobile/ads/impl/nx0;

.field private final c:Lcom/yandex/mobile/ads/impl/kx0;

.field private final d:Lcom/yandex/mobile/ads/impl/mx0;

.field private final e:Lcom/yandex/mobile/ads/impl/lx0;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/bv1;Lcom/yandex/mobile/ads/impl/o8;Lcom/yandex/mobile/ads/impl/nx0;Lcom/yandex/mobile/ads/impl/kx0;Lcom/yandex/mobile/ads/impl/mx0;Lcom/yandex/mobile/ads/impl/lx0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yandex/mobile/ads/impl/bv1;",
            "Lcom/yandex/mobile/ads/impl/o8<",
            "*>;",
            "Lcom/yandex/mobile/ads/impl/nx0;",
            "Lcom/yandex/mobile/ads/impl/kx0;",
            "Lcom/yandex/mobile/ads/impl/mx0;",
            "Lcom/yandex/mobile/ads/impl/lx0;",
            ")V"
        }
    .end annotation

    const-string v0, "sdkEnvironmentModule"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "adResponse"

    invoke-static {p2, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "mediaViewAdapterWithVideoCreator"

    invoke-static {p3, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "mediaViewAdapterWithImageCreator"

    invoke-static {p4, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "mediaViewAdapterWithMultiBannerCreator"

    invoke-static {p5, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "mediaViewAdapterWithMediaCreator"

    invoke-static {p6, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/yv1;->a:Lcom/yandex/mobile/ads/impl/o8;

    iput-object p3, p0, Lcom/yandex/mobile/ads/impl/yv1;->b:Lcom/yandex/mobile/ads/impl/nx0;

    iput-object p4, p0, Lcom/yandex/mobile/ads/impl/yv1;->c:Lcom/yandex/mobile/ads/impl/kx0;

    iput-object p5, p0, Lcom/yandex/mobile/ads/impl/yv1;->d:Lcom/yandex/mobile/ads/impl/mx0;

    iput-object p6, p0, Lcom/yandex/mobile/ads/impl/yv1;->e:Lcom/yandex/mobile/ads/impl/lx0;

    return-void
.end method

.method private final a(Lcom/monetization/ads/nativeads/CustomizableMediaView;Lcom/yandex/mobile/ads/impl/o3;Lcom/yandex/mobile/ads/impl/sj0;Lcom/yandex/mobile/ads/impl/ox0;Lcom/yandex/mobile/ads/impl/yx1;Lcom/yandex/mobile/ads/impl/ex0;)Lcom/yandex/mobile/ads/impl/hx0;
    .locals 8

    .line 1
    invoke-virtual {p6}, Lcom/yandex/mobile/ads/impl/ex0;->a()Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 2
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result p6

    if-nez p6, :cond_1

    .line 3
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result p6

    const/4 v0, 0x1

    if-ne p6, v0, :cond_0

    .line 4
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/yv1;->c:Lcom/yandex/mobile/ads/impl/kx0;

    .line 5
    invoke-virtual {p0, p1, p3, p4}, Lcom/yandex/mobile/ads/impl/kx0;->a(Lcom/monetization/ads/nativeads/CustomizableMediaView;Lcom/yandex/mobile/ads/impl/sj0;Lcom/yandex/mobile/ads/impl/ox0;)Lcom/yandex/mobile/ads/impl/zv1;

    move-result-object p0

    goto :goto_0

    .line 6
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/yv1;->d:Lcom/yandex/mobile/ads/impl/mx0;

    .line 7
    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/yv1;->a:Lcom/yandex/mobile/ads/impl/o8;

    move-object v2, p2

    move-object v3, p1

    move-object v4, p3

    move-object v6, p4

    move-object v7, p5

    .line 8
    invoke-virtual/range {v0 .. v7}, Lcom/yandex/mobile/ads/impl/mx0;->a(Lcom/yandex/mobile/ads/impl/o8;Lcom/yandex/mobile/ads/impl/o3;Lcom/monetization/ads/nativeads/CustomizableMediaView;Lcom/yandex/mobile/ads/impl/sj0;Ljava/util/List;Lcom/yandex/mobile/ads/impl/ox0;Lcom/yandex/mobile/ads/impl/yx1;)Lcom/yandex/mobile/ads/impl/bw1;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 9
    :catchall_0
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/yv1;->c:Lcom/yandex/mobile/ads/impl/kx0;

    .line 10
    invoke-virtual {p0, p1, p3, p4}, Lcom/yandex/mobile/ads/impl/kx0;->a(Lcom/monetization/ads/nativeads/CustomizableMediaView;Lcom/yandex/mobile/ads/impl/sj0;Lcom/yandex/mobile/ads/impl/ox0;)Lcom/yandex/mobile/ads/impl/zv1;

    move-result-object p0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method


# virtual methods
.method public final a(Lcom/monetization/ads/nativeads/CustomizableMediaView;Lcom/yandex/mobile/ads/impl/o3;Lcom/yandex/mobile/ads/impl/sj0;Lcom/yandex/mobile/ads/impl/aw0;Lcom/yandex/mobile/ads/impl/pk0;Lcom/yandex/mobile/ads/impl/n91;Lcom/yandex/mobile/ads/impl/t81;Lcom/yandex/mobile/ads/impl/e51;Lcom/yandex/mobile/ads/impl/ox0;Lcom/yandex/mobile/ads/impl/yx1;Lcom/yandex/mobile/ads/impl/ex0;)Lcom/yandex/mobile/ads/impl/hx0;
    .locals 21

    move-object/from16 v7, p0

    .line 11
    const-string v0, "mediaView"

    move-object/from16 v6, p1

    invoke-static {v6, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adConfiguration"

    move-object/from16 v5, p2

    invoke-static {v5, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "imageProvider"

    move-object/from16 v4, p3

    invoke-static {v4, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "controlsProvider"

    move-object/from16 v1, p4

    invoke-static {v1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "impressionEventsObservable"

    move-object/from16 v12, p5

    invoke-static {v12, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "nativeMediaContent"

    move-object/from16 v2, p6

    invoke-static {v2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "nativeForcePauseObserver"

    move-object/from16 v3, p7

    invoke-static {v3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "nativeAdControllers"

    move-object/from16 v15, p8

    invoke-static {v15, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mediaViewRenderController"

    move-object/from16 v14, p9

    invoke-static {v14, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-nez p11, :cond_0

    return-object v0

    .line 12
    :cond_0
    invoke-virtual/range {p6 .. p6}, Lcom/yandex/mobile/ads/impl/n91;->a()Lcom/yandex/mobile/ads/impl/db1;

    move-result-object v13

    .line 13
    invoke-virtual/range {p6 .. p6}, Lcom/yandex/mobile/ads/impl/n91;->b()Lcom/yandex/mobile/ads/impl/ic1;

    move-result-object v8

    .line 14
    invoke-virtual/range {p11 .. p11}, Lcom/yandex/mobile/ads/impl/ex0;->b()Lcom/yandex/mobile/ads/impl/wu0;

    move-result-object v9

    .line 15
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 16
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v10

    const-string v11, "getContext(...)"

    invoke-static {v10, v11}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v11, Lcom/yandex/mobile/ads/impl/w80;->e:Lcom/yandex/mobile/ads/impl/w80;

    invoke-static {v10, v11}, Lcom/yandex/mobile/ads/impl/x80;->a(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/w80;)Z

    move-result v20

    if-eqz v20, :cond_1

    .line 17
    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->removeAllViews()V

    :cond_1
    if-eqz v13, :cond_4

    .line 18
    invoke-virtual/range {p11 .. p11}, Lcom/yandex/mobile/ads/impl/ex0;->c()Lcom/yandex/mobile/ads/impl/lb2;

    move-result-object v19

    .line 19
    iget-object v8, v7, Lcom/yandex/mobile/ads/impl/yv1;->b:Lcom/yandex/mobile/ads/impl/nx0;

    move-object/from16 v9, p1

    move-object/from16 v10, p4

    move-object/from16 v11, p2

    move-object/from16 v12, p5

    move-object/from16 v14, p7

    move-object/from16 v15, p8

    move-object/from16 v16, p9

    move-object/from16 v17, p3

    move-object/from16 v18, p10

    invoke-virtual/range {v8 .. v19}, Lcom/yandex/mobile/ads/impl/nx0;->a(Lcom/monetization/ads/nativeads/CustomizableMediaView;Lcom/yandex/mobile/ads/impl/aw0;Lcom/yandex/mobile/ads/impl/o3;Lcom/yandex/mobile/ads/impl/pk0;Lcom/yandex/mobile/ads/impl/db1;Lcom/yandex/mobile/ads/impl/t81;Lcom/yandex/mobile/ads/impl/e51;Lcom/yandex/mobile/ads/impl/ox0;Lcom/yandex/mobile/ads/impl/sj0;Lcom/yandex/mobile/ads/impl/yx1;Lcom/yandex/mobile/ads/impl/lb2;)Lcom/yandex/mobile/ads/impl/cw1;

    move-result-object v8

    if-eqz p10, :cond_2

    .line 20
    invoke-virtual/range {p10 .. p10}, Lcom/yandex/mobile/ads/impl/yx1;->a()Lcom/yandex/mobile/ads/impl/fz1;

    move-result-object v0

    :cond_2
    move-object v9, v0

    if-eqz v9, :cond_3

    if-eqz v20, :cond_3

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p9

    move-object/from16 v5, p10

    move-object/from16 v6, p11

    .line 21
    invoke-direct/range {v0 .. v6}, Lcom/yandex/mobile/ads/impl/yv1;->a(Lcom/monetization/ads/nativeads/CustomizableMediaView;Lcom/yandex/mobile/ads/impl/o3;Lcom/yandex/mobile/ads/impl/sj0;Lcom/yandex/mobile/ads/impl/ox0;Lcom/yandex/mobile/ads/impl/yx1;Lcom/yandex/mobile/ads/impl/ex0;)Lcom/yandex/mobile/ads/impl/hx0;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 22
    new-instance v0, Lcom/yandex/mobile/ads/impl/dw1;

    move-object v1, v0

    move-object/from16 v2, p1

    move-object v3, v8

    move-object/from16 v5, p9

    move-object v6, v9

    invoke-direct/range {v1 .. v6}, Lcom/yandex/mobile/ads/impl/dw1;-><init>(Lcom/monetization/ads/nativeads/CustomizableMediaView;Lcom/yandex/mobile/ads/impl/cw1;Lcom/yandex/mobile/ads/impl/hx0;Lcom/yandex/mobile/ads/impl/ox0;Lcom/yandex/mobile/ads/impl/fz1;)V

    goto :goto_0

    :cond_3
    move-object v0, v8

    goto :goto_0

    :cond_4
    if-eqz v8, :cond_5

    if-eqz v9, :cond_5

    .line 23
    invoke-static {v2}, Ly45;->g(Ljava/lang/Object;)V

    invoke-static {v2}, Lcom/yandex/mobile/ads/impl/oa;->a(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 24
    :try_start_0
    iget-object v1, v7, Lcom/yandex/mobile/ads/impl/yv1;->e:Lcom/yandex/mobile/ads/impl/lx0;

    move-object/from16 v2, p1

    move-object v3, v9

    move-object/from16 v4, p5

    move-object v5, v8

    move-object/from16 v6, p9

    invoke-virtual/range {v1 .. v6}, Lcom/yandex/mobile/ads/impl/lx0;->a(Lcom/monetization/ads/nativeads/CustomizableMediaView;Lcom/yandex/mobile/ads/impl/wu0;Lcom/yandex/mobile/ads/impl/pk0;Lcom/yandex/mobile/ads/impl/ic1;Lcom/yandex/mobile/ads/impl/ox0;)Lcom/yandex/mobile/ads/impl/aw1;

    move-result-object v0
    :try_end_0
    .catch Lcom/yandex/mobile/ads/impl/tj2; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_5
    :goto_0
    if-nez v0, :cond_6

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p9

    move-object/from16 v5, p10

    move-object/from16 v6, p11

    .line 25
    invoke-direct/range {v0 .. v6}, Lcom/yandex/mobile/ads/impl/yv1;->a(Lcom/monetization/ads/nativeads/CustomizableMediaView;Lcom/yandex/mobile/ads/impl/o3;Lcom/yandex/mobile/ads/impl/sj0;Lcom/yandex/mobile/ads/impl/ox0;Lcom/yandex/mobile/ads/impl/yx1;Lcom/yandex/mobile/ads/impl/ex0;)Lcom/yandex/mobile/ads/impl/hx0;

    move-result-object v0

    :cond_6
    return-object v0
.end method
