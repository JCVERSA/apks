.class public final Lcom/yandex/mobile/ads/impl/my0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/impl/dd0;


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/o8;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yandex/mobile/ads/impl/o8<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lcom/yandex/mobile/ads/impl/hz0;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/o8;Lcom/yandex/mobile/ads/impl/hz0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yandex/mobile/ads/impl/o8<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/yandex/mobile/ads/impl/hz0;",
            ")V"
        }
    .end annotation

    const-string v0, "adResponse"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mediationData"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/my0;->a:Lcom/yandex/mobile/ads/impl/o8;

    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/my0;->b:Lcom/yandex/mobile/ads/impl/hz0;

    return-void
.end method


# virtual methods
.method public final a(Lcom/yandex/mobile/ads/impl/jd0;)Lcom/yandex/mobile/ads/impl/cd0;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yandex/mobile/ads/impl/jd0<",
            "Lcom/yandex/mobile/ads/impl/up0;",
            ">;)",
            "Lcom/yandex/mobile/ads/impl/cd0<",
            "Lcom/yandex/mobile/ads/impl/up0;",
            ">;"
        }
    .end annotation

    const-string v0, "loadController"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/monetization/ads/mediation/interstitial/c;

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/my0;->a:Lcom/yandex/mobile/ads/impl/o8;

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/my0;->b:Lcom/yandex/mobile/ads/impl/hz0;

    invoke-direct {v0, p1, v1, p0}, Lcom/monetization/ads/mediation/interstitial/c;-><init>(Lcom/yandex/mobile/ads/impl/jd0;Lcom/yandex/mobile/ads/impl/o8;Lcom/yandex/mobile/ads/impl/hz0;)V

    return-object v0
.end method

.method public final b(Lcom/yandex/mobile/ads/impl/jd0;)Lcom/yandex/mobile/ads/impl/cd0;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yandex/mobile/ads/impl/jd0<",
            "Lcom/yandex/mobile/ads/impl/bs1;",
            ">;)",
            "Lcom/yandex/mobile/ads/impl/cd0<",
            "Lcom/yandex/mobile/ads/impl/bs1;",
            ">;"
        }
    .end annotation

    const-string v0, "loadController"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/yandex/mobile/ads/impl/zy0;

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/my0;->a:Lcom/yandex/mobile/ads/impl/o8;

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/my0;->b:Lcom/yandex/mobile/ads/impl/hz0;

    invoke-direct {v0, p1, v1, p0}, Lcom/yandex/mobile/ads/impl/zy0;-><init>(Lcom/yandex/mobile/ads/impl/jd0;Lcom/yandex/mobile/ads/impl/o8;Lcom/yandex/mobile/ads/impl/hz0;)V

    return-object v0
.end method

.method public final c(Lcom/yandex/mobile/ads/impl/jd0;)Lcom/yandex/mobile/ads/impl/cd0;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yandex/mobile/ads/impl/jd0<",
            "Lcom/yandex/mobile/ads/impl/uf;",
            ">;)",
            "Lcom/yandex/mobile/ads/impl/cd0<",
            "Lcom/yandex/mobile/ads/impl/uf;",
            ">;"
        }
    .end annotation

    const-string v0, "loadController"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/my0;->a:Lcom/yandex/mobile/ads/impl/o8;

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/my0;->b:Lcom/yandex/mobile/ads/impl/hz0;

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adResponse"

    invoke-static {v1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mediationData"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/ck;->f()Lcom/yandex/mobile/ads/impl/o3;

    move-result-object v3

    new-instance v0, Lcom/yandex/mobile/ads/impl/ly0;

    invoke-direct {v0, v3}, Lcom/yandex/mobile/ads/impl/ly0;-><init>(Lcom/yandex/mobile/ads/impl/o3;)V

    new-instance v10, Lcom/yandex/mobile/ads/impl/gy0;

    invoke-direct {v10, v3, v1}, Lcom/yandex/mobile/ads/impl/gy0;-><init>(Lcom/yandex/mobile/ads/impl/o3;Lcom/yandex/mobile/ads/impl/o8;)V

    new-instance v1, Lcom/yandex/mobile/ads/impl/zx0;

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/hz0;->c()Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2, v0, v10}, Lcom/yandex/mobile/ads/impl/zx0;-><init>(Ljava/util/List;Lcom/yandex/mobile/ads/impl/ly0;Lcom/yandex/mobile/ads/impl/gy0;)V

    new-instance v7, Lcom/yandex/mobile/ads/impl/hy0;

    invoke-direct {v7, v1}, Lcom/yandex/mobile/ads/impl/hy0;-><init>(Lcom/yandex/mobile/ads/impl/zx0;)V

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/ck;->i()Lcom/yandex/mobile/ads/impl/g5;

    move-result-object v4

    new-instance v8, Lcom/yandex/mobile/ads/impl/ig1;

    new-instance v0, Lcom/yandex/mobile/ads/impl/wa;

    invoke-direct {v0}, Lcom/yandex/mobile/ads/impl/wa;-><init>()V

    invoke-direct {v8, p1, p0, v4, v0}, Lcom/yandex/mobile/ads/impl/ig1;-><init>(Lcom/yandex/mobile/ads/impl/ck;Lcom/yandex/mobile/ads/impl/hz0;Lcom/yandex/mobile/ads/impl/g5;Lcom/yandex/mobile/ads/impl/wa;)V

    new-instance p0, Lcom/monetization/ads/mediation/appopenad/c;

    invoke-direct {p0}, Lcom/monetization/ads/mediation/appopenad/c;-><init>()V

    new-instance v0, Lcom/yandex/mobile/ads/impl/rx0;

    new-instance v9, Lcom/yandex/mobile/ads/impl/dy0;

    invoke-direct {v9}, Lcom/yandex/mobile/ads/impl/dy0;-><init>()V

    move-object v2, v0

    move-object v5, p0

    move-object v6, v10

    invoke-direct/range {v2 .. v9}, Lcom/yandex/mobile/ads/impl/rx0;-><init>(Lcom/yandex/mobile/ads/impl/o3;Lcom/yandex/mobile/ads/impl/g5;Lcom/yandex/mobile/ads/impl/yx0;Lcom/yandex/mobile/ads/impl/gy0;Lcom/yandex/mobile/ads/impl/sx0;Lcom/yandex/mobile/ads/impl/ig1;Lcom/yandex/mobile/ads/impl/dy0;)V

    new-instance v1, Lcom/monetization/ads/mediation/appopenad/a;

    invoke-direct {v1, p1, v0}, Lcom/monetization/ads/mediation/appopenad/a;-><init>(Lcom/yandex/mobile/ads/impl/jd0;Lcom/yandex/mobile/ads/impl/rx0;)V

    new-instance p1, Lcom/monetization/ads/mediation/appopenad/b;

    invoke-direct {p1, v0, p0, v1, v10}, Lcom/monetization/ads/mediation/appopenad/b;-><init>(Lcom/yandex/mobile/ads/impl/rx0;Lcom/monetization/ads/mediation/appopenad/c;Lcom/monetization/ads/mediation/appopenad/a;Lcom/yandex/mobile/ads/impl/gy0;)V

    return-object p1
.end method
