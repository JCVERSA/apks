.class Lcom/mgmi/ads/api/a/l$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mgmi/ads/api/a/e$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mgmi/ads/api/a/l;->f(Lcom/mgmi/ads/api/a/d;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mgmi/ads/api/a/l;


# direct methods
.method public constructor <init>(Lcom/mgmi/ads/api/a/l;)V
    .locals 0

    iput-object p1, p0, Lcom/mgmi/ads/api/a/l$1;->a:Lcom/mgmi/ads/api/a/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 3
    const-string v0, "BaseAdView_SuperBannerAdsloader"

    const-string v1, "requestAds banner fail"

    invoke-static {v0, v1}, Lcom/mgadplus/mgutil/SourceKitLogger;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    iget-object p0, p0, Lcom/mgmi/ads/api/a/l$1;->a:Lcom/mgmi/ads/api/a/l;

    const/4 v0, 0x1

    iput v0, p0, Lcom/mgmi/ads/api/a/e;->n:I

    const/4 v0, 0x0

    const v1, 0xaae62

    .line 5
    invoke-virtual {p0, v0, v1}, Lcom/mgmi/ads/api/a/l;->a(ZI)V

    return-void
.end method

.method public a(Lcom/mgmi/model/r;)V
    .locals 1

    .line 1
    :try_start_0
    iget-object p0, p0, Lcom/mgmi/ads/api/a/l$1;->a:Lcom/mgmi/ads/api/a/l;

    invoke-virtual {p0, p1}, Lcom/mgmi/ads/api/a/l;->a(Lcom/mgmi/model/r;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "requestAds banner e0"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "BaseAdView_SuperBannerAdsloader"

    invoke-static {p1, p0}, Lcom/mgadplus/mgutil/SourceKitLogger;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
