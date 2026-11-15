.class Lcn/com/custommma/mobile/tracking/util/AppListUploader$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/com/custommma/mobile/tracking/util/AppListUploader;->d(Ljava/lang/String;Lva1;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/com/custommma/mobile/tracking/util/AppListUploader;

.field final synthetic val$company:Lva1;

.field final synthetic val$currentTime:J

.field final synthetic val$spName:Ljava/lang/String;

.field final synthetic val$uploadURL:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcn/com/custommma/mobile/tracking/util/AppListUploader;Ljava/lang/String;Lva1;JLjava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/com/custommma/mobile/tracking/util/AppListUploader$1;->this$0:Lcn/com/custommma/mobile/tracking/util/AppListUploader;

    iput-object p2, p0, Lcn/com/custommma/mobile/tracking/util/AppListUploader$1;->val$uploadURL:Ljava/lang/String;

    iput-object p3, p0, Lcn/com/custommma/mobile/tracking/util/AppListUploader$1;->val$company:Lva1;

    iput-wide p4, p0, Lcn/com/custommma/mobile/tracking/util/AppListUploader$1;->val$currentTime:J

    iput-object p6, p0, Lcn/com/custommma/mobile/tracking/util/AppListUploader$1;->val$spName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    invoke-static {}, Lcn/com/custommma/mobile/tracking/util/AppListUploader;->a()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcn/com/custommma/mobile/tracking/util/DeviceInfoUtil;->f(Landroid/content/Context;)Lorg/json/JSONArray;

    move-result-object v2

    invoke-static {}, Lcn/com/custommma/mobile/tracking/util/AppListUploader;->a()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcn/com/custommma/mobile/tracking/util/DeviceInfoUtil;->k(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v3

    const-string/jumbo v4, "time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "sdk"

    const-string v5, "MMASDK"

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "bundleid"

    invoke-static {}, Lcn/com/custommma/mobile/tracking/util/AppListUploader;->a()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "sdkv"

    const-string v5, "V2.2.4"

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "mac"

    const-string v5, "MAC"

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Lna1;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "imei"

    const-string v5, "IMEI"

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Lna1;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "androidid"

    const-string v5, "ANDROIDID"

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Lna1;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "applist"

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "utf-8"

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    const/4 v3, 0x2

    invoke-static {v2, v3}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v1
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    :try_start_2
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-static {}, Lcn/com/custommma/mobile/tracking/util/AppListUploader;->a()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcn/com/custommma/mobile/tracking/util/DeviceInfoUtil;->w(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcn/com/custommma/mobile/tracking/util/a;->b()Lcn/com/custommma/mobile/tracking/util/a;

    move-result-object v2

    iget-object v3, p0, Lcn/com/custommma/mobile/tracking/util/AppListUploader$1;->val$uploadURL:Ljava/lang/String;

    iget-object v4, p0, Lcn/com/custommma/mobile/tracking/util/AppListUploader$1;->val$company:Lva1;

    iget-object v4, v4, Lva1;->k:Ltf;

    iget-boolean v4, v4, Ltf;->c:Z

    invoke-virtual {v2, v3, v1, v4}, Lcn/com/custommma/mobile/tracking/util/a;->e(Ljava/lang/String;Ljava/lang/String;Z)[B

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcn/com/custommma/mobile/tracking/util/AppListUploader$1;->this$0:Lcn/com/custommma/mobile/tracking/util/AppListUploader;

    iget-wide v2, p0, Lcn/com/custommma/mobile/tracking/util/AppListUploader$1;->val$currentTime:J

    invoke-static {v1, v2, v3}, Lcn/com/custommma/mobile/tracking/util/AppListUploader;->b(Lcn/com/custommma/mobile/tracking/util/AppListUploader;J)J

    invoke-static {}, Lcn/com/custommma/mobile/tracking/util/AppListUploader;->a()Landroid/content/Context;

    move-result-object v1

    const-string v2, "cn.com.mma.mobile.tracking.mgmi_ssp_other"

    iget-object v3, p0, Lcn/com/custommma/mobile/tracking/util/AppListUploader$1;->val$spName:Ljava/lang/String;

    iget-wide v4, p0, Lcn/com/custommma/mobile/tracking/util/AppListUploader$1;->val$currentTime:J

    invoke-static {v1, v2, v3, v4, v5}, Lng9;->e(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catch_1
    :cond_0
    invoke-static {v0}, Lcn/com/custommma/mobile/tracking/util/AppListUploader;->c(Z)Z

    goto :goto_2

    :goto_1
    invoke-static {v0}, Lcn/com/custommma/mobile/tracking/util/AppListUploader;->c(Z)Z

    throw p0

    :goto_2
    return-void
.end method
