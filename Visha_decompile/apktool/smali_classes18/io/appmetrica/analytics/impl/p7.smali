.class public final Lio/appmetrica/analytics/impl/p7;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:I

.field public final c:Lio/appmetrica/analytics/impl/X8;

.field public final d:Lio/appmetrica/analytics/impl/E8;

.field public final e:Lio/appmetrica/analytics/impl/c0;

.field public final f:Lio/appmetrica/analytics/impl/N8;

.field public final g:Lio/appmetrica/analytics/impl/s7;

.field public final h:Lio/appmetrica/analytics/impl/a6;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lio/appmetrica/analytics/impl/xk;ILio/appmetrica/analytics/impl/X8;Lio/appmetrica/analytics/impl/E8;Lio/appmetrica/analytics/impl/c0;Lio/appmetrica/analytics/impl/N8;Lio/appmetrica/analytics/impl/s7;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lio/appmetrica/analytics/impl/p7;->a:Landroid/content/Context;

    .line 3
    iput p3, p0, Lio/appmetrica/analytics/impl/p7;->b:I

    .line 4
    iput-object p4, p0, Lio/appmetrica/analytics/impl/p7;->c:Lio/appmetrica/analytics/impl/X8;

    .line 5
    iput-object p5, p0, Lio/appmetrica/analytics/impl/p7;->d:Lio/appmetrica/analytics/impl/E8;

    .line 6
    iput-object p6, p0, Lio/appmetrica/analytics/impl/p7;->e:Lio/appmetrica/analytics/impl/c0;

    .line 7
    iput-object p7, p0, Lio/appmetrica/analytics/impl/p7;->f:Lio/appmetrica/analytics/impl/N8;

    .line 8
    iput-object p8, p0, Lio/appmetrica/analytics/impl/p7;->g:Lio/appmetrica/analytics/impl/s7;

    .line 9
    iget-object p1, p5, Lio/appmetrica/analytics/impl/E8;->a:Lio/appmetrica/analytics/impl/a6;

    iput-object p1, p0, Lio/appmetrica/analytics/impl/p7;->h:Lio/appmetrica/analytics/impl/a6;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Lio/appmetrica/analytics/impl/xk;ILio/appmetrica/analytics/impl/X8;Lio/appmetrica/analytics/impl/E8;Lio/appmetrica/analytics/impl/ch;Lio/appmetrica/analytics/impl/c0;)V
    .locals 9

    .line 10
    new-instance v7, Lio/appmetrica/analytics/impl/N8;

    invoke-direct {v7}, Lio/appmetrica/analytics/impl/N8;-><init>()V

    .line 11
    new-instance v8, Lio/appmetrica/analytics/impl/s7;

    move-object v0, p6

    invoke-direct {v8, p6}, Lio/appmetrica/analytics/impl/s7;-><init>(Lio/appmetrica/analytics/impl/ch;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object/from16 v6, p7

    .line 12
    invoke-direct/range {v0 .. v8}, Lio/appmetrica/analytics/impl/p7;-><init>(Landroid/content/Context;Lio/appmetrica/analytics/impl/xk;ILio/appmetrica/analytics/impl/X8;Lio/appmetrica/analytics/impl/E8;Lio/appmetrica/analytics/impl/c0;Lio/appmetrica/analytics/impl/N8;Lio/appmetrica/analytics/impl/s7;)V

    return-void
.end method

.method public static b()Ljava/lang/String;
    .locals 4

    new-instance v0, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    sget-object v1, Lio/appmetrica/analytics/impl/ua;->E:Lio/appmetrica/analytics/impl/ua;

    invoke-virtual {v1}, Lio/appmetrica/analytics/impl/ua;->A()Lio/appmetrica/analytics/impl/Lm;

    move-result-object v1

    new-instance v2, Lio/appmetrica/analytics/impl/o7;

    invoke-direct {v2, v0}, Lio/appmetrica/analytics/impl/o7;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;)V

    monitor-enter v1

    :try_start_0
    iget-object v3, v1, Lio/appmetrica/analytics/impl/Lm;->b:Lio/appmetrica/analytics/impl/Nm;

    invoke-interface {v3, v2}, Lio/appmetrica/analytics/impl/Nm;->a(Lio/appmetrica/analytics/impl/Mm;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    iget-object v0, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public final a()Lio/appmetrica/analytics/impl/l7;
    .locals 32

    move-object/from16 v0, p0

    new-instance v20, Lio/appmetrica/analytics/impl/l7;

    iget-object v1, v0, Lio/appmetrica/analytics/impl/p7;->h:Lio/appmetrica/analytics/impl/a6;

    iget v1, v1, Lio/appmetrica/analytics/impl/a6;->e:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v1, v0, Lio/appmetrica/analytics/impl/p7;->h:Lio/appmetrica/analytics/impl/a6;

    invoke-virtual {v1}, Lio/appmetrica/analytics/impl/a6;->getName()Ljava/lang/String;

    move-result-object v3

    iget-object v1, v0, Lio/appmetrica/analytics/impl/p7;->h:Lio/appmetrica/analytics/impl/a6;

    invoke-virtual {v1}, Lio/appmetrica/analytics/impl/a6;->getValue()Ljava/lang/String;

    move-result-object v4

    iget-object v1, v0, Lio/appmetrica/analytics/impl/p7;->c:Lio/appmetrica/analytics/impl/X8;

    iget v5, v0, Lio/appmetrica/analytics/impl/p7;->b:I

    iget-object v6, v1, Lio/appmetrica/analytics/impl/X8;->a:Lio/appmetrica/analytics/impl/Y8;

    iget-object v6, v6, Lio/appmetrica/analytics/impl/Y8;->a:Lio/appmetrica/analytics/impl/Un;

    monitor-enter v6

    :try_start_0
    iget-object v7, v6, Lio/appmetrica/analytics/impl/Un;->a:Lio/appmetrica/analytics/impl/Vn;

    invoke-virtual {v7}, Lio/appmetrica/analytics/impl/Vn;->a()Lorg/json/JSONObject;

    move-result-object v7

    const-string v8, "numbers_of_type"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v6

    if-eqz v7, :cond_0

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v6

    goto :goto_0

    :cond_0
    const-wide/16 v6, 0x0

    :goto_0
    iget-object v1, v1, Lio/appmetrica/analytics/impl/X8;->a:Lio/appmetrica/analytics/impl/Y8;

    const-wide/16 v8, 0x1

    add-long/2addr v8, v6

    invoke-virtual {v1, v5, v8, v9}, Lio/appmetrica/analytics/impl/Y8;->a(IJ)V

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    iget-object v1, v0, Lio/appmetrica/analytics/impl/p7;->g:Lio/appmetrica/analytics/impl/s7;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v6, Lio/appmetrica/analytics/impl/ua;->E:Lio/appmetrica/analytics/impl/ua;

    invoke-virtual {v6}, Lio/appmetrica/analytics/impl/ua;->l()Lio/appmetrica/analytics/impl/Pb;

    move-result-object v6

    invoke-interface {v6}, Lio/appmetrica/analytics/locationapi/internal/LocationProvider;->getUserLocation()Landroid/location/Location;

    move-result-object v7

    const/4 v8, 0x0

    if-eqz v7, :cond_1

    sget v6, Lio/appmetrica/analytics/impl/eo;->b:I

    new-instance v6, Landroid/location/Location;

    invoke-direct {v6, v7}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    invoke-virtual {v6}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v7

    const-string v9, ""

    invoke-virtual {v6, v9}, Landroid/location/Location;->setProvider(Ljava/lang/String;)V

    new-instance v9, Lio/appmetrica/analytics/impl/eo;

    invoke-direct {v9, v6, v7}, Lio/appmetrica/analytics/impl/eo;-><init>(Landroid/location/Location;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    invoke-interface {v6}, Lio/appmetrica/analytics/locationapi/internal/LocationProvider;->getSystemLocation()Landroid/location/Location;

    move-result-object v6

    if-eqz v6, :cond_2

    new-instance v9, Lio/appmetrica/analytics/impl/eo;

    new-instance v7, Landroid/location/Location;

    invoke-direct {v7, v6}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    const-string v6, ""

    invoke-direct {v9, v7, v6}, Lio/appmetrica/analytics/impl/eo;-><init>(Landroid/location/Location;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    move-object v9, v8

    :goto_1
    iget-object v1, v1, Lio/appmetrica/analytics/impl/s7;->a:Lio/appmetrica/analytics/impl/ch;

    iget-boolean v1, v1, Lio/appmetrica/analytics/impl/ch;->d:Z

    if-eqz v9, :cond_3

    invoke-virtual {v9}, Landroid/location/Location;->getLatitude()D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    move-object/from16 v24, v6

    goto :goto_2

    :cond_3
    move-object/from16 v24, v8

    :goto_2
    if-eqz v9, :cond_4

    invoke-virtual {v9}, Landroid/location/Location;->getLongitude()D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    move-object/from16 v23, v6

    goto :goto_3

    :cond_4
    move-object/from16 v23, v8

    :goto_3
    if-eqz v9, :cond_5

    invoke-virtual {v9}, Landroid/location/Location;->getTime()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object/from16 v29, v6

    goto :goto_4

    :cond_5
    move-object/from16 v29, v8

    :goto_4
    if-eqz v9, :cond_6

    invoke-virtual {v9}, Landroid/location/Location;->getAccuracy()F

    move-result v6

    float-to-int v6, v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v27, v6

    goto :goto_5

    :cond_6
    move-object/from16 v27, v8

    :goto_5
    if-eqz v9, :cond_7

    invoke-virtual {v9}, Landroid/location/Location;->getBearing()F

    move-result v6

    float-to-int v6, v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v26, v6

    goto :goto_6

    :cond_7
    move-object/from16 v26, v8

    :goto_6
    if-eqz v9, :cond_8

    invoke-virtual {v9}, Landroid/location/Location;->getSpeed()F

    move-result v6

    float-to-int v6, v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v28, v6

    goto :goto_7

    :cond_8
    move-object/from16 v28, v8

    :goto_7
    if-eqz v9, :cond_9

    invoke-virtual {v9}, Landroid/location/Location;->getAltitude()D

    move-result-wide v6

    double-to-int v6, v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v25, v6

    goto :goto_8

    :cond_9
    move-object/from16 v25, v8

    :goto_8
    if-eqz v9, :cond_a

    invoke-virtual {v9}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v30, v6

    goto :goto_9

    :cond_a
    move-object/from16 v30, v8

    :goto_9
    if-eqz v9, :cond_b

    iget-object v8, v9, Lio/appmetrica/analytics/impl/eo;->a:Ljava/lang/String;

    :cond_b
    move-object/from16 v31, v8

    new-instance v21, Lio/appmetrica/analytics/impl/q7;

    move-object/from16 v6, v21

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v22

    invoke-direct/range {v21 .. v31}, Lio/appmetrica/analytics/impl/q7;-><init>(Ljava/lang/Boolean;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, v0, Lio/appmetrica/analytics/impl/p7;->h:Lio/appmetrica/analytics/impl/a6;

    iget-object v7, v1, Lio/appmetrica/analytics/impl/a6;->c:Ljava/lang/String;

    iget-object v1, v0, Lio/appmetrica/analytics/impl/p7;->e:Lio/appmetrica/analytics/impl/c0;

    iget-object v8, v1, Lio/appmetrica/analytics/impl/c0;->a:Ljava/lang/String;

    iget-wide v9, v1, Lio/appmetrica/analytics/impl/c0;->b:J

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    iget-object v1, v0, Lio/appmetrica/analytics/impl/p7;->h:Lio/appmetrica/analytics/impl/a6;

    iget v1, v1, Lio/appmetrica/analytics/impl/a6;->g:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    iget-object v1, v0, Lio/appmetrica/analytics/impl/p7;->a:Landroid/content/Context;

    sget-object v11, Lio/appmetrica/analytics/impl/ve;->a:Lio/appmetrica/analytics/coreutils/internal/services/SafePackageManager;

    const-string v11, "connectivity"

    invoke-virtual {v1, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    sget-object v11, Lio/appmetrica/analytics/impl/ue;->n:Lio/appmetrica/analytics/impl/ue;

    new-instance v12, Lio/appmetrica/analytics/impl/te;

    invoke-direct {v12}, Lio/appmetrica/analytics/impl/te;-><init>()V

    const-string v13, "getting connection type"

    const-string v14, "ConnectivityManager"

    invoke-static {v1, v13, v14, v11, v12}, Lio/appmetrica/analytics/coreutils/internal/system/SystemServiceUtils;->accessSystemServiceSafelyOrDefault(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lio/appmetrica/analytics/coreapi/internal/backport/FunctionWithThrowable;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/appmetrica/analytics/impl/ue;

    sget-object v11, Lio/appmetrica/analytics/impl/ve;->d:Lio/appmetrica/analytics/impl/se;

    invoke-virtual {v11, v1}, Lio/appmetrica/analytics/impl/Jc;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    move-object v11, v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    invoke-static {}, Lio/appmetrica/analytics/impl/p7;->b()Ljava/lang/String;

    move-result-object v12

    iget-object v1, v0, Lio/appmetrica/analytics/impl/p7;->d:Lio/appmetrica/analytics/impl/E8;

    iget-object v13, v1, Lio/appmetrica/analytics/impl/E8;->b:Lio/appmetrica/analytics/impl/M8;

    iget-object v1, v0, Lio/appmetrica/analytics/impl/p7;->h:Lio/appmetrica/analytics/impl/a6;

    iget-object v14, v1, Lio/appmetrica/analytics/impl/a6;->h:Ljava/lang/String;

    iget-object v15, v1, Lio/appmetrica/analytics/impl/a6;->k:Lio/appmetrica/analytics/impl/ka;

    iget-object v6, v1, Lio/appmetrica/analytics/impl/a6;->l:Lio/appmetrica/analytics/impl/s9;

    move-object/from16 v16, v6

    iget-object v6, v1, Lio/appmetrica/analytics/impl/a6;->n:Ljava/lang/Boolean;

    move-object/from16 v17, v6

    iget-object v6, v1, Lio/appmetrica/analytics/impl/a6;->o:Ljava/lang/Integer;

    move-object/from16 v18, v6

    iget-object v0, v0, Lio/appmetrica/analytics/impl/p7;->f:Lio/appmetrica/analytics/impl/N8;

    iget-object v1, v1, Lio/appmetrica/analytics/impl/a6;->p:Ljava/util/Map;

    invoke-virtual {v0, v1}, Lio/appmetrica/analytics/impl/N8;->a(Ljava/util/Map;)[B

    move-result-object v19

    move-object/from16 v1, v20

    move-object/from16 v6, v21

    invoke-direct/range {v1 .. v19}, Lio/appmetrica/analytics/impl/l7;-><init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Lio/appmetrica/analytics/impl/q7;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Lio/appmetrica/analytics/impl/M8;Ljava/lang/String;Lio/appmetrica/analytics/impl/ka;Lio/appmetrica/analytics/impl/s9;Ljava/lang/Boolean;Ljava/lang/Integer;[B)V

    return-object v20

    :catchall_0
    move-exception v0

    monitor-exit v6

    throw v0
.end method
