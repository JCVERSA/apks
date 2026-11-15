.class public final Lcom/yandex/mobile/ads/impl/k91;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/wr0;

.field private final b:Lcom/yandex/mobile/ads/impl/dh;

.field private final c:Lcom/yandex/mobile/ads/impl/q82;

.field private final d:Lcom/yandex/mobile/ads/impl/nk0;

.field private final e:Lcom/yandex/mobile/ads/impl/g30;

.field private final f:Lcom/yandex/mobile/ads/impl/f10;

.field private final g:Lcom/yandex/mobile/ads/impl/da1;

.field private final h:Lcom/yandex/mobile/ads/impl/gy1;

.field private final i:Lcom/yandex/mobile/ads/impl/cv0;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/sp1;)V
    .locals 12

    .line 1
    new-instance v3, Lcom/yandex/mobile/ads/impl/wr0;

    invoke-direct {v3, p2}, Lcom/yandex/mobile/ads/impl/wr0;-><init>(Lcom/yandex/mobile/ads/impl/sp1;)V

    .line 2
    new-instance v4, Lcom/yandex/mobile/ads/impl/dh;

    const/16 v0, 0x8

    invoke-direct {v4, p1, p2, v3, v0}, Lcom/yandex/mobile/ads/impl/dh;-><init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/sp1;Lcom/yandex/mobile/ads/impl/wr0;I)V

    .line 3
    new-instance v5, Lcom/yandex/mobile/ads/impl/q82;

    invoke-direct {v5}, Lcom/yandex/mobile/ads/impl/q82;-><init>()V

    .line 4
    new-instance v6, Lcom/yandex/mobile/ads/impl/nk0;

    invoke-direct {v6}, Lcom/yandex/mobile/ads/impl/nk0;-><init>()V

    .line 5
    new-instance v7, Lcom/yandex/mobile/ads/impl/g30;

    invoke-direct {v7, p2}, Lcom/yandex/mobile/ads/impl/g30;-><init>(Lcom/yandex/mobile/ads/impl/sp1;)V

    .line 6
    new-instance v8, Lcom/yandex/mobile/ads/impl/f10;

    invoke-direct {v8}, Lcom/yandex/mobile/ads/impl/f10;-><init>()V

    .line 7
    new-instance v9, Lcom/yandex/mobile/ads/impl/da1;

    invoke-direct {v9}, Lcom/yandex/mobile/ads/impl/da1;-><init>()V

    .line 8
    new-instance v10, Lcom/yandex/mobile/ads/impl/gy1;

    invoke-direct {v10}, Lcom/yandex/mobile/ads/impl/gy1;-><init>()V

    .line 9
    new-instance v11, Lcom/yandex/mobile/ads/impl/cv0;

    invoke-direct {v11}, Lcom/yandex/mobile/ads/impl/cv0;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .line 10
    invoke-direct/range {v0 .. v11}, Lcom/yandex/mobile/ads/impl/k91;-><init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/sp1;Lcom/yandex/mobile/ads/impl/wr0;Lcom/yandex/mobile/ads/impl/dh;Lcom/yandex/mobile/ads/impl/q82;Lcom/yandex/mobile/ads/impl/nk0;Lcom/yandex/mobile/ads/impl/g30;Lcom/yandex/mobile/ads/impl/f10;Lcom/yandex/mobile/ads/impl/da1;Lcom/yandex/mobile/ads/impl/gy1;Lcom/yandex/mobile/ads/impl/cv0;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/sp1;Lcom/yandex/mobile/ads/impl/wr0;Lcom/yandex/mobile/ads/impl/dh;Lcom/yandex/mobile/ads/impl/q82;Lcom/yandex/mobile/ads/impl/nk0;Lcom/yandex/mobile/ads/impl/g30;Lcom/yandex/mobile/ads/impl/f10;Lcom/yandex/mobile/ads/impl/da1;Lcom/yandex/mobile/ads/impl/gy1;Lcom/yandex/mobile/ads/impl/cv0;)V
    .locals 1

    .line 11
    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "reporter"

    invoke-static {p2, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "linkJsonParser"

    invoke-static {p3, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "assetsJsonParser"

    invoke-static {p4, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "urlJsonParser"

    invoke-static {p5, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "impressionDataParser"

    invoke-static {p6, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "divKitDesignParser"

    invoke-static {p7, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "designJsonParser"

    invoke-static {p8, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "nativeResponseTypeParser"

    invoke-static {p9, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "showNoticeTypeProvider"

    invoke-static {p10, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "mediaAssetImageFallbackSizeParser"

    invoke-static {p11, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p3, p0, Lcom/yandex/mobile/ads/impl/k91;->a:Lcom/yandex/mobile/ads/impl/wr0;

    .line 14
    iput-object p4, p0, Lcom/yandex/mobile/ads/impl/k91;->b:Lcom/yandex/mobile/ads/impl/dh;

    .line 15
    iput-object p5, p0, Lcom/yandex/mobile/ads/impl/k91;->c:Lcom/yandex/mobile/ads/impl/q82;

    .line 16
    iput-object p6, p0, Lcom/yandex/mobile/ads/impl/k91;->d:Lcom/yandex/mobile/ads/impl/nk0;

    .line 17
    iput-object p7, p0, Lcom/yandex/mobile/ads/impl/k91;->e:Lcom/yandex/mobile/ads/impl/g30;

    .line 18
    iput-object p8, p0, Lcom/yandex/mobile/ads/impl/k91;->f:Lcom/yandex/mobile/ads/impl/f10;

    .line 19
    iput-object p9, p0, Lcom/yandex/mobile/ads/impl/k91;->g:Lcom/yandex/mobile/ads/impl/da1;

    .line 20
    iput-object p10, p0, Lcom/yandex/mobile/ads/impl/k91;->h:Lcom/yandex/mobile/ads/impl/gy1;

    .line 21
    iput-object p11, p0, Lcom/yandex/mobile/ads/impl/k91;->i:Lcom/yandex/mobile/ads/impl/cv0;

    return-void
.end method


# virtual methods
.method public final a(Lorg/json/JSONObject;)Lcom/yandex/mobile/ads/impl/ey1;
    .locals 20
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/yandex/mobile/ads/impl/t61;,
            Lorg/json/JSONException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    .line 181
    const-string v0, "jsonShowNotice"

    invoke-static {v2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 182
    const-string v0, "delay"

    const-string v3, "url"

    filled-new-array {v0, v3}, [Ljava/lang/String;

    move-result-object v4

    .line 183
    invoke-static {v2, v4}, Lcom/yandex/mobile/ads/impl/l91;->a(Lorg/json/JSONObject;[Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 184
    :try_start_0
    sget-object v4, Lkotlin/Result;->Companion:Lkotlin/Result$a;

    .line 185
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 186
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    sget-object v4, Lkotlin/Result;->Companion:Lkotlin/Result$a;

    invoke-static {v0}, Lkotlin/c;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 187
    :goto_0
    invoke-static {v0}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_0

    move-object v0, v5

    :cond_0
    check-cast v0, Ljava/lang/Long;

    if-eqz v0, :cond_1

    .line 188
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    :goto_1
    move-wide v10, v6

    goto :goto_2

    :cond_1
    const-wide/16 v6, 0x0

    goto :goto_1

    .line 189
    :goto_2
    :try_start_1
    iget-object v0, v1, Lcom/yandex/mobile/ads/impl/k91;->c:Lcom/yandex/mobile/ads/impl/q82;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3, v2}, Lcom/yandex/mobile/ads/impl/q82;->a(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    .line 190
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception v0

    sget-object v4, Lkotlin/Result;->Companion:Lkotlin/Result$a;

    invoke-static {v0}, Lkotlin/c;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 191
    :goto_3
    invoke-static {v0}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    move-object v0, v5

    :cond_2
    move-object v13, v0

    check-cast v13, Ljava/lang/String;

    const/4 v4, 0x0

    .line 192
    :try_start_2
    const-string v0, "visibilityPercent"

    invoke-virtual {v2, v0, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    int-to-double v6, v0

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    .line 193
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_4

    :catchall_2
    move-exception v0

    sget-object v6, Lkotlin/Result;->Companion:Lkotlin/Result$a;

    invoke-static {v0}, Lkotlin/c;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 194
    :goto_4
    invoke-static {v0}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    move-object v0, v5

    :cond_3
    check-cast v0, Ljava/lang/Double;

    if-eqz v0, :cond_4

    .line 195
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    :goto_5
    move-wide v14, v6

    goto :goto_6

    :cond_4
    const-wide/16 v6, 0x0

    goto :goto_5

    :goto_6
    const-wide/16 v16, 0x0

    const-wide/high16 v18, 0x4059000000000000L    # 100.0

    .line 196
    invoke-static/range {v14 .. v19}, Lwn8;->i(DDD)D

    move-result-wide v6

    double-to-int v9, v6

    .line 197
    :try_start_3
    const-string v0, "type"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 198
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto :goto_7

    :catchall_3
    move-exception v0

    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$a;

    invoke-static {v0}, Lkotlin/c;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 199
    :goto_7
    invoke-static {v0}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    move-object v0, v5

    :cond_5
    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_7

    .line 200
    :try_start_4
    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v0, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "toUpperCase(...)"

    invoke-static {v0, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/yandex/mobile/ads/impl/fy1;->valueOf(Ljava/lang/String;)Lcom/yandex/mobile/ads/impl/fy1;

    move-result-object v0

    .line 201
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    goto :goto_8

    :catchall_4
    move-exception v0

    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$a;

    invoke-static {v0}, Lkotlin/c;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 202
    :goto_8
    invoke-static {v0}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    move-object v0, v5

    :cond_6
    check-cast v0, Lcom/yandex/mobile/ads/impl/fy1;

    goto :goto_9

    :cond_7
    move-object v0, v5

    :goto_9
    if-nez v0, :cond_a

    if-eqz v13, :cond_b

    .line 203
    iget-object v0, v1, Lcom/yandex/mobile/ads/impl/k91;->h:Lcom/yandex/mobile/ads/impl/gy1;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v13, v3}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 204
    const-string v0, "/rtbcount/"

    const/4 v1, 0x2

    invoke-static {v13, v0, v4, v1, v5}, Lj1a;->X(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 205
    sget-object v0, Lcom/yandex/mobile/ads/impl/fy1;->c:Lcom/yandex/mobile/ads/impl/fy1;

    goto :goto_a

    .line 206
    :cond_8
    const-string v0, "/count/"

    invoke-static {v13, v0, v4, v1, v5}, Lj1a;->X(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 207
    sget-object v0, Lcom/yandex/mobile/ads/impl/fy1;->b:Lcom/yandex/mobile/ads/impl/fy1;

    goto :goto_a

    .line 208
    :cond_9
    sget-object v0, Lcom/yandex/mobile/ads/impl/fy1;->d:Lcom/yandex/mobile/ads/impl/fy1;

    :cond_a
    :goto_a
    move-object v12, v0

    goto :goto_b

    .line 209
    :cond_b
    sget-object v0, Lcom/yandex/mobile/ads/impl/fy1;->d:Lcom/yandex/mobile/ads/impl/fy1;

    goto :goto_a

    .line 210
    :goto_b
    new-instance v0, Lcom/yandex/mobile/ads/impl/ey1;

    move-object v8, v0

    invoke-direct/range {v8 .. v13}, Lcom/yandex/mobile/ads/impl/ey1;-><init>(IJLcom/yandex/mobile/ads/impl/fy1;Ljava/lang/String;)V

    return-object v0

    .line 211
    :cond_c
    new-instance v0, Lcom/yandex/mobile/ads/impl/t61;

    const-string v1, "Native Ad json has not required attributes"

    invoke-direct {v0, v1}, Lcom/yandex/mobile/ads/impl/t61;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final a(Ljava/lang/String;Lcom/yandex/mobile/ads/impl/xj;)Lcom/yandex/mobile/ads/impl/y61;
    .locals 56
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Lcom/yandex/mobile/ads/impl/t61;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    .line 1
    const-string v3, "ad_pod"

    const-string v4, "ImpressionDataParser"

    const-string v5, "Json has not required attributes"

    const-string v6, "attributeName"

    const-string v7, "id"

    const-string v8, ""

    const-string v9, "response"

    invoke-static {v0, v9}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v9, "base64EncodingParameters"

    invoke-static {v2, v9}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance v10, Lorg/json/JSONObject;

    invoke-direct {v10, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 3
    const-string v0, "jsonResponse"

    invoke-static {v10, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2, v9}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    const-string v0, "native"

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v10

    .line 5
    invoke-static {v10}, Ly45;->g(Ljava/lang/Object;)V

    const-string v11, "ads"

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Lcom/yandex/mobile/ads/impl/l91;->a(Lorg/json/JSONObject;[Ljava/lang/String;)Z

    move-result v0

    const-string v12, "Native Ad json has not required attributes"

    if-eqz v0, :cond_3d

    .line 6
    invoke-static {}, Ly71;->k()Ljava/util/List;

    move-result-object v0

    .line 7
    invoke-static {}, Ly71;->k()Ljava/util/List;

    move-result-object v13

    .line 8
    invoke-static {}, Ly71;->k()Ljava/util/List;

    move-result-object v14

    .line 9
    invoke-static {}, Ly71;->k()Ljava/util/List;

    move-result-object v15

    .line 10
    invoke-static {}, Ly71;->k()Ljava/util/List;

    move-result-object v16

    move-object/from16 p1, v13

    .line 11
    invoke-virtual {v10}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v13

    move-object/from16 v17, v14

    const-string v14, "keys(...)"

    invoke-static {v13, v14}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v18, 0x0

    move-object/from16 v20, p1

    move-object/from16 v21, v0

    move-object/from16 v25, v15

    move-object/from16 v26, v16

    move-object/from16 v22, v17

    move-object/from16 v23, v18

    move-object/from16 v27, v23

    move-object/from16 v28, v27

    move-object/from16 v29, v28

    :goto_0
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3b

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_3a

    .line 12
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v15

    move-object/from16 p1, v13

    const-string v13, "assets"

    move-object/from16 v16, v3

    const-string v3, "showNotices"

    move-object/from16 v17, v3

    const-string v3, "impressionData"

    move-object/from16 v19, v4

    const-string v4, "renderTrackingUrls"

    move-object/from16 v24, v5

    const-string v5, "jsonObject"

    move-object/from16 v30, v6

    const-string v6, "null"

    move-object/from16 v31, v3

    const-string v3, "jsonAttribute"

    move-object/from16 v32, v7

    const-string v7, "jsonAsset"

    move-object/from16 v33, v8

    sparse-switch v15, :sswitch_data_0

    :goto_1
    move-object/from16 v38, v9

    move-object v8, v10

    move-object/from16 v35, v11

    move-object v2, v12

    move-object/from16 v54, v14

    :goto_2
    move-object/from16 v17, v16

    goto/16 :goto_29

    :sswitch_0
    const-string v3, "designs"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 13
    :cond_0
    invoke-interface/range {p2 .. p2}, Lcom/yandex/mobile/ads/impl/xj;->a()Z

    move-result v0

    .line 14
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 15
    invoke-virtual {v10, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 16
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v5

    const/4 v8, 0x0

    :goto_3
    if-ge v8, v5, :cond_3

    .line 17
    invoke-virtual {v3, v8}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    .line 18
    iget-object v7, v1, Lcom/yandex/mobile/ads/impl/k91;->f:Lcom/yandex/mobile/ads/impl/f10;

    invoke-static {v6}, Ly45;->g(Ljava/lang/Object;)V

    invoke-virtual {v7, v6}, Lcom/yandex/mobile/ads/impl/f10;->a(Lorg/json/JSONObject;)Lcom/yandex/mobile/ads/impl/a10;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 19
    iget-object v7, v1, Lcom/yandex/mobile/ads/impl/k91;->e:Lcom/yandex/mobile/ads/impl/g30;

    invoke-virtual {v7, v6, v0}, Lcom/yandex/mobile/ads/impl/g30;->a(Lcom/yandex/mobile/ads/impl/a10;Z)Lcom/yandex/mobile/ads/impl/b30;

    move-result-object v6

    goto :goto_4

    :cond_1
    move-object/from16 v6, v18

    :goto_4
    if-eqz v6, :cond_2

    .line 20
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    :cond_3
    move-object/from16 v13, p1

    move-object/from16 v25, v4

    :goto_5
    move-object/from16 v3, v16

    move-object/from16 v4, v19

    move-object/from16 v5, v24

    move-object/from16 v6, v30

    move-object/from16 v7, v32

    move-object/from16 v8, v33

    goto/16 :goto_0

    .line 21
    :sswitch_1
    const-string v4, "settings"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_1

    .line 22
    :cond_4
    invoke-virtual {v10, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 23
    invoke-virtual {v0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v4

    invoke-static {v4, v14}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v8, v18

    move-object/from16 v35, v8

    move-object/from16 v36, v35

    const/16 v37, 0x0

    const/16 v38, 0x0

    :cond_5
    :goto_6
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_c

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    if-eqz v13, :cond_5

    .line 24
    invoke-virtual {v13}, Ljava/lang/String;->hashCode()I

    move-result v15

    sparse-switch v15, :sswitch_data_1

    goto :goto_6

    :sswitch_2
    const-string v15, "mediaAssetImageFallback"

    invoke-virtual {v13, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_6

    goto :goto_6

    .line 25
    :cond_6
    invoke-virtual {v0, v13}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8

    goto :goto_6

    .line 26
    :sswitch_3
    const-string v15, "isLoopingVideo"

    invoke-virtual {v13, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_7

    goto :goto_6

    .line 27
    :cond_7
    invoke-virtual {v0, v13}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v38

    goto :goto_6

    .line 28
    :sswitch_4
    const-string v15, "multiBannerAutoScrollInterval"

    invoke-virtual {v13, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_8

    goto :goto_6

    .line 29
    :cond_8
    invoke-virtual {v0, v13}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v39

    invoke-static/range {v39 .. v40}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v36

    goto :goto_6

    .line 30
    :sswitch_5
    const-string v15, "highlightingEnabled"

    invoke-virtual {v13, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_9

    goto :goto_6

    .line 31
    :cond_9
    invoke-virtual {v0, v13}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v37

    goto :goto_6

    .line 32
    :sswitch_6
    const-string v15, "templateType"

    invoke-virtual {v13, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_a

    goto :goto_6

    .line 33
    :cond_a
    invoke-static {v0}, Ly45;->g(Ljava/lang/Object;)V

    invoke-static {v13}, Ly45;->g(Ljava/lang/Object;)V

    invoke-static {v0, v7}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v13, v3}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    invoke-virtual {v0, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_b

    .line 35
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v15

    if-eqz v15, :cond_b

    invoke-static {v13, v6}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_b

    .line 36
    invoke-static {v13}, Ly45;->g(Ljava/lang/Object;)V

    move-object/from16 v35, v13

    goto :goto_6

    .line 37
    :cond_b
    new-instance v0, Lcom/yandex/mobile/ads/impl/t61;

    invoke-direct {v0, v12}, Lcom/yandex/mobile/ads/impl/t61;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    if-eqz v8, :cond_d

    .line 38
    iget-object v0, v1, Lcom/yandex/mobile/ads/impl/k91;->i:Lcom/yandex/mobile/ads/impl/cv0;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 39
    invoke-static {v8, v5}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    const-string v0, "width"

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_d

    const-string v3, "height"

    invoke-virtual {v8, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 41
    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 42
    invoke-virtual {v8, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 43
    new-instance v4, Lcom/yandex/mobile/ads/impl/fz1;

    invoke-direct {v4, v0, v3}, Lcom/yandex/mobile/ads/impl/fz1;-><init>(II)V

    move-object/from16 v39, v4

    goto :goto_7

    :cond_d
    move-object/from16 v39, v18

    .line 44
    :goto_7
    new-instance v28, Lcom/yandex/mobile/ads/impl/yx1;

    move-object/from16 v34, v28

    invoke-direct/range {v34 .. v39}, Lcom/yandex/mobile/ads/impl/yx1;-><init>(Ljava/lang/String;Ljava/lang/Long;ZZLcom/yandex/mobile/ads/impl/fz1;)V

    move-object/from16 v13, p1

    goto/16 :goto_5

    .line 45
    :sswitch_7
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    goto/16 :goto_1

    .line 46
    :cond_e
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 47
    invoke-virtual {v10, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 48
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4

    const/4 v8, 0x0

    :goto_8
    if-ge v8, v4, :cond_f

    .line 49
    invoke-virtual {v3, v8}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 50
    invoke-static {v5}, Ly45;->g(Ljava/lang/Object;)V

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v8, v8, 0x1

    goto :goto_8

    :cond_f
    move-object/from16 v13, p1

    move-object/from16 v22, v0

    goto/16 :goto_5

    .line 51
    :sswitch_8
    const-string v4, "ver"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_10

    goto/16 :goto_1

    .line 52
    :cond_10
    invoke-static {v0}, Ly45;->g(Ljava/lang/Object;)V

    invoke-static {v10, v7}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v3}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 54
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_11

    invoke-static {v0, v6}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_11

    .line 55
    invoke-static {v0}, Ly45;->g(Ljava/lang/Object;)V

    move-object/from16 v13, p1

    move-object/from16 v27, v0

    goto/16 :goto_5

    .line 56
    :cond_11
    new-instance v0, Lcom/yandex/mobile/ads/impl/t61;

    invoke-direct {v0, v12}, Lcom/yandex/mobile/ads/impl/t61;-><init>(Ljava/lang/String;)V

    throw v0

    .line 57
    :sswitch_9
    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    goto/16 :goto_1

    .line 58
    :cond_12
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 59
    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v8

    move-object/from16 v35, v11

    .line 60
    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    move-result v11

    move-object/from16 v36, v10

    const/4 v10, 0x0

    :goto_9
    if-ge v10, v11, :cond_2a

    move/from16 v20, v11

    .line 61
    invoke-virtual {v8, v10}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v11

    .line 62
    invoke-static {v11}, Ly45;->g(Ljava/lang/Object;)V

    .line 63
    const-string v0, "jsonNativeAd"

    invoke-static {v11, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2, v9}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v37, v8

    .line 64
    const-string v8, "adType"

    move-object/from16 v38, v9

    const-string v9, "link"

    move-object/from16 v39, v12

    filled-new-array {v8, v13, v9}, [Ljava/lang/String;

    move-result-object v12

    .line 65
    invoke-static {v11, v12}, Lcom/yandex/mobile/ads/impl/l91;->a(Lorg/json/JSONObject;[Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_29

    .line 66
    iget-object v12, v1, Lcom/yandex/mobile/ads/impl/k91;->g:Lcom/yandex/mobile/ads/impl/da1;

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 67
    invoke-static {v11, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    invoke-static {v11, v7}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v8, v3}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    invoke-virtual {v11, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_28

    .line 70
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v8

    if-eqz v8, :cond_28

    invoke-static {v0, v6}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_28

    .line 71
    invoke-static {v0}, Ly45;->g(Ljava/lang/Object;)V

    .line 72
    invoke-static {}, Lcom/yandex/mobile/ads/impl/gr1;->values()[Lcom/yandex/mobile/ads/impl/gr1;

    move-result-object v8

    .line 73
    array-length v12, v8

    move-object/from16 v40, v13

    const/4 v13, 0x0

    :goto_a
    if-ge v13, v12, :cond_14

    aget-object v41, v8, v13

    move-object/from16 v42, v8

    .line 74
    invoke-virtual/range {v41 .. v41}, Lcom/yandex/mobile/ads/impl/gr1;->a()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v0}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_13

    move-object/from16 v44, v41

    goto :goto_b

    :cond_13
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v8, v42

    goto :goto_a

    :cond_14
    move-object/from16 v44, v18

    :goto_b
    if-eqz v44, :cond_27

    .line 75
    iget-object v0, v1, Lcom/yandex/mobile/ads/impl/k91;->b:Lcom/yandex/mobile/ads/impl/dh;

    invoke-virtual {v0, v11, v2}, Lcom/yandex/mobile/ads/impl/dh;->a(Lorg/json/JSONObject;Lcom/yandex/mobile/ads/impl/xj;)Ljava/util/ArrayList;

    move-result-object v45

    .line 76
    new-instance v8, Ljava/util/HashSet;

    invoke-direct {v8}, Ljava/util/HashSet;-><init>()V

    .line 77
    new-instance v12, Ljava/util/HashSet;

    invoke-direct {v12}, Ljava/util/HashSet;-><init>()V

    .line 78
    invoke-virtual {v11}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v13

    invoke-static {v13, v14}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v46, v18

    move-object/from16 v47, v46

    move-object/from16 v48, v47

    move-object/from16 v49, v48

    move-object/from16 v50, v49

    move-object/from16 v51, v50

    :goto_c
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_25

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_15

    .line 79
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v41

    sparse-switch v41, :sswitch_data_2

    :cond_15
    :goto_d
    move-object/from16 v42, v4

    move-object/from16 v41, v13

    move-object/from16 v54, v14

    :goto_e
    move-object/from16 v4, v30

    move-object/from16 v14, v31

    :goto_f
    move-object/from16 v30, v9

    goto/16 :goto_19

    :sswitch_a
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16

    goto :goto_d

    .line 80
    :cond_16
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v41, v13

    .line 81
    invoke-virtual {v11, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v13

    move-object/from16 v42, v4

    .line 82
    invoke-virtual {v13}, Lorg/json/JSONArray;->length()I

    move-result v4

    move-object/from16 v54, v14

    const/4 v14, 0x0

    :goto_10
    if-ge v14, v4, :cond_17

    move/from16 v43, v4

    .line 83
    invoke-virtual {v13, v14}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 84
    invoke-static {v4}, Ly45;->g(Ljava/lang/Object;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v14, v14, 0x1

    move/from16 v4, v43

    goto :goto_10

    .line 85
    :cond_17
    invoke-virtual {v8, v0}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    goto :goto_e

    :sswitch_b
    move-object/from16 v42, v4

    move-object/from16 v41, v13

    move-object/from16 v54, v14

    .line 86
    const-string v4, "showConditions"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_18

    :goto_11
    goto :goto_e

    .line 87
    :cond_18
    new-instance v4, Lcom/yandex/mobile/ads/impl/hr;

    invoke-direct {v4}, Lcom/yandex/mobile/ads/impl/hr;-><init>()V

    .line 88
    invoke-static {v0}, Ly45;->g(Ljava/lang/Object;)V

    invoke-virtual {v4, v0, v11}, Lcom/yandex/mobile/ads/impl/hr;->a(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/yandex/mobile/ads/impl/ib0;

    move-result-object v51

    :goto_12
    move-object/from16 v13, v41

    move-object/from16 v4, v42

    move-object/from16 v14, v54

    goto :goto_c

    :sswitch_c
    move-object/from16 v42, v4

    move-object/from16 v41, v13

    move-object/from16 v54, v14

    .line 89
    const-string v4, "showNotice"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_19

    goto :goto_11

    .line 90
    :cond_19
    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 91
    invoke-static {v0}, Ly45;->g(Ljava/lang/Object;)V

    invoke-virtual {v1, v0}, Lcom/yandex/mobile/ads/impl/k91;->a(Lorg/json/JSONObject;)Lcom/yandex/mobile/ads/impl/ey1;

    move-result-object v0

    .line 92
    invoke-virtual {v12, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_e

    :sswitch_d
    move-object/from16 v42, v4

    move-object/from16 v41, v13

    move-object/from16 v54, v14

    .line 93
    const-string v4, "renderTrackingUrl"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1a

    goto :goto_11

    .line 94
    :cond_1a
    iget-object v4, v1, Lcom/yandex/mobile/ads/impl/k91;->c:Lcom/yandex/mobile/ads/impl/q82;

    invoke-static {v0}, Ly45;->g(Ljava/lang/Object;)V

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0, v11}, Lcom/yandex/mobile/ads/impl/q82;->a(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    .line 95
    invoke-virtual {v8, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto/16 :goto_e

    :sswitch_e
    move-object/from16 v42, v4

    move-object/from16 v41, v13

    move-object/from16 v54, v14

    .line 96
    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1b

    goto :goto_11

    .line 97
    :cond_1b
    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 98
    iget-object v4, v1, Lcom/yandex/mobile/ads/impl/k91;->a:Lcom/yandex/mobile/ads/impl/wr0;

    invoke-static {v0}, Ly45;->g(Ljava/lang/Object;)V

    invoke-virtual {v4, v0, v2}, Lcom/yandex/mobile/ads/impl/wr0;->a(Lorg/json/JSONObject;Lcom/yandex/mobile/ads/impl/xj;)Lcom/yandex/mobile/ads/impl/vr0;

    move-result-object v48

    goto :goto_12

    :sswitch_f
    move-object/from16 v42, v4

    move-object/from16 v41, v13

    move-object/from16 v54, v14

    .line 99
    const-string v4, "info"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1c

    goto :goto_11

    :cond_1c
    move-object/from16 v4, v33

    .line 100
    invoke-virtual {v11, v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v47

    invoke-static/range {v47 .. v47}, Ly45;->g(Ljava/lang/Object;)V

    invoke-virtual/range {v47 .. v47}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1d

    goto :goto_12

    :cond_1d
    move-object/from16 v47, v18

    goto/16 :goto_12

    :sswitch_10
    move-object/from16 v42, v4

    move-object/from16 v41, v13

    move-object/from16 v54, v14

    move-object/from16 v13, v32

    move-object/from16 v4, v33

    .line 101
    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1e

    move-object/from16 v33, v4

    move-object/from16 v32, v13

    goto/16 :goto_e

    .line 102
    :cond_1e
    invoke-virtual {v11, v13, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v46

    invoke-static/range {v46 .. v46}, Ly45;->g(Ljava/lang/Object;)V

    invoke-virtual/range {v46 .. v46}, Ljava/lang/String;->length()I

    move-result v0

    move-object/from16 v33, v4

    move-object/from16 v32, v13

    if-lez v0, :cond_1f

    goto/16 :goto_12

    :cond_1f
    move-object/from16 v46, v18

    goto/16 :goto_12

    :sswitch_11
    move-object/from16 v42, v4

    move-object/from16 v41, v13

    move-object/from16 v54, v14

    move-object/from16 v14, v31

    move-object/from16 v13, v32

    move-object/from16 v4, v33

    .line 103
    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_20

    move-object/from16 v33, v4

    move-object/from16 v32, v13

    move-object/from16 v4, v30

    goto/16 :goto_f

    .line 104
    :cond_20
    iget-object v0, v1, Lcom/yandex/mobile/ads/impl/k91;->d:Lcom/yandex/mobile/ads/impl/nk0;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v11, v5}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v33, v4

    move-object/from16 v4, v30

    invoke-static {v14, v4}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 105
    :try_start_0
    sget-object v0, Lcom/yandex/mobile/ads/impl/vq0;->a:Lcom/yandex/mobile/ads/impl/vq0;

    invoke-static {v11, v7}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v14, v3}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 106
    invoke-virtual {v11, v14}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 107
    invoke-static {v0}, Ly45;->g(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v30

    if-eqz v30, :cond_21

    invoke-static {v6, v0}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v30
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-nez v30, :cond_21

    move-object/from16 v30, v9

    .line 108
    :try_start_1
    new-instance v9, Lcom/yandex/mobile/ads/impl/t4;

    invoke-direct {v9, v0}, Lcom/yandex/mobile/ads/impl/t4;-><init>(Ljava/lang/String;)V

    move-object/from16 v49, v9

    move-object/from16 v32, v13

    :goto_13
    move-object/from16 v31, v14

    :goto_14
    move-object/from16 v9, v30

    move-object/from16 v13, v41

    move-object/from16 v14, v54

    move-object/from16 v30, v4

    move-object/from16 v4, v42

    goto/16 :goto_c

    :catch_0
    move-exception v0

    :goto_15
    move-object/from16 v9, v24

    goto :goto_17

    :cond_21
    move-object/from16 v30, v9

    goto :goto_16

    :catch_1
    move-exception v0

    move-object/from16 v30, v9

    goto :goto_15

    .line 109
    :goto_16
    new-instance v0, Lorg/json/JSONException;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object/from16 v9, v24

    :try_start_2
    invoke-direct {v0, v9}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    move-exception v0

    .line 110
    :goto_17
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v32, v13

    move-object/from16 v13, v19

    invoke-static {v13, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v24, v9

    move-object/from16 v31, v14

    move-object/from16 v49, v18

    goto :goto_14

    :sswitch_12
    move-object/from16 v42, v4

    move-object/from16 v41, v13

    move-object/from16 v54, v14

    move-object/from16 v2, v17

    move-object/from16 v13, v19

    move-object/from16 v4, v30

    move-object/from16 v14, v31

    move-object/from16 v30, v9

    move-object/from16 v9, v24

    .line 111
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_22

    move-object/from16 v17, v2

    move-object/from16 v24, v9

    move-object/from16 v19, v13

    goto :goto_19

    .line 112
    :cond_22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v19, v13

    .line 113
    invoke-virtual {v11, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v13

    move-object/from16 v17, v2

    .line 114
    invoke-virtual {v13}, Lorg/json/JSONArray;->length()I

    move-result v2

    move-object/from16 v24, v9

    const/4 v9, 0x0

    :goto_18
    if-ge v9, v2, :cond_23

    move/from16 v31, v2

    .line 115
    invoke-virtual {v13, v9}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 116
    invoke-static {v2}, Ly45;->g(Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Lcom/yandex/mobile/ads/impl/k91;->a(Lorg/json/JSONObject;)Lcom/yandex/mobile/ads/impl/ey1;

    move-result-object v2

    .line 117
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v9, v9, 0x1

    move/from16 v2, v31

    goto :goto_18

    .line 118
    :cond_23
    invoke-virtual {v12, v0}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    goto :goto_19

    :sswitch_13
    move-object/from16 v42, v4

    move-object/from16 v41, v13

    move-object/from16 v54, v14

    move-object/from16 v4, v30

    move-object/from16 v14, v31

    move-object/from16 v30, v9

    .line 119
    const-string v2, "hideConditions"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_24

    goto :goto_19

    .line 120
    :cond_24
    new-instance v2, Lcom/yandex/mobile/ads/impl/hr;

    invoke-direct {v2}, Lcom/yandex/mobile/ads/impl/hr;-><init>()V

    .line 121
    invoke-static {v0}, Ly45;->g(Ljava/lang/Object;)V

    invoke-virtual {v2, v0, v11}, Lcom/yandex/mobile/ads/impl/hr;->a(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/yandex/mobile/ads/impl/ib0;

    move-result-object v50

    :goto_19
    move-object/from16 v2, p2

    goto/16 :goto_13

    :cond_25
    move-object/from16 v42, v4

    move-object/from16 v54, v14

    move-object/from16 v4, v30

    move-object/from16 v14, v31

    .line 122
    new-instance v0, Lcom/yandex/mobile/ads/impl/g41;

    .line 123
    invoke-static {v8}, Li81;->b1(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v52

    invoke-static {v12}, Li81;->b1(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v53

    move-object/from16 v43, v0

    .line 124
    invoke-direct/range {v43 .. v53}, Lcom/yandex/mobile/ads/impl/g41;-><init>(Lcom/yandex/mobile/ads/impl/gr1;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Lcom/yandex/mobile/ads/impl/vr0;Lcom/yandex/mobile/ads/impl/t4;Lcom/yandex/mobile/ads/impl/ib0;Lcom/yandex/mobile/ads/impl/ib0;Ljava/util/List;Ljava/util/List;)V

    .line 125
    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/g41;->b()Ljava/util/List;

    move-result-object v2

    .line 126
    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/g41;->e()Lcom/yandex/mobile/ads/impl/vr0;

    move-result-object v8

    .line 127
    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_26

    if-eqz v8, :cond_26

    .line 128
    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v10, v10, 0x1

    move-object/from16 v2, p2

    move-object/from16 v30, v4

    move-object/from16 v31, v14

    move/from16 v11, v20

    move-object/from16 v8, v37

    move-object/from16 v9, v38

    move-object/from16 v12, v39

    move-object/from16 v13, v40

    move-object/from16 v4, v42

    move-object/from16 v14, v54

    goto/16 :goto_9

    .line 129
    :cond_26
    new-instance v0, Lcom/yandex/mobile/ads/impl/t61;

    move-object/from16 v2, v39

    invoke-direct {v0, v2}, Lcom/yandex/mobile/ads/impl/t61;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_27
    move-object/from16 v2, v39

    .line 130
    new-instance v0, Lcom/yandex/mobile/ads/impl/t61;

    invoke-direct {v0, v2}, Lcom/yandex/mobile/ads/impl/t61;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_28
    move-object/from16 v2, v39

    .line 131
    new-instance v0, Lcom/yandex/mobile/ads/impl/t61;

    invoke-direct {v0, v2}, Lcom/yandex/mobile/ads/impl/t61;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_29
    move-object/from16 v2, v39

    .line 132
    new-instance v0, Lcom/yandex/mobile/ads/impl/t61;

    invoke-direct {v0, v2}, Lcom/yandex/mobile/ads/impl/t61;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2a
    move-object/from16 v13, p1

    move-object/from16 v2, p2

    move-object/from16 v20, v15

    move-object/from16 v3, v16

    move-object/from16 v4, v19

    move-object/from16 v5, v24

    move-object/from16 v6, v30

    move-object/from16 v7, v32

    move-object/from16 v8, v33

    move-object/from16 v11, v35

    move-object/from16 v10, v36

    goto/16 :goto_0

    :sswitch_14
    move-object/from16 v38, v9

    move-object/from16 v36, v10

    move-object/from16 v35, v11

    move-object v2, v12

    move-object/from16 v54, v14

    move-object/from16 v4, v30

    move-object/from16 v14, v31

    .line 133
    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2b

    move-object/from16 v30, v4

    move-object/from16 v17, v16

    move-object/from16 v8, v36

    goto/16 :goto_29

    .line 134
    :cond_2b
    iget-object v0, v1, Lcom/yandex/mobile/ads/impl/k91;->d:Lcom/yandex/mobile/ads/impl/nk0;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 v8, v36

    invoke-static {v8, v5}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v14, v4}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 135
    :try_start_3
    sget-object v0, Lcom/yandex/mobile/ads/impl/vq0;->a:Lcom/yandex/mobile/ads/impl/vq0;

    invoke-static {v8, v7}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v14, v3}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 136
    invoke-virtual {v8, v14}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 137
    invoke-static {v0}, Ly45;->g(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_2c

    invoke-static {v6, v0}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2c

    .line 138
    new-instance v3, Lcom/yandex/mobile/ads/impl/t4;

    invoke-direct {v3, v0}, Lcom/yandex/mobile/ads/impl/t4;-><init>(Ljava/lang/String;)V

    move-object/from16 v13, p1

    move-object v12, v2

    move-object/from16 v23, v3

    move-object v6, v4

    move-object v10, v8

    move-object/from16 v3, v16

    move-object/from16 v4, v19

    move-object/from16 v5, v24

    :goto_1a
    move-object/from16 v7, v32

    move-object/from16 v8, v33

    move-object/from16 v11, v35

    move-object/from16 v9, v38

    move-object/from16 v14, v54

    move-object/from16 v2, p2

    goto/16 :goto_0

    :catch_3
    move-exception v0

    move-object/from16 v3, v24

    goto :goto_1b

    .line 139
    :cond_2c
    new-instance v0, Lorg/json/JSONException;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    move-object/from16 v3, v24

    :try_start_4
    invoke-direct {v0, v3}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    move-exception v0

    .line 140
    :goto_1b
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v6, v19

    invoke-static {v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v13, p1

    move-object v12, v2

    move-object v5, v3

    move-object v10, v8

    move-object/from16 v3, v16

    move-object/from16 v23, v18

    move-object/from16 v7, v32

    move-object/from16 v8, v33

    move-object/from16 v11, v35

    move-object/from16 v9, v38

    move-object/from16 v14, v54

    move-object/from16 v2, p2

    :goto_1c
    move-object/from16 v55, v6

    move-object v6, v4

    move-object/from16 v4, v55

    goto/16 :goto_0

    :sswitch_15
    move-object/from16 v38, v9

    move-object v8, v10

    move-object/from16 v35, v11

    move-object v2, v12

    move-object v5, v13

    move-object/from16 v54, v14

    move-object/from16 v6, v19

    move-object/from16 v3, v24

    move-object/from16 v4, v30

    .line 141
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2d

    move-object/from16 v24, v3

    move-object/from16 v30, v4

    move-object/from16 v19, v6

    goto/16 :goto_2

    .line 142
    :cond_2d
    iget-object v0, v1, Lcom/yandex/mobile/ads/impl/k91;->b:Lcom/yandex/mobile/ads/impl/dh;

    move-object/from16 v7, p2

    invoke-virtual {v0, v8, v7}, Lcom/yandex/mobile/ads/impl/dh;->a(Lorg/json/JSONObject;Lcom/yandex/mobile/ads/impl/xj;)Ljava/util/ArrayList;

    move-result-object v21

    move-object/from16 v13, p1

    move-object v12, v2

    move-object v5, v3

    move-object v2, v7

    move-object v10, v8

    move-object/from16 v3, v16

    move-object/from16 v7, v32

    move-object/from16 v8, v33

    move-object/from16 v11, v35

    move-object/from16 v9, v38

    move-object/from16 v14, v54

    goto :goto_1c

    :sswitch_16
    move-object v7, v2

    move-object/from16 v38, v9

    move-object v8, v10

    move-object/from16 v35, v11

    move-object v2, v12

    move-object/from16 v54, v14

    move-object/from16 v9, v16

    move-object/from16 v6, v19

    move-object/from16 v3, v24

    move-object/from16 v4, v30

    .line 143
    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2e

    move-object/from16 v24, v3

    move-object/from16 v30, v4

    move-object/from16 v19, v6

    move-object/from16 v17, v9

    goto/16 :goto_29

    .line 144
    :cond_2e
    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 145
    invoke-static {v0}, Ly45;->g(Ljava/lang/Object;)V

    .line 146
    const-string v10, "adPod"

    invoke-static {v0, v10}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 147
    const-string v10, "items"

    invoke-virtual {v0, v10}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v10

    if-eqz v10, :cond_37

    .line 148
    const-string v11, "jsonArray"

    invoke-static {v10, v11}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 149
    invoke-virtual {v10}, Lorg/json/JSONArray;->length()I

    move-result v11

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12, v11}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v13, 0x0

    :goto_1d
    if-ge v13, v11, :cond_36

    .line 150
    invoke-virtual {v10, v13}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v14

    .line 151
    invoke-static {v14}, Ly45;->g(Ljava/lang/Object;)V

    .line 152
    const-string v15, "duration"

    move-object/from16 v24, v3

    move-object/from16 v30, v4

    invoke-virtual {v14, v15}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v3

    .line 153
    const-string v15, "skip"

    invoke-virtual {v14, v15}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v15

    if-eqz v15, :cond_33

    .line 154
    invoke-static {v15, v5}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v16, v5

    .line 155
    const-string v5, "transition_strategy"

    invoke-virtual {v15, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v19, v6

    .line 156
    invoke-static {}, Lcom/yandex/mobile/ads/impl/uz1;->values()[Lcom/yandex/mobile/ads/impl/uz1;

    move-result-object v6

    array-length v7, v6

    move-object/from16 v17, v9

    const/4 v9, 0x0

    :goto_1e
    if-ge v9, v7, :cond_30

    aget-object v29, v6, v9

    move-object/from16 v31, v6

    invoke-virtual/range {v29 .. v29}, Lcom/yandex/mobile/ads/impl/uz1;->a()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v5}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2f

    move-object/from16 v5, v29

    goto :goto_1f

    :cond_2f
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v6, v31

    goto :goto_1e

    :cond_30
    move-object/from16 v5, v18

    .line 157
    :goto_1f
    const-string v6, "visibility"

    invoke-virtual {v15, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 158
    invoke-static {}, Lcom/yandex/mobile/ads/impl/wz1;->values()[Lcom/yandex/mobile/ads/impl/wz1;

    move-result-object v7

    array-length v9, v7

    move-object/from16 v29, v10

    const/4 v10, 0x0

    :goto_20
    if-ge v10, v9, :cond_32

    aget-object v31, v7, v10

    move-object/from16 v36, v7

    invoke-virtual/range {v31 .. v31}, Lcom/yandex/mobile/ads/impl/wz1;->a()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v6}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_31

    move-object/from16 v6, v31

    goto :goto_21

    :cond_31
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v7, v36

    goto :goto_20

    :cond_32
    move-object/from16 v6, v18

    .line 159
    :goto_21
    const-string v7, "delay"

    invoke-virtual {v15, v7}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v9

    .line 160
    new-instance v7, Lcom/yandex/mobile/ads/impl/n6;

    invoke-direct {v7, v5, v6, v9, v10}, Lcom/yandex/mobile/ads/impl/n6;-><init>(Lcom/yandex/mobile/ads/impl/uz1;Lcom/yandex/mobile/ads/impl/wz1;J)V

    goto :goto_22

    :cond_33
    move-object/from16 v16, v5

    move-object/from16 v19, v6

    move-object/from16 v17, v9

    move-object/from16 v29, v10

    move-object/from16 v7, v18

    .line 161
    :goto_22
    const-string v5, "transition_policy"

    invoke-virtual {v14, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 162
    invoke-static {}, Lcom/yandex/mobile/ads/impl/o6;->values()[Lcom/yandex/mobile/ads/impl/o6;

    move-result-object v6

    array-length v9, v6

    const/4 v10, 0x0

    :goto_23
    if-ge v10, v9, :cond_35

    aget-object v14, v6, v10

    invoke-virtual {v14}, Lcom/yandex/mobile/ads/impl/o6;->a()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15, v5}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_34

    goto :goto_24

    :cond_34
    add-int/lit8 v10, v10, 0x1

    goto :goto_23

    :cond_35
    move-object/from16 v14, v18

    .line 163
    :goto_24
    new-instance v5, Lcom/yandex/mobile/ads/impl/m6;

    invoke-direct {v5, v3, v4, v7, v14}, Lcom/yandex/mobile/ads/impl/m6;-><init>(JLcom/yandex/mobile/ads/impl/n6;Lcom/yandex/mobile/ads/impl/o6;)V

    .line 164
    invoke-virtual {v12, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v13, v13, 0x1

    move-object/from16 v7, p2

    move-object/from16 v5, v16

    move-object/from16 v9, v17

    move-object/from16 v6, v19

    move-object/from16 v3, v24

    move-object/from16 v10, v29

    move-object/from16 v4, v30

    goto/16 :goto_1d

    :cond_36
    move-object/from16 v24, v3

    move-object/from16 v30, v4

    move-object/from16 v19, v6

    move-object/from16 v17, v9

    goto :goto_25

    :cond_37
    move-object/from16 v24, v3

    move-object/from16 v30, v4

    move-object/from16 v19, v6

    move-object/from16 v17, v9

    .line 165
    invoke-static {}, Ly71;->k()Ljava/util/List;

    move-result-object v12

    .line 166
    :goto_25
    const-string v3, "closable_ad_position"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    .line 167
    invoke-static {v12}, Ly71;->m(Ljava/util/List;)I

    move-result v4

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lwn8;->d(II)I

    move-result v4

    const-string v5, "reward_ad_position"

    invoke-virtual {v0, v5, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    .line 168
    new-instance v4, Lcom/yandex/mobile/ads/impl/g6;

    invoke-direct {v4, v3, v0, v12}, Lcom/yandex/mobile/ads/impl/g6;-><init>(IILjava/util/List;)V

    move-object/from16 v13, p1

    move-object v12, v2

    move-object/from16 v29, v4

    :goto_26
    move-object v10, v8

    move-object/from16 v3, v17

    move-object/from16 v4, v19

    move-object/from16 v5, v24

    move-object/from16 v6, v30

    goto/16 :goto_1a

    :sswitch_17
    move-object/from16 v38, v9

    move-object v8, v10

    move-object/from16 v35, v11

    move-object v2, v12

    move-object/from16 v54, v14

    move-object/from16 v3, v17

    const/4 v5, 0x0

    move-object/from16 v17, v16

    .line 169
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_38

    goto :goto_29

    .line 170
    :cond_38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 171
    invoke-virtual {v8, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 172
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4

    :goto_27
    if-ge v5, v4, :cond_39

    .line 173
    invoke-virtual {v3, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    .line 174
    invoke-static {v6}, Ly45;->g(Ljava/lang/Object;)V

    invoke-virtual {v1, v6}, Lcom/yandex/mobile/ads/impl/k91;->a(Lorg/json/JSONObject;)Lcom/yandex/mobile/ads/impl/ey1;

    move-result-object v6

    .line 175
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_27

    :cond_39
    move-object/from16 v13, p1

    move-object/from16 v26, v0

    :goto_28
    move-object v12, v2

    goto :goto_26

    :cond_3a
    move-object/from16 v17, v3

    move-object/from16 v19, v4

    move-object/from16 v24, v5

    move-object/from16 v30, v6

    move-object/from16 v32, v7

    move-object/from16 v33, v8

    move-object/from16 v38, v9

    move-object v8, v10

    move-object/from16 v35, v11

    move-object v2, v12

    move-object/from16 p1, v13

    move-object/from16 v54, v14

    :goto_29
    move-object/from16 v13, p1

    goto :goto_28

    :cond_3b
    move-object v2, v12

    .line 176
    invoke-interface/range {v20 .. v20}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3c

    .line 177
    sget-object v0, Lcom/yandex/mobile/ads/impl/op1$c;->c:Lcom/yandex/mobile/ads/impl/op1$c;

    const-string v1, "status"

    invoke-static {v1, v0}, Labb;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    invoke-static {v0}, Lky5;->h(Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v24

    .line 178
    new-instance v0, Lcom/yandex/mobile/ads/impl/y61;

    move-object/from16 v19, v0

    invoke-direct/range {v19 .. v29}, Lcom/yandex/mobile/ads/impl/y61;-><init>(Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/yandex/mobile/ads/impl/t4;Ljava/util/Map;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Lcom/yandex/mobile/ads/impl/yx1;Lcom/yandex/mobile/ads/impl/g6;)V

    return-object v0

    .line 179
    :cond_3c
    new-instance v0, Lcom/yandex/mobile/ads/impl/t61;

    invoke-direct {v0, v2}, Lcom/yandex/mobile/ads/impl/t61;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3d
    move-object v2, v12

    .line 180
    new-instance v0, Lcom/yandex/mobile/ads/impl/t61;

    invoke-direct {v0, v2}, Lcom/yandex/mobile/ads/impl/t61;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_data_0
    .sparse-switch
        -0x69f1e522 -> :sswitch_17
        -0x54cbdbd7 -> :sswitch_16
        -0x53ef8c7d -> :sswitch_15
        -0x6c936ad -> :sswitch_14
        0x178b0 -> :sswitch_9
        0x1c7a3 -> :sswitch_8
        0x4eb92cf1 -> :sswitch_7
        0x5582bc23 -> :sswitch_1
        0x5cce7675 -> :sswitch_0
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        -0x3a2bfd2c -> :sswitch_6
        0x161c84b3 -> :sswitch_5
        0x509a04e6 -> :sswitch_4
        0x757bfea7 -> :sswitch_3
        0x78ef2f51 -> :sswitch_2
    .end sparse-switch

    :sswitch_data_2
    .sparse-switch
        -0x6b333a66 -> :sswitch_13
        -0x69f1e522 -> :sswitch_12
        -0x6c936ad -> :sswitch_11
        0xd1b -> :sswitch_10
        0x3164ae -> :sswitch_f
        0x32affa -> :sswitch_e
        0x1b504bc2 -> :sswitch_d
        0x25df6c35 -> :sswitch_c
        0x27881595 -> :sswitch_b
        0x4eb92cf1 -> :sswitch_a
    .end sparse-switch
.end method
