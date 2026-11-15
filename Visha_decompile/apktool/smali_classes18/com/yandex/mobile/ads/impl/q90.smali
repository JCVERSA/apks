.class public final Lcom/yandex/mobile/ads/impl/q90;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/vk1;

.field private final b:Lcom/yandex/mobile/ads/impl/o3;

.field private final c:Lcom/yandex/mobile/ads/impl/m20;

.field private final d:Lcom/yandex/mobile/ads/impl/ir0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yandex/mobile/ads/impl/ir0<",
            "Lcom/monetization/ads/nativeads/ExtendedNativeAdView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/vk1;Lcom/yandex/mobile/ads/impl/o3;Lcom/yandex/mobile/ads/impl/m20;Lcom/yandex/mobile/ads/impl/ir0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yandex/mobile/ads/impl/vk1;",
            "Lcom/yandex/mobile/ads/impl/o3;",
            "Lcom/yandex/mobile/ads/impl/m20;",
            "Lcom/yandex/mobile/ads/impl/ir0<",
            "Lcom/monetization/ads/nativeads/ExtendedNativeAdView;",
            ">;)V"
        }
    .end annotation

    const-string v0, "divKitDesign"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adConfiguration"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "divKitAdBinderFactory"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "layoutDesignFactory"

    invoke-static {p4, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/q90;->a:Lcom/yandex/mobile/ads/impl/vk1;

    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/q90;->b:Lcom/yandex/mobile/ads/impl/o3;

    iput-object p3, p0, Lcom/yandex/mobile/ads/impl/q90;->c:Lcom/yandex/mobile/ads/impl/m20;

    iput-object p4, p0, Lcom/yandex/mobile/ads/impl/q90;->d:Lcom/yandex/mobile/ads/impl/ir0;

    return-void
.end method

.method private static final a()V
    .locals 0

    .line 1
    return-void
.end method

.method public static synthetic b()V
    .locals 0

    invoke-static {}, Lcom/yandex/mobile/ads/impl/q90;->a()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/o8;Lcom/yandex/mobile/ads/impl/b02;Lcom/yandex/mobile/ads/impl/st;Lcom/yandex/mobile/ads/impl/qe2;)Lcom/yandex/mobile/ads/impl/fr0;
    .locals 9

    .line 2
    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adResponse"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "nativeAdPrivate"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "nativeAdEventListener"

    invoke-static {p4, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "videoEventController"

    invoke-static {p5, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/q90;->a:Lcom/yandex/mobile/ads/impl/vk1;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/vk1;->a()Lcom/yandex/mobile/ads/impl/uo;

    move-result-object v0

    .line 4
    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/q90;->a:Lcom/yandex/mobile/ads/impl/vk1;

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/vk1;->b()Lcom/yandex/mobile/ads/impl/v20;

    move-result-object v8

    new-instance v6, Lzqd;

    invoke-direct {v6}, Lzqd;-><init>()V

    .line 5
    new-instance v7, Lcom/yandex/mobile/ads/impl/gj;

    invoke-direct {v7}, Lcom/yandex/mobile/ads/impl/gj;-><init>()V

    .line 6
    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/q90;->b:Lcom/yandex/mobile/ads/impl/o3;

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/o3;->q()Lcom/yandex/mobile/ads/impl/bv1;

    move-result-object v1

    invoke-interface {v1}, Lcom/yandex/mobile/ads/impl/bv1;->c()Lcom/yandex/mobile/ads/impl/s01;

    move-result-object v1

    .line 7
    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/q90;->c:Lcom/yandex/mobile/ads/impl/m20;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p3, v6, p4, v0, v1}, Lcom/yandex/mobile/ads/impl/m20;->a(Lcom/yandex/mobile/ads/impl/q61;Lcom/yandex/mobile/ads/impl/zr;Lcom/yandex/mobile/ads/impl/st;Lcom/yandex/mobile/ads/impl/uo;Lcom/yandex/mobile/ads/impl/sp1;)Lcom/yandex/mobile/ads/impl/b10;

    move-result-object p4

    .line 8
    new-instance v0, Lcom/yandex/mobile/ads/impl/k20;

    .line 9
    iget-object v4, p0, Lcom/yandex/mobile/ads/impl/q90;->b:Lcom/yandex/mobile/ads/impl/o3;

    move-object v2, v0

    move-object v3, p1

    move-object v5, p2

    .line 10
    invoke-direct/range {v2 .. v8}, Lcom/yandex/mobile/ads/impl/k20;-><init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/o3;Lcom/yandex/mobile/ads/impl/o8;Lcom/yandex/mobile/ads/impl/zr;Lcom/yandex/mobile/ads/impl/l20;Lcom/yandex/mobile/ads/impl/v20;)V

    .line 11
    new-instance p1, Lcom/yandex/mobile/ads/impl/ga0;

    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/q90;->a:Lcom/yandex/mobile/ads/impl/vk1;

    invoke-direct {p1, v2, v0, v1}, Lcom/yandex/mobile/ads/impl/ga0;-><init>(Lcom/yandex/mobile/ads/impl/vk1;Lcom/yandex/mobile/ads/impl/k20;Lcom/yandex/mobile/ads/impl/sp1;)V

    .line 12
    new-instance v0, Lcom/yandex/mobile/ads/impl/c81;

    .line 13
    invoke-interface {p3}, Lcom/yandex/mobile/ads/impl/q61;->b()Lcom/yandex/mobile/ads/impl/n91;

    move-result-object p3

    .line 14
    invoke-direct {v0, p3, p5}, Lcom/yandex/mobile/ads/impl/c81;-><init>(Lcom/yandex/mobile/ads/impl/n91;Lcom/yandex/mobile/ads/impl/qe2;)V

    .line 15
    new-instance p3, Lcom/yandex/mobile/ads/impl/ar;

    const/4 p5, 0x3

    .line 16
    new-array p5, p5, [Lcom/yandex/mobile/ads/impl/b10;

    const/4 v1, 0x0

    aput-object p1, p5, v1

    const/4 p1, 0x1

    aput-object p4, p5, p1

    const/4 p1, 0x2

    aput-object v0, p5, p1

    .line 17
    invoke-direct {p3, p5}, Lcom/yandex/mobile/ads/impl/ar;-><init>([Lcom/yandex/mobile/ads/impl/b10;)V

    .line 18
    new-instance p1, Lcom/yandex/mobile/ads/impl/e30;

    invoke-direct {p1, p2}, Lcom/yandex/mobile/ads/impl/e30;-><init>(Lcom/yandex/mobile/ads/impl/o8;)V

    .line 19
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/q90;->d:Lcom/yandex/mobile/ads/impl/ir0;

    .line 20
    sget p2, Lcom/yandex/mobile/ads/R$layout;->monetization_ads_internal_divkit:I

    .line 21
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    const-string p0, "layoutViewClass"

    const-class p4, Lcom/monetization/ads/nativeads/ExtendedNativeAdView;

    invoke-static {p4, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "designComponentBinder"

    invoke-static {p3, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "designConstraint"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    new-instance p0, Lcom/yandex/mobile/ads/impl/fr0;

    invoke-direct {p0, p2, p3, p1}, Lcom/yandex/mobile/ads/impl/fr0;-><init>(ILcom/yandex/mobile/ads/impl/ar;Lcom/yandex/mobile/ads/impl/c10;)V

    return-object p0
.end method
