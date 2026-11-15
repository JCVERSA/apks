.class public final Lcom/yandex/mobile/ads/impl/k61;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/impl/j61;


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/l61;

.field private final b:Lcom/yandex/mobile/ads/impl/g61;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/bv1;Lcom/yandex/mobile/ads/impl/u61;Lcom/yandex/mobile/ads/impl/l61;)V
    .locals 9

    .line 1
    new-instance v5, Lcom/yandex/mobile/ads/impl/g5;

    invoke-direct {v5}, Lcom/yandex/mobile/ads/impl/g5;-><init>()V

    .line 2
    new-instance v6, Lcom/yandex/mobile/ads/impl/o3;

    sget-object v0, Lcom/yandex/mobile/ads/impl/ts;->g:Lcom/yandex/mobile/ads/impl/ts;

    invoke-direct {v6, v0, p2}, Lcom/yandex/mobile/ads/impl/o3;-><init>(Lcom/yandex/mobile/ads/impl/ts;Lcom/yandex/mobile/ads/impl/bv1;)V

    .line 3
    new-instance v7, Lcom/yandex/mobile/ads/impl/f61;

    invoke-direct {v7}, Lcom/yandex/mobile/ads/impl/f61;-><init>()V

    .line 4
    new-instance v8, Lcom/yandex/mobile/ads/impl/h61;

    invoke-direct {v8}, Lcom/yandex/mobile/ads/impl/h61;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 5
    invoke-direct/range {v0 .. v8}, Lcom/yandex/mobile/ads/impl/k61;-><init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/bv1;Lcom/yandex/mobile/ads/impl/u61;Lcom/yandex/mobile/ads/impl/l61;Lcom/yandex/mobile/ads/impl/g5;Lcom/yandex/mobile/ads/impl/o3;Lcom/yandex/mobile/ads/impl/f61;Lcom/yandex/mobile/ads/impl/h61;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/bv1;Lcom/yandex/mobile/ads/impl/u61;Lcom/yandex/mobile/ads/impl/l61;Lcom/yandex/mobile/ads/impl/g5;Lcom/yandex/mobile/ads/impl/o3;Lcom/yandex/mobile/ads/impl/f61;Lcom/yandex/mobile/ads/impl/h61;)V
    .locals 7

    .line 6
    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sdkEnvironmentModule"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "requestData"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "nativeAdLoadingItemFinishedListener"

    invoke-static {p4, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adLoadingPhasesManager"

    invoke-static {p5, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adConfiguration"

    invoke-static {p6, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "nativeAdLoadListenerFactory"

    invoke-static {p7, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "nativeAdLoadManagerFactory"

    invoke-static {p8, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-object p4, p0, Lcom/yandex/mobile/ads/impl/k61;->a:Lcom/yandex/mobile/ads/impl/l61;

    .line 9
    invoke-virtual {p7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1, p6, p5, p0}, Lcom/yandex/mobile/ads/impl/f61;->a(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/o3;Lcom/yandex/mobile/ads/impl/g5;Lcom/yandex/mobile/ads/impl/j61;)Lcom/yandex/mobile/ads/impl/p61;

    move-result-object p4

    .line 10
    invoke-virtual {p8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p6

    move-object v5, p4

    move-object v6, p5

    invoke-static/range {v1 .. v6}, Lcom/yandex/mobile/ads/impl/h61;->a(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/bv1;Lcom/yandex/mobile/ads/impl/u61;Lcom/yandex/mobile/ads/impl/o3;Lcom/yandex/mobile/ads/impl/p61;Lcom/yandex/mobile/ads/impl/g5;)Lcom/yandex/mobile/ads/impl/g61;

    move-result-object p1

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/k61;->b:Lcom/yandex/mobile/ads/impl/g61;

    .line 11
    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/ck;->f()Lcom/yandex/mobile/ads/impl/o3;

    move-result-object p0

    invoke-virtual {p4, p0}, Lcom/yandex/mobile/ads/impl/p61;->a(Lcom/yandex/mobile/ads/impl/o3;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/k61;->a:Lcom/yandex/mobile/ads/impl/l61;

    invoke-interface {v0, p0}, Lcom/yandex/mobile/ads/impl/l61;->a(Lcom/yandex/mobile/ads/impl/k61;)V

    return-void
.end method

.method public final a(Lcom/yandex/mobile/ads/impl/bu;)V
    .locals 0

    .line 3
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/k61;->b:Lcom/yandex/mobile/ads/impl/g61;

    invoke-virtual {p0, p1}, Lcom/yandex/mobile/ads/impl/g61;->a(Lcom/yandex/mobile/ads/impl/bu;)V

    return-void
.end method

.method public final a(Lcom/yandex/mobile/ads/impl/ku;)V
    .locals 0

    .line 4
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/k61;->b:Lcom/yandex/mobile/ads/impl/g61;

    invoke-virtual {p0, p1}, Lcom/yandex/mobile/ads/impl/g61;->a(Lcom/yandex/mobile/ads/impl/ku;)V

    return-void
.end method

.method public final a(Lcom/yandex/mobile/ads/impl/vt;)V
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/k61;->b:Lcom/yandex/mobile/ads/impl/g61;

    invoke-virtual {p0, p1}, Lcom/yandex/mobile/ads/impl/g61;->a(Lcom/yandex/mobile/ads/impl/vt;)V

    return-void
.end method

.method public final b()V
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/k61;->b:Lcom/yandex/mobile/ads/impl/g61;

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/g61;->y()V

    return-void
.end method

.method public final c()V
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/k61;->b:Lcom/yandex/mobile/ads/impl/g61;

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/g61;->z()V

    return-void
.end method
