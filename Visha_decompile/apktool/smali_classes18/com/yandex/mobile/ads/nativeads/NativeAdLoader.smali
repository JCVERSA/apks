.class public Lcom/yandex/mobile/ads/nativeads/NativeAdLoader;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/MainThread;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u0017\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0017\u0010\t\u001a\u00020\u00082\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0004\u0008\t\u0010\nJ\u0015\u0010\r\u001a\u00020\u00082\u0006\u0010\u000c\u001a\u00020\u000b\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\r\u0010\u000f\u001a\u00020\u0008\u00a2\u0006\u0004\u0008\u000f\u0010\u0010\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/yandex/mobile/ads/nativeads/NativeAdLoader;",
        "",
        "Landroid/content/Context;",
        "context",
        "<init>",
        "(Landroid/content/Context;)V",
        "Lcom/yandex/mobile/ads/nativeads/NativeAdLoadListener;",
        "listener",
        "Lzfb;",
        "setNativeAdLoadListener",
        "(Lcom/yandex/mobile/ads/nativeads/NativeAdLoadListener;)V",
        "Lcom/yandex/mobile/ads/nativeads/NativeAdRequestConfiguration;",
        "nativeAdRequestConfiguration",
        "loadAd",
        "(Lcom/yandex/mobile/ads/nativeads/NativeAdRequestConfiguration;)V",
        "cancelLoading",
        "()V",
        "mobileads_externalRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/wt;

.field private final b:Lcom/yandex/mobile/ads/nativeads/f;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/yandex/mobile/ads/impl/en2;

    invoke-direct {v0, p1}, Lcom/yandex/mobile/ads/impl/en2;-><init>(Landroid/content/Context;)V

    new-instance v1, Lcom/yandex/mobile/ads/impl/wt;

    invoke-direct {v1, p1, v0}, Lcom/yandex/mobile/ads/impl/wt;-><init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/en2;)V

    iput-object v1, p0, Lcom/yandex/mobile/ads/nativeads/NativeAdLoader;->a:Lcom/yandex/mobile/ads/impl/wt;

    new-instance p1, Lcom/yandex/mobile/ads/nativeads/f;

    invoke-direct {p1}, Lcom/yandex/mobile/ads/nativeads/f;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/nativeads/NativeAdLoader;->b:Lcom/yandex/mobile/ads/nativeads/f;

    return-void
.end method


# virtual methods
.method public final cancelLoading()V
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/nativeads/NativeAdLoader;->a:Lcom/yandex/mobile/ads/impl/wt;

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/wt;->a()V

    return-void
.end method

.method public final loadAd(Lcom/yandex/mobile/ads/nativeads/NativeAdRequestConfiguration;)V
    .locals 1

    const-string v0, "nativeAdRequestConfiguration"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/yandex/mobile/ads/nativeads/NativeAdLoader;->b:Lcom/yandex/mobile/ads/nativeads/f;

    invoke-virtual {v0, p1}, Lcom/yandex/mobile/ads/nativeads/f;->a(Lcom/yandex/mobile/ads/nativeads/NativeAdRequestConfiguration;)Lcom/yandex/mobile/ads/impl/v7;

    move-result-object p1

    iget-object p0, p0, Lcom/yandex/mobile/ads/nativeads/NativeAdLoader;->a:Lcom/yandex/mobile/ads/impl/wt;

    invoke-virtual {p0, p1}, Lcom/yandex/mobile/ads/impl/wt;->a(Lcom/yandex/mobile/ads/impl/v7;)V

    return-void
.end method

.method public final setNativeAdLoadListener(Lcom/yandex/mobile/ads/nativeads/NativeAdLoadListener;)V
    .locals 1

    instance-of v0, p1, Lcom/yandex/mobile/ads/nativeads/a;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/yandex/mobile/ads/impl/zm2;

    check-cast p1, Lcom/yandex/mobile/ads/nativeads/a;

    invoke-direct {v0, p1}, Lcom/yandex/mobile/ads/impl/zm2;-><init>(Lcom/yandex/mobile/ads/nativeads/a;)V

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    new-instance v0, Lcom/yandex/mobile/ads/impl/um2;

    invoke-direct {v0, p1}, Lcom/yandex/mobile/ads/impl/um2;-><init>(Lcom/yandex/mobile/ads/nativeads/NativeAdLoadListener;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iget-object p0, p0, Lcom/yandex/mobile/ads/nativeads/NativeAdLoader;->a:Lcom/yandex/mobile/ads/impl/wt;

    invoke-virtual {p0, v0}, Lcom/yandex/mobile/ads/impl/wt;->a(Lcom/yandex/mobile/ads/impl/vt;)V

    return-void
.end method
