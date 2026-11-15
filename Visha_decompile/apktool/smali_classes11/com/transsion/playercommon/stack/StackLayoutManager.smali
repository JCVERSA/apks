.class public Lcom/transsion/playercommon/stack/StackLayoutManager;
.super Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
.source "SourceFile"


# instance fields
.field public e:Landroid/content/Context;

.field public f:I

.field public g:I


# virtual methods
.method public generateDefaultLayoutParams()Landroidx/recyclerview/widget/RecyclerView$LayoutParams;
    .locals 1

    new-instance p0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    const/4 v0, -0x2

    invoke-direct {p0, v0, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(II)V

    return-object p0
.end method

.method public onLayoutChildren(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 23

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    invoke-virtual/range {p0 .. p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->detachAndScrapAttachedViews(Landroidx/recyclerview/widget/RecyclerView$Recycler;)V

    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getItemCount()I

    move-result v8

    const/high16 v9, -0x3f600000    # -5.0f

    const/high16 v10, -0x40800000    # -1.0f

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x2

    const/high16 v14, 0x40800000    # 4.0f

    const/4 v15, 0x3

    if-le v8, v15, :cond_3

    :goto_0
    if-ltz v15, :cond_9

    invoke-virtual {v7, v15}, Landroidx/recyclerview/widget/RecyclerView$Recycler;->getViewForPosition(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->addView(Landroid/view/View;)V

    invoke-virtual {v6, v8, v11, v11}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->measureChildWithMargins(Landroid/view/View;II)V

    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getWidth()I

    move-result v0

    invoke-virtual {v6, v8}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getDecoratedMeasuredWidth(Landroid/view/View;)I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getHeight()I

    move-result v1

    invoke-virtual {v6, v8}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getDecoratedMeasuredHeight(Landroid/view/View;)I

    move-result v2

    sub-int/2addr v1, v2

    div-int/lit8 v2, v0, 0x2

    div-int/lit8 v3, v1, 0x2

    invoke-virtual {v6, v8}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getDecoratedMeasuredWidth(Landroid/view/View;)I

    move-result v0

    add-int v4, v2, v0

    invoke-virtual {v6, v8}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getDecoratedMeasuredHeight(Landroid/view/View;)I

    move-result v0

    add-int v5, v3, v0

    move-object/from16 v0, p0

    move-object v1, v8

    invoke-virtual/range {v0 .. v5}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->layoutDecoratedWithMargins(Landroid/view/View;IIII)V

    if-ne v15, v13, :cond_0

    invoke-virtual {v8, v10}, Landroid/view/View;->setRotation(F)V

    goto :goto_1

    :cond_0
    const/4 v0, 0x1

    if-ne v15, v0, :cond_1

    invoke-virtual {v8, v12}, Landroid/view/View;->setRotation(F)V

    invoke-static {v14}, Lc39;->a(F)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v8, v0}, Landroid/view/View;->setTranslationX(F)V

    invoke-static {v14}, Lc39;->a(F)I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    invoke-virtual {v8, v0}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_1

    :cond_1
    if-nez v15, :cond_2

    invoke-virtual {v8, v9}, Landroid/view/View;->setRotation(F)V

    invoke-static {v14}, Lc39;->a(F)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v8, v0}, Landroid/view/View;->setTranslationX(F)V

    invoke-static {v14}, Lc39;->a(F)I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    invoke-virtual {v8, v0}, Landroid/view/View;->setTranslationY(F)V

    :cond_2
    :goto_1
    add-int/lit8 v15, v15, -0x1

    goto :goto_0

    :cond_3
    add-int/lit8 v5, v8, -0x1

    move v4, v5

    :goto_2
    if-ltz v4, :cond_9

    invoke-virtual {v7, v4}, Landroidx/recyclerview/widget/RecyclerView$Recycler;->getViewForPosition(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v6, v3}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->addView(Landroid/view/View;)V

    invoke-virtual {v6, v3, v11, v11}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->measureChildWithMargins(Landroid/view/View;II)V

    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getWidth()I

    move-result v0

    invoke-virtual {v6, v3}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getDecoratedMeasuredWidth(Landroid/view/View;)I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getHeight()I

    move-result v1

    invoke-virtual {v6, v3}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getDecoratedMeasuredHeight(Landroid/view/View;)I

    move-result v2

    sub-int/2addr v1, v2

    div-int/lit8 v2, v0, 0x2

    div-int/lit8 v16, v1, 0x2

    invoke-virtual {v6, v3}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getDecoratedMeasuredWidth(Landroid/view/View;)I

    move-result v0

    add-int v17, v2, v0

    invoke-virtual {v6, v3}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getDecoratedMeasuredHeight(Landroid/view/View;)I

    move-result v0

    add-int v18, v16, v0

    move-object/from16 v0, p0

    move-object v1, v3

    move-object v11, v3

    move/from16 v3, v16

    move v13, v4

    move/from16 v4, v17

    move v9, v5

    move/from16 v5, v18

    invoke-virtual/range {v0 .. v5}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->layoutDecoratedWithMargins(Landroid/view/View;IIII)V

    const/high16 v0, 0x41200000    # 10.0f

    if-ne v8, v15, :cond_6

    if-ne v13, v9, :cond_4

    invoke-virtual {v11, v10}, Landroid/view/View;->setRotation(F)V

    iget v1, v6, Lcom/transsion/playercommon/stack/StackLayoutManager;->f:I

    iget-object v2, v6, Lcom/transsion/playercommon/stack/StackLayoutManager;->e:Landroid/content/Context;

    invoke-static {v2, v0}, Lcom/transsion/utils/a;->d(Landroid/content/Context;F)I

    move-result v18

    iget v2, v6, Lcom/transsion/playercommon/stack/StackLayoutManager;->g:I

    iget-object v3, v6, Lcom/transsion/playercommon/stack/StackLayoutManager;->e:Landroid/content/Context;

    invoke-static {v3, v0}, Lcom/transsion/utils/a;->d(Landroid/content/Context;F)I

    move-result v20

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v16, v11

    move/from16 v17, v1

    move/from16 v19, v2

    invoke-static/range {v16 .. v22}, Lro1;->a(Landroid/view/View;IIIIII)V

    :goto_3
    const/high16 v1, -0x3f600000    # -5.0f

    :goto_4
    const/4 v2, 0x2

    goto/16 :goto_5

    :cond_4
    add-int/lit8 v1, v8, -0x2

    if-ne v13, v1, :cond_5

    invoke-virtual {v11, v12}, Landroid/view/View;->setRotation(F)V

    invoke-static {v14}, Lc39;->a(F)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v11, v0}, Landroid/view/View;->setTranslationX(F)V

    invoke-static {v14}, Lc39;->a(F)I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    invoke-virtual {v11, v0}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_3

    :cond_5
    const/high16 v1, -0x3f600000    # -5.0f

    invoke-virtual {v11, v1}, Landroid/view/View;->setRotation(F)V

    invoke-static {v14}, Lc39;->a(F)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v11, v2}, Landroid/view/View;->setTranslationX(F)V

    invoke-static {v14}, Lc39;->a(F)I

    move-result v2

    neg-int v2, v2

    int-to-float v2, v2

    invoke-virtual {v11, v2}, Landroid/view/View;->setTranslationY(F)V

    iget v2, v6, Lcom/transsion/playercommon/stack/StackLayoutManager;->f:I

    iget-object v3, v6, Lcom/transsion/playercommon/stack/StackLayoutManager;->e:Landroid/content/Context;

    invoke-static {v3, v0}, Lcom/transsion/utils/a;->d(Landroid/content/Context;F)I

    move-result v18

    iget v3, v6, Lcom/transsion/playercommon/stack/StackLayoutManager;->g:I

    iget-object v4, v6, Lcom/transsion/playercommon/stack/StackLayoutManager;->e:Landroid/content/Context;

    invoke-static {v4, v0}, Lcom/transsion/utils/a;->d(Landroid/content/Context;F)I

    move-result v20

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v16, v11

    move/from16 v17, v2

    move/from16 v19, v3

    invoke-static/range {v16 .. v22}, Lro1;->a(Landroid/view/View;IIIIII)V

    goto :goto_4

    :cond_6
    const/high16 v1, -0x3f600000    # -5.0f

    const/4 v2, 0x2

    if-ne v8, v2, :cond_8

    if-ne v13, v9, :cond_7

    invoke-virtual {v11, v12}, Landroid/view/View;->setRotation(F)V

    iget v3, v6, Lcom/transsion/playercommon/stack/StackLayoutManager;->f:I

    iget-object v4, v6, Lcom/transsion/playercommon/stack/StackLayoutManager;->e:Landroid/content/Context;

    invoke-static {v4, v0}, Lcom/transsion/utils/a;->d(Landroid/content/Context;F)I

    move-result v18

    iget v4, v6, Lcom/transsion/playercommon/stack/StackLayoutManager;->g:I

    iget-object v5, v6, Lcom/transsion/playercommon/stack/StackLayoutManager;->e:Landroid/content/Context;

    invoke-static {v5, v0}, Lcom/transsion/utils/a;->d(Landroid/content/Context;F)I

    move-result v20

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v16, v11

    move/from16 v17, v3

    move/from16 v19, v4

    invoke-static/range {v16 .. v22}, Lro1;->a(Landroid/view/View;IIIIII)V

    goto :goto_5

    :cond_7
    invoke-virtual {v11, v12}, Landroid/view/View;->setRotation(F)V

    invoke-static {v14}, Lc39;->a(F)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v11, v3}, Landroid/view/View;->setTranslationX(F)V

    invoke-static {v14}, Lc39;->a(F)I

    move-result v3

    neg-int v3, v3

    int-to-float v3, v3

    invoke-virtual {v11, v3}, Landroid/view/View;->setTranslationY(F)V

    iget v3, v6, Lcom/transsion/playercommon/stack/StackLayoutManager;->f:I

    iget-object v4, v6, Lcom/transsion/playercommon/stack/StackLayoutManager;->e:Landroid/content/Context;

    invoke-static {v4, v0}, Lcom/transsion/utils/a;->d(Landroid/content/Context;F)I

    move-result v18

    iget v4, v6, Lcom/transsion/playercommon/stack/StackLayoutManager;->g:I

    iget-object v5, v6, Lcom/transsion/playercommon/stack/StackLayoutManager;->e:Landroid/content/Context;

    invoke-static {v5, v0}, Lcom/transsion/utils/a;->d(Landroid/content/Context;F)I

    move-result v20

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v16, v11

    move/from16 v17, v3

    move/from16 v19, v4

    invoke-static/range {v16 .. v22}, Lro1;->a(Landroid/view/View;IIIIII)V

    goto :goto_5

    :cond_8
    invoke-virtual {v11, v12}, Landroid/view/View;->setRotation(F)V

    iget v3, v6, Lcom/transsion/playercommon/stack/StackLayoutManager;->f:I

    iget-object v4, v6, Lcom/transsion/playercommon/stack/StackLayoutManager;->e:Landroid/content/Context;

    invoke-static {v4, v0}, Lcom/transsion/utils/a;->d(Landroid/content/Context;F)I

    move-result v18

    iget v4, v6, Lcom/transsion/playercommon/stack/StackLayoutManager;->g:I

    iget-object v5, v6, Lcom/transsion/playercommon/stack/StackLayoutManager;->e:Landroid/content/Context;

    invoke-static {v5, v0}, Lcom/transsion/utils/a;->d(Landroid/content/Context;F)I

    move-result v20

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v16, v11

    move/from16 v17, v3

    move/from16 v19, v4

    invoke-static/range {v16 .. v22}, Lro1;->a(Landroid/view/View;IIIIII)V

    :goto_5
    add-int/lit8 v4, v13, -0x1

    move v13, v2

    move v5, v9

    const/4 v11, 0x0

    move v9, v1

    goto/16 :goto_2

    :cond_9
    return-void
.end method
