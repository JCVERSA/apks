.class public abstract Lcom/yandex/mobile/ads/impl/x51;
.super Lcom/yandex/mobile/ads/impl/z81;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/impl/q61;


# instance fields
.field private final N:Lcom/yandex/mobile/ads/impl/m61;

.field private O:Lcom/yandex/mobile/ads/impl/sj0;

.field private final P:Lcom/yandex/mobile/ads/impl/x71;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/g41;Lcom/yandex/mobile/ads/impl/m61;Lcom/yandex/mobile/ads/impl/sj0;Lcom/yandex/mobile/ads/impl/kl;Lcom/yandex/mobile/ads/impl/e51;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "nativeAd"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "nativeAdManager"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "imageProvider"

    invoke-static {p4, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "binderConfiguration"

    invoke-static {p5, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "nativeAdControllers"

    invoke-static {p6, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p5, p6}, Lcom/yandex/mobile/ads/impl/z81;-><init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/kl;Lcom/yandex/mobile/ads/impl/e51;)V

    iput-object p3, p0, Lcom/yandex/mobile/ads/impl/x51;->N:Lcom/yandex/mobile/ads/impl/m61;

    iput-object p4, p0, Lcom/yandex/mobile/ads/impl/x51;->O:Lcom/yandex/mobile/ads/impl/sj0;

    invoke-virtual {p5}, Lcom/yandex/mobile/ads/impl/kl;->d()Lcom/yandex/mobile/ads/impl/s41;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/s41;->a()Lcom/yandex/mobile/ads/impl/o3;

    move-result-object p1

    invoke-direct {p0, p2, p1}, Lcom/yandex/mobile/ads/impl/x51;->a(Lcom/yandex/mobile/ads/impl/g41;Lcom/yandex/mobile/ads/impl/o3;)Lcom/yandex/mobile/ads/impl/x71;

    move-result-object p1

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/x51;->P:Lcom/yandex/mobile/ads/impl/x71;

    invoke-virtual {p0, p1}, Lcom/yandex/mobile/ads/impl/z81;->a(Lcom/yandex/mobile/ads/impl/x71;)V

    return-void
.end method

.method private final a(Lcom/yandex/mobile/ads/impl/g41;Lcom/yandex/mobile/ads/impl/o3;)Lcom/yandex/mobile/ads/impl/x71;
    .locals 8

    .line 1
    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/g41;->g()Lcom/yandex/mobile/ads/impl/gr1;

    move-result-object v0

    .line 2
    new-instance v6, Lcom/yandex/mobile/ads/impl/bz1;

    .line 3
    new-instance v1, Lcom/yandex/mobile/ads/impl/er1;

    invoke-direct {v1}, Lcom/yandex/mobile/ads/impl/er1;-><init>()V

    .line 4
    new-instance v2, Lcom/yandex/mobile/ads/impl/c8;

    invoke-direct {v2}, Lcom/yandex/mobile/ads/impl/c8;-><init>()V

    .line 5
    new-instance v3, Lcom/yandex/mobile/ads/impl/jr;

    invoke-direct {v3}, Lcom/yandex/mobile/ads/impl/jr;-><init>()V

    .line 6
    invoke-direct {v6, p1, v1, v2, v3}, Lcom/yandex/mobile/ads/impl/bz1;-><init>(Lcom/yandex/mobile/ads/impl/g41;Lcom/yandex/mobile/ads/impl/er1;Lcom/yandex/mobile/ads/impl/c8;Lcom/yandex/mobile/ads/impl/jr;)V

    .line 7
    new-instance p1, Lcom/yandex/mobile/ads/impl/x71;

    .line 8
    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/gr1;->a()Ljava/lang/String;

    move-result-object v3

    .line 9
    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/z81;->e()Lcom/yandex/mobile/ads/impl/o8;

    move-result-object v4

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/z81;->a()Lcom/yandex/mobile/ads/impl/y61;

    move-result-object v5

    const/4 v7, 0x0

    move-object v1, p1

    move-object v2, p2

    .line 10
    invoke-direct/range {v1 .. v7}, Lcom/yandex/mobile/ads/impl/x71;-><init>(Lcom/yandex/mobile/ads/impl/o3;Ljava/lang/String;Lcom/yandex/mobile/ads/impl/o8;Lcom/yandex/mobile/ads/impl/y61;Lcom/yandex/mobile/ads/impl/i81;Lcom/yandex/mobile/ads/impl/f81;)V

    return-object p1
.end method


# virtual methods
.method public final a(Lcom/yandex/mobile/ads/impl/ut;)V
    .locals 1

    .line 11
    const-string v0, "listener"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/x51;->N:Lcom/yandex/mobile/ads/impl/m61;

    invoke-virtual {p0, p1}, Lcom/yandex/mobile/ads/impl/m61;->b(Lcom/yandex/mobile/ads/impl/ut;)V

    return-void
.end method

.method public final b(Lcom/yandex/mobile/ads/impl/k71;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/yandex/mobile/ads/impl/e61;
        }
    .end annotation

    .line 8
    const-string v0, "viewProvider"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/k71;->e()Lcom/yandex/mobile/ads/impl/f81;

    move-result-object v0

    .line 10
    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/x51;->P:Lcom/yandex/mobile/ads/impl/x71;

    invoke-virtual {v1, v0}, Lcom/yandex/mobile/ads/impl/x71;->a(Lcom/yandex/mobile/ads/impl/f81;)V

    .line 11
    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/k71;->d()Landroid/view/View;

    move-result-object v0

    .line 12
    new-instance v1, Lcom/yandex/mobile/ads/impl/r71;

    invoke-direct {v1, p1}, Lcom/yandex/mobile/ads/impl/r71;-><init>(Lcom/yandex/mobile/ads/impl/k71;)V

    .line 13
    iget-object p1, p0, Lcom/yandex/mobile/ads/impl/x51;->O:Lcom/yandex/mobile/ads/impl/sj0;

    sget-object v2, Lcom/yandex/mobile/ads/impl/dp;->a:Lcom/yandex/mobile/ads/impl/dp$a;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/yandex/mobile/ads/impl/dp$a;->a()Lcom/yandex/mobile/ads/impl/dp;

    move-result-object v2

    invoke-virtual {p0, v0, p1, v1, v2}, Lcom/yandex/mobile/ads/impl/z81;->a(Landroid/view/View;Lcom/yandex/mobile/ads/impl/sj0;Lcom/yandex/mobile/ads/impl/r71;Lcom/yandex/mobile/ads/impl/dp;)V

    return-void
.end method

.method public final b(Lcom/yandex/mobile/ads/impl/k71;Lcom/yandex/mobile/ads/impl/uo;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/yandex/mobile/ads/impl/e61;
        }
    .end annotation

    .line 3
    const-string v0, "viewProvider"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clickConnector"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/k71;->d()Landroid/view/View;

    move-result-object v2

    .line 5
    new-instance v4, Lcom/yandex/mobile/ads/impl/r71;

    invoke-direct {v4, p1}, Lcom/yandex/mobile/ads/impl/r71;-><init>(Lcom/yandex/mobile/ads/impl/k71;)V

    .line 6
    iget-object v3, p0, Lcom/yandex/mobile/ads/impl/x51;->O:Lcom/yandex/mobile/ads/impl/sj0;

    sget-object p1, Lcom/yandex/mobile/ads/impl/dp;->a:Lcom/yandex/mobile/ads/impl/dp$a;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/yandex/mobile/ads/impl/dp$a;->a()Lcom/yandex/mobile/ads/impl/dp;

    move-result-object v5

    move-object v1, p0

    move-object v6, p2

    .line 7
    invoke-virtual/range {v1 .. v6}, Lcom/yandex/mobile/ads/impl/z81;->a(Landroid/view/View;Lcom/yandex/mobile/ads/impl/sj0;Lcom/yandex/mobile/ads/impl/r71;Lcom/yandex/mobile/ads/impl/dp;Lcom/yandex/mobile/ads/impl/uo;)V

    return-void
.end method

.method public final b(Lcom/yandex/mobile/ads/impl/ut;)V
    .locals 1

    .line 1
    const-string v0, "listener"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/x51;->N:Lcom/yandex/mobile/ads/impl/m61;

    invoke-virtual {p0, p1}, Lcom/yandex/mobile/ads/impl/m61;->a(Lcom/yandex/mobile/ads/impl/ut;)V

    return-void
.end method

.method public final getAdAssets()Lcom/yandex/mobile/ads/impl/rt;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/x51;->N:Lcom/yandex/mobile/ads/impl/m61;

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/m61;->a()Lcom/yandex/mobile/ads/impl/rt;

    move-result-object p0

    return-object p0
.end method

.method public final getAdType()Lcom/yandex/mobile/ads/impl/gr1;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/x51;->N:Lcom/yandex/mobile/ads/impl/m61;

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/m61;->b()Lcom/yandex/mobile/ads/impl/gr1;

    move-result-object p0

    return-object p0
.end method

.method public final getInfo()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/x51;->N:Lcom/yandex/mobile/ads/impl/m61;

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/m61;->c()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getNativeAdVideoController()Lcom/yandex/mobile/ads/impl/yt;
    .locals 0

    invoke-super {p0}, Lcom/yandex/mobile/ads/impl/z81;->getNativeAdVideoController()Lcom/yandex/mobile/ads/impl/yt;

    move-result-object p0

    return-object p0
.end method

.method public final loadImages()V
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/x51;->N:Lcom/yandex/mobile/ads/impl/m61;

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/m61;->d()V

    return-void
.end method
