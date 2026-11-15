.class public final Lcom/yandex/mobile/ads/impl/w8;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/lo0;

.field private final b:Lcom/yandex/mobile/ads/impl/al1;

.field private final c:Lcom/yandex/mobile/ads/impl/wh1;

.field private final d:Lcom/yandex/mobile/ads/impl/v8;

.field private e:Lcom/yandex/mobile/ads/impl/u8;

.field private f:Lcom/yandex/mobile/ads/impl/u8;

.field private g:Lcom/yandex/mobile/ads/impl/u8;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/bv1;Lcom/yandex/mobile/ads/impl/et;Lcom/yandex/mobile/ads/impl/jm0;Lcom/yandex/mobile/ads/impl/cn0;Lcom/yandex/mobile/ads/impl/gf2;Lcom/yandex/mobile/ads/impl/cf2;Lcom/yandex/mobile/ads/impl/lo0;Lcom/yandex/mobile/ads/impl/am0;)V
    .locals 13

    .line 1
    new-instance v10, Lcom/yandex/mobile/ads/impl/al1;

    move-object/from16 v9, p6

    invoke-direct {v10, v9}, Lcom/yandex/mobile/ads/impl/al1;-><init>(Lcom/yandex/mobile/ads/impl/gf2;)V

    .line 2
    new-instance v11, Lcom/yandex/mobile/ads/impl/wh1;

    move-object v0, v11

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p9

    invoke-direct/range {v0 .. v8}, Lcom/yandex/mobile/ads/impl/wh1;-><init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/bv1;Lcom/yandex/mobile/ads/impl/et;Lcom/yandex/mobile/ads/impl/jm0;Lcom/yandex/mobile/ads/impl/cn0;Lcom/yandex/mobile/ads/impl/gf2;Lcom/yandex/mobile/ads/impl/cf2;Lcom/yandex/mobile/ads/impl/am0;)V

    .line 3
    new-instance v12, Lcom/yandex/mobile/ads/impl/v8;

    invoke-direct {v12}, Lcom/yandex/mobile/ads/impl/v8;-><init>()V

    move-object v0, p0

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    .line 4
    invoke-direct/range {v0 .. v12}, Lcom/yandex/mobile/ads/impl/w8;-><init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/bv1;Lcom/yandex/mobile/ads/impl/et;Lcom/yandex/mobile/ads/impl/jm0;Lcom/yandex/mobile/ads/impl/cn0;Lcom/yandex/mobile/ads/impl/gf2;Lcom/yandex/mobile/ads/impl/cf2;Lcom/yandex/mobile/ads/impl/lo0;Lcom/yandex/mobile/ads/impl/am0;Lcom/yandex/mobile/ads/impl/al1;Lcom/yandex/mobile/ads/impl/wh1;Lcom/yandex/mobile/ads/impl/v8;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/bv1;Lcom/yandex/mobile/ads/impl/et;Lcom/yandex/mobile/ads/impl/jm0;Lcom/yandex/mobile/ads/impl/cn0;Lcom/yandex/mobile/ads/impl/gf2;Lcom/yandex/mobile/ads/impl/cf2;Lcom/yandex/mobile/ads/impl/lo0;Lcom/yandex/mobile/ads/impl/am0;Lcom/yandex/mobile/ads/impl/al1;Lcom/yandex/mobile/ads/impl/wh1;Lcom/yandex/mobile/ads/impl/v8;)V
    .locals 1

    .line 5
    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "sdkEnvironmentModule"

    invoke-static {p2, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "instreamVideoAd"

    invoke-static {p3, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "instreamAdPlayerController"

    invoke-static {p4, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "instreamAdViewHolderProvider"

    invoke-static {p5, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "videoPlayerController"

    invoke-static {p6, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "videoPlaybackController"

    invoke-static {p7, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "adCreativePlaybackListener"

    invoke-static {p8, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "customUiElementsHolder"

    invoke-static {p9, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "prerollVideoPositionStartValidator"

    invoke-static {p10, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "playbackControllerHolder"

    invoke-static {p11, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "adSectionControllerFactory"

    invoke-static {p12, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-object p8, p0, Lcom/yandex/mobile/ads/impl/w8;->a:Lcom/yandex/mobile/ads/impl/lo0;

    .line 8
    iput-object p10, p0, Lcom/yandex/mobile/ads/impl/w8;->b:Lcom/yandex/mobile/ads/impl/al1;

    .line 9
    iput-object p11, p0, Lcom/yandex/mobile/ads/impl/w8;->c:Lcom/yandex/mobile/ads/impl/wh1;

    .line 10
    iput-object p12, p0, Lcom/yandex/mobile/ads/impl/w8;->d:Lcom/yandex/mobile/ads/impl/v8;

    return-void
.end method

.method private final a(Lcom/yandex/mobile/ads/impl/x8;)Lcom/yandex/mobile/ads/impl/u8;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/w8;->d:Lcom/yandex/mobile/ads/impl/v8;

    .line 2
    new-instance v1, Lcom/yandex/mobile/ads/impl/a9;

    invoke-direct {v1}, Lcom/yandex/mobile/ads/impl/a9;-><init>()V

    .line 3
    new-instance v2, Lcom/yandex/mobile/ads/impl/nb2;

    invoke-direct {v2}, Lcom/yandex/mobile/ads/impl/nb2;-><init>()V

    .line 4
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    const-string v0, "adSectionPlaybackController"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adSectionStatusController"

    invoke-static {v1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adCreativePlaybackProxyListener"

    invoke-static {v2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    new-instance v0, Lcom/yandex/mobile/ads/impl/u8;

    invoke-direct {v0, p1, v1, v2}, Lcom/yandex/mobile/ads/impl/u8;-><init>(Lcom/yandex/mobile/ads/impl/x8;Lcom/yandex/mobile/ads/impl/a9;Lcom/yandex/mobile/ads/impl/nb2;)V

    .line 7
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/w8;->a:Lcom/yandex/mobile/ads/impl/lo0;

    invoke-virtual {v0, p0}, Lcom/yandex/mobile/ads/impl/u8;->a(Lcom/yandex/mobile/ads/impl/lo0;)V

    return-object v0
.end method


# virtual methods
.method public final a()Lcom/yandex/mobile/ads/impl/u8;
    .locals 1

    .line 8
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/w8;->f:Lcom/yandex/mobile/ads/impl/u8;

    if-nez v0, :cond_0

    .line 9
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/w8;->c:Lcom/yandex/mobile/ads/impl/wh1;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/wh1;->a()Lcom/yandex/mobile/ads/impl/x8;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/yandex/mobile/ads/impl/w8;->a(Lcom/yandex/mobile/ads/impl/x8;)Lcom/yandex/mobile/ads/impl/u8;

    move-result-object v0

    .line 10
    iput-object v0, p0, Lcom/yandex/mobile/ads/impl/w8;->f:Lcom/yandex/mobile/ads/impl/u8;

    :cond_0
    return-object v0
.end method

.method public final b()Lcom/yandex/mobile/ads/impl/u8;
    .locals 1

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/w8;->g:Lcom/yandex/mobile/ads/impl/u8;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/w8;->c:Lcom/yandex/mobile/ads/impl/wh1;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/wh1;->b()Lcom/yandex/mobile/ads/impl/x8;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0, v0}, Lcom/yandex/mobile/ads/impl/w8;->a(Lcom/yandex/mobile/ads/impl/x8;)Lcom/yandex/mobile/ads/impl/u8;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/mobile/ads/impl/w8;->g:Lcom/yandex/mobile/ads/impl/u8;

    :cond_0
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/w8;->g:Lcom/yandex/mobile/ads/impl/u8;

    return-object p0
.end method

.method public final c()Lcom/yandex/mobile/ads/impl/u8;
    .locals 1

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/w8;->e:Lcom/yandex/mobile/ads/impl/u8;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/w8;->b:Lcom/yandex/mobile/ads/impl/al1;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/al1;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/w8;->c:Lcom/yandex/mobile/ads/impl/wh1;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/wh1;->c()Lcom/yandex/mobile/ads/impl/x8;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0, v0}, Lcom/yandex/mobile/ads/impl/w8;->a(Lcom/yandex/mobile/ads/impl/x8;)Lcom/yandex/mobile/ads/impl/u8;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/mobile/ads/impl/w8;->e:Lcom/yandex/mobile/ads/impl/u8;

    :cond_0
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/w8;->e:Lcom/yandex/mobile/ads/impl/u8;

    return-object p0
.end method
