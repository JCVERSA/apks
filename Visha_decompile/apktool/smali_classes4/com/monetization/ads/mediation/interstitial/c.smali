.class public final Lcom/monetization/ads/mediation/interstitial/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/impl/cd0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/yandex/mobile/ads/impl/zd0<",
        "TT;>;>",
        "Ljava/lang/Object;",
        "Lcom/yandex/mobile/ads/impl/cd0<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/jd0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yandex/mobile/ads/impl/jd0<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final b:Lcom/yandex/mobile/ads/impl/rx0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yandex/mobile/ads/impl/rx0<",
            "Lcom/monetization/ads/mediation/interstitial/MediatedInterstitialAdapter;",
            "Lcom/monetization/ads/mediation/interstitial/MediatedInterstitialAdapter$MediatedInterstitialAdapterListener;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lcom/monetization/ads/mediation/interstitial/b;

.field private final d:Lcom/monetization/ads/mediation/interstitial/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/monetization/ads/mediation/interstitial/a<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final e:Lcom/yandex/mobile/ads/impl/gy0;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/jd0;Lcom/yandex/mobile/ads/impl/o8;Lcom/yandex/mobile/ads/impl/hz0;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yandex/mobile/ads/impl/jd0<",
            "TT;>;",
            "Lcom/yandex/mobile/ads/impl/o8<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/yandex/mobile/ads/impl/hz0;",
            ")V"
        }
    .end annotation

    const-string v0, "loadController"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adResponse"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mediationData"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/monetization/ads/mediation/interstitial/c;->a:Lcom/yandex/mobile/ads/impl/jd0;

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/ck;->f()Lcom/yandex/mobile/ads/impl/o3;

    move-result-object v2

    new-instance v0, Lcom/yandex/mobile/ads/impl/ly0;

    invoke-direct {v0, v2}, Lcom/yandex/mobile/ads/impl/ly0;-><init>(Lcom/yandex/mobile/ads/impl/o3;)V

    new-instance v5, Lcom/yandex/mobile/ads/impl/gy0;

    invoke-direct {v5, v2, p2}, Lcom/yandex/mobile/ads/impl/gy0;-><init>(Lcom/yandex/mobile/ads/impl/o3;Lcom/yandex/mobile/ads/impl/o8;)V

    iput-object v5, p0, Lcom/monetization/ads/mediation/interstitial/c;->e:Lcom/yandex/mobile/ads/impl/gy0;

    new-instance p2, Lcom/yandex/mobile/ads/impl/zx0;

    invoke-virtual {p3}, Lcom/yandex/mobile/ads/impl/hz0;->c()Ljava/util/List;

    move-result-object v1

    invoke-direct {p2, v1, v0, v5}, Lcom/yandex/mobile/ads/impl/zx0;-><init>(Ljava/util/List;Lcom/yandex/mobile/ads/impl/ly0;Lcom/yandex/mobile/ads/impl/gy0;)V

    new-instance v6, Lcom/yandex/mobile/ads/impl/py0;

    invoke-direct {v6, p2}, Lcom/yandex/mobile/ads/impl/py0;-><init>(Lcom/yandex/mobile/ads/impl/zx0;)V

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/ck;->i()Lcom/yandex/mobile/ads/impl/g5;

    move-result-object v3

    new-instance v7, Lcom/yandex/mobile/ads/impl/ig1;

    invoke-direct {v7, p1, p3, v3}, Lcom/yandex/mobile/ads/impl/ig1;-><init>(Lcom/yandex/mobile/ads/impl/ck;Lcom/yandex/mobile/ads/impl/hz0;Lcom/yandex/mobile/ads/impl/g5;)V

    new-instance v4, Lcom/monetization/ads/mediation/interstitial/b;

    invoke-direct {v4}, Lcom/monetization/ads/mediation/interstitial/b;-><init>()V

    iput-object v4, p0, Lcom/monetization/ads/mediation/interstitial/c;->c:Lcom/monetization/ads/mediation/interstitial/b;

    new-instance p2, Lcom/yandex/mobile/ads/impl/rx0;

    move-object v1, p2

    invoke-direct/range {v1 .. v7}, Lcom/yandex/mobile/ads/impl/rx0;-><init>(Lcom/yandex/mobile/ads/impl/o3;Lcom/yandex/mobile/ads/impl/g5;Lcom/yandex/mobile/ads/impl/yx0;Lcom/yandex/mobile/ads/impl/gy0;Lcom/yandex/mobile/ads/impl/sx0;Lcom/yandex/mobile/ads/impl/ig1;)V

    iput-object p2, p0, Lcom/monetization/ads/mediation/interstitial/c;->b:Lcom/yandex/mobile/ads/impl/rx0;

    new-instance p3, Lcom/monetization/ads/mediation/interstitial/a;

    invoke-direct {p3, p1, p2}, Lcom/monetization/ads/mediation/interstitial/a;-><init>(Lcom/yandex/mobile/ads/impl/jd0;Lcom/yandex/mobile/ads/impl/rx0;)V

    iput-object p3, p0, Lcom/monetization/ads/mediation/interstitial/c;->d:Lcom/monetization/ads/mediation/interstitial/a;

    return-void
.end method


# virtual methods
.method public final a(Lcom/yandex/mobile/ads/impl/zd0;Landroid/app/Activity;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Landroid/app/Activity;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 3
    const-string v0, "contentController"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "activity"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$a;

    .line 5
    iget-object v0, p0, Lcom/monetization/ads/mediation/interstitial/c;->c:Lcom/monetization/ads/mediation/interstitial/b;

    invoke-virtual {v0}, Lcom/monetization/ads/mediation/interstitial/b;->a()Lcom/monetization/ads/mediation/interstitial/MediatedInterstitialAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 6
    iget-object v1, p0, Lcom/monetization/ads/mediation/interstitial/c;->d:Lcom/monetization/ads/mediation/interstitial/a;

    invoke-virtual {v1, p1}, Lcom/monetization/ads/mediation/interstitial/a;->a(Lcom/yandex/mobile/ads/impl/zd0;)V

    .line 7
    iget-object p1, p0, Lcom/monetization/ads/mediation/interstitial/c;->a:Lcom/yandex/mobile/ads/impl/jd0;

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/ck;->j()Lcom/yandex/mobile/ads/impl/l7;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/l7;->c()V

    .line 8
    invoke-virtual {v0, p2}, Lcom/monetization/ads/mediation/interstitial/MediatedInterstitialAdapter;->showInterstitial(Landroid/app/Activity;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 9
    :cond_0
    :goto_0
    sget-object p1, Lzfb;->a:Lzfb;

    .line 10
    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$a;

    invoke-static {p1}, Lkotlin/c;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 11
    :goto_2
    invoke-static {p1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 12
    iget-object v1, p0, Lcom/monetization/ads/mediation/interstitial/c;->b:Lcom/yandex/mobile/ads/impl/rx0;

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/rx0;->a()Lcom/yandex/mobile/ads/impl/qx0;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 13
    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    const-string v2, "getApplicationContext(...)"

    invoke-static {p2, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 14
    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v2}, Lcom/yandex/mobile/ads/impl/sp0;->c([Ljava/lang/Object;)V

    .line 15
    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "exception_in_adapter"

    invoke-static {v2, v0}, Labb;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    invoke-static {v0}, Lky5;->h(Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v0

    .line 16
    const-string v2, "reason"

    invoke-static {v2, v0}, Labb;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    invoke-static {v0}, Lky5;->h(Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v0

    .line 17
    iget-object p0, p0, Lcom/monetization/ads/mediation/interstitial/c;->e:Lcom/yandex/mobile/ads/impl/gy0;

    .line 18
    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/qx0;->c()Lcom/yandex/mobile/ads/impl/lz0;

    move-result-object v2

    .line 19
    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/qx0;->a()Lcom/yandex/mobile/ads/impl/tx0;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/tx0;->b()Lcom/monetization/ads/mediation/base/MediatedAdapterInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/monetization/ads/mediation/base/MediatedAdapterInfo;->getNetworkName()Ljava/lang/String;

    move-result-object v1

    .line 20
    invoke-virtual {p0, p2, v2, v0, v1}, Lcom/yandex/mobile/ads/impl/gy0;->a(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/lz0;Ljava/util/Map;Ljava/lang/String;)V

    :cond_1
    return-object p1
.end method

.method public final a(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    iget-object v0, p0, Lcom/monetization/ads/mediation/interstitial/c;->a:Lcom/yandex/mobile/ads/impl/jd0;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/ck;->j()Lcom/yandex/mobile/ads/impl/l7;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/l7;->d()V

    .line 22
    iget-object p0, p0, Lcom/monetization/ads/mediation/interstitial/c;->b:Lcom/yandex/mobile/ads/impl/rx0;

    invoke-virtual {p0, p1}, Lcom/yandex/mobile/ads/impl/rx0;->a(Landroid/content/Context;)V

    return-void
.end method

.method public final a(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/o8;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/yandex/mobile/ads/impl/o8<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adResponse"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object p2, p0, Lcom/monetization/ads/mediation/interstitial/c;->b:Lcom/yandex/mobile/ads/impl/rx0;

    iget-object p0, p0, Lcom/monetization/ads/mediation/interstitial/c;->d:Lcom/monetization/ads/mediation/interstitial/a;

    invoke-virtual {p2, p1, p0}, Lcom/yandex/mobile/ads/impl/rx0;->a(Landroid/content/Context;Ljava/lang/Object;)V

    return-void
.end method

.method public final getAdInfo()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method
