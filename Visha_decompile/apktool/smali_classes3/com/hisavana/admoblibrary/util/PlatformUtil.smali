.class public Lcom/hisavana/admoblibrary/util/PlatformUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Landroid/os/Handler;

.field public static b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/hisavana/admoblibrary/util/PlatformUtil;->b:Ljava/util/List;

    const-string v0, ""

    sput-object v0, Lcom/hisavana/admoblibrary/util/PlatformUtil;->c:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/google/android/gms/ads/AdRequest;
    .locals 2

    .line 49
    new-instance v0, Lcom/google/android/gms/ads/AdRequest$Builder;

    invoke-direct {v0}, Lcom/google/android/gms/ads/AdRequest$Builder;-><init>()V

    const/16 v1, 0x7530

    .line 50
    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/AbstractAdRequestBuilder;->setHttpTimeoutMillis(I)Lcom/google/android/gms/ads/AbstractAdRequestBuilder;

    .line 51
    invoke-virtual {v0}, Lcom/google/android/gms/ads/AdRequest$Builder;->build()Lcom/google/android/gms/ads/AdRequest;

    move-result-object v0

    return-object v0
.end method

.method public static a(I)Lcom/google/android/gms/ads/AdRequest;
    .locals 4

    .line 52
    new-instance v0, Lcom/google/android/gms/ads/AdRequest$Builder;

    invoke-direct {v0}, Lcom/google/android/gms/ads/AdRequest$Builder;-><init>()V

    const/16 v1, 0x7530

    .line 53
    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/AbstractAdRequestBuilder;->setHttpTimeoutMillis(I)Lcom/google/android/gms/ads/AbstractAdRequestBuilder;

    if-eqz p0, :cond_1

    .line 54
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const/4 v2, 0x1

    const-string v3, "collapsible"

    if-ne p0, v2, :cond_0

    .line 55
    const-string p0, "top"

    invoke-virtual {v1, v3, p0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 56
    :cond_0
    const-string p0, "bottom"

    invoke-virtual {v1, v3, p0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    :goto_0
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v2, "collapsible_request_id"

    invoke-virtual {v1, v2, p0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    const-class p0, Lcom/google/ads/mediation/admob/AdMobAdapter;

    invoke-virtual {v0, p0, v1}, Lcom/google/android/gms/ads/AbstractAdRequestBuilder;->addNetworkExtrasBundle(Ljava/lang/Class;Landroid/os/Bundle;)Lcom/google/android/gms/ads/AbstractAdRequestBuilder;

    .line 59
    :cond_1
    invoke-virtual {v0}, Lcom/google/android/gms/ads/AdRequest$Builder;->build()Lcom/google/android/gms/ads/AdRequest;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/lang/Object;IILcom/hisavana/common/base/BaseNative;)Lcom/hisavana/common/bean/TAdNativeInfo;
    .locals 6

    const/4 v0, 0x0

    if-eqz p0, :cond_f

    .line 1
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2
    instance-of v2, p0, Lcom/google/android/gms/ads/nativead/NativeAd;

    if-eqz v2, :cond_f

    .line 3
    new-instance v2, Lcom/hisavana/common/bean/AdNativeInfo;

    invoke-direct {v2}, Lcom/hisavana/common/bean/AdNativeInfo;-><init>()V

    .line 4
    check-cast p0, Lcom/google/android/gms/ads/nativead/NativeAd;

    if-eqz p3, :cond_0

    .line 5
    invoke-virtual {p3}, Lcom/hisavana/common/base/BaseAd;->getNetwork()Lcom/hisavana/common/bean/Network;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 6
    invoke-virtual {p3}, Lcom/hisavana/common/base/BaseAd;->getNetwork()Lcom/hisavana/common/bean/Network;

    move-result-object v3

    invoke-virtual {v3}, Lcom/hisavana/common/bean/Network;->getPrice()Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/hisavana/common/bean/AdNativeInfo;->setEcpmPrice(D)V

    goto :goto_0

    :catch_0
    move-exception p0

    goto/16 :goto_5

    :cond_0
    :goto_0
    if-nez p3, :cond_1

    move-object v3, v0

    goto :goto_1

    .line 7
    :cond_1
    invoke-virtual {p3}, Lcom/hisavana/common/base/BaseNative;->getTriggerId()Ljava/lang/String;

    move-result-object v3

    :goto_1
    invoke-virtual {v2, v3}, Lcom/hisavana/common/bean/AdNativeInfo;->setTriggerId(Ljava/lang/String;)V

    .line 8
    new-instance v3, Lcom/hisavana/admoblibrary/util/PlatformUtil$a;

    invoke-direct {v3, p0, p3, p3, v2}, Lcom/hisavana/admoblibrary/util/PlatformUtil$a;-><init>(Lcom/google/android/gms/ads/nativead/NativeAd;Lcom/hisavana/common/base/BaseNative;Lcom/hisavana/common/base/BaseNative;Lcom/hisavana/common/bean/AdNativeInfo;)V

    invoke-virtual {v2, v3}, Lcom/hisavana/common/bean/AdNativeInfo;->setNativeAdWrapper(Lcom/hisavana/common/bean/NativeAdWrapper;)V

    .line 9
    invoke-static {}, Lcom/cloud/sdk/commonutil/util/DeviceUtil;->p()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/hisavana/common/bean/AdNativeInfo;->setAdId(Ljava/lang/String;)V

    .line 10
    invoke-virtual {p0}, Lcom/google/android/gms/ads/nativead/NativeAd;->getHeadline()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 11
    invoke-virtual {p0}, Lcom/google/android/gms/ads/nativead/NativeAd;->getHeadline()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/hisavana/common/bean/AdNativeInfo;->setTitle(Ljava/lang/String;)V

    .line 12
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/gms/ads/nativead/NativeAd;->getBody()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 13
    invoke-virtual {p0}, Lcom/google/android/gms/ads/nativead/NativeAd;->getBody()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/hisavana/common/bean/AdNativeInfo;->setDescription(Ljava/lang/String;)V

    .line 14
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/gms/ads/nativead/NativeAd;->getCallToAction()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 15
    invoke-virtual {p0}, Lcom/google/android/gms/ads/nativead/NativeAd;->getCallToAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/hisavana/common/bean/AdNativeInfo;->setAdCallToAction(Ljava/lang/String;)V

    .line 16
    :cond_4
    invoke-virtual {p0}, Lcom/google/android/gms/ads/nativead/NativeAd;->getStarRating()Ljava/lang/Double;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v4, ""

    if-eqz v3, :cond_5

    .line 17
    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/ads/nativead/NativeAd;->getStarRating()Ljava/lang/Double;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/hisavana/common/bean/AdNativeInfo;->setRating(Ljava/lang/String;)V

    .line 18
    :cond_5
    invoke-virtual {p0}, Lcom/google/android/gms/ads/nativead/NativeAd;->getPrice()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_6

    .line 19
    invoke-virtual {p0}, Lcom/google/android/gms/ads/nativead/NativeAd;->getPrice()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/hisavana/common/bean/AdNativeInfo;->setSaleprice(Ljava/lang/String;)V

    .line 20
    :cond_6
    invoke-virtual {p0}, Lcom/google/android/gms/ads/nativead/NativeAd;->getIcon()Lcom/google/android/gms/ads/nativead/NativeAd$Image;

    move-result-object v3

    if-eqz v3, :cond_8

    .line 21
    new-instance v3, Lcom/hisavana/common/bean/AdNativeInfo$Image;

    invoke-direct {v3}, Lcom/hisavana/common/bean/AdNativeInfo$Image;-><init>()V

    .line 22
    invoke-virtual {p0}, Lcom/google/android/gms/ads/nativead/NativeAd;->getIcon()Lcom/google/android/gms/ads/nativead/NativeAd$Image;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/ads/nativead/NativeAd$Image;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    if-eqz v5, :cond_9

    .line 23
    invoke-virtual {p0}, Lcom/google/android/gms/ads/nativead/NativeAd;->getIcon()Lcom/google/android/gms/ads/nativead/NativeAd$Image;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/ads/nativead/NativeAd$Image;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/hisavana/common/bean/AdNativeInfo$Image;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 24
    invoke-virtual {p0}, Lcom/google/android/gms/ads/nativead/NativeAd;->getIcon()Lcom/google/android/gms/ads/nativead/NativeAd$Image;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/ads/nativead/NativeAd$Image;->getUri()Landroid/net/Uri;

    move-result-object v5

    if-eqz v5, :cond_7

    invoke-virtual {p0}, Lcom/google/android/gms/ads/nativead/NativeAd;->getIcon()Lcom/google/android/gms/ads/nativead/NativeAd$Image;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/ads/nativead/NativeAd$Image;->getUri()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    .line 25
    :cond_7
    invoke-virtual {v3, v4}, Lcom/hisavana/common/bean/AdNativeInfo$Image;->setUrl(Ljava/lang/String;)V

    goto :goto_2

    :cond_8
    move-object v3, v0

    .line 26
    :cond_9
    :goto_2
    invoke-virtual {v2, v3}, Lcom/hisavana/common/bean/AdNativeInfo;->setIcon(Lcom/hisavana/common/bean/AdNativeInfo$Image;)V

    .line 27
    invoke-virtual {p0}, Lcom/google/android/gms/ads/nativead/NativeAd;->getMediaContent()Lcom/google/android/gms/ads/MediaContent;

    move-result-object v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    if-eqz v3, :cond_a

    .line 28
    :try_start_2
    invoke-virtual {p0}, Lcom/google/android/gms/ads/nativead/NativeAd;->getMediaContent()Lcom/google/android/gms/ads/MediaContent;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/android/gms/ads/MediaContent;->getVideoController()Lcom/google/android/gms/ads/VideoController;

    move-result-object v3
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_3

    :catch_1
    :cond_a
    move-object v3, v0

    :goto_3
    if-eqz v3, :cond_b

    .line 29
    :try_start_3
    invoke-virtual {v3}, Lcom/google/android/gms/ads/VideoController;->hasVideoContent()Z

    move-result v3

    if-eqz v3, :cond_b

    .line 30
    new-instance v3, Lcom/hisavana/common/bean/AdNativeInfo$Image;

    invoke-direct {v3}, Lcom/hisavana/common/bean/AdNativeInfo$Image;-><init>()V

    .line 31
    invoke-virtual {p0}, Lcom/google/android/gms/ads/nativead/NativeAd;->getMediaContent()Lcom/google/android/gms/ads/MediaContent;

    move-result-object p0

    invoke-interface {p0}, Lcom/google/android/gms/ads/MediaContent;->getAspectRatio()F

    move-result p0

    invoke-virtual {v3, p0}, Lcom/hisavana/common/bean/AdNativeInfo$Image;->setRatio(F)V

    .line 32
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 33
    :cond_b
    invoke-virtual {p0}, Lcom/google/android/gms/ads/nativead/NativeAd;->getImages()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_e

    invoke-virtual {p0}, Lcom/google/android/gms/ads/nativead/NativeAd;->getImages()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_e

    .line 34
    new-instance v3, Lcom/hisavana/common/bean/AdNativeInfo$Image;

    invoke-direct {v3}, Lcom/hisavana/common/bean/AdNativeInfo$Image;-><init>()V

    .line 35
    invoke-virtual {p0}, Lcom/google/android/gms/ads/nativead/NativeAd;->getImages()Ljava/util/List;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_c

    .line 36
    invoke-virtual {p0}, Lcom/google/android/gms/ads/nativead/NativeAd;->getImages()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/ads/nativead/NativeAd$Image;

    invoke-virtual {v4}, Lcom/google/android/gms/ads/nativead/NativeAd$Image;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/hisavana/common/bean/AdNativeInfo$Image;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 37
    :cond_c
    invoke-virtual {p0}, Lcom/google/android/gms/ads/nativead/NativeAd;->getImages()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_d

    invoke-virtual {p0}, Lcom/google/android/gms/ads/nativead/NativeAd;->getImages()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/ads/nativead/NativeAd$Image;

    invoke-virtual {v4}, Lcom/google/android/gms/ads/nativead/NativeAd$Image;->getUri()Landroid/net/Uri;

    move-result-object v4

    if-eqz v4, :cond_d

    .line 38
    invoke-virtual {p0}, Lcom/google/android/gms/ads/nativead/NativeAd;->getImages()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/ads/nativead/NativeAd$Image;

    invoke-virtual {p0}, Lcom/google/android/gms/ads/nativead/NativeAd$Image;->getUri()Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Lcom/hisavana/common/bean/AdNativeInfo$Image;->setUrl(Ljava/lang/String;)V

    .line 39
    :cond_d
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 40
    :cond_e
    :goto_4
    invoke-virtual {v2, v1}, Lcom/hisavana/common/bean/AdNativeInfo;->setImageList(Ljava/util/List;)V

    .line 41
    invoke-virtual {v2, p1}, Lcom/hisavana/common/bean/AdNativeInfo;->setAdType(I)V

    .line 42
    invoke-virtual {v2, p2}, Lcom/hisavana/common/bean/AdNativeInfo;->setTtl(I)V

    .line 43
    invoke-virtual {p3}, Lcom/hisavana/common/base/BaseAd;->getAdSource()I

    move-result p0

    invoke-virtual {v2, p0}, Lcom/hisavana/common/bean/AdNativeInfo;->setAdSource(I)V

    .line 44
    invoke-virtual {v2}, Lcom/hisavana/common/bean/AdNativeInfo;->getAdId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Lcom/hisavana/common/bean/AdNativeInfo;->setAdCreateId(Ljava/lang/String;)V

    .line 45
    invoke-virtual {p3}, Lcom/hisavana/common/base/BaseAd;->isIconAd()Z

    move-result p0

    invoke-virtual {v2, p0}, Lcom/hisavana/common/bean/AdNativeInfo;->setIconAd(Z)V

    .line 46
    invoke-virtual {p3}, Lcom/hisavana/common/base/BaseAd;->getMediatorSourceName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Lcom/hisavana/common/bean/AdNativeInfo;->setMediatorSourceName(Ljava/lang/String;)V

    .line 47
    invoke-virtual {p3}, Lcom/hisavana/common/base/BaseAd;->getMediatorSourceUnitId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Lcom/hisavana/common/bean/AdNativeInfo;->setMediatorSourceUnitId(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    return-object v2

    .line 48
    :goto_5
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object p1

    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    const-string p2, "PlatformUtil"

    invoke-virtual {p1, p2, p0}, Lja1;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_f
    return-object v0
.end method

.method public static b()Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/hisavana/admoblibrary/util/PlatformUtil;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/hisavana/admoblibrary/util/PlatformUtil;->c:Ljava/lang/String;

    return-object v0

    :cond_0
    invoke-static {}, Lul4;->a()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "android_id"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    :cond_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v0, ""

    goto :goto_0

    :cond_2
    invoke-static {v0}, Lia3;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    sput-object v0, Lcom/hisavana/admoblibrary/util/PlatformUtil;->c:Ljava/lang/String;

    return-object v0
.end method
