.class public final Lkmh;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/List;

.field public final b:Ljava/lang/String;

.field public final c:I

.field public final d:I

.field public final e:Ljava/lang/String;

.field public final f:I

.field public final g:J

.field public final h:Z

.field public final i:Ljava/lang/String;

.field public final j:Ljmh;

.field public final k:Landroid/os/Bundle;

.field public final l:Ljava/lang/String;

.field public final m:Ljava/lang/String;

.field public final n:Ljava/lang/String;

.field public final o:Lorg/json/JSONObject;

.field public final p:Lorg/json/JSONObject;

.field public final q:Ljava/lang/String;

.field public final r:I

.field public s:J

.field public t:J


# direct methods
.method public constructor <init>(Landroid/util/JsonReader;)V
    .locals 30

    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->beginObject()V

    const-string v8, ""

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v11, v8

    move-object v12, v11

    move-object v14, v12

    move-object v15, v14

    move v5, v9

    move v6, v5

    move/from16 v18, v6

    move-object/from16 v19, v10

    const-wide/16 v20, -0x1

    const-wide/16 v22, -0x1

    const-wide/16 v24, 0x0

    const/16 v26, -0x1

    const/16 v27, 0x1

    move-object v9, v15

    move-object v10, v9

    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->hasNext()Z

    move-result v28

    if-eqz v28, :cond_18

    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v13

    const-string v7, "nofill_urls"

    invoke-static {v13, v7}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/ads/internal/util/zzbs;->zzd(Landroid/util/JsonReader;)Ljava/util/List;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v7, "refresh_interval"

    invoke-virtual {v7, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->nextInt()I

    move-result v5

    goto :goto_0

    :cond_1
    const-string v7, "refresh_load_delay_time_interval"

    invoke-static {v13, v7}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->nextInt()I

    move-result v26

    goto :goto_0

    :cond_2
    const-string v7, "gws_query_id"

    invoke-virtual {v7, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v7

    move-object v8, v7

    goto :goto_0

    :cond_3
    const-string v7, "analytics_query_ad_event_id"

    invoke-virtual {v7, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v7

    move-object v9, v7

    goto :goto_0

    :cond_4
    const-string v7, "is_idless"

    invoke-virtual {v7, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->nextBoolean()Z

    move-result v7

    move/from16 v18, v7

    goto :goto_0

    :cond_5
    const-string v7, "response_code"

    invoke-virtual {v7, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->nextInt()I

    move-result v6

    goto :goto_0

    :cond_6
    const-string v7, "latency"

    invoke-virtual {v7, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->nextLong()J

    move-result-wide v24

    goto :goto_0

    :cond_7
    sget-object v7, Lcye;->s8:Lqxe;

    move-object/from16 v29, v12

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object v12

    invoke-virtual {v12, v7}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_9

    const-string v7, "public_error"

    invoke-virtual {v7, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v7

    sget-object v12, Landroid/util/JsonToken;->BEGIN_OBJECT:Landroid/util/JsonToken;

    if-ne v7, v12, :cond_9

    new-instance v7, Ljmh;

    move-object/from16 v12, p1

    invoke-direct {v7, v12}, Ljmh;-><init>(Landroid/util/JsonReader;)V

    move-object/from16 v19, v7

    :catch_0
    :cond_8
    :goto_1
    move-object/from16 v12, v29

    goto/16 :goto_0

    :cond_9
    move-object/from16 v12, p1

    const-string v7, "bidding_data"

    invoke-virtual {v7, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a

    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v7

    move-object v10, v7

    goto :goto_1

    :cond_a
    sget-object v7, Lcye;->za:Lqxe;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object v12

    invoke-virtual {v12, v7}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_b

    const-string v7, "topics_should_record_observation"

    invoke-static {v13, v7}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b

    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->nextBoolean()Z

    goto :goto_1

    :cond_b
    const-string v7, "adapter_response_replacement_key"

    invoke-virtual {v7, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_c

    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v7

    move-object v12, v7

    goto/16 :goto_0

    :cond_c
    const-string v7, "response_info_extras"

    invoke-virtual {v7, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_e

    sget-object v7, Lcye;->L6:Lqxe;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object v12

    invoke-virtual {v12, v7}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_d

    :try_start_0
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/ads/internal/util/zzbs;->zzi(Landroid/util/JsonReader;)Lorg/json/JSONObject;

    move-result-object v7

    invoke-static {v7}, Lcom/google/android/gms/ads/internal/util/zzbs;->zza(Lorg/json/JSONObject;)Landroid/os/Bundle;

    move-result-object v7
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v7, :cond_8

    move-object v2, v7

    goto :goto_1

    :catch_1
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->skipValue()V

    goto :goto_1

    :cond_d
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->skipValue()V

    goto :goto_1

    :cond_e
    const-string v7, "adRequestPostBody"

    invoke-virtual {v7, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_10

    sget-object v7, Lcye;->s9:Lqxe;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object v12

    invoke-virtual {v12, v7}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_f

    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v7

    move-object v15, v7

    goto/16 :goto_1

    :cond_f
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->skipValue()V

    goto/16 :goto_1

    :cond_10
    const-string v7, "adRequestUrl"

    invoke-virtual {v7, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_12

    sget-object v7, Lcye;->s9:Lqxe;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object v12

    invoke-virtual {v12, v7}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_11

    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v7

    move-object v14, v7

    goto/16 :goto_1

    :cond_11
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->skipValue()V

    goto/16 :goto_1

    :cond_12
    sget-object v7, Lcye;->t9:Lqxe;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object v12

    invoke-virtual {v12, v7}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Boolean;

    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v12

    if-eqz v12, :cond_13

    const-string v12, "adResponseBody"

    invoke-static {v13, v12}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_13

    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v7

    move-object v11, v7

    goto/16 :goto_1

    :cond_13
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object v12

    invoke-virtual {v12, v7}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_14

    const-string v7, "adResponseHeaders"

    invoke-static {v13, v7}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_14

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/ads/internal/util/zzbs;->zzi(Landroid/util/JsonReader;)Lorg/json/JSONObject;

    move-result-object v3

    goto/16 :goto_1

    :cond_14
    const-string v7, "max_parallel_renderers"

    invoke-static {v13, v7}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_15

    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->nextInt()I

    move-result v7

    const/4 v12, 0x1

    invoke-static {v12, v7}, Ljava/lang/Math;->max(II)I

    move-result v27

    goto/16 :goto_1

    :cond_15
    const/4 v12, 0x1

    sget-object v7, Lcye;->A9:Lqxe;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object v12

    invoke-virtual {v12, v7}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_16

    const-string v7, "inspector_ad_transaction_extras"

    invoke-static {v13, v7}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_16

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/ads/internal/util/zzbs;->zzi(Landroid/util/JsonReader;)Lorg/json/JSONObject;

    move-result-object v4

    goto/16 :goto_1

    :cond_16
    sget-object v7, Lcye;->r2:Lqxe;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object v12

    invoke-virtual {v12, v7}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_17

    const-string v7, "latency_extras"

    invoke-static {v13, v7}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_17

    :try_start_1
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/ads/internal/util/zzbs;->zzi(Landroid/util/JsonReader;)Lorg/json/JSONObject;

    move-result-object v7

    invoke-static {v7}, Lcom/google/android/gms/ads/internal/util/zzbs;->zza(Lorg/json/JSONObject;)Landroid/os/Bundle;

    move-result-object v7

    if-eqz v7, :cond_8

    const-string v12, "start_time"

    invoke-virtual {v7, v12}, Landroid/os/BaseBundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v12

    invoke-static {v12, v13}, Lkmh;->a(D)J

    move-result-wide v22

    const-string v12, "end_time"

    invoke-virtual {v7, v12}, Landroid/os/BaseBundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v12

    invoke-static {v12, v13}, Lkmh;->a(D)J

    move-result-wide v20
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_2

    goto/16 :goto_1

    :catch_2
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->skipValue()V

    goto/16 :goto_1

    :cond_17
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->skipValue()V

    goto/16 :goto_1

    :cond_18
    move-object/from16 v29, v12

    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->endObject()V

    iput-object v1, v0, Lkmh;->a:Ljava/util/List;

    iput v5, v0, Lkmh;->c:I

    sget-object v1, Lf0f;->c:Leze;

    invoke-virtual {v1}, Leze;->e()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_19

    const/4 v1, -0x1

    iput v1, v0, Lkmh;->d:I

    goto :goto_2

    :cond_19
    sget-object v1, Lize;->a:Leze;

    invoke-virtual {v1}, Leze;->e()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    const-wide/16 v16, -0x1

    cmp-long v5, v12, v16

    if-lez v5, :cond_1a

    invoke-virtual {v1}, Leze;->e()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->intValue()I

    move-result v1

    iput v1, v0, Lkmh;->d:I

    goto :goto_2

    :cond_1a
    move/from16 v13, v26

    iput v13, v0, Lkmh;->d:I

    :goto_2
    iput-object v8, v0, Lkmh;->b:Ljava/lang/String;

    iput-object v9, v0, Lkmh;->e:Ljava/lang/String;

    iput v6, v0, Lkmh;->f:I

    move-wide/from16 v5, v24

    iput-wide v5, v0, Lkmh;->g:J

    move-object/from16 v1, v19

    iput-object v1, v0, Lkmh;->j:Ljmh;

    move/from16 v9, v18

    iput-boolean v9, v0, Lkmh;->h:Z

    iput-object v10, v0, Lkmh;->i:Ljava/lang/String;

    iput-object v2, v0, Lkmh;->k:Landroid/os/Bundle;

    iput-object v14, v0, Lkmh;->l:Ljava/lang/String;

    iput-object v15, v0, Lkmh;->m:Ljava/lang/String;

    iput-object v11, v0, Lkmh;->n:Ljava/lang/String;

    iput-object v3, v0, Lkmh;->o:Lorg/json/JSONObject;

    iput-object v4, v0, Lkmh;->p:Lorg/json/JSONObject;

    move-object/from16 v8, v29

    iput-object v8, v0, Lkmh;->q:Ljava/lang/String;

    sget-object v1, Ld0f;->a:Leze;

    invoke-virtual {v1}, Leze;->e()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_1b

    invoke-virtual {v1}, Leze;->e()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->intValue()I

    move-result v27

    :cond_1b
    move/from16 v1, v27

    iput v1, v0, Lkmh;->r:I

    move-wide/from16 v5, v22

    iput-wide v5, v0, Lkmh;->s:J

    move-wide/from16 v5, v20

    iput-wide v5, v0, Lkmh;->t:J

    return-void
.end method

.method public static final a(D)J
    .locals 2

    const-wide/high16 v0, 0x43e0000000000000L    # 9.223372036854776E18

    cmpl-double v0, p0, v0

    if-gtz v0, :cond_1

    const-wide/high16 v0, -0x3c20000000000000L    # -9.223372036854776E18

    cmpg-double v0, p0, v0

    if-gez v0, :cond_0

    goto :goto_0

    :cond_0
    double-to-long p0, p0

    return-wide p0

    :cond_1
    :goto_0
    const-wide/16 p0, -0x1

    return-wide p0
.end method
