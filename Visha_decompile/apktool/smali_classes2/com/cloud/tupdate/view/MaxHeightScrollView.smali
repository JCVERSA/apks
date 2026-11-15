.class public final Lcom/cloud/tupdate/view/MaxHeightScrollView;
.super Landroid/widget/ScrollView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cloud/tupdate/view/MaxHeightScrollView$onScrollOverListener;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000N\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u000c\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000c\n\u0002\u0010\t\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\n\u0018\u00002\u00020\u0001:\u0001:B\u0013\u0008\u0016\u0012\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005B\u001b\u0008\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0004\u0008\u0004\u0010\u0008B#\u0008\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\u0006\u0010\n\u001a\u00020\t\u00a2\u0006\u0004\u0008\u0004\u0010\u000bJ\u0015\u0010\u000e\u001a\u00020\r2\u0006\u0010\u000c\u001a\u00020\t\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ\u001f\u0010\u0012\u001a\u00020\r2\u0006\u0010\u0010\u001a\u00020\t2\u0006\u0010\u0011\u001a\u00020\tH\u0014\u00a2\u0006\u0004\u0008\u0012\u0010\u0013J/\u0010\u0018\u001a\u00020\r2\u0006\u0010\u0014\u001a\u00020\t2\u0006\u0010\u0015\u001a\u00020\t2\u0006\u0010\u0016\u001a\u00020\t2\u0006\u0010\u0017\u001a\u00020\tH\u0014\u00a2\u0006\u0004\u0008\u0018\u0010\u0019J\u0019\u0010\u001d\u001a\u00020\u001c2\u0008\u0010\u001b\u001a\u0004\u0018\u00010\u001aH\u0016\u00a2\u0006\u0004\u0008\u001d\u0010\u001eJ\u0017\u0010!\u001a\u00020\r2\u0008\u0010 \u001a\u0004\u0018\u00010\u001f\u00a2\u0006\u0004\u0008!\u0010\"R\u0016\u0010\u000c\u001a\u00020\t8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u000c\u0010#R\u0018\u0010 \u001a\u0004\u0018\u00010\u001f8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008 \u0010$R\"\u0010%\u001a\u00020\u001c8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008%\u0010&\u001a\u0004\u0008%\u0010\'\"\u0004\u0008(\u0010)R\"\u0010*\u001a\u00020\u001c8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008*\u0010&\u001a\u0004\u0008*\u0010\'\"\u0004\u0008+\u0010)R\u001a\u0010-\u001a\u00020,8\u0006X\u0086D\u00a2\u0006\u000c\n\u0004\u0008-\u0010.\u001a\u0004\u0008/\u00100R\"\u00102\u001a\u0002018\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u00082\u00103\u001a\u0004\u00084\u00105\"\u0004\u00086\u00107R\"\u00108\u001a\u00020\u001c8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u00088\u0010&\u001a\u0004\u00088\u0010\'\"\u0004\u00089\u0010)\u00a8\u0006;"
    }
    d2 = {
        "Lcom/cloud/tupdate/view/MaxHeightScrollView;",
        "Landroid/widget/ScrollView;",
        "Landroid/content/Context;",
        "context",
        "<init>",
        "(Landroid/content/Context;)V",
        "Landroid/util/AttributeSet;",
        "attrs",
        "(Landroid/content/Context;Landroid/util/AttributeSet;)V",
        "",
        "defStyleAttr",
        "(Landroid/content/Context;Landroid/util/AttributeSet;I)V",
        "maxHeight",
        "Lzfb;",
        "setMaxHeight",
        "(I)V",
        "widthMeasureSpec",
        "heightMeasureSpec",
        "onMeasure",
        "(II)V",
        "l",
        "t",
        "oldl",
        "oldt",
        "onScrollChanged",
        "(IIII)V",
        "Landroid/view/MotionEvent;",
        "ev",
        "",
        "onTouchEvent",
        "(Landroid/view/MotionEvent;)Z",
        "Lcom/cloud/tupdate/view/MaxHeightScrollView$onScrollOverListener;",
        "mListener",
        "setListener",
        "(Lcom/cloud/tupdate/view/MaxHeightScrollView$onScrollOverListener;)V",
        "I",
        "Lcom/cloud/tupdate/view/MaxHeightScrollView$onScrollOverListener;",
        "isFingerUp",
        "Z",
        "()Z",
        "setFingerUp",
        "(Z)V",
        "isScrolling",
        "setScrolling",
        "",
        "mDragDelayTime",
        "J",
        "getMDragDelayTime",
        "()J",
        "Ljava/lang/Thread;",
        "mDragThread",
        "Ljava/lang/Thread;",
        "getMDragThread",
        "()Ljava/lang/Thread;",
        "setMDragThread",
        "(Ljava/lang/Thread;)V",
        "isBottom",
        "setBottom",
        "onScrollOverListener",
        "tupdate_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private isBottom:Z

.field private isFingerUp:Z

.field private isScrolling:Z

.field private final mDragDelayTime:J

.field private mDragThread:Ljava/lang/Thread;

.field private mListener:Lcom/cloud/tupdate/view/MaxHeightScrollView$onScrollOverListener;

.field private maxHeight:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lcom/cloud/tupdate/view/MaxHeightScrollView;->isFingerUp:Z

    const-wide/16 v0, 0x64

    .line 3
    iput-wide v0, p0, Lcom/cloud/tupdate/view/MaxHeightScrollView;->mDragDelayTime:J

    .line 4
    new-instance p1, Ljava/lang/Thread;

    new-instance v0, La96;

    invoke-direct {v0, p0}, La96;-><init>(Lcom/cloud/tupdate/view/MaxHeightScrollView;)V

    invoke-direct {p1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object p1, p0, Lcom/cloud/tupdate/view/MaxHeightScrollView;->mDragThread:Ljava/lang/Thread;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-direct {p0, p1, p2}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Lcom/cloud/tupdate/view/MaxHeightScrollView;->isFingerUp:Z

    const-wide/16 v0, 0x64

    .line 7
    iput-wide v0, p0, Lcom/cloud/tupdate/view/MaxHeightScrollView;->mDragDelayTime:J

    .line 8
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, La96;

    invoke-direct {v1, p0}, La96;-><init>(Lcom/cloud/tupdate/view/MaxHeightScrollView;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/cloud/tupdate/view/MaxHeightScrollView;->mDragThread:Ljava/lang/Thread;

    .line 9
    sget-object v0, Lcom/cloud/tupdate/R$styleable;->MaxHeightScrollView:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const-string p2, "context.obtainStyledAttr\u2026able.MaxHeightScrollView)"

    invoke-static {p1, p2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    sget p2, Lcom/cloud/tupdate/R$styleable;->MaxHeightScrollView_max_height:I

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p1

    iput p1, p0, Lcom/cloud/tupdate/view/MaxHeightScrollView;->maxHeight:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p3, 0x1

    .line 12
    iput-boolean p3, p0, Lcom/cloud/tupdate/view/MaxHeightScrollView;->isFingerUp:Z

    const-wide/16 v0, 0x64

    .line 13
    iput-wide v0, p0, Lcom/cloud/tupdate/view/MaxHeightScrollView;->mDragDelayTime:J

    .line 14
    new-instance p3, Ljava/lang/Thread;

    new-instance v0, La96;

    invoke-direct {v0, p0}, La96;-><init>(Lcom/cloud/tupdate/view/MaxHeightScrollView;)V

    invoke-direct {p3, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object p3, p0, Lcom/cloud/tupdate/view/MaxHeightScrollView;->mDragThread:Ljava/lang/Thread;

    .line 15
    sget-object p3, Lcom/cloud/tupdate/R$styleable;->MaxHeightScrollView:[I

    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const-string p2, "context.obtainStyledAttr\u2026able.MaxHeightScrollView)"

    invoke-static {p1, p2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    sget p2, Lcom/cloud/tupdate/R$styleable;->MaxHeightScrollView_max_height:I

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p1

    iput p1, p0, Lcom/cloud/tupdate/view/MaxHeightScrollView;->maxHeight:I

    return-void
.end method

.method public static synthetic a(Lcom/cloud/tupdate/view/MaxHeightScrollView;)V
    .locals 0

    invoke-static {p0}, Lcom/cloud/tupdate/view/MaxHeightScrollView;->mDragThread$lambda-0(Lcom/cloud/tupdate/view/MaxHeightScrollView;)V

    return-void
.end method

.method private static final mDragThread$lambda-0(Lcom/cloud/tupdate/view/MaxHeightScrollView;)V
    .locals 3

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cloud/tupdate/view/MaxHeightScrollView;->mListener:Lcom/cloud/tupdate/view/MaxHeightScrollView$onScrollOverListener;

    if-eqz v0, :cond_2

    iget-boolean v1, p0, Lcom/cloud/tupdate/view/MaxHeightScrollView;->isFingerUp:Z

    if-eqz v1, :cond_1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    iget-boolean v2, p0, Lcom/cloud/tupdate/view/MaxHeightScrollView;->isBottom:Z

    invoke-interface {v0, v1, v2}, Lcom/cloud/tupdate/view/MaxHeightScrollView$onScrollOverListener;->scrollOver(ZZ)V

    :cond_1
    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cloud/tupdate/view/MaxHeightScrollView;->isScrolling:Z

    :cond_2
    return-void
.end method


# virtual methods
.method public final getMDragDelayTime()J
    .locals 2

    iget-wide v0, p0, Lcom/cloud/tupdate/view/MaxHeightScrollView;->mDragDelayTime:J

    return-wide v0
.end method

.method public final getMDragThread()Ljava/lang/Thread;
    .locals 0

    iget-object p0, p0, Lcom/cloud/tupdate/view/MaxHeightScrollView;->mDragThread:Ljava/lang/Thread;

    return-object p0
.end method

.method public final isBottom()Z
    .locals 0

    iget-boolean p0, p0, Lcom/cloud/tupdate/view/MaxHeightScrollView;->isBottom:Z

    return p0
.end method

.method public final isFingerUp()Z
    .locals 0

    iget-boolean p0, p0, Lcom/cloud/tupdate/view/MaxHeightScrollView;->isFingerUp:Z

    return p0
.end method

.method public final isScrolling()Z
    .locals 0

    iget-boolean p0, p0, Lcom/cloud/tupdate/view/MaxHeightScrollView;->isScrolling:Z

    return p0
.end method

.method public onMeasure(II)V
    .locals 1

    iget v0, p0, Lcom/cloud/tupdate/view/MaxHeightScrollView;->maxHeight:I

    if-lez v0, :cond_0

    const/high16 p2, -0x80000000

    invoke-static {v0, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/ScrollView;->onMeasure(II)V

    return-void
.end method

.method public onScrollChanged(IIII)V
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getX()F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {p0}, Landroid/view/View;->getY()F

    move-result p2

    float-to-int p2, p2

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onScrollChanged(IIII)V

    :try_start_0
    iget-object p1, p0, Lcom/cloud/tupdate/view/MaxHeightScrollView;->mListener:Lcom/cloud/tupdate/view/MaxHeightScrollView$onScrollOverListener;

    if-eqz p1, :cond_3

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/cloud/tupdate/view/MaxHeightScrollView;->isScrolling:Z

    iget-object p2, p0, Lcom/cloud/tupdate/view/MaxHeightScrollView;->mDragThread:Ljava/lang/Thread;

    invoke-virtual {p0, p2}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object p2, p0, Lcom/cloud/tupdate/view/MaxHeightScrollView;->mListener:Lcom/cloud/tupdate/view/MaxHeightScrollView$onScrollOverListener;

    const/4 p3, 0x0

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    iget-boolean p4, p0, Lcom/cloud/tupdate/view/MaxHeightScrollView;->isBottom:Z

    invoke-interface {p2, p3, p4}, Lcom/cloud/tupdate/view/MaxHeightScrollView$onScrollOverListener;->scrollOver(ZZ)V

    :goto_0
    iget-object p2, p0, Lcom/cloud/tupdate/view/MaxHeightScrollView;->mDragThread:Ljava/lang/Thread;

    iget-wide v0, p0, Lcom/cloud/tupdate/view/MaxHeightScrollView;->mDragDelayTime:J

    invoke-virtual {p0, p2, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result p2

    invoke-virtual {p0, p3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p4

    if-gtz p2, :cond_1

    iput-boolean p1, p0, Lcom/cloud/tupdate/view/MaxHeightScrollView;->isBottom:Z

    goto :goto_2

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_1
    invoke-virtual {p4}, Landroid/view/View;->getHeight()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p4

    sub-int/2addr p1, p4

    if-ne p2, p1, :cond_2

    iput-boolean p3, p0, Lcom/cloud/tupdate/view/MaxHeightScrollView;->isBottom:Z

    goto :goto_2

    :cond_2
    iput-boolean p3, p0, Lcom/cloud/tupdate/view/MaxHeightScrollView;->isBottom:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    sget-object p1, Lcom/cloud/tupdate/net/utils/LogUtil;->a:Lcom/cloud/tupdate/net/utils/LogUtil;

    invoke-virtual {p1, p0}, Lcom/cloud/tupdate/net/utils/LogUtil;->d(Ljava/lang/Throwable;)V

    :cond_3
    :goto_2
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    move-object v1, v0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :goto_0
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    if-ne v1, v3, :cond_2

    iput-boolean v2, p0, Lcom/cloud/tupdate/view/MaxHeightScrollView;->isFingerUp:Z

    iget-boolean v0, p0, Lcom/cloud/tupdate/view/MaxHeightScrollView;->isScrolling:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/cloud/tupdate/view/MaxHeightScrollView;->mListener:Lcom/cloud/tupdate/view/MaxHeightScrollView$onScrollOverListener;

    if-eqz v0, :cond_4

    if-nez v0, :cond_1

    goto :goto_2

    :cond_1
    iget-boolean v1, p0, Lcom/cloud/tupdate/view/MaxHeightScrollView;->isBottom:Z

    invoke-interface {v0, v2, v1}, Lcom/cloud/tupdate/view/MaxHeightScrollView$onScrollOverListener;->scrollOver(ZZ)V

    goto :goto_2

    :cond_2
    if-nez p1, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_1
    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    if-ne v0, v1, :cond_4

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cloud/tupdate/view/MaxHeightScrollView;->isFingerUp:Z

    :cond_4
    :goto_2
    invoke-super {p0, p1}, Landroid/widget/ScrollView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public final setBottom(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/cloud/tupdate/view/MaxHeightScrollView;->isBottom:Z

    return-void
.end method

.method public final setFingerUp(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/cloud/tupdate/view/MaxHeightScrollView;->isFingerUp:Z

    return-void
.end method

.method public final setListener(Lcom/cloud/tupdate/view/MaxHeightScrollView$onScrollOverListener;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/tupdate/view/MaxHeightScrollView;->mListener:Lcom/cloud/tupdate/view/MaxHeightScrollView$onScrollOverListener;

    return-void
.end method

.method public final setMDragThread(Ljava/lang/Thread;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/cloud/tupdate/view/MaxHeightScrollView;->mDragThread:Ljava/lang/Thread;

    return-void
.end method

.method public final setMaxHeight(I)V
    .locals 0

    iput p1, p0, Lcom/cloud/tupdate/view/MaxHeightScrollView;->maxHeight:I

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public final setScrolling(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/cloud/tupdate/view/MaxHeightScrollView;->isScrolling:Z

    return-void
.end method
