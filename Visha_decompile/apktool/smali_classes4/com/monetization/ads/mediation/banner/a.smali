.class public final Lcom/monetization/ads/mediation/banner/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/monetization/ads/mediation/banner/MediatedBannerAdapter$MediatedBannerAdapterListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/monetization/ads/mediation/banner/a$a;
    }
.end annotation


# static fields
.field static final synthetic f:[Laf5;
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
            "Lcom/monetization/ads/mediation/banner/MediatedBannerAdapter;",
            "Lcom/monetization/ads/mediation/banner/MediatedBannerAdapter$MediatedBannerAdapterListener;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lcom/monetization/ads/mediation/banner/d;

.field private final c:Lcom/yandex/mobile/ads/impl/ok0;

.field private final d:Lcom/yandex/mobile/ads/impl/go1;

.field private e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string v0, "getLoadController()Lcom/monetization/ads/banner/BannerAdLoadController;"

    const/4 v1, 0x0

    const-class v2, Lcom/monetization/ads/mediation/banner/a;

    const-string v3, "loadController"

    invoke-static {v2, v3, v0, v1}, Lcom/yandex/mobile/ads/impl/ta;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)Lcf5;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Laf5;

    aput-object v0, v2, v1

    sput-object v2, Lcom/monetization/ads/mediation/banner/a;->f:[Laf5;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/yandex/mobile/ads/impl/aj;Lcom/yandex/mobile/ads/impl/rx0;Lcom/monetization/ads/mediation/banner/d;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/yandex/mobile/ads/impl/ok0;

    invoke-direct {v0, p2}, Lcom/yandex/mobile/ads/impl/ok0;-><init>(Lcom/yandex/mobile/ads/impl/rx0;)V

    .line 2
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/monetization/ads/mediation/banner/a;-><init>(Lcom/yandex/mobile/ads/impl/aj;Lcom/yandex/mobile/ads/impl/rx0;Lcom/monetization/ads/mediation/banner/d;Lcom/yandex/mobile/ads/impl/ok0;)V

    return-void
.end method

.method public constructor <init>(Lcom/yandex/mobile/ads/impl/aj;Lcom/yandex/mobile/ads/impl/rx0;Lcom/monetization/ads/mediation/banner/d;Lcom/yandex/mobile/ads/impl/ok0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yandex/mobile/ads/impl/aj;",
            "Lcom/yandex/mobile/ads/impl/rx0<",
            "Lcom/monetization/ads/mediation/banner/MediatedBannerAdapter;",
            "Lcom/monetization/ads/mediation/banner/MediatedBannerAdapter$MediatedBannerAdapterListener;",
            ">;",
            "Lcom/monetization/ads/mediation/banner/d;",
            "Lcom/yandex/mobile/ads/impl/ok0;",
            ")V"
        }
    .end annotation

    .line 3
    const-string v0, "loadController"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mediatedAdController"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mediatedContentViewPublisher"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "impressionDataProvider"

    invoke-static {p4, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-object p2, p0, Lcom/monetization/ads/mediation/banner/a;->a:Lcom/yandex/mobile/ads/impl/rx0;

    .line 6
    iput-object p3, p0, Lcom/monetization/ads/mediation/banner/a;->b:Lcom/monetization/ads/mediation/banner/d;

    .line 7
    iput-object p4, p0, Lcom/monetization/ads/mediation/banner/a;->c:Lcom/yandex/mobile/ads/impl/ok0;

    .line 8
    invoke-static {p1}, Lcom/yandex/mobile/ads/impl/ho1;->a(Ljava/lang/Object;)Lcom/yandex/mobile/ads/impl/go1;

    move-result-object p1

    iput-object p1, p0, Lcom/monetization/ads/mediation/banner/a;->d:Lcom/yandex/mobile/ads/impl/go1;

    return-void
.end method

.method private final a()Lcom/yandex/mobile/ads/impl/aj;
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/monetization/ads/mediation/banner/a;->d:Lcom/yandex/mobile/ads/impl/go1;

    sget-object v1, Lcom/monetization/ads/mediation/banner/a;->f:[Laf5;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lcom/yandex/mobile/ads/impl/go1;->getValue(Ljava/lang/Object;Laf5;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/yandex/mobile/ads/impl/aj;

    return-object p0
.end method

.method public static final synthetic a(Lcom/monetization/ads/mediation/banner/a;)Lcom/yandex/mobile/ads/impl/aj;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/monetization/ads/mediation/banner/a;->a()Lcom/yandex/mobile/ads/impl/aj;

    move-result-object p0

    return-object p0
.end method

.method private final a(Landroid/view/View;)V
    .locals 4

    .line 4
    invoke-direct {p0}, Lcom/monetization/ads/mediation/banner/a;->a()Lcom/yandex/mobile/ads/impl/aj;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "getContext(...)"

    invoke-static {v1, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    iget-boolean v2, p0, Lcom/monetization/ads/mediation/banner/a;->e:Z

    if-nez v2, :cond_0

    const/4 v2, 0x1

    .line 7
    iput-boolean v2, p0, Lcom/monetization/ads/mediation/banner/a;->e:Z

    .line 8
    iget-object v2, p0, Lcom/monetization/ads/mediation/banner/a;->a:Lcom/yandex/mobile/ads/impl/rx0;

    .line 9
    invoke-static {}, Lkotlin/collections/a;->l()Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lcom/yandex/mobile/ads/impl/rx0;->c(Landroid/content/Context;Ljava/util/Map;)V

    goto :goto_0

    .line 10
    :cond_0
    iget-object v2, p0, Lcom/monetization/ads/mediation/banner/a;->a:Lcom/yandex/mobile/ads/impl/rx0;

    invoke-virtual {v2, v1}, Lcom/yandex/mobile/ads/impl/rx0;->b(Landroid/content/Context;)V

    .line 11
    :goto_0
    new-instance v1, Lcom/monetization/ads/mediation/banner/a$a;

    invoke-direct {v1, p0}, Lcom/monetization/ads/mediation/banner/a$a;-><init>(Lcom/monetization/ads/mediation/banner/a;)V

    .line 12
    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/ck;->j()Lcom/yandex/mobile/ads/impl/l7;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yandex/mobile/ads/impl/l7;->c()V

    .line 13
    iget-object p0, p0, Lcom/monetization/ads/mediation/banner/a;->b:Lcom/monetization/ads/mediation/banner/d;

    invoke-virtual {p0, p1, v1}, Lcom/monetization/ads/mediation/banner/d;->a(Landroid/view/View;Lcom/monetization/ads/mediation/banner/d$a;)V

    .line 14
    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/aj;->u()V

    :cond_1
    return-void
.end method

.method public static final synthetic a(Lcom/monetization/ads/mediation/banner/a;Landroid/view/View;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lcom/monetization/ads/mediation/banner/a;->a(Landroid/view/View;)V

    return-void
.end method

.method public static final synthetic b(Lcom/monetization/ads/mediation/banner/a;)Lcom/yandex/mobile/ads/impl/rx0;
    .locals 0

    iget-object p0, p0, Lcom/monetization/ads/mediation/banner/a;->a:Lcom/yandex/mobile/ads/impl/rx0;

    return-object p0
.end method

.method public static final c(Lcom/monetization/ads/mediation/banner/a;)V
    .locals 4

    invoke-direct {p0}, Lcom/monetization/ads/mediation/banner/a;->a()Lcom/yandex/mobile/ads/impl/aj;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/ck;->l()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/monetization/ads/mediation/banner/a;->a:Lcom/yandex/mobile/ads/impl/rx0;

    invoke-static {}, Lkotlin/collections/a;->l()Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lcom/yandex/mobile/ads/impl/rx0;->b(Landroid/content/Context;Ljava/util/Map;)V

    iget-object p0, p0, Lcom/monetization/ads/mediation/banner/a;->c:Lcom/yandex/mobile/ads/impl/ok0;

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/ok0;->a()Lcom/yandex/mobile/ads/impl/t4;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/yandex/mobile/ads/impl/aj;->a(Lcom/yandex/mobile/ads/impl/t4;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final onAdClicked()V
    .locals 2

    invoke-direct {p0}, Lcom/monetization/ads/mediation/banner/a;->a()Lcom/yandex/mobile/ads/impl/aj;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/ck;->j()Lcom/yandex/mobile/ads/impl/l7;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/l7;->a()V

    iget-object p0, p0, Lcom/monetization/ads/mediation/banner/a;->a:Lcom/yandex/mobile/ads/impl/rx0;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/ck;->l()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lkotlin/collections/a;->l()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/yandex/mobile/ads/impl/rx0;->a(Landroid/content/Context;Ljava/util/Map;)V

    :cond_0
    return-void
.end method

.method public final onAdFailedToLoad(Lcom/monetization/ads/mediation/base/MediatedAdRequestError;)V
    .locals 5

    const-string v0, "adRequestError"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/monetization/ads/mediation/banner/a;->a()Lcom/yandex/mobile/ads/impl/aj;

    move-result-object v0

    if-eqz v0, :cond_1

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

    iget-boolean p1, p0, Lcom/monetization/ads/mediation/banner/a;->e:Z

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/monetization/ads/mediation/banner/a;->a:Lcom/yandex/mobile/ads/impl/rx0;

    invoke-virtual {p1, v0, v1, p0}, Lcom/yandex/mobile/ads/impl/rx0;->b(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/w3;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/monetization/ads/mediation/banner/a;->a:Lcom/yandex/mobile/ads/impl/rx0;

    invoke-virtual {p1, v0, v1, p0}, Lcom/yandex/mobile/ads/impl/rx0;->a(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/w3;Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final onAdImpression()V
    .locals 4

    iget-object v0, p0, Lcom/monetization/ads/mediation/banner/a;->a:Lcom/yandex/mobile/ads/impl/rx0;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/rx0;->b()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/monetization/ads/mediation/banner/a;->a()Lcom/yandex/mobile/ads/impl/aj;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/ck;->l()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/monetization/ads/mediation/banner/a;->a:Lcom/yandex/mobile/ads/impl/rx0;

    invoke-static {}, Lkotlin/collections/a;->l()Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lcom/yandex/mobile/ads/impl/rx0;->b(Landroid/content/Context;Ljava/util/Map;)V

    iget-object p0, p0, Lcom/monetization/ads/mediation/banner/a;->c:Lcom/yandex/mobile/ads/impl/ok0;

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/ok0;->a()Lcom/yandex/mobile/ads/impl/t4;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/yandex/mobile/ads/impl/aj;->a(Lcom/yandex/mobile/ads/impl/t4;)V

    :cond_0
    return-void
.end method

.method public final onAdLeftApplication()V
    .locals 0

    invoke-direct {p0}, Lcom/monetization/ads/mediation/banner/a;->a()Lcom/yandex/mobile/ads/impl/aj;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/aj;->onLeftApplication()V

    :cond_0
    return-void
.end method

.method public final onAdLoaded(Landroid/view/View;)V
    .locals 4

    const-string v0, "view"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/monetization/ads/mediation/banner/a;->a()Lcom/yandex/mobile/ads/impl/aj;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/monetization/ads/mediation/banner/a;->a:Lcom/yandex/mobile/ads/impl/rx0;

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/rx0;->a()Lcom/yandex/mobile/ads/impl/qx0;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/qx0;->a()Lcom/yandex/mobile/ads/impl/tx0;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/tx0;->a()Lcom/monetization/ads/mediation/base/model/MediatedAdObject;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/monetization/ads/mediation/base/model/MediatedAdObject;->getAd()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1}, Lcom/monetization/ads/mediation/base/model/MediatedAdObject;->getInfo()Lcom/monetization/ads/mediation/base/model/MediatedAdObjectInfo;

    move-result-object v1

    new-instance v3, Lcom/monetization/ads/mediation/banner/a$b;

    invoke-direct {v3, p0, p1}, Lcom/monetization/ads/mediation/banner/a$b;-><init>(Lcom/monetization/ads/mediation/banner/a;Landroid/view/View;)V

    new-instance p1, Lcom/monetization/ads/mediation/banner/a$c;

    invoke-direct {p1, p0}, Lcom/monetization/ads/mediation/banner/a$c;-><init>(Lcom/monetization/ads/mediation/banner/a;)V

    invoke-virtual {v0, v2, v1, v3, p1}, Lcom/yandex/mobile/ads/impl/ck;->a(Ljava/lang/Object;Lcom/monetization/ads/mediation/base/model/MediatedAdObjectInfo;Lc74;Le74;)V

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v0}, Lcom/yandex/mobile/ads/impl/sp0;->a([Ljava/lang/Object;)V

    invoke-direct {p0, p1}, Lcom/monetization/ads/mediation/banner/a;->a(Landroid/view/View;)V

    :cond_2
    :goto_1
    return-void
.end method
