.class public Lcom/transsion/widgetslib/widget/elasticitylistView/ElasticityListView;
.super Landroid/widget/ListView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/widgetslib/widget/elasticitylistView/ElasticityListView$a;
    }
.end annotation


# instance fields
.field public b:F

.field public c:F

.field public d:I

.field public e:I

.field public f:F

.field public g:F

.field public h:Lcom/transsion/widgetslib/widget/elasticitylistView/ElasticityListView$a;

.field public i:Landroid/widget/AbsListView$OnScrollListener;

.field public j:I

.field public k:Lgm5;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 2
    iput p1, p0, Lcom/transsion/widgetslib/widget/elasticitylistView/ElasticityListView;->b:F

    const/high16 v0, 0x3f800000    # 1.0f

    .line 3
    iput v0, p0, Lcom/transsion/widgetslib/widget/elasticitylistView/ElasticityListView;->c:F

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Lcom/transsion/widgetslib/widget/elasticitylistView/ElasticityListView;->d:I

    .line 5
    iput v0, p0, Lcom/transsion/widgetslib/widget/elasticitylistView/ElasticityListView;->e:I

    .line 6
    iput p1, p0, Lcom/transsion/widgetslib/widget/elasticitylistView/ElasticityListView;->f:F

    .line 7
    iput p1, p0, Lcom/transsion/widgetslib/widget/elasticitylistView/ElasticityListView;->g:F

    .line 8
    iput v0, p0, Lcom/transsion/widgetslib/widget/elasticitylistView/ElasticityListView;->j:I

    .line 9
    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/elasticitylistView/ElasticityListView;->e()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 10
    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 11
    iput p1, p0, Lcom/transsion/widgetslib/widget/elasticitylistView/ElasticityListView;->b:F

    const/high16 p2, 0x3f800000    # 1.0f

    .line 12
    iput p2, p0, Lcom/transsion/widgetslib/widget/elasticitylistView/ElasticityListView;->c:F

    const/4 p2, 0x0

    .line 13
    iput p2, p0, Lcom/transsion/widgetslib/widget/elasticitylistView/ElasticityListView;->d:I

    .line 14
    iput p2, p0, Lcom/transsion/widgetslib/widget/elasticitylistView/ElasticityListView;->e:I

    .line 15
    iput p1, p0, Lcom/transsion/widgetslib/widget/elasticitylistView/ElasticityListView;->f:F

    .line 16
    iput p1, p0, Lcom/transsion/widgetslib/widget/elasticitylistView/ElasticityListView;->g:F

    .line 17
    iput p2, p0, Lcom/transsion/widgetslib/widget/elasticitylistView/ElasticityListView;->j:I

    .line 18
    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/elasticitylistView/ElasticityListView;->e()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 19
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 20
    iput p1, p0, Lcom/transsion/widgetslib/widget/elasticitylistView/ElasticityListView;->b:F

    const/high16 p2, 0x3f800000    # 1.0f

    .line 21
    iput p2, p0, Lcom/transsion/widgetslib/widget/elasticitylistView/ElasticityListView;->c:F

    const/4 p2, 0x0

    .line 22
    iput p2, p0, Lcom/transsion/widgetslib/widget/elasticitylistView/ElasticityListView;->d:I

    .line 23
    iput p2, p0, Lcom/transsion/widgetslib/widget/elasticitylistView/ElasticityListView;->e:I

    .line 24
    iput p1, p0, Lcom/transsion/widgetslib/widget/elasticitylistView/ElasticityListView;->f:F

    .line 25
    iput p1, p0, Lcom/transsion/widgetslib/widget/elasticitylistView/ElasticityListView;->g:F

    .line 26
    iput p2, p0, Lcom/transsion/widgetslib/widget/elasticitylistView/ElasticityListView;->j:I

    .line 27
    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/elasticitylistView/ElasticityListView;->e()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 28
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p1, 0x0

    .line 29
    iput p1, p0, Lcom/transsion/widgetslib/widget/elasticitylistView/ElasticityListView;->b:F

    const/high16 p2, 0x3f800000    # 1.0f

    .line 30
    iput p2, p0, Lcom/transsion/widgetslib/widget/elasticitylistView/ElasticityListView;->c:F

    const/4 p2, 0x0

    .line 31
    iput p2, p0, Lcom/transsion/widgetslib/widget/elasticitylistView/ElasticityListView;->d:I

    .line 32
    iput p2, p0, Lcom/transsion/widgetslib/widget/elasticitylistView/ElasticityListView;->e:I

    .line 33
    iput p1, p0, Lcom/transsion/widgetslib/widget/elasticitylistView/ElasticityListView;->f:F

    .line 34
    iput p1, p0, Lcom/transsion/widgetslib/widget/elasticitylistView/ElasticityListView;->g:F

    .line 35
    iput p2, p0, Lcom/transsion/widgetslib/widget/elasticitylistView/ElasticityListView;->j:I

    .line 36
    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/elasticitylistView/ElasticityListView;->e()V

    return-void
.end method

.method public static bridge synthetic a(Lcom/transsion/widgetslib/widget/elasticitylistView/ElasticityListView;)Landroid/widget/AbsListView$OnScrollListener;
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgetslib/widget/elasticitylistView/ElasticityListView;->i:Landroid/widget/AbsListView$OnScrollListener;

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/transsion/widgetslib/widget/elasticitylistView/ElasticityListView;I)V
    .locals 0

    iput p1, p0, Lcom/transsion/widgetslib/widget/elasticitylistView/ElasticityListView;->d:I

    return-void
.end method

.method public static bridge synthetic c(Lcom/transsion/widgetslib/widget/elasticitylistView/ElasticityListView;I)V
    .locals 0

    iput p1, p0, Lcom/transsion/widgetslib/widget/elasticitylistView/ElasticityListView;->e:I

    return-void
.end method

.method public static bridge synthetic d(Lcom/transsion/widgetslib/widget/elasticitylistView/ElasticityListView;)V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/elasticitylistView/ElasticityListView;->g()V

    return-void
.end method


# virtual methods
.method public final e()V
    .locals 2

    new-instance v0, Lgm5;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lgm5;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/transsion/widgetslib/widget/elasticitylistView/ElasticityListView;->k:Lgm5;

    new-instance v0, Lcom/transsion/widgetslib/widget/elasticitylistView/ElasticityListView$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/transsion/widgetslib/widget/elasticitylistView/ElasticityListView$a;-><init>(Lcom/transsion/widgetslib/widget/elasticitylistView/ElasticityListView;Lk83;)V

    iput-object v0, p0, Lcom/transsion/widgetslib/widget/elasticitylistView/ElasticityListView;->h:Lcom/transsion/widgetslib/widget/elasticitylistView/ElasticityListView$a;

    invoke-super {p0, v0}, Landroid/widget/AbsListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    return-void
.end method

.method public final f(F)Z
    .locals 7

    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/elasticitylistView/ElasticityListView;->isReachedFirstItemEdge()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const v3, 0x3dcccccd    # 0.1f

    const/4 v4, 0x0

    const v5, 0x3f8ccccd    # 1.1f

    const/high16 v6, 0x3f800000    # 1.0f

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/elasticitylistView/ElasticityListView;->isReachedLastItemEdge()Z

    move-result v0

    if-eqz v0, :cond_5

    cmpl-float v0, p1, v1

    if-lez v0, :cond_2

    iput v1, p0, Lcom/transsion/widgetslib/widget/elasticitylistView/ElasticityListView;->b:F

    invoke-virtual {p0, v1}, Landroid/view/View;->setPivotY(F)V

    mul-float/2addr p1, v3

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr p1, v0

    add-float/2addr p1, v6

    iput p1, p0, Lcom/transsion/widgetslib/widget/elasticitylistView/ElasticityListView;->c:F

    cmpg-float v0, p1, v6

    if-gez v0, :cond_0

    iput v6, p0, Lcom/transsion/widgetslib/widget/elasticitylistView/ElasticityListView;->c:F

    return v4

    :cond_0
    cmpl-float p1, p1, v5

    if-lez p1, :cond_1

    iput v5, p0, Lcom/transsion/widgetslib/widget/elasticitylistView/ElasticityListView;->c:F

    :cond_1
    iget p1, p0, Lcom/transsion/widgetslib/widget/elasticitylistView/ElasticityListView;->c:F

    invoke-virtual {p0, p1}, Landroid/view/View;->setScaleY(F)V

    return v2

    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/transsion/widgetslib/widget/elasticitylistView/ElasticityListView;->b:F

    invoke-virtual {p0, v0}, Landroid/view/View;->setPivotY(F)V

    mul-float/2addr p1, v3

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr p1, v0

    sub-float p1, v6, p1

    iput p1, p0, Lcom/transsion/widgetslib/widget/elasticitylistView/ElasticityListView;->c:F

    cmpg-float v0, p1, v6

    if-gez v0, :cond_3

    iput v6, p0, Lcom/transsion/widgetslib/widget/elasticitylistView/ElasticityListView;->c:F

    return v4

    :cond_3
    cmpl-float p1, p1, v5

    if-lez p1, :cond_4

    iput v5, p0, Lcom/transsion/widgetslib/widget/elasticitylistView/ElasticityListView;->c:F

    :cond_4
    iget p1, p0, Lcom/transsion/widgetslib/widget/elasticitylistView/ElasticityListView;->c:F

    invoke-virtual {p0, p1}, Landroid/view/View;->setScaleY(F)V

    return v2

    :cond_5
    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/elasticitylistView/ElasticityListView;->isReachedFirstItemEdge()Z

    move-result v0

    if-eqz v0, :cond_8

    iput v1, p0, Lcom/transsion/widgetslib/widget/elasticitylistView/ElasticityListView;->b:F

    invoke-virtual {p0, v1}, Landroid/view/View;->setPivotY(F)V

    mul-float/2addr p1, v3

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr p1, v0

    add-float/2addr p1, v6

    iput p1, p0, Lcom/transsion/widgetslib/widget/elasticitylistView/ElasticityListView;->c:F

    cmpg-float v0, p1, v6

    if-gez v0, :cond_6

    iput v6, p0, Lcom/transsion/widgetslib/widget/elasticitylistView/ElasticityListView;->c:F

    return v4

    :cond_6
    cmpl-float p1, p1, v5

    if-lez p1, :cond_7

    iput v5, p0, Lcom/transsion/widgetslib/widget/elasticitylistView/ElasticityListView;->c:F

    :cond_7
    iget p1, p0, Lcom/transsion/widgetslib/widget/elasticitylistView/ElasticityListView;->c:F

    invoke-virtual {p0, p1}, Landroid/view/View;->setScaleY(F)V

    return v2

    :cond_8
    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/elasticitylistView/ElasticityListView;->isReachedLastItemEdge()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/transsion/widgetslib/widget/elasticitylistView/ElasticityListView;->b:F

    invoke-virtual {p0, v0}, Landroid/view/View;->setPivotY(F)V

    mul-float/2addr p1, v3

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr p1, v0

    sub-float p1, v6, p1

    iput p1, p0, Lcom/transsion/widgetslib/widget/elasticitylistView/ElasticityListView;->c:F

    cmpg-float v0, p1, v6

    if-gez v0, :cond_9

    iput v6, p0, Lcom/transsion/widgetslib/widget/elasticitylistView/ElasticityListView;->c:F

    return v4

    :cond_9
    cmpl-float p1, p1, v5

    if-lez p1, :cond_a

    iput v5, p0, Lcom/transsion/widgetslib/widget/elasticitylistView/ElasticityListView;->c:F

    :cond_a
    iget p1, p0, Lcom/transsion/widgetslib/widget/elasticitylistView/ElasticityListView;->c:F

    invoke-virtual {p0, p1}, Landroid/view/View;->setScaleY(F)V

    return v2

    :cond_b
    return v4
.end method

.method public final g()V
    .locals 4

    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/elasticitylistView/ElasticityListView;->isReachedFirstItemEdge()Z

    move-result v0

    const v1, 0x3f828f5c    # 1.02f

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lcom/transsion/widgetslib/widget/elasticitylistView/ElasticityListView;->b:F

    iput v1, p0, Lcom/transsion/widgetslib/widget/elasticitylistView/ElasticityListView;->c:F

    :cond_0
    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/elasticitylistView/ElasticityListView;->isReachedLastItemEdge()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/transsion/widgetslib/widget/elasticitylistView/ElasticityListView;->b:F

    iput v1, p0, Lcom/transsion/widgetslib/widget/elasticitylistView/ElasticityListView;->c:F

    :cond_1
    iget v0, p0, Lcom/transsion/widgetslib/widget/elasticitylistView/ElasticityListView;->c:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v2, v0, v1

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/transsion/widgetslib/widget/elasticitylistView/ElasticityListView;->k:Lgm5;

    iget v3, p0, Lcom/transsion/widgetslib/widget/elasticitylistView/ElasticityListView;->b:F

    invoke-virtual {v2, p0, v0, v3}, Lgm5;->c(Landroid/view/View;FF)V

    iput v1, p0, Lcom/transsion/widgetslib/widget/elasticitylistView/ElasticityListView;->c:F

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_2
    return-void
.end method

.method public isReachedFirstItemEdge()Z
    .locals 2

    invoke-virtual {p0}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/transsion/widgetslib/widget/elasticitylistView/ElasticityListView;->d:I

    if-nez v0, :cond_0

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result p0

    add-int/2addr v0, p0

    if-ltz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public isReachedLastItemEdge()Z
    .locals 6

    invoke-virtual {p0}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/AdapterView;->getLastVisiblePosition()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/AdapterView;->getCount()I

    move-result v2

    add-int/lit8 v3, v2, -0x1

    const/4 v4, 0x0

    if-eq v1, v3, :cond_0

    iget v3, p0, Lcom/transsion/widgetslib/widget/elasticitylistView/ElasticityListView;->d:I

    iget v5, p0, Lcom/transsion/widgetslib/widget/elasticitylistView/ElasticityListView;->e:I

    add-int/2addr v3, v5

    if-ne v3, v2, :cond_1

    :cond_0
    sub-int/2addr v1, v0

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result p0

    add-int/2addr v0, p0

    if-lt v1, v0, :cond_1

    const/4 v4, 0x1

    :cond_1
    return v4
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    iget-object p1, p0, Lcom/transsion/widgetslib/widget/elasticitylistView/ElasticityListView;->k:Lgm5;

    invoke-virtual {p1}, Lgm5;->b()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/transsion/widgetslib/widget/elasticitylistView/ElasticityListView;->k:Lgm5;

    invoke-virtual {p1}, Lgm5;->g()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    if-eqz v0, :cond_4

    if-eq v0, v1, :cond_3

    const/4 v4, 0x2

    if-eq v0, v4, :cond_0

    const/4 v4, 0x3

    if-eq v0, v4, :cond_3

    goto/16 :goto_0

    :cond_0
    iget v0, p0, Lcom/transsion/widgetslib/widget/elasticitylistView/ElasticityListView;->f:F

    cmpl-float v0, v0, v2

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/transsion/widgetslib/widget/elasticitylistView/ElasticityListView;->f:F

    iput v3, p0, Lcom/transsion/widgetslib/widget/elasticitylistView/ElasticityListView;->c:F

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget v2, p0, Lcom/transsion/widgetslib/widget/elasticitylistView/ElasticityListView;->f:F

    sub-float/2addr v0, v2

    iput v0, p0, Lcom/transsion/widgetslib/widget/elasticitylistView/ElasticityListView;->g:F

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-lez v0, :cond_6

    iget v0, p0, Lcom/transsion/widgetslib/widget/elasticitylistView/ElasticityListView;->g:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v2, 0x41200000    # 10.0f

    cmpl-float v0, v0, v2

    if-lez v0, :cond_6

    iget v0, p0, Lcom/transsion/widgetslib/widget/elasticitylistView/ElasticityListView;->g:F

    invoke-virtual {p0, v0}, Lcom/transsion/widgetslib/widget/elasticitylistView/ElasticityListView;->f(F)Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setPressed(Z)V

    iget v2, p0, Lcom/transsion/widgetslib/widget/elasticitylistView/ElasticityListView;->j:I

    invoke-virtual {p0}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    move-result v4

    sub-int/2addr v2, v4

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v2, v0}, Landroid/view/View;->setPressed(Z)V

    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->onCancelPendingInputEvents()V

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->getScaleY()F

    move-result v0

    cmpl-float v0, v0, v3

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/elasticitylistView/ElasticityListView;->k:Lgm5;

    invoke-virtual {p0}, Landroid/view/View;->getScaleY()F

    move-result v4

    iget v5, p0, Lcom/transsion/widgetslib/widget/elasticitylistView/ElasticityListView;->b:F

    invoke-virtual {v0, p0, v4, v5}, Lgm5;->d(Landroid/view/View;FF)V

    iput v3, p0, Lcom/transsion/widgetslib/widget/elasticitylistView/ElasticityListView;->c:F

    iput v2, p0, Lcom/transsion/widgetslib/widget/elasticitylistView/ElasticityListView;->f:F

    iput v2, p0, Lcom/transsion/widgetslib/widget/elasticitylistView/ElasticityListView;->g:F

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/elasticitylistView/ElasticityListView;->k:Lgm5;

    invoke-virtual {v0}, Lgm5;->b()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/elasticitylistView/ElasticityListView;->k:Lgm5;

    invoke-virtual {v0}, Lgm5;->a()V

    :cond_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/transsion/widgetslib/widget/elasticitylistView/ElasticityListView;->f:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    iget v4, p0, Lcom/transsion/widgetslib/widget/elasticitylistView/ElasticityListView;->f:F

    float-to-int v4, v4

    invoke-virtual {p0, v0, v4}, Landroid/widget/AbsListView;->pointToPosition(II)I

    move-result v0

    iput v0, p0, Lcom/transsion/widgetslib/widget/elasticitylistView/ElasticityListView;->j:I

    iput v3, p0, Lcom/transsion/widgetslib/widget/elasticitylistView/ElasticityListView;->c:F

    iput v2, p0, Lcom/transsion/widgetslib/widget/elasticitylistView/ElasticityListView;->g:F

    :cond_6
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getScaleY()F

    move-result v0

    sub-float/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const v2, 0x3c23d70a    # 0.01f

    cmpl-float v0, v0, v2

    if-lez v0, :cond_7

    return v1

    :cond_7
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/widgetslib/widget/elasticitylistView/ElasticityListView;->i:Landroid/widget/AbsListView$OnScrollListener;

    return-void
.end method
