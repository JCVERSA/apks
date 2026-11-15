.class public Lcom/mgadplus/viewgroup/dynamicview/VoteProgressBar;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"


# instance fields
.field public b:Landroid/view/View;

.field public c:Landroid/view/View;

.field public d:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public static synthetic a(Lcom/mgadplus/viewgroup/dynamicview/VoteProgressBar;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/mgadplus/viewgroup/dynamicview/VoteProgressBar;->setProgressWithanin(I)V

    return-void
.end method

.method private setProgressWithanin(I)V
    .locals 5

    iget-object v0, p0, Lcom/mgadplus/viewgroup/dynamicview/VoteProgressBar;->b:Landroid/view/View;

    if-nez v0, :cond_0

    sget v0, Lcom/mgmi/R$id;->progresscolor:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/mgadplus/viewgroup/dynamicview/VoteProgressBar;->b:Landroid/view/View;

    :cond_0
    iget-object v0, p0, Lcom/mgadplus/viewgroup/dynamicview/VoteProgressBar;->c:Landroid/view/View;

    if-nez v0, :cond_1

    sget v0, Lcom/mgmi/R$id;->progressindicator:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/mgadplus/viewgroup/dynamicview/VoteProgressBar;->c:Landroid/view/View;

    :cond_1
    iget-object v0, p0, Lcom/mgadplus/viewgroup/dynamicview/VoteProgressBar;->d:Landroid/widget/TextView;

    if-nez v0, :cond_2

    sget v0, Lcom/mgmi/R$id;->progressText:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mgadplus/viewgroup/dynamicview/VoteProgressBar;->d:Landroid/widget/TextView;

    :cond_2
    iget-object v0, p0, Lcom/mgadplus/viewgroup/dynamicview/VoteProgressBar;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    int-to-double v1, p1

    const-wide/high16 v3, 0x4059000000000000L    # 100.0

    div-double/2addr v1, v3

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-double v3, v3

    mul-double/2addr v1, v3

    double-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v0

    iget-object v1, p0, Lcom/mgadplus/viewgroup/dynamicview/VoteProgressBar;->b:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/mgadplus/viewgroup/dynamicview/VoteProgressBar;->c:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/mgadplus/viewgroup/dynamicview/VoteProgressBar;->d:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "%"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/mgadplus/viewgroup/dynamicview/VoteProgressBar;->c:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout$LayoutParams;

    iput v0, p1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    iget-object p1, p0, Lcom/mgadplus/viewgroup/dynamicview/VoteProgressBar;->d:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    const/high16 v1, 0x40a00000    # 5.0f

    invoke-static {p0, v1}, Lw3d;->a(Landroid/content/Context;F)I

    move-result p0

    add-int/2addr v0, p0

    iput v0, p1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    return-void
.end method


# virtual methods
.method public setProgress(I)V
    .locals 2

    const/4 v0, 0x0

    filled-new-array {v0, p1}, [I

    move-result-object p1

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object p1

    const-wide/16 v0, 0xc8

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object p1

    new-instance v0, Lcom/mgadplus/viewgroup/dynamicview/VoteProgressBar$a;

    invoke-direct {v0, p0}, Lcom/mgadplus/viewgroup/dynamicview/VoteProgressBar$a;-><init>(Lcom/mgadplus/viewgroup/dynamicview/VoteProgressBar;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method
