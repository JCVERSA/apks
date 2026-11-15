.class public Lcom/hisavana/adxlibrary/excuter/AdxNative;
.super Lcom/hisavana/common/base/BaseNative;
.source "source.java"


# instance fields
.field public a:Lb7/c;

.field public b:Lcom/hisavana/common/bean/AdNativeInfo;

.field public c:Lcom/cloud/hisavana/sdk/common/bean/SSPWebPageReqInfo;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/hisavana/common/bean/Network;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/hisavana/common/base/BaseNative;-><init>(Landroid/content/Context;Lcom/hisavana/common/bean/Network;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic a(Lcom/hisavana/adxlibrary/excuter/AdxNative;)I
    .locals 0

    .line 2
    iget p0, p0, Lcom/hisavana/common/base/BaseNative;->mAdt:I

    return p0
.end method

.method public static synthetic a(Lcom/hisavana/adxlibrary/excuter/AdxNative;Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;)Lcom/hisavana/common/bean/TAdNativeInfo;
    .locals 0

    .line 5
    invoke-virtual {p0, p1}, Lcom/hisavana/adxlibrary/excuter/AdxNative;->a(Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;)Lcom/hisavana/common/bean/TAdNativeInfo;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic a(Lcom/hisavana/adxlibrary/excuter/AdxNative;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 4
    invoke-virtual {p0, p1}, Lcom/hisavana/adxlibrary/excuter/AdxNative;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic a(Lcom/hisavana/adxlibrary/excuter/AdxNative;Lcom/hisavana/common/bean/TAdErrorCode;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/hisavana/common/base/BaseNative;->adFailedToLoad(Lcom/hisavana/common/bean/TAdErrorCode;)V

    return-void
.end method

.method public static synthetic a(Lcom/hisavana/adxlibrary/excuter/AdxNative;Lcom/hisavana/common/bean/TAdNativeInfo;)V
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lcom/hisavana/common/base/BaseAd;->adClosed(Lcom/hisavana/common/bean/TAdNativeInfo;)V

    return-void
.end method

.method public static synthetic b(Lcom/hisavana/adxlibrary/excuter/AdxNative;Lcom/hisavana/common/bean/TAdNativeInfo;)I
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/hisavana/common/base/BaseNative;->filter(Lcom/hisavana/common/bean/TAdNativeInfo;)I

    move-result p0

    return p0
.end method

.method public static synthetic b(Lcom/hisavana/adxlibrary/excuter/AdxNative;)Ljava/util/List;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/hisavana/common/base/BaseNative;->mNatives:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic b(Lcom/hisavana/adxlibrary/excuter/AdxNative;Lcom/hisavana/common/bean/TAdErrorCode;)V
    .locals 0

    .line 4
    invoke-virtual {p0, p1}, Lcom/hisavana/common/base/BaseNative;->adFailedToLoad(Lcom/hisavana/common/bean/TAdErrorCode;)V

    return-void
.end method

.method public static synthetic b(Lcom/hisavana/adxlibrary/excuter/AdxNative;Ljava/util/List;)V
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lcom/hisavana/adxlibrary/excuter/AdxNative;->b(Ljava/util/List;)V

    return-void
.end method

.method public static synthetic c(Lcom/hisavana/adxlibrary/excuter/AdxNative;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/hisavana/common/base/BaseNative;->mNatives:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic c(Lcom/hisavana/adxlibrary/excuter/AdxNative;Lcom/hisavana/common/bean/TAdErrorCode;)V
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/hisavana/common/base/BaseNative;->adFailedToLoad(Lcom/hisavana/common/bean/TAdErrorCode;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;)Lcom/hisavana/common/bean/TAdNativeInfo;
    .locals 3

    .line 14
    iget-object v0, p0, Lcom/hisavana/common/base/BaseNative;->mNatives:Ljava/util/List;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 15
    iget-object v0, p0, Lcom/hisavana/common/base/BaseNative;->mNatives:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hisavana/common/bean/TAdNativeInfo;

    if-eqz v1, :cond_0

    .line 16
    invoke-virtual {v1}, Lcom/hisavana/common/bean/TAdNativeInfo;->getNativeAdWrapper()Lcom/hisavana/common/bean/NativeAdWrapper;

    move-result-object v2

    if-nez v2, :cond_1

    goto :goto_0

    .line 17
    :cond_1
    invoke-virtual {v1}, Lcom/hisavana/common/bean/TAdNativeInfo;->getNativeAdWrapper()Lcom/hisavana/common/bean/NativeAdWrapper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/hisavana/common/bean/NativeAdWrapper;->getNativeAd()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;

    if-ne v2, p1, :cond_0

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    return-object v1
.end method

.method public final a(Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/hisavana/common/bean/TAdNativeInfo;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/hisavana/common/bean/TAdNativeInfo;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_3

    .line 6
    invoke-virtual {p0}, Lcom/hisavana/common/base/BaseNative;->getAdType()I

    move-result v0

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    goto :goto_1

    .line 7
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 8
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 9
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/hisavana/common/bean/TAdNativeInfo;

    .line 10
    invoke-interface {v2}, Lcom/hisavana/common/interfacz/ICacheAd;->getFilterSource()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 11
    invoke-interface {v2}, Lcom/hisavana/common/interfacz/ICacheAd;->getFilterSource()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 12
    invoke-interface {v2}, Lcom/hisavana/common/interfacz/ICacheAd;->getFilterSource()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 13
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v0

    :cond_3
    :goto_1
    return-object p1
.end method

.method public final b(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;",
            ">;)V"
        }
    .end annotation

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;

    if-nez v1, :cond_0

    goto :goto_0

    .line 7
    :cond_0
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 8
    invoke-virtual {v1}, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->getTitle()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ad_title"

    invoke-virtual {v2, v4, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    const-string v3, "ad_url"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    invoke-virtual {v1}, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->getDescription()Ljava/lang/String;

    move-result-object v3

    const-string v5, "description"

    invoke-virtual {v2, v5, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    invoke-virtual {v1}, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->getImage()Lcom/cloud/hisavana/sdk/common/bean/AdImage;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 12
    invoke-virtual {v1}, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->getImage()Lcom/cloud/hisavana/sdk/common/bean/AdImage;

    move-result-object v3

    invoke-virtual {v3}, Lcom/cloud/hisavana/sdk/common/bean/AdImage;->getImgUrl()Ljava/lang/String;

    move-result-object v3

    const-string v5, "image_url"

    invoke-virtual {v2, v5, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    :cond_1
    invoke-virtual {v1}, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->getIconImage()Lcom/cloud/hisavana/sdk/common/bean/AdImage;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 14
    invoke-virtual {v1}, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->getIconImage()Lcom/cloud/hisavana/sdk/common/bean/AdImage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cloud/hisavana/sdk/common/bean/AdImage;->getImgUrl()Ljava/lang/String;

    move-result-object v1

    const-string v3, "icon_url"

    invoke-virtual {v2, v3, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    :cond_2
    const-string v1, "endcard_url"

    invoke-virtual {v2, v1, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    const-string v1, "app_name"

    invoke-virtual {v2, v1, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    const-string v1, "package_name"

    invoke-virtual {v2, v1, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    const-string v1, "download_url"

    invoke-virtual {v2, v1, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 20
    invoke-virtual {v2}, Landroid/os/BaseBundle;->keySet()Ljava/util/Set;

    move-result-object v3

    .line 21
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 22
    invoke-virtual {v2, v4}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    if-eqz v5, :cond_3

    .line 23
    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 24
    :cond_4
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 25
    :cond_5
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 26
    invoke-static {v0}, Lcom/cloud/sdk/commonutil/gsonutil/GsonUtil;->d(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 27
    const-string v1, "native_info_list"

    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    invoke-virtual {p0, p1}, Lcom/hisavana/common/base/BaseAd;->setTrackingBundle(Landroid/os/Bundle;)V

    return-void
.end method

.method public destroyAd()V
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/hisavana/common/base/BaseNative;->destroyAd()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/hisavana/adxlibrary/excuter/AdxNative;->a:Lb7/c;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0}, Lb7/a;->c()V

    .line 10
    .line 11
    .line 12
    iput-object v1, p0, Lcom/hisavana/adxlibrary/excuter/AdxNative;->a:Lb7/c;

    .line 13
    .line 14
    :cond_0
    iput-object v1, p0, Lcom/hisavana/adxlibrary/excuter/AdxNative;->b:Lcom/hisavana/common/bean/AdNativeInfo;

    .line 15
    .line 16
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    new-instance v1, Ljava/lang/StringBuilder;

    .line 21
    .line 22
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 23
    .line 24
    .line 25
    const-string v2, "destroy"

    .line 26
    .line 27
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0}, Lcom/hisavana/common/base/BaseAd;->getLogString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    const-string v2, "AdxNative"

    .line 42
    .line 43
    invoke-virtual {v0, v2, v1}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    return-void
.end method

.method public getNativeAd()Lb7/c;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hisavana/adxlibrary/excuter/AdxNative;->a:Lb7/c;

    .line 2
    .line 3
    return-object v0
.end method

.method public initNative()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/hisavana/common/base/BaseAd;->mNetwork:Lcom/hisavana/common/bean/Network;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/hisavana/common/base/BaseNative;->mNatives:Ljava/util/List;

    .line 6
    .line 7
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 8
    .line 9
    .line 10
    new-instance v0, Lb7/c;

    .line 11
    .line 12
    iget-object v1, p0, Lcom/hisavana/common/base/BaseAd;->mNetwork:Lcom/hisavana/common/bean/Network;

    .line 13
    .line 14
    invoke-virtual {v1}, Lcom/hisavana/common/bean/Network;->getCodeSeatId()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-direct {v0, v1}, Lb7/c;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    iput-object v0, p0, Lcom/hisavana/adxlibrary/excuter/AdxNative;->a:Lb7/c;

    .line 22
    .line 23
    iget v1, p0, Lcom/hisavana/common/base/BaseAd;->mAdCount:I

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Lb7/c;->z(I)V

    .line 26
    .line 27
    .line 28
    iget-object v0, p0, Lcom/hisavana/common/base/BaseAd;->mNetwork:Lcom/hisavana/common/bean/Network;

    .line 29
    .line 30
    invoke-virtual {v0}, Lcom/hisavana/common/bean/Network;->getApplicationId()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    sput-object v0, Lc7/b;->b:Ljava/lang/String;

    .line 35
    .line 36
    new-instance v0, Lcom/hisavana/adxlibrary/excuter/AdxNative$a;

    .line 37
    .line 38
    invoke-direct {v0, p0}, Lcom/hisavana/adxlibrary/excuter/AdxNative$a;-><init>(Lcom/hisavana/adxlibrary/excuter/AdxNative;)V

    .line 39
    .line 40
    .line 41
    iget-object v1, p0, Lcom/hisavana/adxlibrary/excuter/AdxNative;->a:Lb7/c;

    .line 42
    .line 43
    invoke-static {}, Ld7/a;->a()Ld7/a$b;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    invoke-virtual {v2}, Ld7/a$b;->a()Ld7/a;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    invoke-virtual {v1, v2}, Lb7/a;->r(Ld7/a;)V

    .line 52
    .line 53
    .line 54
    iget-object v1, p0, Lcom/hisavana/adxlibrary/excuter/AdxNative;->a:Lb7/c;

    .line 55
    .line 56
    invoke-virtual {v1, v0}, Lb7/a;->p(Lcom/cloud/hisavana/sdk/api/listener/d;)V

    .line 57
    .line 58
    .line 59
    iget-object v0, p0, Lcom/hisavana/adxlibrary/excuter/AdxNative;->a:Lb7/c;

    .line 60
    .line 61
    iget-object v1, p0, Lcom/hisavana/common/base/BaseAd;->mNetwork:Lcom/hisavana/common/bean/Network;

    .line 62
    .line 63
    invoke-virtual {v1}, Lcom/hisavana/common/bean/Network;->getCodeSeatId()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    invoke-virtual {v0, v1}, Lb7/a;->q(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    :cond_0
    return-void
.end method

.method public isOfflineAd()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/hisavana/common/base/BaseNative;->mNatives:Ljava/util/List;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Lcom/hisavana/common/base/BaseNative;->mNatives:Ljava/util/List;

    .line 13
    .line 14
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    check-cast v0, Lcom/hisavana/common/bean/TAdNativeInfo;

    .line 19
    .line 20
    invoke-interface {v0}, Lcom/hisavana/common/interfacz/ICacheAd;->isOfflineAd()Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-eqz v0, :cond_0

    .line 25
    .line 26
    const/4 v1, 0x1

    .line 27
    :cond_0
    return v1
.end method

.method public onNativeAdStartLoad()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/hisavana/adxlibrary/excuter/AdxNative;->a:Lb7/c;

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    invoke-virtual {v0}, Lb7/a;->g()Ld7/a;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_2

    .line 10
    .line 11
    iget-object v0, p0, Lcom/hisavana/adxlibrary/excuter/AdxNative;->a:Lb7/c;

    .line 12
    .line 13
    invoke-virtual {v0}, Lb7/a;->g()Ld7/a;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iget v1, p0, Lcom/hisavana/common/base/BaseAd;->requestType:I

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Ld7/a;->k(I)V

    .line 20
    .line 21
    .line 22
    new-instance v1, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 25
    .line 26
    .line 27
    const-string v2, "hisa-"

    .line 28
    .line 29
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    iget-object v3, p0, Lcom/hisavana/common/base/BaseAd;->mTriggerId:Ljava/lang/String;

    .line 33
    .line 34
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    invoke-virtual {v0, v1}, Ld7/a;->l(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    new-instance v1, Ljava/lang/StringBuilder;

    .line 45
    .line 46
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    iget-object v2, p0, Lcom/hisavana/common/base/BaseAd;->mRequestId:Ljava/lang/String;

    .line 53
    .line 54
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    invoke-virtual {v0, v1}, Ld7/a;->j(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {p0}, Lcom/hisavana/common/base/BaseAd;->getSupportHisavanaFlag()I

    .line 65
    .line 66
    .line 67
    move-result v1

    .line 68
    const/4 v2, 0x2

    .line 69
    const/4 v3, 0x0

    .line 70
    const/4 v4, 0x1

    .line 71
    if-lt v1, v2, :cond_0

    .line 72
    .line 73
    move v1, v4

    .line 74
    goto :goto_0

    .line 75
    :cond_0
    move v1, v3

    .line 76
    :goto_0
    invoke-virtual {v0, v1}, Ld7/a;->i(Z)V

    .line 77
    .line 78
    .line 79
    iget-object v1, p0, Lcom/hisavana/adxlibrary/excuter/AdxNative;->a:Lb7/c;

    .line 80
    .line 81
    invoke-virtual {v1, v0}, Lb7/a;->r(Ld7/a;)V

    .line 82
    .line 83
    .line 84
    iget-object v0, p0, Lcom/hisavana/adxlibrary/excuter/AdxNative;->a:Lb7/c;

    .line 85
    .line 86
    iget-boolean v1, p0, Lcom/hisavana/common/base/BaseAd;->isContainVulgarContent:Z

    .line 87
    .line 88
    invoke-virtual {v0, v1}, Lb7/a;->m(Z)V

    .line 89
    .line 90
    .line 91
    iget-object v0, p0, Lcom/hisavana/adxlibrary/excuter/AdxNative;->a:Lb7/c;

    .line 92
    .line 93
    iget v1, p0, Lcom/hisavana/common/base/BaseNative;->mAdt:I

    .line 94
    .line 95
    const/4 v2, 0x6

    .line 96
    if-ne v1, v2, :cond_1

    .line 97
    .line 98
    move v3, v4

    .line 99
    :cond_1
    invoke-virtual {v0, v3}, Lb7/c;->A(Z)V

    .line 100
    .line 101
    .line 102
    iget-object v0, p0, Lcom/hisavana/adxlibrary/excuter/AdxNative;->a:Lb7/c;

    .line 103
    .line 104
    iget-object v1, p0, Lcom/hisavana/common/base/BaseAd;->mGameName:Ljava/lang/String;

    .line 105
    .line 106
    iget-object v2, p0, Lcom/hisavana/common/base/BaseAd;->mGameScene:Ljava/lang/String;

    .line 107
    .line 108
    iget-object v3, p0, Lcom/hisavana/common/base/BaseAd;->mExtInfo:Ljava/util/Map;

    .line 109
    .line 110
    invoke-virtual {v0, v1, v2, v3}, Lb7/a;->l(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 111
    .line 112
    .line 113
    iget-object v0, p0, Lcom/hisavana/adxlibrary/excuter/AdxNative;->a:Lb7/c;

    .line 114
    .line 115
    iget-boolean v1, p0, Lcom/hisavana/common/base/BaseAd;->mCurrActivityFullscreen:Z

    .line 116
    .line 117
    invoke-virtual {v0, v1}, Lb7/a;->n(Z)V

    .line 118
    .line 119
    .line 120
    iget-object v0, p0, Lcom/hisavana/adxlibrary/excuter/AdxNative;->a:Lb7/c;

    .line 121
    .line 122
    iget-object v1, p0, Lcom/hisavana/adxlibrary/excuter/AdxNative;->c:Lcom/cloud/hisavana/sdk/common/bean/SSPWebPageReqInfo;

    .line 123
    .line 124
    invoke-virtual {v0, v1}, Lb7/c;->B(Lcom/cloud/hisavana/sdk/common/bean/SSPWebPageReqInfo;)V

    .line 125
    .line 126
    .line 127
    iget-object v0, p0, Lcom/hisavana/adxlibrary/excuter/AdxNative;->a:Lb7/c;

    .line 128
    .line 129
    invoke-virtual {v0}, Lb7/c;->v()V

    .line 130
    .line 131
    .line 132
    const/4 v0, 0x0

    .line 133
    iput-object v0, p0, Lcom/hisavana/adxlibrary/excuter/AdxNative;->c:Lcom/cloud/hisavana/sdk/common/bean/SSPWebPageReqInfo;

    .line 134
    .line 135
    :cond_2
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    .line 136
    .line 137
    .line 138
    move-result-object v0

    .line 139
    new-instance v1, Ljava/lang/StringBuilder;

    .line 140
    .line 141
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 142
    .line 143
    .line 144
    const-string v2, "adx native load mPlacementId:"

    .line 145
    .line 146
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    .line 148
    .line 149
    iget-object v2, p0, Lcom/hisavana/common/base/BaseAd;->mNetwork:Lcom/hisavana/common/bean/Network;

    .line 150
    .line 151
    if-eqz v2, :cond_3

    .line 152
    .line 153
    invoke-virtual {v2}, Lcom/hisavana/common/bean/Network;->getCodeSeatId()Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object v2

    .line 157
    goto :goto_1

    .line 158
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    .line 159
    .line 160
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 161
    .line 162
    .line 163
    const-string v3, " num:"

    .line 164
    .line 165
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    .line 167
    .line 168
    iget v3, p0, Lcom/hisavana/common/base/BaseAd;->mAdCount:I

    .line 169
    .line 170
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 171
    .line 172
    .line 173
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object v2

    .line 177
    :goto_1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    .line 179
    .line 180
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 181
    .line 182
    .line 183
    move-result-object v1

    .line 184
    const-string v2, "AdxNative"

    .line 185
    .line 186
    invoke-virtual {v0, v2, v1}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    .line 188
    .line 189
    return-void
.end method

.method public registerViewForInteraction(Landroid/view/ViewGroup;Ljava/util/List;Lcom/hisavana/common/bean/AdNativeInfo;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;",
            "Lcom/hisavana/common/bean/AdNativeInfo;",
            ")V"
        }
    .end annotation

    .line 1
    iput-object p3, p0, Lcom/hisavana/adxlibrary/excuter/AdxNative;->b:Lcom/hisavana/common/bean/AdNativeInfo;

    .line 2
    .line 3
    invoke-virtual {p0, p3}, Lcom/hisavana/common/base/BaseAd;->logTrigerShow(Lcom/hisavana/common/bean/TAdNativeInfo;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "AdxNative"

    .line 7
    .line 8
    if-eqz p1, :cond_1

    .line 9
    .line 10
    iget-object v1, p0, Lcom/hisavana/adxlibrary/excuter/AdxNative;->a:Lb7/c;

    .line 11
    .line 12
    if-eqz v1, :cond_1

    .line 13
    .line 14
    invoke-virtual {p0, p3}, Lcom/hisavana/adxlibrary/excuter/AdxNative;->unregisterView(Lcom/hisavana/common/bean/AdNativeInfo;)V

    .line 15
    .line 16
    .line 17
    :try_start_0
    invoke-virtual {p3}, Lcom/hisavana/common/bean/AdNativeInfo;->getNativeAdWrapper()Lcom/hisavana/common/bean/NativeAdWrapper;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {v1}, Lcom/hisavana/common/bean/NativeAdWrapper;->getNativeAd()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    check-cast v1, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;

    .line 26
    .line 27
    invoke-virtual {p3}, Lcom/hisavana/common/bean/AdNativeInfo;->getSecondPrice()D

    .line 28
    .line 29
    .line 30
    move-result-wide v2

    .line 31
    const-wide/16 v4, 0x0

    .line 32
    .line 33
    cmpl-double p3, v2, v4

    .line 34
    .line 35
    if-eqz p3, :cond_0

    .line 36
    .line 37
    invoke-virtual {v1, v2, v3}, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->setSecondPrice(D)V

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :catch_0
    move-exception p1

    .line 42
    goto :goto_1

    .line 43
    :cond_0
    :goto_0
    iget-object p3, p0, Lcom/hisavana/adxlibrary/excuter/AdxNative;->a:Lb7/c;

    .line 44
    .line 45
    invoke-virtual {p3, p1, p2, v1}, Lb7/c;->x(Landroid/view/ViewGroup;Ljava/util/List;Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    .line 47
    .line 48
    goto :goto_2

    .line 49
    :goto_1
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    .line 50
    .line 51
    .line 52
    move-result-object p2

    .line 53
    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p3

    .line 57
    invoke-virtual {p2, v0, p3}, Lcom/cloud/sdk/commonutil/util/c;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    new-instance p2, Lcom/hisavana/common/bean/TAdErrorCode;

    .line 61
    .line 62
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    const p3, 0xc351

    .line 67
    .line 68
    .line 69
    invoke-direct {p2, p3, p1}, Lcom/hisavana/common/bean/TAdErrorCode;-><init>(ILjava/lang/String;)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {p0, p2}, Lcom/hisavana/common/base/BaseAd;->onAdShowError(Lcom/hisavana/common/bean/TAdErrorCode;)V

    .line 73
    .line 74
    .line 75
    goto :goto_2

    .line 76
    :cond_1
    sget-object p1, Lcom/hisavana/common/bean/TAdErrorCode;->ERROR_SHOW_EXCEPTION:Lcom/hisavana/common/bean/TAdErrorCode;

    .line 77
    .line 78
    invoke-virtual {p0, p1}, Lcom/hisavana/common/base/BaseAd;->onAdShowError(Lcom/hisavana/common/bean/TAdErrorCode;)V

    .line 79
    .line 80
    .line 81
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    const-string p2, "registerViewForInteraction error, mNativeAd is null"

    .line 86
    .line 87
    invoke-virtual {p1, v0, p2}, Lcom/cloud/sdk/commonutil/util/c;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    :goto_2
    return-void
.end method

.method public setRecommendReqInfo(Lcom/cloud/hisavana/sdk/common/bean/SSPWebPageReqInfo;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/hisavana/adxlibrary/excuter/AdxNative;->c:Lcom/cloud/hisavana/sdk/common/bean/SSPWebPageReqInfo;

    .line 2
    .line 3
    return-void
.end method

.method public trackRecommendClick(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/hisavana/adxlibrary/excuter/AdxNative;->a:Lb7/c;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Lb7/c;->C(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    .line 5
    .line 6
    :catch_0
    return-void
.end method

.method public trackRecommendShow(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/cloud/hisavana/sdk/common/bean/SSPWebRecommendInfo;",
            ">;)V"
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/hisavana/adxlibrary/excuter/AdxNative;->a:Lb7/c;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lb7/c;->D(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    .line 5
    .line 6
    :catch_0
    return-void
.end method

.method public unregisterView(Lcom/hisavana/common/bean/AdNativeInfo;)V
    .locals 0

    .line 1
    return-void
.end method
