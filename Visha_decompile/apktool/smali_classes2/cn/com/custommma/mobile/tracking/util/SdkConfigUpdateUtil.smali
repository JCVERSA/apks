.class public abstract Lcn/com/custommma/mobile/tracking/util/SdkConfigUpdateUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Lqx8; = null

.field public static b:Ljava/lang/String; = null

.field public static c:Z = false


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static synthetic a()Lqx8;
    .locals 1

    sget-object v0, Lcn/com/custommma/mobile/tracking/util/SdkConfigUpdateUtil;->a:Lqx8;

    return-object v0
.end method

.method public static synthetic b(Lqx8;)Lqx8;
    .locals 0

    sput-object p0, Lcn/com/custommma/mobile/tracking/util/SdkConfigUpdateUtil;->a:Lqx8;

    return-object p0
.end method

.method public static synthetic c(Lqx8;)V
    .locals 0

    invoke-static {p0}, Lcn/com/custommma/mobile/tracking/util/SdkConfigUpdateUtil;->i(Lqx8;)V

    return-void
.end method

.method public static synthetic d(Z)Z
    .locals 0

    sput-boolean p0, Lcn/com/custommma/mobile/tracking/util/SdkConfigUpdateUtil;->c:Z

    return p0
.end method

.method public static e(Ljava/util/Map;Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x1

    :try_start_0
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    if-nez v1, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {p0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return v0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    sub-long/2addr v1, p0

    const-wide/32 p0, 0x5265c00

    cmp-long p0, v1, p0

    if-ltz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :catch_0
    :goto_0
    return v0
.end method

.method public static f(Landroid/content/Context;)Z
    .locals 11

    const-string v0, "mgmi_ssp_updateTime"

    const-string v1, "cn.com.mma.mobile.tracking.mgmi_ssp_other"

    const/4 v2, 0x1

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {p0, v1, v0}, Lng9;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v5

    cmp-long v7, v3, v5

    const/4 v8, 0x0

    if-gez v7, :cond_0

    invoke-static {p0, v1, v0, v3, v4}, Lng9;->e(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)V

    return v8

    :catch_0
    move-exception p0

    goto :goto_2

    :cond_0
    invoke-static {p0, v2}, Lna1;->i(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_1

    sub-long v0, v3, v5

    const-wide/32 v9, 0x5265c00

    cmp-long v0, v0, v9

    if-ltz v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v8

    :goto_0
    invoke-static {p0, v8}, Lna1;->i(Landroid/content/Context;I)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_2

    sub-long/2addr v3, v5

    const-wide/32 v5, 0xf731400

    cmp-long p0, v3, v5

    if-ltz p0, :cond_2

    move p0, v2

    goto :goto_1

    :cond_2
    move p0, v8

    :goto_1
    if-nez v0, :cond_4

    if-eqz p0, :cond_3

    goto :goto_3

    :cond_3
    move v2, v8

    goto :goto_3

    :goto_2
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_4
    :goto_3
    return v2
.end method

.method public static g(Landroid/content/Context;)Lqx8;
    .locals 1

    sget-object v0, Lcn/com/custommma/mobile/tracking/util/SdkConfigUpdateUtil;->a:Lqx8;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lqx8;->b:Ljava/util/List;

    if-nez v0, :cond_1

    :cond_0
    invoke-static {p0}, Lcn/com/custommma/mobile/tracking/util/SdkConfigUpdateUtil;->h(Landroid/content/Context;)Lqx8;

    move-result-object v0

    sput-object v0, Lcn/com/custommma/mobile/tracking/util/SdkConfigUpdateUtil;->a:Lqx8;

    if-nez v0, :cond_1

    sget-object v0, Lcn/com/custommma/mobile/tracking/util/SdkConfigUpdateUtil;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcn/com/custommma/mobile/tracking/util/SdkConfigUpdateUtil;->b:Ljava/lang/String;

    invoke-static {p0, v0}, Lcn/com/custommma/mobile/tracking/util/SdkConfigUpdateUtil;->j(Landroid/content/Context;Ljava/lang/String;)V

    :cond_1
    sget-object p0, Lcn/com/custommma/mobile/tracking/util/SdkConfigUpdateUtil;->a:Lqx8;

    return-object p0
.end method

.method public static h(Landroid/content/Context;)Lqx8;
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "cn.com.mma.mobile.tracking.mgmi_ssp_sdkconfig"

    const-string v2, "mgmi_ssp_trackingConfig"

    invoke-static {p0, v1, v2}, Lng9;->d(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    :try_start_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    new-instance p0, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-direct {p0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    goto :goto_0

    :catchall_0
    move-exception p0

    move-object v1, v0

    goto :goto_3

    :catch_0
    move-object p0, v0

    move-object v1, p0

    goto :goto_4

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p0

    const-string/jumbo v1, "ssp_mma_sdk_config.xml"

    invoke-virtual {p0, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    if-eqz p0, :cond_1

    :try_start_2
    invoke-static {p0}, Lasc;->a(Ljava/io/InputStream;)Lqx8;

    move-result-object v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    invoke-static {v1}, Lcn/com/custommma/mobile/tracking/util/SdkConfigUpdateUtil;->i(Lqx8;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v1

    move-object v3, v1

    move-object v1, p0

    move-object p0, v3

    goto :goto_3

    :catch_1
    move-object v1, v0

    goto :goto_4

    :cond_1
    move-object v1, v0

    :goto_1
    if-eqz p0, :cond_3

    :goto_2
    :try_start_4
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    goto :goto_5

    :catch_2
    move-exception p0

    goto :goto_6

    :goto_3
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    :cond_2
    throw p0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    :catch_3
    :goto_4
    if-eqz p0, :cond_3

    goto :goto_2

    :cond_3
    :goto_5
    return-object v1

    :goto_6
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-object v0
.end method

.method public static i(Lqx8;)V
    .locals 1

    if-eqz p0, :cond_2

    :try_start_0
    iget-object v0, p0, Lqx8;->a:Lrd7;

    if-eqz v0, :cond_2

    iget-object v0, v0, Lrd7;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lqx8;->a:Lrd7;

    iget-object v0, v0, Lrd7;->a:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lkf1;->a:I

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v0, p0, Lqx8;->a:Lrd7;

    iget-object v0, v0, Lrd7;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lqx8;->a:Lrd7;

    iget-object v0, v0, Lrd7;->b:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lkf1;->b:I

    :cond_1
    iget-object v0, p0, Lqx8;->a:Lrd7;

    iget-object v0, v0, Lrd7;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object p0, p0, Lqx8;->a:Lrd7;

    iget-object p0, p0, Lrd7;->c:Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    sput p0, Lkf1;->c:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_2
    :goto_2
    return-void
.end method

.method public static declared-synchronized j(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    const-class v0, Lcn/com/custommma/mobile/tracking/util/SdkConfigUpdateUtil;

    monitor-enter v0

    :try_start_0
    sget-boolean v1, Lcn/com/custommma/mobile/tracking/util/SdkConfigUpdateUtil;->c:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    :try_start_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {p0}, Lcn/com/custommma/mobile/tracking/util/SdkConfigUpdateUtil;->f(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    sput-object p1, Lcn/com/custommma/mobile/tracking/util/SdkConfigUpdateUtil;->b:Ljava/lang/String;

    const/4 v1, 0x1

    sput-boolean v1, Lcn/com/custommma/mobile/tracking/util/SdkConfigUpdateUtil;->c:Z

    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcn/com/custommma/mobile/tracking/util/SdkConfigUpdateUtil$1;

    invoke-direct {v2, p0, p1}, Lcn/com/custommma/mobile/tracking/util/SdkConfigUpdateUtil$1;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method
