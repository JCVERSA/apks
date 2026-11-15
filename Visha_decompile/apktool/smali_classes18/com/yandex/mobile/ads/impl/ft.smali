.class public final Lcom/yandex/mobile/ads/impl/ft;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/impl/h82;


# annotations
.annotation build Landroidx/annotation/MainThread;
.end annotation


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/kt;

.field private final b:Lcom/yandex/mobile/ads/impl/mu;

.field private final c:Lcom/yandex/mobile/ads/impl/zn0;

.field private final d:Lcom/yandex/mobile/ads/impl/ul0;

.field private final e:Lcom/yandex/mobile/ads/impl/nb2;

.field private final f:Lcom/yandex/mobile/ads/impl/am0;

.field private final g:Lcom/yandex/mobile/ads/impl/lm0;

.field private final h:Lcom/yandex/mobile/ads/impl/po0;

.field private final i:Lcom/yandex/mobile/ads/impl/to0;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/bv1;Lcom/yandex/mobile/ads/impl/et;Lcom/yandex/mobile/ads/impl/kt;Lcom/yandex/mobile/ads/impl/mu;)V
    .locals 12

    .line 1
    new-instance v6, Lcom/yandex/mobile/ads/impl/nm0;

    invoke-direct {v6}, Lcom/yandex/mobile/ads/impl/nm0;-><init>()V

    .line 2
    new-instance v7, Lcom/yandex/mobile/ads/impl/qo0;

    invoke-direct {v7}, Lcom/yandex/mobile/ads/impl/qo0;-><init>()V

    .line 3
    new-instance v8, Lcom/yandex/mobile/ads/impl/zn0;

    invoke-direct {v8}, Lcom/yandex/mobile/ads/impl/zn0;-><init>()V

    .line 4
    sget v0, Lcom/yandex/mobile/ads/impl/ul0;->d:I

    invoke-static {}, Lcom/yandex/mobile/ads/impl/ul0$a;->a()Lcom/yandex/mobile/ads/impl/ul0;

    move-result-object v9

    .line 5
    new-instance v10, Lcom/yandex/mobile/ads/impl/nb2;

    invoke-direct {v10}, Lcom/yandex/mobile/ads/impl/nb2;-><init>()V

    .line 6
    new-instance v11, Lcom/yandex/mobile/ads/impl/am0;

    invoke-direct {v11}, Lcom/yandex/mobile/ads/impl/am0;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    .line 7
    invoke-direct/range {v0 .. v11}, Lcom/yandex/mobile/ads/impl/ft;-><init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/bv1;Lcom/yandex/mobile/ads/impl/et;Lcom/yandex/mobile/ads/impl/kt;Lcom/yandex/mobile/ads/impl/mu;Lcom/yandex/mobile/ads/impl/nm0;Lcom/yandex/mobile/ads/impl/qo0;Lcom/yandex/mobile/ads/impl/zn0;Lcom/yandex/mobile/ads/impl/ul0;Lcom/yandex/mobile/ads/impl/nb2;Lcom/yandex/mobile/ads/impl/am0;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/bv1;Lcom/yandex/mobile/ads/impl/et;Lcom/yandex/mobile/ads/impl/kt;Lcom/yandex/mobile/ads/impl/mu;Lcom/yandex/mobile/ads/impl/nm0;Lcom/yandex/mobile/ads/impl/qo0;Lcom/yandex/mobile/ads/impl/zn0;Lcom/yandex/mobile/ads/impl/ul0;Lcom/yandex/mobile/ads/impl/nb2;Lcom/yandex/mobile/ads/impl/am0;)V
    .locals 13

    move-object v0, p0

    move-object/from16 v1, p4

    move-object/from16 v2, p5

    move-object/from16 v3, p8

    move-object/from16 v4, p9

    move-object/from16 v5, p10

    move-object/from16 v12, p11

    .line 8
    const-string v6, "context"

    move-object v7, p1

    invoke-static {p1, v6}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "sdkEnvironmentModule"

    move-object v8, p2

    invoke-static {p2, v6}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "instreamAd"

    move-object/from16 v9, p3

    invoke-static {v9, v6}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "instreamAdPlayer"

    invoke-static {v1, v6}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "videoPlayer"

    invoke-static {v2, v6}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "instreamAdPlayerReuseControllerFactory"

    move-object/from16 v10, p6

    invoke-static {v10, v6}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "instreamVideoPlayerReuseControllerFactory"

    move-object/from16 v11, p7

    invoke-static {v11, v6}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "playbackEventListener"

    invoke-static {v3, v6}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "bindingManager"

    invoke-static {v4, v6}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "playbackProxyListener"

    invoke-static {v5, v6}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "customUiElementsHolder"

    invoke-static {v12, v6}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object v1, v0, Lcom/yandex/mobile/ads/impl/ft;->a:Lcom/yandex/mobile/ads/impl/kt;

    .line 11
    iput-object v2, v0, Lcom/yandex/mobile/ads/impl/ft;->b:Lcom/yandex/mobile/ads/impl/mu;

    .line 12
    iput-object v3, v0, Lcom/yandex/mobile/ads/impl/ft;->c:Lcom/yandex/mobile/ads/impl/zn0;

    .line 13
    iput-object v4, v0, Lcom/yandex/mobile/ads/impl/ft;->d:Lcom/yandex/mobile/ads/impl/ul0;

    .line 14
    iput-object v5, v0, Lcom/yandex/mobile/ads/impl/ft;->e:Lcom/yandex/mobile/ads/impl/nb2;

    .line 15
    iput-object v12, v0, Lcom/yandex/mobile/ads/impl/ft;->f:Lcom/yandex/mobile/ads/impl/am0;

    .line 16
    invoke-virtual/range {p6 .. p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/nm0;->a(Lcom/yandex/mobile/ads/impl/h82;)Lcom/yandex/mobile/ads/impl/lm0;

    move-result-object v4

    iput-object v4, v0, Lcom/yandex/mobile/ads/impl/ft;->g:Lcom/yandex/mobile/ads/impl/lm0;

    .line 17
    invoke-virtual/range {p7 .. p7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/qo0;->a(Lcom/yandex/mobile/ads/impl/ft;)Lcom/yandex/mobile/ads/impl/po0;

    move-result-object v4

    iput-object v4, v0, Lcom/yandex/mobile/ads/impl/ft;->h:Lcom/yandex/mobile/ads/impl/po0;

    .line 18
    new-instance v10, Lcom/yandex/mobile/ads/impl/jm0;

    invoke-direct {v10, v1}, Lcom/yandex/mobile/ads/impl/jm0;-><init>(Lcom/yandex/mobile/ads/impl/kt;)V

    .line 19
    new-instance v11, Lcom/yandex/mobile/ads/impl/gf2;

    invoke-direct {v11, v2}, Lcom/yandex/mobile/ads/impl/gf2;-><init>(Lcom/yandex/mobile/ads/impl/mu;)V

    .line 20
    new-instance v1, Lcom/yandex/mobile/ads/impl/to0;

    move-object v6, v1

    invoke-direct/range {v6 .. v12}, Lcom/yandex/mobile/ads/impl/to0;-><init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/bv1;Lcom/yandex/mobile/ads/impl/et;Lcom/yandex/mobile/ads/impl/jm0;Lcom/yandex/mobile/ads/impl/gf2;Lcom/yandex/mobile/ads/impl/am0;)V

    iput-object v1, v0, Lcom/yandex/mobile/ads/impl/ft;->i:Lcom/yandex/mobile/ads/impl/to0;

    .line 21
    invoke-virtual {v1, v3}, Lcom/yandex/mobile/ads/impl/to0;->a(Lcom/yandex/mobile/ads/impl/so0;)V

    .line 22
    invoke-virtual {v1, v5}, Lcom/yandex/mobile/ads/impl/to0;->a(Lcom/yandex/mobile/ads/impl/lo0;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 12
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/ft;->h:Lcom/yandex/mobile/ads/impl/po0;

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/ft;->b:Lcom/yandex/mobile/ads/impl/mu;

    invoke-virtual {v0, v1}, Lcom/yandex/mobile/ads/impl/po0;->b(Lcom/yandex/mobile/ads/impl/mu;)V

    .line 13
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/ft;->i:Lcom/yandex/mobile/ads/impl/to0;

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/to0;->b()V

    return-void
.end method

.method public final a(Lcom/yandex/mobile/ads/impl/fm2;)V
    .locals 0

    .line 15
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/ft;->c:Lcom/yandex/mobile/ads/impl/zn0;

    invoke-virtual {p0, p1}, Lcom/yandex/mobile/ads/impl/zn0;->a(Lcom/yandex/mobile/ads/impl/fm2;)V

    return-void
.end method

.method public final a(Lcom/yandex/mobile/ads/impl/lo0;)V
    .locals 0

    .line 14
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/ft;->e:Lcom/yandex/mobile/ads/impl/nb2;

    invoke-virtual {p0, p1}, Lcom/yandex/mobile/ads/impl/nb2;->a(Lcom/yandex/mobile/ads/impl/lo0;)V

    return-void
.end method

.method public final a(Lcom/yandex/mobile/ads/impl/t70;Ljava/util/List;)V
    .locals 2
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
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/ft;->d:Lcom/yandex/mobile/ads/impl/ul0;

    invoke-virtual {v0, p1}, Lcom/yandex/mobile/ads/impl/ul0;->a(Landroid/view/View;)Lcom/yandex/mobile/ads/impl/ft;

    move-result-object v0

    .line 3
    invoke-static {p0, v0}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    if-eqz v0, :cond_0

    .line 4
    iget-object v1, v0, Lcom/yandex/mobile/ads/impl/ft;->d:Lcom/yandex/mobile/ads/impl/ul0;

    invoke-virtual {v1, v0}, Lcom/yandex/mobile/ads/impl/ul0;->a(Lcom/yandex/mobile/ads/impl/ft;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5
    iget-object v0, v0, Lcom/yandex/mobile/ads/impl/ft;->i:Lcom/yandex/mobile/ads/impl/to0;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/to0;->d()V

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/ft;->d:Lcom/yandex/mobile/ads/impl/ul0;

    invoke-virtual {v0, p0}, Lcom/yandex/mobile/ads/impl/ul0;->a(Lcom/yandex/mobile/ads/impl/ft;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/ft;->i:Lcom/yandex/mobile/ads/impl/to0;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/to0;->d()V

    .line 8
    :cond_1
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/ft;->d:Lcom/yandex/mobile/ads/impl/ul0;

    invoke-virtual {v0, p1, p0}, Lcom/yandex/mobile/ads/impl/ul0;->a(Landroid/view/View;Lcom/yandex/mobile/ads/impl/ft;)V

    .line 9
    :cond_2
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/ft;->g:Lcom/yandex/mobile/ads/impl/lm0;

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/ft;->a:Lcom/yandex/mobile/ads/impl/kt;

    invoke-virtual {v0, v1}, Lcom/yandex/mobile/ads/impl/lm0;->a(Lcom/yandex/mobile/ads/impl/kt;)V

    .line 10
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/ft;->h:Lcom/yandex/mobile/ads/impl/po0;

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/ft;->b:Lcom/yandex/mobile/ads/impl/mu;

    invoke-virtual {v0, v1}, Lcom/yandex/mobile/ads/impl/po0;->a(Lcom/yandex/mobile/ads/impl/mu;)V

    .line 11
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/ft;->i:Lcom/yandex/mobile/ads/impl/to0;

    invoke-virtual {p0, p1, p2}, Lcom/yandex/mobile/ads/impl/to0;->a(Lcom/yandex/mobile/ads/impl/t70;Ljava/util/List;)V

    return-void
.end method

.method public final b()V
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/ft;->i:Lcom/yandex/mobile/ads/impl/to0;

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/to0;->c()V

    return-void
.end method

.method public final c()V
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/ft;->f:Lcom/yandex/mobile/ads/impl/am0;

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/am0;->b()V

    return-void
.end method

.method public final d()V
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/ft;->f:Lcom/yandex/mobile/ads/impl/am0;

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/am0;->c()V

    return-void
.end method

.method public final e()V
    .locals 1

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/ft;->d:Lcom/yandex/mobile/ads/impl/ul0;

    invoke-virtual {v0, p0}, Lcom/yandex/mobile/ads/impl/ul0;->a(Lcom/yandex/mobile/ads/impl/ft;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/ft;->i:Lcom/yandex/mobile/ads/impl/to0;

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/to0;->d()V

    :cond_0
    return-void
.end method

.method public final invalidateAdPlayer()V
    .locals 2

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/ft;->g:Lcom/yandex/mobile/ads/impl/lm0;

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/ft;->a:Lcom/yandex/mobile/ads/impl/kt;

    invoke-virtual {v0, v1}, Lcom/yandex/mobile/ads/impl/lm0;->b(Lcom/yandex/mobile/ads/impl/kt;)V

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/ft;->i:Lcom/yandex/mobile/ads/impl/to0;

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/to0;->a()V

    return-void
.end method
