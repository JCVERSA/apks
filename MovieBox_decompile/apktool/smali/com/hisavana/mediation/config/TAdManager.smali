.class public final Lcom/hisavana/mediation/config/TAdManager;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hisavana/mediation/config/TAdManager$AdConfig;,
        Lcom/hisavana/mediation/config/TAdManager$OnCloudCompleteListener;,
        Lcom/hisavana/mediation/config/TAdManager$AdConfigBuilder;
    }
.end annotation


# static fields
.field public static a:Lcom/hisavana/mediation/config/TAdManager$AdConfig;

.field public static b:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic a()Lcom/hisavana/mediation/config/TAdManager$AdConfig;
    .locals 1

    .line 1
    sget-object v0, Lcom/hisavana/mediation/config/TAdManager;->a:Lcom/hisavana/mediation/config/TAdManager$AdConfig;

    return-object v0
.end method

.method public static a(Lcom/hisavana/mediation/config/TAdManager$AdConfig;)V
    .locals 3
    .param p0    # Lcom/hisavana/mediation/config/TAdManager$AdConfig;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 2
    sget-object v0, Lcom/hisavana/mediation/config/TAdManager;->a:Lcom/hisavana/mediation/config/TAdManager$AdConfig;

    if-eqz v0, :cond_0

    .line 3
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object p0

    const-string v0, "sdk_init"

    const-string v1, "Already initialized"

    invoke-virtual {p0, v0, v1}, Lcom/cloud/sdk/commonutil/util/c;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 4
    :cond_0
    invoke-static {p0}, Lcom/hisavana/mediation/config/TAdManager$AdConfig;->c(Lcom/hisavana/mediation/config/TAdManager$AdConfig;)Z

    move-result v0

    invoke-static {v0}, Lee/u;->b(Z)V

    .line 5
    invoke-static {p0}, Lcom/hisavana/mediation/config/TAdManager$AdConfig;->d(Lcom/hisavana/mediation/config/TAdManager$AdConfig;)Z

    move-result v0

    const/4 v1, 0x3

    if-nez v0, :cond_1

    .line 6
    const-string v0, "ADSDK"

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    invoke-static {p0, v0}, Lcom/hisavana/mediation/config/TAdManager$AdConfig;->a(Lcom/hisavana/mediation/config/TAdManager$AdConfig;Z)Z

    .line 7
    :cond_1
    invoke-static {p0}, Lcom/hisavana/mediation/config/TAdManager$AdConfig;->d(Lcom/hisavana/mediation/config/TAdManager$AdConfig;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 8
    sget-object v0, Lcom/cloud/sdk/commonutil/util/c;->NET_LOG:Lcom/transsion/infra/gateway/core/utils/ObjectLogUtils;

    invoke-virtual {v0}, Lcom/transsion/infra/gateway/core/utils/ObjectLogUtils;->m()Lcom/transsion/infra/gateway/core/utils/ObjectLogUtils$a;

    move-result-object v0

    const-string v2, "AD_NET_LOG"

    invoke-static {v2, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/transsion/infra/gateway/core/utils/ObjectLogUtils$a;->q(Z)Lcom/transsion/infra/gateway/core/utils/ObjectLogUtils$a;

    .line 9
    :cond_2
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object v0

    invoke-static {p0}, Lcom/hisavana/mediation/config/TAdManager$AdConfig;->d(Lcom/hisavana/mediation/config/TAdManager$AdConfig;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/cloud/sdk/commonutil/util/c;->setLogSwitch(Z)V

    .line 10
    invoke-static {p0}, Lcom/hisavana/mediation/config/TAdManager$AdConfig;->d(Lcom/hisavana/mediation/config/TAdManager$AdConfig;)Z

    move-result v0

    sput-boolean v0, Lcom/hisavana/common/base/LogSwitch;->isDebug:Z

    .line 11
    sput-object p0, Lcom/hisavana/mediation/config/TAdManager;->a:Lcom/hisavana/mediation/config/TAdManager$AdConfig;

    .line 12
    invoke-static {p0}, Lcom/hisavana/mediation/config/TAdManager$AdConfig;->d(Lcom/hisavana/mediation/config/TAdManager$AdConfig;)Z

    move-result p0

    invoke-static {p0}, Lcom/cloud/sdk/commonutil/util/e;->j(Z)V

    const/4 p0, 0x0

    .line 13
    sput-boolean p0, Lcom/hisavana/common/constant/ComConstants;->LITE:Z

    .line 14
    sget-object v0, Lcom/hisavana/mediation/config/TAdManager;->a:Lcom/hisavana/mediation/config/TAdManager$AdConfig;

    invoke-static {v0, p0}, Lcom/hisavana/mediation/config/TAdManager$AdConfig;->b(Lcom/hisavana/mediation/config/TAdManager$AdConfig;Z)Z

    .line 15
    invoke-static {}, Lcom/hisavana/mediation/config/TAdManager;->b()V

    .line 16
    invoke-static {}, Lcom/hisavana/mediation/config/TAdManager;->c()V

    .line 17
    invoke-static {}, Lcom/cloud/sdk/commonutil/util/e;->a()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    check-cast p0, Landroid/app/Application;

    invoke-static {p0}, Lcom/cloud/sdk/commonutil/util/m;->j(Landroid/app/Application;)V

    .line 18
    invoke-static {}, Lcom/hisavana/mediation/config/TAdManager;->e()V

    return-void
.end method

.method public static b()V
    .locals 5

    .line 1
    sget-object v0, Lcom/hisavana/mediation/config/TAdManager;->a:Lcom/hisavana/mediation/config/TAdManager$AdConfig;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/16 v0, 0x21d5

    .line 6
    .line 7
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    .line 11
    .line 12
    const-string v2, "mediation"

    .line 13
    .line 14
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-static {}, Lk7/c;->l()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-static {v0, v1}, Lcom/transsion/ga/AthenaAnalytics;->a0(ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    .line 30
    .line 31
    :catchall_0
    invoke-static {}, Lcom/cloud/sdk/commonutil/util/e;->a()Landroid/content/Context;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    sget-object v2, Lcom/hisavana/mediation/config/TAdManager;->a:Lcom/hisavana/mediation/config/TAdManager$AdConfig;

    .line 36
    .line 37
    invoke-virtual {v2}, Lcom/hisavana/mediation/config/TAdManager$AdConfig;->isDebug()Z

    .line 38
    .line 39
    .line 40
    move-result v2

    .line 41
    const-string v3, "Mediation"

    .line 42
    .line 43
    const/4 v4, 0x0

    .line 44
    invoke-static {v1, v3, v0, v2, v4}, Lcom/transsion/ga/AthenaAnalytics;->Q(Landroid/content/Context;Ljava/lang/String;IZZ)V

    .line 45
    .line 46
    .line 47
    const/4 v0, 0x1

    .line 48
    invoke-static {v0}, Lcom/transsion/ga/AthenaAnalytics;->D(Z)V

    .line 49
    .line 50
    .line 51
    invoke-static {}, Lcom/hisavana/mediation/config/TAdManager;->getAppId()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    const-string v1, "hs_appid"

    .line 56
    .line 57
    invoke-static {v1, v0}, Lcom/transsion/ga/AthenaAnalytics;->s(Ljava/lang/String;Ljava/lang/Object;)V

    .line 58
    .line 59
    .line 60
    invoke-static {}, Lk7/c;->l()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    const-string v1, "hs_ver"

    .line 65
    .line 66
    invoke-static {v1, v0}, Lcom/transsion/ga/AthenaAnalytics;->s(Ljava/lang/String;Ljava/lang/Object;)V

    .line 67
    .line 68
    .line 69
    :cond_0
    return-void
.end method

.method public static c()V
    .locals 3

    .line 1
    invoke-static {}, Lee/o;->a()Lee/o;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {}, Lcom/cloud/sdk/commonutil/util/e;->a()Landroid/content/Context;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    sget-object v2, Lcom/hisavana/mediation/config/TAdManager;->a:Lcom/hisavana/mediation/config/TAdManager$AdConfig;

    .line 10
    .line 11
    invoke-virtual {v0, v1, v2}, Lee/o;->d(Landroid/content/Context;Lcom/hisavana/mediation/config/TAdManager$AdConfig;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public static d()V
    .locals 13

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    invoke-static {}, Ll7/a;->e()Ll7/a;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    const-string v3, "app_active_time"

    .line 10
    .line 11
    const-wide/16 v4, 0x0

    .line 12
    .line 13
    invoke-virtual {v2, v3, v4, v5}, Ll7/a;->i(Ljava/lang/String;J)J

    .line 14
    .line 15
    .line 16
    move-result-wide v6

    .line 17
    invoke-static {}, Ll7/a;->e()Ll7/a;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    const-string v8, "first_start_for_one_day"

    .line 22
    .line 23
    invoke-virtual {v2, v8, v4, v5}, Ll7/a;->i(Ljava/lang/String;J)J

    .line 24
    .line 25
    .line 26
    move-result-wide v9

    .line 27
    invoke-static {v0, v1}, Lcom/cloud/hisavana/sdk/common/util/k0;->c(J)J

    .line 28
    .line 29
    .line 30
    move-result-wide v11

    .line 31
    cmp-long v2, v6, v4

    .line 32
    .line 33
    if-nez v2, :cond_0

    .line 34
    .line 35
    invoke-static {}, Ll7/a;->e()Ll7/a;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    invoke-virtual {v2, v3, v0, v1}, Ll7/a;->q(Ljava/lang/String;J)V

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_0
    move-wide v0, v6

    .line 44
    :goto_0
    cmp-long v2, v9, v11

    .line 45
    .line 46
    if-eqz v2, :cond_1

    .line 47
    .line 48
    invoke-static {}, Ll7/a;->e()Ll7/a;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    invoke-virtual {v2, v8, v11, v12}, Ll7/a;->q(Ljava/lang/String;J)V

    .line 53
    .line 54
    .line 55
    const/4 v2, 0x1

    .line 56
    goto :goto_1

    .line 57
    :cond_1
    const/4 v2, 0x0

    .line 58
    :goto_1
    new-instance v3, Ljava/text/SimpleDateFormat;

    .line 59
    .line 60
    const-string v4, "yyyy-MM-dd HH:mm:ss SSS Z"

    .line 61
    .line 62
    invoke-direct {v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    new-instance v4, Ljava/util/Date;

    .line 66
    .line 67
    invoke-direct {v4, v0, v1}, Ljava/util/Date;-><init>(J)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v3, v4}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    sput-object v0, Lcom/hisavana/common/bean/AppStartInfo;->activeTime:Ljava/lang/String;

    .line 75
    .line 76
    sput-boolean v2, Lcom/hisavana/common/bean/AppStartInfo;->isFirstStartToday:Z

    .line 77
    .line 78
    return-void
.end method

.method public static e()V
    .locals 4

    .line 1
    new-instance v0, Landroid/os/Bundle;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 7
    .line 8
    .line 9
    move-result-wide v1

    .line 10
    const-string v3, "init_ts"

    .line 11
    .line 12
    invoke-virtual {v0, v3, v1, v2}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 13
    .line 14
    .line 15
    invoke-static {}, Lcom/hisavana/mediation/config/TAdManager;->getAppId()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    const-string v2, "cld_app_id"

    .line 20
    .line 21
    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    invoke-static {v0}, Lcom/hisavana/common/tracking/TrackingManager;->trackInit(Landroid/os/Bundle;)V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method public static getAhaChannel()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/hisavana/mediation/config/TAdManager;->a:Lcom/hisavana/mediation/config/TAdManager$AdConfig;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-static {v0}, Lcom/hisavana/mediation/config/TAdManager$AdConfig;->e(Lcom/hisavana/mediation/config/TAdManager$AdConfig;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    return-object v0
.end method

.method public static getAppId()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/hisavana/mediation/config/TAdManager;->a:Lcom/hisavana/mediation/config/TAdManager$AdConfig;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-static {v0}, Lcom/hisavana/mediation/config/TAdManager$AdConfig;->b(Lcom/hisavana/mediation/config/TAdManager$AdConfig;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    return-object v0
.end method

.method public static getCloudCompleteListener()Lcom/hisavana/mediation/config/TAdManager$OnCloudCompleteListener;
    .locals 1

    .line 1
    sget-object v0, Lcom/hisavana/mediation/config/TAdManager;->a:Lcom/hisavana/mediation/config/TAdManager$AdConfig;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-static {v0}, Lcom/hisavana/mediation/config/TAdManager$AdConfig;->a(Lcom/hisavana/mediation/config/TAdManager$AdConfig;)Lcom/hisavana/mediation/config/TAdManager$OnCloudCompleteListener;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    return-object v0
.end method

.method public static getCodeSeatIds()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/hisavana/mediation/config/TAdManager;->a:Lcom/hisavana/mediation/config/TAdManager$AdConfig;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-static {v0}, Lcom/hisavana/mediation/config/TAdManager$AdConfig;->f(Lcom/hisavana/mediation/config/TAdManager$AdConfig;)Ljava/util/List;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    new-instance v0, Ljava/util/ArrayList;

    .line 12
    .line 13
    sget-object v1, Lcom/hisavana/mediation/config/TAdManager;->a:Lcom/hisavana/mediation/config/TAdManager$AdConfig;

    .line 14
    .line 15
    invoke-static {v1}, Lcom/hisavana/mediation/config/TAdManager$AdConfig;->f(Lcom/hisavana/mediation/config/TAdManager$AdConfig;)Ljava/util/List;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 20
    .line 21
    .line 22
    return-object v0

    .line 23
    :cond_0
    const/4 v0, 0x0

    .line 24
    return-object v0
.end method

.method public static declared-synchronized init(Landroid/content/Context;Lcom/hisavana/mediation/config/TAdManager$AdConfig;)V
    .locals 4
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lcom/hisavana/mediation/config/TAdManager$AdConfig;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    const-class v0, Lcom/hisavana/mediation/config/TAdManager;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    const-string v2, "sdk_init"

    .line 9
    .line 10
    const-string v3, "========================== HiSavana SDk init ========================== "

    .line 11
    .line 12
    invoke-virtual {v1, v2, v3}, Lcom/cloud/sdk/commonutil/util/c;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-static {p1}, Lcom/hisavana/mediation/config/TAdManager$AdConfig;->b(Lcom/hisavana/mediation/config/TAdManager$AdConfig;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-eqz v1, :cond_1

    .line 24
    .line 25
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    const-string v1, "sdk_init"

    .line 30
    .line 31
    const-string v2, "config or appId is null, please check"

    .line 32
    .line 33
    invoke-virtual {p0, v1, v2}, Lcom/cloud/sdk/commonutil/util/c;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    invoke-static {p1}, Lcom/hisavana/mediation/config/TAdManager$AdConfig;->a(Lcom/hisavana/mediation/config/TAdManager$AdConfig;)Lcom/hisavana/mediation/config/TAdManager$OnCloudCompleteListener;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    if-eqz p0, :cond_0

    .line 41
    .line 42
    const-string p1, "Invalid app id"

    .line 43
    .line 44
    const v1, 0xea61

    .line 45
    .line 46
    .line 47
    invoke-interface {p0, v1, p1}, Lcom/hisavana/mediation/config/TAdManager$OnCloudCompleteListener;->onCloudComplete(ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    .line 49
    .line 50
    goto :goto_0

    .line 51
    :catchall_0
    move-exception p0

    .line 52
    goto :goto_1

    .line 53
    :cond_0
    :goto_0
    monitor-exit v0

    .line 54
    return-void

    .line 55
    :cond_1
    :try_start_1
    invoke-static {p0}, Lcom/cloud/sdk/commonutil/util/e;->g(Landroid/content/Context;)V

    .line 56
    .line 57
    .line 58
    invoke-static {}, Lcom/hisavana/mediation/config/TAdManager;->d()V

    .line 59
    .line 60
    .line 61
    sget-object v1, Lcom/cloud/sdk/commonutil/util/HSScopeHelper;->a:Lcom/cloud/sdk/commonutil/util/HSScopeHelper;

    .line 62
    .line 63
    new-instance v2, Lcom/hisavana/mediation/config/TAdManager$1;

    .line 64
    .line 65
    invoke-direct {v2, p0}, Lcom/hisavana/mediation/config/TAdManager$1;-><init>(Landroid/content/Context;)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v1, v2}, Lcom/cloud/sdk/commonutil/util/HSScopeHelper;->g(Ljava/lang/Runnable;)V

    .line 69
    .line 70
    .line 71
    invoke-static {p1}, Lcom/hisavana/mediation/config/TAdManager;->a(Lcom/hisavana/mediation/config/TAdManager$AdConfig;)V

    .line 72
    .line 73
    .line 74
    const/4 p0, 0x1

    .line 75
    sput-boolean p0, Lcom/hisavana/mediation/config/TAdManager;->b:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 76
    .line 77
    monitor-exit v0

    .line 78
    return-void

    .line 79
    :goto_1
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 80
    throw p0
.end method

.method public static isDebug()Z
    .locals 1

    .line 1
    sget-object v0, Lcom/hisavana/mediation/config/TAdManager;->a:Lcom/hisavana/mediation/config/TAdManager$AdConfig;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-static {v0}, Lcom/hisavana/mediation/config/TAdManager$AdConfig;->d(Lcom/hisavana/mediation/config/TAdManager$AdConfig;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    return v0
.end method

.method public static isTestDevice()Z
    .locals 1

    .line 1
    sget-object v0, Lcom/hisavana/mediation/config/TAdManager;->a:Lcom/hisavana/mediation/config/TAdManager$AdConfig;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/hisavana/mediation/config/TAdManager$AdConfig;->isTestDevice()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    return v0
.end method

.method public static releaseCloudListener()V
    .locals 1

    .line 1
    sget-object v0, Lcom/hisavana/mediation/config/TAdManager;->a:Lcom/hisavana/mediation/config/TAdManager$AdConfig;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/hisavana/mediation/config/TAdManager$AdConfig;->releaseCloudListener()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public static setAgeRestrictedUser(Z)V
    .locals 0

    .line 1
    sput-boolean p0, Lcom/hisavana/common/bean/AppStartInfo;->ageRestrictedUser:Z

    .line 2
    .line 3
    return-void
.end method

.method public static setCodeSeatIds(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "sdk_init"

    .line 2
    .line 3
    if-eqz p0, :cond_2

    .line 4
    .line 5
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-eqz v1, :cond_2

    .line 10
    .line 11
    sget-boolean v1, Lcom/hisavana/mediation/config/TAdManager;->b:Z

    .line 12
    .line 13
    if-nez v1, :cond_0

    .line 14
    .line 15
    goto :goto_1

    .line 16
    :cond_0
    sget-object v1, Lcom/hisavana/mediation/config/TAdManager;->a:Lcom/hisavana/mediation/config/TAdManager$AdConfig;

    .line 17
    .line 18
    if-eqz v1, :cond_1

    .line 19
    .line 20
    invoke-virtual {v1, p0}, Lcom/hisavana/mediation/config/TAdManager$AdConfig;->setCodeSeatIds(Ljava/util/List;)V

    .line 21
    .line 22
    .line 23
    const/4 p0, 0x5

    .line 24
    invoke-static {p0}, Lcom/hisavana/mediation/config/CloudControlConfigSync;->b(I)V

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_1
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    const-string v1, "setCodeSeatIds u must init first"

    .line 33
    .line 34
    invoke-virtual {p0, v0, v1}, Lcom/cloud/sdk/commonutil/util/c;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    :goto_0
    return-void

    .line 38
    :cond_2
    :goto_1
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    const-string v1, "setCodeSeatIds codeSeatIds is null or empty"

    .line 43
    .line 44
    invoke-virtual {p0, v0, v1}, Lcom/cloud/sdk/commonutil/util/c;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    return-void
.end method

.method public static setTrackSamplingFraction(I)V
    .locals 0

    .line 1
    :try_start_0
    invoke-static {p0}, Lc7/b;->p(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    .line 3
    .line 4
    :catchall_0
    return-void
.end method

.method public static setUserConsent(Z)V
    .locals 0

    .line 1
    sput-boolean p0, Lcom/hisavana/common/bean/AppStartInfo;->userConsent:Z

    .line 2
    .line 3
    return-void
.end method
