.class public final Lcom/yandex/mobile/ads/impl/td1;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/pd1;


# direct methods
.method public synthetic constructor <init>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/yandex/mobile/ads/impl/pd1;

    invoke-direct {v0}, Lcom/yandex/mobile/ads/impl/pd1;-><init>()V

    .line 2
    invoke-direct {p0, v0}, Lcom/yandex/mobile/ads/impl/td1;-><init>(Lcom/yandex/mobile/ads/impl/pd1;)V

    return-void
.end method

.method public constructor <init>(Lcom/yandex/mobile/ads/impl/pd1;)V
    .locals 1

    .line 3
    const-string v0, "noticeReportControllerCreator"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/td1;->a:Lcom/yandex/mobile/ads/impl/pd1;

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/o3;Lcom/yandex/mobile/ads/impl/tk0;Lcom/yandex/mobile/ads/impl/j62;Ljava/lang/String;Lcom/yandex/mobile/ads/impl/s9;)Lcom/yandex/mobile/ads/impl/e31;
    .locals 12

    move-object v1, p1

    move-object v2, p2

    move-object v0, p3

    move-object/from16 v6, p6

    const-string v3, "context"

    invoke-static {p1, v3}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "adConfiguration"

    invoke-static {p2, v3}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "impressionReporter"

    invoke-static {p3, v3}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "trackingChecker"

    move-object/from16 v4, p4

    invoke-static {v4, v3}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "viewControllerDescription"

    move-object/from16 v5, p5

    invoke-static {v5, v3}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "adStructureType"

    invoke-static {v6, v3}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v3, p0

    iget-object v3, v3, Lcom/yandex/mobile/ads/impl/td1;->a:Lcom/yandex/mobile/ads/impl/pd1;

    invoke-virtual {v3, p3, v6}, Lcom/yandex/mobile/ads/impl/pd1;->a(Lcom/yandex/mobile/ads/impl/tk0;Lcom/yandex/mobile/ads/impl/s9;)Lcom/yandex/mobile/ads/impl/od1;

    move-result-object v3

    new-instance v11, Lcom/yandex/mobile/ads/impl/e31;

    new-instance v7, Lcom/yandex/mobile/ads/impl/e31$a;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    const-string v8, "getMainLooper(...)"

    invoke-static {v0, v8}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v7, v0, v3}, Lcom/yandex/mobile/ads/impl/e31$a;-><init>(Landroid/os/Looper;Lcom/yandex/mobile/ads/impl/od1;)V

    new-instance v8, Lcom/yandex/mobile/ads/impl/v9;

    invoke-direct {v8, p1, p2}, Lcom/yandex/mobile/ads/impl/v9;-><init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/o3;)V

    sget v0, Lcom/yandex/mobile/ads/impl/pw1;->l:I

    invoke-static {}, Lcom/yandex/mobile/ads/impl/pw1$a;->a()Lcom/yandex/mobile/ads/impl/pw1;

    move-result-object v9

    new-instance v10, Lcom/yandex/mobile/ads/impl/r62;

    invoke-direct {v10}, Lcom/yandex/mobile/ads/impl/r62;-><init>()V

    move-object v0, v11

    invoke-direct/range {v0 .. v10}, Lcom/yandex/mobile/ads/impl/e31;-><init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/o3;Lcom/yandex/mobile/ads/impl/od1;Lcom/yandex/mobile/ads/impl/j62;Ljava/lang/String;Lcom/yandex/mobile/ads/impl/s9;Lcom/yandex/mobile/ads/impl/e31$a;Lcom/yandex/mobile/ads/impl/v9;Lcom/yandex/mobile/ads/impl/pw1;Lcom/yandex/mobile/ads/impl/r62;)V

    return-object v11
.end method
