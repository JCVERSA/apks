.class public Lcom/questionnaire/sdk/view/ScoreView;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/questionnaire/sdk/view/ScoreView$b;
    }
.end annotation


# instance fields
.field public b:I

.field public c:I

.field public d:I

.field public e:I

.field public f:I

.field public g:I

.field public h:I

.field public i:I

.field public j:I

.field public k:I

.field public l:I

.field public m:Z

.field public n:Lcom/questionnaire/sdk/view/ScoreView$b;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/16 v0, 0x4c

    .line 2
    iput v0, p0, Lcom/questionnaire/sdk/view/ScoreView;->b:I

    const/16 v0, 0x3c

    .line 3
    iput v0, p0, Lcom/questionnaire/sdk/view/ScoreView;->c:I

    const/16 v0, 0x8

    .line 4
    iput v0, p0, Lcom/questionnaire/sdk/view/ScoreView;->d:I

    const v0, -0xdc8701

    .line 5
    iput v0, p0, Lcom/questionnaire/sdk/view/ScoreView;->e:I

    const v0, -0x23211b

    .line 6
    iput v0, p0, Lcom/questionnaire/sdk/view/ScoreView;->f:I

    const/4 v0, -0x1

    .line 7
    iput v0, p0, Lcom/questionnaire/sdk/view/ScoreView;->i:I

    const/16 v0, 0x1c

    .line 8
    iput v0, p0, Lcom/questionnaire/sdk/view/ScoreView;->j:I

    const/4 v0, 0x7

    .line 9
    iput v0, p0, Lcom/questionnaire/sdk/view/ScoreView;->k:I

    const/4 v0, 0x0

    .line 10
    iput v0, p0, Lcom/questionnaire/sdk/view/ScoreView;->l:I

    const/4 v0, 0x1

    .line 11
    iput-boolean v0, p0, Lcom/questionnaire/sdk/view/ScoreView;->m:Z

    .line 12
    invoke-virtual {p0, p1, p2}, Lcom/questionnaire/sdk/view/ScoreView;->d(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 13
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/16 p3, 0x4c

    .line 14
    iput p3, p0, Lcom/questionnaire/sdk/view/ScoreView;->b:I

    const/16 p3, 0x3c

    .line 15
    iput p3, p0, Lcom/questionnaire/sdk/view/ScoreView;->c:I

    const/16 p3, 0x8

    .line 16
    iput p3, p0, Lcom/questionnaire/sdk/view/ScoreView;->d:I

    const p3, -0xdc8701

    .line 17
    iput p3, p0, Lcom/questionnaire/sdk/view/ScoreView;->e:I

    const p3, -0x23211b

    .line 18
    iput p3, p0, Lcom/questionnaire/sdk/view/ScoreView;->f:I

    const/4 p3, -0x1

    .line 19
    iput p3, p0, Lcom/questionnaire/sdk/view/ScoreView;->i:I

    const/16 p3, 0x1c

    .line 20
    iput p3, p0, Lcom/questionnaire/sdk/view/ScoreView;->j:I

    const/4 p3, 0x7

    .line 21
    iput p3, p0, Lcom/questionnaire/sdk/view/ScoreView;->k:I

    const/4 p3, 0x0

    .line 22
    iput p3, p0, Lcom/questionnaire/sdk/view/ScoreView;->l:I

    const/4 p3, 0x1

    .line 23
    iput-boolean p3, p0, Lcom/questionnaire/sdk/view/ScoreView;->m:Z

    .line 24
    invoke-virtual {p0, p1, p2}, Lcom/questionnaire/sdk/view/ScoreView;->d(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public static synthetic a(Lcom/questionnaire/sdk/view/ScoreView;)V
    .locals 0

    invoke-virtual {p0}, Lcom/questionnaire/sdk/view/ScoreView;->e()V

    return-void
.end method

.method public static synthetic b(Lcom/questionnaire/sdk/view/ScoreView;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/questionnaire/sdk/view/ScoreView;->setSelectedScores(I)V

    return-void
.end method

.method public static synthetic c(Lcom/questionnaire/sdk/view/ScoreView;)Lcom/questionnaire/sdk/view/ScoreView$b;
    .locals 0

    iget-object p0, p0, Lcom/questionnaire/sdk/view/ScoreView;->n:Lcom/questionnaire/sdk/view/ScoreView$b;

    return-object p0
.end method

.method private setSelectedScores(I)V
    .locals 3

    if-gtz p1, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setSelectedScores error, selectNum: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ScoreView"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/questionnaire/sdk/view/ScoreView;->m:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_1

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget v2, p0, Lcom/questionnaire/sdk/view/ScoreView;->e:I

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public final d(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    sget-object v1, Lcom/questionnaire/sdk/R$styleable;->Questionsdk_ScoreView:[I

    invoke-virtual {p1, p2, v1, v0, v0}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result p2

    :goto_0
    if-ge v0, p2, :cond_b

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v1

    sget v2, Lcom/questionnaire/sdk/R$styleable;->Questionsdk_ScoreView_item_width:I

    if-ne v1, v2, :cond_0

    iget v2, p0, Lcom/questionnaire/sdk/view/ScoreView;->b:I

    int-to-float v2, v2

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/questionnaire/sdk/view/ScoreView;->b:I

    goto/16 :goto_1

    :cond_0
    sget v2, Lcom/questionnaire/sdk/R$styleable;->Questionsdk_ScoreView_item_height:I

    if-ne v1, v2, :cond_1

    iget v2, p0, Lcom/questionnaire/sdk/view/ScoreView;->c:I

    int-to-float v2, v2

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/questionnaire/sdk/view/ScoreView;->c:I

    goto/16 :goto_1

    :cond_1
    sget v2, Lcom/questionnaire/sdk/R$styleable;->Questionsdk_ScoreView_item_margin_horizontal:I

    if-ne v1, v2, :cond_2

    iget v2, p0, Lcom/questionnaire/sdk/view/ScoreView;->d:I

    int-to-float v2, v2

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/questionnaire/sdk/view/ScoreView;->d:I

    goto/16 :goto_1

    :cond_2
    sget v2, Lcom/questionnaire/sdk/R$styleable;->Questionsdk_ScoreView_selected_color:I

    if-ne v1, v2, :cond_3

    iget v2, p0, Lcom/questionnaire/sdk/view/ScoreView;->e:I

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/questionnaire/sdk/view/ScoreView;->e:I

    goto :goto_1

    :cond_3
    sget v2, Lcom/questionnaire/sdk/R$styleable;->Questionsdk_ScoreView_unselected_color:I

    if-ne v1, v2, :cond_4

    iget v2, p0, Lcom/questionnaire/sdk/view/ScoreView;->f:I

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/questionnaire/sdk/view/ScoreView;->f:I

    goto :goto_1

    :cond_4
    sget v2, Lcom/questionnaire/sdk/R$styleable;->Questionsdk_ScoreView_selected_image_id:I

    if-ne v1, v2, :cond_5

    iget v2, p0, Lcom/questionnaire/sdk/view/ScoreView;->g:I

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/questionnaire/sdk/view/ScoreView;->g:I

    goto :goto_1

    :cond_5
    sget v2, Lcom/questionnaire/sdk/R$styleable;->Questionsdk_ScoreView_unselected_image_id:I

    if-ne v1, v2, :cond_6

    iget v2, p0, Lcom/questionnaire/sdk/view/ScoreView;->h:I

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/questionnaire/sdk/view/ScoreView;->h:I

    goto :goto_1

    :cond_6
    sget v2, Lcom/questionnaire/sdk/R$styleable;->Questionsdk_ScoreView_text_color:I

    if-ne v1, v2, :cond_7

    iget v2, p0, Lcom/questionnaire/sdk/view/ScoreView;->i:I

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/questionnaire/sdk/view/ScoreView;->i:I

    goto :goto_1

    :cond_7
    sget v2, Lcom/questionnaire/sdk/R$styleable;->Questionsdk_ScoreView_text_size:I

    if-ne v1, v2, :cond_8

    iget v2, p0, Lcom/questionnaire/sdk/view/ScoreView;->j:I

    int-to-float v2, v2

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/questionnaire/sdk/view/ScoreView;->j:I

    goto :goto_1

    :cond_8
    sget v2, Lcom/questionnaire/sdk/R$styleable;->Questionsdk_ScoreView_total_scores:I

    if-ne v1, v2, :cond_9

    iget v2, p0, Lcom/questionnaire/sdk/view/ScoreView;->k:I

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/questionnaire/sdk/view/ScoreView;->k:I

    goto :goto_1

    :cond_9
    sget v2, Lcom/questionnaire/sdk/R$styleable;->Questionsdk_ScoreView_selected_scores:I

    if-ne v1, v2, :cond_a

    iget v2, p0, Lcom/questionnaire/sdk/view/ScoreView;->l:I

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/questionnaire/sdk/view/ScoreView;->l:I

    :cond_a
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_b
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public final e()V
    .locals 4

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iget v3, p0, Lcom/questionnaire/sdk/view/ScoreView;->f:I

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundColor(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final f(Landroid/widget/TextView;I)V
    .locals 1

    if-eqz p1, :cond_0

    new-instance v0, Lcom/questionnaire/sdk/view/ScoreView$a;

    invoke-direct {v0, p0, p2}, Lcom/questionnaire/sdk/view/ScoreView$a;-><init>(Lcom/questionnaire/sdk/view/ScoreView;I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method public getItemHeight()I
    .locals 0

    iget p0, p0, Lcom/questionnaire/sdk/view/ScoreView;->c:I

    return p0
.end method

.method public getItemWidth()I
    .locals 0

    iget p0, p0, Lcom/questionnaire/sdk/view/ScoreView;->b:I

    return p0
.end method

.method public getSelectedImageId()I
    .locals 0

    iget p0, p0, Lcom/questionnaire/sdk/view/ScoreView;->g:I

    return p0
.end method

.method public getSelectedItemListener()Lcom/questionnaire/sdk/view/ScoreView$b;
    .locals 0

    iget-object p0, p0, Lcom/questionnaire/sdk/view/ScoreView;->n:Lcom/questionnaire/sdk/view/ScoreView$b;

    return-object p0
.end method

.method public getUnSelectedImageId()I
    .locals 0

    iget p0, p0, Lcom/questionnaire/sdk/view/ScoreView;->h:I

    return p0
.end method

.method public onFinishInflate()V
    .locals 1

    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    iget v0, p0, Lcom/questionnaire/sdk/view/ScoreView;->k:I

    invoke-virtual {p0, v0}, Lcom/questionnaire/sdk/view/ScoreView;->setTotalScores(I)V

    iget v0, p0, Lcom/questionnaire/sdk/view/ScoreView;->l:I

    invoke-direct {p0, v0}, Lcom/questionnaire/sdk/view/ScoreView;->setSelectedScores(I)V

    return-void
.end method

.method public setItemHeight(I)V
    .locals 0

    iput p1, p0, Lcom/questionnaire/sdk/view/ScoreView;->c:I

    return-void
.end method

.method public setItemWidth(I)V
    .locals 0

    iput p1, p0, Lcom/questionnaire/sdk/view/ScoreView;->b:I

    return-void
.end method

.method public setSelectedImageId(I)V
    .locals 0

    iput p1, p0, Lcom/questionnaire/sdk/view/ScoreView;->g:I

    return-void
.end method

.method public setSelectedScoreListener(Lcom/questionnaire/sdk/view/ScoreView$b;)V
    .locals 0

    iput-object p1, p0, Lcom/questionnaire/sdk/view/ScoreView;->n:Lcom/questionnaire/sdk/view/ScoreView$b;

    return-void
.end method

.method public setTotalScores(I)V
    .locals 5

    if-gtz p1, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setTotalScores error, totalNum: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ScoreView"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->removeAllViews()V

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_1

    new-instance v1, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    iget v3, p0, Lcom/questionnaire/sdk/view/ScoreView;->b:I

    iget v4, p0, Lcom/questionnaire/sdk/view/ScoreView;->c:I

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget v3, p0, Lcom/questionnaire/sdk/view/ScoreView;->d:I

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget v2, p0, Lcom/questionnaire/sdk/view/ScoreView;->f:I

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    iget v2, p0, Lcom/questionnaire/sdk/view/ScoreView;->i:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    iget v2, p0, Lcom/questionnaire/sdk/view/ScoreView;->j:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextSize(F)V

    add-int/lit8 v2, v0, 0x1

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v3, 0x11

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setGravity(I)V

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {p0, v1, v0}, Lcom/questionnaire/sdk/view/ScoreView;->f(Landroid/widget/TextView;I)V

    move v0, v2

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setUnSelectedImageId(I)V
    .locals 0

    iput p1, p0, Lcom/questionnaire/sdk/view/ScoreView;->h:I

    return-void
.end method
