.class public abstract Lce/a;
.super Ljava/lang/Object;
.source "source.java"


# direct methods
.method public static a(Landroid/content/Context;Lcom/hisavana/common/bean/Network;Lcom/hisavana/adxlibrary/excuter/AdxBanner;)Lcom/hisavana/adxlibrary/excuter/AdxBanner;
    .locals 7

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    const/4 v2, 0x2

    .line 4
    sget-object v3, Lcom/hisavana/common/constant/ComConstants;->AUTOMATIC_TEST_STATUS:Ljava/lang/Boolean;

    .line 5
    .line 6
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 7
    .line 8
    .line 9
    move-result v3

    .line 10
    if-eqz v3, :cond_0

    .line 11
    .line 12
    :try_start_0
    const-string v3, "com.hisavana.mock_util.ssp.MockAdxBannerAd"

    .line 13
    .line 14
    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    move-result-object v3

    .line 18
    new-array v4, v2, [Ljava/lang/Class;

    .line 19
    .line 20
    const-class v5, Landroid/content/Context;

    .line 21
    .line 22
    aput-object v5, v4, v1

    .line 23
    .line 24
    const-class v5, Lcom/hisavana/common/bean/Network;

    .line 25
    .line 26
    aput-object v5, v4, v0

    .line 27
    .line 28
    invoke-virtual {v3, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    .line 33
    .line 34
    .line 35
    move-result-object v4

    .line 36
    const-string v5, "automatic_test"

    .line 37
    .line 38
    const-string v6, "adxbanner mock"

    .line 39
    .line 40
    invoke-virtual {v4, v5, v6}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    new-array v2, v2, [Ljava/lang/Object;

    .line 44
    .line 45
    aput-object p0, v2, v1

    .line 46
    .line 47
    aput-object p1, v2, v0

    .line 48
    .line 49
    invoke-virtual {v3, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    check-cast p0, Lcom/hisavana/adxlibrary/excuter/AdxBanner;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    .line 55
    return-object p0

    .line 56
    :catch_0
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    .line 57
    .line 58
    .line 59
    move-result-object p0

    .line 60
    const-string p1, "automatic_test_error - adxbanner"

    .line 61
    .line 62
    invoke-virtual {p0, p1}, Lcom/cloud/sdk/commonutil/util/c;->e(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    :cond_0
    return-object p2
.end method

.method public static b(Landroid/content/Context;Lcom/hisavana/common/bean/Network;Lcom/hisavana/common/base/BaseInterstitial;)Lcom/hisavana/common/base/BaseInterstitial;
    .locals 7

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    const/4 v2, 0x2

    .line 4
    sget-object v3, Lcom/hisavana/common/constant/ComConstants;->AUTOMATIC_TEST_STATUS:Ljava/lang/Boolean;

    .line 5
    .line 6
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 7
    .line 8
    .line 9
    move-result v3

    .line 10
    if-eqz v3, :cond_0

    .line 11
    .line 12
    :try_start_0
    const-string v3, "com.hisavana.mock_util.ssp.MockAdxInterstitialAd"

    .line 13
    .line 14
    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    move-result-object v3

    .line 18
    new-array v4, v2, [Ljava/lang/Class;

    .line 19
    .line 20
    const-class v5, Landroid/content/Context;

    .line 21
    .line 22
    aput-object v5, v4, v1

    .line 23
    .line 24
    const-class v5, Lcom/hisavana/common/bean/Network;

    .line 25
    .line 26
    aput-object v5, v4, v0

    .line 27
    .line 28
    invoke-virtual {v3, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    .line 33
    .line 34
    .line 35
    move-result-object v4

    .line 36
    const-string v5, "automatic_test"

    .line 37
    .line 38
    const-string v6, "adxInterstitialAd mock"

    .line 39
    .line 40
    invoke-virtual {v4, v5, v6}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    new-array v2, v2, [Ljava/lang/Object;

    .line 44
    .line 45
    aput-object p0, v2, v1

    .line 46
    .line 47
    aput-object p1, v2, v0

    .line 48
    .line 49
    invoke-virtual {v3, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    check-cast p0, Lcom/hisavana/common/base/BaseInterstitial;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    .line 55
    return-object p0

    .line 56
    :catch_0
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    .line 57
    .line 58
    .line 59
    move-result-object p0

    .line 60
    const-string p1, "automatic_test_error - adxinterstitial"

    .line 61
    .line 62
    invoke-virtual {p0, p1}, Lcom/cloud/sdk/commonutil/util/c;->e(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    :cond_0
    return-object p2
.end method

.method public static c(Landroid/content/Context;Lcom/hisavana/common/bean/Network;ILcom/hisavana/common/base/BaseNative;)Lcom/hisavana/common/base/BaseNative;
    .locals 8

    .line 1
    const/4 v0, 0x2

    .line 2
    const/4 v1, 0x1

    .line 3
    const/4 v2, 0x0

    .line 4
    const/4 v3, 0x3

    .line 5
    sget-object v4, Lcom/hisavana/common/constant/ComConstants;->AUTOMATIC_TEST_STATUS:Ljava/lang/Boolean;

    .line 6
    .line 7
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    .line 8
    .line 9
    .line 10
    move-result v4

    .line 11
    if-eqz v4, :cond_0

    .line 12
    .line 13
    :try_start_0
    const-string v4, "com.hisavana.mock_util.ssp.MockAdxNative"

    .line 14
    .line 15
    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    move-result-object v4

    .line 19
    new-array v5, v3, [Ljava/lang/Class;

    .line 20
    .line 21
    const-class v6, Landroid/content/Context;

    .line 22
    .line 23
    aput-object v6, v5, v2

    .line 24
    .line 25
    const-class v6, Lcom/hisavana/common/bean/Network;

    .line 26
    .line 27
    aput-object v6, v5, v1

    .line 28
    .line 29
    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 30
    .line 31
    aput-object v6, v5, v0

    .line 32
    .line 33
    invoke-virtual {v4, v5}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 34
    .line 35
    .line 36
    move-result-object v4

    .line 37
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    .line 38
    .line 39
    .line 40
    move-result-object v5

    .line 41
    const-string v6, "automatic_test"

    .line 42
    .line 43
    const-string v7, "adxNativeAd mock"

    .line 44
    .line 45
    invoke-virtual {v5, v6, v7}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 49
    .line 50
    .line 51
    move-result-object p2

    .line 52
    new-array v3, v3, [Ljava/lang/Object;

    .line 53
    .line 54
    aput-object p0, v3, v2

    .line 55
    .line 56
    aput-object p1, v3, v1

    .line 57
    .line 58
    aput-object p2, v3, v0

    .line 59
    .line 60
    invoke-virtual {v4, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object p0

    .line 64
    check-cast p0, Lcom/hisavana/common/base/BaseNative;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    .line 66
    return-object p0

    .line 67
    :catch_0
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    .line 68
    .line 69
    .line 70
    move-result-object p0

    .line 71
    const-string p1, "automatic_test_error - adxnative"

    .line 72
    .line 73
    invoke-virtual {p0, p1}, Lcom/cloud/sdk/commonutil/util/c;->e(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    :cond_0
    return-object p3
.end method
