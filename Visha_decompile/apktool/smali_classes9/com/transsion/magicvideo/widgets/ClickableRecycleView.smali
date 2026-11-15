.class public Lcom/transsion/magicvideo/widgets/ClickableRecycleView;
.super Landroidx/recyclerview/widget/RecyclerView;
.source "SourceFile"


# instance fields
.field public e:Z

.field public f:Landroid/view/GestureDetector;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lcom/transsion/magicvideo/widgets/ClickableRecycleView;->e:Z

    .line 3
    new-instance p1, Landroid/view/GestureDetector;

    new-instance v0, Lcom/transsion/magicvideo/widgets/ClickableRecycleView$a;

    invoke-direct {v0, p0}, Lcom/transsion/magicvideo/widgets/ClickableRecycleView$a;-><init>(Lcom/transsion/magicvideo/widgets/ClickableRecycleView;)V

    invoke-direct {p1, v0}, Landroid/view/GestureDetector;-><init>(Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object p1, p0, Lcom/transsion/magicvideo/widgets/ClickableRecycleView;->f:Landroid/view/GestureDetector;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 4
    invoke-direct {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 5
    iput-boolean p1, p0, Lcom/transsion/magicvideo/widgets/ClickableRecycleView;->e:Z

    .line 6
    new-instance p1, Landroid/view/GestureDetector;

    new-instance p2, Lcom/transsion/magicvideo/widgets/ClickableRecycleView$a;

    invoke-direct {p2, p0}, Lcom/transsion/magicvideo/widgets/ClickableRecycleView$a;-><init>(Lcom/transsion/magicvideo/widgets/ClickableRecycleView;)V

    invoke-direct {p1, p2}, Landroid/view/GestureDetector;-><init>(Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object p1, p0, Lcom/transsion/magicvideo/widgets/ClickableRecycleView;->f:Landroid/view/GestureDetector;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 7
    invoke-direct {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 8
    iput-boolean p1, p0, Lcom/transsion/magicvideo/widgets/ClickableRecycleView;->e:Z

    .line 9
    new-instance p1, Landroid/view/GestureDetector;

    new-instance p2, Lcom/transsion/magicvideo/widgets/ClickableRecycleView$a;

    invoke-direct {p2, p0}, Lcom/transsion/magicvideo/widgets/ClickableRecycleView$a;-><init>(Lcom/transsion/magicvideo/widgets/ClickableRecycleView;)V

    invoke-direct {p1, p2}, Landroid/view/GestureDetector;-><init>(Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object p1, p0, Lcom/transsion/magicvideo/widgets/ClickableRecycleView;->f:Landroid/view/GestureDetector;

    const/16 p1, 0x1e

    .line 10
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setItemViewCacheSize(I)V

    return-void
.end method

.method public static bridge synthetic a(Lcom/transsion/magicvideo/widgets/ClickableRecycleView;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/magicvideo/widgets/ClickableRecycleView;->e:Z

    return p0
.end method


# virtual methods
.method public final b()Z
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->orientation:I

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public fling(II)Z
    .locals 0

    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->fling(II)Z

    move-result p0

    return p0
.end method

.method public getLeftFadingEdgeStrength()F
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/magicvideo/widgets/ClickableRecycleView;->b()Z

    move-result p0

    if-eqz p0, :cond_0

    const/high16 p0, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getMaxFlingVelocity()I
    .locals 0

    invoke-super {p0}, Landroidx/recyclerview/widget/RecyclerView;->getMaxFlingVelocity()I

    move-result p0

    return p0
.end method

.method public getRightFadingEdgeStrength()F
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onScrolled(II)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->onScrolled(II)V

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    const/16 p2, 0xa

    if-ge p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/transsion/magicvideo/widgets/ClickableRecycleView;->e:Z

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/ClickableRecycleView;->f:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "e_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ClickableRecycleView"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method
