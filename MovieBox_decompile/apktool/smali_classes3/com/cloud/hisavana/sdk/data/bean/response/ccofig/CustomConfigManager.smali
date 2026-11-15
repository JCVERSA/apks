.class public final Lcom/cloud/hisavana/sdk/data/bean/response/ccofig/CustomConfigManager;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000B\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0014\u0010\t\u001a\u0004\u0018\u00010\n2\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u0005H\u0007J\n\u0010\u000c\u001a\u0004\u0018\u00010\rH\u0007J\n\u0010\u000e\u001a\u0004\u0018\u00010\u000fH\u0007J\u0014\u0010\u0010\u001a\u0004\u0018\u00010\n2\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u0005H\u0002J\u0008\u0010\u0011\u001a\u00020\u0012H\u0007J\u0008\u0010\u0013\u001a\u00020\u0012H\u0007J\u0008\u0010\u0014\u001a\u00020\u0012H\u0007J\u0012\u0010\u0015\u001a\u00020\u00122\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u0017H\u0007J!\u0010\u0018\u001a\u00020\u00122\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u00052\u0008\u0010\u0019\u001a\u0004\u0018\u00010\u0006H\u0007\u00a2\u0006\u0002\u0010\u001aR\u001d\u0010\u0003\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00060\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\u001b"
    }
    d2 = {
        "Lcom/cloud/hisavana/sdk/data/bean/response/ccofig/CustomConfigManager;",
        "",
        "()V",
        "enableUseDefaultABDataMap",
        "Ljava/util/concurrent/ConcurrentHashMap;",
        "",
        "",
        "getEnableUseDefaultABDataMap",
        "()Ljava/util/concurrent/ConcurrentHashMap;",
        "getABTestData",
        "Lcom/cloud/hisavana/sdk/data/bean/response/ccofig/ABTest;",
        "abName",
        "getCommonConfigData",
        "Lcom/cloud/hisavana/sdk/data/bean/response/ccofig/CommonConfigDTO;",
        "getCustomTabData",
        "Lcom/cloud/hisavana/sdk/data/bean/response/ccofig/CustomTabConfigDTO;",
        "getDefaultAbTestData",
        "parseABTestData",
        "",
        "parseCommonConfigData",
        "parseCustomTabData",
        "saveCustomConfigs",
        "customConfigs",
        "Lcom/cloud/hisavana/sdk/data/bean/response/ccofig/CustomConfigs;",
        "setUseABTestDefaultData",
        "defaultValue",
        "(Ljava/lang/String;Ljava/lang/Boolean;)V",
        "api_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Lcom/cloud/hisavana/sdk/data/bean/response/ccofig/CustomConfigManager;

.field private static final enableUseDefaultABDataMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/cloud/hisavana/sdk/data/bean/response/ccofig/CustomConfigManager;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/ccofig/CustomConfigManager;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/cloud/hisavana/sdk/data/bean/response/ccofig/CustomConfigManager;->INSTANCE:Lcom/cloud/hisavana/sdk/data/bean/response/ccofig/CustomConfigManager;

    .line 7
    .line 8
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lcom/cloud/hisavana/sdk/data/bean/response/ccofig/CustomConfigManager;->enableUseDefaultABDataMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 14
    .line 15
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final getABTestData(Ljava/lang/String;)Lcom/cloud/hisavana/sdk/data/bean/response/ccofig/ABTest;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 1
    :try_start_0
    invoke-static {p0}, Lcom/cloud/hisavana/sdk/data/bean/response/ccofig/ClientABTestUtil;->getCurrentABTest(Ljava/lang/String;)Lcom/cloud/hisavana/sdk/data/bean/response/ccofig/ABTest;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-object v0

    .line 8
    :cond_0
    sget-object v0, Lcom/cloud/hisavana/sdk/data/bean/response/ccofig/CustomConfigManager;->INSTANCE:Lcom/cloud/hisavana/sdk/data/bean/response/ccofig/CustomConfigManager;

    .line 9
    .line 10
    invoke-direct {v0, p0}, Lcom/cloud/hisavana/sdk/data/bean/response/ccofig/CustomConfigManager;->getDefaultAbTestData(Ljava/lang/String;)Lcom/cloud/hisavana/sdk/data/bean/response/ccofig/ABTest;

    .line 11
    .line 12
    .line 13
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    return-object p0

    .line 15
    :catchall_0
    const/4 p0, 0x0

    .line 16
    return-object p0
.end method

.method public static final getCommonConfigData()Lcom/cloud/hisavana/sdk/data/bean/response/ccofig/CommonConfigDTO;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 1
    invoke-static {}, Lcom/cloud/hisavana/sdk/data/bean/response/ccofig/CustomTabUtil;->getCommonConfig()Lcom/cloud/hisavana/sdk/data/bean/response/ccofig/CommonConfigDTO;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static final getCustomTabData()Lcom/cloud/hisavana/sdk/data/bean/response/ccofig/CustomTabConfigDTO;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 1
    invoke-static {}, Lcom/cloud/hisavana/sdk/data/bean/response/ccofig/CustomTabUtil;->getCCTConfig()Lcom/cloud/hisavana/sdk/data/bean/response/ccofig/CustomTabConfigDTO;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method private final getDefaultAbTestData(Ljava/lang/String;)Lcom/cloud/hisavana/sdk/data/bean/response/ccofig/ABTest;
    .locals 5

    .line 1
    const-string v0, "AbTestData"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    :try_start_0
    sget-object v2, Lcom/cloud/hisavana/sdk/data/bean/response/ccofig/CustomConfigManager;->enableUseDefaultABDataMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 5
    .line 6
    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v2

    .line 10
    check-cast v2, Ljava/lang/Boolean;

    .line 11
    .line 12
    if-eqz v2, :cond_0

    .line 13
    .line 14
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 v2, 0x1

    .line 20
    :goto_0
    if-nez v2, :cond_1

    .line 21
    .line 22
    invoke-static {}, Lcom/cloud/hisavana/sdk/b4;->b()Lcom/cloud/hisavana/sdk/b4;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    const-string v3, "getDefaultAbTestData disableDefaultABDataMap"

    .line 27
    .line 28
    invoke-virtual {v2, v0, v3}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    .line 30
    .line 31
    return-object v1

    .line 32
    :catchall_0
    :cond_1
    if-eqz p1, :cond_8

    .line 33
    .line 34
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    .line 35
    .line 36
    .line 37
    move-result v2

    .line 38
    const v3, -0x5e41a639

    .line 39
    .line 40
    .line 41
    const-class v4, Lcom/cloud/hisavana/sdk/data/bean/response/ccofig/ABTest;

    .line 42
    .line 43
    if-eq v2, v3, :cond_6

    .line 44
    .line 45
    const v3, -0x2724fefc

    .line 46
    .line 47
    .line 48
    if-eq v2, v3, :cond_4

    .line 49
    .line 50
    const v3, 0x5a88cb99

    .line 51
    .line 52
    .line 53
    if-eq v2, v3, :cond_2

    .line 54
    .line 55
    goto :goto_1

    .line 56
    :cond_2
    const-string v2, "mediation_ew_strategy"

    .line 57
    .line 58
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    move-result p1

    .line 62
    if-nez p1, :cond_3

    .line 63
    .line 64
    goto :goto_1

    .line 65
    :cond_3
    :try_start_1
    invoke-static {}, Lcom/cloud/hisavana/sdk/b4;->b()Lcom/cloud/hisavana/sdk/b4;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    const-string v2, "getDefaultAbTestData MEDIATION_EW_STRATEGY"

    .line 70
    .line 71
    invoke-virtual {p1, v0, v2}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    const-string p1, "{\"ab_name\":\"mediation_ew_strategy\",\"layer_id\":539,\"req_interval\":259200,\"switch\":\"OPEN\",\"trackEvent\":[\"ad_request\",\"ad_return\"]}"

    .line 75
    .line 76
    invoke-static {p1, v4}, Lcom/cloud/sdk/commonutil/gsonutil/GsonUtil;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    check-cast p1, Lcom/cloud/hisavana/sdk/data/bean/response/ccofig/ABTest;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 81
    .line 82
    move-object v1, p1

    .line 83
    :catchall_1
    return-object v1

    .line 84
    :cond_4
    const-string v2, "client_ab_network"

    .line 85
    .line 86
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 87
    .line 88
    .line 89
    move-result p1

    .line 90
    if-nez p1, :cond_5

    .line 91
    .line 92
    goto :goto_1

    .line 93
    :cond_5
    :try_start_2
    invoke-static {}, Lcom/cloud/hisavana/sdk/b4;->b()Lcom/cloud/hisavana/sdk/b4;

    .line 94
    .line 95
    .line 96
    move-result-object p1

    .line 97
    const-string v2, "getDefaultAbTestData AB_NETWORK"

    .line 98
    .line 99
    invoke-virtual {p1, v0, v2}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    const-string p1, "{\"ab_name\":\"client_ab_network\",\"layer_id\":523,\"req_interval\":259200,\"switch\":\"OPEN\",\"trackEvent\":[\"ad_ssp_request\",\"ad_ssp_return\"]}"

    .line 103
    .line 104
    invoke-static {p1, v4}, Lcom/cloud/sdk/commonutil/gsonutil/GsonUtil;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    move-result-object p1

    .line 108
    check-cast p1, Lcom/cloud/hisavana/sdk/data/bean/response/ccofig/ABTest;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 109
    .line 110
    move-object v1, p1

    .line 111
    :catchall_2
    return-object v1

    .line 112
    :cond_6
    const-string v2, "custom_tab"

    .line 113
    .line 114
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 115
    .line 116
    .line 117
    move-result p1

    .line 118
    if-nez p1, :cond_7

    .line 119
    .line 120
    goto :goto_1

    .line 121
    :cond_7
    :try_start_3
    invoke-static {}, Lcom/cloud/hisavana/sdk/b4;->b()Lcom/cloud/hisavana/sdk/b4;

    .line 122
    .line 123
    .line 124
    move-result-object p1

    .line 125
    const-string v2, "getDefaultAbTestData AB_CUSTOM_TAB"

    .line 126
    .line 127
    invoke-virtual {p1, v0, v2}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    const-string p1, "{\"ab_name\":\"custom_tab\",\"layer_id\":503,\"req_interval\":259200,\"switch\":\"OPEN\",\"trackEvent\":[\"ssp_landing_page_tracking\",\"ssp_chrome_landing_page\",\"ssp_chrome_stay_landing_page\",\"ssp_cliclk_link_tracking\"]}"

    .line 131
    .line 132
    invoke-static {p1, v4}, Lcom/cloud/sdk/commonutil/gsonutil/GsonUtil;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 133
    .line 134
    .line 135
    move-result-object p1

    .line 136
    check-cast p1, Lcom/cloud/hisavana/sdk/data/bean/response/ccofig/ABTest;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 137
    .line 138
    move-object v1, p1

    .line 139
    :catchall_3
    :cond_8
    :goto_1
    return-object v1
.end method

.method public static final parseABTestData()V
    .locals 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 1
    invoke-static {}, Ll7/a;->e()Ll7/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "abTest"

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Ll7/a;->j(Ljava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-static {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/ccofig/ClientABTestUtil;->convertABJsonToMap(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public static final parseCommonConfigData()V
    .locals 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 1
    invoke-static {}, Ll7/a;->e()Ll7/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "commonConfig"

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Ll7/a;->j(Ljava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-static {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/ccofig/CustomTabUtil;->formatCommonConfig(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public static final parseCustomTabData()V
    .locals 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 1
    invoke-static {}, Ll7/a;->e()Ll7/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "customTab"

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Ll7/a;->j(Ljava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-static {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/ccofig/CustomTabUtil;->formatCCTConfig(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public static final saveCustomConfigs(Lcom/cloud/hisavana/sdk/data/bean/response/ccofig/CustomConfigs;)V
    .locals 5
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/data/bean/response/ccofig/CustomConfigs;->getAbTest()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/data/bean/response/ccofig/CustomConfigs;->getCustomTab()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/data/bean/response/ccofig/CustomConfigs;->getCommonConfig()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/data/bean/response/ccofig/CustomConfigs;->getDcdnUrl()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    invoke-static {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/ccofig/ClientABTestUtil;->convertABJsonToMap(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-static {v1}, Lcom/cloud/hisavana/sdk/data/bean/response/ccofig/CustomTabUtil;->formatCCTConfig(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    invoke-static {v2}, Lcom/cloud/hisavana/sdk/data/bean/response/ccofig/CustomTabUtil;->formatCommonConfig(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    invoke-static {}, Ll7/a;->e()Ll7/a;

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    const-string v4, "abTest"

    .line 33
    .line 34
    invoke-virtual {v3, v4, v0}, Ll7/a;->r(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    invoke-static {}, Ll7/a;->e()Ll7/a;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    const-string v3, "customTab"

    .line 42
    .line 43
    invoke-virtual {v0, v3, v1}, Ll7/a;->r(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    invoke-static {}, Ll7/a;->e()Ll7/a;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    const-string v1, "commonConfig"

    .line 51
    .line 52
    invoke-virtual {v0, v1, v2}, Ll7/a;->r(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    invoke-static {}, Ll7/a;->e()Ll7/a;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    const-string v1, "dcdnUrl"

    .line 60
    .line 61
    invoke-virtual {v0, v1, p0}, Ll7/a;->r(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    :cond_0
    return-void
.end method

.method public static final setUseABTestDefaultData(Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 1
    if-eqz p0, :cond_2

    .line 2
    .line 3
    :try_start_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    if-nez p1, :cond_1

    .line 11
    .line 12
    return-void

    .line 13
    :cond_1
    sget-object v0, Lcom/cloud/hisavana/sdk/data/bean/response/ccofig/CustomConfigManager;->enableUseDefaultABDataMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 14
    .line 15
    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    .line 17
    .line 18
    :catchall_0
    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public final getEnableUseDefaultABDataMap()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/cloud/hisavana/sdk/data/bean/response/ccofig/CustomConfigManager;->enableUseDefaultABDataMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 2
    .line 3
    return-object v0
.end method
