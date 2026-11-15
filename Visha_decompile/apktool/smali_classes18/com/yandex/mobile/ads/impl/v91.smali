.class public final Lcom/yandex/mobile/ads/impl/v91;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/mobile/ads/impl/v91$a;
    }
.end annotation


# instance fields
.field private final a:Lnk1;

.field private final b:Lcom/yandex/mobile/ads/impl/q91;

.field private final c:Lcom/yandex/mobile/ads/impl/pa1;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/bv1;Lcom/yandex/mobile/ads/impl/g5;Lcom/yandex/mobile/ads/impl/e51;Lnk1;)V
    .locals 8

    .line 1
    new-instance v6, Lcom/yandex/mobile/ads/impl/q91;

    invoke-direct {v6, p1, p3, p4}, Lcom/yandex/mobile/ads/impl/q91;-><init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/g5;Lcom/yandex/mobile/ads/impl/e51;)V

    .line 2
    new-instance v7, Lcom/yandex/mobile/ads/impl/pa1;

    invoke-interface {p2}, Lcom/yandex/mobile/ads/impl/bv1;->a()Lcom/yandex/mobile/ads/impl/ln2;

    move-result-object v0

    invoke-direct {v7, p1, v0}, Lcom/yandex/mobile/ads/impl/pa1;-><init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/db2;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 3
    invoke-direct/range {v0 .. v7}, Lcom/yandex/mobile/ads/impl/v91;-><init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/bv1;Lcom/yandex/mobile/ads/impl/g5;Lcom/yandex/mobile/ads/impl/e51;Lnk1;Lcom/yandex/mobile/ads/impl/q91;Lcom/yandex/mobile/ads/impl/pa1;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/bv1;Lcom/yandex/mobile/ads/impl/g5;Lcom/yandex/mobile/ads/impl/e51;Lnk1;Lcom/yandex/mobile/ads/impl/q91;Lcom/yandex/mobile/ads/impl/pa1;)V
    .locals 1

    .line 4
    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "sdkEnvironmentModule"

    invoke-static {p2, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "adLoadingPhasesManager"

    invoke-static {p3, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "controllers"

    invoke-static {p4, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "coroutineScope"

    invoke-static {p5, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "nativeMediaLoader"

    invoke-static {p6, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "nativeVerificationResourcesLoader"

    invoke-static {p7, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object p5, p0, Lcom/yandex/mobile/ads/impl/v91;->a:Lnk1;

    .line 7
    iput-object p6, p0, Lcom/yandex/mobile/ads/impl/v91;->b:Lcom/yandex/mobile/ads/impl/q91;

    .line 8
    iput-object p7, p0, Lcom/yandex/mobile/ads/impl/v91;->c:Lcom/yandex/mobile/ads/impl/pa1;

    return-void
.end method

.method public static final synthetic a(Lcom/yandex/mobile/ads/impl/v91;)Lcom/yandex/mobile/ads/impl/q91;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/v91;->b:Lcom/yandex/mobile/ads/impl/q91;

    return-object p0
.end method

.method public static final synthetic b(Lcom/yandex/mobile/ads/impl/v91;)Lcom/yandex/mobile/ads/impl/pa1;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/v91;->c:Lcom/yandex/mobile/ads/impl/pa1;

    return-object p0
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/v91;->b:Lcom/yandex/mobile/ads/impl/q91;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/q91;->a()V

    .line 3
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/v91;->c:Lcom/yandex/mobile/ads/impl/pa1;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/pa1;->a()V

    .line 4
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/v91;->a:Lnk1;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1, v0}, Lkotlinx/coroutines/d;->f(Lnk1;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    return-void
.end method

.method public final a(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/o3;Lcom/yandex/mobile/ads/impl/s41;Lcom/yandex/mobile/ads/impl/i51$a$a;Lcom/yandex/mobile/ads/impl/ew;Lcom/yandex/mobile/ads/impl/g51;)V
    .locals 12

    move-object/from16 v2, p6

    .line 5
    const-string v0, "context"

    move-object v1, p1

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adConfiguration"

    move-object v5, p2

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "nativeAdBlock"

    move-object v6, p3

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listener"

    move-object/from16 v3, p4

    invoke-static {v3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "debugEventReporter"

    move-object/from16 v7, p5

    invoke-static {v7, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "nativeAdCreationListener"

    invoke-static {v2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    new-instance v9, Lcom/yandex/mobile/ads/impl/x91;

    invoke-direct {v9, v2}, Lcom/yandex/mobile/ads/impl/x91;-><init>(Lcom/yandex/mobile/ads/impl/g51;)V

    move-object v4, p0

    .line 7
    iget-object v10, v4, Lcom/yandex/mobile/ads/impl/v91;->a:Lnk1;

    new-instance v11, Lcom/yandex/mobile/ads/impl/w91;

    const/4 v8, 0x0

    move-object v0, v11

    invoke-direct/range {v0 .. v8}, Lcom/yandex/mobile/ads/impl/w91;-><init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/g51;Lcom/yandex/mobile/ads/impl/v91$a;Lcom/yandex/mobile/ads/impl/v91;Lcom/yandex/mobile/ads/impl/o3;Lcom/yandex/mobile/ads/impl/s41;Lcom/yandex/mobile/ads/impl/dw;Lwh1;)V

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object p0, v10

    move-object p1, v9

    move-object p2, v2

    move-object p3, v11

    move/from16 p4, v0

    move-object/from16 p5, v1

    invoke-static/range {p0 .. p5}, Lcl0;->d(Lnk1;Lkotlin/coroutines/d;Lkotlinx/coroutines/CoroutineStart;Ls74;ILjava/lang/Object;)Lkotlinx/coroutines/j;

    return-void
.end method
