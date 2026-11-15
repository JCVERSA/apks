.class public Lcom/bytedance/sdk/openadsdk/api/init/PAGInitHelper;
.super Ljava/lang/Object;
.source "source.java"


# static fields
.field public static final CALLBACK_LIST:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/openadsdk/api/init/PAGSdk$PAGInitCallback;",
            ">;"
        }
    .end annotation
.end field

.field public static animationScale:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/bytedance/sdk/openadsdk/api/init/PAGInitHelper;->CALLBACK_LIST:Ljava/util/List;

    .line 7
    .line 8
    const/high16 v0, 0x3f800000    # 1.0f

    .line 9
    .line 10
    sput v0, Lcom/bytedance/sdk/openadsdk/api/init/PAGInitHelper;->animationScale:F

    .line 11
    .line 12
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static Sj(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/TKC;->Sj(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/core/TKC;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const-string v0, "uuid"

    .line 6
    .line 7
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/ib;->Sj()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {p0, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/TKC;->Sj(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public static initAPM()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/common/HiB;->Sj()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/uA;->sP()Lcom/bytedance/sdk/openadsdk/core/uA;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/uA;->EjP()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-eqz v1, :cond_1

    .line 21
    .line 22
    return-void

    .line 23
    :cond_1
    new-instance v1, Lcom/bytedance/sdk/openadsdk/api/init/PAGConfig$Builder;

    .line 24
    .line 25
    invoke-direct {v1}, Lcom/bytedance/sdk/openadsdk/api/init/PAGConfig$Builder;-><init>()V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/openadsdk/api/init/PAGConfig$Builder;->appId(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/api/init/PAGConfig$Builder;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/api/init/PAGConfig$Builder;->build()Lcom/bytedance/sdk/openadsdk/api/init/PAGConfig;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/dNu;->Sj()Landroid/content/Context;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    invoke-static {v1, v0}, Lcom/bytedance/sdk/openadsdk/ApmHelper;->initApm(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/InitConfig;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 41
    .line 42
    .line 43
    :catch_0
    return-void
.end method

.method public static initAnimationScale(Landroid/content/Context;)V
    .locals 2

    .line 1
    const/high16 v0, 0x3f800000    # 1.0f

    .line 2
    .line 3
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    const-string v1, "animator_duration_scale"

    .line 8
    .line 9
    invoke-static {p0, v1, v0}, Landroid/provider/Settings$System;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    sput p0, Lcom/bytedance/sdk/openadsdk/api/init/PAGInitHelper;->animationScale:F

    .line 14
    .line 15
    const/4 v1, 0x0

    .line 16
    cmpg-float p0, p0, v1

    .line 17
    .line 18
    if-gtz p0, :cond_0

    .line 19
    .line 20
    sput v0, Lcom/bytedance/sdk/openadsdk/api/init/PAGInitHelper;->animationScale:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    .line 22
    :cond_0
    return-void

    .line 23
    :catchall_0
    sput v0, Lcom/bytedance/sdk/openadsdk/api/init/PAGInitHelper;->animationScale:F

    .line 24
    .line 25
    return-void
.end method

.method public static initMemoryData()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/dNu;->EjP()Lcom/bytedance/sdk/openadsdk/core/settings/vS;

    .line 2
    .line 3
    .line 4
    const-string v0, "ttopenadsdk"

    .line 5
    .line 6
    const-string v1, "a"

    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    invoke-static {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/multipro/EjP/EjP;->Sj(Ljava/lang/String;Ljava/lang/String;I)I

    .line 10
    .line 11
    .line 12
    const-string v0, "sp_global_file"

    .line 13
    .line 14
    invoke-static {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/multipro/EjP/EjP;->Sj(Ljava/lang/String;Ljava/lang/String;I)I

    .line 15
    .line 16
    .line 17
    const-string v0, "sp_global_privacy"

    .line 18
    .line 19
    invoke-static {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/multipro/EjP/EjP;->Sj(Ljava/lang/String;Ljava/lang/String;I)I

    .line 20
    .line 21
    .line 22
    const-string v0, "sp_global_app_id"

    .line 23
    .line 24
    invoke-static {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/multipro/EjP/EjP;->Sj(Ljava/lang/String;Ljava/lang/String;I)I

    .line 25
    .line 26
    .line 27
    const-string v0, "sp_global_icon_id"

    .line 28
    .line 29
    invoke-static {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/multipro/EjP/EjP;->Sj(Ljava/lang/String;Ljava/lang/String;I)I

    .line 30
    .line 31
    .line 32
    const-string v0, "tpl_fetch_model"

    .line 33
    .line 34
    invoke-static {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/multipro/EjP/EjP;->Sj(Ljava/lang/String;Ljava/lang/String;I)I

    .line 35
    .line 36
    .line 37
    const-string v0, "tt_sp"

    .line 38
    .line 39
    invoke-static {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/multipro/EjP/EjP;->Sj(Ljava/lang/String;Ljava/lang/String;I)I

    .line 40
    .line 41
    .line 42
    const-string v0, "tt_sdk_event_net_ad"

    .line 43
    .line 44
    invoke-static {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/multipro/EjP/EjP;->Sj(Ljava/lang/String;Ljava/lang/String;I)I

    .line 45
    .line 46
    .line 47
    const-string v0, "tt_sdk_event_net_state"

    .line 48
    .line 49
    invoke-static {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/multipro/EjP/EjP;->Sj(Ljava/lang/String;Ljava/lang/String;I)I

    .line 50
    .line 51
    .line 52
    const-string v0, "tt_sdk_event_net_trail"

    .line 53
    .line 54
    invoke-static {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/multipro/EjP/EjP;->Sj(Ljava/lang/String;Ljava/lang/String;I)I

    .line 55
    .line 56
    .line 57
    const-string v0, "tt_sdk_event_db_ad"

    .line 58
    .line 59
    invoke-static {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/multipro/EjP/EjP;->Sj(Ljava/lang/String;Ljava/lang/String;I)I

    .line 60
    .line 61
    .line 62
    const-string v0, "tt_sdk_event_db_state"

    .line 63
    .line 64
    invoke-static {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/multipro/EjP/EjP;->Sj(Ljava/lang/String;Ljava/lang/String;I)I

    .line 65
    .line 66
    .line 67
    const-string v0, "tt_sdk_event_db_trail"

    .line 68
    .line 69
    invoke-static {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/multipro/EjP/EjP;->Sj(Ljava/lang/String;Ljava/lang/String;I)I

    .line 70
    .line 71
    .line 72
    const-string v0, "did"

    .line 73
    .line 74
    const-string v1, "pag_sp_bad_par"

    .line 75
    .line 76
    invoke-static {v1, v0}, Lcom/bytedance/sdk/openadsdk/multipro/EjP/EjP;->Sj(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    const-string v0, "gaid"

    .line 80
    .line 81
    invoke-static {v1, v0}, Lcom/bytedance/sdk/openadsdk/multipro/EjP/EjP;->Sj(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    return-void
.end method

.method public static maybeAsyncInitTask(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/act/Sj;->Sj(Landroid/content/Context;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/Yf;->Sj()Lcom/bytedance/sdk/openadsdk/utils/Yf;

    .line 5
    .line 6
    .line 7
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->Sj(Landroid/content/Context;)V

    .line 8
    .line 9
    .line 10
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/api/init/PAGInitHelper;->Sj(Landroid/content/Context;)V

    .line 11
    .line 12
    .line 13
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/dNu;->HiB()Lcom/bytedance/sdk/openadsdk/Zq/TKC/sP;

    .line 14
    .line 15
    .line 16
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/aa;->Sj(Landroid/content/Context;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/uA/TKC;->sP(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    const/4 v1, 0x1

    .line 24
    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/EjP/Sj/EjP;->Sj(Ljava/lang/String;Z)V

    .line 25
    .line 26
    .line 27
    invoke-static {}, Lcom/bytedance/sdk/component/adexpress/Sj/sP/sP;->Sj()V

    .line 28
    .line 29
    .line 30
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/aa/TKC/Sj;->Sj()Lcom/bytedance/sdk/openadsdk/core/aa/TKC/Sj;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/aa/TKC/Sj;->sP()V

    .line 35
    .line 36
    .line 37
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/api/init/PAGInitHelper;->initAnimationScale(Landroid/content/Context;)V

    .line 38
    .line 39
    .line 40
    return-void
.end method
