.class public final Lcom/yandex/mobile/ads/impl/vh1;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/yandex/mobile/ads/impl/jm0;

.field private final c:Lcom/yandex/mobile/ads/impl/gf2;

.field private final d:Lcom/yandex/mobile/ads/impl/cf2;

.field private final e:Lcom/yandex/mobile/ads/impl/cn0;

.field private final f:Lcom/yandex/mobile/ads/impl/ym0;

.field private final g:Lcom/yandex/mobile/ads/impl/a3;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/bv1;Lcom/yandex/mobile/ads/impl/jm0;Lcom/yandex/mobile/ads/impl/gf2;Lcom/yandex/mobile/ads/impl/cf2;Lcom/yandex/mobile/ads/impl/cn0;Lcom/yandex/mobile/ads/impl/qm0;Lcom/yandex/mobile/ads/impl/am0;)V
    .locals 11

    .line 1
    new-instance v9, Lcom/yandex/mobile/ads/impl/ym0;

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v0, "getApplicationContext(...)"

    invoke-static {v1, v0}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, v9

    move-object v2, p2

    move-object/from16 v3, p6

    move-object v4, p4

    move-object v5, p3

    move-object/from16 v6, p8

    .line 3
    invoke-direct/range {v0 .. v6}, Lcom/yandex/mobile/ads/impl/ym0;-><init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/bv1;Lcom/yandex/mobile/ads/impl/cn0;Lcom/yandex/mobile/ads/impl/aj1;Lcom/yandex/mobile/ads/impl/jm0;Lcom/yandex/mobile/ads/impl/am0;)V

    .line 4
    new-instance v10, Lcom/yandex/mobile/ads/impl/a3;

    move-object/from16 v7, p7

    invoke-direct {v10, v7}, Lcom/yandex/mobile/ads/impl/a3;-><init>(Lcom/yandex/mobile/ads/impl/qm0;)V

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v8, p8

    .line 5
    invoke-direct/range {v0 .. v10}, Lcom/yandex/mobile/ads/impl/vh1;-><init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/bv1;Lcom/yandex/mobile/ads/impl/jm0;Lcom/yandex/mobile/ads/impl/gf2;Lcom/yandex/mobile/ads/impl/cf2;Lcom/yandex/mobile/ads/impl/cn0;Lcom/yandex/mobile/ads/impl/qm0;Lcom/yandex/mobile/ads/impl/am0;Lcom/yandex/mobile/ads/impl/ym0;Lcom/yandex/mobile/ads/impl/a3;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/bv1;Lcom/yandex/mobile/ads/impl/jm0;Lcom/yandex/mobile/ads/impl/gf2;Lcom/yandex/mobile/ads/impl/cf2;Lcom/yandex/mobile/ads/impl/cn0;Lcom/yandex/mobile/ads/impl/qm0;Lcom/yandex/mobile/ads/impl/am0;Lcom/yandex/mobile/ads/impl/ym0;Lcom/yandex/mobile/ads/impl/a3;)V
    .locals 1

    .line 6
    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sdkEnvironmentModule"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "instreamAdPlayerController"

    invoke-static {p3, p2}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "videoPlayerController"

    invoke-static {p4, p2}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "videoPlaybackController"

    invoke-static {p5, p2}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "instreamAdViewsHolderManager"

    invoke-static {p6, p2}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "instreamAdPlaylistHolder"

    invoke-static {p7, p2}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "customUiElementsHolder"

    invoke-static {p8, p2}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "instreamAdUiElementsManager"

    invoke-static {p9, p2}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "adBreakStatusControllerHolder"

    invoke-static {p10, p2}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/vh1;->a:Landroid/content/Context;

    .line 9
    iput-object p3, p0, Lcom/yandex/mobile/ads/impl/vh1;->b:Lcom/yandex/mobile/ads/impl/jm0;

    .line 10
    iput-object p4, p0, Lcom/yandex/mobile/ads/impl/vh1;->c:Lcom/yandex/mobile/ads/impl/gf2;

    .line 11
    iput-object p5, p0, Lcom/yandex/mobile/ads/impl/vh1;->d:Lcom/yandex/mobile/ads/impl/cf2;

    .line 12
    iput-object p6, p0, Lcom/yandex/mobile/ads/impl/vh1;->e:Lcom/yandex/mobile/ads/impl/cn0;

    .line 13
    iput-object p9, p0, Lcom/yandex/mobile/ads/impl/vh1;->f:Lcom/yandex/mobile/ads/impl/ym0;

    .line 14
    iput-object p10, p0, Lcom/yandex/mobile/ads/impl/vh1;->g:Lcom/yandex/mobile/ads/impl/a3;

    return-void
.end method


# virtual methods
.method public final a(Lcom/yandex/mobile/ads/impl/om0;)Lcom/yandex/mobile/ads/impl/v01;
    .locals 12

    .line 1
    const-string v0, "instreamAdPlaylist"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance v0, Lcom/yandex/mobile/ads/impl/v01;

    .line 3
    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/vh1;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v1, "getApplicationContext(...)"

    invoke-static {v2, v1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/vh1;->g:Lcom/yandex/mobile/ads/impl/a3;

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/a3;->a()Lcom/yandex/mobile/ads/impl/z2;

    move-result-object v4

    .line 5
    iget-object v5, p0, Lcom/yandex/mobile/ads/impl/vh1;->b:Lcom/yandex/mobile/ads/impl/jm0;

    .line 6
    iget-object v6, p0, Lcom/yandex/mobile/ads/impl/vh1;->f:Lcom/yandex/mobile/ads/impl/ym0;

    .line 7
    iget-object v7, p0, Lcom/yandex/mobile/ads/impl/vh1;->e:Lcom/yandex/mobile/ads/impl/cn0;

    .line 8
    iget-object v8, p0, Lcom/yandex/mobile/ads/impl/vh1;->c:Lcom/yandex/mobile/ads/impl/gf2;

    .line 9
    iget-object v9, p0, Lcom/yandex/mobile/ads/impl/vh1;->d:Lcom/yandex/mobile/ads/impl/cf2;

    .line 10
    new-instance v10, Lcom/yandex/mobile/ads/impl/nb2;

    invoke-direct {v10}, Lcom/yandex/mobile/ads/impl/nb2;-><init>()V

    .line 11
    new-instance v11, Lcom/yandex/mobile/ads/impl/gj1;

    invoke-direct {v11, v8, v4}, Lcom/yandex/mobile/ads/impl/gj1;-><init>(Lcom/yandex/mobile/ads/impl/gf2;Lcom/yandex/mobile/ads/impl/z2;)V

    move-object v1, v0

    move-object v3, p1

    .line 12
    invoke-direct/range {v1 .. v11}, Lcom/yandex/mobile/ads/impl/v01;-><init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/om0;Lcom/yandex/mobile/ads/impl/z2;Lcom/yandex/mobile/ads/impl/jm0;Lcom/yandex/mobile/ads/impl/ym0;Lcom/yandex/mobile/ads/impl/cn0;Lcom/yandex/mobile/ads/impl/gf2;Lcom/yandex/mobile/ads/impl/cf2;Lcom/yandex/mobile/ads/impl/nb2;Lcom/yandex/mobile/ads/impl/gj1;)V

    return-object v0
.end method

.method public final a(Lcom/yandex/mobile/ads/impl/gt;)Lcom/yandex/mobile/ads/impl/wy1;
    .locals 14

    .line 13
    const-string v0, "adBreak"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    new-instance v0, Lcom/yandex/mobile/ads/impl/wy1;

    .line 15
    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/vh1;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    const-string v1, "getApplicationContext(...)"

    invoke-static {v9, v1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    iget-object v10, p0, Lcom/yandex/mobile/ads/impl/vh1;->b:Lcom/yandex/mobile/ads/impl/jm0;

    .line 17
    iget-object v11, p0, Lcom/yandex/mobile/ads/impl/vh1;->f:Lcom/yandex/mobile/ads/impl/ym0;

    .line 18
    iget-object v12, p0, Lcom/yandex/mobile/ads/impl/vh1;->e:Lcom/yandex/mobile/ads/impl/cn0;

    .line 19
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/vh1;->g:Lcom/yandex/mobile/ads/impl/a3;

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/a3;->a()Lcom/yandex/mobile/ads/impl/z2;

    move-result-object p0

    .line 20
    new-instance v13, Lcom/yandex/mobile/ads/impl/u2;

    move-object v2, v13

    move-object v3, v9

    move-object v4, p1

    move-object v5, v10

    move-object v6, v11

    move-object v7, v12

    move-object v8, p0

    invoke-direct/range {v2 .. v8}, Lcom/yandex/mobile/ads/impl/u2;-><init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/gt;Lcom/yandex/mobile/ads/impl/jm0;Lcom/yandex/mobile/ads/impl/ym0;Lcom/yandex/mobile/ads/impl/cn0;Lcom/yandex/mobile/ads/impl/z2;)V

    move-object v1, v0

    move-object v2, v9

    move-object v3, p1

    move-object v4, v10

    move-object v5, v11

    move-object v6, v12

    move-object v7, p0

    move-object v8, v13

    .line 21
    invoke-direct/range {v1 .. v8}, Lcom/yandex/mobile/ads/impl/wy1;-><init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/gt;Lcom/yandex/mobile/ads/impl/jm0;Lcom/yandex/mobile/ads/impl/ym0;Lcom/yandex/mobile/ads/impl/cn0;Lcom/yandex/mobile/ads/impl/z2;Lcom/yandex/mobile/ads/impl/u2;)V

    return-object v0
.end method
