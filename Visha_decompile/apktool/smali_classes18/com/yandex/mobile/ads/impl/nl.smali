.class public final Lcom/yandex/mobile/ads/impl/nl;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/bv1;

.field private final b:Lcom/yandex/mobile/ads/impl/kt;

.field private final c:Lcom/yandex/mobile/ads/impl/mu;

.field private final d:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/bv1;Lcom/yandex/mobile/ads/impl/i60;Lcom/yandex/mobile/ads/impl/zw1;Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "sdkEnvironmentModule"

    invoke-static {p2, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "adPlayer"

    invoke-static {p3, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "videoPlayer"

    invoke-static {p4, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "applicationContext"

    invoke-static {p5, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/nl;->a:Lcom/yandex/mobile/ads/impl/bv1;

    iput-object p3, p0, Lcom/yandex/mobile/ads/impl/nl;->b:Lcom/yandex/mobile/ads/impl/kt;

    iput-object p4, p0, Lcom/yandex/mobile/ads/impl/nl;->c:Lcom/yandex/mobile/ads/impl/mu;

    iput-object p5, p0, Lcom/yandex/mobile/ads/impl/nl;->d:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/ViewGroup;Ljava/util/List;Lcom/yandex/mobile/ads/impl/et;)Lcom/yandex/mobile/ads/impl/ll;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "Ljava/util/List<",
            "Lcom/yandex/mobile/ads/impl/xb2;",
            ">;",
            "Lcom/yandex/mobile/ads/impl/et;",
            ")",
            "Lcom/yandex/mobile/ads/impl/ll;"
        }
    .end annotation

    const-string v0, "adViewGroup"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "friendlyOverlays"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "instreamAd"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/yandex/mobile/ads/impl/ft;

    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/nl;->d:Landroid/content/Context;

    iget-object v3, p0, Lcom/yandex/mobile/ads/impl/nl;->a:Lcom/yandex/mobile/ads/impl/bv1;

    iget-object v5, p0, Lcom/yandex/mobile/ads/impl/nl;->b:Lcom/yandex/mobile/ads/impl/kt;

    iget-object v6, p0, Lcom/yandex/mobile/ads/impl/nl;->c:Lcom/yandex/mobile/ads/impl/mu;

    move-object v1, v0

    move-object v4, p3

    invoke-direct/range {v1 .. v6}, Lcom/yandex/mobile/ads/impl/ft;-><init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/bv1;Lcom/yandex/mobile/ads/impl/et;Lcom/yandex/mobile/ads/impl/kt;Lcom/yandex/mobile/ads/impl/mu;)V

    new-instance p0, Lcom/yandex/mobile/ads/impl/ll;

    new-instance v5, Ljava/lang/ref/WeakReference;

    invoke-direct {v5, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    new-instance v6, Lcom/yandex/mobile/ads/impl/tl0;

    invoke-direct {v6, v0}, Lcom/yandex/mobile/ads/impl/tl0;-><init>(Lcom/yandex/mobile/ads/impl/ft;)V

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, v0

    invoke-direct/range {v1 .. v7}, Lcom/yandex/mobile/ads/impl/ll;-><init>(Landroid/view/ViewGroup;Ljava/util/List;Lcom/yandex/mobile/ads/impl/ft;Ljava/lang/ref/WeakReference;Lcom/yandex/mobile/ads/impl/tl0;Lcom/yandex/mobile/ads/impl/t70;)V

    return-object p0
.end method
