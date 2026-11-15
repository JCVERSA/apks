.class public final Lcom/yandex/mobile/ads/impl/d82;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/aj1;

.field private final b:Lcom/yandex/mobile/ads/impl/jm0;

.field private final c:Lcom/yandex/mobile/ads/impl/b82;

.field private final d:Lcom/yandex/mobile/ads/impl/ko0;


# direct methods
.method public synthetic constructor <init>(Lcom/yandex/mobile/ads/impl/bv1;Lcom/yandex/mobile/ads/impl/aj1;Lcom/yandex/mobile/ads/impl/jm0;Lcom/yandex/mobile/ads/impl/am0;)V
    .locals 7

    .line 1
    new-instance v5, Lcom/yandex/mobile/ads/impl/b82;

    invoke-direct {v5, p1, p4}, Lcom/yandex/mobile/ads/impl/b82;-><init>(Lcom/yandex/mobile/ads/impl/bv1;Lcom/yandex/mobile/ads/impl/am0;)V

    .line 2
    new-instance v6, Lcom/yandex/mobile/ads/impl/ko0;

    invoke-direct {v6}, Lcom/yandex/mobile/ads/impl/ko0;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 3
    invoke-direct/range {v0 .. v6}, Lcom/yandex/mobile/ads/impl/d82;-><init>(Lcom/yandex/mobile/ads/impl/bv1;Lcom/yandex/mobile/ads/impl/aj1;Lcom/yandex/mobile/ads/impl/jm0;Lcom/yandex/mobile/ads/impl/am0;Lcom/yandex/mobile/ads/impl/b82;Lcom/yandex/mobile/ads/impl/ko0;)V

    return-void
.end method

.method public constructor <init>(Lcom/yandex/mobile/ads/impl/bv1;Lcom/yandex/mobile/ads/impl/aj1;Lcom/yandex/mobile/ads/impl/jm0;Lcom/yandex/mobile/ads/impl/am0;Lcom/yandex/mobile/ads/impl/b82;Lcom/yandex/mobile/ads/impl/ko0;)V
    .locals 1

    .line 4
    const-string v0, "sdkEnvironmentModule"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "playerVolumeProvider"

    invoke-static {p2, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "instreamAdPlayerController"

    invoke-static {p3, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "customUiElementsHolder"

    invoke-static {p4, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "uiElementBinderProvider"

    invoke-static {p5, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "videoAdOptionsStorage"

    invoke-static {p6, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/d82;->a:Lcom/yandex/mobile/ads/impl/aj1;

    .line 7
    iput-object p3, p0, Lcom/yandex/mobile/ads/impl/d82;->b:Lcom/yandex/mobile/ads/impl/jm0;

    .line 8
    iput-object p5, p0, Lcom/yandex/mobile/ads/impl/d82;->c:Lcom/yandex/mobile/ads/impl/b82;

    .line 9
    iput-object p6, p0, Lcom/yandex/mobile/ads/impl/d82;->d:Lcom/yandex/mobile/ads/impl/ko0;

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/bn0;Lcom/yandex/mobile/ads/impl/gt;Lcom/yandex/mobile/ads/impl/zb2;Lcom/yandex/mobile/ads/impl/mg2;Lcom/yandex/mobile/ads/impl/yk1;Lcom/yandex/mobile/ads/impl/nb2;)Lcom/yandex/mobile/ads/impl/c82;
    .locals 13

    move-object v0, p0

    const-string v1, "context"

    move-object v3, p1

    invoke-static {p1, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "viewHolder"

    move-object v10, p2

    invoke-static {p2, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "coreInstreamAdBreak"

    move-object/from16 v4, p3

    invoke-static {v4, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "videoAdInfo"

    move-object/from16 v11, p4

    invoke-static {v11, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "videoTracker"

    move-object/from16 v7, p5

    invoke-static {v7, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "imageProvider"

    move-object/from16 v8, p6

    invoke-static {v8, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "playbackListener"

    move-object/from16 v9, p7

    invoke-static {v9, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual/range {p4 .. p4}, Lcom/yandex/mobile/ads/impl/zb2;->d()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yandex/mobile/ads/impl/go0;

    new-instance v12, Lcom/yandex/mobile/ads/impl/co0;

    iget-object v2, v0, Lcom/yandex/mobile/ads/impl/d82;->b:Lcom/yandex/mobile/ads/impl/jm0;

    invoke-direct {v12, v1, v2}, Lcom/yandex/mobile/ads/impl/co0;-><init>(Lcom/yandex/mobile/ads/impl/go0;Lcom/yandex/mobile/ads/impl/jm0;)V

    iget-object v2, v0, Lcom/yandex/mobile/ads/impl/d82;->c:Lcom/yandex/mobile/ads/impl/b82;

    move-object/from16 v5, p4

    move-object v6, v12

    invoke-virtual/range {v2 .. v9}, Lcom/yandex/mobile/ads/impl/b82;->a(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/gt;Lcom/yandex/mobile/ads/impl/zb2;Lcom/yandex/mobile/ads/impl/co0;Lcom/yandex/mobile/ads/impl/mg2;Lcom/yandex/mobile/ads/impl/yk1;Lcom/yandex/mobile/ads/impl/nb2;)Lcom/yandex/mobile/ads/impl/a82;

    move-result-object v4

    new-instance v1, Lcom/yandex/mobile/ads/impl/c82;

    iget-object v6, v0, Lcom/yandex/mobile/ads/impl/d82;->d:Lcom/yandex/mobile/ads/impl/ko0;

    iget-object v7, v0, Lcom/yandex/mobile/ads/impl/d82;->a:Lcom/yandex/mobile/ads/impl/aj1;

    new-instance v9, Lcom/yandex/mobile/ads/impl/jo0;

    invoke-direct {v9, v6, v7}, Lcom/yandex/mobile/ads/impl/jo0;-><init>(Lcom/yandex/mobile/ads/impl/ko0;Lcom/yandex/mobile/ads/impl/aj1;)V

    new-instance v0, Lcom/yandex/mobile/ads/impl/io0;

    invoke-direct {v0, v6, v12}, Lcom/yandex/mobile/ads/impl/io0;-><init>(Lcom/yandex/mobile/ads/impl/ko0;Lcom/yandex/mobile/ads/impl/co0;)V

    move-object v2, v1

    move-object v3, p2

    move-object v8, v12

    move-object v10, v0

    invoke-direct/range {v2 .. v10}, Lcom/yandex/mobile/ads/impl/c82;-><init>(Lcom/yandex/mobile/ads/impl/bn0;Lcom/yandex/mobile/ads/impl/a82;Lcom/yandex/mobile/ads/impl/zb2;Lcom/yandex/mobile/ads/impl/ko0;Lcom/yandex/mobile/ads/impl/aj1;Lcom/yandex/mobile/ads/impl/co0;Lcom/yandex/mobile/ads/impl/jo0;Lcom/yandex/mobile/ads/impl/io0;)V

    return-object v1
.end method
