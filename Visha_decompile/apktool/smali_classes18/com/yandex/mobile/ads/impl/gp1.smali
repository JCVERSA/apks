.class public final Lcom/yandex/mobile/ads/impl/gp1;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/rg2;

.field private final b:Lcom/yandex/mobile/ads/impl/sl;

.field private final c:Lcom/yandex/mobile/ads/impl/ip1;

.field private final d:Lcom/yandex/mobile/ads/impl/ep1;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/rg2;Lcom/yandex/mobile/ads/impl/mp1;)V
    .locals 1

    const-string v0, "videoViewAdapter"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "replayController"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/gp1;->a:Lcom/yandex/mobile/ads/impl/rg2;

    new-instance v0, Lcom/yandex/mobile/ads/impl/sl;

    invoke-direct {v0}, Lcom/yandex/mobile/ads/impl/sl;-><init>()V

    iput-object v0, p0, Lcom/yandex/mobile/ads/impl/gp1;->b:Lcom/yandex/mobile/ads/impl/sl;

    new-instance v0, Lcom/yandex/mobile/ads/impl/ip1;

    invoke-direct {v0, p1, p2}, Lcom/yandex/mobile/ads/impl/ip1;-><init>(Lcom/yandex/mobile/ads/impl/rg2;Lcom/yandex/mobile/ads/impl/mp1;)V

    iput-object v0, p0, Lcom/yandex/mobile/ads/impl/gp1;->c:Lcom/yandex/mobile/ads/impl/ip1;

    new-instance p1, Lcom/yandex/mobile/ads/impl/ep1;

    invoke-direct {p1}, Lcom/yandex/mobile/ads/impl/ep1;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/gp1;->d:Lcom/yandex/mobile/ads/impl/ep1;

    return-void
.end method

.method public static final synthetic a(Lcom/yandex/mobile/ads/impl/gp1;)Lcom/yandex/mobile/ads/impl/ep1;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/gp1;->d:Lcom/yandex/mobile/ads/impl/ep1;

    return-object p0
.end method


# virtual methods
.method public final a()V
    .locals 5

    .line 2
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/gp1;->a:Lcom/yandex/mobile/ads/impl/rg2;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/vg2;->b()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/yandex/mobile/ads/impl/yb1;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/yb1;->a()Lcom/yandex/mobile/ads/impl/qa1;

    move-result-object v1

    .line 4
    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/qa1;->b()Lcom/yandex/mobile/ads/impl/hp1;

    move-result-object v1

    .line 5
    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/gp1;->c:Lcom/yandex/mobile/ads/impl/ip1;

    invoke-virtual {v2, v1}, Lcom/yandex/mobile/ads/impl/ip1;->a(Lcom/yandex/mobile/ads/impl/hp1;)V

    .line 6
    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/yb1;->c()Landroid/view/TextureView;

    move-result-object v2

    .line 7
    invoke-virtual {v2}, Landroid/view/TextureView;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 8
    iget-object v3, p0, Lcom/yandex/mobile/ads/impl/gp1;->b:Lcom/yandex/mobile/ads/impl/sl;

    new-instance v4, Lcom/yandex/mobile/ads/impl/fp1;

    invoke-direct {v4, p0, v0, v1}, Lcom/yandex/mobile/ads/impl/fp1;-><init>(Lcom/yandex/mobile/ads/impl/gp1;Lcom/yandex/mobile/ads/impl/yb1;Lcom/yandex/mobile/ads/impl/hp1;)V

    invoke-virtual {v3, v2, v4}, Lcom/yandex/mobile/ads/impl/sl;->a(Landroid/graphics/Bitmap;Lcom/yandex/mobile/ads/impl/fp1;)V

    :cond_0
    return-void
.end method
