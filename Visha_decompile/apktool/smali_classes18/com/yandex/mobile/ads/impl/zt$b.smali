.class public final Lcom/yandex/mobile/ads/impl/zt$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/impl/ut;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yandex/mobile/ads/impl/zt;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILcom/yandex/mobile/ads/impl/fu;Lcom/yandex/mobile/ads/impl/t92;Lcom/yandex/mobile/ads/impl/ie;Lcom/yandex/mobile/ads/impl/o10;Lcom/yandex/mobile/ads/impl/au;Lcom/yandex/mobile/ads/impl/sp1;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yandex/mobile/ads/impl/zt;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/zt;)V
    .locals 0

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/zt$b;->a:Lcom/yandex/mobile/ads/impl/zt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFinishLoadingImages()V
    .locals 1

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/zt$b;->a:Lcom/yandex/mobile/ads/impl/zt;

    invoke-static {v0}, Lcom/yandex/mobile/ads/impl/zt;->access$getNativeAd$p(Lcom/yandex/mobile/ads/impl/zt;)Lcom/yandex/mobile/ads/impl/q61;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Lcom/yandex/mobile/ads/impl/q61;->a(Lcom/yandex/mobile/ads/impl/ut;)V

    :cond_0
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/zt$b;->a:Lcom/yandex/mobile/ads/impl/zt;

    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/zt;->access$getNativeAdImagesAnimator$p(Lcom/yandex/mobile/ads/impl/zt;)Lcom/yandex/mobile/ads/impl/c61;

    move-result-object p0

    if-nez p0, :cond_1

    const-string p0, "nativeAdImagesAnimator"

    invoke-static {p0}, Ly45;->B(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_1
    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/c61;->a()V

    return-void
.end method
