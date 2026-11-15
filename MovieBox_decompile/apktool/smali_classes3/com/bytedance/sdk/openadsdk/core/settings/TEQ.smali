.class public Lcom/bytedance/sdk/openadsdk/core/settings/TEQ;
.super Lcom/bytedance/sdk/openadsdk/core/settings/aa;
.source "source.java"


# static fields
.field static final EjP:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private HiB:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public TKC:Z


# direct methods
.method static constructor <clinit>()V
    .locals 20

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    const-string v18, "pl"

    .line 4
    .line 5
    const-string v19, "tr"

    .line 6
    .line 7
    const-string v1, "ja"

    .line 8
    .line 9
    const-string v2, "en"

    .line 10
    .line 11
    const-string v3, "ko"

    .line 12
    .line 13
    const-string v4, "zh"

    .line 14
    .line 15
    const-string v5, "th"

    .line 16
    .line 17
    const-string v6, "vi"

    .line 18
    .line 19
    const-string v7, "id"

    .line 20
    .line 21
    const-string v8, "ru"

    .line 22
    .line 23
    const-string v9, "ar"

    .line 24
    .line 25
    const-string v10, "fr"

    .line 26
    .line 27
    const-string v11, "de"

    .line 28
    .line 29
    const-string v12, "it"

    .line 30
    .line 31
    const-string v13, "es"

    .line 32
    .line 33
    const-string v14, "hi"

    .line 34
    .line 35
    const-string v15, "pt"

    .line 36
    .line 37
    const-string v16, "zh-Hant"

    .line 38
    .line 39
    const-string v17, "ms"

    .line 40
    .line 41
    filled-new-array/range {v1 .. v19}, [Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 50
    .line 51
    .line 52
    sput-object v0, Lcom/bytedance/sdk/openadsdk/core/settings/TEQ;->EjP:Ljava/util/ArrayList;

    .line 53
    .line 54
    return-void
.end method

.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/settings/aa$Sj;)V
    .locals 1

    .line 1
    const-string v0, "tt_sdk_settings_sr.prop"

    .line 2
    .line 3
    invoke-direct {p0, v0, p1}, Lcom/bytedance/sdk/openadsdk/core/settings/aa;-><init>(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/settings/aa$Sj;)V

    .line 4
    .line 5
    .line 6
    new-instance p1, Ljava/util/HashSet;

    .line 7
    .line 8
    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    .line 9
    .line 10
    .line 11
    invoke-static {p1}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/settings/TEQ;->HiB:Ljava/util/Set;

    .line 16
    .line 17
    return-void
.end method

.method public static Sj(Ljava/util/Set;)Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    if-nez p0, :cond_0

    .line 304
    :try_start_0
    new-instance p0, Ljava/util/HashSet;

    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    return-object p0

    .line 305
    :cond_0
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 306
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 307
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 308
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_2
    return-object v0

    .line 309
    :catchall_0
    new-instance p0, Ljava/util/HashSet;

    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    return-object p0
.end method


# virtual methods
.method public Sj(Lorg/json/JSONObject;)V
    .locals 33

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    .line 1
    const-string v3, "bus_con_tnc_interval"

    const-string v4, "bus_con_adshow_check_enable"

    const-string v5, "bus_con_dislike_report_raw"

    const-string v6, "bus_con_sec_type"

    const-string v7, "bus_con_send_log_type"

    const-string v8, "bus_con"

    const-string v9, "allow_blind_mode_request_ad"

    const-string v10, "splash_video_load_strategy"

    const-string v11, "video_cache_config"

    const-string v12, "read_video_from_cache"

    const-string v0, "gecko_hosts"

    const-string v13, "ad_revenue_enable"

    const-string v14, "support_rtl"

    const-string v15, "aes_key"

    move-object/from16 v16, v3

    const-string v3, "support_gzip"

    move-object/from16 v17, v4

    const-string v4, "fetch_tpl_second"

    move-object/from16 v18, v5

    const-string v5, "fetch_tpl_timeout_ctrl"

    move-object/from16 v19, v6

    const-string v6, "force_language"

    move-object/from16 v20, v7

    const-string v7, "target_region"

    move-object/from16 v21, v8

    const-string v8, "max_tpl_cnts"

    move-object/from16 v22, v9

    const-string v9, "insert_js_config"

    move-object/from16 v23, v10

    invoke-virtual/range {p0 .. p0}, Lcom/bytedance/sdk/openadsdk/core/settings/aa;->Sj()Lcom/bytedance/sdk/openadsdk/core/settings/HiB$Sj;

    move-result-object v10

    .line 2
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/settings/Fmk;->gq()Lcom/bytedance/sdk/openadsdk/core/settings/vS;

    move-result-object v24

    invoke-interface/range {v24 .. v24}, Lcom/bytedance/sdk/openadsdk/core/settings/vS;->HiB()Lorg/json/JSONObject;

    move-result-object v24

    move-object/from16 v25, v11

    .line 3
    const-string v11, "digest"

    invoke-virtual {v2, v11}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v26

    move-object/from16 v27, v12

    if-eqz v26, :cond_0

    if-eqz v24, :cond_0

    .line 4
    invoke-virtual/range {v26 .. v26}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v28, v0

    invoke-virtual/range {v24 .. v24}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move-object/from16 v28, v0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, v1, Lcom/bytedance/sdk/openadsdk/core/settings/TEQ;->TKC:Z

    if-eqz v26, :cond_2

    .line 5
    invoke-virtual/range {v26 .. v26}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v10, v11, v0}, Lcom/bytedance/sdk/openadsdk/core/settings/HiB$Sj;->Sj(Ljava/lang/String;Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/settings/HiB$Sj;

    goto :goto_1

    .line 6
    :cond_2
    invoke-interface {v10, v11}, Lcom/bytedance/sdk/openadsdk/core/settings/HiB$Sj;->Sj(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/settings/HiB$Sj;

    .line 7
    :goto_1
    const-string v0, "data_time"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v11

    const-string v0, "data_time"

    invoke-interface {v10, v0, v11, v12}, Lcom/bytedance/sdk/openadsdk/core/settings/HiB$Sj;->Sj(Ljava/lang/String;J)Lcom/bytedance/sdk/openadsdk/core/settings/HiB$Sj;

    .line 8
    const-string v0, "req_inter_min"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_5

    const-wide/16 v11, 0xa

    .line 9
    invoke-virtual {v2, v0, v11, v12}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v11

    const-wide/32 v29, 0xea60

    mul-long v11, v11, v29

    const-wide/16 v29, 0x0

    cmp-long v24, v11, v29

    if-ltz v24, :cond_3

    const-wide/32 v29, 0x5265c00

    cmp-long v24, v11, v29

    if-lez v24, :cond_4

    :cond_3
    const-wide/32 v11, 0x927c0

    .line 10
    :cond_4
    invoke-interface {v10, v0, v11, v12}, Lcom/bytedance/sdk/openadsdk/core/settings/HiB$Sj;->Sj(Ljava/lang/String;J)Lcom/bytedance/sdk/openadsdk/core/settings/HiB$Sj;

    .line 11
    :cond_5
    const-string v0, "lp_new_style"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    const v11, 0x7fffffff

    if-eqz v0, :cond_6

    .line 12
    const-string v0, "lp_new_style"

    invoke-virtual {v2, v0, v11}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    .line 13
    const-string v12, "landingpage_new_style"

    invoke-interface {v10, v12, v0}, Lcom/bytedance/sdk/openadsdk/core/settings/HiB$Sj;->Sj(Ljava/lang/String;I)Lcom/bytedance/sdk/openadsdk/core/settings/HiB$Sj;

    .line 14
    :cond_6
    const-string v0, "blank_detect_rate"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_9

    const/16 v12, 0x1e

    .line 15
    invoke-virtual {v2, v0, v12}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v12

    if-ltz v12, :cond_7

    const/16 v11, 0x64

    if-le v12, v11, :cond_8

    :cond_7
    const/16 v12, 0x1e

    .line 16
    :cond_8
    invoke-interface {v10, v0, v12}, Lcom/bytedance/sdk/openadsdk/core/settings/HiB$Sj;->Sj(Ljava/lang/String;I)Lcom/bytedance/sdk/openadsdk/core/settings/HiB$Sj;

    .line 17
    :cond_9
    const-string v0, "feq_policy"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 18
    const-string v11, "duration"

    invoke-virtual {v0, v11}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_a

    .line 19
    invoke-virtual {v0, v11}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v29

    const-wide/16 v31, 0x3e8

    move-object/from16 v26, v13

    mul-long v12, v29, v31

    .line 20
    invoke-interface {v10, v11, v12, v13}, Lcom/bytedance/sdk/openadsdk/core/settings/HiB$Sj;->Sj(Ljava/lang/String;J)Lcom/bytedance/sdk/openadsdk/core/settings/HiB$Sj;

    goto :goto_2

    :cond_a
    move-object/from16 v26, v13

    .line 21
    :goto_2
    const-string v11, "max"

    invoke-virtual {v0, v11}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_c

    .line 22
    invoke-virtual {v0, v11}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    .line 23
    invoke-interface {v10, v11, v0}, Lcom/bytedance/sdk/openadsdk/core/settings/HiB$Sj;->Sj(Ljava/lang/String;I)Lcom/bytedance/sdk/openadsdk/core/settings/HiB$Sj;

    goto :goto_3

    :cond_b
    move-object/from16 v26, v13

    .line 24
    :cond_c
    :goto_3
    const-string v0, "vbtt"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_d

    const/4 v11, 0x5

    .line 25
    invoke-virtual {v2, v0, v11}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v11

    .line 26
    invoke-interface {v10, v0, v11}, Lcom/bytedance/sdk/openadsdk/core/settings/HiB$Sj;->Sj(Ljava/lang/String;I)Lcom/bytedance/sdk/openadsdk/core/settings/HiB$Sj;

    .line 27
    :cond_d
    const-string v0, "abtest"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 28
    const-string v11, "version"

    invoke-virtual {v0, v11}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_e

    .line 29
    const-string v11, "version"

    invoke-virtual {v0, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 30
    const-string v12, "ab_test_version"

    invoke-interface {v10, v12, v11}, Lcom/bytedance/sdk/openadsdk/core/settings/HiB$Sj;->Sj(Ljava/lang/String;Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/settings/HiB$Sj;

    .line 31
    :cond_e
    const-string v11, "param"

    invoke-virtual {v0, v11}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_10

    .line 32
    const-string v11, "param"

    invoke-virtual {v0, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 33
    const-string v11, "ab_test_param"

    invoke-interface {v10, v11, v0}, Lcom/bytedance/sdk/openadsdk/core/settings/HiB$Sj;->Sj(Ljava/lang/String;Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/settings/HiB$Sj;

    goto :goto_4

    .line 34
    :cond_f
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/settings/Fmk;->gq()Lcom/bytedance/sdk/openadsdk/core/settings/vS;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/settings/vS;->Jcg()V

    .line 35
    :cond_10
    :goto_4
    const-string v0, "log_rate_conf"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 36
    const-string v11, "global_rate"

    invoke-virtual {v0, v11}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_11

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    .line 37
    invoke-virtual {v0, v11, v12, v13}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v12

    double-to-float v0, v12

    .line 38
    invoke-interface {v10, v11, v0}, Lcom/bytedance/sdk/openadsdk/core/settings/HiB$Sj;->Sj(Ljava/lang/String;F)Lcom/bytedance/sdk/openadsdk/core/settings/HiB$Sj;

    .line 39
    :cond_11
    const-string v0, "pyload_h5"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_12

    .line 40
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 41
    invoke-interface {v10, v0, v11}, Lcom/bytedance/sdk/openadsdk/core/settings/HiB$Sj;->Sj(Ljava/lang/String;Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/settings/HiB$Sj;

    .line 42
    :cond_12
    const-string v0, "pure_pyload_h5"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 43
    const-string v0, "pure_pyload_h5"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 44
    const-string v11, "playableLoadH5Url"

    invoke-interface {v10, v11, v0}, Lcom/bytedance/sdk/openadsdk/core/settings/HiB$Sj;->Sj(Ljava/lang/String;Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/settings/HiB$Sj;

    .line 45
    :cond_13
    const-string v0, "ads_url"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_14

    .line 46
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 47
    invoke-interface {v10, v0, v11}, Lcom/bytedance/sdk/openadsdk/core/settings/HiB$Sj;->Sj(Ljava/lang/String;Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/settings/HiB$Sj;

    .line 48
    :cond_14
    const-string v0, "settings_url"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_15

    .line 49
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 50
    invoke-interface {v10, v0, v11}, Lcom/bytedance/sdk/openadsdk/core/settings/HiB$Sj;->Sj(Ljava/lang/String;Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/settings/HiB$Sj;

    .line 51
    :cond_15
    const-string v0, "app_log_url"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_16

    .line 52
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 53
    invoke-interface {v10, v0, v11}, Lcom/bytedance/sdk/openadsdk/core/settings/HiB$Sj;->Sj(Ljava/lang/String;Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/settings/HiB$Sj;

    .line 54
    :cond_16
    const-string v0, "privacy_url"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 55
    const-string v0, "privacy_url"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 56
    const-string v11, "policy_url"

    invoke-interface {v10, v11, v0}, Lcom/bytedance/sdk/openadsdk/core/settings/HiB$Sj;->Sj(Ljava/lang/String;Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/settings/HiB$Sj;

    .line 57
    :cond_17
    const-string v0, "consent_url"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_18

    .line 58
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 59
    invoke-interface {v10, v0, v11}, Lcom/bytedance/sdk/openadsdk/core/settings/HiB$Sj;->Sj(Ljava/lang/String;Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/settings/HiB$Sj;

    .line 60
    :cond_18
    const-string v0, "ivrv_downward"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_19

    const/4 v11, 0x0

    .line 61
    invoke-virtual {v2, v0, v11}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v12

    .line 62
    invoke-interface {v10, v0, v12}, Lcom/bytedance/sdk/openadsdk/core/settings/HiB$Sj;->Sj(Ljava/lang/String;I)Lcom/bytedance/sdk/openadsdk/core/settings/HiB$Sj;

    .line 63
    :cond_19
    const-string v0, "dc"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_1a

    .line 64
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 65
    invoke-interface {v10, v0, v11}, Lcom/bytedance/sdk/openadsdk/core/settings/HiB$Sj;->Sj(Ljava/lang/String;Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/settings/HiB$Sj;

    .line 66
    :cond_1a
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/settings/Fmk;->gq()Lcom/bytedance/sdk/openadsdk/core/settings/vS;

    move-result-object v0

    invoke-interface {v0, v2, v10}, Lcom/bytedance/sdk/openadsdk/core/settings/vS;->Sj(Lorg/json/JSONObject;Lcom/bytedance/sdk/openadsdk/core/settings/HiB$Sj;)V

    .line 67
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/settings/Fmk;->gq()Lcom/bytedance/sdk/openadsdk/core/settings/vS;

    move-result-object v0

    invoke-interface {v0, v2, v10}, Lcom/bytedance/sdk/openadsdk/core/settings/vS;->sP(Lorg/json/JSONObject;Lcom/bytedance/sdk/openadsdk/core/settings/HiB$Sj;)V

    .line 68
    const-string v0, "if_both_open"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_1b

    const/4 v11, 0x0

    .line 69
    invoke-virtual {v2, v0, v11}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v12

    .line 70
    invoke-interface {v10, v0, v12}, Lcom/bytedance/sdk/openadsdk/core/settings/HiB$Sj;->Sj(Ljava/lang/String;I)Lcom/bytedance/sdk/openadsdk/core/settings/HiB$Sj;

    .line 71
    :cond_1b
    const-string v0, "support_tnc"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_1c

    const/4 v11, 0x1

    .line 72
    invoke-virtual {v2, v0, v11}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v12

    .line 73
    invoke-interface {v10, v0, v12}, Lcom/bytedance/sdk/openadsdk/core/settings/HiB$Sj;->Sj(Ljava/lang/String;I)Lcom/bytedance/sdk/openadsdk/core/settings/HiB$Sj;

    .line 74
    :cond_1c
    invoke-virtual {v2, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    const-string v11, ""

    if-eqz v0, :cond_1d

    .line 75
    invoke-virtual {v2, v9, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 76
    invoke-interface {v10, v9, v0}, Lcom/bytedance/sdk/openadsdk/core/settings/HiB$Sj;->Sj(Ljava/lang/String;Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/settings/HiB$Sj;

    .line 77
    :cond_1d
    invoke-virtual {v2, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1e

    const/16 v0, 0x64

    .line 78
    invoke-virtual {v2, v8, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    .line 79
    invoke-interface {v10, v8, v0}, Lcom/bytedance/sdk/openadsdk/core/settings/HiB$Sj;->Sj(Ljava/lang/String;I)Lcom/bytedance/sdk/openadsdk/core/settings/HiB$Sj;

    .line 80
    :cond_1e
    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 81
    invoke-virtual {v2, v7, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 82
    invoke-interface {v10, v7, v0}, Lcom/bytedance/sdk/openadsdk/core/settings/HiB$Sj;->Sj(Ljava/lang/String;Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/settings/HiB$Sj;

    .line 83
    :cond_1f
    const-string v0, "app_common_config"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    if-eqz v7, :cond_28

    .line 84
    invoke-virtual {v7, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 85
    invoke-virtual {v7, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 86
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_20

    sget-object v8, Lcom/bytedance/sdk/openadsdk/core/settings/TEQ;->EjP:Ljava/util/ArrayList;

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_20

    .line 87
    invoke-interface {v10, v6, v0}, Lcom/bytedance/sdk/openadsdk/core/settings/HiB$Sj;->Sj(Ljava/lang/String;Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/settings/HiB$Sj;

    .line 88
    :cond_20
    invoke-virtual {v7, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_21

    const/16 v0, 0xbb8

    .line 89
    invoke-virtual {v7, v5, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    .line 90
    invoke-interface {v10, v5, v0}, Lcom/bytedance/sdk/openadsdk/core/settings/HiB$Sj;->Sj(Ljava/lang/String;I)Lcom/bytedance/sdk/openadsdk/core/settings/HiB$Sj;

    .line 91
    :cond_21
    invoke-virtual {v7, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    const/4 v5, 0x0

    if-eqz v0, :cond_22

    .line 92
    invoke-virtual {v7, v4, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    .line 93
    invoke-interface {v10, v4, v0}, Lcom/bytedance/sdk/openadsdk/core/settings/HiB$Sj;->Sj(Ljava/lang/String;I)Lcom/bytedance/sdk/openadsdk/core/settings/HiB$Sj;

    .line 94
    :cond_22
    invoke-virtual {v7, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 95
    invoke-virtual {v7, v3, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 96
    invoke-interface {v10, v3, v0}, Lcom/bytedance/sdk/openadsdk/core/settings/HiB$Sj;->Sj(Ljava/lang/String;Z)Lcom/bytedance/sdk/openadsdk/core/settings/HiB$Sj;

    .line 97
    :cond_23
    invoke-virtual {v7, v15}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 98
    invoke-virtual {v7, v15}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 99
    invoke-interface {v10, v15, v0}, Lcom/bytedance/sdk/openadsdk/core/settings/HiB$Sj;->Sj(Ljava/lang/String;Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/settings/HiB$Sj;

    .line 100
    :cond_24
    invoke-virtual {v7, v14}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_25

    const/4 v3, 0x0

    .line 101
    invoke-virtual {v7, v14, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 102
    invoke-interface {v10, v14, v0}, Lcom/bytedance/sdk/openadsdk/core/settings/HiB$Sj;->Sj(Ljava/lang/String;Z)Lcom/bytedance/sdk/openadsdk/core/settings/HiB$Sj;

    :cond_25
    move-object/from16 v0, v26

    .line 103
    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_26

    const/4 v3, 0x1

    .line 104
    invoke-virtual {v7, v0, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v4

    .line 105
    invoke-interface {v10, v0, v4}, Lcom/bytedance/sdk/openadsdk/core/settings/HiB$Sj;->Sj(Ljava/lang/String;Z)Lcom/bytedance/sdk/openadsdk/core/settings/HiB$Sj;

    :cond_26
    move-object/from16 v0, v28

    .line 106
    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_28

    .line 107
    :try_start_0
    iget-object v3, v1, Lcom/bytedance/sdk/openadsdk/core/settings/TEQ;->HiB:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->clear()V

    .line 108
    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    if-eqz v3, :cond_27

    .line 109
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-eqz v4, :cond_27

    const/4 v4, 0x0

    .line 110
    :goto_5
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v4, v5, :cond_27

    .line 111
    iget-object v5, v1, Lcom/bytedance/sdk/openadsdk/core/settings/TEQ;->HiB:Ljava/util/Set;

    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/4 v5, 0x1

    add-int/2addr v4, v5

    goto :goto_5

    :catchall_0
    move-exception v0

    goto :goto_7

    .line 112
    :cond_27
    iget-object v4, v1, Lcom/bytedance/sdk/openadsdk/core/settings/TEQ;->HiB:Ljava/util/Set;

    invoke-static {v4}, Lcom/bytedance/sdk/openadsdk/core/settings/TEQ;->Sj(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v4

    iput-object v4, v1, Lcom/bytedance/sdk/openadsdk/core/settings/TEQ;->HiB:Ljava/util/Set;

    .line 113
    invoke-virtual {v3}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v10, v0, v3}, Lcom/bytedance/sdk/openadsdk/core/settings/HiB$Sj;->Sj(Ljava/lang/String;Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/settings/HiB$Sj;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_28
    :goto_6
    move-object/from16 v3, v27

    goto :goto_8

    .line 114
    :goto_7
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "GeckoLog: settings json error "

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {v0, v4}, Lcom/bytedance/sdk/component/utils/sU;->sP(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_6

    .line 115
    :goto_8
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_29

    const/4 v4, 0x1

    .line 116
    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    .line 117
    invoke-interface {v10, v3, v0}, Lcom/bytedance/sdk/openadsdk/core/settings/HiB$Sj;->Sj(Ljava/lang/String;I)Lcom/bytedance/sdk/openadsdk/core/settings/HiB$Sj;

    .line 118
    :cond_29
    const-string v0, "ad_slot_conf_list"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 119
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/settings/TKC;->Sj(Lorg/json/JSONArray;)V

    .line 120
    const-string v0, "privacy"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_33

    .line 121
    const-string v3, "ad_enable"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2a

    .line 122
    const-string v3, "ad_enable"

    const v4, 0x7fffffff

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    .line 123
    const-string v5, "privacy_ad_enable"

    invoke-interface {v10, v5, v3}, Lcom/bytedance/sdk/openadsdk/core/settings/HiB$Sj;->Sj(Ljava/lang/String;I)Lcom/bytedance/sdk/openadsdk/core/settings/HiB$Sj;

    goto :goto_9

    :cond_2a
    const v4, 0x7fffffff

    .line 124
    :goto_9
    const-string v3, "personalized_ad"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2b

    .line 125
    const-string v3, "personalized_ad"

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    .line 126
    const-string v5, "privacy_personalized_ad"

    invoke-interface {v10, v5, v3}, Lcom/bytedance/sdk/openadsdk/core/settings/HiB$Sj;->Sj(Ljava/lang/String;I)Lcom/bytedance/sdk/openadsdk/core/settings/HiB$Sj;

    .line 127
    :cond_2b
    const-string v3, "sladar_enable"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2c

    .line 128
    const-string v3, "sladar_enable"

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    .line 129
    const-string v5, "privacy_sladar_enable"

    invoke-interface {v10, v5, v3}, Lcom/bytedance/sdk/openadsdk/core/settings/HiB$Sj;->Sj(Ljava/lang/String;I)Lcom/bytedance/sdk/openadsdk/core/settings/HiB$Sj;

    .line 130
    :cond_2c
    const-string v3, "app_log_enable"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2d

    .line 131
    const-string v3, "app_log_enable"

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    .line 132
    const-string v5, "privacy_app_log_enable"

    invoke-interface {v10, v5, v3}, Lcom/bytedance/sdk/openadsdk/core/settings/HiB$Sj;->Sj(Ljava/lang/String;I)Lcom/bytedance/sdk/openadsdk/core/settings/HiB$Sj;

    .line 133
    :cond_2d
    const-string v3, "debug_unlock"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2e

    .line 134
    const-string v3, "debug_unlock"

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    .line 135
    const-string v4, "privacy_debug_unlock"

    invoke-interface {v10, v4, v3}, Lcom/bytedance/sdk/openadsdk/core/settings/HiB$Sj;->Sj(Ljava/lang/String;I)Lcom/bytedance/sdk/openadsdk/core/settings/HiB$Sj;

    .line 136
    :cond_2e
    const-string v3, "fields_allowed"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_30

    .line 137
    const-string v3, "fields_allowed"

    invoke-virtual {v0, v3, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 138
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2f

    .line 139
    const-string v4, "privacy_fields_allowed"

    invoke-interface {v10, v4, v3}, Lcom/bytedance/sdk/openadsdk/core/settings/HiB$Sj;->Sj(Ljava/lang/String;Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/settings/HiB$Sj;

    goto :goto_a

    .line 140
    :cond_2f
    const-string v3, "privacy_fields_allowed"

    invoke-interface {v10, v3}, Lcom/bytedance/sdk/openadsdk/core/settings/HiB$Sj;->Sj(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/settings/HiB$Sj;

    .line 141
    :cond_30
    :goto_a
    const-string v3, "app_reg"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_33

    .line 142
    const-string v3, "app_reg"

    const/4 v4, 0x1

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_31

    .line 143
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/ley;->Sj()Lcom/bytedance/sdk/openadsdk/core/wE;

    move-result-object v3

    invoke-interface {v3}, Lcom/bytedance/sdk/openadsdk/core/wE;->EjP()I

    move-result v3

    if-ne v3, v4, :cond_31

    .line 144
    new-instance v3, Lcom/bytedance/sdk/openadsdk/core/settings/TEQ$1;

    invoke-direct {v3, v1}, Lcom/bytedance/sdk/openadsdk/core/settings/TEQ$1;-><init>(Lcom/bytedance/sdk/openadsdk/core/settings/TEQ;)V

    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/utils/JcM;->Sj(Ljava/lang/Runnable;)V

    :cond_31
    if-eqz v0, :cond_32

    const/4 v0, 0x1

    goto :goto_b

    :cond_32
    const/4 v0, 0x0

    .line 145
    :goto_b
    const-string v3, "privacy_app_reg"

    invoke-interface {v10, v3, v0}, Lcom/bytedance/sdk/openadsdk/core/settings/HiB$Sj;->Sj(Ljava/lang/String;Z)Lcom/bytedance/sdk/openadsdk/core/settings/HiB$Sj;

    :cond_33
    move-object/from16 v3, v25

    .line 146
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_34

    .line 147
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 148
    invoke-interface {v10, v3, v0}, Lcom/bytedance/sdk/openadsdk/core/settings/HiB$Sj;->Sj(Ljava/lang/String;Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/settings/HiB$Sj;

    .line 149
    :cond_34
    const-string v0, "loaded_recall_time"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_36

    .line 150
    const-string v0, "loaded_recall_time"

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_35

    const/4 v3, 0x1

    if-eq v0, v3, :cond_35

    const/4 v0, 0x0

    .line 151
    :cond_35
    const-string v3, "loadedCallbackOpportunity"

    invoke-interface {v10, v3, v0}, Lcom/bytedance/sdk/openadsdk/core/settings/HiB$Sj;->Sj(Ljava/lang/String;I)Lcom/bytedance/sdk/openadsdk/core/settings/HiB$Sj;

    .line 152
    :cond_36
    const-string v0, "load_strategy"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_38

    .line 153
    const-string v0, "load_strategy"

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_37

    const/4 v3, 0x1

    if-eq v0, v3, :cond_37

    const/4 v0, 0x0

    .line 154
    :cond_37
    const-string v3, "load_callback_strategy"

    invoke-interface {v10, v3, v0}, Lcom/bytedance/sdk/openadsdk/core/settings/HiB$Sj;->Sj(Ljava/lang/String;I)Lcom/bytedance/sdk/openadsdk/core/settings/HiB$Sj;

    :cond_38
    move-object/from16 v3, v23

    .line 155
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3b

    const/4 v4, 0x0

    .line 156
    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    if-ltz v0, :cond_39

    const/4 v4, 0x3

    if-le v0, v4, :cond_3a

    :cond_39
    const/4 v0, 0x0

    .line 157
    :cond_3a
    invoke-interface {v10, v3, v0}, Lcom/bytedance/sdk/openadsdk/core/settings/HiB$Sj;->Sj(Ljava/lang/String;I)Lcom/bytedance/sdk/openadsdk/core/settings/HiB$Sj;

    :cond_3b
    move-object/from16 v3, v22

    .line 158
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3c

    const/4 v4, 0x0

    .line 159
    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 160
    invoke-interface {v10, v3, v0}, Lcom/bytedance/sdk/openadsdk/core/settings/HiB$Sj;->Sj(Ljava/lang/String;Z)Lcom/bytedance/sdk/openadsdk/core/settings/HiB$Sj;

    :cond_3c
    move-object/from16 v3, v21

    .line 161
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_4c

    move-object/from16 v4, v20

    .line 162
    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3d

    const/4 v5, 0x1

    .line 163
    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v6

    .line 164
    invoke-interface {v10, v4, v6}, Lcom/bytedance/sdk/openadsdk/core/settings/HiB$Sj;->Sj(Ljava/lang/String;I)Lcom/bytedance/sdk/openadsdk/core/settings/HiB$Sj;

    :cond_3d
    move-object/from16 v4, v19

    .line 165
    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3e

    const v5, 0x7fffffff

    .line 166
    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v5

    .line 167
    invoke-interface {v10, v4, v5}, Lcom/bytedance/sdk/openadsdk/core/settings/HiB$Sj;->Sj(Ljava/lang/String;I)Lcom/bytedance/sdk/openadsdk/core/settings/HiB$Sj;

    :cond_3e
    move-object/from16 v4, v18

    .line 168
    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3f

    const/4 v5, 0x0

    .line 169
    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v6

    .line 170
    invoke-interface {v10, v4, v6}, Lcom/bytedance/sdk/openadsdk/core/settings/HiB$Sj;->Sj(Ljava/lang/String;Z)Lcom/bytedance/sdk/openadsdk/core/settings/HiB$Sj;

    :cond_3f
    move-object/from16 v4, v17

    .line 171
    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_40

    const/4 v5, 0x1

    .line 172
    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v6

    .line 173
    invoke-interface {v10, v4, v6}, Lcom/bytedance/sdk/openadsdk/core/settings/HiB$Sj;->Sj(Ljava/lang/String;Z)Lcom/bytedance/sdk/openadsdk/core/settings/HiB$Sj;

    :cond_40
    move-object/from16 v4, v16

    .line 174
    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_41

    const-wide/32 v5, 0x927c0

    .line 175
    invoke-virtual {v0, v4, v5, v6}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v5

    .line 176
    invoke-interface {v10, v4, v5, v6}, Lcom/bytedance/sdk/openadsdk/core/settings/HiB$Sj;->Sj(Ljava/lang/String;J)Lcom/bytedance/sdk/openadsdk/core/settings/HiB$Sj;

    .line 177
    :cond_41
    const-string v4, "bus_con_token_thread_count"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_42

    .line 178
    const-string v4, "bus_con_token_thread_count"

    const/4 v5, 0x4

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    .line 179
    const-string v5, "bus_con_token_thread_count"

    invoke-interface {v10, v5, v4}, Lcom/bytedance/sdk/openadsdk/core/settings/HiB$Sj;->Sj(Ljava/lang/String;I)Lcom/bytedance/sdk/openadsdk/core/settings/HiB$Sj;

    .line 180
    :cond_42
    const-string v4, "bus_con_video_keep_screen_on"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_43

    .line 181
    const-string v4, "bus_con_video_keep_screen_on"

    const/4 v5, 0x1

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    .line 182
    const-string v5, "bus_con_video_keep_screen_on"

    invoke-interface {v10, v5, v4}, Lcom/bytedance/sdk/openadsdk/core/settings/HiB$Sj;->Sj(Ljava/lang/String;I)Lcom/bytedance/sdk/openadsdk/core/settings/HiB$Sj;

    .line 183
    :cond_43
    const-string v4, "bus_con_auto_click_delay"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_44

    .line 184
    const-string v4, "bus_con_auto_click_delay"

    const/16 v5, 0xbb8

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    .line 185
    const-string v5, "bus_con_auto_click_delay"

    invoke-interface {v10, v5, v4}, Lcom/bytedance/sdk/openadsdk/core/settings/HiB$Sj;->Sj(Ljava/lang/String;I)Lcom/bytedance/sdk/openadsdk/core/settings/HiB$Sj;

    .line 186
    :cond_44
    const-string v4, "bus_con_express_host"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_45

    .line 187
    const-string v4, "bus_con_express_host"

    const-string v5, "https://lf-static.tiktokpangle-cdn-us.com/obj/ad-pattern-tx/"

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 188
    const-string v5, "bus_con_express_host"

    invoke-interface {v10, v5, v4}, Lcom/bytedance/sdk/openadsdk/core/settings/HiB$Sj;->Sj(Ljava/lang/String;Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/settings/HiB$Sj;

    .line 189
    :cond_45
    const-string v4, "bus_con_rewardedfull_link"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_46

    .line 190
    const-string v4, "bus_con_rewardedfull_link"

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    .line 191
    const-string v5, "bus_con_rewardedfull_link"

    invoke-interface {v10, v5, v4}, Lcom/bytedance/sdk/openadsdk/core/settings/HiB$Sj;->Sj(Ljava/lang/String;I)Lcom/bytedance/sdk/openadsdk/core/settings/HiB$Sj;

    .line 192
    :cond_46
    const-string v4, "bus_con_check_clz"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_47

    .line 193
    const-string v4, "bus_con_check_clz"

    invoke-virtual {v0, v4, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 194
    const-string v5, "bus_con_check_clz"

    invoke-interface {v10, v5, v4}, Lcom/bytedance/sdk/openadsdk/core/settings/HiB$Sj;->Sj(Ljava/lang/String;Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/settings/HiB$Sj;

    .line 195
    :cond_47
    const-string v4, "bus_con_url_check"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_48

    .line 196
    const-string v4, "bus_con_url_check"

    const/4 v5, 0x1

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    .line 197
    const-string v5, "bus_con_url_check"

    invoke-interface {v10, v5, v4}, Lcom/bytedance/sdk/openadsdk/core/settings/HiB$Sj;->Sj(Ljava/lang/String;I)Lcom/bytedance/sdk/openadsdk/core/settings/HiB$Sj;

    .line 198
    :cond_48
    const-string v4, "bus_con_behavior_count"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_49

    .line 199
    const-string v4, "bus_con_behavior_count"

    const/16 v5, 0x12c

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    .line 200
    const-string v5, "bus_con_behavior_count"

    invoke-interface {v10, v5, v4}, Lcom/bytedance/sdk/openadsdk/core/settings/HiB$Sj;->Sj(Ljava/lang/String;I)Lcom/bytedance/sdk/openadsdk/core/settings/HiB$Sj;

    .line 201
    :cond_49
    sget-object v4, Lcom/bytedance/sdk/openadsdk/core/settings/Fmk;->Sj:Ljava/lang/String;

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4a

    const/4 v5, 0x0

    .line 202
    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v6

    .line 203
    invoke-interface {v10, v4, v6}, Lcom/bytedance/sdk/openadsdk/core/settings/HiB$Sj;->Sj(Ljava/lang/String;Z)Lcom/bytedance/sdk/openadsdk/core/settings/HiB$Sj;

    .line 204
    :cond_4a
    sget-object v4, Lcom/bytedance/sdk/openadsdk/core/settings/Fmk;->sP:Ljava/lang/String;

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4b

    const/16 v5, 0x2710

    .line 205
    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v5

    .line 206
    invoke-interface {v10, v4, v5}, Lcom/bytedance/sdk/openadsdk/core/settings/HiB$Sj;->Sj(Ljava/lang/String;I)Lcom/bytedance/sdk/openadsdk/core/settings/HiB$Sj;

    .line 207
    :cond_4b
    sget-object v4, Lcom/bytedance/sdk/openadsdk/core/settings/Fmk;->TKC:Ljava/lang/String;

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4c

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    .line 208
    invoke-virtual {v0, v4, v5, v6}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v5

    double-to-float v0, v5

    .line 209
    invoke-interface {v10, v4, v0}, Lcom/bytedance/sdk/openadsdk/core/settings/HiB$Sj;->Sj(Ljava/lang/String;F)Lcom/bytedance/sdk/openadsdk/core/settings/HiB$Sj;

    .line 210
    :cond_4c
    const-string v4, "perf_con"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_63

    .line 211
    :try_start_1
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_63

    .line 212
    const-string v5, "perf_con_stats_rate"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4d

    .line 213
    const-string v5, "perf_con_stats_rate"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 214
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_4d

    .line 215
    const-string v6, "perf_con_stats_rate"

    invoke-interface {v10, v6, v5}, Lcom/bytedance/sdk/openadsdk/core/settings/HiB$Sj;->Sj(Ljava/lang/String;Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/settings/HiB$Sj;

    goto :goto_c

    :catchall_1
    move-exception v0

    goto/16 :goto_d

    .line 216
    :cond_4d
    :goto_c
    const-string v5, "perf_con_applog_send"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4e

    .line 217
    const-string v5, "perf_con_applog_send"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 218
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_4e

    .line 219
    const-string v6, "perf_con_applog_send"

    invoke-interface {v10, v6, v5}, Lcom/bytedance/sdk/openadsdk/core/settings/HiB$Sj;->Sj(Ljava/lang/String;Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/settings/HiB$Sj;

    .line 220
    :cond_4e
    const-string v5, "perf_con_apm_native"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4f

    .line 221
    const-string v5, "perf_con_apm_native"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    .line 222
    const-string v6, "perf_con_apm_native"

    invoke-interface {v10, v6, v5}, Lcom/bytedance/sdk/openadsdk/core/settings/HiB$Sj;->Sj(Ljava/lang/String;I)Lcom/bytedance/sdk/openadsdk/core/settings/HiB$Sj;

    .line 223
    :cond_4f
    const-string v5, "perf_con_webview_preload_cache"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_50

    .line 224
    const-string v5, "perf_con_webview_preload_cache"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    .line 225
    const-string v6, "perf_con_webview_preload_cache"

    invoke-interface {v10, v6, v5}, Lcom/bytedance/sdk/openadsdk/core/settings/HiB$Sj;->Sj(Ljava/lang/String;I)Lcom/bytedance/sdk/openadsdk/core/settings/HiB$Sj;

    .line 226
    :cond_50
    const-string v5, "perf_con_webview_preload_cache_v3"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_51

    .line 227
    const-string v5, "perf_con_webview_preload_cache_v3"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    .line 228
    const-string v6, "perf_con_webview_preload_cache_v3"

    invoke-interface {v10, v6, v5}, Lcom/bytedance/sdk/openadsdk/core/settings/HiB$Sj;->Sj(Ljava/lang/String;I)Lcom/bytedance/sdk/openadsdk/core/settings/HiB$Sj;

    .line 229
    :cond_51
    const-string v5, "perf_con_webview_cache_count"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_52

    .line 230
    const-string v5, "perf_con_webview_cache_count"

    const/4 v6, 0x0

    invoke-virtual {v0, v5, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v5

    .line 231
    const-string v6, "perf_con_webview_cache_count"

    invoke-interface {v10, v6, v5}, Lcom/bytedance/sdk/openadsdk/core/settings/HiB$Sj;->Sj(Ljava/lang/String;I)Lcom/bytedance/sdk/openadsdk/core/settings/HiB$Sj;

    .line 232
    :cond_52
    const-string v5, "perf_con_webview_cache_count_v3"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_53

    .line 233
    const-string v5, "perf_con_webview_cache_count_v3"

    const/4 v6, 0x0

    invoke-virtual {v0, v5, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v5

    .line 234
    const-string v6, "perf_con_webview_cache_count_v3"

    invoke-interface {v10, v6, v5}, Lcom/bytedance/sdk/openadsdk/core/settings/HiB$Sj;->Sj(Ljava/lang/String;I)Lcom/bytedance/sdk/openadsdk/core/settings/HiB$Sj;

    .line 235
    :cond_53
    const-string v5, "perf_con_thread_stack_size"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_54

    .line 236
    const-string v5, "perf_con_thread_stack_size"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    const/high16 v6, -0x80000

    if-lt v5, v6, :cond_54

    if-gtz v5, :cond_54

    .line 237
    const-string v6, "perf_con_thread_stack_size"

    invoke-interface {v10, v6, v5}, Lcom/bytedance/sdk/openadsdk/core/settings/HiB$Sj;->Sj(Ljava/lang/String;I)Lcom/bytedance/sdk/openadsdk/core/settings/HiB$Sj;

    .line 238
    :cond_54
    const-string v5, "perf_con_use_new_thread_pool"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_55

    .line 239
    const-string v5, "perf_con_use_new_thread_pool"

    const/4 v6, 0x0

    invoke-virtual {v0, v5, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v5

    .line 240
    const-string v6, "perf_con_use_new_thread_pool"

    invoke-interface {v10, v6, v5}, Lcom/bytedance/sdk/openadsdk/core/settings/HiB$Sj;->Sj(Ljava/lang/String;I)Lcom/bytedance/sdk/openadsdk/core/settings/HiB$Sj;

    .line 241
    :cond_55
    const-string v5, "perf_con_thread_pool_config"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_56

    .line 242
    const-string v5, "perf_con_thread_pool_config"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 243
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_56

    .line 244
    const-string v6, "perf_con_thread_pool_config"

    invoke-interface {v10, v6, v5}, Lcom/bytedance/sdk/openadsdk/core/settings/HiB$Sj;->Sj(Ljava/lang/String;Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/settings/HiB$Sj;

    .line 245
    :cond_56
    const-string v5, "perf_con_is_new_net_thread"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_57

    .line 246
    const-string v5, "perf_con_is_new_net_thread"

    const/4 v6, 0x0

    invoke-virtual {v0, v5, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v5

    .line 247
    const-string v6, "perf_con_is_new_net_thread"

    invoke-interface {v10, v6, v5}, Lcom/bytedance/sdk/openadsdk/core/settings/HiB$Sj;->Sj(Ljava/lang/String;I)Lcom/bytedance/sdk/openadsdk/core/settings/HiB$Sj;

    .line 248
    :cond_57
    const-string v5, "perf_con_use_prop"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_58

    .line 249
    const-string v5, "perf_con_use_prop"

    const/4 v6, 0x1

    invoke-virtual {v0, v5, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v5

    invoke-static {v5}, Lcom/bytedance/sdk/openadsdk/utils/kF;->Sj(I)V

    .line 250
    :cond_58
    const-string v5, "perf_con_adlog_expire_time"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_59

    .line 251
    const-string v5, "perf_con_adlog_expire_time"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v5

    .line 252
    const-string v8, "perf_con_adlog_expire_time"

    invoke-interface {v10, v8, v5, v6}, Lcom/bytedance/sdk/openadsdk/core/settings/HiB$Sj;->Sj(Ljava/lang/String;J)Lcom/bytedance/sdk/openadsdk/core/settings/HiB$Sj;

    .line 253
    :cond_59
    const-string v5, "perf_con_adlog_turn_off_retry_ad"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5a

    .line 254
    const-string v5, "perf_con_adlog_turn_off_retry_ad"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v5

    .line 255
    const-string v8, "perf_con_adlog_turn_off_retry_ad"

    invoke-interface {v10, v8, v5, v6}, Lcom/bytedance/sdk/openadsdk/core/settings/HiB$Sj;->Sj(Ljava/lang/String;J)Lcom/bytedance/sdk/openadsdk/core/settings/HiB$Sj;

    .line 256
    :cond_5a
    const-string v5, "perf_con_adlog_turn_off_retry_stats"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5b

    .line 257
    const-string v5, "perf_con_adlog_turn_off_retry_stats"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v5

    .line 258
    const-string v8, "perf_con_adlog_turn_off_retry_stats"

    invoke-interface {v10, v8, v5, v6}, Lcom/bytedance/sdk/openadsdk/core/settings/HiB$Sj;->Sj(Ljava/lang/String;J)Lcom/bytedance/sdk/openadsdk/core/settings/HiB$Sj;

    .line 259
    :cond_5b
    const-string v5, "perf_con_applog_rate"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5c

    .line 260
    const-string v5, "perf_con_applog_rate"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 261
    const-string v6, "perf_con_applog_rate"

    invoke-interface {v10, v6, v5}, Lcom/bytedance/sdk/openadsdk/core/settings/HiB$Sj;->Sj(Ljava/lang/String;Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/settings/HiB$Sj;

    .line 262
    :cond_5c
    const-string v5, "perf_con_track_url_strategy"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5d

    .line 263
    const-string v5, "perf_con_track_url_strategy"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 264
    const-string v6, "perf_con_track_url_strategy"

    invoke-interface {v10, v6, v5}, Lcom/bytedance/sdk/openadsdk/core/settings/HiB$Sj;->Sj(Ljava/lang/String;Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/settings/HiB$Sj;

    .line 265
    :cond_5d
    const-string v5, "perf_con_drawable_code"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5e

    .line 266
    const-string v5, "perf_con_drawable_code"

    const/4 v6, 0x0

    invoke-virtual {v0, v5, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v5

    .line 267
    const-string v6, "perf_con_drawable_code"

    invoke-interface {v10, v6, v5}, Lcom/bytedance/sdk/openadsdk/core/settings/HiB$Sj;->Sj(Ljava/lang/String;I)Lcom/bytedance/sdk/openadsdk/core/settings/HiB$Sj;

    .line 268
    :cond_5e
    const-string v5, "perf_con_close_button_delay_check_time"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5f

    .line 269
    const-string v5, "perf_con_close_button_delay_check_time"

    const/4 v6, -0x1

    invoke-virtual {v0, v5, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v5

    .line 270
    const-string v6, "perf_con_close_button_delay_check_time"

    invoke-interface {v10, v6, v5}, Lcom/bytedance/sdk/openadsdk/core/settings/HiB$Sj;->Sj(Ljava/lang/String;I)Lcom/bytedance/sdk/openadsdk/core/settings/HiB$Sj;

    .line 271
    :cond_5f
    const-string v5, "perf_con_drop2rt_skip_label_list"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_60

    .line 272
    const-string v5, "perf_con_drop2rt_skip_label_list"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 273
    const-string v6, "perf_con_drop2rt_skip_label_list"

    invoke-interface {v10, v6, v5}, Lcom/bytedance/sdk/openadsdk/core/settings/HiB$Sj;->Sj(Ljava/lang/String;Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/settings/HiB$Sj;

    .line 274
    :cond_60
    const-string v5, "perf_con_crypt_V4_get_ad"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_61

    .line 275
    const-string v5, "perf_con_crypt_V4_get_ad"

    const/4 v6, 0x0

    invoke-virtual {v0, v5, v6}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v5

    .line 276
    const-string v6, "perf_con_crypt_V4_get_ad"

    invoke-interface {v10, v6, v5}, Lcom/bytedance/sdk/openadsdk/core/settings/HiB$Sj;->Sj(Ljava/lang/String;Z)Lcom/bytedance/sdk/openadsdk/core/settings/HiB$Sj;

    .line 277
    :cond_61
    const-string v5, "perf_con_crypt_V4_applog"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_62

    .line 278
    const-string v5, "perf_con_crypt_V4_applog"

    const/4 v6, 0x0

    invoke-virtual {v0, v5, v6}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v5

    .line 279
    const-string v6, "perf_con_crypt_V4_applog"

    invoke-interface {v10, v6, v5}, Lcom/bytedance/sdk/openadsdk/core/settings/HiB$Sj;->Sj(Ljava/lang/String;Z)Lcom/bytedance/sdk/openadsdk/core/settings/HiB$Sj;

    .line 280
    :cond_62
    const-string v5, "perf_con_crypt_V4"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_63

    .line 281
    const-string v5, "perf_con_crypt_V4"

    const/4 v6, 0x0

    invoke-virtual {v0, v5, v6}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 282
    const-string v5, "perf_con_crypt_V4"

    invoke-interface {v10, v5, v0}, Lcom/bytedance/sdk/openadsdk/core/settings/HiB$Sj;->Sj(Ljava/lang/String;Z)Lcom/bytedance/sdk/openadsdk/core/settings/HiB$Sj;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_e

    .line 283
    :goto_d
    const-string v5, "SettingsDefaultRepository"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/bytedance/sdk/component/utils/sU;->sP(Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    :cond_63
    :goto_e
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 285
    :try_start_2
    const-string v0, "app_common_config"

    invoke-virtual {v5, v0, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 286
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v5, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 287
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v5, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_f

    :catch_0
    move-exception v0

    .line 288
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "coreSettingJson"

    const/4 v6, 0x0

    aput-object v4, v3, v6

    const/4 v4, 0x1

    aput-object v0, v3, v4

    const-string v0, "SettingsDefaultRepository"

    invoke-static {v0, v3}, Lcom/bytedance/sdk/component/utils/sU;->sP(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 289
    :goto_f
    const-string v0, "core_settings"

    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v10, v0, v3}, Lcom/bytedance/sdk/openadsdk/core/settings/HiB$Sj;->Sj(Ljava/lang/String;Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/settings/HiB$Sj;

    .line 290
    const-string v0, "dual_event_url"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_64

    .line 291
    const-string v0, "dual_event_url"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 292
    const-string v3, "dual_event_url"

    invoke-interface {v10, v3, v0}, Lcom/bytedance/sdk/openadsdk/core/settings/HiB$Sj;->Sj(Ljava/lang/String;Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/settings/HiB$Sj;

    .line 293
    :cond_64
    const-string v0, "token_enable"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_65

    .line 294
    const-string v0, "token_enable"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    .line 295
    const-string v3, "token_enable"

    invoke-interface {v10, v3, v0}, Lcom/bytedance/sdk/openadsdk/core/settings/HiB$Sj;->Sj(Ljava/lang/String;I)Lcom/bytedance/sdk/openadsdk/core/settings/HiB$Sj;

    .line 296
    :cond_65
    const-string v0, "token_adx_ids"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_67

    .line 297
    invoke-virtual {v2, v0, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 298
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_66

    .line 299
    invoke-interface {v10, v0, v2}, Lcom/bytedance/sdk/openadsdk/core/settings/HiB$Sj;->Sj(Ljava/lang/String;Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/settings/HiB$Sj;

    goto :goto_10

    .line 300
    :cond_66
    invoke-interface {v10, v0}, Lcom/bytedance/sdk/openadsdk/core/settings/HiB$Sj;->Sj(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/settings/HiB$Sj;

    .line 301
    :cond_67
    :goto_10
    invoke-interface {v10}, Lcom/bytedance/sdk/openadsdk/core/settings/HiB$Sj;->Sj()V

    .line 302
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/settings/Fmk;->gq()Lcom/bytedance/sdk/openadsdk/core/settings/vS;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/settings/vS;->ley()V

    .line 303
    invoke-virtual/range {p0 .. p0}, Lcom/bytedance/sdk/openadsdk/core/settings/aa;->EjP()V

    return-void
.end method
