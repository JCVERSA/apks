.class public final Lcom/monetization/ads/mediation/interstitial/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/monetization/ads/mediation/interstitial/MediatedInterstitialAdapter$MediatedInterstitialAdapterListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/yandex/mobile/ads/impl/zd0<",
        "TT;>;>",
        "Ljava/lang/Object;",
        "Lcom/monetization/ads/mediation/interstitial/MediatedInterstitialAdapter$MediatedInterstitialAdapterListener;"
    }
.end annotation


# static fields
.field static final synthetic e:[Laf5;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Laf5;"
        }
    .end annotation
.end field


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/rx0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yandex/mobile/ads/impl/rx0<",
            "Lcom/monetization/ads/mediation/interstitial/MediatedInterstitialAdapter;",
            "Lcom/monetization/ads/mediation/interstitial/MediatedInterstitialAdapter$MediatedInterstitialAdapterListener;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lcom/yandex/mobile/ads/impl/ok0;

.field private final c:Lcom/yandex/mobile/ads/impl/go1;

.field private final d:Lcom/yandex/mobile/ads/impl/go1;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-class v1, Lcom/monetization/ads/mediation/interstitial/a;

    const-string v2, "contentController"

    const-string v3, "getContentController()Lcom/monetization/ads/fullscreen/FullscreenContentController;"

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v0}, Lxq8;->f(Lkotlin/jvm/internal/MutablePropertyReference1;)Lxe5;

    move-result-object v0

    const-string v2, "loadController"

    const-string v3, "getLoadController()Lcom/monetization/ads/fullscreen/FullScreenLoadController;"

    invoke-static {v1, v2, v3, v4}, Lcom/yandex/mobile/ads/impl/ta;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)Lcf5;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Laf5;

    aput-object v0, v2, v4

    const/4 v0, 0x1

    aput-object v1, v2, v0

    sput-object v2, Lcom/monetization/ads/mediation/interstitial/a;->e:[Laf5;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/yandex/mobile/ads/impl/jd0;Lcom/yandex/mobile/ads/impl/rx0;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/yandex/mobile/ads/impl/ok0;

    invoke-direct {v0, p2}, Lcom/yandex/mobile/ads/impl/ok0;-><init>(Lcom/yandex/mobile/ads/impl/rx0;)V

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/monetization/ads/mediation/interstitial/a;-><init>(Lcom/yandex/mobile/ads/impl/jd0;Lcom/yandex/mobile/ads/impl/rx0;Lcom/yandex/mobile/ads/impl/ok0;)V

    return-void
.end method

.method public constructor <init>(Lcom/yandex/mobile/ads/impl/jd0;Lcom/yandex/mobile/ads/impl/rx0;Lcom/yandex/mobile/ads/impl/ok0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yandex/mobile/ads/impl/jd0<",
            "TT;>;",
            "Lcom/yandex/mobile/ads/impl/rx0<",
            "Lcom/monetization/ads/mediation/interstitial/MediatedInterstitialAdapter;",
            "Lcom/monetization/ads/mediation/interstitial/MediatedInterstitialAdapter$MediatedInterstitialAdapterListener;",
            ">;",
            "Lcom/yandex/mobile/ads/impl/ok0;",
            ")V"
        }
    .end annotation

    .line 3
    const-string v0, "loadController"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mediatedAdController"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "impressionDataProvider"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-object p2, p0, Lcom/monetization/ads/mediation/interstitial/a;->a:Lcom/yandex/mobile/ads/impl/rx0;

    .line 6
    iput-object p3, p0, Lcom/monetization/ads/mediation/interstitial/a;->b:Lcom/yandex/mobile/ads/impl/ok0;

    const/4 p2, 0x0

    .line 7
    invoke-static {p2}, Lcom/yandex/mobile/ads/impl/ho1;->a(Ljava/lang/Object;)Lcom/yandex/mobile/ads/impl/go1;

    move-result-object p2

    iput-object p2, p0, Lcom/monetization/ads/mediation/interstitial/a;->c:Lcom/yandex/mobile/ads/impl/go1;

    .line 8
    invoke-static {p1}, Lcom/yandex/mobile/ads/impl/ho1;->a(Ljava/lang/Object;)Lcom/yandex/mobile/ads/impl/go1;

    move-result-object p1

    iput-object p1, p0, Lcom/monetization/ads/mediation/interstitial/a;->d:Lcom/yandex/mobile/ads/impl/go1;

    return-void
.end method

.method public static final a(Lcom/monetization/ads/mediation/interstitial/a;)V
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/monetization/ads/mediation/interstitial/a;->d:Lcom/yandex/mobile/ads/impl/go1;

    .line 3
    sget-object v1, Lcom/monetization/ads/mediation/interstitial/a;->e:[Laf5;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lcom/yandex/mobile/ads/impl/go1;->getValue(Ljava/lang/Object;Laf5;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yandex/mobile/ads/impl/jd0;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/ck;->l()Landroid/content/Context;

    move-result-object v1

    .line 5
    iget-object p0, p0, Lcom/monetization/ads/mediation/interstitial/a;->a:Lcom/yandex/mobile/ads/impl/rx0;

    .line 6
    invoke-static {}, Lkotlin/collections/a;->l()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/yandex/mobile/ads/impl/rx0;->c(Landroid/content/Context;Ljava/util/Map;)V

    .line 7
    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/ck;->u()V

    :cond_0
    return-void
.end method


# virtual methods
.method public final a(Lcom/yandex/mobile/ads/impl/zd0;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yandex/mobile/ads/impl/zd0<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/monetization/ads/mediation/interstitial/a;->c:Lcom/yandex/mobile/ads/impl/go1;

    sget-object v1, Lcom/monetization/ads/mediation/interstitial/a;->e:[Laf5;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1, p1}, Lcom/yandex/mobile/ads/impl/go1;->setValue(Ljava/lang/Object;Laf5;Ljava/lang/Object;)V

    return-void
.end method

.method public final onAdImpression()V
    .locals 4

    iget-object v0, p0, Lcom/monetization/ads/mediation/interstitial/a;->a:Lcom/yandex/mobile/ads/impl/rx0;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/rx0;->b()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/monetization/ads/mediation/interstitial/a;->c:Lcom/yandex/mobile/ads/impl/go1;

    sget-object v1, Lcom/monetization/ads/mediation/interstitial/a;->e:[Laf5;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lcom/yandex/mobile/ads/impl/go1;->getValue(Ljava/lang/Object;Laf5;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yandex/mobile/ads/impl/zd0;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/zj;->e()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/monetization/ads/mediation/interstitial/a;->a:Lcom/yandex/mobile/ads/impl/rx0;

    invoke-static {}, Lkotlin/collections/a;->l()Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lcom/yandex/mobile/ads/impl/rx0;->b(Landroid/content/Context;Ljava/util/Map;)V

    iget-object p0, p0, Lcom/monetization/ads/mediation/interstitial/a;->b:Lcom/yandex/mobile/ads/impl/ok0;

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/ok0;->a()Lcom/yandex/mobile/ads/impl/t4;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/yandex/mobile/ads/impl/zd0;->a(Lcom/yandex/mobile/ads/impl/t4;)V

    :cond_0
    return-void
.end method

.method public final onInterstitialClicked()V
    .locals 4

    iget-object v0, p0, Lcom/monetization/ads/mediation/interstitial/a;->c:Lcom/yandex/mobile/ads/impl/go1;

    sget-object v1, Lcom/monetization/ads/mediation/interstitial/a;->e:[Laf5;

    const/4 v2, 0x0

    aget-object v2, v1, v2

    invoke-virtual {v0, p0, v2}, Lcom/yandex/mobile/ads/impl/go1;->getValue(Ljava/lang/Object;Laf5;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yandex/mobile/ads/impl/zd0;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/zj;->e()Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/monetization/ads/mediation/interstitial/a;->d:Lcom/yandex/mobile/ads/impl/go1;

    const/4 v3, 0x1

    aget-object v1, v1, v3

    invoke-virtual {v2, p0, v1}, Lcom/yandex/mobile/ads/impl/go1;->getValue(Ljava/lang/Object;Laf5;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yandex/mobile/ads/impl/jd0;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/ck;->j()Lcom/yandex/mobile/ads/impl/l7;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/l7;->a()V

    :cond_0
    iget-object p0, p0, Lcom/monetization/ads/mediation/interstitial/a;->a:Lcom/yandex/mobile/ads/impl/rx0;

    invoke-static {}, Lkotlin/collections/a;->l()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/yandex/mobile/ads/impl/rx0;->a(Landroid/content/Context;Ljava/util/Map;)V

    :cond_1
    return-void
.end method

.method public final onInterstitialDismissed()V
    .locals 3

    iget-object v0, p0, Lcom/monetization/ads/mediation/interstitial/a;->c:Lcom/yandex/mobile/ads/impl/go1;

    sget-object v1, Lcom/monetization/ads/mediation/interstitial/a;->e:[Laf5;

    const/4 v2, 0x0

    aget-object v2, v1, v2

    invoke-virtual {v0, p0, v2}, Lcom/yandex/mobile/ads/impl/go1;->getValue(Ljava/lang/Object;Laf5;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yandex/mobile/ads/impl/zd0;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/zd0;->p()V

    :cond_0
    iget-object v0, p0, Lcom/monetization/ads/mediation/interstitial/a;->d:Lcom/yandex/mobile/ads/impl/go1;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lcom/yandex/mobile/ads/impl/go1;->getValue(Ljava/lang/Object;Laf5;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/yandex/mobile/ads/impl/jd0;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/ck;->j()Lcom/yandex/mobile/ads/impl/l7;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/l7;->b()V

    :cond_1
    return-void
.end method

.method public final onInterstitialFailedToLoad(Lcom/monetization/ads/mediation/base/MediatedAdRequestError;)V
    .locals 5

    const-string v0, "adRequestError"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/monetization/ads/mediation/interstitial/a;->d:Lcom/yandex/mobile/ads/impl/go1;

    sget-object v1, Lcom/monetization/ads/mediation/interstitial/a;->e:[Laf5;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lcom/yandex/mobile/ads/impl/go1;->getValue(Ljava/lang/Object;Laf5;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yandex/mobile/ads/impl/jd0;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/ck;->l()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/yandex/mobile/ads/impl/w3;

    invoke-virtual {p1}, Lcom/monetization/ads/mediation/base/MediatedAdRequestError;->getCode()I

    move-result v2

    invoke-virtual {p1}, Lcom/monetization/ads/mediation/base/MediatedAdRequestError;->getDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/monetization/ads/mediation/base/MediatedAdRequestError;->getDescription()Ljava/lang/String;

    move-result-object p1

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, p1, v4}, Lcom/yandex/mobile/ads/impl/w3;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/monetization/ads/mediation/interstitial/a;->a:Lcom/yandex/mobile/ads/impl/rx0;

    invoke-virtual {p1, v0, v1, p0}, Lcom/yandex/mobile/ads/impl/rx0;->b(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/w3;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final onInterstitialLeftApplication()V
    .locals 3

    iget-object v0, p0, Lcom/monetization/ads/mediation/interstitial/a;->c:Lcom/yandex/mobile/ads/impl/go1;

    sget-object v1, Lcom/monetization/ads/mediation/interstitial/a;->e:[Laf5;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lcom/yandex/mobile/ads/impl/go1;->getValue(Ljava/lang/Object;Laf5;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/yandex/mobile/ads/impl/zd0;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/zd0;->onLeftApplication()V

    :cond_0
    return-void
.end method

.method public final onInterstitialLoaded()V
    .locals 5

    iget-object v0, p0, Lcom/monetization/ads/mediation/interstitial/a;->d:Lcom/yandex/mobile/ads/impl/go1;

    sget-object v1, Lcom/monetization/ads/mediation/interstitial/a;->e:[Laf5;

    const/4 v2, 0x1

    aget-object v3, v1, v2

    invoke-virtual {v0, p0, v3}, Lcom/yandex/mobile/ads/impl/go1;->getValue(Ljava/lang/Object;Laf5;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yandex/mobile/ads/impl/jd0;

    if-eqz v0, :cond_2

    iget-object v3, p0, Lcom/monetization/ads/mediation/interstitial/a;->a:Lcom/yandex/mobile/ads/impl/rx0;

    invoke-virtual {v3}, Lcom/yandex/mobile/ads/impl/rx0;->a()Lcom/yandex/mobile/ads/impl/qx0;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/yandex/mobile/ads/impl/qx0;->a()Lcom/yandex/mobile/ads/impl/tx0;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/yandex/mobile/ads/impl/tx0;->a()Lcom/monetization/ads/mediation/base/model/MediatedAdObject;

    move-result-object v3

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lcom/monetization/ads/mediation/base/model/MediatedAdObject;->getAd()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v3}, Lcom/monetization/ads/mediation/base/model/MediatedAdObject;->getInfo()Lcom/monetization/ads/mediation/base/model/MediatedAdObjectInfo;

    move-result-object v2

    new-instance v3, Lcom/monetization/ads/mediation/interstitial/a$a;

    invoke-direct {v3, p0}, Lcom/monetization/ads/mediation/interstitial/a$a;-><init>(Lcom/monetization/ads/mediation/interstitial/a;)V

    new-instance v4, Lcom/monetization/ads/mediation/interstitial/a$b;

    invoke-direct {v4, p0}, Lcom/monetization/ads/mediation/interstitial/a$b;-><init>(Lcom/monetization/ads/mediation/interstitial/a;)V

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/yandex/mobile/ads/impl/ck;->a(Ljava/lang/Object;Lcom/monetization/ads/mediation/base/model/MediatedAdObjectInfo;Lc74;Le74;)V

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v0}, Lcom/yandex/mobile/ads/impl/sp0;->a([Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/monetization/ads/mediation/interstitial/a;->d:Lcom/yandex/mobile/ads/impl/go1;

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lcom/yandex/mobile/ads/impl/go1;->getValue(Ljava/lang/Object;Laf5;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yandex/mobile/ads/impl/jd0;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/ck;->l()Landroid/content/Context;

    move-result-object v1

    iget-object p0, p0, Lcom/monetization/ads/mediation/interstitial/a;->a:Lcom/yandex/mobile/ads/impl/rx0;

    invoke-static {}, Lkotlin/collections/a;->l()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/yandex/mobile/ads/impl/rx0;->c(Landroid/content/Context;Ljava/util/Map;)V

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/ck;->u()V

    :cond_2
    :goto_1
    return-void
.end method

.method public final onInterstitialShown()V
    .locals 4

    iget-object v0, p0, Lcom/monetization/ads/mediation/interstitial/a;->c:Lcom/yandex/mobile/ads/impl/go1;

    sget-object v1, Lcom/monetization/ads/mediation/interstitial/a;->e:[Laf5;

    const/4 v2, 0x0

    aget-object v3, v1, v2

    invoke-virtual {v0, p0, v3}, Lcom/yandex/mobile/ads/impl/go1;->getValue(Ljava/lang/Object;Laf5;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yandex/mobile/ads/impl/zd0;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/zd0;->q()V

    iget-object v3, p0, Lcom/monetization/ads/mediation/interstitial/a;->a:Lcom/yandex/mobile/ads/impl/rx0;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/zj;->e()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/yandex/mobile/ads/impl/rx0;->c(Landroid/content/Context;)V

    :cond_0
    iget-object v0, p0, Lcom/monetization/ads/mediation/interstitial/a;->a:Lcom/yandex/mobile/ads/impl/rx0;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/rx0;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/monetization/ads/mediation/interstitial/a;->c:Lcom/yandex/mobile/ads/impl/go1;

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lcom/yandex/mobile/ads/impl/go1;->getValue(Ljava/lang/Object;Laf5;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yandex/mobile/ads/impl/zd0;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/zj;->e()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/monetization/ads/mediation/interstitial/a;->a:Lcom/yandex/mobile/ads/impl/rx0;

    invoke-static {}, Lkotlin/collections/a;->l()Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lcom/yandex/mobile/ads/impl/rx0;->b(Landroid/content/Context;Ljava/util/Map;)V

    iget-object p0, p0, Lcom/monetization/ads/mediation/interstitial/a;->b:Lcom/yandex/mobile/ads/impl/ok0;

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/ok0;->a()Lcom/yandex/mobile/ads/impl/t4;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/yandex/mobile/ads/impl/zd0;->a(Lcom/yandex/mobile/ads/impl/t4;)V

    :cond_1
    return-void
.end method
