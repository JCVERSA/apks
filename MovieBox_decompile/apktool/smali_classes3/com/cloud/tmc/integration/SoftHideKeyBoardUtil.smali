.class public Lcom/cloud/tmc/integration/SoftHideKeyBoardUtil;
.super Ljava/lang/Object;
.source "source.java"


# instance fields
.field private contentHeight:I

.field private final frameLayoutParams:Landroid/widget/FrameLayout$LayoutParams;

.field private isfirst:Z

.field private final mChildOfContent:Landroid/view/View;

.field private final statusBarHeight:I

.field private usableHeightPrevious:I


# direct methods
.method private constructor <init>(Landroid/app/Activity;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/cloud/tmc/integration/SoftHideKeyBoardUtil;->isfirst:Z

    .line 6
    .line 7
    const v0, 0x1020002

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    check-cast v0, Landroid/widget/FrameLayout;

    .line 15
    .line 16
    const/4 v1, 0x0

    .line 17
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    iput-object v0, p0, Lcom/cloud/tmc/integration/SoftHideKeyBoardUtil;->mChildOfContent:Landroid/view/View;

    .line 22
    .line 23
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    new-instance v2, Lcom/cloud/tmc/integration/SoftHideKeyBoardUtil$1;

    .line 28
    .line 29
    invoke-direct {v2, p0}, Lcom/cloud/tmc/integration/SoftHideKeyBoardUtil$1;-><init>(Lcom/cloud/tmc/integration/SoftHideKeyBoardUtil;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 40
    .line 41
    iput-object v0, p0, Lcom/cloud/tmc/integration/SoftHideKeyBoardUtil;->frameLayoutParams:Landroid/widget/FrameLayout$LayoutParams;

    .line 42
    .line 43
    invoke-direct {p0, p1}, Lcom/cloud/tmc/integration/SoftHideKeyBoardUtil;->getStatusBarHeight(Landroid/app/Activity;)I

    .line 44
    .line 45
    .line 46
    move-result p1

    .line 47
    iput p1, p0, Lcom/cloud/tmc/integration/SoftHideKeyBoardUtil;->statusBarHeight:I

    .line 48
    .line 49
    return-void
.end method

.method static bridge synthetic a(Lcom/cloud/tmc/integration/SoftHideKeyBoardUtil;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/cloud/tmc/integration/SoftHideKeyBoardUtil;->isfirst:Z

    .line 2
    .line 3
    return p0
.end method

.method public static assistActivity(Landroid/app/Activity;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/cloud/tmc/integration/SoftHideKeyBoardUtil;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/cloud/tmc/integration/SoftHideKeyBoardUtil;-><init>(Landroid/app/Activity;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method static bridge synthetic b(Lcom/cloud/tmc/integration/SoftHideKeyBoardUtil;)Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/cloud/tmc/integration/SoftHideKeyBoardUtil;->mChildOfContent:Landroid/view/View;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic c(Lcom/cloud/tmc/integration/SoftHideKeyBoardUtil;I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/cloud/tmc/integration/SoftHideKeyBoardUtil;->contentHeight:I

    .line 2
    .line 3
    return-void
.end method

.method private computeUsableHeight()I
    .locals 2

    .line 1
    new-instance v0, Landroid/graphics/Rect;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/cloud/tmc/integration/SoftHideKeyBoardUtil;->mChildOfContent:Landroid/view/View;

    .line 7
    .line 8
    invoke-virtual {v1, v0}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 9
    .line 10
    .line 11
    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 12
    .line 13
    iget v0, v0, Landroid/graphics/Rect;->top:I

    .line 14
    .line 15
    sub-int/2addr v1, v0

    .line 16
    return v1
.end method

.method static bridge synthetic d(Lcom/cloud/tmc/integration/SoftHideKeyBoardUtil;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/cloud/tmc/integration/SoftHideKeyBoardUtil;->isfirst:Z

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic e(Lcom/cloud/tmc/integration/SoftHideKeyBoardUtil;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/cloud/tmc/integration/SoftHideKeyBoardUtil;->possiblyResizeChildOfContent()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private getStatusBarHeight(Landroid/app/Activity;)I
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    const-string v2, "status_bar_height"

    .line 10
    .line 11
    const-string v3, "dimen"

    .line 12
    .line 13
    const-string v4, "android"

    .line 14
    .line 15
    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-lez v1, :cond_1

    .line 20
    .line 21
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 26
    .line 27
    .line 28
    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    return p1

    .line 30
    :catchall_0
    move-exception p1

    .line 31
    const-string v1, "SoftHideKeyBoardUtil"

    .line 32
    .line 33
    const-string v2, "Unable to get status bar height"

    .line 34
    .line 35
    invoke-static {v1, v2, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 36
    .line 37
    .line 38
    :cond_1
    return v0
.end method

.method private possiblyResizeChildOfContent()V
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/cloud/tmc/integration/SoftHideKeyBoardUtil;->computeUsableHeight()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget v1, p0, Lcom/cloud/tmc/integration/SoftHideKeyBoardUtil;->usableHeightPrevious:I

    .line 6
    .line 7
    if-eq v0, v1, :cond_1

    .line 8
    .line 9
    iget-object v1, p0, Lcom/cloud/tmc/integration/SoftHideKeyBoardUtil;->mChildOfContent:Landroid/view/View;

    .line 10
    .line 11
    invoke-virtual {v1}, Landroid/view/View;->getRootView()Landroid/view/View;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    sub-int v2, v1, v0

    .line 20
    .line 21
    div-int/lit8 v3, v1, 0x4

    .line 22
    .line 23
    if-le v2, v3, :cond_0

    .line 24
    .line 25
    iget-object v3, p0, Lcom/cloud/tmc/integration/SoftHideKeyBoardUtil;->frameLayoutParams:Landroid/widget/FrameLayout$LayoutParams;

    .line 26
    .line 27
    sub-int/2addr v1, v2

    .line 28
    iget v2, p0, Lcom/cloud/tmc/integration/SoftHideKeyBoardUtil;->statusBarHeight:I

    .line 29
    .line 30
    add-int/2addr v1, v2

    .line 31
    iput v1, v3, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    iget-object v1, p0, Lcom/cloud/tmc/integration/SoftHideKeyBoardUtil;->frameLayoutParams:Landroid/widget/FrameLayout$LayoutParams;

    .line 35
    .line 36
    iget v2, p0, Lcom/cloud/tmc/integration/SoftHideKeyBoardUtil;->contentHeight:I

    .line 37
    .line 38
    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 39
    .line 40
    :goto_0
    iget-object v1, p0, Lcom/cloud/tmc/integration/SoftHideKeyBoardUtil;->mChildOfContent:Landroid/view/View;

    .line 41
    .line 42
    invoke-virtual {v1}, Landroid/view/View;->requestLayout()V

    .line 43
    .line 44
    .line 45
    iput v0, p0, Lcom/cloud/tmc/integration/SoftHideKeyBoardUtil;->usableHeightPrevious:I

    .line 46
    .line 47
    :cond_1
    return-void
.end method
