.class final Lcn/com/custommma/mobile/tracking/util/SdkConfigUpdateUtil$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/com/custommma/mobile/tracking/util/SdkConfigUpdateUtil;->j(Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field final synthetic val$configUrl:Ljava/lang/String;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/com/custommma/mobile/tracking/util/SdkConfigUpdateUtil$1;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcn/com/custommma/mobile/tracking/util/SdkConfigUpdateUtil$1;->val$configUrl:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcn/com/custommma/mobile/tracking/util/SdkConfigUpdateUtil$1;->val$context:Landroid/content/Context;

    invoke-static {v1}, Lcn/com/custommma/mobile/tracking/util/DeviceInfoUtil;->w(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcn/com/custommma/mobile/tracking/util/a;->b()Lcn/com/custommma/mobile/tracking/util/a;

    move-result-object v1

    iget-object v2, p0, Lcn/com/custommma/mobile/tracking/util/SdkConfigUpdateUtil$1;->val$configUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcn/com/custommma/mobile/tracking/util/a;->c(Ljava/lang/String;)[B

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-static {v2}, Lasc;->a(Ljava/io/InputStream;)Lqx8;

    move-result-object v2

    invoke-static {v2}, Lcn/com/custommma/mobile/tracking/util/SdkConfigUpdateUtil;->b(Lqx8;)Lqx8;

    invoke-static {}, Lcn/com/custommma/mobile/tracking/util/SdkConfigUpdateUtil;->a()Lqx8;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-static {}, Lcn/com/custommma/mobile/tracking/util/SdkConfigUpdateUtil;->a()Lqx8;

    move-result-object v2

    iget-object v2, v2, Lqx8;->b:Ljava/util/List;

    if-eqz v2, :cond_1

    invoke-static {}, Lcn/com/custommma/mobile/tracking/util/SdkConfigUpdateUtil;->a()Lqx8;

    move-result-object v2

    iget-object v2, v2, Lqx8;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([B)V

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcn/com/custommma/mobile/tracking/util/SdkConfigUpdateUtil$1;->val$context:Landroid/content/Context;

    const-string v3, "cn.com.mma.mobile.tracking.mgmi_ssp_sdkconfig"

    const-string v4, "mgmi_ssp_trackingConfig"

    invoke-static {v1, v3, v4, v2}, Lng9;->g(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcn/com/custommma/mobile/tracking/util/SdkConfigUpdateUtil$1;->val$context:Landroid/content/Context;

    const-string v1, "cn.com.mma.mobile.tracking.mgmi_ssp_other"

    const-string v2, "mgmi_ssp_updateTime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {p0, v1, v2, v3, v4}, Lng9;->e(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)V

    const-string p0, "Successful update sdkconfig files"

    invoke-static {p0}, Lrq5;->a(Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_4

    :catch_0
    move-exception p0

    goto :goto_2

    :cond_0
    :goto_0
    invoke-static {}, Lcn/com/custommma/mobile/tracking/util/SdkConfigUpdateUtil;->a()Lqx8;

    move-result-object p0

    invoke-static {p0}, Lcn/com/custommma/mobile/tracking/util/SdkConfigUpdateUtil;->c(Lqx8;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    :goto_1
    invoke-static {v0}, Lcn/com/custommma/mobile/tracking/util/SdkConfigUpdateUtil;->d(Z)Z

    goto :goto_3

    :goto_2
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Online update sdkconfig failed!:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lrq5;->d(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :goto_3
    return-void

    :goto_4
    invoke-static {v0}, Lcn/com/custommma/mobile/tracking/util/SdkConfigUpdateUtil;->d(Z)Z

    throw p0
.end method
