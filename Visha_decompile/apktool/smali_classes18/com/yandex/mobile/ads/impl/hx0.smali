.class public abstract Lcom/yandex/mobile/ads/impl/hx0;
.super Lcom/yandex/mobile/ads/impl/vg2;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/mobile/ads/impl/hx0$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yandex/mobile/ads/impl/vg2<",
        "Lcom/monetization/ads/nativeads/CustomizableMediaView;",
        "Lcom/yandex/mobile/ads/impl/ex0;",
        ">;"
    }
.end annotation


# instance fields
.field private final c:Lcom/yandex/mobile/ads/impl/ox0;


# direct methods
.method public constructor <init>(Lcom/monetization/ads/nativeads/CustomizableMediaView;Lcom/yandex/mobile/ads/impl/ox0;)V
    .locals 1

    const-string v0, "mediaView"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mediaViewRenderController"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/yandex/mobile/ads/impl/vg2;-><init>(Landroid/view/View;)V

    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/hx0;->c:Lcom/yandex/mobile/ads/impl/ox0;

    return-void
.end method


# virtual methods
.method public abstract a(Lcom/monetization/ads/nativeads/CustomizableMediaView;)V
.end method

.method public a(Lcom/monetization/ads/nativeads/CustomizableMediaView;Lcom/yandex/mobile/ads/impl/ex0;)V
    .locals 1

    .line 1
    const-string v0, "mediaView"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object p2, p0, Lcom/yandex/mobile/ads/impl/hx0;->c:Lcom/yandex/mobile/ads/impl/ox0;

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/hx0;->d()Lcom/yandex/mobile/ads/impl/hx0$a;

    move-result-object p0

    invoke-virtual {p2, p1, p0}, Lcom/yandex/mobile/ads/impl/ox0;->a(Lcom/monetization/ads/nativeads/CustomizableMediaView;Lcom/yandex/mobile/ads/impl/hx0$a;)V

    return-void
.end method

.method public abstract a(Lcom/yandex/mobile/ads/impl/ex0;)V
.end method

.method public bridge synthetic b(Landroid/view/View;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/monetization/ads/nativeads/CustomizableMediaView;

    check-cast p2, Lcom/yandex/mobile/ads/impl/ex0;

    invoke-virtual {p0, p1, p2}, Lcom/yandex/mobile/ads/impl/hx0;->a(Lcom/monetization/ads/nativeads/CustomizableMediaView;Lcom/yandex/mobile/ads/impl/ex0;)V

    return-void
.end method

.method public abstract d()Lcom/yandex/mobile/ads/impl/hx0$a;
.end method
