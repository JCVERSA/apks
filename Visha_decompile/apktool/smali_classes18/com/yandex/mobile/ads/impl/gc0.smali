.class public final Lcom/yandex/mobile/ads/impl/gc0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/impl/hc0;


# static fields
.field static final synthetic b:[Laf5;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Laf5;"
        }
    .end annotation
.end field


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/go1;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-string v1, "getForceImpressionTrackingListenerReference()Lcom/monetization/ads/base/impression/ForceImpressionTrackingListener;"

    const/4 v2, 0x0

    const-class v3, Lcom/yandex/mobile/ads/impl/gc0;

    const-string v4, "forceImpressionTrackingListenerReference"

    invoke-direct {v0, v3, v4, v1, v2}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v0}, Lxq8;->f(Lkotlin/jvm/internal/MutablePropertyReference1;)Lxe5;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Laf5;

    aput-object v0, v1, v2

    sput-object v1, Lcom/yandex/mobile/ads/impl/gc0;->b:[Laf5;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/yandex/mobile/ads/impl/ho1;->a()Lcom/yandex/mobile/ads/impl/go1;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/mobile/ads/impl/gc0;->a:Lcom/yandex/mobile/ads/impl/go1;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/gc0;->a:Lcom/yandex/mobile/ads/impl/go1;

    sget-object v1, Lcom/yandex/mobile/ads/impl/gc0;->b:[Laf5;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lcom/yandex/mobile/ads/impl/go1;->getValue(Ljava/lang/Object;Laf5;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/yandex/mobile/ads/impl/hc0;

    if-eqz p0, :cond_0

    .line 2
    invoke-interface {p0}, Lcom/yandex/mobile/ads/impl/hc0;->a()V

    :cond_0
    return-void
.end method

.method public final a(Lcom/yandex/mobile/ads/impl/hc0;)V
    .locals 3

    .line 3
    const-string v0, "trackingListener"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/gc0;->a:Lcom/yandex/mobile/ads/impl/go1;

    sget-object v1, Lcom/yandex/mobile/ads/impl/gc0;->b:[Laf5;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1, p1}, Lcom/yandex/mobile/ads/impl/go1;->setValue(Ljava/lang/Object;Laf5;Ljava/lang/Object;)V

    return-void
.end method
