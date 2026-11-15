.class public final Lcom/yandex/mobile/ads/impl/g71;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/sj0;

.field private final b:Lcom/yandex/mobile/ads/impl/dp;

.field private final c:Lcom/yandex/mobile/ads/impl/q71;

.field private final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/yandex/mobile/ads/impl/jg<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/r71;Lcom/yandex/mobile/ads/impl/o3;Lcom/yandex/mobile/ads/impl/sj0;Lcom/yandex/mobile/ads/impl/pk0;Lcom/yandex/mobile/ads/impl/dp;Lcom/yandex/mobile/ads/impl/s51;Lcom/yandex/mobile/ads/impl/vg;Lcom/yandex/mobile/ads/impl/n91;Lcom/yandex/mobile/ads/impl/t81;Lcom/yandex/mobile/ads/impl/o8;Lcom/yandex/mobile/ads/impl/fc1;Lcom/yandex/mobile/ads/impl/e51;Lcom/yandex/mobile/ads/impl/ox0;Lcom/yandex/mobile/ads/impl/q71;Lcom/yandex/mobile/ads/impl/pj2;Lcom/yandex/mobile/ads/impl/ix0;Ljava/util/Map;)V
    .locals 7

    move-object v0, p0

    move-object v1, p3

    move-object v2, p5

    move-object/from16 v3, p14

    move-object/from16 v4, p17

    .line 1
    const-string v5, "nativeAdWeakViewHolder"

    move-object v6, p1

    invoke-static {p1, v5}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "adConfiguration"

    move-object v6, p2

    invoke-static {p2, v5}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "imageProvider"

    invoke-static {p3, v5}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "impressionEventsObservable"

    move-object v6, p4

    invoke-static {p4, v5}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "onClickListenerFactory"

    invoke-static {p5, v5}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "nativeAdFactoriesProvider"

    move-object v6, p6

    invoke-static {p6, v5}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "assetValueProvider"

    move-object v6, p7

    invoke-static {p7, v5}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "nativeMediaContent"

    move-object v6, p8

    invoke-static {p8, v5}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "nativeForcePauseObserver"

    move-object/from16 v6, p9

    invoke-static {v6, v5}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "adResponse"

    move-object/from16 v6, p10

    invoke-static {v6, v5}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "nativeVisualBlock"

    move-object/from16 v6, p11

    invoke-static {v6, v5}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "nativeAdControllers"

    move-object/from16 v6, p12

    invoke-static {v6, v5}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "mediaViewRenderController"

    move-object/from16 v6, p13

    invoke-static {v6, v5}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "weakViewProvider"

    invoke-static {v3, v5}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "mediaControlsProvider"

    move-object/from16 v6, p15

    invoke-static {v6, v5}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "mediaViewAdapterCreator"

    move-object/from16 v6, p16

    invoke-static {v6, v5}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "assetAdapters"

    invoke-static {v4, v5}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object v1, v0, Lcom/yandex/mobile/ads/impl/g71;->a:Lcom/yandex/mobile/ads/impl/sj0;

    .line 4
    iput-object v2, v0, Lcom/yandex/mobile/ads/impl/g71;->b:Lcom/yandex/mobile/ads/impl/dp;

    .line 5
    iput-object v3, v0, Lcom/yandex/mobile/ads/impl/g71;->c:Lcom/yandex/mobile/ads/impl/q71;

    .line 6
    iput-object v4, v0, Lcom/yandex/mobile/ads/impl/g71;->d:Ljava/util/Map;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/yandex/mobile/ads/impl/r71;Lcom/yandex/mobile/ads/impl/o3;Lcom/yandex/mobile/ads/impl/sj0;Lcom/yandex/mobile/ads/impl/pk0;Lcom/yandex/mobile/ads/impl/dp;Lcom/yandex/mobile/ads/impl/s51;Lcom/yandex/mobile/ads/impl/vg;Lcom/yandex/mobile/ads/impl/n91;Lcom/yandex/mobile/ads/impl/t81;Lcom/yandex/mobile/ads/impl/o8;Lcom/yandex/mobile/ads/impl/fc1;Lcom/yandex/mobile/ads/impl/e51;Lcom/yandex/mobile/ads/impl/ox0;Lcom/yandex/mobile/ads/impl/yx1;)V
    .locals 28

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    move-object/from16 v12, p12

    move-object/from16 v13, p13

    .line 7
    invoke-virtual/range {p1 .. p1}, Lcom/yandex/mobile/ads/impl/r71;->a()Lcom/yandex/mobile/ads/impl/q71;

    move-result-object v15

    move-object v14, v15

    .line 8
    new-instance v0, Lcom/yandex/mobile/ads/impl/pj2;

    move-object/from16 v26, v1

    move-object v1, v15

    move-object v15, v0

    invoke-direct {v0, v1}, Lcom/yandex/mobile/ads/impl/pj2;-><init>(Lcom/yandex/mobile/ads/impl/q71;)V

    .line 9
    new-instance v27, Lcom/yandex/mobile/ads/impl/ix0;

    move-object/from16 v16, v27

    .line 10
    invoke-virtual/range {p6 .. p6}, Lcom/yandex/mobile/ads/impl/s51;->c()Lcom/yandex/mobile/ads/impl/jx0;

    move-result-object v21

    move-object/from16 v17, v27

    move-object/from16 v18, p7

    move-object/from16 v19, p2

    move-object/from16 v20, p4

    move-object/from16 v22, p12

    move-object/from16 v23, p13

    move-object/from16 v24, v0

    move-object/from16 v25, p14

    .line 11
    invoke-direct/range {v17 .. v25}, Lcom/yandex/mobile/ads/impl/ix0;-><init>(Lcom/yandex/mobile/ads/impl/vg;Lcom/yandex/mobile/ads/impl/o3;Lcom/yandex/mobile/ads/impl/pk0;Lcom/yandex/mobile/ads/impl/jx0;Lcom/yandex/mobile/ads/impl/e51;Lcom/yandex/mobile/ads/impl/ox0;Lcom/yandex/mobile/ads/impl/pj2;Lcom/yandex/mobile/ads/impl/yx1;)V

    .line 12
    new-instance v0, Lcom/yandex/mobile/ads/impl/lg;

    .line 13
    invoke-virtual/range {p2 .. p2}, Lcom/yandex/mobile/ads/impl/o3;->q()Lcom/yandex/mobile/ads/impl/bv1;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Lcom/yandex/mobile/ads/impl/bv1;->c()Lcom/yandex/mobile/ads/impl/s01;

    move-result-object v25

    move-object/from16 v17, v0

    move-object/from16 v18, v1

    move-object/from16 v19, p3

    move-object/from16 v20, v27

    move-object/from16 v21, p8

    move-object/from16 v22, p9

    move-object/from16 v23, p10

    move-object/from16 v24, p11

    .line 14
    invoke-direct/range {v17 .. v25}, Lcom/yandex/mobile/ads/impl/lg;-><init>(Lcom/yandex/mobile/ads/impl/q71;Lcom/yandex/mobile/ads/impl/sj0;Lcom/yandex/mobile/ads/impl/ix0;Lcom/yandex/mobile/ads/impl/n91;Lcom/yandex/mobile/ads/impl/t81;Lcom/yandex/mobile/ads/impl/o8;Lcom/yandex/mobile/ads/impl/fc1;Lcom/yandex/mobile/ads/impl/sp1;)V

    .line 15
    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/lg;->a()Ljava/util/HashMap;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    .line 16
    invoke-direct/range {v0 .. v17}, Lcom/yandex/mobile/ads/impl/g71;-><init>(Lcom/yandex/mobile/ads/impl/r71;Lcom/yandex/mobile/ads/impl/o3;Lcom/yandex/mobile/ads/impl/sj0;Lcom/yandex/mobile/ads/impl/pk0;Lcom/yandex/mobile/ads/impl/dp;Lcom/yandex/mobile/ads/impl/s51;Lcom/yandex/mobile/ads/impl/vg;Lcom/yandex/mobile/ads/impl/n91;Lcom/yandex/mobile/ads/impl/t81;Lcom/yandex/mobile/ads/impl/o8;Lcom/yandex/mobile/ads/impl/fc1;Lcom/yandex/mobile/ads/impl/e51;Lcom/yandex/mobile/ads/impl/ox0;Lcom/yandex/mobile/ads/impl/q71;Lcom/yandex/mobile/ads/impl/pj2;Lcom/yandex/mobile/ads/impl/ix0;Ljava/util/Map;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/yandex/mobile/ads/impl/ig;)Lcom/yandex/mobile/ads/impl/jg;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yandex/mobile/ads/impl/ig<",
            "*>;)",
            "Lcom/yandex/mobile/ads/impl/jg<",
            "*>;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 3
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/g71;->d:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/ig;->b()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/yandex/mobile/ads/impl/jg;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public final a()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/g71;->d:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yandex/mobile/ads/impl/jg;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lcom/yandex/mobile/ads/impl/jg;->a()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final b()V
    .locals 1

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/g71;->d:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yandex/mobile/ads/impl/jg;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/yandex/mobile/ads/impl/jg;->destroy()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final c()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/yandex/mobile/ads/impl/jg<",
            "*>;>;"
        }
    .end annotation

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/g71;->d:Ljava/util/Map;

    return-object p0
.end method

.method public final d()Lcom/yandex/mobile/ads/impl/sj0;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/g71;->a:Lcom/yandex/mobile/ads/impl/sj0;

    return-object p0
.end method

.method public final e()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/g71;->c:Lcom/yandex/mobile/ads/impl/q71;

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/q71;->d()Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public final f()Lcom/yandex/mobile/ads/impl/dp;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/g71;->b:Lcom/yandex/mobile/ads/impl/dp;

    return-object p0
.end method

.method public final g()Lcom/yandex/mobile/ads/impl/q71;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/g71;->c:Lcom/yandex/mobile/ads/impl/q71;

    return-object p0
.end method
