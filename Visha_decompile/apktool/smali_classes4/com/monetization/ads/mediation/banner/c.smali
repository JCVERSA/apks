.class public final Lcom/monetization/ads/mediation/banner/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/impl/ej;


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/aj;

.field private final b:Lcom/yandex/mobile/ads/impl/o8;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yandex/mobile/ads/impl/o8<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lcom/monetization/ads/mediation/banner/a;

.field private final d:Lcom/yandex/mobile/ads/impl/rx0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yandex/mobile/ads/impl/rx0<",
            "Lcom/monetization/ads/mediation/banner/MediatedBannerAdapter;",
            "Lcom/monetization/ads/mediation/banner/MediatedBannerAdapter$MediatedBannerAdapterListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/aj;Lcom/yandex/mobile/ads/impl/o8;Lcom/yandex/mobile/ads/impl/hz0;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yandex/mobile/ads/impl/aj;",
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

    iput-object p1, p0, Lcom/monetization/ads/mediation/banner/c;->a:Lcom/yandex/mobile/ads/impl/aj;

    iput-object p2, p0, Lcom/monetization/ads/mediation/banner/c;->b:Lcom/yandex/mobile/ads/impl/o8;

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/ck;->f()Lcom/yandex/mobile/ads/impl/o3;

    move-result-object v2

    new-instance v0, Lcom/yandex/mobile/ads/impl/ky0;

    invoke-direct {v0, v2}, Lcom/yandex/mobile/ads/impl/ky0;-><init>(Lcom/yandex/mobile/ads/impl/o3;)V

    new-instance v5, Lcom/yandex/mobile/ads/impl/gy0;

    invoke-direct {v5, v2, p2}, Lcom/yandex/mobile/ads/impl/gy0;-><init>(Lcom/yandex/mobile/ads/impl/o3;Lcom/yandex/mobile/ads/impl/o8;)V

    new-instance p2, Lcom/yandex/mobile/ads/impl/zx0;

    invoke-virtual {p3}, Lcom/yandex/mobile/ads/impl/hz0;->c()Ljava/util/List;

    move-result-object v1

    invoke-direct {p2, v1, v0, v5}, Lcom/yandex/mobile/ads/impl/zx0;-><init>(Ljava/util/List;Lcom/yandex/mobile/ads/impl/ly0;Lcom/yandex/mobile/ads/impl/gy0;)V

    new-instance v6, Lcom/yandex/mobile/ads/impl/iy0;

    invoke-direct {v6, p2}, Lcom/yandex/mobile/ads/impl/iy0;-><init>(Lcom/yandex/mobile/ads/impl/zx0;)V

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/ck;->i()Lcom/yandex/mobile/ads/impl/g5;

    move-result-object v3

    new-instance v7, Lcom/yandex/mobile/ads/impl/ig1;

    invoke-direct {v7, p1, p3, v3}, Lcom/yandex/mobile/ads/impl/ig1;-><init>(Lcom/yandex/mobile/ads/impl/ck;Lcom/yandex/mobile/ads/impl/hz0;Lcom/yandex/mobile/ads/impl/g5;)V

    new-instance p2, Lcom/yandex/mobile/ads/impl/rx0;

    new-instance v4, Lcom/monetization/ads/mediation/banner/b;

    invoke-direct {v4}, Lcom/monetization/ads/mediation/banner/b;-><init>()V

    move-object v1, p2

    invoke-direct/range {v1 .. v7}, Lcom/yandex/mobile/ads/impl/rx0;-><init>(Lcom/yandex/mobile/ads/impl/o3;Lcom/yandex/mobile/ads/impl/g5;Lcom/yandex/mobile/ads/impl/yx0;Lcom/yandex/mobile/ads/impl/gy0;Lcom/yandex/mobile/ads/impl/sx0;Lcom/yandex/mobile/ads/impl/ig1;)V

    iput-object p2, p0, Lcom/monetization/ads/mediation/banner/c;->d:Lcom/yandex/mobile/ads/impl/rx0;

    new-instance p3, Lcom/monetization/ads/mediation/banner/d;

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/aj;->C()Lcom/yandex/mobile/ads/impl/np0;

    move-result-object v0

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/ck;->f()Lcom/yandex/mobile/ads/impl/o3;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/o3;->r()Lcom/yandex/mobile/ads/impl/gz1;

    move-result-object v1

    invoke-direct {p3, v0, v1}, Lcom/monetization/ads/mediation/banner/d;-><init>(Lcom/yandex/mobile/ads/impl/np0;Lcom/yandex/mobile/ads/impl/gz1;)V

    new-instance v0, Lcom/monetization/ads/mediation/banner/a;

    invoke-direct {v0, p1, p2, p3}, Lcom/monetization/ads/mediation/banner/a;-><init>(Lcom/yandex/mobile/ads/impl/aj;Lcom/yandex/mobile/ads/impl/rx0;Lcom/monetization/ads/mediation/banner/d;)V

    iput-object v0, p0, Lcom/monetization/ads/mediation/banner/c;->c:Lcom/monetization/ads/mediation/banner/a;

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    iget-object v0, p0, Lcom/monetization/ads/mediation/banner/c;->a:Lcom/yandex/mobile/ads/impl/aj;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/ck;->j()Lcom/yandex/mobile/ads/impl/l7;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/l7;->d()V

    .line 6
    iget-object p0, p0, Lcom/monetization/ads/mediation/banner/c;->d:Lcom/yandex/mobile/ads/impl/rx0;

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
    invoke-static {}, Lcom/yandex/mobile/ads/impl/p0;->a()Landroid/app/Activity;

    move-result-object p2

    if-eqz p2, :cond_0

    const/4 v0, 0x0

    .line 3
    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v0}, Lcom/yandex/mobile/ads/impl/sp0;->a([Ljava/lang/Object;)V

    :cond_0
    if-eqz p2, :cond_1

    move-object p1, p2

    .line 4
    :cond_1
    iget-object p2, p0, Lcom/monetization/ads/mediation/banner/c;->d:Lcom/yandex/mobile/ads/impl/rx0;

    iget-object p0, p0, Lcom/monetization/ads/mediation/banner/c;->c:Lcom/monetization/ads/mediation/banner/a;

    invoke-virtual {p2, p1, p0}, Lcom/yandex/mobile/ads/impl/rx0;->a(Landroid/content/Context;Ljava/lang/Object;)V

    return-void
.end method

.method public final getAdInfo()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/monetization/ads/mediation/banner/c;->b:Lcom/yandex/mobile/ads/impl/o8;

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/o8;->e()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
