.class public Lcn/com/custommma/mobile/tracking/api/ViewAbilityHandler;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/com/custommma/mobile/tracking/api/ViewAbilityHandler$MonitorType;
    }
.end annotation


# instance fields
.field public a:Landroid/content/Context;

.field public b:Ltbc;

.field public c:Ljava/util/HashMap;

.field public d:Lqx8;

.field public e:Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/ViewAbilityConfig;

.field public f:Lcn/com/custommma/mobile/tracking/viewability/webjs/ViewAbilityJsService;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ltbc;Lqx8;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcn/com/custommma/mobile/tracking/api/ViewAbilityHandler;->c:Ljava/util/HashMap;

    iput-object p1, p0, Lcn/com/custommma/mobile/tracking/api/ViewAbilityHandler;->a:Landroid/content/Context;

    iput-object p2, p0, Lcn/com/custommma/mobile/tracking/api/ViewAbilityHandler;->b:Ltbc;

    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lcn/com/custommma/mobile/tracking/api/ViewAbilityHandler;->c:Ljava/util/HashMap;

    iput-object p3, p0, Lcn/com/custommma/mobile/tracking/api/ViewAbilityHandler;->d:Lqx8;

    invoke-virtual {p0}, Lcn/com/custommma/mobile/tracking/api/ViewAbilityHandler;->i()Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/ViewAbilityConfig;

    move-result-object p2

    iput-object p2, p0, Lcn/com/custommma/mobile/tracking/api/ViewAbilityHandler;->e:Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/ViewAbilityConfig;

    new-instance p2, Lcn/com/custommma/mobile/tracking/viewability/webjs/ViewAbilityJsService;

    invoke-direct {p2, p1}, Lcn/com/custommma/mobile/tracking/viewability/webjs/ViewAbilityJsService;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcn/com/custommma/mobile/tracking/api/ViewAbilityHandler;->f:Lcn/com/custommma/mobile/tracking/viewability/webjs/ViewAbilityJsService;

    return-void
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;Lva1;)Ljava/lang/String;
    .locals 12

    :try_start_0
    iget-object p2, p2, Lva1;->g:Lpe1;

    iget-object p2, p2, Lpe1;->a:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    move v3, v2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v5, "ANDROIDID"

    const-string v6, "MAC"

    const-string v7, "IMEI"

    if-eqz v4, :cond_8

    :try_start_1
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lzf;

    iget-boolean v8, v4, Lzf;->d:Z

    if-eqz v8, :cond_0

    iget-object v8, v4, Lzf;->a:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_0

    iget-object v4, v4, Lzf;->a:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v8

    const v9, -0x16738c56

    const/4 v10, 0x2

    const/4 v11, 0x1

    if-eq v8, v9, :cond_3

    const v5, 0x1292f

    if-eq v8, v5, :cond_2

    const v5, 0x2258c8

    if-eq v8, v5, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    move v4, v11

    goto :goto_2

    :cond_2
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    move v4, v0

    goto :goto_2

    :cond_3
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    if-eqz v4, :cond_4

    move v4, v10

    goto :goto_2

    :cond_4
    :goto_1
    const/4 v4, -0x1

    :goto_2
    if-eqz v4, :cond_7

    if-eq v4, v11, :cond_6

    if-eq v4, v10, :cond_5

    goto :goto_0

    :cond_5
    move v3, v11

    goto :goto_0

    :cond_6
    move v2, v11

    goto :goto_0

    :cond_7
    move v1, v11

    goto :goto_0

    :cond_8
    const-string p2, ""

    if-eqz v1, :cond_a

    :try_start_2
    sget-object v0, Lcn/com/custommma/mobile/tracking/api/a;->g:Ljava/util/Map;

    invoke-static {v0, v6}, Lcn/com/custommma/mobile/tracking/util/SdkConfigUpdateUtil;->e(Ljava/util/Map;Ljava/lang/String;)Z

    move-result v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    const-string v1, ":"

    if-eqz v0, :cond_9

    :try_start_3
    invoke-static {p0}, Lcn/com/custommma/mobile/tracking/util/DeviceInfoUtil;->m(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1, p2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    sget-object v4, Lcn/com/custommma/mobile/tracking/api/a;->f:Ljava/util/Map;

    invoke-interface {v4, v6, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcn/com/custommma/mobile/tracking/api/a;->g:Ljava/util/Map;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v0, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_9
    sget-object v0, Lcn/com/custommma/mobile/tracking/api/a;->f:Ljava/util/Map;

    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-static {p0}, Lcn/com/custommma/mobile/tracking/util/DeviceInfoUtil;->m(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1, p2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcn/com/custommma/mobile/tracking/api/a;->f:Ljava/util/Map;

    invoke-interface {v1, v6, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcn/com/custommma/mobile/tracking/api/a;->g:Ljava/util/Map;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v1, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_a
    move-object v0, p2

    :cond_b
    :goto_3
    if-eqz v2, :cond_d

    sget-object v1, Lcn/com/custommma/mobile/tracking/api/a;->g:Ljava/util/Map;

    invoke-static {v1, v7}, Lcn/com/custommma/mobile/tracking/util/SdkConfigUpdateUtil;->e(Ljava/util/Map;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-static {p0}, Lcn/com/custommma/mobile/tracking/util/DeviceInfoUtil;->l(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcn/com/custommma/mobile/tracking/api/a;->f:Ljava/util/Map;

    invoke-interface {v2, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcn/com/custommma/mobile/tracking/api/a;->g:Ljava/util/Map;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v7, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_c
    sget-object v1, Lcn/com/custommma/mobile/tracking/api/a;->f:Ljava/util/Map;

    invoke-interface {v1, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-static {p0}, Lcn/com/custommma/mobile/tracking/util/DeviceInfoUtil;->l(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcn/com/custommma/mobile/tracking/api/a;->f:Ljava/util/Map;

    invoke-interface {v2, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcn/com/custommma/mobile/tracking/api/a;->g:Ljava/util/Map;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v2, v7, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    :cond_d
    move-object v1, p2

    :cond_e
    :goto_4
    if-eqz v3, :cond_10

    sget-object p2, Lcn/com/custommma/mobile/tracking/api/a;->g:Ljava/util/Map;

    invoke-static {p2, v5}, Lcn/com/custommma/mobile/tracking/util/SdkConfigUpdateUtil;->e(Ljava/util/Map;Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_f

    invoke-static {p0}, Lcn/com/custommma/mobile/tracking/util/DeviceInfoUtil;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    sget-object v2, Lcn/com/custommma/mobile/tracking/api/a;->f:Ljava/util/Map;

    invoke-interface {v2, v5, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p2, Lcn/com/custommma/mobile/tracking/api/a;->g:Ljava/util/Map;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {p2, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_f
    sget-object p2, Lcn/com/custommma/mobile/tracking/api/a;->f:Ljava/util/Map;

    invoke-interface {p2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_10

    invoke-static {p0}, Lcn/com/custommma/mobile/tracking/util/DeviceInfoUtil;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    sget-object p0, Lcn/com/custommma/mobile/tracking/api/a;->f:Ljava/util/Map;

    invoke-interface {p0, v5, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lcn/com/custommma/mobile/tracking/api/a;->g:Ljava/util/Map;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {p0, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_10
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lna1;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public final a(Lva1;Lcn/com/custommma/mobile/tracking/viewability/origin/ViewAbilityStats;Ljava/lang/String;)Ljava/lang/String;
    .locals 10

    :try_start_0
    iget-object v0, p1, Lva1;->g:Lpe1;

    iget-object v0, v0, Lpe1;->d:Ljava/util/HashMap;

    iget-object v1, p1, Lva1;->h:Ljava/lang/String;

    iget-object p1, p1, Lva1;->i:Ljava/lang/String;

    if-nez v0, :cond_0

    return-object p3

    :cond_0
    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const-string v3, ""

    move-object v4, p3

    move-object v5, v3

    move-object v6, v5

    :cond_1
    :goto_0
    :try_start_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_1

    invoke-virtual {v0, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lzf;

    iget-object v8, v8, Lzf;->b:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_1

    const-string v9, "AdviewabilityRecord"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    goto :goto_0

    :cond_2
    const-string v9, "AdviewabilityVideoDuration"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    goto :goto_0

    :cond_3
    const-string v9, "AdviewabilityVideoProgressPoint"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    goto :goto_0

    :cond_4
    const-string v9, "AdviewabilityConfigThreshold"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    if-eqz v9, :cond_7

    :try_start_2
    invoke-virtual {p2}, Lcn/com/custommma/mobile/tracking/viewability/origin/ViewAbilityStats;->getURLExposeDuration()I

    move-result v7

    if-lez v7, :cond_5

    div-int/lit16 v7, v7, 0x3e8

    goto :goto_2

    :catch_0
    move-exception v7

    goto :goto_3

    :cond_5
    invoke-virtual {p2}, Lcn/com/custommma/mobile/tracking/viewability/origin/ViewAbilityStats;->isVideoExpose()Z

    move-result v7

    if-eqz v7, :cond_6

    iget-object v7, p0, Lcn/com/custommma/mobile/tracking/api/ViewAbilityHandler;->e:Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/ViewAbilityConfig;

    invoke-virtual {v7}, Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/ViewAbilityConfig;->getVideoExposeValidDuration()I

    move-result v7

    goto :goto_1

    :cond_6
    iget-object v7, p0, Lcn/com/custommma/mobile/tracking/api/ViewAbilityHandler;->e:Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/ViewAbilityConfig;

    invoke-virtual {v7}, Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/ViewAbilityConfig;->getExposeValidDuration()I

    move-result v7

    :goto_1
    div-int/lit16 v7, v7, 0x3e8

    :goto_2
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_7

    :goto_3
    :try_start_3
    invoke-virtual {v7}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_7

    :catch_1
    move-exception p0

    goto/16 :goto_8

    :cond_7
    const-string v9, "AdviewabilityConfigArea"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    if-eqz v7, :cond_9

    :try_start_4
    invoke-virtual {p2}, Lcn/com/custommma/mobile/tracking/viewability/origin/ViewAbilityStats;->getURLShowCoverRate()F

    move-result v7

    const/4 v9, 0x0

    cmpl-float v7, v7, v9

    const/high16 v9, 0x42c80000    # 100.0f

    if-lez v7, :cond_8

    invoke-virtual {p2}, Lcn/com/custommma/mobile/tracking/viewability/origin/ViewAbilityStats;->getURLShowCoverRate()F

    move-result v7

    :goto_4
    mul-float/2addr v7, v9

    float-to-int v7, v7

    goto :goto_5

    :catch_2
    move-exception v7

    goto :goto_6

    :cond_8
    iget-object v7, p0, Lcn/com/custommma/mobile/tracking/api/ViewAbilityHandler;->e:Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/ViewAbilityConfig;

    invoke-virtual {v7}, Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/ViewAbilityConfig;->getCoverRateScale()F

    move-result v7

    goto :goto_4

    :goto_5
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_7

    :goto_6
    :try_start_5
    invoke-virtual {v7}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_9
    :goto_7
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "[^"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "]*"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_0

    :cond_a
    new-instance p0, Ljava/lang/StringBuffer;

    invoke-direct {p0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_b

    invoke-virtual {p0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_b
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_c

    invoke-virtual {p0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_c
    invoke-virtual {p0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p3
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_9

    :goto_8
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_9
    return-object p3
.end method

.method public final c(Lva1;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    invoke-virtual {p0, p1}, Lcn/com/custommma/mobile/tracking/api/ViewAbilityHandler;->d(Lva1;)Ljava/lang/String;

    move-result-object p0

    iget-object v0, p1, Lva1;->h:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    array-length v0, p2

    const/4 v1, 0x0

    :goto_0
    const-string v2, ""

    if-ge v1, v0, :cond_1

    aget-object v3, p2, v1

    invoke-virtual {v3, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p1, Lva1;->i:Ljava/lang/String;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0, v2}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-object v2
.end method

.method public final d(Lva1;)Ljava/lang/String;
    .locals 0

    iget-object p0, p1, Lva1;->g:Lpe1;

    iget-object p0, p0, Lpe1;->c:Ljava/util/HashMap;

    if-eqz p0, :cond_0

    const-string p1, "Adplacement"

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lzf;

    if-eqz p0, :cond_0

    iget-object p0, p0, Lzf;->b:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string p0, ""

    :goto_0
    return-object p0
.end method

.method public final e(Ljava/lang/String;)Lva1;
    .locals 2

    iget-object v0, p0, Lcn/com/custommma/mobile/tracking/api/ViewAbilityHandler;->d:Lqx8;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lqx8;->b:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-static {p1}, Lna1;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcn/com/custommma/mobile/tracking/api/ViewAbilityHandler;->d:Lqx8;

    iget-object p0, p0, Lqx8;->b:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lva1;

    iget-object v1, v0, Lva1;->b:Lsw2;

    iget-object v1, v1, Lsw2;->a:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_1
    iget-object p1, p0, Lcn/com/custommma/mobile/tracking/api/ViewAbilityHandler;->a:Landroid/content/Context;

    invoke-static {p1}, Lcn/com/custommma/mobile/tracking/util/SdkConfigUpdateUtil;->g(Landroid/content/Context;)Lqx8;

    move-result-object p1

    iput-object p1, p0, Lcn/com/custommma/mobile/tracking/api/ViewAbilityHandler;->d:Lqx8;

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public final f(Lva1;Lcn/com/custommma/mobile/tracking/api/ViewAbilityHandler$MonitorType;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p1, Lva1;->b:Lsw2;

    iget-object v1, v1, Lsw2;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcn/com/custommma/mobile/tracking/api/ViewAbilityHandler$MonitorType;->CLICK:Lcn/com/custommma/mobile/tracking/api/ViewAbilityHandler$MonitorType;

    if-ne p2, v1, :cond_2

    iget-object p1, p0, Lcn/com/custommma/mobile/tracking/api/ViewAbilityHandler;->c:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_0

    iget-object p0, p0, Lcn/com/custommma/mobile/tracking/api/ViewAbilityHandler;->c:Ljava/util/HashMap;

    invoke-virtual {p0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    goto :goto_0

    :cond_1
    const-string p0, ""

    goto :goto_0

    :cond_2
    iget-object p2, p0, Lcn/com/custommma/mobile/tracking/api/ViewAbilityHandler;->a:Landroid/content/Context;

    invoke-static {p2, p3, p1}, Lcn/com/custommma/mobile/tracking/api/ViewAbilityHandler;->b(Landroid/content/Context;Ljava/lang/String;Lva1;)Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcn/com/custommma/mobile/tracking/api/ViewAbilityHandler;->c:Ljava/util/HashMap;

    invoke-virtual {p0, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object p0, p1

    :goto_0
    return-object p0
.end method

.method public final g(Lva1;)Ljava/lang/String;
    .locals 2

    iget-object p0, p1, Lva1;->g:Lpe1;

    iget-object p0, p0, Lpe1;->a:Ljava/util/List;

    if-eqz p0, :cond_1

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lzf;

    if-eqz p1, :cond_0

    iget-object v0, p1, Lzf;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p1, Lzf;->a:Ljava/lang/String;

    const-string v1, "REDIRECTURL"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p1, Lzf;->b:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const-string/jumbo p0, "u"

    :goto_0
    return-object p0
.end method

.method public final h(Ljava/lang/String;Lcn/com/custommma/mobile/tracking/api/ViewAbilityHandler$MonitorType;Landroid/view/View;IILcn/com/custommma/mobile/tracking/viewability/origin/CallBack;)V
    .locals 20

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move/from16 v5, p5

    const-string v6, "********************************************"

    invoke-virtual/range {p0 .. p1}, Lcn/com/custommma/mobile/tracking/api/ViewAbilityHandler;->e(Ljava/lang/String;)Lva1;

    move-result-object v7

    if-nez v7, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "\u76d1\u6d4b\u94fe\u63a5:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " \u6ca1\u6709\u5bf9\u5e94\u7684\u914d\u7f6e\u9879,\u8bf7\u68c0\u67e5sdkconfig.xml\u662f\u5426\u5b58\u5728\u94fe\u63a5\u57df\u540d\u5bf9\u5e94\u7684Company\u914d\u7f6e!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lrq5;->d(Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v7}, Lcn/com/custommma/mobile/tracking/api/ViewAbilityHandler;->g(Lva1;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v7, Lva1;->i:Ljava/lang/String;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, v7, Lva1;->h:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ".*"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/regex/Matcher;->find()Z

    move-result v9

    const/4 v10, 0x0

    const-string v11, ""

    if-eqz v9, :cond_1

    invoke-virtual {v8, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v8

    goto :goto_0

    :cond_1
    move-object v8, v11

    :goto_0
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v12, 0x1

    :try_start_0
    iget-object v13, v7, Lva1;->h:Ljava/lang/String;

    invoke-virtual {v2, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    array-length v14, v13

    :goto_1
    if-ge v10, v14, :cond_3

    aget-object v15, v13, v10

    invoke-virtual {v15, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v15, v7, Lva1;->h:Ljava/lang/String;

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_3

    :cond_3
    :goto_2
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    sub-int/2addr v0, v12

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :goto_3
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    move-object v0, v2

    :goto_4
    new-instance v9, Ljava/lang/StringBuffer;

    invoke-direct {v9}, Ljava/lang/StringBuffer;-><init>()V

    :try_start_1
    new-instance v10, Lcn/com/custommma/mobile/tracking/viewability/origin/ViewAbilityStats;

    invoke-direct {v10}, Lcn/com/custommma/mobile/tracking/viewability/origin/ViewAbilityStats;-><init>()V

    iget-object v13, v7, Lva1;->h:Ljava/lang/String;

    invoke-virtual {v10, v13}, Lcn/com/custommma/mobile/tracking/viewability/origin/ViewAbilityStats;->setSeparator(Ljava/lang/String;)V

    iget-object v13, v7, Lva1;->i:Ljava/lang/String;

    invoke-virtual {v10, v13}, Lcn/com/custommma/mobile/tracking/viewability/origin/ViewAbilityStats;->setEqualizer(Ljava/lang/String;)V

    iget-object v13, v7, Lva1;->g:Lpe1;

    iget-object v13, v13, Lpe1;->d:Ljava/util/HashMap;

    invoke-virtual {v10, v13}, Lcn/com/custommma/mobile/tracking/viewability/origin/ViewAbilityStats;->setViewabilityarguments(Ljava/util/HashMap;)V

    invoke-virtual {v1, v7, v0}, Lcn/com/custommma/mobile/tracking/api/ViewAbilityHandler;->c(Lva1;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string v14, "ImpressionID"

    invoke-virtual {v10, v14}, Lcn/com/custommma/mobile/tracking/viewability/origin/ViewAbilityStats;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_4

    invoke-virtual {v1, v7, v3, v13}, Lcn/com/custommma/mobile/tracking/api/ViewAbilityHandler;->f(Lva1;Lcn/com/custommma/mobile/tracking/api/ViewAbilityHandler$MonitorType;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v17, v13

    iget-object v13, v7, Lva1;->h:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v13, v7, Lva1;->i:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    goto :goto_5

    :catch_1
    move-exception v0

    goto/16 :goto_9

    :cond_4
    move-object/from16 v17, v13

    move-object v12, v11

    move-object v15, v12

    :goto_5
    const-string v13, "ImpressionType"

    invoke-virtual {v10, v13}, Lcn/com/custommma/mobile/tracking/viewability/origin/ViewAbilityStats;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v18, v15

    sget-object v15, Lcn/com/custommma/mobile/tracking/api/ViewAbilityHandler$MonitorType;->EXPOSEWITHABILITY:Lcn/com/custommma/mobile/tracking/api/ViewAbilityHandler$MonitorType;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    const-string v2, "1"

    move-object/from16 v19, v6

    const-string v6, "0"

    if-eq v3, v15, :cond_9

    :try_start_2
    sget-object v15, Lcn/com/custommma/mobile/tracking/api/ViewAbilityHandler$MonitorType;->VIDEOEXPOSEWITHABILITY:Lcn/com/custommma/mobile/tracking/api/ViewAbilityHandler$MonitorType;

    if-ne v3, v15, :cond_5

    goto/16 :goto_7

    :cond_5
    iget-object v10, v7, Lva1;->b:Lsw2;

    iget-object v10, v10, Lsw2;->a:Ljava/lang/String;

    if-nez v5, :cond_6

    sget-object v10, Lcn/com/custommma/mobile/tracking/api/ViewAbilityHandler$MonitorType;->CLICK:Lcn/com/custommma/mobile/tracking/api/ViewAbilityHandler$MonitorType;

    if-eq v3, v10, :cond_6

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v7, Lva1;->h:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v7, Lva1;->i:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_6

    :cond_6
    const/4 v6, 0x1

    if-ne v5, v6, :cond_7

    sget-object v5, Lcn/com/custommma/mobile/tracking/api/ViewAbilityHandler$MonitorType;->CLICK:Lcn/com/custommma/mobile/tracking/api/ViewAbilityHandler$MonitorType;

    if-eq v3, v5, :cond_7

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v7, Lva1;->h:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v7, Lva1;->i:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_7
    :goto_6
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_8

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v7, Lva1;->h:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v7, Lva1;->i:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "[^"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v7, Lva1;->h:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "]*"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v11}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v9, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_8

    :cond_8
    invoke-virtual {v9, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_8

    :cond_9
    :goto_7
    if-eqz v4, :cond_d

    iget-object v5, v7, Lva1;->f:Lv7a;

    iget v5, v5, Lv7a;->d:I

    invoke-virtual {v10, v5}, Lcn/com/custommma/mobile/tracking/viewability/origin/ViewAbilityStats;->setViewabilityTrackPolicy(I)V

    invoke-virtual {v10, v0}, Lcn/com/custommma/mobile/tracking/viewability/origin/ViewAbilityStats;->setURLExposeDuration(Ljava/lang/String;)V

    invoke-virtual {v10, v0}, Lcn/com/custommma/mobile/tracking/viewability/origin/ViewAbilityStats;->setURLShowCoverRate(Ljava/lang/String;)V

    sget-object v5, Lcn/com/custommma/mobile/tracking/api/ViewAbilityHandler$MonitorType;->VIDEOEXPOSEWITHABILITY:Lcn/com/custommma/mobile/tracking/api/ViewAbilityHandler$MonitorType;

    if-ne v3, v5, :cond_a

    const/4 v5, 0x1

    invoke-virtual {v10, v5}, Lcn/com/custommma/mobile/tracking/viewability/origin/ViewAbilityStats;->setVideoExpose(Z)V

    move/from16 v5, p4

    invoke-virtual {v10, v5}, Lcn/com/custommma/mobile/tracking/viewability/origin/ViewAbilityStats;->setVideoPlayType(I)V

    invoke-virtual {v10, v0}, Lcn/com/custommma/mobile/tracking/viewability/origin/ViewAbilityStats;->setURLVideoDuration(Ljava/lang/String;)V

    invoke-virtual {v10, v0}, Lcn/com/custommma/mobile/tracking/viewability/origin/ViewAbilityStats;->setURLVideoProgressTracks(Ljava/lang/String;)V

    :cond_a
    invoke-virtual {v1, v7, v10, v0}, Lcn/com/custommma/mobile/tracking/api/ViewAbilityHandler;->a(Lva1;Lcn/com/custommma/mobile/tracking/viewability/origin/ViewAbilityStats;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v9, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v9, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v5, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    const-string v11, "Adviewability"

    invoke-virtual {v10, v11}, Lcn/com/custommma/mobile/tracking/viewability/origin/ViewAbilityStats;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_b

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v14, v7, Lva1;->h:Ljava/lang/String;

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_b
    const-string v11, "AdviewabilityResult"

    invoke-virtual {v10, v11}, Lcn/com/custommma/mobile/tracking/viewability/origin/ViewAbilityStats;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_c

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v12, v7, Lva1;->h:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v7, Lva1;->i:Ljava/lang/String;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v9, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_c
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, v7, Lva1;->h:Ljava/lang/String;

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v7, Lva1;->i:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_8

    :cond_d
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v7, Lva1;->h:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v7, Lva1;->i:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_8
    invoke-virtual {v9, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-boolean v2, Lcn/com/custommma/mobile/tracking/api/Countly;->n:Z

    if-eqz v2, :cond_e

    new-instance v2, Landroid/content/Intent;

    sget-object v5, Lcn/com/custommma/mobile/tracking/api/Countly;->o:Ljava/lang/String;

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v5, v1, Lcn/com/custommma/mobile/tracking/api/ViewAbilityHandler;->a:Landroid/content/Context;

    invoke-virtual {v5, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    invoke-static/range {v19 .. v19}, Loe5;->d(Ljava/lang/Object;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "originURL:"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v5, p1

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Loe5;->d(Ljava/lang/Object;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "monitiorType:"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Loe5;->d(Ljava/lang/Object;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "REDIRECT_STR:"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Loe5;->d(Ljava/lang/Object;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "withoutRedirectURL:"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Loe5;->d(Ljava/lang/Object;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "adAreaID:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v2, v17

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Loe5;->d(Ljava/lang/Object;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "imressionID:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v11, v18

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Loe5;->d(Ljava/lang/Object;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "trackURL:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Loe5;->d(Ljava/lang/Object;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "adView:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Loe5;->d(Ljava/lang/Object;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "eventListener:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v1, Lcn/com/custommma/mobile/tracking/api/ViewAbilityHandler;->b:Ltbc;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Loe5;->d(Ljava/lang/Object;)V

    invoke-static/range {v19 .. v19}, Loe5;->d(Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_a

    :goto_9
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_e
    :goto_a
    iget-object v0, v1, Lcn/com/custommma/mobile/tracking/api/ViewAbilityHandler;->b:Ltbc;

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v2, p6

    invoke-interface {v0, v1, v2, v3}, Ltbc;->a(Ljava/lang/String;Lcn/com/custommma/mobile/tracking/viewability/origin/CallBack;Lcn/com/custommma/mobile/tracking/api/ViewAbilityHandler$MonitorType;)V

    return-void
.end method

.method public final i()Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/ViewAbilityConfig;
    .locals 3

    new-instance v0, Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/ViewAbilityConfig;

    invoke-direct {v0}, Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/ViewAbilityConfig;-><init>()V

    :try_start_0
    iget-object v1, p0, Lcn/com/custommma/mobile/tracking/api/ViewAbilityHandler;->d:Lqx8;

    if-eqz v1, :cond_0

    iget-object v1, v1, Lqx8;->c:Lsbc;

    if-eqz v1, :cond_0

    iget v1, v1, Lsbc;->a:I

    invoke-virtual {v0, v1}, Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/ViewAbilityConfig;->setInspectInterval(I)V

    iget-object v1, p0, Lcn/com/custommma/mobile/tracking/api/ViewAbilityHandler;->d:Lqx8;

    iget-object v1, v1, Lqx8;->c:Lsbc;

    iget v1, v1, Lsbc;->c:I

    invoke-virtual {v0, v1}, Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/ViewAbilityConfig;->setExposeValidDuration(I)V

    iget-object v1, p0, Lcn/com/custommma/mobile/tracking/api/ViewAbilityHandler;->d:Lqx8;

    iget-object v1, v1, Lqx8;->c:Lsbc;

    iget v1, v1, Lsbc;->b:I

    int-to-float v1, v1

    const/high16 v2, 0x42c80000    # 100.0f

    div-float/2addr v1, v2

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v2, v1

    invoke-virtual {v0, v2}, Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/ViewAbilityConfig;->setCoverRateScale(F)V

    iget-object v1, p0, Lcn/com/custommma/mobile/tracking/api/ViewAbilityHandler;->d:Lqx8;

    iget-object v1, v1, Lqx8;->c:Lsbc;

    iget v1, v1, Lsbc;->e:I

    invoke-virtual {v0, v1}, Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/ViewAbilityConfig;->setMaxDuration(I)V

    iget-object v1, p0, Lcn/com/custommma/mobile/tracking/api/ViewAbilityHandler;->d:Lqx8;

    iget-object v1, v1, Lqx8;->c:Lsbc;

    iget v1, v1, Lsbc;->f:I

    invoke-virtual {v0, v1}, Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/ViewAbilityConfig;->setMaxUploadAmount(I)V

    iget-object p0, p0, Lcn/com/custommma/mobile/tracking/api/ViewAbilityHandler;->d:Lqx8;

    iget-object p0, p0, Lqx8;->c:Lsbc;

    iget p0, p0, Lsbc;->d:I

    invoke-virtual {v0, p0}, Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/ViewAbilityConfig;->setVideoExposeValidDuration(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    return-object v0
.end method

.method public j(Ljava/lang/String;Lcn/com/custommma/mobile/tracking/viewability/origin/CallBack;)V
    .locals 7

    sget-object v2, Lcn/com/custommma/mobile/tracking/api/ViewAbilityHandler$MonitorType;->CLICK:Lcn/com/custommma/mobile/tracking/api/ViewAbilityHandler$MonitorType;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v6, p2

    invoke-virtual/range {v0 .. v6}, Lcn/com/custommma/mobile/tracking/api/ViewAbilityHandler;->h(Ljava/lang/String;Lcn/com/custommma/mobile/tracking/api/ViewAbilityHandler$MonitorType;Landroid/view/View;IILcn/com/custommma/mobile/tracking/viewability/origin/CallBack;)V

    return-void
.end method

.method public k(Ljava/lang/String;Landroid/view/View;ILcn/com/custommma/mobile/tracking/viewability/origin/CallBack;)V
    .locals 7

    sget-object v2, Lcn/com/custommma/mobile/tracking/api/ViewAbilityHandler$MonitorType;->IMPRESSION:Lcn/com/custommma/mobile/tracking/api/ViewAbilityHandler$MonitorType;

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v5, p3

    move-object v6, p4

    invoke-virtual/range {v0 .. v6}, Lcn/com/custommma/mobile/tracking/api/ViewAbilityHandler;->h(Ljava/lang/String;Lcn/com/custommma/mobile/tracking/api/ViewAbilityHandler$MonitorType;Landroid/view/View;IILcn/com/custommma/mobile/tracking/viewability/origin/CallBack;)V

    return-void
.end method

.method public l(Ljava/lang/String;Landroid/view/View;Lcn/com/custommma/mobile/tracking/viewability/origin/CallBack;)V
    .locals 7

    sget-object v2, Lcn/com/custommma/mobile/tracking/api/ViewAbilityHandler$MonitorType;->EXPOSEWITHABILITY:Lcn/com/custommma/mobile/tracking/api/ViewAbilityHandler$MonitorType;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v6, p3

    invoke-virtual/range {v0 .. v6}, Lcn/com/custommma/mobile/tracking/api/ViewAbilityHandler;->h(Ljava/lang/String;Lcn/com/custommma/mobile/tracking/api/ViewAbilityHandler$MonitorType;Landroid/view/View;IILcn/com/custommma/mobile/tracking/viewability/origin/CallBack;)V

    return-void
.end method

.method public m(Ljava/lang/String;Landroid/view/View;ILcn/com/custommma/mobile/tracking/viewability/origin/CallBack;)V
    .locals 7

    sget-object v2, Lcn/com/custommma/mobile/tracking/api/ViewAbilityHandler$MonitorType;->VIDEOEXPOSEWITHABILITY:Lcn/com/custommma/mobile/tracking/api/ViewAbilityHandler$MonitorType;

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v4, p3

    move-object v6, p4

    invoke-virtual/range {v0 .. v6}, Lcn/com/custommma/mobile/tracking/api/ViewAbilityHandler;->h(Ljava/lang/String;Lcn/com/custommma/mobile/tracking/api/ViewAbilityHandler$MonitorType;Landroid/view/View;IILcn/com/custommma/mobile/tracking/viewability/origin/CallBack;)V

    return-void
.end method

.method public n()V
    .locals 0

    return-void
.end method

.method public o()V
    .locals 0

    return-void
.end method
