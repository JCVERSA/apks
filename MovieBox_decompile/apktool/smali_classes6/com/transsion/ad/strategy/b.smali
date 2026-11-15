.class public final Lcom/transsion/ad/strategy/b;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/ad/strategy/b$a;
    }
.end annotation


# static fields
.field public static final a:Lcom/transsion/ad/strategy/b;

.field private static final b:Ljava/util/List;

.field private static final c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/transsion/ad/strategy/b;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/transsion/ad/strategy/b;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/transsion/ad/strategy/b;->a:Lcom/transsion/ad/strategy/b;

    .line 7
    .line 8
    new-instance v0, Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lcom/transsion/ad/strategy/b;->b:Ljava/util/List;

    .line 14
    .line 15
    const-string v0, "{\n            \"adSource\": \"ps_candidate\",\n            \"buttonText\": \"Go\",\n            \"categoryCode\": \"1896ff1657b2408daeb264ba6d370bf2\",\n            \"categoryName\": \"Finance\",\n            \"detail\": {\n                \"downloadCount\": \"27073080\",\n                \"iconUrl\": \"https://cdn2.palmplaystore.com/static/59/42d6df6edbe84bdd926fab309aa48261-V02222_512~512.webp?blurhash=LVRpFBkB%5E%23j%5BbHjaoLfQ%7ESa%7C9Jjt\",\n                \"img0\": \"https://cdn2.palmplaystore.com/static/889/0a4a8ed888f04551bcef55e4d31187ff-V02222_288~512.webp?blurhash=LWC%5D6r0f%2BYRO*JkWXos.5q%3FGNGXn\",\n                \"img1\": \"https://cdn2.palmplaystore.com/static/881/b88eab70ee8e445a836225f7fd7c7180-V02222_288~512.webp?blurhash=LqHM4j%7EpXnRj4oI%5Bxtx%5DNeM%7BShae\",\n                \"img2\": \"https://cdn2.palmplaystore.com/static/791/41db2f5cea9549f584c0bae3a7b1b1c9-V02222_288~512.webp?blurhash=LQFj%24.WU4mS7*woHMcRll.tQR%3BR-\",\n                \"img3\": \"https://cdn2.palmplaystore.com/static/181/e99237f24ede40f4a9fd56a08a1c30a5-V02222_288~512.webp?blurhash=LE9ums%7D5Uu9b4p9IPBxZm%25kryDvd\",\n                \"img4\": \"https://cdn2.palmplaystore.com/static/574/2bddbb51c7874e7a906ceb55a75b9124-V02222_288~512.webp?blurhash=LVGTa6n301RP3ERP_3n%23PXo%7DxBW%3D\",\n                \"isOffer\": 1,\n                \"itemID\": \"s_b7801ad36c0a0e4c7fc1f1e72bb04b2d\",\n                \"lan\": \"EN\",\n                \"name\": \"Moniepoint Personal Banking\",\n                \"packageName\": \"com.moniepoint.personal\",\n                \"safeTagList\": [\n                    {\n                        \"icon\": \"https://cdn2.palmplaystore.com/static/673/fa007ff1d5c14939b7d52a5d87247b5f.webp\",\n                        \"id\": 100033,\n                        \"isDeleted\": 0,\n                        \"name\": \"Free\",\n                        \"priority\": 90,\n                        \"type\": 4\n                    }\n                ],\n                \"safetyStyle\": 1,\n                \"score\": \"4.0\",\n                \"screenshotMode\": [\n                    0,\n                    0,\n                    0,\n                    0,\n                    0\n                ],\n                \"simpleDescription\": \"Send money & airtime, request a debit card & manage your savings from one place\",\n                \"sourceSize\": \"71526348\",\n                \"star\": \"4\",\n                \"tagList\": [],\n                \"versionCode\": \"2068\"\n            },\n            \"downloadCount\": 27061226,\n            \"exists\": null,\n            \"gpLink\": \"https://play.google.com/store/apps/details?id=com.moniepoint.personal&hl=en\",\n            \"iconUrl\": \"https://cdn2.palmplaystore.com/static/59/42d6df6edbe84bdd926fab309aa48261-V02222_512~512.webp?blurhash=LVRpFBkB%5E%23j%5BbHjaoLfQ%7ESa%7C9Jjt\",\n            \"id\": 580,\n            \"isOffer\": 1,\n            \"itemID\": \"s_b7801ad36c0a0e4c7fc1f1e72bb04b2d\",\n            \"name\": null,\n            \"offerDesc\": \"\",\n            \"packageName\": \"com.moniepoint.personal\",\n            \"planName\": \"Moniepoint\u4e0a\u7ebf\u6d4b\u8bd520250313-MB\u4fe1\u606f\u6d41\u7ad6\u5c4f\",\n            \"showContent\": \"https://cdn2.palmplaystore.com/static/403/f2d43eb546cb4cd9ad61fe9adec150d4.webp?blurhash=LXE%7B%5EdOtxrR401rpIVtl%7EUtRkCaK\",\n            \"showType\": 9,\n            \"simpleDescription\": \"Send money & airtime, request a debit card & manage your savings from one place\",\n            \"size\": 71526348,\n            \"star\": \"4.0\",\n            \"verifyGoogle\": \"F\",\n            \"versionCode\": 2068,\n            \"versionName\": \"1.23.0\"\n        }"

    .line 16
    .line 17
    sput-object v0, Lcom/transsion/ad/strategy/b;->c:Ljava/lang/String;

    .line 18
    .line 19
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

.method public static synthetic b(Lcom/transsion/ad/strategy/b;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/ad/monopoly/model/AdPlans;ILjava/lang/Object;)V
    .locals 0

    .line 1
    and-int/lit8 p4, p4, 0x4

    .line 2
    .line 3
    if-eqz p4, :cond_0

    .line 4
    .line 5
    const/4 p3, 0x0

    .line 6
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/ad/strategy/b;->a(Ljava/lang/String;Ljava/lang/String;Lcom/transsion/ad/monopoly/model/AdPlans;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method private final d()Ljava/lang/String;
    .locals 2

    .line 1
    const-class v0, Lcom/transsion/ad/strategy/b;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "getSimpleName(...)"

    .line 8
    .line 9
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-object v0
.end method

.method private final e(Lcom/transsion/ad/monopoly/model/AdPlans;)Z
    .locals 4

    .line 1
    sget-object v0, Lcom/transsion/ad/monopoly/plan/b;->a:Lcom/transsion/ad/monopoly/plan/b;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/transsion/ad/monopoly/plan/b;->a(Lcom/transsion/ad/monopoly/model/AdPlans;)Lcom/transsion/ad/monopoly/model/AdMaterialList;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sget-object v1, Lcom/transsion/ad/monopoly/plan/AdPlanSourceManager;->a:Lcom/transsion/ad/monopoly/plan/AdPlanSourceManager;

    .line 8
    .line 9
    invoke-virtual {v1, p1}, Lcom/transsion/ad/monopoly/plan/AdPlanSourceManager;->g(Lcom/transsion/ad/monopoly/model/AdPlans;)Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_2

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/transsion/ad/monopoly/model/AdMaterialList;->getPsLink()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    if-nez v0, :cond_1

    .line 22
    .line 23
    :cond_0
    const-string v0, ""

    .line 24
    .line 25
    :cond_1
    const-class v1, Lcom/transsion/ad/ps/model/RecommendInfo;

    .line 26
    .line 27
    invoke-static {v0, v1}, Lcom/blankj/utilcode/util/o;->d(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    check-cast v0, Lcom/transsion/ad/ps/model/RecommendInfo;

    .line 32
    .line 33
    sget-object v1, Lzh/b;->a:Lzh/b;

    .line 34
    .line 35
    invoke-virtual {p1}, Lcom/transsion/ad/monopoly/model/AdPlans;->getExtAdSlot()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    invoke-virtual {p1}, Lcom/transsion/ad/monopoly/model/AdPlans;->getBidEcpmCent()Ljava/lang/Double;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    const/4 v3, 0x1

    .line 48
    invoke-virtual {v1, v0, v3, v2, p1}, Lzh/b;->p(Lcom/transsion/ad/ps/model/RecommendInfo;ZLjava/lang/String;Ljava/lang/Double;)Z

    .line 49
    .line 50
    .line 51
    return v3

    .line 52
    :cond_2
    const/4 p1, 0x0

    .line 53
    return p1
.end method

.method private final f(Lcom/transsion/ad/monopoly/model/AdPlans;)Z
    .locals 7

    .line 1
    sget-object v0, Lcom/transsion/ad/monopoly/plan/b;->a:Lcom/transsion/ad/monopoly/plan/b;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/transsion/ad/monopoly/plan/b;->a(Lcom/transsion/ad/monopoly/model/AdPlans;)Lcom/transsion/ad/monopoly/model/AdMaterialList;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/transsion/ad/monopoly/model/AdMaterialList;->getDeeplink()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    :cond_0
    sget-object v1, Lcom/transsion/ad/monopoly/plan/AdPlanSourceManager;->a:Lcom/transsion/ad/monopoly/plan/AdPlanSourceManager;

    .line 13
    .line 14
    invoke-virtual {v1, p1}, Lcom/transsion/ad/monopoly/plan/AdPlanSourceManager;->i(Lcom/transsion/ad/monopoly/model/AdPlans;)Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-eqz v1, :cond_f

    .line 19
    .line 20
    const/4 v1, 0x0

    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    invoke-virtual {v0}, Lcom/transsion/ad/monopoly/model/AdMaterialList;->getPsRecommendInfo()Lcom/transsion/ad/ps/model/RecommendInfo;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    goto :goto_0

    .line 28
    :cond_1
    move-object v0, v1

    .line 29
    :goto_0
    if-eqz v0, :cond_2

    .line 30
    .line 31
    invoke-virtual {v0}, Lcom/transsion/ad/ps/model/RecommendInfo;->getGpLink()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    goto :goto_1

    .line 36
    :cond_2
    move-object v2, v1

    .line 37
    :goto_1
    if-eqz v0, :cond_3

    .line 38
    .line 39
    invoke-virtual {v0}, Lcom/transsion/ad/ps/model/RecommendInfo;->getDeepLink()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v3

    .line 43
    goto :goto_2

    .line 44
    :cond_3
    move-object v3, v1

    .line 45
    :goto_2
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 46
    .line 47
    .line 48
    move-result v4

    .line 49
    if-eqz v4, :cond_4

    .line 50
    .line 51
    move-object v3, v2

    .line 52
    :cond_4
    if-eqz v0, :cond_5

    .line 53
    .line 54
    invoke-virtual {v0}, Lcom/transsion/ad/ps/model/RecommendInfo;->getAdType()Ljava/lang/Integer;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    :cond_5
    sget-object v4, Lcom/transsion/ad/ps/model/PSAdTypeEnum;->PS_AD_TYPE_USER_RETENTION_1:Lcom/transsion/ad/ps/model/PSAdTypeEnum;

    .line 59
    .line 60
    invoke-virtual {v4}, Lcom/transsion/ad/ps/model/PSAdTypeEnum;->getValue()I

    .line 61
    .line 62
    .line 63
    move-result v4

    .line 64
    const/4 v5, 0x1

    .line 65
    if-nez v1, :cond_6

    .line 66
    .line 67
    goto :goto_4

    .line 68
    :cond_6
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 69
    .line 70
    .line 71
    move-result v6

    .line 72
    if-ne v6, v4, :cond_a

    .line 73
    .line 74
    invoke-virtual {p0, v3}, Lcom/transsion/ad/strategy/b;->g(Ljava/lang/String;)Z

    .line 75
    .line 76
    .line 77
    move-result v1

    .line 78
    if-nez v1, :cond_8

    .line 79
    .line 80
    sget-object v1, Lzh/b;->a:Lzh/b;

    .line 81
    .line 82
    invoke-virtual {v1}, Lzh/b;->n()Z

    .line 83
    .line 84
    .line 85
    move-result v3

    .line 86
    if-eqz v3, :cond_7

    .line 87
    .line 88
    invoke-virtual {p1}, Lcom/transsion/ad/monopoly/model/AdPlans;->getExtAdSlot()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v2

    .line 92
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v2

    .line 96
    invoke-virtual {p1}, Lcom/transsion/ad/monopoly/model/AdPlans;->getBidEcpmCent()Ljava/lang/Double;

    .line 97
    .line 98
    .line 99
    move-result-object p1

    .line 100
    invoke-virtual {v1, v0, v5, v2, p1}, Lzh/b;->p(Lcom/transsion/ad/ps/model/RecommendInfo;ZLjava/lang/String;Ljava/lang/Double;)Z

    .line 101
    .line 102
    .line 103
    goto :goto_5

    .line 104
    :cond_7
    invoke-virtual {p0, v2}, Lcom/transsion/ad/strategy/b;->g(Ljava/lang/String;)Z

    .line 105
    .line 106
    .line 107
    sget-object v0, Lcom/transsion/ad/ps/attribution/AttributionProduceManager;->c:Lcom/transsion/ad/ps/attribution/AttributionProduceManager;

    .line 108
    .line 109
    sget-object v1, Lcom/transsion/ad/db/pslink/AttributionPoint$AttributionType;->GP_CLICK:Lcom/transsion/ad/db/pslink/AttributionPoint$AttributionType;

    .line 110
    .line 111
    invoke-virtual {v0, p1, v1}, Lcom/transsion/ad/ps/attribution/AttributionProduceManager;->l(Lcom/transsion/ad/monopoly/model/AdPlans;Lcom/transsion/ad/db/pslink/AttributionPoint$AttributionType;)V

    .line 112
    .line 113
    .line 114
    goto :goto_5

    .line 115
    :cond_8
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 116
    .line 117
    .line 118
    move-result v0

    .line 119
    if-eqz v0, :cond_9

    .line 120
    .line 121
    sget-object v0, Lcom/transsion/ad/db/pslink/AttributionPoint$AttributionType;->GP_CLICK:Lcom/transsion/ad/db/pslink/AttributionPoint$AttributionType;

    .line 122
    .line 123
    goto :goto_3

    .line 124
    :cond_9
    sget-object v0, Lcom/transsion/ad/db/pslink/AttributionPoint$AttributionType;->CLICK:Lcom/transsion/ad/db/pslink/AttributionPoint$AttributionType;

    .line 125
    .line 126
    :goto_3
    sget-object v1, Lcom/transsion/ad/ps/attribution/AttributionProduceManager;->c:Lcom/transsion/ad/ps/attribution/AttributionProduceManager;

    .line 127
    .line 128
    invoke-virtual {v1, p1, v0}, Lcom/transsion/ad/ps/attribution/AttributionProduceManager;->l(Lcom/transsion/ad/monopoly/model/AdPlans;Lcom/transsion/ad/db/pslink/AttributionPoint$AttributionType;)V

    .line 129
    .line 130
    .line 131
    goto :goto_5

    .line 132
    :cond_a
    :goto_4
    sget-object v3, Lcom/transsion/ad/ps/model/PSAdTypeEnum;->PS_AD_TYPE_USER_ACQUISITION_0:Lcom/transsion/ad/ps/model/PSAdTypeEnum;

    .line 133
    .line 134
    invoke-virtual {v3}, Lcom/transsion/ad/ps/model/PSAdTypeEnum;->getValue()I

    .line 135
    .line 136
    .line 137
    move-result v3

    .line 138
    if-nez v1, :cond_b

    .line 139
    .line 140
    goto :goto_5

    .line 141
    :cond_b
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 142
    .line 143
    .line 144
    move-result v1

    .line 145
    if-ne v1, v3, :cond_e

    .line 146
    .line 147
    sget-object v1, Lzh/b;->a:Lzh/b;

    .line 148
    .line 149
    invoke-virtual {v1}, Lzh/b;->n()Z

    .line 150
    .line 151
    .line 152
    move-result v3

    .line 153
    if-eqz v3, :cond_c

    .line 154
    .line 155
    invoke-virtual {p1}, Lcom/transsion/ad/monopoly/model/AdPlans;->getExtAdSlot()Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object v2

    .line 159
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object v2

    .line 163
    invoke-virtual {p1}, Lcom/transsion/ad/monopoly/model/AdPlans;->getBidEcpmCent()Ljava/lang/Double;

    .line 164
    .line 165
    .line 166
    move-result-object p1

    .line 167
    invoke-virtual {v1, v0, v5, v2, p1}, Lzh/b;->p(Lcom/transsion/ad/ps/model/RecommendInfo;ZLjava/lang/String;Ljava/lang/Double;)Z

    .line 168
    .line 169
    .line 170
    goto :goto_5

    .line 171
    :cond_c
    invoke-virtual {p0, v2}, Lcom/transsion/ad/strategy/b;->g(Ljava/lang/String;)Z

    .line 172
    .line 173
    .line 174
    sget-object v1, Lcom/transsion/ad/ps/attribution/AttributionProduceManager;->c:Lcom/transsion/ad/ps/attribution/AttributionProduceManager;

    .line 175
    .line 176
    sget-object v2, Lcom/transsion/ad/db/pslink/AttributionPoint$AttributionType;->GP_CLICK:Lcom/transsion/ad/db/pslink/AttributionPoint$AttributionType;

    .line 177
    .line 178
    invoke-virtual {v1, p1, v2}, Lcom/transsion/ad/ps/attribution/AttributionProduceManager;->l(Lcom/transsion/ad/monopoly/model/AdPlans;Lcom/transsion/ad/db/pslink/AttributionPoint$AttributionType;)V

    .line 179
    .line 180
    .line 181
    sget-object p1, Lcom/transsion/ad/ps/installed/AppInstallManager;->a:Lcom/transsion/ad/ps/installed/AppInstallManager;

    .line 182
    .line 183
    invoke-virtual {v0}, Lcom/transsion/ad/ps/model/RecommendInfo;->getPackageName()Ljava/lang/String;

    .line 184
    .line 185
    .line 186
    move-result-object v0

    .line 187
    if-nez v0, :cond_d

    .line 188
    .line 189
    const-string v0, "PS_GP\u6ca1\u6709\u83b7\u53d6\u5230\u5305\u540d"

    .line 190
    .line 191
    :cond_d
    invoke-virtual {p1, v0}, Lcom/transsion/ad/ps/installed/AppInstallManager;->a(Ljava/lang/String;)Lcom/transsion/ad/db/pslink/AppInstalledBean;

    .line 192
    .line 193
    .line 194
    move-result-object v0

    .line 195
    const-string v1, "MB"

    .line 196
    .line 197
    invoke-virtual {v0, v1}, Lcom/transsion/ad/db/pslink/AppInstalledBean;->setSource(Ljava/lang/String;)V

    .line 198
    .line 199
    .line 200
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    .line 201
    .line 202
    .line 203
    move-result-object v1

    .line 204
    const-string v2, "getApp(...)"

    .line 205
    .line 206
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 207
    .line 208
    .line 209
    invoke-virtual {p1, v1, v0}, Lcom/transsion/ad/ps/installed/AppInstallManager;->e(Landroid/content/Context;Lcom/transsion/ad/db/pslink/AppInstalledBean;)V

    .line 210
    .line 211
    .line 212
    :cond_e
    :goto_5
    return v5

    .line 213
    :cond_f
    const/4 p1, 0x0

    .line 214
    return p1
.end method

.method private final h(Ljava/lang/String;Lcom/transsion/ad/strategy/AdOverridePendingTransitionManager$AdOverridePendingTransitionEnum;Lcom/transsion/ad/monopoly/model/AdPlans;Ljava/lang/String;)V
    .locals 10

    .line 1
    sget-object v0, Lyg/l;->a:Lyg/l;

    .line 2
    .line 3
    invoke-virtual {v0}, Lyg/l;->e()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x0

    .line 8
    if-eqz v1, :cond_a

    .line 9
    .line 10
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    const-string v3, "getApp(...)"

    .line 15
    .line 16
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v1}, Lyg/l;->j(Landroid/content/Context;)Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-nez v0, :cond_0

    .line 24
    .line 25
    goto/16 :goto_3

    .line 26
    .line 27
    :cond_0
    sget-object v0, Lcom/transsion/ad/strategy/AdUrlParameterManager;->a:Lcom/transsion/ad/strategy/AdUrlParameterManager;

    .line 28
    .line 29
    invoke-virtual {v0, p1}, Lcom/transsion/ad/strategy/AdUrlParameterManager;->a(Ljava/lang/String;)Z

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    if-eqz v1, :cond_2

    .line 34
    .line 35
    if-eqz p1, :cond_1

    .line 36
    .line 37
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    :cond_1
    new-instance p1, Landroid/content/Intent;

    .line 42
    .line 43
    const-string p2, "android.intent.action.VIEW"

    .line 44
    .line 45
    invoke-direct {p1, p2, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 46
    .line 47
    .line 48
    const/high16 p2, 0x10000000

    .line 49
    .line 50
    invoke-virtual {p1, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 51
    .line 52
    .line 53
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    .line 54
    .line 55
    .line 56
    move-result-object p2

    .line 57
    invoke-virtual {p2, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 58
    .line 59
    .line 60
    return-void

    .line 61
    :cond_2
    const-string v1, ""

    .line 62
    .line 63
    if-nez p1, :cond_3

    .line 64
    .line 65
    move-object v3, v1

    .line 66
    goto :goto_0

    .line 67
    :cond_3
    move-object v3, p1

    .line 68
    :goto_0
    invoke-virtual {v0, v3, p4}, Lcom/transsion/ad/strategy/AdUrlParameterManager;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    sget-object v3, Lxh/a;->a:Lxh/a;

    .line 73
    .line 74
    if-nez p4, :cond_4

    .line 75
    .line 76
    move-object v4, v1

    .line 77
    goto :goto_1

    .line 78
    :cond_4
    move-object v4, p4

    .line 79
    :goto_1
    invoke-direct {p0}, Lcom/transsion/ad/strategy/b;->d()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v1

    .line 83
    if-eqz p3, :cond_5

    .line 84
    .line 85
    invoke-virtual {p3}, Lcom/transsion/ad/monopoly/model/AdPlans;->getH5LinkOpenByCct()Z

    .line 86
    .line 87
    .line 88
    move-result v2

    .line 89
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 90
    .line 91
    .line 92
    move-result-object v2

    .line 93
    :cond_5
    new-instance v5, Ljava/lang/StringBuilder;

    .line 94
    .line 95
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 96
    .line 97
    .line 98
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    const-string v1, " --> jumpH5() --> h5LinkOpenByCCT = "

    .line 102
    .line 103
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    const-string v1, " --> newUrl = "

    .line 110
    .line 111
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v5

    .line 121
    const/16 v8, 0x8

    .line 122
    .line 123
    const/4 v9, 0x0

    .line 124
    const/4 v6, 0x6

    .line 125
    const/4 v7, 0x0

    .line 126
    invoke-static/range {v3 .. v9}, Lxh/a;->m(Lxh/a;Ljava/lang/String;Ljava/lang/String;IZILjava/lang/Object;)V

    .line 127
    .line 128
    .line 129
    const/4 v1, 0x1

    .line 130
    if-eqz p3, :cond_7

    .line 131
    .line 132
    invoke-virtual {p3}, Lcom/transsion/ad/monopoly/model/AdPlans;->getH5LinkOpenByCct()Z

    .line 133
    .line 134
    .line 135
    move-result p3

    .line 136
    if-ne p3, v1, :cond_7

    .line 137
    .line 138
    if-eqz p1, :cond_9

    .line 139
    .line 140
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 141
    .line 142
    .line 143
    move-result p2

    .line 144
    if-nez p2, :cond_6

    .line 145
    .line 146
    goto :goto_2

    .line 147
    :cond_6
    invoke-virtual {p0, p1}, Lcom/transsion/ad/strategy/b;->l(Ljava/lang/String;)V

    .line 148
    .line 149
    .line 150
    goto :goto_2

    .line 151
    :cond_7
    sget-object p1, Lcom/transsion/ad/MBAd;->a:Lcom/transsion/ad/MBAd;

    .line 152
    .line 153
    invoke-virtual {p1}, Lcom/transsion/ad/MBAd;->b()Lcom/transsion/ad/MBAd$a;

    .line 154
    .line 155
    .line 156
    move-result-object p3

    .line 157
    if-eqz p3, :cond_8

    .line 158
    .line 159
    invoke-virtual {p3}, Lcom/transsion/ad/MBAd$a;->h()Z

    .line 160
    .line 161
    .line 162
    move-result p3

    .line 163
    if-ne p3, v1, :cond_8

    .line 164
    .line 165
    invoke-virtual {p1}, Lcom/transsion/ad/MBAd;->b()Lcom/transsion/ad/MBAd$a;

    .line 166
    .line 167
    .line 168
    move-result-object p1

    .line 169
    if-eqz p1, :cond_9

    .line 170
    .line 171
    invoke-virtual {p1}, Lcom/transsion/ad/MBAd$a;->d()Lrh/a;

    .line 172
    .line 173
    .line 174
    move-result-object p1

    .line 175
    if-eqz p1, :cond_9

    .line 176
    .line 177
    invoke-interface {p1, v0, p2}, Lrh/a;->a(Ljava/lang/String;Lcom/transsion/ad/strategy/AdOverridePendingTransitionManager$AdOverridePendingTransitionEnum;)V

    .line 178
    .line 179
    .line 180
    goto :goto_2

    .line 181
    :cond_8
    sget-object p1, Lcom/transsion/ad/web/AdWebActivity;->a:Lcom/transsion/ad/web/AdWebActivity$a;

    .line 182
    .line 183
    invoke-virtual {p1, v0, p2, p4}, Lcom/transsion/ad/web/AdWebActivity$a;->a(Ljava/lang/String;Lcom/transsion/ad/strategy/AdOverridePendingTransitionManager$AdOverridePendingTransitionEnum;Ljava/lang/String;)V

    .line 184
    .line 185
    .line 186
    :cond_9
    :goto_2
    return-void

    .line 187
    :cond_a
    :goto_3
    invoke-static {}, Lcom/blankj/utilcode/util/a;->b()Landroid/app/Activity;

    .line 188
    .line 189
    .line 190
    move-result-object p1

    .line 191
    if-eqz p1, :cond_b

    .line 192
    .line 193
    sget p2, Lcom/transsion/ad/R$string;->ad_no_network:I

    .line 194
    .line 195
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 196
    .line 197
    .line 198
    move-result-object v2

    .line 199
    :cond_b
    const/4 p1, 0x0

    .line 200
    new-array p1, p1, [Ljava/lang/Object;

    .line 201
    .line 202
    invoke-static {v2, p1}, Lcom/blankj/utilcode/util/ToastUtils;->s(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 203
    .line 204
    .line 205
    return-void
.end method

.method static synthetic i(Lcom/transsion/ad/strategy/b;Ljava/lang/String;Lcom/transsion/ad/strategy/AdOverridePendingTransitionManager$AdOverridePendingTransitionEnum;Lcom/transsion/ad/monopoly/model/AdPlans;Ljava/lang/String;ILjava/lang/Object;)V
    .locals 0

    .line 1
    and-int/lit8 p6, p5, 0x2

    .line 2
    .line 3
    if-eqz p6, :cond_0

    .line 4
    .line 5
    const/4 p2, 0x0

    .line 6
    :cond_0
    and-int/lit8 p5, p5, 0x8

    .line 7
    .line 8
    if-eqz p5, :cond_1

    .line 9
    .line 10
    const-string p4, ""

    .line 11
    .line 12
    :cond_1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/transsion/ad/strategy/b;->h(Ljava/lang/String;Lcom/transsion/ad/strategy/AdOverridePendingTransitionManager$AdOverridePendingTransitionEnum;Lcom/transsion/ad/monopoly/model/AdPlans;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method private final n(Lcom/transsion/ad/monopoly/model/AdPlans;)Z
    .locals 4

    .line 1
    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 2
    .line 3
    sget-object v0, Lcom/transsion/ad/monopoly/plan/AdPlanSourceManager;->a:Lcom/transsion/ad/monopoly/plan/AdPlanSourceManager;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/transsion/ad/monopoly/plan/AdPlanSourceManager;->g(Lcom/transsion/ad/monopoly/model/AdPlans;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x0

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    return v1

    .line 13
    :cond_0
    if-eqz p1, :cond_1

    .line 14
    .line 15
    invoke-virtual {p1}, Lcom/transsion/ad/monopoly/model/AdPlans;->getAdMaterialList()Ljava/util/List;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    goto :goto_0

    .line 20
    :catchall_0
    move-exception p1

    .line 21
    goto :goto_2

    .line 22
    :cond_1
    const/4 v0, 0x0

    .line 23
    :goto_0
    move-object v2, v0

    .line 24
    check-cast v2, Ljava/util/Collection;

    .line 25
    .line 26
    if-eqz v2, :cond_4

    .line 27
    .line 28
    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    if-eqz v2, :cond_2

    .line 33
    .line 34
    goto :goto_1

    .line 35
    :cond_2
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    check-cast v0, Lcom/transsion/ad/monopoly/model/AdMaterialList;

    .line 40
    .line 41
    invoke-virtual {v0}, Lcom/transsion/ad/monopoly/model/AdMaterialList;->getPsLink()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 46
    .line 47
    .line 48
    move-result v2

    .line 49
    if-eqz v2, :cond_3

    .line 50
    .line 51
    return v1

    .line 52
    :cond_3
    const-class v1, Lcom/transsion/ad/ps/model/RecommendInfo;

    .line 53
    .line 54
    invoke-static {v0, v1}, Lcom/blankj/utilcode/util/o;->d(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    check-cast v0, Lcom/transsion/ad/ps/model/RecommendInfo;

    .line 59
    .line 60
    sget-object v1, Lzh/b;->a:Lzh/b;

    .line 61
    .line 62
    invoke-virtual {p1}, Lcom/transsion/ad/monopoly/model/AdPlans;->getExtAdSlot()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v2

    .line 66
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v2

    .line 70
    invoke-virtual {p1}, Lcom/transsion/ad/monopoly/model/AdPlans;->getBidEcpmCent()Ljava/lang/Double;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    const/4 v3, 0x1

    .line 75
    invoke-virtual {v1, v0, v3, v2, p1}, Lzh/b;->p(Lcom/transsion/ad/ps/model/RecommendInfo;ZLjava/lang/String;Ljava/lang/Double;)Z

    .line 76
    .line 77
    .line 78
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 79
    .line 80
    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 84
    goto :goto_3

    .line 85
    :cond_4
    :goto_1
    return v1

    .line 86
    :goto_2
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 87
    .line 88
    invoke-static {p1}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    move-result-object p1

    .line 96
    :goto_3
    invoke-static {p1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    if-nez v0, :cond_5

    .line 101
    .line 102
    goto :goto_4

    .line 103
    :cond_5
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 104
    .line 105
    :goto_4
    check-cast p1, Ljava/lang/Boolean;

    .line 106
    .line 107
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 108
    .line 109
    .line 110
    move-result p1

    .line 111
    return p1
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;Lcom/transsion/ad/monopoly/model/AdPlans;)V
    .locals 7

    .line 1
    sget-object v0, Lxh/a;->a:Lxh/a;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v2, "AdClickManager --> adClick() --> deeplink = "

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string v2, " --> h5Url = "

    .line 17
    .line 18
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    const/16 v5, 0xd

    .line 29
    .line 30
    const/4 v6, 0x0

    .line 31
    const/4 v1, 0x0

    .line 32
    const/4 v3, 0x0

    .line 33
    const/4 v4, 0x0

    .line 34
    invoke-static/range {v0 .. v6}, Lxh/a;->e(Lxh/a;Ljava/lang/String;Ljava/lang/String;IZILjava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    invoke-direct {p0, p3}, Lcom/transsion/ad/strategy/b;->n(Lcom/transsion/ad/monopoly/model/AdPlans;)Z

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    if-eqz v0, :cond_0

    .line 42
    .line 43
    return-void

    .line 44
    :cond_0
    const/4 v0, 0x0

    .line 45
    const/4 v1, 0x0

    .line 46
    if-eqz p3, :cond_1

    .line 47
    .line 48
    invoke-virtual {p3}, Lcom/transsion/ad/monopoly/model/AdPlans;->getAdMaterialList()Ljava/util/List;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    if-eqz v2, :cond_1

    .line 53
    .line 54
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    check-cast v2, Lcom/transsion/ad/monopoly/model/AdMaterialList;

    .line 59
    .line 60
    if-eqz v2, :cond_1

    .line 61
    .line 62
    invoke-virtual {v2}, Lcom/transsion/ad/monopoly/model/AdMaterialList;->getPsRecommendInfo()Lcom/transsion/ad/ps/model/RecommendInfo;

    .line 63
    .line 64
    .line 65
    move-result-object v2

    .line 66
    if-eqz v2, :cond_1

    .line 67
    .line 68
    invoke-virtual {v2}, Lcom/transsion/ad/ps/model/RecommendInfo;->getGpLink()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v2

    .line 72
    goto :goto_0

    .line 73
    :cond_1
    move-object v2, v1

    .line 74
    :goto_0
    sget-object v3, Lcom/transsion/ad/monopoly/plan/AdPlanSourceManager;->a:Lcom/transsion/ad/monopoly/plan/AdPlanSourceManager;

    .line 75
    .line 76
    invoke-virtual {v3, p3}, Lcom/transsion/ad/monopoly/plan/AdPlanSourceManager;->i(Lcom/transsion/ad/monopoly/model/AdPlans;)Z

    .line 77
    .line 78
    .line 79
    move-result v3

    .line 80
    if-eqz v3, :cond_6

    .line 81
    .line 82
    sget-object p1, Lzh/b;->a:Lzh/b;

    .line 83
    .line 84
    invoke-virtual {p1}, Lzh/b;->n()Z

    .line 85
    .line 86
    .line 87
    move-result p2

    .line 88
    const/4 v3, 0x1

    .line 89
    if-nez p2, :cond_2

    .line 90
    .line 91
    if-eqz v2, :cond_2

    .line 92
    .line 93
    const-string p2, "play.google.com"

    .line 94
    .line 95
    const/4 v4, 0x2

    .line 96
    invoke-static {v2, p2, v0, v4, v1}, Lkotlin/text/StringsKt;->c0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    .line 97
    .line 98
    .line 99
    move-result p2

    .line 100
    if-ne p2, v3, :cond_2

    .line 101
    .line 102
    invoke-virtual {p0, v2}, Lcom/transsion/ad/strategy/b;->g(Ljava/lang/String;)Z

    .line 103
    .line 104
    .line 105
    goto :goto_3

    .line 106
    :cond_2
    if-eqz p3, :cond_3

    .line 107
    .line 108
    invoke-virtual {p3}, Lcom/transsion/ad/monopoly/model/AdPlans;->getAdMaterialList()Ljava/util/List;

    .line 109
    .line 110
    .line 111
    move-result-object p2

    .line 112
    if-eqz p2, :cond_3

    .line 113
    .line 114
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 115
    .line 116
    .line 117
    move-result-object p2

    .line 118
    check-cast p2, Lcom/transsion/ad/monopoly/model/AdMaterialList;

    .line 119
    .line 120
    if-eqz p2, :cond_3

    .line 121
    .line 122
    invoke-virtual {p2}, Lcom/transsion/ad/monopoly/model/AdMaterialList;->getPsRecommendInfo()Lcom/transsion/ad/ps/model/RecommendInfo;

    .line 123
    .line 124
    .line 125
    move-result-object p2

    .line 126
    goto :goto_1

    .line 127
    :cond_3
    move-object p2, v1

    .line 128
    :goto_1
    if-eqz p3, :cond_4

    .line 129
    .line 130
    invoke-virtual {p3}, Lcom/transsion/ad/monopoly/model/AdPlans;->getExtAdSlot()Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object v0

    .line 134
    goto :goto_2

    .line 135
    :cond_4
    move-object v0, v1

    .line 136
    :goto_2
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object v0

    .line 140
    if-eqz p3, :cond_5

    .line 141
    .line 142
    invoke-virtual {p3}, Lcom/transsion/ad/monopoly/model/AdPlans;->getBidEcpmCent()Ljava/lang/Double;

    .line 143
    .line 144
    .line 145
    move-result-object v1

    .line 146
    :cond_5
    invoke-virtual {p1, p2, v3, v0, v1}, Lzh/b;->p(Lcom/transsion/ad/ps/model/RecommendInfo;ZLjava/lang/String;Ljava/lang/Double;)Z

    .line 147
    .line 148
    .line 149
    goto :goto_3

    .line 150
    :cond_6
    invoke-virtual {p0, p1}, Lcom/transsion/ad/strategy/b;->g(Ljava/lang/String;)Z

    .line 151
    .line 152
    .line 153
    move-result p1

    .line 154
    if-nez p1, :cond_7

    .line 155
    .line 156
    const/16 v5, 0xa

    .line 157
    .line 158
    const/4 v6, 0x0

    .line 159
    const/4 v2, 0x0

    .line 160
    const/4 v4, 0x0

    .line 161
    move-object v0, p0

    .line 162
    move-object v1, p2

    .line 163
    move-object v3, p3

    .line 164
    invoke-static/range {v0 .. v6}, Lcom/transsion/ad/strategy/b;->i(Lcom/transsion/ad/strategy/b;Ljava/lang/String;Lcom/transsion/ad/strategy/AdOverridePendingTransitionManager$AdOverridePendingTransitionEnum;Lcom/transsion/ad/monopoly/model/AdPlans;Ljava/lang/String;ILjava/lang/Object;)V

    .line 165
    .line 166
    .line 167
    :cond_7
    :goto_3
    return-void
.end method

.method public final c(Lcom/transsion/ad/strategy/b$a;)V
    .locals 2

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    sget-object v0, Lcom/transsion/ad/strategy/b;->b:Ljava/util/List;

    .line 5
    .line 6
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    if-nez v1, :cond_1

    .line 11
    .line 12
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    :cond_1
    return-void
.end method

.method public final g(Ljava/lang/String;)Z
    .locals 8

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    return p1

    .line 9
    :cond_0
    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 10
    .line 11
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    new-instance v0, Landroid/content/Intent;

    .line 16
    .line 17
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 21
    .line 22
    .line 23
    const-string p1, "android.intent.action.VIEW"

    .line 24
    .line 25
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 26
    .line 27
    .line 28
    const/high16 p1, 0x10000000

    .line 29
    .line 30
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 31
    .line 32
    .line 33
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 38
    .line 39
    .line 40
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 41
    .line 42
    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    goto :goto_0

    .line 47
    :catchall_0
    move-exception p1

    .line 48
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 49
    .line 50
    invoke-static {p1}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    :goto_0
    invoke-static {p1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    if-nez v0, :cond_1

    .line 63
    .line 64
    goto :goto_1

    .line 65
    :cond_1
    sget-object v1, Lxh/a;->a:Lxh/a;

    .line 66
    .line 67
    sget-object p1, Lcom/transsion/ad/strategy/b;->a:Lcom/transsion/ad/strategy/b;

    .line 68
    .line 69
    invoke-direct {p1}, Lcom/transsion/ad/strategy/b;->d()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    new-instance v2, Ljava/lang/StringBuilder;

    .line 74
    .line 75
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 76
    .line 77
    .line 78
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    const-string p1, " --> jumpDeeplink() --> e = "

    .line 82
    .line 83
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v3

    .line 93
    const/16 v6, 0xd

    .line 94
    .line 95
    const/4 v7, 0x0

    .line 96
    const/4 v2, 0x0

    .line 97
    const/4 v4, 0x0

    .line 98
    const/4 v5, 0x0

    .line 99
    invoke-static/range {v1 .. v7}, Lxh/a;->e(Lxh/a;Ljava/lang/String;Ljava/lang/String;IZILjava/lang/Object;)V

    .line 100
    .line 101
    .line 102
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 103
    .line 104
    :goto_1
    check-cast p1, Ljava/lang/Boolean;

    .line 105
    .line 106
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 107
    .line 108
    .line 109
    move-result p1

    .line 110
    return p1
.end method

.method public final j(Lcom/transsion/ad/monopoly/model/AdPlans;Lcom/transsion/ad/strategy/AdOverridePendingTransitionManager$AdOverridePendingTransitionEnum;Ljava/lang/String;Ljava/lang/String;)V
    .locals 11

    .line 1
    const-string v0, "logTag"

    .line 2
    .line 3
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "sceneId"

    .line 7
    .line 8
    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, " --> onBiddingAdClick() --> sceneId = "

    .line 12
    .line 13
    if-nez p1, :cond_0

    .line 14
    .line 15
    sget-object v1, Lxh/a;->a:Lxh/a;

    .line 16
    .line 17
    invoke-direct {p0}, Lcom/transsion/ad/strategy/b;->d()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    new-instance p2, Ljava/lang/StringBuilder;

    .line 22
    .line 23
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    const-string p1, " --> adPlan == null"

    .line 36
    .line 37
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v3

    .line 44
    const/16 v6, 0x8

    .line 45
    .line 46
    const/4 v7, 0x0

    .line 47
    const/4 v4, 0x6

    .line 48
    const/4 v5, 0x0

    .line 49
    move-object v2, p3

    .line 50
    invoke-static/range {v1 .. v7}, Lxh/a;->m(Lxh/a;Ljava/lang/String;Ljava/lang/String;IZILjava/lang/Object;)V

    .line 51
    .line 52
    .line 53
    return-void

    .line 54
    :cond_0
    sget-object v1, Lcom/transsion/ad/monopoly/plan/b;->a:Lcom/transsion/ad/monopoly/plan/b;

    .line 55
    .line 56
    invoke-virtual {v1, p1}, Lcom/transsion/ad/monopoly/plan/b;->a(Lcom/transsion/ad/monopoly/model/AdPlans;)Lcom/transsion/ad/monopoly/model/AdMaterialList;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    if-nez v1, :cond_1

    .line 61
    .line 62
    sget-object v2, Lxh/a;->a:Lxh/a;

    .line 63
    .line 64
    invoke-direct {p0}, Lcom/transsion/ad/strategy/b;->d()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    new-instance p2, Ljava/lang/StringBuilder;

    .line 69
    .line 70
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 71
    .line 72
    .line 73
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    const-string p1, " --> adMaterial == null"

    .line 83
    .line 84
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v4

    .line 91
    const/16 v7, 0x8

    .line 92
    .line 93
    const/4 v8, 0x0

    .line 94
    const/4 v5, 0x6

    .line 95
    const/4 v6, 0x0

    .line 96
    move-object v3, p3

    .line 97
    invoke-static/range {v2 .. v8}, Lxh/a;->m(Lxh/a;Ljava/lang/String;Ljava/lang/String;IZILjava/lang/Object;)V

    .line 98
    .line 99
    .line 100
    return-void

    .line 101
    :cond_1
    invoke-virtual {p0, p1}, Lcom/transsion/ad/strategy/b;->k(Lcom/transsion/ad/monopoly/model/AdPlans;)V

    .line 102
    .line 103
    .line 104
    invoke-virtual {v1}, Lcom/transsion/ad/monopoly/model/AdMaterialList;->getDeeplink()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v2

    .line 108
    invoke-virtual {v1}, Lcom/transsion/ad/monopoly/model/AdMaterialList;->getH5Link()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v1

    .line 112
    invoke-virtual {p1}, Lcom/transsion/ad/monopoly/model/AdPlans;->getAdSource()Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v3

    .line 116
    sget-object v4, Lxh/a;->a:Lxh/a;

    .line 117
    .line 118
    invoke-direct {p0}, Lcom/transsion/ad/strategy/b;->d()Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v5

    .line 122
    invoke-virtual {p1}, Lcom/transsion/ad/monopoly/model/AdPlans;->getName()Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v6

    .line 126
    new-instance v7, Ljava/lang/StringBuilder;

    .line 127
    .line 128
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 129
    .line 130
    .line 131
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    .line 133
    .line 134
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    invoke-virtual {v7, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    .line 139
    .line 140
    const-string p4, " --> name = "

    .line 141
    .line 142
    invoke-virtual {v7, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    .line 144
    .line 145
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    .line 147
    .line 148
    const-string p4, " --> adSource = "

    .line 149
    .line 150
    invoke-virtual {v7, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    .line 152
    .line 153
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    .line 155
    .line 156
    const-string p4, " --> deeplink = "

    .line 157
    .line 158
    invoke-virtual {v7, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    .line 160
    .line 161
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    .line 163
    .line 164
    const-string p4, " --> h5Url = "

    .line 165
    .line 166
    invoke-virtual {v7, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    .line 168
    .line 169
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    .line 171
    .line 172
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    move-result-object v6

    .line 176
    const/16 v9, 0xc

    .line 177
    .line 178
    const/4 v10, 0x0

    .line 179
    const/4 v7, 0x0

    .line 180
    const/4 v8, 0x0

    .line 181
    move-object v5, p3

    .line 182
    invoke-static/range {v4 .. v10}, Lxh/a;->m(Lxh/a;Ljava/lang/String;Ljava/lang/String;IZILjava/lang/Object;)V

    .line 183
    .line 184
    .line 185
    invoke-direct {p0, p1}, Lcom/transsion/ad/strategy/b;->e(Lcom/transsion/ad/monopoly/model/AdPlans;)Z

    .line 186
    .line 187
    .line 188
    move-result p4

    .line 189
    if-eqz p4, :cond_2

    .line 190
    .line 191
    return-void

    .line 192
    :cond_2
    invoke-direct {p0, p1}, Lcom/transsion/ad/strategy/b;->f(Lcom/transsion/ad/monopoly/model/AdPlans;)Z

    .line 193
    .line 194
    .line 195
    move-result p4

    .line 196
    if-eqz p4, :cond_3

    .line 197
    .line 198
    return-void

    .line 199
    :cond_3
    invoke-virtual {p0, v2}, Lcom/transsion/ad/strategy/b;->g(Ljava/lang/String;)Z

    .line 200
    .line 201
    .line 202
    move-result p4

    .line 203
    if-nez p4, :cond_4

    .line 204
    .line 205
    invoke-direct {p0, v1, p2, p1, p3}, Lcom/transsion/ad/strategy/b;->h(Ljava/lang/String;Lcom/transsion/ad/strategy/AdOverridePendingTransitionManager$AdOverridePendingTransitionEnum;Lcom/transsion/ad/monopoly/model/AdPlans;Ljava/lang/String;)V

    .line 206
    .line 207
    .line 208
    :cond_4
    return-void
.end method

.method public final k(Lcom/transsion/ad/monopoly/model/AdPlans;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/transsion/ad/strategy/b;->b:Ljava/util/List;

    .line 2
    .line 3
    check-cast v0, Ljava/lang/Iterable;

    .line 4
    .line 5
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    check-cast v1, Lcom/transsion/ad/strategy/b$a;

    .line 20
    .line 21
    invoke-interface {v1, p1}, Lcom/transsion/ad/strategy/b$a;->onAdClick(Lcom/transsion/ad/monopoly/model/AdPlans;)V

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    return-void
.end method

.method public final l(Ljava/lang/String;)V
    .locals 9

    .line 1
    const-string v0, "h5Url"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 7
    .line 8
    invoke-static {}, Lcom/blankj/utilcode/util/a;->b()Landroid/app/Activity;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    if-eqz v2, :cond_0

    .line 13
    .line 14
    sget-object v1, Lcom/transsion/ad/web/cct/CustomTabsHelper;->a:Lcom/transsion/ad/web/cct/CustomTabsHelper$Companion;

    .line 15
    .line 16
    new-instance v0, Landroidx/browser/customtabs/d$b;

    .line 17
    .line 18
    invoke-direct {v0}, Landroidx/browser/customtabs/d$b;-><init>()V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Landroidx/browser/customtabs/d$b;->a()Landroidx/browser/customtabs/d;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    const-string v0, "build(...)"

    .line 26
    .line 27
    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 31
    .line 32
    .line 33
    move-result-object v4

    .line 34
    new-instance v5, Lgi/b;

    .line 35
    .line 36
    invoke-direct {v5}, Lgi/b;-><init>()V

    .line 37
    .line 38
    .line 39
    const/16 v7, 0x10

    .line 40
    .line 41
    const/4 v8, 0x0

    .line 42
    const/4 v6, 0x0

    .line 43
    invoke-static/range {v1 .. v8}, Lcom/transsion/ad/web/cct/CustomTabsHelper$Companion;->e(Lcom/transsion/ad/web/cct/CustomTabsHelper$Companion;Landroid/app/Activity;Landroidx/browser/customtabs/d;Landroid/net/Uri;Lgi/a;Lcom/transsion/ad/web/cct/CustomTabsHelper$Companion$Mode;ILjava/lang/Object;)V

    .line 44
    .line 45
    .line 46
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :catchall_0
    move-exception p1

    .line 50
    goto :goto_1

    .line 51
    :cond_0
    const/4 p1, 0x0

    .line 52
    :goto_0
    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56
    goto :goto_2

    .line 57
    :goto_1
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 58
    .line 59
    invoke-static {p1}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    :goto_2
    invoke-static {p1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 68
    .line 69
    .line 70
    return-void
.end method

.method public final m(Lcom/transsion/ad/strategy/b$a;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/transsion/ad/strategy/b;->b:Ljava/util/List;

    .line 2
    .line 3
    check-cast v0, Ljava/util/Collection;

    .line 4
    .line 5
    invoke-static {v0}, Lkotlin/jvm/internal/TypeIntrinsics;->a(Ljava/lang/Object;)Ljava/util/Collection;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-interface {v0, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    return-void
.end method
