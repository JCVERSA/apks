.class public final Lcom/monetization/ads/mediation/appopenad/b;
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
.field private final a:Lcom/yandex/mobile/ads/impl/rx0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yandex/mobile/ads/impl/rx0<",
            "Lcom/monetization/ads/mediation/appopenad/MediatedAppOpenAdAdapter;",
            "Lcom/monetization/ads/mediation/appopenad/MediatedAppOpenAdAdapter$MediatedAppOpenAdAdapterListener;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lcom/monetization/ads/mediation/appopenad/c;

.field private final c:Lcom/monetization/ads/mediation/appopenad/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/monetization/ads/mediation/appopenad/a<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final d:Lcom/yandex/mobile/ads/impl/gy0;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/rx0;Lcom/monetization/ads/mediation/appopenad/c;Lcom/monetization/ads/mediation/appopenad/a;Lcom/yandex/mobile/ads/impl/gy0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yandex/mobile/ads/impl/rx0<",
            "Lcom/monetization/ads/mediation/appopenad/MediatedAppOpenAdAdapter;",
            "Lcom/monetization/ads/mediation/appopenad/MediatedAppOpenAdAdapter$MediatedAppOpenAdAdapterListener;",
            ">;",
            "Lcom/monetization/ads/mediation/appopenad/c;",
            "Lcom/monetization/ads/mediation/appopenad/a<",
            "TT;>;",
            "Lcom/yandex/mobile/ads/impl/gy0;",
            ")V"
        }
    .end annotation

    const-string v0, "mediatedAdController"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mediatedAppOpenAdLoader"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mediatedAppOpenAdAdapterListener"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mediatedAdapterReporter"

    invoke-static {p4, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/monetization/ads/mediation/appopenad/b;->a:Lcom/yandex/mobile/ads/impl/rx0;

    iput-object p2, p0, Lcom/monetization/ads/mediation/appopenad/b;->b:Lcom/monetization/ads/mediation/appopenad/c;

    iput-object p3, p0, Lcom/monetization/ads/mediation/appopenad/b;->c:Lcom/monetization/ads/mediation/appopenad/a;

    iput-object p4, p0, Lcom/monetization/ads/mediation/appopenad/b;->d:Lcom/yandex/mobile/ads/impl/gy0;

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
    iget-object v0, p0, Lcom/monetization/ads/mediation/appopenad/b;->b:Lcom/monetization/ads/mediation/appopenad/c;

    invoke-virtual {v0}, Lcom/monetization/ads/mediation/appopenad/c;->a()Lcom/monetization/ads/mediation/appopenad/MediatedAppOpenAdAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 6
    iget-object v1, p0, Lcom/monetization/ads/mediation/appopenad/b;->c:Lcom/monetization/ads/mediation/appopenad/a;

    invoke-virtual {v1, p1}, Lcom/monetization/ads/mediation/appopenad/a;->a(Lcom/yandex/mobile/ads/impl/zd0;)V

    .line 7
    invoke-virtual {v0, p2}, Lcom/monetization/ads/mediation/appopenad/MediatedAppOpenAdAdapter;->showAppOpenAd(Landroid/app/Activity;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 8
    :cond_0
    :goto_0
    sget-object p1, Lzfb;->a:Lzfb;

    .line 9
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

    .line 10
    :goto_2
    invoke-static {p1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 11
    iget-object v1, p0, Lcom/monetization/ads/mediation/appopenad/b;->a:Lcom/yandex/mobile/ads/impl/rx0;

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/rx0;->a()Lcom/yandex/mobile/ads/impl/qx0;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 12
    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    const-string v2, "getApplicationContext(...)"

    invoke-static {p2, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 13
    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v2}, Lcom/yandex/mobile/ads/impl/sp0;->c([Ljava/lang/Object;)V

    .line 14
    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "exception_in_adapter"

    invoke-static {v2, v0}, Labb;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    invoke-static {v0}, Lky5;->h(Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v0

    .line 15
    const-string v2, "reason"

    invoke-static {v2, v0}, Labb;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    invoke-static {v0}, Lky5;->h(Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v0

    .line 16
    iget-object p0, p0, Lcom/monetization/ads/mediation/appopenad/b;->d:Lcom/yandex/mobile/ads/impl/gy0;

    .line 17
    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/qx0;->c()Lcom/yandex/mobile/ads/impl/lz0;

    move-result-object v2

    .line 18
    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/qx0;->a()Lcom/yandex/mobile/ads/impl/tx0;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/tx0;->b()Lcom/monetization/ads/mediation/base/MediatedAdapterInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/monetization/ads/mediation/base/MediatedAdapterInfo;->getNetworkName()Ljava/lang/String;

    move-result-object v1

    .line 19
    invoke-virtual {p0, p2, v2, v0, v1}, Lcom/yandex/mobile/ads/impl/gy0;->a(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/lz0;Ljava/util/Map;Ljava/lang/String;)V

    :cond_1
    return-object p1
.end method

.method public final a(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    iget-object p0, p0, Lcom/monetization/ads/mediation/appopenad/b;->a:Lcom/yandex/mobile/ads/impl/rx0;

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
    iget-object p2, p0, Lcom/monetization/ads/mediation/appopenad/b;->a:Lcom/yandex/mobile/ads/impl/rx0;

    iget-object p0, p0, Lcom/monetization/ads/mediation/appopenad/b;->c:Lcom/monetization/ads/mediation/appopenad/a;

    invoke-virtual {p2, p1, p0}, Lcom/yandex/mobile/ads/impl/rx0;->a(Landroid/content/Context;Ljava/lang/Object;)V

    return-void
.end method

.method public final getAdInfo()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method
