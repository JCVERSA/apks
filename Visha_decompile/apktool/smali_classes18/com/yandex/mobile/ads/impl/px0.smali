.class public final Lcom/yandex/mobile/ads/impl/px0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/o3;

.field private final b:Lcom/yandex/mobile/ads/impl/qh2;

.field private final c:Lcom/yandex/mobile/ads/impl/ph2;

.field private final d:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/o3;)V
    .locals 2

    .line 1
    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adConfiguration"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance v0, Lcom/yandex/mobile/ads/impl/qh2;

    invoke-direct {v0, p1}, Lcom/yandex/mobile/ads/impl/qh2;-><init>(Landroid/content/Context;)V

    .line 3
    new-instance v1, Lcom/yandex/mobile/ads/impl/ph2;

    invoke-direct {v1, p1, p2}, Lcom/yandex/mobile/ads/impl/ph2;-><init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/o3;)V

    .line 4
    invoke-direct {p0, p2, v0, v1}, Lcom/yandex/mobile/ads/impl/px0;-><init>(Lcom/yandex/mobile/ads/impl/o3;Lcom/yandex/mobile/ads/impl/qh2;Lcom/yandex/mobile/ads/impl/ph2;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/yandex/mobile/ads/impl/o3;Lcom/yandex/mobile/ads/impl/qh2;Lcom/yandex/mobile/ads/impl/ph2;)V
    .locals 2

    .line 5
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    const-string v1, "newSingleThreadExecutor(...)"

    invoke-static {v0, v1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/yandex/mobile/ads/impl/px0;-><init>(Lcom/yandex/mobile/ads/impl/o3;Lcom/yandex/mobile/ads/impl/qh2;Lcom/yandex/mobile/ads/impl/ph2;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method public constructor <init>(Lcom/yandex/mobile/ads/impl/o3;Lcom/yandex/mobile/ads/impl/qh2;Lcom/yandex/mobile/ads/impl/ph2;Ljava/util/concurrent/Executor;)V
    .locals 1

    .line 7
    const-string v0, "adConfiguration"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "viewSizeInfoStorage"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "viewSizeInfoReporter"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "executor"

    invoke-static {p4, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/px0;->a:Lcom/yandex/mobile/ads/impl/o3;

    .line 10
    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/px0;->b:Lcom/yandex/mobile/ads/impl/qh2;

    .line 11
    iput-object p3, p0, Lcom/yandex/mobile/ads/impl/px0;->c:Lcom/yandex/mobile/ads/impl/ph2;

    .line 12
    iput-object p4, p0, Lcom/yandex/mobile/ads/impl/px0;->d:Ljava/util/concurrent/Executor;

    return-void
.end method

.method private static final a(Lcom/yandex/mobile/ads/impl/px0;Lcom/yandex/mobile/ads/impl/sh2;Lcom/yandex/mobile/ads/impl/nh2;)V
    .locals 1

    .line 8
    const-string v0, "this$0"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$viewSizeKey"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$viewSizeInfo"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/px0;->b:Lcom/yandex/mobile/ads/impl/qh2;

    invoke-virtual {v0, p1, p2}, Lcom/yandex/mobile/ads/impl/qh2;->a(Lcom/yandex/mobile/ads/impl/sh2;Lcom/yandex/mobile/ads/impl/nh2;)V

    .line 10
    iget-object p1, p0, Lcom/yandex/mobile/ads/impl/px0;->c:Lcom/yandex/mobile/ads/impl/ph2;

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/px0;->a:Lcom/yandex/mobile/ads/impl/o3;

    invoke-virtual {p1, p2, p0}, Lcom/yandex/mobile/ads/impl/ph2;->a(Lcom/yandex/mobile/ads/impl/nh2;Lcom/yandex/mobile/ads/impl/o3;)V

    return-void
.end method

.method public static synthetic b(Lcom/yandex/mobile/ads/impl/px0;Lcom/yandex/mobile/ads/impl/sh2;Lcom/yandex/mobile/ads/impl/nh2;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/yandex/mobile/ads/impl/px0;->a(Lcom/yandex/mobile/ads/impl/px0;Lcom/yandex/mobile/ads/impl/sh2;Lcom/yandex/mobile/ads/impl/nh2;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/monetization/ads/nativeads/CustomizableMediaView;Ljava/lang/String;)V
    .locals 4

    .line 1
    const-string v0, "mediaView"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mediaType"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/px0;->a:Lcom/yandex/mobile/ads/impl/o3;

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/o3;->c()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3
    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/px0;->a:Lcom/yandex/mobile/ads/impl/o3;

    invoke-virtual {v2}, Lcom/yandex/mobile/ads/impl/o3;->o()I

    move-result v2

    .line 4
    const-string v3, "view"

    invoke-static {p1, v3}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-static {p1, p2}, Lcom/yandex/mobile/ads/impl/rh2;->a(Lcom/monetization/ads/nativeads/CustomizableMediaView;Ljava/lang/String;)Lcom/yandex/mobile/ads/impl/nh2;

    move-result-object p1

    .line 6
    new-instance p2, Lcom/yandex/mobile/ads/impl/sh2;

    invoke-direct {p2, v2, v1}, Lcom/yandex/mobile/ads/impl/sh2;-><init>(ILjava/lang/String;)V

    .line 7
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/px0;->d:Ljava/util/concurrent/Executor;

    new-instance v1, Lnqd;

    invoke-direct {v1, p0, p2, p1}, Lnqd;-><init>(Lcom/yandex/mobile/ads/impl/px0;Lcom/yandex/mobile/ads/impl/sh2;Lcom/yandex/mobile/ads/impl/nh2;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
