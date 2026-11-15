.class public final Leda$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Leda;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Leda$a;-><init>()V

    return-void
.end method

.method public static final b(Lkotlin/jvm/internal/Ref$IntRef;Lkotlin/jvm/internal/Ref$IntRef;Lkotlin/jvm/internal/Ref$IntRef;IILjava/util/ArrayList;Ljava/lang/String;I)V
    .locals 1

    iget p0, p0, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    const/4 v0, -0x1

    if-eq p0, v0, :cond_0

    iget v0, p1, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    if-lt v0, p0, :cond_0

    return-void

    :cond_0
    iget p0, p2, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    if-eq p0, p7, :cond_1

    sget-object p0, Leda;->a:Leda$a;

    invoke-virtual {p0, p7, p3, p4}, Leda$a;->j(III)Z

    move-result p0

    if-eqz p0, :cond_1

    iput p7, p2, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    sget-object p0, Lcom/transsion/mediationads/beans/AdMediaItem;->Companion:Lcom/transsion/mediationads/beans/AdMediaItem$Companion;

    const/4 p2, 0x2

    invoke-virtual {p0, p6, p2}, Lcom/transsion/mediationads/beans/AdMediaItem$Companion;->create(Ljava/lang/String;I)Lcom/transsion/mediationads/beans/AdMediaItem;

    move-result-object p0

    invoke-virtual {p5, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget p0, p1, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    add-int/lit8 p0, p0, 0x1

    iput p0, p1, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Inserted ad at row: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "MediationApi_TabStrategyUtils"

    invoke-static {p1, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;Lcom/transsion/mediationads/beans/TabStrategy;I)Ljava/util/ArrayList;
    .locals 20

    const-string v0, "dataList"

    move-object/from16 v1, p1

    invoke-static {v1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tabStrategy"

    move-object/from16 v2, p2

    invoke-static {v2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Lcom/transsion/mediationads/beans/TabStrategy;->getStartPosition()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Lcom/transsion/mediationads/beans/TabStrategy;->getVideoIntervals()I

    move-result v9

    invoke-virtual/range {p2 .. p2}, Lcom/transsion/mediationads/beans/TabStrategy;->getAdvertisingId()Ljava/lang/String;

    move-result-object v10

    new-instance v11, Lkotlin/jvm/internal/Ref$IntRef;

    invoke-direct {v11}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    const/4 v3, -0x1

    iput v3, v11, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    sget-object v4, Lcom/transsion/mediationads/manager/b;->a:Lcom/transsion/mediationads/manager/b$a;

    invoke-virtual {v4}, Lcom/transsion/mediationads/manager/b$a;->a()Lcom/transsion/mediationads/manager/b;

    move-result-object v4

    invoke-virtual/range {p2 .. p2}, Lcom/transsion/mediationads/beans/TabStrategy;->getTabType()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/transsion/mediationads/manager/b;->h(I)Z

    move-result v5

    const-string v12, "MediationApi_TabStrategyUtils"

    if-eqz v5, :cond_1

    invoke-virtual/range {p2 .. p2}, Lcom/transsion/mediationads/beans/TabStrategy;->getTabType()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/transsion/mediationads/manager/b;->b(I)I

    move-result v4

    invoke-virtual/range {p2 .. p2}, Lcom/transsion/mediationads/beans/TabStrategy;->getMaxAdvertisingCount()I

    move-result v5

    if-lt v4, v5, :cond_0

    invoke-virtual/range {p2 .. p2}, Lcom/transsion/mediationads/beans/TabStrategy;->getTabType()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isNeedApplyAds,Daily ad limit reached for tabType "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", not requesting more ads"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0

    :cond_0
    sub-int/2addr v5, v4

    iput v5, v11, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    :cond_1
    new-instance v13, Lkotlin/jvm/internal/Ref$IntRef;

    invoke-direct {v13}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    iput v3, v13, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    new-instance v14, Lkotlin/jvm/internal/Ref$IntRef;

    invoke-direct {v14}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    new-instance v15, Ljava/util/ArrayList;

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v3

    div-int/lit8 v3, v3, 0xa

    add-int/2addr v2, v3

    invoke-direct {v15, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    const/16 v17, 0x0

    move/from16 v18, v17

    move/from16 v19, v18

    :goto_0
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Lcom/transsion/dbdata/beans/media/MediaItem;

    if-nez v18, :cond_2

    move-object v1, v11

    move-object v2, v14

    move-object v3, v13

    move v4, v0

    move v5, v9

    move-object v6, v15

    move-object v7, v10

    move-object/from16 p0, v12

    move-object v12, v8

    move/from16 v8, v19

    invoke-static/range {v1 .. v8}, Leda$a;->b(Lkotlin/jvm/internal/Ref$IntRef;Lkotlin/jvm/internal/Ref$IntRef;Lkotlin/jvm/internal/Ref$IntRef;IILjava/util/ArrayList;Ljava/lang/String;I)V

    goto :goto_1

    :cond_2
    move-object/from16 p0, v12

    move-object v12, v8

    :goto_1
    iget-boolean v1, v12, Lcom/transsion/dbdata/beans/media/MediaItem;->isTimeItem:Z

    if-eqz v1, :cond_4

    if-lez v18, :cond_3

    add-int/lit8 v19, v19, 0x1

    :cond_3
    move-object v1, v11

    move-object v2, v14

    move-object v3, v13

    move v4, v0

    move v5, v9

    move-object v6, v15

    move-object v7, v10

    move/from16 v8, v19

    invoke-static/range {v1 .. v8}, Leda$a;->b(Lkotlin/jvm/internal/Ref$IntRef;Lkotlin/jvm/internal/Ref$IntRef;Lkotlin/jvm/internal/Ref$IntRef;IILjava/util/ArrayList;Ljava/lang/String;I)V

    move/from16 v2, p3

    :goto_2
    move/from16 v18, v17

    goto :goto_3

    :cond_4
    add-int/lit8 v1, v18, 0x1

    move/from16 v2, p3

    if-lt v1, v2, :cond_5

    add-int/lit8 v19, v19, 0x1

    goto :goto_2

    :cond_5
    move/from16 v18, v1

    :goto_3
    invoke-virtual {v15, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v12, p0

    goto :goto_0

    :cond_6
    move-object/from16 p0, v12

    if-lez v18, :cond_7

    add-int/lit8 v19, v19, 0x1

    move-object v1, v11

    move-object v2, v14

    move-object v3, v13

    move v4, v0

    move v5, v9

    move-object v6, v15

    move-object v7, v10

    move/from16 v8, v19

    invoke-static/range {v1 .. v8}, Leda$a;->b(Lkotlin/jvm/internal/Ref$IntRef;Lkotlin/jvm/internal/Ref$IntRef;Lkotlin/jvm/internal/Ref$IntRef;IILjava/util/ArrayList;Ljava/lang/String;I)V

    :cond_7
    move/from16 v0, v19

    iget v1, v14, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "applyAdsInGridMode completed: total rows="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", inserted ads="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", total items="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v1, p0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v15
.end method

.method public final c(Ljava/util/List;Ljava/util/List;Lcom/transsion/mediationads/beans/TabStrategy;)Ljava/util/ArrayList;
    .locals 9

    const-string p0, "dataList"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "adList"

    invoke-static {p2, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "tabStrategy"

    invoke-static {p3, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p3}, Lcom/transsion/mediationads/beans/TabStrategy;->getStartPosition()I

    move-result p0

    invoke-virtual {p3}, Lcom/transsion/mediationads/beans/TabStrategy;->getVideoIntervals()I

    move-result p3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const-string v4, "MediationApi_TabStrategyUtils"

    if-eqz v3, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/transsion/dbdata/beans/media/MediaItem;

    iget-boolean v5, v3, Lcom/transsion/dbdata/beans/media/MediaItem;->isTimeItem:Z

    if-nez v5, :cond_2

    iget-boolean v5, v3, Lcom/transsion/dbdata/beans/media/MediaItem;->mIsMediaTionAd:Z

    if-nez v5, :cond_2

    add-int/lit8 v2, v2, 0x1

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v5

    if-ge v1, v5, :cond_2

    const/4 v5, 0x1

    if-ne v2, p0, :cond_0

    goto :goto_1

    :cond_0
    if-le v2, p0, :cond_2

    if-ne p3, v5, :cond_1

    goto :goto_1

    :cond_1
    sub-int v6, v2, p0

    rem-int/2addr v6, p3

    if-nez v6, :cond_2

    :goto_1
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v1, 0x1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v7

    sub-int/2addr v7, v5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "applyAdsInListMode: Inserted ad before video "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " at position "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", adIndex="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    move v1, v6

    :cond_2
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "applyAdsInListMode completed: inserted "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " ads, total items: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public final d(ILcom/transsion/mediationads/beans/TabStrategy;)I
    .locals 4

    const-string p0, "strategy"

    invoke-static {p2, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/transsion/mediationads/beans/TabStrategy;->getStartPosition()I

    move-result p0

    invoke-virtual {p2}, Lcom/transsion/mediationads/beans/TabStrategy;->getVideoIntervals()I

    move-result v0

    const/4 v1, 0x0

    if-ge p1, p0, :cond_0

    return v1

    :cond_0
    sget-object v2, Lcom/transsion/mediationads/manager/b;->a:Lcom/transsion/mediationads/manager/b$a;

    invoke-virtual {v2}, Lcom/transsion/mediationads/manager/b$a;->a()Lcom/transsion/mediationads/manager/b;

    move-result-object v2

    invoke-virtual {p2}, Lcom/transsion/mediationads/beans/TabStrategy;->getTabType()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/transsion/mediationads/manager/b;->h(I)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p2}, Lcom/transsion/mediationads/beans/TabStrategy;->getTabType()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/transsion/mediationads/manager/b;->b(I)I

    move-result v2

    invoke-virtual {p2}, Lcom/transsion/mediationads/beans/TabStrategy;->getMaxAdvertisingCount()I

    move-result p2

    if-lt v2, p2, :cond_1

    return v1

    :cond_1
    sub-int/2addr p2, v2

    goto :goto_0

    :cond_2
    const p2, 0x7fffffff

    :goto_0
    if-gtz p2, :cond_3

    return v1

    :cond_3
    add-int/lit8 v2, p0, -0x1

    :goto_1
    if-ge v2, p1, :cond_4

    if-ge v1, p2, :cond_4

    add-int/lit8 v1, v1, 0x1

    add-int/2addr v2, v0

    goto :goto_1

    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "calculateNeededAdCount List mode ad calculation: effectiveVideos="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", startPosition="

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", videoIntervals="

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", adCount="

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", dailyAdRemaining="

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "MediationApi_TabStrategyUtils"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p2, v1}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0
.end method

.method public final e(IILjava/util/List;)I
    .locals 2

    const-string v0, "dataList"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/transsion/dbdata/utils/SortUtil;->o()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p3, p2}, Leda$a;->f(Ljava/util/List;I)I

    move-result p0

    goto :goto_0

    :cond_0
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p0

    sub-int/2addr p0, p1

    int-to-double v0, p0

    int-to-double p2, p2

    div-double/2addr v0, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p2

    double-to-int p0, p2

    :goto_0
    invoke-static {}, Lcom/transsion/dbdata/utils/SortUtil;->o()Z

    move-result p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "countVideoRomInGridMode timeItemNum="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", videoRows="

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", isSortByDate="

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "MediationApi_TabStrategyUtils"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method public final f(Ljava/util/List;I)I
    .locals 3

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 p1, 0x0

    move v0, p1

    move v1, v0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/dbdata/beans/media/MediaItem;

    iget-boolean v2, v2, Lcom/transsion/dbdata/beans/media/MediaItem;->isTimeItem:Z

    if-eqz v2, :cond_2

    if-lez v0, :cond_1

    goto :goto_2

    :cond_1
    :goto_1
    move v0, p1

    goto :goto_0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    if-lt v0, p2, :cond_0

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    if-lez v0, :cond_4

    add-int/lit8 v1, v1, 0x1

    :cond_4
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "countVideoRomSortByDate: videoTotalRows="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", spanCount="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "MediationApi_TabStrategyUtils"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public final g(Ljava/util/ArrayList;Lcom/transsion/mediationads/beans/TabStrategy;II)Z
    .locals 1

    const-string v0, "dataList"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Leda$a;->i(Lcom/transsion/mediationads/beans/TabStrategy;)Z

    move-result p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    if-eqz p2, :cond_1

    sget-object p0, Leda;->a:Leda$a;

    invoke-virtual {p0, p3, p4, p1}, Leda$a;->e(IILjava/util/List;)I

    move-result p0

    invoke-virtual {p2}, Lcom/transsion/mediationads/beans/TabStrategy;->getProtectVideoCount()I

    move-result p1

    if-ge p0, p1, :cond_1

    invoke-virtual {p2}, Lcom/transsion/mediationads/beans/TabStrategy;->getProtectVideoCount()I

    move-result p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "isGridModeNeedApplyAds,videosRom ("

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ") is less than protection count ("

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "), not request ads"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "MediationApi_TabStrategyUtils"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public final h(Ljava/util/ArrayList;Lcom/transsion/mediationads/beans/TabStrategy;I)Z
    .locals 2

    const-string v0, "dataList"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Leda$a;->i(Lcom/transsion/mediationads/beans/TabStrategy;)Z

    move-result p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p0

    sub-int/2addr p0, p3

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isNeedApplyAds,Total items: "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", effective videos: "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p3, "MediationApi_TabStrategyUtils"

    invoke-static {p3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p2}, Lcom/transsion/mediationads/beans/TabStrategy;->getProtectVideoCount()I

    move-result p1

    if-ge p0, p1, :cond_1

    invoke-virtual {p2}, Lcom/transsion/mediationads/beans/TabStrategy;->getProtectVideoCount()I

    move-result p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isNeedApplyAds,Effective videos ("

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ") is less than protection count ("

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "), not request ads"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p3, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public final i(Lcom/transsion/mediationads/beans/TabStrategy;)Z
    .locals 3

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {p0, v0}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    const/4 p0, 0x0

    const-string v0, "MediationApi_TabStrategyUtils"

    if-nez p1, :cond_0

    const-string p1, "isNeedApplyAds,Tab strategy is null, not request ads"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return p0

    :cond_0
    sget-object v1, Lcom/transsion/mediationads/manager/b;->a:Lcom/transsion/mediationads/manager/b$a;

    invoke-virtual {v1}, Lcom/transsion/mediationads/manager/b$a;->a()Lcom/transsion/mediationads/manager/b;

    move-result-object v1

    invoke-virtual {p1}, Lcom/transsion/mediationads/beans/TabStrategy;->getProtectDays()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/transsion/mediationads/manager/b;->g(I)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string p1, "isNeedApplyAds,Tab strategy is in protectionPeriod, not request ads"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return p0

    :cond_1
    invoke-virtual {p1}, Lcom/transsion/mediationads/beans/TabStrategy;->getTabType()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/transsion/mediationads/manager/b;->h(I)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p1}, Lcom/transsion/mediationads/beans/TabStrategy;->getTabType()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/transsion/mediationads/manager/b;->b(I)I

    move-result v1

    invoke-virtual {p1}, Lcom/transsion/mediationads/beans/TabStrategy;->getMaxAdvertisingCount()I

    move-result v2

    if-lt v1, v2, :cond_2

    invoke-virtual {p1}, Lcom/transsion/mediationads/beans/TabStrategy;->getTabType()I

    move-result p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isNeedApplyAds,Daily ad limit reached for tabType "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", not requesting more ads"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return p0

    :cond_2
    const/4 p0, 0x1

    return p0

    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "loadAds method must not be called on the main thread"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final j(III)Z
    .locals 2

    add-int/lit8 p0, p2, -0x1

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    if-le p1, p0, :cond_1

    sub-int p0, p1, p0

    rem-int/2addr p0, p3

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "shouldInsertAdToGridMode videoTotalRows:"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ",startPosition:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ",videoIntervals:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ",shouldInsertAd:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "MediationApi_TabStrategyUtils"

    invoke-static {p1, p0}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    return v0
.end method
