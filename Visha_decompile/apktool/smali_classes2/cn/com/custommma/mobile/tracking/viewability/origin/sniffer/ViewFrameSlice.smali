.class public Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/ViewFrameSlice;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private adSize:Ljava/lang/String;

.field private alpha:F

.field private captureTime:J

.field private coverAreaList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lap8;",
            ">;"
        }
    .end annotation
.end field

.field coverFrameSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private coverRate:D

.field private isForground:I

.field private isWindowShowed:Z

.field private screenOn:I

.field private shown:I

.field private visibleAbility:I

.field private visiblePoint:Ljava/lang/String;

.field private visibleSize:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/view/View;Landroid/content/Context;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string/jumbo v2, "x"

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v3, 0x0

    iput-boolean v3, v0, Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/ViewFrameSlice;->isWindowShowed:Z

    const/4 v3, 0x0

    iput-object v3, v0, Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/ViewFrameSlice;->coverAreaList:Ljava/util/List;

    iput-object v3, v0, Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/ViewFrameSlice;->coverFrameSet:Ljava/util/Set;

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, v0, Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/ViewFrameSlice;->captureTime:J

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v0, Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/ViewFrameSlice;->coverAreaList:Ljava/util/List;

    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    iput-object v4, v0, Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/ViewFrameSlice;->coverFrameSet:Ljava/util/Set;

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getWidth()I

    move-result v4

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getHeight()I

    move-result v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/ViewFrameSlice;->adSize:Ljava/lang/String;

    invoke-static/range {p1 .. p1}, Lmcc;->b(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v4

    new-instance v5, Landroid/graphics/Point;

    invoke-direct {v5}, Landroid/graphics/Point;-><init>()V

    iget v6, v4, Landroid/graphics/Rect;->left:I

    iput v6, v5, Landroid/graphics/Point;->x:I

    iget v6, v4, Landroid/graphics/Rect;->top:I

    iput v6, v5, Landroid/graphics/Point;->y:I

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget v7, v5, Landroid/graphics/Point;->x:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v5, Landroid/graphics/Point;->y:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/ViewFrameSlice;->visiblePoint:Ljava/lang/String;

    invoke-direct/range {p0 .. p1}, Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/ViewFrameSlice;->checkFrameBounds(Landroid/view/View;)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-direct {v0, v1, v4}, Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/ViewFrameSlice;->traverseParent(Landroid/view/View;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v7

    if-eqz v7, :cond_0

    move-object v4, v7

    goto :goto_0

    :catch_0
    move-exception v0

    goto/16 :goto_3

    :cond_0
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getAlpha()F

    move-result v7

    iput v7, v0, Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/ViewFrameSlice;->alpha:F

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->isShown()Z

    move-result v7

    iput v7, v0, Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/ViewFrameSlice;->shown:I

    invoke-static/range {p2 .. p2}, Lmcc;->a(Landroid/content/Context;)Landroid/graphics/Rect;

    move-result-object v7

    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v8, v4, v7}, Landroid/graphics/Rect;->setIntersect(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v9

    iget v10, v8, Landroid/graphics/Rect;->right:I

    iget v11, v8, Landroid/graphics/Rect;->left:I

    sub-int/2addr v10, v11

    invoke-static {v10}, Ljava/lang/Math;->abs(I)I

    move-result v10

    iget v11, v8, Landroid/graphics/Rect;->bottom:I

    iget v12, v8, Landroid/graphics/Rect;->top:I

    sub-int/2addr v11, v12

    invoke-static {v11}, Ljava/lang/Math;->abs(I)I

    move-result v11

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/ViewFrameSlice;->visibleSize:Ljava/lang/String;

    invoke-direct/range {p0 .. p1}, Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/ViewFrameSlice;->isShowing(Landroid/view/View;)Z

    move-result v2

    iput-boolean v2, v0, Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/ViewFrameSlice;->isWindowShowed:Z

    if-nez v2, :cond_1

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    iput-wide v10, v0, Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/ViewFrameSlice;->coverRate:D

    goto :goto_2

    :cond_1
    invoke-direct/range {p0 .. p1}, Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/ViewFrameSlice;->traverseParent(Landroid/view/View;)V

    iget-object v2, v0, Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/ViewFrameSlice;->coverAreaList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_2

    new-instance v2, Lwk;

    invoke-direct {v2}, Lwk;-><init>()V

    iget-object v10, v0, Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/ViewFrameSlice;->coverAreaList:Ljava/util/List;

    invoke-virtual {v2, v10}, Lwk;->c(Ljava/util/List;)D

    move-result-wide v10

    goto :goto_1

    :cond_2
    const-wide/16 v10, 0x0

    :goto_1
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v1, v2}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getWidth()I

    move-result v12

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getHeight()I

    move-result v13

    mul-int/2addr v12, v13

    int-to-double v12, v12

    iget v14, v2, Landroid/graphics/Rect;->right:I

    iget v15, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v14, v15

    iget v15, v2, Landroid/graphics/Rect;->bottom:I

    iget v2, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v15, v2

    mul-int/2addr v14, v15

    int-to-double v14, v14

    sub-double v14, v12, v14

    add-double/2addr v10, v14

    div-double/2addr v10, v12

    const-wide/high16 v12, 0x4059000000000000L    # 100.0

    mul-double/2addr v10, v12

    invoke-static {v10, v11}, Ljava/lang/Math;->round(D)J

    move-result-wide v10

    long-to-double v10, v10

    div-double/2addr v10, v12

    iput-wide v10, v0, Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/ViewFrameSlice;->coverRate:D

    :goto_2
    invoke-static/range {p1 .. p1}, Lmcc;->c(Landroid/view/View;)Z

    move-result v2

    iput v2, v0, Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/ViewFrameSlice;->screenOn:I

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->hasWindowFocus()Z

    move-result v2

    iput v2, v0, Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/ViewFrameSlice;->isForground:I

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v1, v2}, Landroid/view/View;->getLocalVisibleRect(Landroid/graphics/Rect;)Z

    iput-object v3, v0, Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/ViewFrameSlice;->coverAreaList:Ljava/util/List;

    iput-object v3, v0, Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/ViewFrameSlice;->coverFrameSet:Ljava/util/Set;

    const-string v1, "=================ViewFrameSlice Constructor begin ======================"

    invoke-static {v1}, Loe5;->d(Ljava/lang/Object;)V

    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "density:"

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, v1, Landroid/util/DisplayMetrics;->density:F

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v10, "  api:"

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Loe5;->d(Ljava/lang/Object;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "screenRect:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Loe5;->d(Ljava/lang/Object;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "adView local visible Rect:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Loe5;->d(Ljava/lang/Object;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[2t] captureTime:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, v0, Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/ViewFrameSlice;->captureTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Loe5;->d(Ljava/lang/Object;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[2k] adView Size:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/ViewFrameSlice;->adSize:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Loe5;->d(Ljava/lang/Object;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[2d] adView visible left top Point:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Loe5;->d(Ljava/lang/Object;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[2l] adView alpha:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/ViewFrameSlice;->alpha:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Loe5;->d(Ljava/lang/Object;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[2m] adView isShown:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/ViewFrameSlice;->shown:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Loe5;->d(Ljava/lang/Object;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[2o] adView visible Size:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/ViewFrameSlice;->visibleSize:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Loe5;->d(Ljava/lang/Object;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[2n] adView cover rate:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, v0, Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/ViewFrameSlice;->coverRate:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Loe5;->d(Ljava/lang/Object;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[2r] current Screen is Light:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/ViewFrameSlice;->screenOn:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Loe5;->d(Ljava/lang/Object;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[2s] adView is forground:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/ViewFrameSlice;->isForground:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Loe5;->d(Ljava/lang/Object;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[2f] current adView visible ability:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v0, Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/ViewFrameSlice;->visibleAbility:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Loe5;->d(Ljava/lang/Object;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "checkFrameBounds:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Loe5;->d(Ljava/lang/Object;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "adView isIntersets :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "    overlapRect:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Loe5;->d(Ljava/lang/Object;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "adView window origin Rect:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Loe5;->d(Ljava/lang/Object;)V

    const-string v0, "=================ViewFrameSlice Constructor end ======================"

    invoke-static {v0}, Loe5;->d(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :goto_3
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_4
    return-void
.end method

.method private checkFrameBounds(Landroid/view/View;)Z
    .locals 5

    const/4 p0, 0x1

    :try_start_0
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    invoke-virtual {p1, v0, v1}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;Landroid/graphics/Point;)Z

    move-result v1

    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    iget v3, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v3

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    const/4 v4, 0x0

    if-lt v2, v3, :cond_0

    move v2, p0

    goto :goto_0

    :cond_0
    move v2, v4

    :goto_0
    iget v3, v0, Landroid/graphics/Rect;->right:I

    iget v0, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v0

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-lt v3, p1, :cond_1

    move p1, p0

    goto :goto_1

    :cond_1
    move p1, v4

    :goto_1
    if-eqz v1, :cond_2

    if-eqz v2, :cond_2

    if-eqz p1, :cond_2

    goto :goto_2

    :cond_2
    return v4

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_2
    return p0
.end method

.method private checkIntersects(Landroid/view/View;Landroid/view/View;)V
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p1, v0}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    invoke-virtual {p2, p1, v1}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;Landroid/graphics/Point;)Z

    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    instance-of v2, v2, Landroid/view/ViewGroup;

    if-eqz v2, :cond_0

    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    instance-of v3, v3, Landroid/view/ViewGroup;

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getClipChildren()Z

    move-result v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    :goto_0
    if-nez v2, :cond_1

    iget v2, v1, Landroid/graphics/Point;->x:I

    iput v2, p1, Landroid/graphics/Rect;->left:I

    iget v1, v1, Landroid/graphics/Point;->y:I

    iput v1, p1, Landroid/graphics/Rect;->top:I

    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v1, v1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_2

    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    invoke-virtual {v1}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    move v1, v2

    :goto_1
    if-nez v2, :cond_3

    if-eqz v1, :cond_4

    :cond_3
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p2, v3}, Landroid/view/View;->getLocalVisibleRect(Landroid/graphics/Rect;)Z

    iget p2, p1, Landroid/graphics/Rect;->left:I

    iget v4, v3, Landroid/graphics/Rect;->left:I

    add-int/2addr v4, v2

    add-int/2addr p2, v4

    iput p2, p1, Landroid/graphics/Rect;->left:I

    iget p2, p1, Landroid/graphics/Rect;->top:I

    iget v2, v3, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v1

    add-int/2addr p2, v2

    iput p2, p1, Landroid/graphics/Rect;->top:I

    :cond_4
    invoke-static {v0, p1}, Landroid/graphics/Rect;->intersects(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result p2

    if-eqz p2, :cond_5

    invoke-direct {p0, v0, p1}, Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/ViewFrameSlice;->valOverlapRect(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    :cond_5
    return-void
.end method

.method private checkVisibled(Landroid/view/View;)Z
    .locals 3

    const/4 p0, 0x1

    :try_start_0
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    move-object v0, p1

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-ge v0, p0, :cond_2

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_1
    :goto_0
    return v1

    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getAlpha()F

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const v0, 0x3dcccccd    # 0.1f

    cmpg-float p1, p1, v0

    if-gtz p1, :cond_3

    return v1

    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_3
    return p0
.end method

.method private indexOfViewInParent(Landroid/view/View;Landroid/view/ViewGroup;)I
    .locals 2

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p0, :cond_1

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-ne v1, p1, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return v0
.end method

.method private isShowing(Landroid/view/View;)Z
    .locals 1

    new-instance p0, Landroid/graphics/Rect;

    invoke-direct {p0}, Landroid/graphics/Rect;-><init>()V

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    invoke-virtual {p1, p0, v0}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;Landroid/graphics/Point;)Z

    move-result p0

    return p0
.end method

.method private isSubViewNormal(Landroid/view/View;)Z
    .locals 1

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p1, v0}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/ViewFrameSlice;->checkVisibled(Landroid/view/View;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private traverseParent(Landroid/view/View;Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 12
    :cond_0
    :goto_0
    :try_start_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    instance-of p0, p0, Landroid/view/ViewGroup;

    if-eqz p0, :cond_3

    .line 13
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    move-object p1, p0

    check-cast p1, Landroid/view/ViewGroup;

    .line 14
    new-instance p0, Landroid/graphics/Rect;

    invoke-direct {p0}, Landroid/graphics/Rect;-><init>()V

    .line 15
    invoke-virtual {p1, p0}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 16
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    .line 17
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_3

    :cond_1
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_2

    .line 18
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getClipChildren()Z

    move-result v0

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    :goto_2
    if-eqz v0, :cond_0

    .line 19
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 20
    invoke-virtual {v0, p2, p0}, Landroid/graphics/Rect;->setIntersect(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object p2, v0

    goto :goto_0

    .line 21
    :goto_3
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_3
    return-object p2
.end method

.method private traverseParent(Landroid/view/View;)V
    .locals 5

    move-object v0, p1

    .line 1
    :goto_0
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v1, v1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_3

    .line 2
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 3
    invoke-direct {p0, v0, v1}, Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/ViewFrameSlice;->indexOfViewInParent(Landroid/view/View;Landroid/view/ViewGroup;)I

    move-result v0

    .line 4
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    if-ge v0, v2, :cond_2

    .line 5
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 6
    invoke-direct {p0, v3}, Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/ViewFrameSlice;->isSubViewNormal(Landroid/view/View;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 7
    iput-boolean v4, p0, Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/ViewFrameSlice;->isWindowShowed:Z

    goto :goto_1

    .line 8
    :cond_1
    invoke-direct {p0, p1, v3}, Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/ViewFrameSlice;->checkIntersects(Landroid/view/View;Landroid/view/View;)V

    .line 9
    instance-of v4, v3, Landroid/view/ViewGroup;

    if-eqz v4, :cond_0

    .line 10
    check-cast v3, Landroid/view/ViewGroup;

    .line 11
    iget-object v4, p0, Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/ViewFrameSlice;->coverFrameSet:Ljava/util/Set;

    invoke-virtual {p0, p1, v3, v4}, Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/ViewFrameSlice;->traverseSubviews(Landroid/view/View;Landroid/view/ViewGroup;Ljava/util/Set;)V

    goto :goto_1

    :cond_2
    move-object v0, v1

    goto :goto_0

    :cond_3
    return-void
.end method

.method private traverseRootView(Landroid/view/View;Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    :try_start_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_2

    :cond_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    :goto_1
    if-ltz p1, :cond_2

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getClipChildren()Z

    move-result v0

    if-eqz v0, :cond_1

    add-int/lit8 v0, p1, -0x1

    if-ltz v0, :cond_1

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v0, p2, v1}, Landroid/graphics/Rect;->setIntersect(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    iget v1, v0, Landroid/graphics/Rect;->right:I

    iget v2, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    iget v2, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object p2, v0

    :cond_1
    add-int/lit8 p1, p1, -0x1

    goto :goto_1

    :goto_2
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_2
    return-object p2
.end method

.method private valOverlapRect(Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 5

    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v1, p2, Landroid/graphics/Rect;->left:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget v1, p1, Landroid/graphics/Rect;->top:I

    iget v2, p2, Landroid/graphics/Rect;->top:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iget v2, p1, Landroid/graphics/Rect;->right:I

    iget v3, p2, Landroid/graphics/Rect;->right:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    iget v3, p1, Landroid/graphics/Rect;->bottom:I

    iget v4, p2, Landroid/graphics/Rect;->bottom:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    sub-int/2addr v2, v0

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    sub-int/2addr v3, v1

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "X"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/ViewFrameSlice;->coverFrameSet:Ljava/util/Set;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->setIntersect(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    new-instance p1, Lap8;

    invoke-direct {p1}, Lap8;-><init>()V

    iget p2, v0, Landroid/graphics/Rect;->left:I

    int-to-double v1, p2

    iput-wide v1, p1, Lap8;->a:D

    iget p2, v0, Landroid/graphics/Rect;->top:I

    int-to-double v1, p2

    iput-wide v1, p1, Lap8;->b:D

    iget p2, v0, Landroid/graphics/Rect;->right:I

    int-to-double v1, p2

    iput-wide v1, p1, Lap8;->c:D

    iget p2, v0, Landroid/graphics/Rect;->bottom:I

    int-to-double v0, p2

    iput-wide v0, p1, Lap8;->d:D

    iget-object p0, p0, Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/ViewFrameSlice;->coverAreaList:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public getAdSize()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/ViewFrameSlice;->adSize:Ljava/lang/String;

    return-object p0
.end method

.method public getAlpha()F
    .locals 0

    iget p0, p0, Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/ViewFrameSlice;->alpha:F

    return p0
.end method

.method public getCaptureTime()J
    .locals 2

    iget-wide v0, p0, Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/ViewFrameSlice;->captureTime:J

    return-wide v0
.end method

.method public getCoverRate()D
    .locals 2

    iget-wide v0, p0, Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/ViewFrameSlice;->coverRate:D

    return-wide v0
.end method

.method public getIsForGround()I
    .locals 0

    iget p0, p0, Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/ViewFrameSlice;->isForground:I

    return p0
.end method

.method public getScreenOn()I
    .locals 0

    iget p0, p0, Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/ViewFrameSlice;->screenOn:I

    return p0
.end method

.method public getShown()I
    .locals 0

    iget p0, p0, Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/ViewFrameSlice;->shown:I

    return p0
.end method

.method public getVisiblePoint()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/ViewFrameSlice;->visiblePoint:Ljava/lang/String;

    return-object p0
.end method

.method public getVisibleSize()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/ViewFrameSlice;->visibleSize:Ljava/lang/String;

    return-object p0
.end method

.method public isSameAs(Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/ViewFrameSlice;)Z
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/ViewFrameSlice;->adSize:Ljava/lang/String;

    iget-object v1, p1, Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/ViewFrameSlice;->adSize:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/ViewFrameSlice;->visiblePoint:Ljava/lang/String;

    iget-object v1, p1, Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/ViewFrameSlice;->visiblePoint:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/ViewFrameSlice;->visibleSize:Ljava/lang/String;

    iget-object v1, p1, Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/ViewFrameSlice;->visibleSize:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/ViewFrameSlice;->alpha:F

    iget v1, p1, Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/ViewFrameSlice;->alpha:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-double v0, v0

    const-wide v2, 0x3f50624dd2f1a9fcL    # 0.001

    cmpg-double v0, v0, v2

    if-gez v0, :cond_0

    iget v0, p0, Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/ViewFrameSlice;->shown:I

    iget v1, p1, Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/ViewFrameSlice;->shown:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/ViewFrameSlice;->screenOn:I

    iget v1, p1, Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/ViewFrameSlice;->screenOn:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/ViewFrameSlice;->isForground:I

    iget v1, p1, Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/ViewFrameSlice;->isForground:I

    if-ne v0, v1, :cond_0

    iget-wide v0, p0, Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/ViewFrameSlice;->coverRate:D

    iget-wide p0, p1, Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/ViewFrameSlice;->coverRate:D
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    cmpl-double p0, v0, p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[ 2t="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/ViewFrameSlice;->captureTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ",2k="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/ViewFrameSlice;->adSize:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",2d="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/ViewFrameSlice;->visiblePoint:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",2o="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/ViewFrameSlice;->visibleSize:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",2n="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/ViewFrameSlice;->coverRate:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ",2l="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/ViewFrameSlice;->alpha:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ",2m="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/ViewFrameSlice;->shown:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",2r="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/ViewFrameSlice;->screenOn:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",2s="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/ViewFrameSlice;->isForground:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public traverseSubviews(Landroid/view/View;Landroid/view/ViewGroup;Ljava/util/Set;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Landroid/view/ViewGroup;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    invoke-virtual {p2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-direct {p0, v2}, Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/ViewFrameSlice;->isSubViewNormal(Landroid/view/View;)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_1

    :cond_0
    invoke-direct {p0, p1, v2}, Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/ViewFrameSlice;->checkIntersects(Landroid/view/View;Landroid/view/View;)V

    instance-of v3, v2, Landroid/view/ViewGroup;

    if-eqz v3, :cond_1

    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {p0, p1, v2, p3}, Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/ViewFrameSlice;->traverseSubviews(Landroid/view/View;Landroid/view/ViewGroup;Ljava/util/Set;)V

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public validateAdVisible(F)Z
    .locals 6

    iget-wide v0, p0, Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/ViewFrameSlice;->coverRate:D

    float-to-double v2, p1

    cmpg-double p1, v0, v2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-gtz p1, :cond_0

    iget p1, p0, Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/ViewFrameSlice;->shown:I

    if-ne p1, v1, :cond_0

    iget p1, p0, Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/ViewFrameSlice;->alpha:F

    float-to-double v2, p1

    const-wide v4, 0x3f50624dd2f1a9fcL    # 0.001

    cmpl-double p1, v2, v4

    if-lez p1, :cond_0

    iget p1, p0, Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/ViewFrameSlice;->screenOn:I

    if-ne p1, v1, :cond_0

    iget p1, p0, Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/ViewFrameSlice;->isForground:I

    if-ne p1, v1, :cond_0

    iput v1, p0, Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/ViewFrameSlice;->visibleAbility:I

    goto :goto_0

    :cond_0
    iput v0, p0, Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/ViewFrameSlice;->visibleAbility:I

    :goto_0
    iget p0, p0, Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/ViewFrameSlice;->visibleAbility:I

    if-ne p0, v1, :cond_1

    move v0, v1

    :cond_1
    return v0
.end method
