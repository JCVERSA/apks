.class public Lcom/transsion/widgets/MultiFlowLayout;
.super Landroid/view/ViewGroup;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/widgets/MultiFlowLayout$FlowBean;,
        Lcom/transsion/widgets/MultiFlowLayout$OnTagClickListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Visha_FlowLayout"


# instance fields
.field private LEFT_RIGHT_SPACE:I

.field private ROW_SPACE:I

.field private isNormal:Z

.field private labels:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/widgets/MultiFlowLayout$FlowBean;",
            ">;"
        }
    .end annotation
.end field

.field private lableSelected:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/widgets/MultiFlowLayout$FlowBean;",
            ">;"
        }
    .end annotation
.end field

.field private mIsMulti:Z

.field private mListener:Lcom/transsion/widgets/MultiFlowLayout$OnTagClickListener;

.field private mViews:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation
.end field

.field private maxRow:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/transsion/widgets/MultiFlowLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/transsion/widgets/MultiFlowLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Lcom/transsion/widgets/MultiFlowLayout;->mViews:Ljava/util/List;

    .line 5
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Lcom/transsion/widgets/MultiFlowLayout;->lableSelected:Ljava/util/List;

    const p3, 0x7fffffff

    .line 6
    iput p3, p0, Lcom/transsion/widgets/MultiFlowLayout;->maxRow:I

    .line 7
    sget-object p3, Lcom/transsion/common/R$styleable;->VishaFlowLayout:[I

    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 8
    sget p2, Lcom/transsion/common/R$styleable;->VishaFlowLayout_leftAndRightSpace:I

    .line 9
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p3

    iget-boolean v0, p0, Lcom/transsion/widgets/MultiFlowLayout;->isNormal:Z

    const/high16 v1, 0x41200000    # 10.0f

    const/high16 v2, 0x41000000    # 8.0f

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-static {p3, v0}, Loc2;->a(Landroid/content/Context;F)I

    move-result p3

    .line 10
    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/transsion/widgets/MultiFlowLayout;->LEFT_RIGHT_SPACE:I

    .line 11
    sget p2, Lcom/transsion/common/R$styleable;->VishaFlowLayout_rowSpace:I

    .line 12
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p3

    iget-boolean v0, p0, Lcom/transsion/widgets/MultiFlowLayout;->isNormal:Z

    if-eqz v0, :cond_1

    move v1, v2

    :cond_1
    invoke-static {p3, v1}, Loc2;->a(Landroid/content/Context;F)I

    move-result p3

    .line 13
    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/transsion/widgets/MultiFlowLayout;->ROW_SPACE:I

    .line 14
    sget p2, Lcom/transsion/common/R$styleable;->VishaFlowLayout_multiSelected:I

    const/4 p3, 0x1

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/transsion/widgets/MultiFlowLayout;->mIsMulti:Z

    .line 15
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public static synthetic a(Lcom/transsion/widgets/MultiFlowLayout;Landroid/widget/TextView;Lcom/transsion/widgets/MultiFlowLayout$FlowBean;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/widgets/MultiFlowLayout;->lambda$setLabels$0(Landroid/widget/TextView;Lcom/transsion/widgets/MultiFlowLayout$FlowBean;Landroid/view/View;)V

    return-void
.end method

.method private synthetic lambda$setLabels$0(Landroid/widget/TextView;Lcom/transsion/widgets/MultiFlowLayout$FlowBean;Landroid/view/View;)V
    .locals 7

    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setSelected(Z)V

    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    move-result v0

    iput-boolean v0, p2, Lcom/transsion/widgets/MultiFlowLayout$FlowBean;->isChecked:Z

    invoke-virtual {p3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/transsion/widgets/MultiFlowLayout$FlowBean;

    goto :goto_0

    :cond_0
    move-object p3, v1

    :goto_0
    iget-boolean v0, p0, Lcom/transsion/widgets/MultiFlowLayout;->mIsMulti:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/transsion/widgets/MultiFlowLayout;->mViews:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/transsion/widgets/MultiFlowLayout$FlowBean;

    goto :goto_2

    :cond_2
    move-object v3, v1

    :goto_2
    if-eqz p3, :cond_1

    if-eqz v3, :cond_1

    iget v4, p3, Lcom/transsion/widgets/MultiFlowLayout$FlowBean;->type:I

    iget v5, v3, Lcom/transsion/widgets/MultiFlowLayout$FlowBean;->type:I

    if-ne v4, v5, :cond_1

    iget-object v4, p3, Lcom/transsion/widgets/MultiFlowLayout$FlowBean;->value:Ljava/lang/String;

    iget-object v5, v3, Lcom/transsion/widgets/MultiFlowLayout$FlowBean;->value:Ljava/lang/String;

    if-eq v4, v5, :cond_1

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setSelected(Z)V

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/transsion/common/R$color;->white:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setTextColor(I)V

    iput-boolean v4, v3, Lcom/transsion/widgets/MultiFlowLayout$FlowBean;->isChecked:Z

    iget-object v2, p0, Lcom/transsion/widgets/MultiFlowLayout;->lableSelected:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    move-result p3

    if-eqz p3, :cond_4

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v0, Lcom/transsion/common/R$color;->white:I

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p3

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object p3, p0, Lcom/transsion/widgets/MultiFlowLayout;->lableSelected:Ljava/util/List;

    invoke-interface {p3, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_4
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v0, Lcom/transsion/common/R$color;->black_65:I

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p3

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object p3, p0, Lcom/transsion/widgets/MultiFlowLayout;->lableSelected:Ljava/util/List;

    invoke-interface {p3, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :goto_3
    iget-object p3, p0, Lcom/transsion/widgets/MultiFlowLayout;->mListener:Lcom/transsion/widgets/MultiFlowLayout$OnTagClickListener;

    if-eqz p3, :cond_5

    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {p3, p2, p1}, Lcom/transsion/widgets/MultiFlowLayout$OnTagClickListener;->onTagClick(Lcom/transsion/widgets/MultiFlowLayout$FlowBean;Ljava/lang/Object;)V

    :cond_5
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method


# virtual methods
.method public getSelectedLabels()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/transsion/widgets/MultiFlowLayout$FlowBean;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/transsion/widgets/MultiFlowLayout;->lableSelected:Ljava/util/List;

    return-object p0
.end method

.method public onLayout(ZIIII)V
    .locals 5

    const/4 p1, 0x0

    move p2, p1

    move p3, p2

    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p5

    if-ge p1, p5, :cond_1

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p5

    invoke-virtual {p5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    add-int/2addr p2, v0

    iget v2, p0, Lcom/transsion/widgets/MultiFlowLayout;->ROW_SPACE:I

    add-int v3, v1, v2

    mul-int/2addr v3, p3

    add-int/2addr v3, v1

    iget v4, p0, Lcom/transsion/widgets/MultiFlowLayout;->LEFT_RIGHT_SPACE:I

    sub-int v4, p4, v4

    if-le p2, v4, :cond_0

    add-int/lit8 p3, p3, 0x1

    iget v4, p0, Lcom/transsion/widgets/MultiFlowLayout;->maxRow:I

    if-ge p3, v4, :cond_0

    add-int/2addr v2, v1

    mul-int/2addr v2, p3

    add-int v3, v2, v1

    move p2, v0

    :cond_0
    sub-int v0, p2, v0

    sub-int v1, v3, v1

    invoke-virtual {p5, v0, v1, p2, v3}, Landroid/view/View;->layout(IIII)V

    iget p5, p0, Lcom/transsion/widgets/MultiFlowLayout;->LEFT_RIGHT_SPACE:I

    add-int/2addr p2, p5

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onMeasure(II)V
    .locals 6

    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->measureChildren(II)V

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    const/high16 v1, 0x40000000    # 2.0f

    if-ne v0, v1, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p2

    const/4 v0, 0x0

    if-gtz p2, :cond_1

    move p2, v0

    goto :goto_2

    :cond_1
    const/4 v1, 0x1

    move v4, p1

    move v2, v0

    move v3, v1

    :goto_0
    if-ge v2, p2, :cond_4

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    if-lt v4, v5, :cond_2

    sub-int/2addr v4, v5

    goto :goto_1

    :cond_2
    iget v4, p0, Lcom/transsion/widgets/MultiFlowLayout;->maxRow:I

    if-ge v3, v4, :cond_3

    add-int/lit8 v3, v3, 0x1

    :cond_3
    sub-int v4, p1, v5

    :goto_1
    iget v5, p0, Lcom/transsion/widgets/MultiFlowLayout;->LEFT_RIGHT_SPACE:I

    sub-int/2addr v4, v5

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result p2

    mul-int/2addr p2, v3

    iget v0, p0, Lcom/transsion/widgets/MultiFlowLayout;->ROW_SPACE:I

    sub-int/2addr v3, v1

    mul-int/2addr v0, v3

    add-int/2addr p2, v0

    :goto_2
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method

.method public setLabels(Ljava/util/List;Z)V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "UseCompatLoadingForDrawables"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/widgets/MultiFlowLayout$FlowBean;",
            ">;Z)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/transsion/widgets/MultiFlowLayout;->labels:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/widgets/MultiFlowLayout;->labels:Ljava/util/List;

    :cond_0
    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/transsion/widgets/MultiFlowLayout;->labels:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object p2, p0, Lcom/transsion/widgets/MultiFlowLayout;->labels:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->clear()V

    iput-object p1, p0, Lcom/transsion/widgets/MultiFlowLayout;->labels:Ljava/util/List;

    iget-object p2, p0, Lcom/transsion/widgets/MultiFlowLayout;->mViews:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->clear()V

    :goto_0
    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/widgets/MultiFlowLayout$FlowBean;

    sget v1, Lcom/transsion/common/R$layout;->layout_item_flow_normal:I

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, v0, Lcom/transsion/widgets/MultiFlowLayout$FlowBean;->value:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/transsion/widgets/MultiFlowLayout;->lableSelected:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setSelected(Z)V

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/transsion/common/R$color;->white:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setSelected(Z)V

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/transsion/common/R$color;->black_65:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_2
    new-instance v2, Lks6;

    invoke-direct {v2, p0, v1, v0}, Lks6;-><init>(Lcom/transsion/widgets/MultiFlowLayout;Landroid/widget/TextView;Lcom/transsion/widgets/MultiFlowLayout$FlowBean;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/transsion/widgets/MultiFlowLayout;->mViews:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_1

    :cond_3
    return-void
.end method

.method public setMaxRow(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/widgets/MultiFlowLayout;->maxRow:I

    return-void
.end method

.method public setNormal(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/widgets/MultiFlowLayout;->isNormal:Z

    return-void
.end method

.method public setOnTagClickListener(Lcom/transsion/widgets/MultiFlowLayout$OnTagClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/widgets/MultiFlowLayout;->mListener:Lcom/transsion/widgets/MultiFlowLayout$OnTagClickListener;

    return-void
.end method
