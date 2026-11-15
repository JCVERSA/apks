.class public abstract Lcom/mgtv/ssp/feed/control/OnVideoTouchController;
.super Lcom/mgtv/ssp/control/GestureVideoController;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1}, Lcom/mgtv/ssp/control/GestureVideoController;-><init>(Landroid/content/Context;)V

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

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/mgtv/ssp/control/GestureVideoController;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

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

    .line 3
    invoke-direct {p0, p1, p2, p3}, Lcom/mgtv/ssp/control/GestureVideoController;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public static synthetic access$000(Lcom/mgtv/ssp/feed/control/OnVideoTouchController;)I
    .locals 0

    iget p0, p0, Lcom/mgtv/ssp/control/GestureVideoController;->clickCount:I

    return p0
.end method

.method public static synthetic access$100(Lcom/mgtv/ssp/feed/control/OnVideoTouchController;)Z
    .locals 0

    invoke-virtual {p0}, Lcom/mgtv/ssp/control/GestureVideoController;->isInPlaybackState()Z

    move-result p0

    return p0
.end method

.method public static synthetic access$200(Lcom/mgtv/ssp/feed/control/OnVideoTouchController;)Lcom/mgtv/ssp/control/a;
    .locals 0

    iget-object p0, p0, Lcom/mgtv/ssp/control/BaseVideoController;->mControlWrapper:Lcom/mgtv/ssp/control/a;

    return-object p0
.end method

.method public static synthetic access$300(Lcom/mgtv/ssp/feed/control/OnVideoTouchController;)I
    .locals 0

    iget p0, p0, Lcom/mgtv/ssp/control/GestureVideoController;->clickCount:I

    return p0
.end method

.method public static synthetic access$400(Lcom/mgtv/ssp/feed/control/OnVideoTouchController;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/mgtv/ssp/control/GestureVideoController;->mIsDoubleTapTogglePlayEnabled:Z

    return p0
.end method

.method public static synthetic access$500(Lcom/mgtv/ssp/feed/control/OnVideoTouchController;)Z
    .locals 0

    invoke-virtual {p0}, Lcom/mgtv/ssp/control/GestureVideoController;->isInPlaybackState()Z

    move-result p0

    return p0
.end method

.method public static synthetic access$600(Lcom/mgtv/ssp/feed/control/OnVideoTouchController;)V
    .locals 0

    invoke-virtual {p0}, Lcom/mgtv/ssp/control/BaseVideoController;->togglePlay()V

    return-void
.end method

.method public static synthetic access$700(Lcom/mgtv/ssp/feed/control/OnVideoTouchController;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/mgtv/ssp/control/GestureVideoController;->handler:Landroid/os/Handler;

    return-object p0
.end method

.method public static synthetic access$802(Lcom/mgtv/ssp/feed/control/OnVideoTouchController;I)I
    .locals 0

    iput p1, p0, Lcom/mgtv/ssp/control/GestureVideoController;->clickCount:I

    return p1
.end method


# virtual methods
.method public initView()V
    .locals 0

    invoke-super {p0}, Lcom/mgtv/ssp/control/GestureVideoController;->initView()V

    invoke-virtual {p0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_0

    iget p1, p0, Lcom/mgtv/ssp/control/GestureVideoController;->clickCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/mgtv/ssp/control/GestureVideoController;->clickCount:I

    iget-object p1, p0, Lcom/mgtv/ssp/control/GestureVideoController;->handler:Landroid/os/Handler;

    new-instance p2, Lcom/mgtv/ssp/feed/control/OnVideoTouchController$1;

    invoke-direct {p2, p0}, Lcom/mgtv/ssp/feed/control/OnVideoTouchController$1;-><init>(Lcom/mgtv/ssp/feed/control/OnVideoTouchController;)V

    sget p0, Lcom/mgtv/ssp/control/GestureVideoController;->timeout:I

    int-to-long v0, p0

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
