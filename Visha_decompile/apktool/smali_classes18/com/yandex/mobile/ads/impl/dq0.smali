.class public final Lcom/yandex/mobile/ads/impl/dq0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/o3;

.field private final b:Lcom/yandex/mobile/ads/impl/j1;

.field private final c:I

.field private final d:Lcom/yandex/mobile/ads/impl/i30;

.field private final e:Lcom/yandex/mobile/ads/impl/op;

.field private final f:Lcom/yandex/mobile/ads/impl/b51;


# direct methods
.method public synthetic constructor <init>(Lcom/yandex/mobile/ads/impl/o3;Lcom/yandex/mobile/ads/impl/j1;I)V
    .locals 7

    .line 1
    new-instance v4, Lcom/yandex/mobile/ads/impl/i30;

    invoke-direct {v4}, Lcom/yandex/mobile/ads/impl/i30;-><init>()V

    .line 2
    new-instance v5, Lcom/yandex/mobile/ads/impl/di2;

    invoke-direct {v5}, Lcom/yandex/mobile/ads/impl/di2;-><init>()V

    .line 3
    new-instance v6, Lcom/yandex/mobile/ads/impl/d51;

    invoke-direct {v6}, Lcom/yandex/mobile/ads/impl/d51;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    .line 4
    invoke-direct/range {v0 .. v6}, Lcom/yandex/mobile/ads/impl/dq0;-><init>(Lcom/yandex/mobile/ads/impl/o3;Lcom/yandex/mobile/ads/impl/j1;ILcom/yandex/mobile/ads/impl/i30;Lcom/yandex/mobile/ads/impl/op;Lcom/yandex/mobile/ads/impl/b51;)V

    return-void
.end method

.method public constructor <init>(Lcom/yandex/mobile/ads/impl/o3;Lcom/yandex/mobile/ads/impl/j1;ILcom/yandex/mobile/ads/impl/i30;Lcom/yandex/mobile/ads/impl/op;Lcom/yandex/mobile/ads/impl/b51;)V
    .locals 1

    .line 5
    const-string v0, "adConfiguration"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adActivityListener"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "divKitIntegrationValidator"

    invoke-static {p4, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "closeAppearanceController"

    invoke-static {p5, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "nativeAdControlViewProvider"

    invoke-static {p6, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/dq0;->a:Lcom/yandex/mobile/ads/impl/o3;

    .line 8
    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/dq0;->b:Lcom/yandex/mobile/ads/impl/j1;

    .line 9
    iput p3, p0, Lcom/yandex/mobile/ads/impl/dq0;->c:I

    .line 10
    iput-object p4, p0, Lcom/yandex/mobile/ads/impl/dq0;->d:Lcom/yandex/mobile/ads/impl/i30;

    .line 11
    iput-object p5, p0, Lcom/yandex/mobile/ads/impl/dq0;->e:Lcom/yandex/mobile/ads/impl/op;

    .line 12
    iput-object p6, p0, Lcom/yandex/mobile/ads/impl/dq0;->f:Lcom/yandex/mobile/ads/impl/b51;

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/o8;Lcom/yandex/mobile/ads/impl/q61;Lcom/yandex/mobile/ads/impl/e1;Lcom/yandex/mobile/ads/impl/zr;Lcom/yandex/mobile/ads/impl/k3;Lcom/yandex/mobile/ads/impl/dw;Lcom/yandex/mobile/ads/impl/l20;Lcom/yandex/mobile/ads/impl/f52;Lcom/yandex/mobile/ads/impl/b30;Lcom/yandex/mobile/ads/impl/m6;)Lcom/yandex/mobile/ads/impl/f30;
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v9, p4

    const-string v1, "context"

    move-object/from16 v2, p1

    invoke-static {v2, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "adResponse"

    move-object/from16 v10, p2

    invoke-static {v10, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "nativeAdPrivate"

    move-object/from16 v3, p3

    invoke-static {v3, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "adActivityEventController"

    invoke-static {v9, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "contentCloseListener"

    move-object/from16 v5, p5

    invoke-static {v5, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "adCompleteListener"

    move-object/from16 v11, p6

    invoke-static {v11, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "debugEventsReporter"

    move-object/from16 v7, p7

    invoke-static {v7, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "divKitActionHandlerDelegate"

    move-object/from16 v12, p8

    invoke-static {v12, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "timeProviderContainer"

    move-object/from16 v13, p9

    invoke-static {v13, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    iget-object v1, v0, Lcom/yandex/mobile/ads/impl/dq0;->d:Lcom/yandex/mobile/ads/impl/i30;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static/range {p1 .. p1}, Lcom/yandex/mobile/ads/impl/i30;->a(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz p10, :cond_0

    invoke-interface/range {p3 .. p3}, Lcom/yandex/mobile/ads/impl/q61;->b()Lcom/yandex/mobile/ads/impl/n91;

    move-result-object v14

    new-instance v15, Lcom/yandex/mobile/ads/impl/ar;

    new-instance v16, Lcom/yandex/mobile/ads/impl/fq;

    iget-object v4, v0, Lcom/yandex/mobile/ads/impl/dq0;->e:Lcom/yandex/mobile/ads/impl/op;

    iget-object v6, v0, Lcom/yandex/mobile/ads/impl/dq0;->f:Lcom/yandex/mobile/ads/impl/b51;

    move-object/from16 v1, v16

    move-object/from16 v2, p2

    move-object/from16 v3, p4

    move-object/from16 v5, p5

    move-object/from16 v7, p7

    move-object/from16 v8, p9

    invoke-direct/range {v1 .. v8}, Lcom/yandex/mobile/ads/impl/fq;-><init>(Lcom/yandex/mobile/ads/impl/o8;Lcom/yandex/mobile/ads/impl/e1;Lcom/yandex/mobile/ads/impl/op;Lcom/yandex/mobile/ads/impl/zr;Lcom/yandex/mobile/ads/impl/b51;Lcom/yandex/mobile/ads/impl/dw;Lcom/yandex/mobile/ads/impl/f52;)V

    new-instance v8, Lcom/yandex/mobile/ads/impl/as;

    move-object v1, v8

    move-object/from16 v2, p2

    move-object/from16 v3, p4

    move-object/from16 v4, p6

    move-object v5, v14

    move-object/from16 v6, p9

    move-object/from16 v7, p10

    invoke-direct/range {v1 .. v7}, Lcom/yandex/mobile/ads/impl/as;-><init>(Lcom/yandex/mobile/ads/impl/o8;Lcom/yandex/mobile/ads/impl/e1;Lcom/yandex/mobile/ads/impl/k3;Lcom/yandex/mobile/ads/impl/n91;Lcom/yandex/mobile/ads/impl/f52;Lcom/yandex/mobile/ads/impl/b30;)V

    new-instance v1, Lcom/yandex/mobile/ads/impl/vz1;

    iget-object v2, v0, Lcom/yandex/mobile/ads/impl/dq0;->f:Lcom/yandex/mobile/ads/impl/b51;

    invoke-static/range {p11 .. p11}, Lcom/yandex/mobile/ads/impl/mz1;->a(Lcom/yandex/mobile/ads/impl/m6;)Lcom/yandex/mobile/ads/impl/lz1;

    move-result-object v3

    move-object/from16 v4, p11

    invoke-direct {v1, v4, v9, v2, v3}, Lcom/yandex/mobile/ads/impl/vz1;-><init>(Lcom/yandex/mobile/ads/impl/m6;Lcom/yandex/mobile/ads/impl/e1;Lcom/yandex/mobile/ads/impl/b51;Lcom/yandex/mobile/ads/impl/lz1;)V

    const/4 v2, 0x3

    new-array v2, v2, [Lcom/yandex/mobile/ads/impl/b10;

    const/4 v3, 0x0

    aput-object v16, v2, v3

    const/4 v3, 0x1

    aput-object v8, v2, v3

    const/4 v3, 0x2

    aput-object v1, v2, v3

    invoke-direct {v15, v2}, Lcom/yandex/mobile/ads/impl/ar;-><init>([Lcom/yandex/mobile/ads/impl/b10;)V

    new-instance v1, Lcom/yandex/mobile/ads/impl/f30;

    invoke-virtual/range {p10 .. p10}, Lcom/yandex/mobile/ads/impl/b30;->b()Lcom/yandex/div2/DivData;

    move-result-object v2

    iget-object v3, v0, Lcom/yandex/mobile/ads/impl/dq0;->a:Lcom/yandex/mobile/ads/impl/o3;

    iget-object v4, v0, Lcom/yandex/mobile/ads/impl/dq0;->b:Lcom/yandex/mobile/ads/impl/j1;

    iget v0, v0, Lcom/yandex/mobile/ads/impl/dq0;->c:I

    move-object/from16 p0, v1

    move-object/from16 p1, v2

    move-object/from16 p2, v3

    move-object/from16 p3, v15

    move-object/from16 p4, v4

    move-object/from16 p5, p8

    move/from16 p6, v0

    invoke-direct/range {p0 .. p6}, Lcom/yandex/mobile/ads/impl/f30;-><init>(Lcom/yandex/div2/DivData;Lcom/yandex/mobile/ads/impl/o3;Lcom/yandex/mobile/ads/impl/ar;Lcom/yandex/mobile/ads/impl/j1;Lcom/yandex/mobile/ads/impl/l20;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v1

    :catchall_0
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method
