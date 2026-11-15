.class public final Lcom/yandex/mobile/ads/impl/j90;
.super Lcom/yandex/div/core/Div2Context;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/e02;


# direct methods
.method public constructor <init>(Landroid/view/ContextThemeWrapper;Ljh2;Lcom/yandex/mobile/ads/impl/e02;)V
    .locals 8

    const-string v0, "baseContext"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "configuration"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sliderAdsBindingExtensionHandler"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v5, Lcom/yandex/mobile/ads/impl/sb0;

    invoke-direct {v5}, Lcom/yandex/mobile/ads/impl/sb0;-><init>()V

    const/4 v6, 0x4

    const/4 v7, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v7}, Lcom/yandex/div/core/Div2Context;-><init>(Landroid/view/ContextThemeWrapper;Ljh2;ILandroidx/lifecycle/LifecycleOwner;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p3, p0, Lcom/yandex/mobile/ads/impl/j90;->a:Lcom/yandex/mobile/ads/impl/e02;

    return-void
.end method


# virtual methods
.method public final a(Lcom/yandex/div2/DivData;Lcom/yandex/mobile/ads/impl/b02;)V
    .locals 1

    const-string v0, "divData"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "nativeAdPrivate"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/j90;->a:Lcom/yandex/mobile/ads/impl/e02;

    invoke-virtual {p0, p1, p2}, Lcom/yandex/mobile/ads/impl/e02;->a(Lcom/yandex/div2/DivData;Lcom/yandex/mobile/ads/impl/b02;)V

    return-void
.end method
