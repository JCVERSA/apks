.class public Lqb9;
.super Landroid/widget/ArrayAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lqb9$a;
    }
.end annotation


# instance fields
.field public A:Ljava/util/List;

.field public B:Ljava/util/List;

.field public b:I

.field public c:Ljava/util/Set;

.field public d:Z

.field public final e:I

.field public final f:I

.field public final g:I

.field public final h:I

.field public i:Ljava/lang/Integer;

.field public j:Landroid/content/res/ColorStateList;

.field public k:Ljava/lang/Integer;

.field public l:Landroid/content/res/ColorStateList;

.field public m:Ljava/lang/CharSequence;

.field public n:Ljava/lang/CharSequence;

.field public o:Ljava/lang/Integer;

.field public p:Landroid/content/res/ColorStateList;

.field public q:Ljava/lang/Integer;

.field public r:Landroid/content/res/ColorStateList;

.field public s:Ljava/lang/Integer;

.field public t:Ljava/util/List;

.field public u:I

.field public v:Landroid/util/SparseIntArray;

.field public w:Landroid/util/SparseArray;

.field public x:Landroid/util/SparseArray;

.field public y:Landroid/util/SparseArray;

.field public z:Landroid/util/SparseArray;


# direct methods
.method public constructor <init>(Landroid/content/Context;IILjava/util/List;)V
    .locals 0

    .line 3
    invoke-static {p4}, Lqb9;->h(Ljava/util/List;)Ljava/util/List;

    move-result-object p4

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;IILjava/util/List;)V

    const/4 p1, -0x1

    .line 4
    iput p1, p0, Lqb9;->b:I

    .line 5
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lqb9;->c:Ljava/util/Set;

    const/4 p1, 0x0

    .line 6
    iput-object p1, p0, Lqb9;->i:Ljava/lang/Integer;

    .line 7
    iput-object p1, p0, Lqb9;->j:Landroid/content/res/ColorStateList;

    .line 8
    iput-object p1, p0, Lqb9;->k:Ljava/lang/Integer;

    .line 9
    iput-object p1, p0, Lqb9;->l:Landroid/content/res/ColorStateList;

    .line 10
    iput-object p1, p0, Lqb9;->m:Ljava/lang/CharSequence;

    .line 11
    iput-object p1, p0, Lqb9;->n:Ljava/lang/CharSequence;

    .line 12
    iput-object p1, p0, Lqb9;->o:Ljava/lang/Integer;

    .line 13
    iput-object p1, p0, Lqb9;->p:Landroid/content/res/ColorStateList;

    .line 14
    iput-object p1, p0, Lqb9;->q:Ljava/lang/Integer;

    .line 15
    iput-object p1, p0, Lqb9;->r:Landroid/content/res/ColorStateList;

    .line 16
    iput-object p1, p0, Lqb9;->s:Ljava/lang/Integer;

    const/4 p1, 0x0

    .line 17
    iput p1, p0, Lqb9;->u:I

    .line 18
    new-instance p1, Landroid/util/SparseIntArray;

    invoke-direct {p1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object p1, p0, Lqb9;->v:Landroid/util/SparseIntArray;

    .line 19
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lqb9;->w:Landroid/util/SparseArray;

    .line 20
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lqb9;->x:Landroid/util/SparseArray;

    .line 21
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lqb9;->y:Landroid/util/SparseArray;

    .line 22
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lqb9;->z:Landroid/util/SparseArray;

    .line 23
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lqb9;->B:Ljava/util/List;

    .line 24
    iput-object p4, p0, Lqb9;->A:Ljava/util/List;

    .line 25
    iput p3, p0, Lqb9;->e:I

    .line 26
    sget p1, Lcom/transsion/widgetslib/R$id;->os_list_popup_sub_text:I

    iput p1, p0, Lqb9;->f:I

    .line 27
    sget p1, Lcom/transsion/widgetslib/R$id;->os_list_popup_left_text_icon:I

    iput p1, p0, Lqb9;->g:I

    .line 28
    sget p1, Lcom/transsion/widgetslib/R$id;->os_list_popup_right_text_icon:I

    iput p1, p0, Lqb9;->h:I

    .line 29
    invoke-virtual {p0}, Lqb9;->f()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 2

    .line 2
    sget v0, Lcom/transsion/widgetslib/R$layout;->os_popup_item_layout_selected:I

    const v1, 0x1020014

    invoke-direct {p0, p1, v0, v1, p2}, Lqb9;-><init>(Landroid/content/Context;IILjava/util/List;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;[Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lqb9;-><init>(Landroid/content/Context;Ljava/util/List;)V

    return-void
.end method

.method public static b(Landroid/content/Context;[Ljava/lang/String;)Lqb9;
    .locals 1

    new-instance v0, Lqb9;

    invoke-direct {v0, p0, p1}, Lqb9;-><init>(Landroid/content/Context;[Ljava/lang/Object;)V

    return-object v0
.end method

.method public static h(Ljava/util/List;)Ljava/util/List;
    .locals 1

    if-nez p0, :cond_0

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0

    :cond_0
    instance-of v0, p0, Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    return-object p0

    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lqb9;->i:Ljava/lang/Integer;

    iput-object v0, p0, Lqb9;->j:Landroid/content/res/ColorStateList;

    iput-object v0, p0, Lqb9;->k:Ljava/lang/Integer;

    iput-object v0, p0, Lqb9;->l:Landroid/content/res/ColorStateList;

    iput-object v0, p0, Lqb9;->o:Ljava/lang/Integer;

    iput-object v0, p0, Lqb9;->p:Landroid/content/res/ColorStateList;

    iput-object v0, p0, Lqb9;->q:Ljava/lang/Integer;

    iput-object v0, p0, Lqb9;->r:Landroid/content/res/ColorStateList;

    iput-object v0, p0, Lqb9;->s:Ljava/lang/Integer;

    return-void
.end method

.method public areAllItemsEnabled()Z
    .locals 0

    iget-object p0, p0, Lqb9;->c:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->isEmpty()Z

    move-result p0

    return p0
.end method

.method public final c(Ljava/lang/Object;)Lqb9$a;
    .locals 1

    instance-of p0, p1, Lqb9$a;

    if-eqz p0, :cond_0

    check-cast p1, Lqb9$a;

    return-object p1

    :cond_0
    instance-of p0, p1, Ljava/lang/CharSequence;

    if-eqz p0, :cond_1

    move-object p0, p1

    check-cast p0, Ljava/lang/CharSequence;

    invoke-static {p0}, Lolb;->G0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p0

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lolb;->H0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    new-instance v0, Lqb9$a;

    invoke-direct {v0, p0, p1}, Lqb9$a;-><init>(Ljava/lang/CharSequence;Ljava/lang/Object;)V

    return-object v0
.end method

.method public d(I)I
    .locals 4

    iget-object v0, p0, Lqb9;->t:Ljava/util/List;

    const/4 v1, -0x1

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    if-gez p1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    move v2, v0

    :goto_0
    iget-object v3, p0, Lqb9;->t:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_2

    iget-object v3, p0, Lqb9;->t:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    add-int/2addr v2, v3

    if-ge p1, v2, :cond_1

    return v0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return v1
.end method

.method public final e(Ljava/lang/Object;)Ljava/lang/CharSequence;
    .locals 0

    instance-of p0, p1, Ljava/lang/CharSequence;

    if-eqz p0, :cond_0

    check-cast p1, Ljava/lang/CharSequence;

    return-object p1

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public final f()V
    .locals 4

    invoke-interface {p0}, Landroid/widget/Adapter;->getCount()I

    move-result v0

    iget-object v1, p0, Lqb9;->B:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    if-gtz v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Lqb9;->B:Ljava/util/List;

    invoke-interface {p0, v1}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v3}, Lqb9;->c(Ljava/lang/Object;)Lqb9$a;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final g(I)Z
    .locals 5

    iget-object v0, p0, Lqb9;->t:Ljava/util/List;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0, p1}, Lqb9;->d(I)I

    move-result v0

    if-ltz v0, :cond_3

    iget-object v3, p0, Lqb9;->v:Landroid/util/SparseIntArray;

    const/4 v4, -0x1

    invoke-virtual {v3, v0, v4}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    if-eq v0, v4, :cond_1

    if-ne v0, p1, :cond_0

    move v1, v2

    :cond_0
    return v1

    :cond_1
    iget p0, p0, Lqb9;->b:I

    if-ne p0, p1, :cond_2

    move v1, v2

    :cond_2
    return v1

    :cond_3
    iget p0, p0, Lqb9;->b:I

    if-ne p0, p1, :cond_4

    move v1, v2

    :cond_4
    return v1
.end method

.method public getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    invoke-super {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;->getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-virtual {p0, p1}, Lqb9;->isEnabled(I)Z

    move-result p3

    invoke-virtual {p0, p2, p3}, Lqb9;->k(Landroid/view/View;Z)V

    iget-boolean p3, p0, Lqb9;->d:Z

    if-eqz p3, :cond_0

    invoke-virtual {p0, p1, p2}, Lqb9;->j(ILandroid/view/View;)V

    :cond_0
    return-object p2
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    invoke-super {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-virtual {p0, p1}, Lqb9;->isEnabled(I)Z

    move-result p3

    invoke-virtual {p0, p2, p3}, Lqb9;->k(Landroid/view/View;Z)V

    invoke-virtual {p0, p1, p2}, Lqb9;->j(ILandroid/view/View;)V

    :cond_0
    return-object p2
.end method

.method public i(IZ)V
    .locals 1

    if-ltz p1, :cond_2

    invoke-interface {p0}, Landroid/widget/Adapter;->getCount()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_1

    :cond_0
    if-eqz p2, :cond_1

    iget-object p2, p0, Lqb9;->c:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lqb9;->c:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :goto_0
    invoke-virtual {p0}, Lqb9;->notifyDataSetChanged()V

    :cond_2
    :goto_1
    return-void
.end method

.method public isEnabled(I)Z
    .locals 0

    iget-object p0, p0, Lqb9;->c:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public final j(ILandroid/view/View;)V
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    instance-of v3, v2, Lcom/transsion/widgetslib/widget/OSPopupPressLayout;

    if-eqz v3, :cond_1

    iget-object v3, v0, Lqb9;->s:Ljava/lang/Integer;

    if-eqz v3, :cond_0

    move-object v4, v2

    check-cast v4, Lcom/transsion/widgetslib/widget/OSPopupPressLayout;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v4, v3}, Lcom/transsion/widgetslib/widget/OSPopupPressLayout;->setMaskColorOverride(I)V

    goto :goto_0

    :cond_0
    move-object v3, v2

    check-cast v3, Lcom/transsion/widgetslib/widget/OSPopupPressLayout;

    invoke-virtual {v3}, Lcom/transsion/widgetslib/widget/OSPopupPressLayout;->clearMaskColorOverride()V

    :cond_1
    :goto_0
    invoke-virtual/range {p0 .. p1}, Lqb9;->g(I)Z

    move-result v3

    iget v4, v0, Lqb9;->e:I

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/view/View;->setSelected(Z)V

    invoke-virtual/range {p0 .. p1}, Lqb9;->d(I)I

    move-result v5

    if-ltz v5, :cond_2

    iget-object v7, v0, Lqb9;->w:Landroid/util/SparseArray;

    invoke-virtual {v7, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    iget-object v8, v0, Lqb9;->x:Landroid/util/SparseArray;

    invoke-virtual {v8, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/res/ColorStateList;

    goto :goto_1

    :cond_2
    const/4 v5, 0x0

    const/4 v7, 0x0

    :goto_1
    iget-object v8, v0, Lqb9;->y:Landroid/util/SparseArray;

    invoke-virtual {v8, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    iget-object v9, v0, Lqb9;->z:Landroid/util/SparseArray;

    invoke-virtual {v9, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/res/ColorStateList;

    if-ltz v1, :cond_3

    iget-object v10, v0, Lqb9;->B:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    if-ge v1, v10, :cond_3

    iget-object v10, v0, Lqb9;->B:Ljava/util/List;

    invoke-interface {v10, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lqb9$a;

    goto :goto_2

    :cond_3
    const/4 v10, 0x0

    :goto_2
    instance-of v11, v4, Landroid/widget/TextView;

    const/4 v12, 0x0

    if-eqz v11, :cond_c

    if-eqz v3, :cond_4

    sget-object v11, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    sget v14, Lcom/transsion/widgetslib/R$integer;->OSSemiBoldWeight:I

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v13

    invoke-static {v11, v13, v12}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;IZ)Landroid/graphics/Typeface;

    move-result-object v11

    goto :goto_3

    :cond_4
    sget-object v11, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    invoke-static {v11, v12}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v11

    :goto_3
    check-cast v4, Landroid/widget/TextView;

    if-eqz v10, :cond_5

    invoke-virtual {v10}, Lqb9$a;->getMainText()Ljava/lang/CharSequence;

    move-result-object v13

    goto :goto_4

    :cond_5
    const/4 v13, 0x0

    :goto_4
    if-eqz v13, :cond_6

    invoke-virtual {v4, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_6
    invoke-virtual {v4, v11}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    if-eqz v9, :cond_7

    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    goto :goto_5

    :cond_7
    if-eqz v8, :cond_8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-virtual {v4, v11}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_5

    :cond_8
    if-eqz v5, :cond_9

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    goto :goto_5

    :cond_9
    if-eqz v7, :cond_a

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-virtual {v4, v11}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_5

    :cond_a
    iget-object v11, v0, Lqb9;->j:Landroid/content/res/ColorStateList;

    if-eqz v11, :cond_b

    invoke-virtual {v4, v11}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    goto :goto_5

    :cond_b
    iget-object v11, v0, Lqb9;->i:Ljava/lang/Integer;

    if-eqz v11, :cond_c

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-virtual {v4, v11}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_c
    :goto_5
    iget v4, v0, Lqb9;->f:I

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    instance-of v11, v4, Landroid/widget/TextView;

    if-eqz v11, :cond_1a

    move-object v11, v4

    check-cast v11, Landroid/widget/TextView;

    if-eqz v10, :cond_d

    invoke-virtual {v10}, Lqb9$a;->getSubText()Ljava/lang/CharSequence;

    move-result-object v14

    goto :goto_6

    :cond_d
    const/4 v14, 0x0

    :goto_6
    if-eqz v14, :cond_19

    invoke-interface {v14}, Ljava/lang/CharSequence;->length()I

    move-result v15

    if-lez v15, :cond_19

    invoke-virtual {v4, v3}, Landroid/view/View;->setSelected(Z)V

    if-eqz v3, :cond_e

    sget-object v15, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v13, Lcom/transsion/widgetslib/R$integer;->OSSemiBoldWeight:I

    invoke-virtual {v6, v13}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    invoke-static {v15, v6, v12}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;IZ)Landroid/graphics/Typeface;

    move-result-object v6

    goto :goto_7

    :cond_e
    sget-object v6, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    invoke-static {v6, v12}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v6

    :goto_7
    invoke-virtual {v11, v6}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    invoke-virtual {v11, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz v3, :cond_14

    if-eqz v9, :cond_f

    invoke-virtual {v11, v9}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    goto :goto_8

    :cond_f
    if-eqz v8, :cond_10

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v11, v6}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_8

    :cond_10
    if-eqz v5, :cond_11

    invoke-virtual {v11, v5}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    goto :goto_8

    :cond_11
    if-eqz v7, :cond_12

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v11, v6}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_8

    :cond_12
    iget-object v6, v0, Lqb9;->j:Landroid/content/res/ColorStateList;

    if-eqz v6, :cond_13

    invoke-virtual {v11, v6}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    goto :goto_8

    :cond_13
    iget-object v6, v0, Lqb9;->i:Ljava/lang/Integer;

    if-eqz v6, :cond_18

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v11, v6}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_8

    :cond_14
    iget-object v6, v0, Lqb9;->l:Landroid/content/res/ColorStateList;

    if-eqz v6, :cond_15

    invoke-virtual {v11, v6}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    goto :goto_8

    :cond_15
    iget-object v6, v0, Lqb9;->k:Ljava/lang/Integer;

    if-eqz v6, :cond_16

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v11, v6}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_8

    :cond_16
    iget-object v6, v0, Lqb9;->j:Landroid/content/res/ColorStateList;

    if-eqz v6, :cond_17

    invoke-virtual {v11, v6}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    goto :goto_8

    :cond_17
    iget-object v6, v0, Lqb9;->i:Ljava/lang/Integer;

    if-eqz v6, :cond_18

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v11, v6}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_18
    :goto_8
    invoke-virtual {v4, v12}, Landroid/view/View;->setVisibility(I)V

    goto :goto_9

    :cond_19
    const/16 v6, 0x8

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    :cond_1a
    :goto_9
    iget v4, v0, Lqb9;->g:I

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    instance-of v6, v4, Lcom/transsion/widgetslib/widget/OSIconTextView;

    if-eqz v6, :cond_27

    move-object v6, v4

    check-cast v6, Lcom/transsion/widgetslib/widget/OSIconTextView;

    if-eqz v10, :cond_1b

    invoke-virtual {v10}, Lqb9$a;->getLeftIcon()Ljava/lang/CharSequence;

    move-result-object v11

    goto :goto_a

    :cond_1b
    const/4 v11, 0x0

    :goto_a
    if-eqz v11, :cond_1c

    invoke-interface {v11}, Ljava/lang/CharSequence;->length()I

    move-result v13

    if-nez v13, :cond_1d

    :cond_1c
    iget-object v11, v0, Lqb9;->m:Ljava/lang/CharSequence;

    :cond_1d
    if-eqz v11, :cond_26

    invoke-interface {v11}, Ljava/lang/CharSequence;->length()I

    move-result v13

    if-lez v13, :cond_26

    invoke-virtual {v6, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v4, v3}, Landroid/view/View;->setSelected(Z)V

    if-eqz v9, :cond_1e

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    goto :goto_b

    :cond_1e
    if-eqz v8, :cond_1f

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-virtual {v6, v11}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_b

    :cond_1f
    if-eqz v5, :cond_20

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    goto :goto_b

    :cond_20
    if-eqz v7, :cond_21

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-virtual {v6, v11}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_b

    :cond_21
    iget-object v11, v0, Lqb9;->p:Landroid/content/res/ColorStateList;

    if-eqz v11, :cond_22

    invoke-virtual {v6, v11}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    goto :goto_b

    :cond_22
    iget-object v11, v0, Lqb9;->o:Ljava/lang/Integer;

    if-eqz v11, :cond_23

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-virtual {v6, v11}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_b

    :cond_23
    iget-object v11, v0, Lqb9;->j:Landroid/content/res/ColorStateList;

    if-eqz v11, :cond_24

    invoke-virtual {v6, v11}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    goto :goto_b

    :cond_24
    iget-object v11, v0, Lqb9;->i:Ljava/lang/Integer;

    if-eqz v11, :cond_25

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-virtual {v6, v11}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_25
    :goto_b
    invoke-virtual {v4, v12}, Landroid/view/View;->setVisibility(I)V

    goto :goto_c

    :cond_26
    const/16 v6, 0x8

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    :cond_27
    :goto_c
    iget v4, v0, Lqb9;->h:I

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    instance-of v6, v4, Landroid/widget/TextView;

    const/4 v11, 0x1

    if-eqz v6, :cond_35

    if-eqz v10, :cond_28

    invoke-virtual {v10}, Lqb9$a;->getRightIcon()Ljava/lang/CharSequence;

    move-result-object v6

    goto :goto_d

    :cond_28
    const/4 v6, 0x0

    :goto_d
    if-nez v6, :cond_29

    iget-object v6, v0, Lqb9;->n:Ljava/lang/CharSequence;

    :cond_29
    if-eqz v6, :cond_2a

    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v13

    if-nez v13, :cond_2b

    :cond_2a
    const/16 v3, 0x8

    goto/16 :goto_10

    :cond_2b
    move-object v13, v4

    check-cast v13, Lcom/transsion/widgetslib/widget/OSIconTextView;

    invoke-virtual {v13, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v4, v3}, Landroid/view/View;->setSelected(Z)V

    if-eqz v9, :cond_2c

    invoke-virtual {v13, v9}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    goto :goto_e

    :cond_2c
    if-eqz v8, :cond_2d

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v13, v5}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_e

    :cond_2d
    if-eqz v5, :cond_2e

    invoke-virtual {v13, v5}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    goto :goto_e

    :cond_2e
    if-eqz v7, :cond_2f

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v13, v5}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_e

    :cond_2f
    iget-object v5, v0, Lqb9;->r:Landroid/content/res/ColorStateList;

    if-eqz v5, :cond_30

    invoke-virtual {v13, v5}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    goto :goto_e

    :cond_30
    iget-object v5, v0, Lqb9;->q:Ljava/lang/Integer;

    if-eqz v5, :cond_31

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v13, v5}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_e

    :cond_31
    iget-object v5, v0, Lqb9;->j:Landroid/content/res/ColorStateList;

    if-eqz v5, :cond_32

    invoke-virtual {v13, v5}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    goto :goto_e

    :cond_32
    iget-object v5, v0, Lqb9;->i:Ljava/lang/Integer;

    if-eqz v5, :cond_33

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v13, v5}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_33
    :goto_e
    const/high16 v5, 0x41800000    # 16.0f

    invoke-virtual {v13, v11, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    if-eqz v3, :cond_34

    move v3, v12

    goto :goto_f

    :cond_34
    const/4 v3, 0x4

    :goto_f
    invoke-virtual {v4, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_35
    const/16 v3, 0x8

    goto :goto_11

    :goto_10
    invoke-virtual {v4, v3}, Landroid/view/View;->setVisibility(I)V

    :goto_11
    iget v4, v0, Lqb9;->u:I

    if-nez v4, :cond_36

    sget v4, Lcom/transsion/widgetslib/R$id;->os_list_popup_group_divider_frame:I

    iput v4, v0, Lqb9;->u:I

    :cond_36
    iget v4, v0, Lqb9;->u:I

    if-eqz v4, :cond_3b

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_3b

    invoke-virtual/range {p0 .. p1}, Lqb9;->l(I)Z

    move-result v4

    if-eqz v10, :cond_38

    iget-object v5, v0, Lqb9;->t:Ljava/util/List;

    if-eqz v5, :cond_38

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_38

    if-eqz v4, :cond_37

    invoke-virtual {v10}, Lqb9$a;->a()Z

    move-result v4

    if-eqz v4, :cond_37

    move v4, v11

    goto :goto_12

    :cond_37
    move v4, v12

    :cond_38
    :goto_12
    invoke-interface/range {p0 .. p0}, Landroid/widget/Adapter;->getCount()I

    move-result v0

    sub-int/2addr v0, v11

    if-ne v1, v0, :cond_39

    move v4, v12

    :cond_39
    if-eqz v4, :cond_3a

    goto :goto_13

    :cond_3a
    move v12, v3

    :goto_13
    invoke-virtual {v2, v12}, Landroid/view/View;->setVisibility(I)V

    :cond_3b
    return-void
.end method

.method public final k(Landroid/view/View;Z)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1, p2}, Landroid/view/View;->setEnabled(Z)V

    instance-of p0, p1, Landroid/view/ViewGroup;

    if-eqz p0, :cond_2

    check-cast p1, Landroid/view/ViewGroup;

    new-instance p0, Ljava/util/ArrayDeque;

    invoke-direct {p0}, Ljava/util/ArrayDeque;-><init>()V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-interface {p0, v2}, Ljava/util/Deque;->push(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2

    invoke-interface {p0}, Ljava/util/Deque;->pop()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-virtual {p1, p2}, Landroid/view/View;->setEnabled(Z)V

    instance-of v1, p1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_1

    check-cast p1, Landroid/view/ViewGroup;

    move v1, v0

    :goto_1
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-interface {p0, v2}, Ljava/util/Deque;->push(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method public final l(I)Z
    .locals 4

    iget-object v0, p0, Lqb9;->t:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    if-gez p1, :cond_0

    goto :goto_1

    :cond_0
    move v0, v1

    move v2, v0

    :goto_0
    iget-object v3, p0, Lqb9;->t:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_3

    iget-object v3, p0, Lqb9;->t:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v3, v2, -0x1

    if-ne p1, v3, :cond_2

    iget-object p0, p0, Lqb9;->t:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    const/4 p1, 0x1

    sub-int/2addr p0, p1

    if-ne v0, p0, :cond_1

    return v1

    :cond_1
    return p1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return v1
.end method

.method public final m()V
    .locals 10

    iget-object v0, p0, Lqb9;->t:Ljava/util/List;

    if-eqz v0, :cond_6

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lqb9;->B:Ljava/util/List;

    if-nez v0, :cond_0

    goto :goto_5

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    :goto_0
    iget-object v3, p0, Lqb9;->t:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_6

    iget-object v3, p0, Lqb9;->t:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    move v4, v0

    :goto_1
    if-ge v4, v3, :cond_5

    add-int v5, v2, v4

    iget-object v6, p0, Lqb9;->B:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_4

    add-int/lit8 v6, v3, -0x1

    const/4 v7, 0x1

    if-ne v4, v6, :cond_1

    move v6, v7

    goto :goto_2

    :cond_1
    move v6, v0

    :goto_2
    iget-object v8, p0, Lqb9;->t:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    sub-int/2addr v8, v7

    if-ne v1, v8, :cond_2

    move v8, v7

    goto :goto_3

    :cond_2
    move v8, v0

    :goto_3
    iget-object v9, p0, Lqb9;->B:Ljava/util/List;

    invoke-interface {v9, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lqb9$a;

    if-eqz v6, :cond_3

    if-nez v8, :cond_3

    goto :goto_4

    :cond_3
    move v7, v0

    :goto_4
    invoke-virtual {v5, v7}, Lqb9$a;->setEnableDivider(Z)V

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_5
    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_6
    :goto_5
    return-void
.end method

.method public final n()V
    .locals 6

    invoke-interface {p0}, Landroid/widget/Adapter;->getCount()I

    move-result v0

    iget-object v1, p0, Lqb9;->B:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, v0, :cond_1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-lt v1, v0, :cond_0

    iget-object v2, p0, Lqb9;->B:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_0
    move v1, v0

    :cond_1
    const/4 v2, 0x0

    :goto_1
    if-ge v2, v0, :cond_5

    invoke-interface {p0, v2}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    if-lt v2, v1, :cond_2

    iget-object v4, p0, Lqb9;->B:Ljava/util/List;

    invoke-virtual {p0, v3}, Lqb9;->c(Ljava/lang/Object;)Lqb9$a;

    move-result-object v3

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_2
    iget-object v4, p0, Lqb9;->B:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lqb9$a;

    instance-of v5, v3, Lqb9$a;

    if-eqz v5, :cond_3

    if-eq v4, v3, :cond_4

    iget-object v4, p0, Lqb9;->B:Ljava/util/List;

    check-cast v3, Lqb9$a;

    invoke-interface {v4, v2, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_3
    invoke-virtual {p0, v3}, Lqb9;->e(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Lqb9$a;->setMainText(Ljava/lang/CharSequence;)V

    invoke-virtual {v4, v3}, Lqb9$a;->setOriginalData(Ljava/lang/Object;)V

    :cond_4
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_5
    return-void
.end method

.method public notifyDataSetChanged()V
    .locals 0

    invoke-virtual {p0}, Lqb9;->n()V

    invoke-super {p0}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public setDropDownSpinner(Z)V
    .locals 0

    iput-boolean p1, p0, Lqb9;->d:Z

    return-void
.end method

.method public setGroupCounts(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lqb9;->t:Ljava/util/List;

    iget v0, p0, Lqb9;->b:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    iget p1, p0, Lqb9;->b:I

    invoke-virtual {p0, p1}, Lqb9;->d(I)I

    move-result p1

    if-ltz p1, :cond_0

    iget-object v0, p0, Lqb9;->v:Landroid/util/SparseIntArray;

    iget v1, p0, Lqb9;->b:I

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->put(II)V

    :cond_0
    invoke-virtual {p0}, Lqb9;->m()V

    invoke-virtual {p0}, Lqb9;->notifyDataSetChanged()V

    return-void
.end method

.method public setLeftTextIcon(Ljava/lang/CharSequence;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-interface {p0}, Landroid/widget/Adapter;->getCount()I

    move-result v0

    .line 2
    iget-object v1, p0, Lqb9;->B:Ljava/util/List;

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 3
    iget-object v2, p0, Lqb9;->B:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 4
    iget-object v2, p0, Lqb9;->B:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lqb9$a;

    invoke-virtual {v2, p1}, Lqb9$a;->setLeftIcon(Ljava/lang/CharSequence;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 5
    :cond_1
    invoke-virtual {p0}, Lqb9;->notifyDataSetChanged()V

    return-void
.end method

.method public setLeftTextIcon(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/CharSequence;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 6
    iget-object v0, p0, Lqb9;->B:Ljava/util/List;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 7
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lqb9;->B:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 8
    iget-object v1, p0, Lqb9;->B:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lqb9$a;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Lqb9$a;->setLeftIcon(Ljava/lang/CharSequence;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {p0}, Lqb9;->notifyDataSetChanged()V

    return-void
.end method

.method public setLeftTextIconColor(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lqb9;->o:Ljava/lang/Integer;

    return-void
.end method

.method public setLeftTextIconColorStateList(Landroid/content/res/ColorStateList;)V
    .locals 0

    iput-object p1, p0, Lqb9;->p:Landroid/content/res/ColorStateList;

    return-void
.end method

.method public setLeftTextIconResource(I)V
    .locals 3
    .param p1    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param

    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p0}, Landroid/widget/Adapter;->getCount()I

    move-result v0

    iget-object v1, p0, Lqb9;->B:Ljava/util/List;

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lqb9;->B:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lqb9;->B:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lqb9$a;

    invoke-virtual {v2, p1}, Lqb9$a;->setLeftIcon(Ljava/lang/CharSequence;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lqb9;->notifyDataSetChanged()V

    return-void
.end method

.method public setLeftTextIconsResource(Ljava/util/List;)V
    .locals 3
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lqb9;->B:Ljava/util/List;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lqb9;->B:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    goto :goto_1

    :cond_0
    const-string v1, ""

    :goto_1
    iget-object v2, p0, Lqb9;->B:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lqb9$a;

    invoke-virtual {v2, v1}, Lqb9$a;->setLeftIcon(Ljava/lang/CharSequence;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lqb9;->notifyDataSetChanged()V

    return-void
.end method

.method public setMainTextArrayResource(I)V
    .locals 3
    .param p1    # I
        .annotation build Landroidx/annotation/ArrayRes;
        .end annotation
    .end param

    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iget-object v0, p0, Lqb9;->B:Ljava/util/List;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lqb9;->B:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lqb9;->B:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lqb9$a;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Lqb9$a;->setMainText(Ljava/lang/CharSequence;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lqb9;->notifyDataSetChanged()V

    return-void
.end method

.method public setMainTexts(Ljava/util/List;)V
    .locals 3
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/CharSequence;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    iget-object v0, p0, Lqb9;->B:Ljava/util/List;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lqb9;->B:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lqb9;->B:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lqb9$a;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Lqb9$a;->setMainText(Ljava/lang/CharSequence;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lqb9;->notifyDataSetChanged()V

    return-void
.end method

.method public setPressColor(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lqb9;->s:Ljava/lang/Integer;

    return-void
.end method

.method public setRightTextIcon(Ljava/lang/CharSequence;)V
    .locals 0

    iput-object p1, p0, Lqb9;->n:Ljava/lang/CharSequence;

    invoke-virtual {p0}, Lqb9;->notifyDataSetChanged()V

    return-void
.end method

.method public setRightTextIconColor(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lqb9;->q:Ljava/lang/Integer;

    return-void
.end method

.method public setRightTextIconColorStateList(Landroid/content/res/ColorStateList;)V
    .locals 0

    iput-object p1, p0, Lqb9;->r:Landroid/content/res/ColorStateList;

    return-void
.end method

.method public setRightTextIconResource(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param

    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Lqb9;->n:Ljava/lang/CharSequence;

    invoke-virtual {p0}, Lqb9;->notifyDataSetChanged()V

    return-void
.end method

.method public setSelected(I)V
    .locals 3

    .line 1
    iget v0, p0, Lqb9;->b:I

    const/4 v1, -0x1

    if-ne p1, v0, :cond_2

    if-eq p1, v1, :cond_1

    .line 2
    iget-object v0, p0, Lqb9;->t:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0, p1}, Lqb9;->d(I)I

    move-result v0

    if-ltz v0, :cond_2

    .line 4
    iget-object v2, p0, Lqb9;->v:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v0, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    if-ne v0, p1, :cond_2

    :cond_1
    :goto_0
    return-void

    .line 5
    :cond_2
    iget-object v0, p0, Lqb9;->t:Ljava/util/List;

    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    if-ltz p1, :cond_3

    .line 6
    invoke-interface {p0}, Landroid/widget/Adapter;->getCount()I

    move-result v0

    if-ge p1, v0, :cond_3

    .line 7
    invoke-virtual {p0, p1}, Lqb9;->d(I)I

    move-result v0

    if-ltz v0, :cond_6

    .line 8
    iget-object v1, p0, Lqb9;->v:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v0, p1}, Landroid/util/SparseIntArray;->put(II)V

    .line 9
    iput p1, p0, Lqb9;->b:I

    goto :goto_1

    .line 10
    :cond_3
    iput v1, p0, Lqb9;->b:I

    .line 11
    iget-object p1, p0, Lqb9;->v:Landroid/util/SparseIntArray;

    invoke-virtual {p1}, Landroid/util/SparseIntArray;->clear()V

    goto :goto_1

    :cond_4
    if-ltz p1, :cond_5

    .line 12
    invoke-interface {p0}, Landroid/widget/Adapter;->getCount()I

    move-result v0

    if-ge p1, v0, :cond_5

    .line 13
    iput p1, p0, Lqb9;->b:I

    goto :goto_1

    .line 14
    :cond_5
    iput v1, p0, Lqb9;->b:I

    .line 15
    :cond_6
    :goto_1
    invoke-virtual {p0}, Lqb9;->notifyDataSetChanged()V

    return-void
.end method

.method public setSelected(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 16
    invoke-virtual {p0, p1}, Landroid/widget/ArrayAdapter;->getPosition(Ljava/lang/Object;)I

    move-result p1

    invoke-virtual {p0, p1}, Lqb9;->setSelected(I)V

    return-void
.end method

.method public setSubTextArrayResource(I)V
    .locals 3
    .param p1    # I
        .annotation build Landroidx/annotation/ArrayRes;
        .end annotation
    .end param

    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iget-object v0, p0, Lqb9;->B:Ljava/util/List;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lqb9;->B:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lqb9;->B:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lqb9$a;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Lqb9$a;->setSubText(Ljava/lang/CharSequence;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lqb9;->notifyDataSetChanged()V

    return-void
.end method

.method public setSubTextColor(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lqb9;->k:Ljava/lang/Integer;

    return-void
.end method

.method public setSubTextColorStateList(Landroid/content/res/ColorStateList;)V
    .locals 0

    iput-object p1, p0, Lqb9;->l:Landroid/content/res/ColorStateList;

    return-void
.end method

.method public setSubTexts(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/CharSequence;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    iget-object v0, p0, Lqb9;->B:Ljava/util/List;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lqb9;->B:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lqb9;->B:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lqb9$a;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Lqb9$a;->setSubText(Ljava/lang/CharSequence;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lqb9;->notifyDataSetChanged()V

    return-void
.end method

.method public setTextViewColor(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lqb9;->i:Ljava/lang/Integer;

    return-void
.end method

.method public setTextViewColorStateList(Landroid/content/res/ColorStateList;)V
    .locals 0

    iput-object p1, p0, Lqb9;->j:Landroid/content/res/ColorStateList;

    return-void
.end method
