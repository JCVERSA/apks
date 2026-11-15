.class public Lcom/hisavana/admoblibrary/excuter/AdmobBanner$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/hisavana/admoblibrary/check/ExistsCheck$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hisavana/admoblibrary/excuter/AdmobBanner;->onBannerLoad()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/hisavana/admoblibrary/excuter/AdmobBanner;


# direct methods
.method public constructor <init>(Lcom/hisavana/admoblibrary/excuter/AdmobBanner;)V
    .locals 0

    iput-object p1, p0, Lcom/hisavana/admoblibrary/excuter/AdmobBanner$b;->a:Lcom/hisavana/admoblibrary/excuter/AdmobBanner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    iget-object v0, p0, Lcom/hisavana/admoblibrary/excuter/AdmobBanner$b;->a:Lcom/hisavana/admoblibrary/excuter/AdmobBanner;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/hisavana/admoblibrary/excuter/AdmobBanner;->a(Lcom/hisavana/admoblibrary/excuter/AdmobBanner;Lcom/hisavana/admoblibrary/check/ExistsCheck$a;)Lcom/hisavana/admoblibrary/check/ExistsCheck$a;

    iget-object v0, p0, Lcom/hisavana/admoblibrary/excuter/AdmobBanner$b;->a:Lcom/hisavana/admoblibrary/excuter/AdmobBanner;

    invoke-static {v0}, Lcom/hisavana/admoblibrary/excuter/AdmobBanner;->c(Lcom/hisavana/admoblibrary/excuter/AdmobBanner;)Lcom/google/android/gms/ads/AdView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hisavana/admoblibrary/excuter/AdmobBanner$b;->a:Lcom/hisavana/admoblibrary/excuter/AdmobBanner;

    invoke-static {v0}, Lcom/hisavana/admoblibrary/excuter/AdmobBanner;->c(Lcom/hisavana/admoblibrary/excuter/AdmobBanner;)Lcom/google/android/gms/ads/AdView;

    move-result-object v0

    iget-object p0, p0, Lcom/hisavana/admoblibrary/excuter/AdmobBanner$b;->a:Lcom/hisavana/admoblibrary/excuter/AdmobBanner;

    invoke-static {p0}, Lcom/hisavana/admoblibrary/excuter/AdmobBanner;->a(Lcom/hisavana/admoblibrary/excuter/AdmobBanner;)I

    move-result p0

    invoke-static {p0}, Lcom/hisavana/admoblibrary/util/PlatformUtil;->a(I)Lcom/google/android/gms/ads/AdRequest;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/ads/BaseAdView;->loadAd(Lcom/google/android/gms/ads/AdRequest;)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object v0

    const-string v1, "AdmobBanner"

    const-string v2, "onBannerLoad adView is null"

    invoke-virtual {v0, v1, v2}, Lja1;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/hisavana/admoblibrary/excuter/AdmobBanner$b;->a:Lcom/hisavana/admoblibrary/excuter/AdmobBanner;

    new-instance v0, Lcom/hisavana/common/bean/TAdErrorCode;

    const/16 v1, 0x7533

    const-string v2, "adView is null"

    invoke-direct {v0, v1, v2}, Lcom/hisavana/common/bean/TAdErrorCode;-><init>(ILjava/lang/String;)V

    invoke-static {p0, v0}, Lcom/hisavana/admoblibrary/excuter/AdmobBanner;->b(Lcom/hisavana/admoblibrary/excuter/AdmobBanner;Lcom/hisavana/common/bean/TAdErrorCode;)V

    :goto_0
    return-void
.end method

.method public b()V
    .locals 2

    iget-object v0, p0, Lcom/hisavana/admoblibrary/excuter/AdmobBanner$b;->a:Lcom/hisavana/admoblibrary/excuter/AdmobBanner;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/hisavana/admoblibrary/excuter/AdmobBanner;->a(Lcom/hisavana/admoblibrary/excuter/AdmobBanner;Lcom/hisavana/admoblibrary/check/ExistsCheck$a;)Lcom/hisavana/admoblibrary/check/ExistsCheck$a;

    iget-object p0, p0, Lcom/hisavana/admoblibrary/excuter/AdmobBanner$b;->a:Lcom/hisavana/admoblibrary/excuter/AdmobBanner;

    sget-object v0, Lcom/hisavana/common/bean/TAdErrorCode;->ERROR_AD_SOURCE_INIT_FAILED:Lcom/hisavana/common/bean/TAdErrorCode;

    invoke-static {p0, v0}, Lcom/hisavana/admoblibrary/excuter/AdmobBanner;->c(Lcom/hisavana/admoblibrary/excuter/AdmobBanner;Lcom/hisavana/common/bean/TAdErrorCode;)V

    return-void
.end method
