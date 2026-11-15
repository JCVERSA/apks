.class public final Lcom/yandex/mobile/ads/impl/ms1;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/o3;

.field private final b:Lcom/yandex/mobile/ads/impl/j1;

.field private final c:I

.field private final d:Lcom/yandex/mobile/ads/impl/i30;


# direct methods
.method public synthetic constructor <init>(Lcom/yandex/mobile/ads/impl/o3;Lcom/yandex/mobile/ads/impl/j1;I)V
    .locals 1

    .line 1
    new-instance v0, Lcom/yandex/mobile/ads/impl/i30;

    invoke-direct {v0}, Lcom/yandex/mobile/ads/impl/i30;-><init>()V

    .line 2
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/yandex/mobile/ads/impl/ms1;-><init>(Lcom/yandex/mobile/ads/impl/o3;Lcom/yandex/mobile/ads/impl/j1;ILcom/yandex/mobile/ads/impl/i30;)V

    return-void
.end method

.method public constructor <init>(Lcom/yandex/mobile/ads/impl/o3;Lcom/yandex/mobile/ads/impl/j1;ILcom/yandex/mobile/ads/impl/i30;)V
    .locals 1

    .line 3
    const-string v0, "adConfiguration"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adActivityListener"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "divKitIntegrationValidator"

    invoke-static {p4, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/ms1;->a:Lcom/yandex/mobile/ads/impl/o3;

    .line 6
    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/ms1;->b:Lcom/yandex/mobile/ads/impl/j1;

    .line 7
    iput p3, p0, Lcom/yandex/mobile/ads/impl/ms1;->c:I

    .line 8
    iput-object p4, p0, Lcom/yandex/mobile/ads/impl/ms1;->d:Lcom/yandex/mobile/ads/impl/i30;

    return-void
.end method

.method private static a(Lcom/yandex/mobile/ads/impl/o8;Lcom/yandex/mobile/ads/impl/q61;Lcom/yandex/mobile/ads/impl/e1;Lcom/yandex/mobile/ads/impl/k3;Lcom/yandex/mobile/ads/impl/ks1;Lcom/yandex/mobile/ads/impl/f52;Lcom/yandex/mobile/ads/impl/b30;Lcom/yandex/mobile/ads/impl/m6;)Lcom/yandex/mobile/ads/impl/ar;
    .locals 15

    move-object/from16 v9, p2

    .line 1
    new-instance v10, Lcom/yandex/mobile/ads/impl/o52;

    invoke-direct {v10}, Lcom/yandex/mobile/ads/impl/o52;-><init>()V

    .line 2
    new-instance v11, Lcom/yandex/mobile/ads/impl/d51;

    invoke-direct {v11}, Lcom/yandex/mobile/ads/impl/d51;-><init>()V

    .line 3
    invoke-interface/range {p1 .. p1}, Lcom/yandex/mobile/ads/impl/q61;->b()Lcom/yandex/mobile/ads/impl/n91;

    move-result-object v12

    .line 4
    new-instance v13, Lcom/yandex/mobile/ads/impl/ar;

    .line 5
    new-instance v14, Lcom/yandex/mobile/ads/impl/ls1;

    .line 6
    new-instance v8, Lcom/yandex/mobile/ads/impl/wp;

    invoke-direct {v8}, Lcom/yandex/mobile/ads/impl/wp;-><init>()V

    move-object v0, v14

    move-object v1, p0

    move-object/from16 v2, p2

    move-object/from16 v3, p4

    move-object v4, v11

    move-object v5, v12

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    .line 7
    invoke-direct/range {v0 .. v8}, Lcom/yandex/mobile/ads/impl/ls1;-><init>(Lcom/yandex/mobile/ads/impl/o8;Lcom/yandex/mobile/ads/impl/e1;Lcom/yandex/mobile/ads/impl/zr;Lcom/yandex/mobile/ads/impl/d51;Lcom/yandex/mobile/ads/impl/n91;Lcom/yandex/mobile/ads/impl/f52;Lcom/yandex/mobile/ads/impl/b30;Lcom/yandex/mobile/ads/impl/wp;)V

    .line 8
    new-instance v7, Lcom/yandex/mobile/ads/impl/as;

    move-object v0, v7

    move-object/from16 v3, p3

    move-object v4, v12

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/yandex/mobile/ads/impl/as;-><init>(Lcom/yandex/mobile/ads/impl/o8;Lcom/yandex/mobile/ads/impl/e1;Lcom/yandex/mobile/ads/impl/k3;Lcom/yandex/mobile/ads/impl/n91;Lcom/yandex/mobile/ads/impl/f52;Lcom/yandex/mobile/ads/impl/b30;)V

    .line 9
    new-instance v0, Lcom/yandex/mobile/ads/impl/ss1;

    move-object/from16 v1, p5

    invoke-direct {v0, v9, v10, v12, v1}, Lcom/yandex/mobile/ads/impl/ss1;-><init>(Lcom/yandex/mobile/ads/impl/e1;Lcom/yandex/mobile/ads/impl/o52;Lcom/yandex/mobile/ads/impl/n91;Lcom/yandex/mobile/ads/impl/f52;)V

    .line 10
    new-instance v1, Lcom/yandex/mobile/ads/impl/vz1;

    .line 11
    invoke-static/range {p7 .. p7}, Lcom/yandex/mobile/ads/impl/mz1;->a(Lcom/yandex/mobile/ads/impl/m6;)Lcom/yandex/mobile/ads/impl/lz1;

    move-result-object v2

    move-object/from16 v3, p7

    .line 12
    invoke-direct {v1, v3, v9, v11, v2}, Lcom/yandex/mobile/ads/impl/vz1;-><init>(Lcom/yandex/mobile/ads/impl/m6;Lcom/yandex/mobile/ads/impl/e1;Lcom/yandex/mobile/ads/impl/b51;Lcom/yandex/mobile/ads/impl/lz1;)V

    const/4 v2, 0x4

    .line 13
    new-array v2, v2, [Lcom/yandex/mobile/ads/impl/b10;

    const/4 v3, 0x0

    aput-object v14, v2, v3

    const/4 v3, 0x1

    aput-object v7, v2, v3

    const/4 v3, 0x2

    aput-object v0, v2, v3

    const/4 v0, 0x3

    aput-object v1, v2, v0

    .line 14
    invoke-direct {v13, v2}, Lcom/yandex/mobile/ads/impl/ar;-><init>([Lcom/yandex/mobile/ads/impl/b10;)V

    return-object v13
.end method


# virtual methods
.method public final a(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/o8;Lcom/yandex/mobile/ads/impl/q61;Lcom/yandex/mobile/ads/impl/e1;Lcom/yandex/mobile/ads/impl/k3;Lcom/yandex/mobile/ads/impl/ks1;Lcom/yandex/mobile/ads/impl/f52;Lcom/yandex/mobile/ads/impl/l20;Lcom/yandex/mobile/ads/impl/b30;Lcom/yandex/mobile/ads/impl/m6;)Lcom/yandex/mobile/ads/impl/f30;
    .locals 11

    move-object v0, p0

    .line 15
    const-string v1, "context"

    move-object v2, p1

    invoke-static {p1, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "adResponse"

    move-object v3, p2

    invoke-static {p2, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "nativeAdPrivate"

    move-object v4, p3

    invoke-static {p3, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "adActivityEventController"

    move-object v5, p4

    invoke-static {p4, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "adCompleteListener"

    move-object/from16 v6, p5

    invoke-static {v6, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "closeVerificationController"

    move-object/from16 v7, p6

    invoke-static {v7, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "timeProviderContainer"

    move-object/from16 v8, p7

    invoke-static {v8, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "divKitActionHandlerDelegate"

    move-object/from16 v10, p8

    invoke-static {v10, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    :try_start_0
    iget-object v1, v0, Lcom/yandex/mobile/ads/impl/ms1;->d:Lcom/yandex/mobile/ads/impl/i30;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/yandex/mobile/ads/impl/i30;->a(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz p9, :cond_0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p9

    move-object/from16 v9, p10

    .line 17
    invoke-static/range {v2 .. v9}, Lcom/yandex/mobile/ads/impl/ms1;->a(Lcom/yandex/mobile/ads/impl/o8;Lcom/yandex/mobile/ads/impl/q61;Lcom/yandex/mobile/ads/impl/e1;Lcom/yandex/mobile/ads/impl/k3;Lcom/yandex/mobile/ads/impl/ks1;Lcom/yandex/mobile/ads/impl/f52;Lcom/yandex/mobile/ads/impl/b30;Lcom/yandex/mobile/ads/impl/m6;)Lcom/yandex/mobile/ads/impl/ar;

    move-result-object v1

    .line 18
    new-instance v2, Lcom/yandex/mobile/ads/impl/f30;

    .line 19
    invoke-virtual/range {p9 .. p9}, Lcom/yandex/mobile/ads/impl/b30;->b()Lcom/yandex/div2/DivData;

    move-result-object v3

    iget-object v4, v0, Lcom/yandex/mobile/ads/impl/ms1;->a:Lcom/yandex/mobile/ads/impl/o3;

    iget-object v5, v0, Lcom/yandex/mobile/ads/impl/ms1;->b:Lcom/yandex/mobile/ads/impl/j1;

    .line 20
    iget v0, v0, Lcom/yandex/mobile/ads/impl/ms1;->c:I

    move-object p0, v2

    move-object p1, v3

    move-object p2, v4

    move-object p3, v1

    move-object p4, v5

    move-object/from16 p5, p8

    move/from16 p6, v0

    .line 21
    invoke-direct/range {p0 .. p6}, Lcom/yandex/mobile/ads/impl/f30;-><init>(Lcom/yandex/div2/DivData;Lcom/yandex/mobile/ads/impl/o3;Lcom/yandex/mobile/ads/impl/ar;Lcom/yandex/mobile/ads/impl/j1;Lcom/yandex/mobile/ads/impl/l20;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v2

    :catchall_0
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method
