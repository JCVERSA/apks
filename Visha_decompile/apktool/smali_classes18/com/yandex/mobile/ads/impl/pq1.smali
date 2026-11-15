.class public final Lcom/yandex/mobile/ads/impl/pq1;
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
.field private final a:Lcom/yandex/mobile/ads/impl/j1;

.field private final b:I


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/j1;I)V
    .locals 1

    const-string v0, "adActivityListener"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/pq1;->a:Lcom/yandex/mobile/ads/impl/j1;

    iput p2, p0, Lcom/yandex/mobile/ads/impl/pq1;->b:I

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/ViewGroup;)V
    .locals 1

    check-cast p1, Lcom/monetization/ads/nativeads/ExtendedNativeAdView;

    const-string v0, "container"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget p1, p0, Lcom/yandex/mobile/ads/impl/pq1;->b:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/pq1;->a:Lcom/yandex/mobile/ads/impl/j1;

    const/4 p1, 0x7

    invoke-interface {p0, p1}, Lcom/yandex/mobile/ads/impl/j1;->a(I)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/pq1;->a:Lcom/yandex/mobile/ads/impl/j1;

    const/4 p1, 0x6

    invoke-interface {p0, p1}, Lcom/yandex/mobile/ads/impl/j1;->a(I)V

    :goto_0
    return-void
.end method

.method public final c()V
    .locals 0

    return-void
.end method
