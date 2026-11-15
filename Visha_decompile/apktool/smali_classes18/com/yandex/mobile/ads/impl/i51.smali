.class public final Lcom/yandex/mobile/ads/impl/i51;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/mobile/ads/impl/i51$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/o3;

.field private final b:Lcom/yandex/mobile/ads/impl/g5;

.field private final c:Lnk1;

.field private final d:Landroid/content/Context;

.field private final e:Lcom/yandex/mobile/ads/impl/k51;

.field private final f:Lcom/yandex/mobile/ads/impl/v91;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/bv1;Lcom/yandex/mobile/ads/impl/o3;Lcom/yandex/mobile/ads/impl/g5;Lnk1;)V
    .locals 17

    move-object/from16 v3, p3

    .line 1
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    const-string v0, "getApplicationContext(...)"

    invoke-static {v6, v0}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance v7, Lcom/yandex/mobile/ads/impl/eb1;

    move-object/from16 v1, p1

    move-object/from16 v4, p4

    invoke-direct {v7, v3, v1, v4}, Lcom/yandex/mobile/ads/impl/eb1;-><init>(Lcom/yandex/mobile/ads/impl/o3;Landroid/content/Context;Lcom/yandex/mobile/ads/impl/g5;)V

    .line 3
    new-instance v14, Lcom/yandex/mobile/ads/impl/e51;

    invoke-direct {v14, v7}, Lcom/yandex/mobile/ads/impl/e51;-><init>(Lcom/yandex/mobile/ads/impl/eb1;)V

    .line 4
    new-instance v15, Lcom/yandex/mobile/ads/impl/k51;

    move-object/from16 v2, p2

    invoke-direct {v15, v3, v2, v14}, Lcom/yandex/mobile/ads/impl/k51;-><init>(Lcom/yandex/mobile/ads/impl/o3;Lcom/yandex/mobile/ads/impl/bv1;Lcom/yandex/mobile/ads/impl/e51;)V

    .line 5
    new-instance v16, Lcom/yandex/mobile/ads/impl/v91;

    move-object/from16 v8, v16

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    move-object/from16 v11, p4

    move-object v12, v14

    move-object/from16 v13, p5

    invoke-direct/range {v8 .. v13}, Lcom/yandex/mobile/ads/impl/v91;-><init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/bv1;Lcom/yandex/mobile/ads/impl/g5;Lcom/yandex/mobile/ads/impl/e51;Lnk1;)V

    move-object/from16 v0, p0

    move-object/from16 v5, p5

    move-object v8, v14

    move-object v9, v15

    move-object/from16 v10, v16

    .line 6
    invoke-direct/range {v0 .. v10}, Lcom/yandex/mobile/ads/impl/i51;-><init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/bv1;Lcom/yandex/mobile/ads/impl/o3;Lcom/yandex/mobile/ads/impl/g5;Lnk1;Landroid/content/Context;Lcom/yandex/mobile/ads/impl/eb1;Lcom/yandex/mobile/ads/impl/e51;Lcom/yandex/mobile/ads/impl/k51;Lcom/yandex/mobile/ads/impl/v91;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/bv1;Lcom/yandex/mobile/ads/impl/o3;Lcom/yandex/mobile/ads/impl/g5;Lnk1;Landroid/content/Context;Lcom/yandex/mobile/ads/impl/eb1;Lcom/yandex/mobile/ads/impl/e51;Lcom/yandex/mobile/ads/impl/k51;Lcom/yandex/mobile/ads/impl/v91;)V
    .locals 1

    .line 7
    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "sdkEnvironmentModule"

    invoke-static {p2, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "adConfiguration"

    invoke-static {p3, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "adLoadingPhasesManager"

    invoke-static {p4, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "coroutineScope"

    invoke-static {p5, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "appContext"

    invoke-static {p6, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "nativeVideoLoadController"

    invoke-static {p7, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "nativeAdControllers"

    invoke-static {p8, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "nativeAdCreator"

    invoke-static {p9, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "nativeResourcesLoader"

    invoke-static {p10, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object p3, p0, Lcom/yandex/mobile/ads/impl/i51;->a:Lcom/yandex/mobile/ads/impl/o3;

    .line 10
    iput-object p4, p0, Lcom/yandex/mobile/ads/impl/i51;->b:Lcom/yandex/mobile/ads/impl/g5;

    .line 11
    iput-object p5, p0, Lcom/yandex/mobile/ads/impl/i51;->c:Lnk1;

    .line 12
    iput-object p6, p0, Lcom/yandex/mobile/ads/impl/i51;->d:Landroid/content/Context;

    .line 13
    iput-object p9, p0, Lcom/yandex/mobile/ads/impl/i51;->e:Lcom/yandex/mobile/ads/impl/k51;

    .line 14
    iput-object p10, p0, Lcom/yandex/mobile/ads/impl/i51;->f:Lcom/yandex/mobile/ads/impl/v91;

    return-void
.end method

.method public static final synthetic a(Lcom/yandex/mobile/ads/impl/i51;)Lcom/yandex/mobile/ads/impl/o3;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/i51;->a:Lcom/yandex/mobile/ads/impl/o3;

    return-object p0
.end method

.method public static final synthetic b(Lcom/yandex/mobile/ads/impl/i51;)Lcom/yandex/mobile/ads/impl/g5;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/i51;->b:Lcom/yandex/mobile/ads/impl/g5;

    return-object p0
.end method

.method public static final synthetic c(Lcom/yandex/mobile/ads/impl/i51;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/i51;->d:Landroid/content/Context;

    return-object p0
.end method

.method public static final synthetic d(Lcom/yandex/mobile/ads/impl/i51;)Lnk1;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/i51;->c:Lnk1;

    return-object p0
.end method

.method public static final synthetic e(Lcom/yandex/mobile/ads/impl/i51;)Lcom/yandex/mobile/ads/impl/k51;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/i51;->e:Lcom/yandex/mobile/ads/impl/k51;

    return-object p0
.end method

.method public static final synthetic f(Lcom/yandex/mobile/ads/impl/i51;)Lcom/yandex/mobile/ads/impl/v91;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/i51;->f:Lcom/yandex/mobile/ads/impl/v91;

    return-object p0
.end method


# virtual methods
.method public final a()V
    .locals 0

    .line 4
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/i51;->f:Lcom/yandex/mobile/ads/impl/v91;

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/v91;->a()V

    return-void
.end method

.method public final a(Lcom/yandex/mobile/ads/impl/o8;Lcom/yandex/mobile/ads/impl/y61;Lcom/yandex/mobile/ads/impl/s51;Lcom/yandex/mobile/ads/impl/g51;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yandex/mobile/ads/impl/o8<",
            "*>;",
            "Lcom/yandex/mobile/ads/impl/y61;",
            "Lcom/yandex/mobile/ads/impl/s51;",
            "Lcom/yandex/mobile/ads/impl/g51;",
            ")V"
        }
    .end annotation

    .line 2
    const-string v0, "adResponse"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "nativeAdFactoriesProvider"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "nativeAdCreationListener"

    invoke-static {p4, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/i51;->c:Lnk1;

    new-instance v0, Lcom/yandex/mobile/ads/impl/i51$b;

    const/4 v8, 0x0

    move-object v2, v0

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-direct/range {v2 .. v8}, Lcom/yandex/mobile/ads/impl/i51$b;-><init>(Lcom/yandex/mobile/ads/impl/i51;Lcom/yandex/mobile/ads/impl/o8;Lcom/yandex/mobile/ads/impl/y61;Lcom/yandex/mobile/ads/impl/s51;Lcom/yandex/mobile/ads/impl/g51;Lwh1;)V

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v4, v0

    invoke-static/range {v1 .. v6}, Lcl0;->d(Lnk1;Lkotlin/coroutines/d;Lkotlinx/coroutines/CoroutineStart;Ls74;ILjava/lang/Object;)Lkotlinx/coroutines/j;

    return-void
.end method
