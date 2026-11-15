.class public final Lcom/yandex/mobile/ads/impl/tt0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/bv1;

.field private final b:Lcom/yandex/mobile/ads/impl/gt;

.field private final c:Lcom/yandex/mobile/ads/impl/z2;

.field private final d:Lcom/yandex/mobile/ads/impl/xt0;

.field private final e:Lcom/yandex/mobile/ads/impl/am0;

.field private final f:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/bv1;Lcom/yandex/mobile/ads/impl/gt;Lcom/yandex/mobile/ads/impl/z2;Lcom/yandex/mobile/ads/impl/xt0;Lcom/yandex/mobile/ads/impl/am0;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sdkEnvironmentModule"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "instreamAdBreak"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adBreakStatusController"

    invoke-static {p4, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "manualPlaybackEventListener"

    invoke-static {p5, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "instreamAdCustomUiElementsHolder"

    invoke-static {p6, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/tt0;->a:Lcom/yandex/mobile/ads/impl/bv1;

    iput-object p3, p0, Lcom/yandex/mobile/ads/impl/tt0;->b:Lcom/yandex/mobile/ads/impl/gt;

    iput-object p4, p0, Lcom/yandex/mobile/ads/impl/tt0;->c:Lcom/yandex/mobile/ads/impl/z2;

    iput-object p5, p0, Lcom/yandex/mobile/ads/impl/tt0;->d:Lcom/yandex/mobile/ads/impl/xt0;

    iput-object p6, p0, Lcom/yandex/mobile/ads/impl/tt0;->e:Lcom/yandex/mobile/ads/impl/am0;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/tt0;->f:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final a(Lcom/yandex/mobile/ads/impl/hm2;)Lcom/yandex/mobile/ads/impl/st0;
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "instreamAdPlayer"

    invoke-static {v1, v2}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Lcom/yandex/mobile/ads/impl/jm0;

    invoke-direct {v2, v1}, Lcom/yandex/mobile/ads/impl/jm0;-><init>(Lcom/yandex/mobile/ads/impl/kt;)V

    new-instance v1, Lcom/yandex/mobile/ads/impl/st0;

    iget-object v10, v0, Lcom/yandex/mobile/ads/impl/tt0;->f:Landroid/content/Context;

    const-string v3, "context"

    invoke-static {v10, v3}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v11, v0, Lcom/yandex/mobile/ads/impl/tt0;->a:Lcom/yandex/mobile/ads/impl/bv1;

    iget-object v12, v0, Lcom/yandex/mobile/ads/impl/tt0;->b:Lcom/yandex/mobile/ads/impl/gt;

    iget-object v13, v0, Lcom/yandex/mobile/ads/impl/tt0;->c:Lcom/yandex/mobile/ads/impl/z2;

    iget-object v14, v0, Lcom/yandex/mobile/ads/impl/tt0;->d:Lcom/yandex/mobile/ads/impl/xt0;

    iget-object v0, v0, Lcom/yandex/mobile/ads/impl/tt0;->e:Lcom/yandex/mobile/ads/impl/am0;

    sget v3, Lcom/yandex/mobile/ads/impl/yt0;->d:I

    invoke-static {}, Lcom/yandex/mobile/ads/impl/yt0$a;->a()Lcom/yandex/mobile/ads/impl/yt0;

    move-result-object v15

    new-instance v16, Lcom/yandex/mobile/ads/impl/cn0;

    invoke-direct/range {v16 .. v16}, Lcom/yandex/mobile/ads/impl/cn0;-><init>()V

    new-instance v17, Lcom/yandex/mobile/ads/impl/u2;

    new-instance v18, Lcom/yandex/mobile/ads/impl/ym0;

    new-instance v7, Lcom/yandex/mobile/ads/impl/zt0;

    invoke-direct {v7, v2, v12}, Lcom/yandex/mobile/ads/impl/zt0;-><init>(Lcom/yandex/mobile/ads/impl/jm0;Lcom/yandex/mobile/ads/impl/gt;)V

    move-object/from16 v3, v18

    move-object v4, v10

    move-object v5, v11

    move-object/from16 v6, v16

    move-object v8, v2

    move-object v9, v0

    invoke-direct/range {v3 .. v9}, Lcom/yandex/mobile/ads/impl/ym0;-><init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/bv1;Lcom/yandex/mobile/ads/impl/cn0;Lcom/yandex/mobile/ads/impl/aj1;Lcom/yandex/mobile/ads/impl/jm0;Lcom/yandex/mobile/ads/impl/am0;)V

    move-object/from16 v3, v17

    move-object v5, v12

    move-object v6, v2

    move-object/from16 v7, v18

    move-object/from16 v8, v16

    move-object v9, v13

    invoke-direct/range {v3 .. v9}, Lcom/yandex/mobile/ads/impl/u2;-><init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/gt;Lcom/yandex/mobile/ads/impl/jm0;Lcom/yandex/mobile/ads/impl/ym0;Lcom/yandex/mobile/ads/impl/cn0;Lcom/yandex/mobile/ads/impl/z2;)V

    move-object v3, v1

    move-object v5, v11

    move-object v6, v12

    move-object v7, v2

    move-object v8, v13

    move-object v9, v14

    move-object v10, v0

    move-object v11, v15

    move-object/from16 v12, v16

    move-object/from16 v13, v17

    invoke-direct/range {v3 .. v13}, Lcom/yandex/mobile/ads/impl/st0;-><init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/bv1;Lcom/yandex/mobile/ads/impl/gt;Lcom/yandex/mobile/ads/impl/jm0;Lcom/yandex/mobile/ads/impl/z2;Lcom/yandex/mobile/ads/impl/xt0;Lcom/yandex/mobile/ads/impl/am0;Lcom/yandex/mobile/ads/impl/yt0;Lcom/yandex/mobile/ads/impl/cn0;Lcom/yandex/mobile/ads/impl/u2;)V

    return-object v1
.end method
