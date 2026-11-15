.class public final Lcom/yandex/mobile/ads/impl/br0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/impl/ee0;


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/b10;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yandex/mobile/ads/impl/b10<",
            "Lcom/monetization/ads/nativeads/ExtendedNativeAdView;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lcom/yandex/mobile/ads/impl/sp1;

.field private final c:Lcom/yandex/mobile/ads/impl/uq1;

.field private final d:Lcom/yandex/mobile/ads/impl/vq;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/fq;Lcom/yandex/mobile/ads/impl/sp1;Lcom/yandex/mobile/ads/impl/uq1;Lcom/yandex/mobile/ads/impl/vq;)V
    .locals 1

    const-string v0, "adTypeSpecificBinder"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "reporter"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resourceUtils"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "commonComponentsBinderProvider"

    invoke-static {p4, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/br0;->a:Lcom/yandex/mobile/ads/impl/b10;

    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/br0;->b:Lcom/yandex/mobile/ads/impl/sp1;

    iput-object p3, p0, Lcom/yandex/mobile/ads/impl/br0;->c:Lcom/yandex/mobile/ads/impl/uq1;

    iput-object p4, p0, Lcom/yandex/mobile/ads/impl/br0;->d:Lcom/yandex/mobile/ads/impl/vq;

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/o8;Lcom/yandex/mobile/ads/impl/q61;Lcom/yandex/mobile/ads/impl/zr;Lcom/yandex/mobile/ads/impl/st;Lcom/yandex/mobile/ads/impl/e1;)Lcom/yandex/mobile/ads/impl/fr0;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/yandex/mobile/ads/impl/o8<",
            "*>;",
            "Lcom/yandex/mobile/ads/impl/q61;",
            "Lcom/yandex/mobile/ads/impl/zr;",
            "Lcom/yandex/mobile/ads/impl/st;",
            "Lcom/yandex/mobile/ads/impl/e1;",
            ")",
            "Lcom/yandex/mobile/ads/impl/fr0<",
            "Lcom/monetization/ads/nativeads/ExtendedNativeAdView;",
            ">;"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "adResponse"

    invoke-static {p2, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "nativeAdPrivate"

    invoke-static {p3, p2}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "contentCloseListener"

    invoke-static {p4, p2}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "nativeAdEventListener"

    invoke-static {p5, p2}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "eventController"

    invoke-static {p6, p2}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p3}, Lcom/yandex/mobile/ads/impl/q61;->getAdAssets()Lcom/yandex/mobile/ads/impl/rt;

    move-result-object p2

    iget-object p6, p0, Lcom/yandex/mobile/ads/impl/br0;->c:Lcom/yandex/mobile/ads/impl/uq1;

    sget v1, Lcom/yandex/mobile/ads/R$dimen;->monetization_ads_internal_landscape_horizontal_icon_size:I

    invoke-virtual {p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    invoke-static {p1}, Ls86;->c(F)I

    move-result p1

    new-instance p6, Lcom/yandex/mobile/ads/impl/ar;

    new-instance v0, Lcom/yandex/mobile/ads/impl/cr;

    invoke-direct {v0, p2, p1}, Lcom/yandex/mobile/ads/impl/cr;-><init>(Lcom/yandex/mobile/ads/impl/rt;I)V

    iget-object p1, p0, Lcom/yandex/mobile/ads/impl/br0;->d:Lcom/yandex/mobile/ads/impl/vq;

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/br0;->a:Lcom/yandex/mobile/ads/impl/b10;

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/br0;->b:Lcom/yandex/mobile/ads/impl/sp1;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p3, p4, p5, v1, p0}, Lcom/yandex/mobile/ads/impl/vq;->a(Lcom/yandex/mobile/ads/impl/q61;Lcom/yandex/mobile/ads/impl/zr;Lcom/yandex/mobile/ads/impl/st;Lcom/yandex/mobile/ads/impl/b10;Lcom/yandex/mobile/ads/impl/sp1;)Lcom/yandex/mobile/ads/impl/ar;

    move-result-object p0

    new-instance p1, Lcom/yandex/mobile/ads/impl/xu0;

    new-instance p4, Lcom/yandex/mobile/ads/impl/a51;

    invoke-direct {p4}, Lcom/yandex/mobile/ads/impl/a51;-><init>()V

    new-instance p5, Lcom/yandex/mobile/ads/impl/yu0;

    invoke-direct {p5, p2}, Lcom/yandex/mobile/ads/impl/yu0;-><init>(Lcom/yandex/mobile/ads/impl/rt;)V

    invoke-direct {p1, p2, p4, p5}, Lcom/yandex/mobile/ads/impl/xu0;-><init>(Lcom/yandex/mobile/ads/impl/rt;Lcom/yandex/mobile/ads/impl/a51;Lcom/yandex/mobile/ads/impl/yu0;)V

    new-instance p4, Lcom/yandex/mobile/ads/impl/nh1;

    new-instance p5, Lcom/yandex/mobile/ads/impl/h41;

    invoke-direct {p5}, Lcom/yandex/mobile/ads/impl/h41;-><init>()V

    new-instance v1, Lcom/yandex/mobile/ads/impl/k41;

    invoke-direct {v1}, Lcom/yandex/mobile/ads/impl/k41;-><init>()V

    invoke-direct {p4, p2, p5, v1}, Lcom/yandex/mobile/ads/impl/nh1;-><init>(Lcom/yandex/mobile/ads/impl/rt;Lcom/yandex/mobile/ads/impl/h41;Lcom/yandex/mobile/ads/impl/k41;)V

    new-instance p2, Lcom/yandex/mobile/ads/impl/jj2;

    invoke-direct {p2}, Lcom/yandex/mobile/ads/impl/jj2;-><init>()V

    new-instance p5, Lcom/yandex/mobile/ads/impl/sn;

    new-instance v1, Lcom/yandex/mobile/ads/impl/k41;

    invoke-direct {v1}, Lcom/yandex/mobile/ads/impl/k41;-><init>()V

    invoke-direct {p5, p3, v1}, Lcom/yandex/mobile/ads/impl/sn;-><init>(Lcom/yandex/mobile/ads/impl/q61;Lcom/yandex/mobile/ads/impl/k41;)V

    const/4 p3, 0x6

    new-array p3, p3, [Lcom/yandex/mobile/ads/impl/b10;

    const/4 v1, 0x0

    aput-object v0, p3, v1

    const/4 v0, 0x1

    aput-object p0, p3, v0

    const/4 p0, 0x2

    aput-object p1, p3, p0

    const/4 p1, 0x3

    aput-object p4, p3, p1

    const/4 p1, 0x4

    aput-object p2, p3, p1

    const/4 p1, 0x5

    aput-object p5, p3, p1

    invoke-direct {p6, p3}, Lcom/yandex/mobile/ads/impl/ar;-><init>([Lcom/yandex/mobile/ads/impl/b10;)V

    new-instance p1, Lcom/yandex/mobile/ads/impl/mf1;

    invoke-direct {p1, p0}, Lcom/yandex/mobile/ads/impl/mf1;-><init>(I)V

    new-instance p0, Lcom/yandex/mobile/ads/impl/fr0;

    sget p2, Lcom/yandex/mobile/ads/R$layout;->monetization_ads_internal_native_interstitial_landscape_horizontal_media:I

    invoke-direct {p0, p2, p6, p1}, Lcom/yandex/mobile/ads/impl/fr0;-><init>(ILcom/yandex/mobile/ads/impl/ar;Lcom/yandex/mobile/ads/impl/c10;)V

    return-object p0
.end method
