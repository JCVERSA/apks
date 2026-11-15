.class public final Lio/appmetrica/analytics/adrevenue/admob/v23/impl/d;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/google/android/gms/ads/AdValue;Lio/appmetrica/analytics/modulesapi/internal/client/adrevenue/ModuleAdType;Ljava/lang/String;Lcom/google/android/gms/ads/ResponseInfo;Ljava/lang/String;)Lio/appmetrica/analytics/modulesapi/internal/client/adrevenue/ModuleAdRevenue;
    .locals 37

    move-object/from16 v0, p2

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/ads/AdValue;->getValueMicros()J

    move-result-wide v1

    long-to-double v1, v1

    const-wide v3, 0x412e848000000000L    # 1000000.0

    div-double/2addr v1, v3

    const-wide/16 v3, 0x0

    invoke-static {v1, v2, v3, v4}, Lio/appmetrica/analytics/coreutils/internal/WrapUtils;->getFiniteDoubleOrDefault(DD)D

    move-result-wide v1

    const-string v3, ""

    const-string v4, "PRECISE"

    const/4 v5, 0x3

    const-string v6, "PUBLISHER_PROVIDED"

    const/4 v7, 0x2

    const-string v8, "ESTIMATED"

    const/4 v9, 0x1

    const-string v10, "UNKNOWN"

    if-eqz p3, :cond_4

    invoke-virtual/range {p3 .. p3}, Lcom/google/android/gms/ads/ResponseInfo;->getLoadedAdapterResponseInfo()Lcom/google/android/gms/ads/AdapterResponseInfo;

    move-result-object v11

    if-eqz v11, :cond_4

    new-instance v24, Lio/appmetrica/analytics/modulesapi/internal/client/adrevenue/ModuleAdRevenue;

    invoke-static {v1, v2}, Ljava/math/BigDecimal;->valueOf(D)Ljava/math/BigDecimal;

    move-result-object v13

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/ads/AdValue;->getCurrencyCode()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Currency;->getInstance(Ljava/lang/String;)Ljava/util/Currency;

    move-result-object v14

    invoke-virtual {v11}, Lcom/google/android/gms/ads/AdapterResponseInfo;->getAdapterClassName()Ljava/lang/String;

    move-result-object v16

    invoke-virtual {v11}, Lcom/google/android/gms/ads/AdapterResponseInfo;->getAdSourceInstanceId()Ljava/lang/String;

    move-result-object v19

    invoke-virtual {v11}, Lcom/google/android/gms/ads/AdapterResponseInfo;->getAdSourceInstanceName()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/ads/AdValue;->getPrecisionType()I

    move-result v1

    if-nez v1, :cond_0

    move-object/from16 v21, v10

    goto :goto_0

    :cond_0
    if-ne v1, v9, :cond_1

    move-object/from16 v21, v8

    goto :goto_0

    :cond_1
    if-ne v1, v7, :cond_2

    move-object/from16 v21, v6

    goto :goto_0

    :cond_2
    if-ne v1, v5, :cond_3

    move-object/from16 v21, v4

    goto :goto_0

    :cond_3
    move-object/from16 v21, v3

    :goto_0
    new-instance v1, Lio/appmetrica/analytics/adrevenue/admob/v23/impl/b;

    invoke-direct {v1, v0}, Lio/appmetrica/analytics/adrevenue/admob/v23/impl/b;-><init>(Ljava/lang/String;)V

    const/16 v23, 0x1

    const/16 v18, 0x0

    move-object/from16 v12, v24

    move-object/from16 v15, p1

    move-object/from16 v17, p4

    move-object/from16 v22, v1

    invoke-direct/range {v12 .. v23}, Lio/appmetrica/analytics/modulesapi/internal/client/adrevenue/ModuleAdRevenue;-><init>(Ljava/math/BigDecimal;Ljava/util/Currency;Lio/appmetrica/analytics/modulesapi/internal/client/adrevenue/ModuleAdType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Z)V

    return-object v24

    :cond_4
    new-instance v11, Lio/appmetrica/analytics/modulesapi/internal/client/adrevenue/ModuleAdRevenue;

    invoke-static {v1, v2}, Ljava/math/BigDecimal;->valueOf(D)Ljava/math/BigDecimal;

    move-result-object v26

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/ads/AdValue;->getCurrencyCode()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Currency;->getInstance(Ljava/lang/String;)Ljava/util/Currency;

    move-result-object v27

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/ads/AdValue;->getPrecisionType()I

    move-result v1

    if-nez v1, :cond_5

    move-object/from16 v34, v10

    goto :goto_1

    :cond_5
    if-ne v1, v9, :cond_6

    move-object/from16 v34, v8

    goto :goto_1

    :cond_6
    if-ne v1, v7, :cond_7

    move-object/from16 v34, v6

    goto :goto_1

    :cond_7
    if-ne v1, v5, :cond_8

    move-object/from16 v34, v4

    goto :goto_1

    :cond_8
    move-object/from16 v34, v3

    :goto_1
    new-instance v1, Lio/appmetrica/analytics/adrevenue/admob/v23/impl/c;

    invoke-direct {v1, v0}, Lio/appmetrica/analytics/adrevenue/admob/v23/impl/c;-><init>(Ljava/lang/String;)V

    const/16 v36, 0x1

    const/16 v29, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    move-object/from16 v25, v11

    move-object/from16 v28, p1

    move-object/from16 v30, p4

    move-object/from16 v35, v1

    invoke-direct/range {v25 .. v36}, Lio/appmetrica/analytics/modulesapi/internal/client/adrevenue/ModuleAdRevenue;-><init>(Ljava/math/BigDecimal;Ljava/util/Currency;Lio/appmetrica/analytics/modulesapi/internal/client/adrevenue/ModuleAdType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Z)V

    return-object v11
.end method
