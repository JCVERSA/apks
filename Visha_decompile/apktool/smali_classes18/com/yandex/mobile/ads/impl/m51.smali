.class public final Lcom/yandex/mobile/ads/impl/m51;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/impl/b10;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/yandex/mobile/ads/impl/b10<",
        "Lcom/monetization/ads/nativeads/ExtendedNativeAdView;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/q61;

.field private final b:Lcom/yandex/mobile/ads/impl/zr;

.field private final c:Lcom/yandex/mobile/ads/impl/st;

.field private final d:Lcom/yandex/mobile/ads/impl/uo;

.field private final e:Lcom/yandex/mobile/ads/impl/sp1;

.field private final f:Lcom/yandex/mobile/ads/impl/j41;

.field private final g:Lcom/yandex/mobile/ads/impl/eh;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/q61;Lcom/yandex/mobile/ads/impl/zr;Lcom/yandex/mobile/ads/impl/st;Lcom/yandex/mobile/ads/impl/uo;Lcom/yandex/mobile/ads/impl/sp1;Lcom/yandex/mobile/ads/impl/j41;Lcom/yandex/mobile/ads/impl/r61;Lcom/yandex/mobile/ads/impl/eh;)V
    .locals 1

    const-string v0, "nativeAd"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "contentCloseListener"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "nativeAdEventListener"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clickConnector"

    invoke-static {p4, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "reporter"

    invoke-static {p5, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "nativeAdAssetViewProvider"

    invoke-static {p6, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "divKitDesignAssetNamesProvider"

    invoke-static {p7, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p7, "assetsNativeAdViewProviderCreator"

    invoke-static {p8, p7}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/m51;->a:Lcom/yandex/mobile/ads/impl/q61;

    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/m51;->b:Lcom/yandex/mobile/ads/impl/zr;

    iput-object p3, p0, Lcom/yandex/mobile/ads/impl/m51;->c:Lcom/yandex/mobile/ads/impl/st;

    iput-object p4, p0, Lcom/yandex/mobile/ads/impl/m51;->d:Lcom/yandex/mobile/ads/impl/uo;

    iput-object p5, p0, Lcom/yandex/mobile/ads/impl/m51;->e:Lcom/yandex/mobile/ads/impl/sp1;

    iput-object p6, p0, Lcom/yandex/mobile/ads/impl/m51;->f:Lcom/yandex/mobile/ads/impl/j41;

    iput-object p8, p0, Lcom/yandex/mobile/ads/impl/m51;->g:Lcom/yandex/mobile/ads/impl/eh;

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/ViewGroup;)V
    .locals 2

    check-cast p1, Lcom/monetization/ads/nativeads/ExtendedNativeAdView;

    const-string v0, "nativeAdView"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/m51;->g:Lcom/yandex/mobile/ads/impl/eh;

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/m51;->f:Lcom/yandex/mobile/ads/impl/j41;

    invoke-virtual {v0, p1, v1}, Lcom/yandex/mobile/ads/impl/eh;->a(Landroid/view/View;Lcom/yandex/mobile/ads/impl/j41;)Lcom/yandex/mobile/ads/impl/k71;

    move-result-object p1

    :try_start_0
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/m51;->a:Lcom/yandex/mobile/ads/impl/q61;

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/m51;->d:Lcom/yandex/mobile/ads/impl/uo;

    invoke-interface {v0, p1, v1}, Lcom/yandex/mobile/ads/impl/q61;->b(Lcom/yandex/mobile/ads/impl/k71;Lcom/yandex/mobile/ads/impl/uo;)V

    iget-object p1, p0, Lcom/yandex/mobile/ads/impl/m51;->a:Lcom/yandex/mobile/ads/impl/q61;

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/m51;->c:Lcom/yandex/mobile/ads/impl/st;

    invoke-interface {p1, v0}, Lcom/yandex/mobile/ads/impl/q61;->a(Lcom/yandex/mobile/ads/impl/st;)V
    :try_end_0
    .catch Lcom/yandex/mobile/ads/impl/e61; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/m51;->b:Lcom/yandex/mobile/ads/impl/zr;

    invoke-interface {v0}, Lcom/yandex/mobile/ads/impl/zr;->f()V

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/m51;->e:Lcom/yandex/mobile/ads/impl/sp1;

    const-string v0, "Failed to bind DivKit Native Ad"

    invoke-interface {p0, v0, p1}, Lcom/yandex/mobile/ads/impl/sp1;->reportError(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public final c()V
    .locals 1

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/m51;->a:Lcom/yandex/mobile/ads/impl/q61;

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lcom/yandex/mobile/ads/impl/q61;->a(Lcom/yandex/mobile/ads/impl/st;)V

    return-void
.end method
