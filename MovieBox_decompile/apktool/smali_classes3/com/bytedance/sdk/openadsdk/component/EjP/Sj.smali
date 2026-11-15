.class public Lcom/bytedance/sdk/openadsdk/component/EjP/Sj;
.super Ljava/lang/Object;
.source "source.java"


# direct methods
.method public static Sj(II)V
    .locals 1

    .line 1
    new-instance v0, Lcom/bytedance/sdk/openadsdk/component/EjP/Sj$1;

    invoke-direct {v0, p0, p1}, Lcom/bytedance/sdk/openadsdk/component/EjP/Sj$1;-><init>(II)V

    const-string p0, "openad_load_ad_timeout"

    const/4 p1, 0x0

    invoke-static {p0, p1, v0}, Lcom/bytedance/sdk/openadsdk/Zq/TKC;->Sj(Ljava/lang/String;ZLcom/bytedance/sdk/openadsdk/Zq/sP;)V

    return-void
.end method

.method public static Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;)V
    .locals 2

    .line 18
    const-string v0, "cache_expire"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/bytedance/sdk/openadsdk/EjP/TKC;->EjP(Lcom/bytedance/sdk/openadsdk/core/model/sU;Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method public static Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;IIF)V
    .locals 3

    .line 2
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 3
    :try_start_0
    invoke-static {v0, p0}, Lcom/bytedance/sdk/openadsdk/component/EjP/Sj;->Sj(Lorg/json/JSONObject;Lcom/bytedance/sdk/openadsdk/core/model/sU;)V

    .line 4
    const-string v1, "openad_creative_type"

    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->HiB(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "video_normal_ad"

    goto :goto_0

    :catch_0
    move-exception p2

    goto :goto_1

    :cond_0
    const-string v2, "image_normal_ad"

    :goto_0
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 5
    const-string v1, "skip_time"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 6
    const-string v1, "skip_show_time"

    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 7
    const-string p2, "total_time"

    float-to-double v1, p3

    invoke-virtual {v0, p2, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 8
    :goto_1
    const-string p3, "TTAppOpenAdReport"

    const-string v1, "reportSkip json error"

    invoke-static {p3, v1, p2}, Lcom/bytedance/sdk/component/utils/sU;->Sj(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 9
    :goto_2
    const-string p2, "skip"

    int-to-long v1, p1

    invoke-static {p0, p2, v1, v2, v0}, Lcom/bytedance/sdk/openadsdk/EjP/TKC;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;Ljava/lang/String;JLorg/json/JSONObject;)V

    return-void
.end method

.method public static Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;ILcom/bytedance/sdk/openadsdk/core/model/ley;)V
    .locals 5

    .line 22
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-wide/16 v1, 0x0

    .line 23
    :try_start_0
    const-string v3, "openad_creative_type"

    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->HiB(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "video_normal_ad"

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    const-string v4, "image_normal_ad"

    :goto_0
    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 24
    const-string v3, "open_ad_cache_type"

    invoke-virtual {v0, v3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    if-eqz p2, :cond_2

    .line 25
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/WMZ;->sP()Lcom/bytedance/sdk/openadsdk/utils/WMZ;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/bytedance/sdk/openadsdk/core/model/ley;->sP(Lcom/bytedance/sdk/openadsdk/utils/WMZ;)V

    .line 26
    invoke-static {v0, p0}, Lcom/bytedance/sdk/openadsdk/component/EjP/Sj;->Sj(Lorg/json/JSONObject;Lcom/bytedance/sdk/openadsdk/core/model/sU;)V

    .line 27
    const-string p1, "client_start_time"

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/model/ley;->sP()J

    move-result-wide v3

    invoke-virtual {v0, p1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 28
    const-string p1, "sever_time"

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/model/ley;->EjP()J

    move-result-wide v3

    invoke-virtual {v0, p1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 29
    const-string p1, "network_time"

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/model/ley;->TKC()J

    move-result-wide v3

    invoke-virtual {v0, p1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 30
    const-string p1, "client_end_time"

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/model/ley;->HiB()J

    move-result-wide v3

    invoke-virtual {v0, p1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 31
    const-string p1, "download_resource_duration"

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/model/ley;->Jcg()J

    move-result-wide v3

    invoke-virtual {v0, p1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 32
    const-string p1, "resource_source"

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/model/ley;->Dq()I

    move-result v3

    invoke-virtual {v0, p1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 33
    const-string p1, "is_bidding"

    iget-boolean v3, p2, Lcom/bytedance/sdk/openadsdk/core/model/ley;->Sj:Z

    invoke-virtual {v0, p1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 34
    iget-boolean p1, p2, Lcom/bytedance/sdk/openadsdk/core/model/ley;->Sj:Z

    if-eqz p1, :cond_1

    .line 35
    const-string p1, "load_wait_time"

    iget-wide v3, p2, Lcom/bytedance/sdk/openadsdk/core/model/ley;->sP:J

    invoke-virtual {v0, p1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 36
    :cond_1
    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/model/ley;->vS()J

    move-result-wide v1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 37
    :goto_1
    const-string p2, "TTAppOpenAdReport"

    const-string v3, "reportLoadNetDuration json error"

    invoke-static {p2, v3, p1}, Lcom/bytedance/sdk/component/utils/sU;->Sj(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 38
    :cond_2
    :goto_2
    const-string p1, "load_net_duration"

    invoke-static {p0, p1, v1, v2, v0}, Lcom/bytedance/sdk/openadsdk/EjP/TKC;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;Ljava/lang/String;JLorg/json/JSONObject;)V

    return-void
.end method

.method public static Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;J)V
    .locals 3

    .line 39
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 40
    :try_start_0
    invoke-static {v0, p0}, Lcom/bytedance/sdk/openadsdk/component/EjP/Sj;->Sj(Lorg/json/JSONObject;Lcom/bytedance/sdk/openadsdk/core/model/sU;)V

    .line 41
    const-string v1, "openad_creative_type"

    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->HiB(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "video_normal_ad"

    goto :goto_0

    :cond_0
    const-string v2, "image_normal_ad"

    :goto_0
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 42
    :catch_0
    const-string v1, "TTAppOpenAdReport"

    const-string v2, "reportLoadCacheDuration json error"

    invoke-static {v1, v2}, Lcom/bytedance/sdk/component/utils/sU;->sP(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    :goto_1
    const-string v1, "load_cache_duration"

    invoke-static {p0, v1, p1, p2, v0}, Lcom/bytedance/sdk/openadsdk/EjP/TKC;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;Ljava/lang/String;JLorg/json/JSONObject;)V

    return-void
.end method

.method public static Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;JFZ)V
    .locals 5

    .line 10
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 11
    :try_start_0
    invoke-static {v0, p0}, Lcom/bytedance/sdk/openadsdk/component/EjP/Sj;->Sj(Lorg/json/JSONObject;Lcom/bytedance/sdk/openadsdk/core/model/sU;)V

    .line 12
    const-string v1, "openad_creative_type"

    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->HiB(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "video_normal_ad"

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    const-string v2, "image_normal_ad"

    :goto_0
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    if-eqz p4, :cond_1

    .line 13
    const-string p4, "video_duration"

    float-to-double v1, p3

    invoke-virtual {v0, p4, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 14
    const-string p3, "video_percent"

    long-to-double p1, p1

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    mul-double/2addr p1, v3

    const-wide/high16 v3, 0x4024000000000000L    # 10.0

    div-double/2addr p1, v3

    div-double/2addr p1, v1

    double-to-int p1, p1

    invoke-virtual {v0, p3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto :goto_2

    .line 15
    :cond_1
    const-string p1, "image_duration"

    float-to-double p2, p3

    invoke-virtual {v0, p1, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 16
    :goto_1
    const-string p2, "TTAppOpenAdReport"

    const-string p3, "reportDestroy json error"

    invoke-static {p2, p3, p1}, Lcom/bytedance/sdk/component/utils/sU;->Sj(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 17
    :goto_2
    const-string p1, "destroy"

    invoke-static {p0, p1, v0}, Lcom/bytedance/sdk/openadsdk/EjP/TKC;->EjP(Lcom/bytedance/sdk/openadsdk/core/model/sU;Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method public static Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;JZ)V
    .locals 2

    .line 19
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 20
    :try_start_0
    const-string v1, "order"

    if-eqz p3, :cond_0

    const/4 p3, 0x1

    goto :goto_0

    :cond_0
    const/4 p3, 0x2

    :goto_0
    invoke-virtual {v0, v1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 21
    :catch_0
    const-string p3, "download_image_duration"

    invoke-static {p0, p3, p1, p2, v0}, Lcom/bytedance/sdk/openadsdk/EjP/TKC;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;Ljava/lang/String;JLorg/json/JSONObject;)V

    return-void
.end method

.method private static Sj(Lorg/json/JSONObject;Lcom/bytedance/sdk/openadsdk/core/model/sU;)V
    .locals 1

    .line 44
    :try_start_0
    const-string v0, "is_icon_only"

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->yfI()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 45
    :goto_1
    const-string p1, "TTAppOpenAdReport"

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/bytedance/sdk/component/utils/sU;->sP(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static sP(Lcom/bytedance/sdk/openadsdk/core/model/sU;)V
    .locals 4

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 2
    :try_start_0
    const-string v1, "openad_creative_type"

    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->HiB(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "video_normal_ad"

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_1

    :cond_0
    const-string v2, "image_normal_ad"

    :goto_0
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 3
    :goto_1
    const-string v2, "TTAppOpenAdReport"

    const-string v3, "reportCacheLoss json error"

    invoke-static {v2, v3, v1}, Lcom/bytedance/sdk/component/utils/sU;->Sj(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 4
    :goto_2
    const-string v1, "cache_loss"

    invoke-static {p0, v1, v0}, Lcom/bytedance/sdk/openadsdk/EjP/TKC;->EjP(Lcom/bytedance/sdk/openadsdk/core/model/sU;Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method public static sP(Lcom/bytedance/sdk/openadsdk/core/model/sU;JZ)V
    .locals 4

    .line 5
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 6
    :try_start_0
    const-string v1, "size"

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->UHs()La6/b;

    move-result-object v2

    invoke-virtual {v2}, La6/b;->g()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 7
    const-string v1, "video_duration"

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->UHs()La6/b;

    move-result-object v2

    invoke-virtual {v2}, La6/b;->K()D

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 8
    const-string v1, "order"

    if-eqz p3, :cond_0

    const/4 p3, 0x1

    goto :goto_0

    :cond_0
    const/4 p3, 0x2

    :goto_0
    invoke-virtual {v0, v1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    :catch_0
    const-string p3, "download_video_duration"

    invoke-static {p0, p3, p1, p2, v0}, Lcom/bytedance/sdk/openadsdk/EjP/TKC;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;Ljava/lang/String;JLorg/json/JSONObject;)V

    return-void
.end method
