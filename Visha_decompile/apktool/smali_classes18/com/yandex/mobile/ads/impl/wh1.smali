.class public final Lcom/yandex/mobile/ads/impl/wh1;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/qm0;

.field private final b:Lcom/yandex/mobile/ads/impl/vh1;

.field private c:Lcom/yandex/mobile/ads/impl/wy1;

.field private d:Lcom/yandex/mobile/ads/impl/v01;

.field private e:Lcom/yandex/mobile/ads/impl/wy1;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/bv1;Lcom/yandex/mobile/ads/impl/et;Lcom/yandex/mobile/ads/impl/jm0;Lcom/yandex/mobile/ads/impl/cn0;Lcom/yandex/mobile/ads/impl/gf2;Lcom/yandex/mobile/ads/impl/cf2;Lcom/yandex/mobile/ads/impl/am0;)V
    .locals 10

    .line 1
    new-instance v9, Lcom/yandex/mobile/ads/impl/qm0;

    move-object v3, p3

    move-object/from16 v6, p6

    invoke-direct {v9, p3, v6}, Lcom/yandex/mobile/ads/impl/qm0;-><init>(Lcom/yandex/mobile/ads/impl/et;Lcom/yandex/mobile/ads/impl/gf2;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p4

    move-object v5, p5

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    .line 2
    invoke-direct/range {v0 .. v9}, Lcom/yandex/mobile/ads/impl/wh1;-><init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/bv1;Lcom/yandex/mobile/ads/impl/et;Lcom/yandex/mobile/ads/impl/jm0;Lcom/yandex/mobile/ads/impl/cn0;Lcom/yandex/mobile/ads/impl/gf2;Lcom/yandex/mobile/ads/impl/cf2;Lcom/yandex/mobile/ads/impl/am0;Lcom/yandex/mobile/ads/impl/qm0;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/bv1;Lcom/yandex/mobile/ads/impl/et;Lcom/yandex/mobile/ads/impl/jm0;Lcom/yandex/mobile/ads/impl/cn0;Lcom/yandex/mobile/ads/impl/gf2;Lcom/yandex/mobile/ads/impl/cf2;Lcom/yandex/mobile/ads/impl/am0;Lcom/yandex/mobile/ads/impl/qm0;)V
    .locals 11

    move-object v0, p0

    move-object/from16 v8, p9

    .line 3
    const-string v1, "context"

    move-object v2, p1

    invoke-static {p1, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "sdkEnvironmentModule"

    move-object v3, p2

    invoke-static {p2, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "instreamVideoAd"

    move-object v4, p3

    invoke-static {p3, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "instreamAdPlayerController"

    move-object v4, p4

    invoke-static {p4, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "instreamAdViewHolderProvider"

    move-object/from16 v7, p5

    invoke-static {v7, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "videoPlayerController"

    move-object/from16 v5, p6

    invoke-static {v5, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "videoPlaybackController"

    move-object/from16 v6, p7

    invoke-static {v6, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "customUiElementsHolder"

    move-object/from16 v9, p8

    invoke-static {v9, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "instreamAdPlaylistHolder"

    invoke-static {v8, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-object v8, v0, Lcom/yandex/mobile/ads/impl/wh1;->a:Lcom/yandex/mobile/ads/impl/qm0;

    .line 6
    new-instance v10, Lcom/yandex/mobile/ads/impl/vh1;

    move-object v1, v10

    invoke-direct/range {v1 .. v9}, Lcom/yandex/mobile/ads/impl/vh1;-><init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/bv1;Lcom/yandex/mobile/ads/impl/jm0;Lcom/yandex/mobile/ads/impl/gf2;Lcom/yandex/mobile/ads/impl/cf2;Lcom/yandex/mobile/ads/impl/cn0;Lcom/yandex/mobile/ads/impl/qm0;Lcom/yandex/mobile/ads/impl/am0;)V

    iput-object v10, v0, Lcom/yandex/mobile/ads/impl/wh1;->b:Lcom/yandex/mobile/ads/impl/vh1;

    return-void
.end method


# virtual methods
.method public final a()Lcom/yandex/mobile/ads/impl/x8;
    .locals 2

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/wh1;->d:Lcom/yandex/mobile/ads/impl/v01;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/wh1;->b:Lcom/yandex/mobile/ads/impl/vh1;

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/wh1;->a:Lcom/yandex/mobile/ads/impl/qm0;

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/qm0;->a()Lcom/yandex/mobile/ads/impl/om0;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yandex/mobile/ads/impl/vh1;->a(Lcom/yandex/mobile/ads/impl/om0;)Lcom/yandex/mobile/ads/impl/v01;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/mobile/ads/impl/wh1;->d:Lcom/yandex/mobile/ads/impl/v01;

    :cond_0
    return-object v0
.end method

.method public final b()Lcom/yandex/mobile/ads/impl/x8;
    .locals 2

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/wh1;->e:Lcom/yandex/mobile/ads/impl/wy1;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/wh1;->a:Lcom/yandex/mobile/ads/impl/qm0;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/qm0;->a()Lcom/yandex/mobile/ads/impl/om0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/om0;->b()Lcom/yandex/mobile/ads/impl/gt;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/wh1;->b:Lcom/yandex/mobile/ads/impl/vh1;

    invoke-virtual {v1, v0}, Lcom/yandex/mobile/ads/impl/vh1;->a(Lcom/yandex/mobile/ads/impl/gt;)Lcom/yandex/mobile/ads/impl/wy1;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/yandex/mobile/ads/impl/wh1;->e:Lcom/yandex/mobile/ads/impl/wy1;

    :cond_1
    return-object v0
.end method

.method public final c()Lcom/yandex/mobile/ads/impl/x8;
    .locals 2

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/wh1;->c:Lcom/yandex/mobile/ads/impl/wy1;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/wh1;->a:Lcom/yandex/mobile/ads/impl/qm0;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/qm0;->a()Lcom/yandex/mobile/ads/impl/om0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/om0;->c()Lcom/yandex/mobile/ads/impl/gt;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/wh1;->b:Lcom/yandex/mobile/ads/impl/vh1;

    invoke-virtual {v1, v0}, Lcom/yandex/mobile/ads/impl/vh1;->a(Lcom/yandex/mobile/ads/impl/gt;)Lcom/yandex/mobile/ads/impl/wy1;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/yandex/mobile/ads/impl/wh1;->c:Lcom/yandex/mobile/ads/impl/wy1;

    :cond_1
    return-object v0
.end method
