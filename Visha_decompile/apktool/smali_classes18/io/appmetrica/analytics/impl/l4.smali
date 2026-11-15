.class public final Lio/appmetrica/analytics/impl/l4;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lio/appmetrica/analytics/impl/dm;

.field public final b:Lio/appmetrica/analytics/impl/Q;


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/impl/dm;Lio/appmetrica/analytics/impl/Q;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/appmetrica/analytics/impl/l4;->a:Lio/appmetrica/analytics/impl/dm;

    iput-object p2, p0, Lio/appmetrica/analytics/impl/l4;->b:Lio/appmetrica/analytics/impl/Q;

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/HashMap;)Lio/appmetrica/analytics/impl/k4;
    .locals 21

    move-object/from16 v0, p0

    new-instance v18, Lio/appmetrica/analytics/impl/k4;

    iget-object v1, v0, Lio/appmetrica/analytics/impl/l4;->a:Lio/appmetrica/analytics/impl/dm;

    invoke-virtual {v1}, Lio/appmetrica/analytics/impl/dm;->e()Lio/appmetrica/analytics/impl/Hl;

    move-result-object v1

    iget-object v2, v0, Lio/appmetrica/analytics/impl/l4;->b:Lio/appmetrica/analytics/impl/Q;

    monitor-enter v2

    :try_start_0
    new-instance v0, Lio/appmetrica/analytics/impl/Pd;

    invoke-direct {v0}, Lio/appmetrica/analytics/impl/Pd;-><init>()V

    invoke-virtual {v2, v0}, Lio/appmetrica/analytics/impl/Q;->a(Lio/appmetrica/analytics/impl/wi;)Lio/appmetrica/analytics/coreapi/internal/identifiers/AdvertisingIdsHolder;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    iget-object v2, v1, Lio/appmetrica/analytics/impl/Hl;->d:Ljava/lang/String;

    invoke-static {v2}, Lio/appmetrica/analytics/impl/k4;->a(Ljava/lang/String;)Lio/appmetrica/analytics/internal/IdentifiersResult;

    move-result-object v2

    iget-object v3, v1, Lio/appmetrica/analytics/impl/Hl;->a:Ljava/lang/String;

    invoke-static {v3}, Lio/appmetrica/analytics/impl/k4;->a(Ljava/lang/String;)Lio/appmetrica/analytics/internal/IdentifiersResult;

    move-result-object v3

    iget-object v4, v1, Lio/appmetrica/analytics/impl/Hl;->b:Ljava/lang/String;

    invoke-static {v4}, Lio/appmetrica/analytics/impl/k4;->a(Ljava/lang/String;)Lio/appmetrica/analytics/internal/IdentifiersResult;

    move-result-object v4

    iget-object v5, v1, Lio/appmetrica/analytics/impl/Hl;->j:Ljava/lang/String;

    invoke-static {v5}, Lio/appmetrica/analytics/impl/k4;->a(Ljava/lang/String;)Lio/appmetrica/analytics/internal/IdentifiersResult;

    move-result-object v5

    iget-object v6, v1, Lio/appmetrica/analytics/impl/Hl;->i:Ljava/lang/String;

    invoke-static {v6}, Lio/appmetrica/analytics/impl/k4;->a(Ljava/lang/String;)Lio/appmetrica/analytics/internal/IdentifiersResult;

    move-result-object v6

    iget-object v7, v1, Lio/appmetrica/analytics/impl/Hl;->k:Ljava/lang/String;

    invoke-static {v7}, Lio/appmetrica/analytics/impl/im;->a(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v7

    invoke-static {v7}, Lio/appmetrica/analytics/impl/mb;->a(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lio/appmetrica/analytics/impl/k4;->a(Ljava/lang/String;)Lio/appmetrica/analytics/internal/IdentifiersResult;

    move-result-object v7

    invoke-static/range {p1 .. p1}, Lio/appmetrica/analytics/impl/mb;->a(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lio/appmetrica/analytics/impl/k4;->a(Ljava/lang/String;)Lio/appmetrica/analytics/internal/IdentifiersResult;

    move-result-object v8

    new-instance v9, Lio/appmetrica/analytics/internal/IdentifiersResult;

    invoke-virtual {v0}, Lio/appmetrica/analytics/coreapi/internal/identifiers/AdvertisingIdsHolder;->getGoogle()Lio/appmetrica/analytics/coreapi/internal/identifiers/AdTrackingInfoResult;

    move-result-object v10

    iget-object v10, v10, Lio/appmetrica/analytics/coreapi/internal/identifiers/AdTrackingInfoResult;->mAdTrackingInfo:Lio/appmetrica/analytics/coreapi/internal/identifiers/AdTrackingInfo;

    const/4 v11, 0x0

    if-nez v10, :cond_0

    move-object v10, v11

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lio/appmetrica/analytics/coreapi/internal/identifiers/AdvertisingIdsHolder;->getGoogle()Lio/appmetrica/analytics/coreapi/internal/identifiers/AdTrackingInfoResult;

    move-result-object v10

    iget-object v10, v10, Lio/appmetrica/analytics/coreapi/internal/identifiers/AdTrackingInfoResult;->mAdTrackingInfo:Lio/appmetrica/analytics/coreapi/internal/identifiers/AdTrackingInfo;

    iget-object v10, v10, Lio/appmetrica/analytics/coreapi/internal/identifiers/AdTrackingInfo;->advId:Ljava/lang/String;

    :goto_0
    invoke-virtual {v0}, Lio/appmetrica/analytics/coreapi/internal/identifiers/AdvertisingIdsHolder;->getGoogle()Lio/appmetrica/analytics/coreapi/internal/identifiers/AdTrackingInfoResult;

    move-result-object v12

    iget-object v12, v12, Lio/appmetrica/analytics/coreapi/internal/identifiers/AdTrackingInfoResult;->mStatus:Lio/appmetrica/analytics/coreapi/internal/identifiers/IdentifierStatus;

    invoke-virtual {v0}, Lio/appmetrica/analytics/coreapi/internal/identifiers/AdvertisingIdsHolder;->getGoogle()Lio/appmetrica/analytics/coreapi/internal/identifiers/AdTrackingInfoResult;

    move-result-object v13

    iget-object v13, v13, Lio/appmetrica/analytics/coreapi/internal/identifiers/AdTrackingInfoResult;->mErrorExplanation:Ljava/lang/String;

    invoke-direct {v9, v10, v12, v13}, Lio/appmetrica/analytics/internal/IdentifiersResult;-><init>(Ljava/lang/String;Lio/appmetrica/analytics/coreapi/internal/identifiers/IdentifierStatus;Ljava/lang/String;)V

    new-instance v10, Lio/appmetrica/analytics/internal/IdentifiersResult;

    invoke-virtual {v0}, Lio/appmetrica/analytics/coreapi/internal/identifiers/AdvertisingIdsHolder;->getHuawei()Lio/appmetrica/analytics/coreapi/internal/identifiers/AdTrackingInfoResult;

    move-result-object v12

    iget-object v12, v12, Lio/appmetrica/analytics/coreapi/internal/identifiers/AdTrackingInfoResult;->mAdTrackingInfo:Lio/appmetrica/analytics/coreapi/internal/identifiers/AdTrackingInfo;

    if-nez v12, :cond_1

    move-object v12, v11

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Lio/appmetrica/analytics/coreapi/internal/identifiers/AdvertisingIdsHolder;->getHuawei()Lio/appmetrica/analytics/coreapi/internal/identifiers/AdTrackingInfoResult;

    move-result-object v12

    iget-object v12, v12, Lio/appmetrica/analytics/coreapi/internal/identifiers/AdTrackingInfoResult;->mAdTrackingInfo:Lio/appmetrica/analytics/coreapi/internal/identifiers/AdTrackingInfo;

    iget-object v12, v12, Lio/appmetrica/analytics/coreapi/internal/identifiers/AdTrackingInfo;->advId:Ljava/lang/String;

    :goto_1
    invoke-virtual {v0}, Lio/appmetrica/analytics/coreapi/internal/identifiers/AdvertisingIdsHolder;->getHuawei()Lio/appmetrica/analytics/coreapi/internal/identifiers/AdTrackingInfoResult;

    move-result-object v13

    iget-object v13, v13, Lio/appmetrica/analytics/coreapi/internal/identifiers/AdTrackingInfoResult;->mStatus:Lio/appmetrica/analytics/coreapi/internal/identifiers/IdentifierStatus;

    invoke-virtual {v0}, Lio/appmetrica/analytics/coreapi/internal/identifiers/AdvertisingIdsHolder;->getHuawei()Lio/appmetrica/analytics/coreapi/internal/identifiers/AdTrackingInfoResult;

    move-result-object v14

    iget-object v14, v14, Lio/appmetrica/analytics/coreapi/internal/identifiers/AdTrackingInfoResult;->mErrorExplanation:Ljava/lang/String;

    invoke-direct {v10, v12, v13, v14}, Lio/appmetrica/analytics/internal/IdentifiersResult;-><init>(Ljava/lang/String;Lio/appmetrica/analytics/coreapi/internal/identifiers/IdentifierStatus;Ljava/lang/String;)V

    new-instance v14, Lio/appmetrica/analytics/internal/IdentifiersResult;

    invoke-virtual {v0}, Lio/appmetrica/analytics/coreapi/internal/identifiers/AdvertisingIdsHolder;->getYandex()Lio/appmetrica/analytics/coreapi/internal/identifiers/AdTrackingInfoResult;

    move-result-object v12

    iget-object v12, v12, Lio/appmetrica/analytics/coreapi/internal/identifiers/AdTrackingInfoResult;->mAdTrackingInfo:Lio/appmetrica/analytics/coreapi/internal/identifiers/AdTrackingInfo;

    if-nez v12, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v0}, Lio/appmetrica/analytics/coreapi/internal/identifiers/AdvertisingIdsHolder;->getYandex()Lio/appmetrica/analytics/coreapi/internal/identifiers/AdTrackingInfoResult;

    move-result-object v11

    iget-object v11, v11, Lio/appmetrica/analytics/coreapi/internal/identifiers/AdTrackingInfoResult;->mAdTrackingInfo:Lio/appmetrica/analytics/coreapi/internal/identifiers/AdTrackingInfo;

    iget-object v11, v11, Lio/appmetrica/analytics/coreapi/internal/identifiers/AdTrackingInfo;->advId:Ljava/lang/String;

    :goto_2
    invoke-virtual {v0}, Lio/appmetrica/analytics/coreapi/internal/identifiers/AdvertisingIdsHolder;->getYandex()Lio/appmetrica/analytics/coreapi/internal/identifiers/AdTrackingInfoResult;

    move-result-object v12

    iget-object v12, v12, Lio/appmetrica/analytics/coreapi/internal/identifiers/AdTrackingInfoResult;->mStatus:Lio/appmetrica/analytics/coreapi/internal/identifiers/IdentifierStatus;

    invoke-virtual {v0}, Lio/appmetrica/analytics/coreapi/internal/identifiers/AdvertisingIdsHolder;->getYandex()Lio/appmetrica/analytics/coreapi/internal/identifiers/AdTrackingInfoResult;

    move-result-object v0

    iget-object v0, v0, Lio/appmetrica/analytics/coreapi/internal/identifiers/AdTrackingInfoResult;->mErrorExplanation:Ljava/lang/String;

    invoke-direct {v14, v11, v12, v0}, Lio/appmetrica/analytics/internal/IdentifiersResult;-><init>(Ljava/lang/String;Lio/appmetrica/analytics/coreapi/internal/identifiers/IdentifierStatus;Ljava/lang/String;)V

    iget-object v0, v1, Lio/appmetrica/analytics/impl/Hl;->h:Ljava/util/Map;

    invoke-static {v0}, Lio/appmetrica/analytics/impl/mb;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/appmetrica/analytics/impl/k4;->a(Ljava/lang/String;)Lio/appmetrica/analytics/internal/IdentifiersResult;

    move-result-object v11

    invoke-static {}, Lio/appmetrica/analytics/impl/fn;->a()J

    move-result-wide v12

    move-object/from16 p0, v14

    iget-wide v14, v1, Lio/appmetrica/analytics/impl/Hl;->o:J

    iget-object v0, v1, Lio/appmetrica/analytics/impl/Hl;->A:Lio/appmetrica/analytics/impl/fm;

    iget v0, v0, Lio/appmetrica/analytics/impl/fm;->a:I

    move-object/from16 p1, v11

    move-wide/from16 v19, v12

    int-to-long v11, v0

    add-long/2addr v14, v11

    move-object/from16 v11, p0

    iget-object v0, v1, Lio/appmetrica/analytics/impl/Hl;->n:Lio/appmetrica/analytics/impl/C4;

    iget-object v0, v0, Lio/appmetrica/analytics/impl/C4;->f:Ljava/lang/Boolean;

    invoke-static {v0}, Lio/appmetrica/analytics/impl/k4;->a(Ljava/lang/Boolean;)Lio/appmetrica/analytics/impl/ca;

    move-result-object v16

    new-instance v0, Landroid/os/Bundle;

    move-object/from16 v17, v0

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    move-object/from16 v0, v18

    move-object v1, v2

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    move-object v6, v7

    move-object v7, v8

    move-object v8, v9

    move-object v9, v10

    move-object v10, v11

    move-object/from16 v11, p1

    move-wide/from16 v12, v19

    invoke-direct/range {v0 .. v17}, Lio/appmetrica/analytics/impl/k4;-><init>(Lio/appmetrica/analytics/internal/IdentifiersResult;Lio/appmetrica/analytics/internal/IdentifiersResult;Lio/appmetrica/analytics/internal/IdentifiersResult;Lio/appmetrica/analytics/internal/IdentifiersResult;Lio/appmetrica/analytics/internal/IdentifiersResult;Lio/appmetrica/analytics/internal/IdentifiersResult;Lio/appmetrica/analytics/internal/IdentifiersResult;Lio/appmetrica/analytics/internal/IdentifiersResult;Lio/appmetrica/analytics/internal/IdentifiersResult;Lio/appmetrica/analytics/internal/IdentifiersResult;Lio/appmetrica/analytics/internal/IdentifiersResult;JJLio/appmetrica/analytics/impl/ca;Landroid/os/Bundle;)V

    return-object v18

    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0
.end method
