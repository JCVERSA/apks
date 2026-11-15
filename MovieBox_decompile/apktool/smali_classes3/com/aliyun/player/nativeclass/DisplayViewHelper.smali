.class public Lcom/aliyun/player/nativeclass/DisplayViewHelper;
.super Ljava/lang/Object;
.source "source.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAliView:Lcom/aliyun/player/videoview/AliDisplayView;

.field private mBackgroundColor:I

.field private mClearScreenView:Landroid/view/View;

.field private mDirectRender:Z

.field private mDisPlayView:Lcom/aliyun/player/videoview/displayView/IDisplayView;

.field private mListener:Lcom/aliyun/player/videoview/displayView/IDisplayView$OnDisplayViewStatusListener;

.field private mMirrorMode:Lcom/aliyun/player/IPlayer$MirrorMode;

.field private mOldDisplayViews:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/aliyun/player/videoview/displayView/IDisplayView;",
            ">;"
        }
    .end annotation
.end field

.field private mReuseSurface:Z

.field private mRotateMode:Lcom/aliyun/player/IPlayer$RotateMode;

.field private mScaleMode:Lcom/aliyun/player/IPlayer$ScaleMode;

.field private mVideoHeight:I

.field private mVideoRotate:I

.field private mVideoWidth:I

.field private oldHeight:I

.field private oldWith:I

.field private surfaceValid:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "AliDisplayView_"

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    const-class v1, Lcom/aliyun/player/nativeclass/DisplayViewHelper;

    .line 12
    .line 13
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    sput-object v0, Lcom/aliyun/player/nativeclass/DisplayViewHelper;->TAG:Ljava/lang/String;

    .line 25
    .line 26
    return-void
.end method

.method public constructor <init>(Lcom/aliyun/player/videoview/AliDisplayView;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/aliyun/player/nativeclass/DisplayViewHelper;->mDisPlayView:Lcom/aliyun/player/videoview/displayView/IDisplayView;

    .line 6
    .line 7
    iput-object v0, p0, Lcom/aliyun/player/nativeclass/DisplayViewHelper;->mClearScreenView:Landroid/view/View;

    .line 8
    .line 9
    const/4 v1, -0x1

    .line 10
    iput v1, p0, Lcom/aliyun/player/nativeclass/DisplayViewHelper;->oldWith:I

    .line 11
    .line 12
    iput v1, p0, Lcom/aliyun/player/nativeclass/DisplayViewHelper;->oldHeight:I

    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    iput-boolean v1, p0, Lcom/aliyun/player/nativeclass/DisplayViewHelper;->surfaceValid:Z

    .line 16
    .line 17
    new-instance v2, Ljava/util/ArrayList;

    .line 18
    .line 19
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 20
    .line 21
    .line 22
    iput-object v2, p0, Lcom/aliyun/player/nativeclass/DisplayViewHelper;->mOldDisplayViews:Ljava/util/List;

    .line 23
    .line 24
    const/high16 v2, -0x1000000

    .line 25
    .line 26
    iput v2, p0, Lcom/aliyun/player/nativeclass/DisplayViewHelper;->mBackgroundColor:I

    .line 27
    .line 28
    iput v1, p0, Lcom/aliyun/player/nativeclass/DisplayViewHelper;->mVideoWidth:I

    .line 29
    .line 30
    iput v1, p0, Lcom/aliyun/player/nativeclass/DisplayViewHelper;->mVideoHeight:I

    .line 31
    .line 32
    iput v1, p0, Lcom/aliyun/player/nativeclass/DisplayViewHelper;->mVideoRotate:I

    .line 33
    .line 34
    sget-object v2, Lcom/aliyun/player/IPlayer$ScaleMode;->SCALE_ASPECT_FIT:Lcom/aliyun/player/IPlayer$ScaleMode;

    .line 35
    .line 36
    iput-object v2, p0, Lcom/aliyun/player/nativeclass/DisplayViewHelper;->mScaleMode:Lcom/aliyun/player/IPlayer$ScaleMode;

    .line 37
    .line 38
    sget-object v2, Lcom/aliyun/player/IPlayer$MirrorMode;->MIRROR_MODE_NONE:Lcom/aliyun/player/IPlayer$MirrorMode;

    .line 39
    .line 40
    iput-object v2, p0, Lcom/aliyun/player/nativeclass/DisplayViewHelper;->mMirrorMode:Lcom/aliyun/player/IPlayer$MirrorMode;

    .line 41
    .line 42
    sget-object v2, Lcom/aliyun/player/IPlayer$RotateMode;->ROTATE_0:Lcom/aliyun/player/IPlayer$RotateMode;

    .line 43
    .line 44
    iput-object v2, p0, Lcom/aliyun/player/nativeclass/DisplayViewHelper;->mRotateMode:Lcom/aliyun/player/IPlayer$RotateMode;

    .line 45
    .line 46
    iput-boolean v1, p0, Lcom/aliyun/player/nativeclass/DisplayViewHelper;->mDirectRender:Z

    .line 47
    .line 48
    iput-object v0, p0, Lcom/aliyun/player/nativeclass/DisplayViewHelper;->mListener:Lcom/aliyun/player/videoview/displayView/IDisplayView$OnDisplayViewStatusListener;

    .line 49
    .line 50
    const/4 v0, 0x1

    .line 51
    iput-boolean v0, p0, Lcom/aliyun/player/nativeclass/DisplayViewHelper;->mReuseSurface:Z

    .line 52
    .line 53
    iput-object p1, p0, Lcom/aliyun/player/nativeclass/DisplayViewHelper;->mAliView:Lcom/aliyun/player/videoview/AliDisplayView;

    .line 54
    .line 55
    invoke-direct {p0}, Lcom/aliyun/player/nativeclass/DisplayViewHelper;->init()V

    .line 56
    .line 57
    .line 58
    return-void
.end method

.method static synthetic access$000(Lcom/aliyun/player/nativeclass/DisplayViewHelper;)Lcom/aliyun/player/videoview/AliDisplayView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/aliyun/player/nativeclass/DisplayViewHelper;->mAliView:Lcom/aliyun/player/videoview/AliDisplayView;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$100(Lcom/aliyun/player/nativeclass/DisplayViewHelper;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/aliyun/player/nativeclass/DisplayViewHelper;->oldWith:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic access$102(Lcom/aliyun/player/nativeclass/DisplayViewHelper;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/aliyun/player/nativeclass/DisplayViewHelper;->oldWith:I

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$200(Lcom/aliyun/player/nativeclass/DisplayViewHelper;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/aliyun/player/nativeclass/DisplayViewHelper;->oldHeight:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic access$202(Lcom/aliyun/player/nativeclass/DisplayViewHelper;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/aliyun/player/nativeclass/DisplayViewHelper;->oldHeight:I

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$300(Lcom/aliyun/player/nativeclass/DisplayViewHelper;)Lcom/aliyun/player/videoview/displayView/IDisplayView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/aliyun/player/nativeclass/DisplayViewHelper;->mDisPlayView:Lcom/aliyun/player/videoview/displayView/IDisplayView;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$302(Lcom/aliyun/player/nativeclass/DisplayViewHelper;Lcom/aliyun/player/videoview/displayView/IDisplayView;)Lcom/aliyun/player/videoview/displayView/IDisplayView;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/aliyun/player/nativeclass/DisplayViewHelper;->mDisPlayView:Lcom/aliyun/player/videoview/displayView/IDisplayView;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic access$402(Lcom/aliyun/player/nativeclass/DisplayViewHelper;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/aliyun/player/nativeclass/DisplayViewHelper;->surfaceValid:Z

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$500(Lcom/aliyun/player/nativeclass/DisplayViewHelper;)Lcom/aliyun/player/videoview/displayView/IDisplayView$OnDisplayViewStatusListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/aliyun/player/nativeclass/DisplayViewHelper;->mListener:Lcom/aliyun/player/videoview/displayView/IDisplayView$OnDisplayViewStatusListener;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$600(Lcom/aliyun/player/nativeclass/DisplayViewHelper;)Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/aliyun/player/nativeclass/DisplayViewHelper;->mClearScreenView:Landroid/view/View;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$700(Lcom/aliyun/player/nativeclass/DisplayViewHelper;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/aliyun/player/nativeclass/DisplayViewHelper;->mOldDisplayViews:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method private init()V
    .locals 3

    .line 1
    new-instance v0, Landroid/view/View;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/aliyun/player/nativeclass/DisplayViewHelper;->mAliView:Lcom/aliyun/player/videoview/AliDisplayView;

    .line 4
    .line 5
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Lcom/aliyun/player/nativeclass/DisplayViewHelper;->mClearScreenView:Landroid/view/View;

    .line 13
    .line 14
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 15
    .line 16
    const/4 v1, -0x1

    .line 17
    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 18
    .line 19
    .line 20
    iget-object v1, p0, Lcom/aliyun/player/nativeclass/DisplayViewHelper;->mAliView:Lcom/aliyun/player/videoview/AliDisplayView;

    .line 21
    .line 22
    iget-object v2, p0, Lcom/aliyun/player/nativeclass/DisplayViewHelper;->mClearScreenView:Landroid/view/View;

    .line 23
    .line 24
    invoke-virtual {v1, v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 25
    .line 26
    .line 27
    const-string v0, "#FF000000"

    .line 28
    .line 29
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    invoke-virtual {p0, v0}, Lcom/aliyun/player/nativeclass/DisplayViewHelper;->setBackgroundColor(I)V

    .line 34
    .line 35
    .line 36
    iget-object v0, p0, Lcom/aliyun/player/nativeclass/DisplayViewHelper;->mAliView:Lcom/aliyun/player/videoview/AliDisplayView;

    .line 37
    .line 38
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    new-instance v1, Lcom/aliyun/player/nativeclass/DisplayViewHelper$1;

    .line 43
    .line 44
    invoke-direct {v1, p0}, Lcom/aliyun/player/nativeclass/DisplayViewHelper$1;-><init>(Lcom/aliyun/player/nativeclass/DisplayViewHelper;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 48
    .line 49
    .line 50
    return-void
.end method

.method private runOnUiThread(Ljava/lang/Runnable;)V
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    if-ne v0, v1, :cond_0

    .line 10
    .line 11
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    iget-object v0, p0, Lcom/aliyun/player/nativeclass/DisplayViewHelper;->mClearScreenView:Landroid/view/View;

    .line 16
    .line 17
    invoke-virtual {v0, p1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 18
    .line 19
    .line 20
    :goto_0
    return-void
.end method


# virtual methods
.method clearScreen()V
    .locals 2

    .line 1
    sget-object v0, Lcom/aliyun/player/nativeclass/DisplayViewHelper;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "clearScreen "

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/cicada/player/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    new-instance v0, Lcom/aliyun/player/nativeclass/DisplayViewHelper$3;

    .line 9
    .line 10
    invoke-direct {v0, p0}, Lcom/aliyun/player/nativeclass/DisplayViewHelper$3;-><init>(Lcom/aliyun/player/nativeclass/DisplayViewHelper;)V

    .line 11
    .line 12
    .line 13
    invoke-direct {p0, v0}, Lcom/aliyun/player/nativeclass/DisplayViewHelper;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method declared-synchronized createDisplayView(Lcom/aliyun/player/videoview/AliDisplayView$DisplayViewType;Z)V
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/aliyun/player/nativeclass/DisplayViewHelper;->mAliView:Lcom/aliyun/player/videoview/AliDisplayView;

    .line 3
    .line 4
    invoke-virtual {v0}, Lcom/aliyun/player/videoview/AliDisplayView;->getPreferDisplayViewType()Lcom/aliyun/player/videoview/AliDisplayView$DisplayViewType;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    sget-object v1, Lcom/aliyun/player/videoview/AliDisplayView$DisplayViewType;->Either:Lcom/aliyun/player/videoview/AliDisplayView$DisplayViewType;

    .line 11
    .line 12
    if-eq p1, v1, :cond_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :catchall_0
    move-exception p1

    .line 16
    goto/16 :goto_2

    .line 17
    .line 18
    :cond_0
    move-object p1, v0

    .line 19
    :goto_0
    iget-object v0, p0, Lcom/aliyun/player/nativeclass/DisplayViewHelper;->mDisPlayView:Lcom/aliyun/player/videoview/displayView/IDisplayView;

    .line 20
    .line 21
    sget-object v1, Lcom/aliyun/player/videoview/AliDisplayView$DisplayViewType;->TextureView:Lcom/aliyun/player/videoview/AliDisplayView$DisplayViewType;

    .line 22
    .line 23
    if-ne p1, v1, :cond_1

    .line 24
    .line 25
    new-instance v1, Lcom/aliyun/player/videoview/displayView/TextureDisplayView;

    .line 26
    .line 27
    iget-object v2, p0, Lcom/aliyun/player/nativeclass/DisplayViewHelper;->mAliView:Lcom/aliyun/player/videoview/AliDisplayView;

    .line 28
    .line 29
    invoke-direct {v1, v2}, Lcom/aliyun/player/videoview/displayView/TextureDisplayView;-><init>(Landroid/view/ViewGroup;)V

    .line 30
    .line 31
    .line 32
    iput-object v1, p0, Lcom/aliyun/player/nativeclass/DisplayViewHelper;->mDisPlayView:Lcom/aliyun/player/videoview/displayView/IDisplayView;

    .line 33
    .line 34
    invoke-virtual {v1}, Lcom/aliyun/player/videoview/displayView/IDisplayView;->initView()V

    .line 35
    .line 36
    .line 37
    goto :goto_1

    .line 38
    :cond_1
    new-instance v1, Lcom/aliyun/player/videoview/displayView/SurfaceDisplayView;

    .line 39
    .line 40
    iget-object v2, p0, Lcom/aliyun/player/nativeclass/DisplayViewHelper;->mAliView:Lcom/aliyun/player/videoview/AliDisplayView;

    .line 41
    .line 42
    invoke-direct {v1, v2}, Lcom/aliyun/player/videoview/displayView/SurfaceDisplayView;-><init>(Landroid/view/ViewGroup;)V

    .line 43
    .line 44
    .line 45
    iput-object v1, p0, Lcom/aliyun/player/nativeclass/DisplayViewHelper;->mDisPlayView:Lcom/aliyun/player/videoview/displayView/IDisplayView;

    .line 46
    .line 47
    invoke-virtual {v1}, Lcom/aliyun/player/videoview/displayView/IDisplayView;->initView()V

    .line 48
    .line 49
    .line 50
    :goto_1
    iget-object v1, p0, Lcom/aliyun/player/nativeclass/DisplayViewHelper;->mListener:Lcom/aliyun/player/videoview/displayView/IDisplayView$OnDisplayViewStatusListener;

    .line 51
    .line 52
    if-eqz v1, :cond_2

    .line 53
    .line 54
    invoke-interface {v1, p1}, Lcom/aliyun/player/videoview/displayView/IDisplayView$OnDisplayViewStatusListener;->onViewCreated(Lcom/aliyun/player/videoview/AliDisplayView$DisplayViewType;)V

    .line 55
    .line 56
    .line 57
    :cond_2
    iget-object v1, p0, Lcom/aliyun/player/nativeclass/DisplayViewHelper;->mAliView:Lcom/aliyun/player/videoview/AliDisplayView;

    .line 58
    .line 59
    invoke-virtual {v1}, Lcom/aliyun/player/videoview/AliDisplayView;->getOnViewStatusListener()Lcom/aliyun/player/videoview/AliDisplayView$OnViewStatusListener;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    if-eqz v1, :cond_3

    .line 64
    .line 65
    invoke-interface {v1, p1}, Lcom/aliyun/player/videoview/AliDisplayView$OnViewStatusListener;->onViewCreated(Lcom/aliyun/player/videoview/AliDisplayView$DisplayViewType;)V

    .line 66
    .line 67
    .line 68
    :cond_3
    iget-object p1, p0, Lcom/aliyun/player/nativeclass/DisplayViewHelper;->mDisPlayView:Lcom/aliyun/player/videoview/displayView/IDisplayView;

    .line 69
    .line 70
    if-eqz p1, :cond_4

    .line 71
    .line 72
    new-instance v2, Lcom/aliyun/player/nativeclass/DisplayViewHelper$2;

    .line 73
    .line 74
    invoke-direct {v2, p0, v1}, Lcom/aliyun/player/nativeclass/DisplayViewHelper$2;-><init>(Lcom/aliyun/player/nativeclass/DisplayViewHelper;Lcom/aliyun/player/videoview/AliDisplayView$OnViewStatusListener;)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {p1, v2}, Lcom/aliyun/player/videoview/displayView/IDisplayView;->setOnViewStatusListener(Lcom/aliyun/player/videoview/displayView/IDisplayView$OnDisplayViewStatusListener;)V

    .line 78
    .line 79
    .line 80
    iget-object p1, p0, Lcom/aliyun/player/nativeclass/DisplayViewHelper;->mDisPlayView:Lcom/aliyun/player/videoview/displayView/IDisplayView;

    .line 81
    .line 82
    iget-boolean v1, p0, Lcom/aliyun/player/nativeclass/DisplayViewHelper;->mReuseSurface:Z

    .line 83
    .line 84
    invoke-virtual {p1, v1}, Lcom/aliyun/player/videoview/displayView/IDisplayView;->setSurfaceReuse(Z)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {p0, p2}, Lcom/aliyun/player/nativeclass/DisplayViewHelper;->setRenderFlagChanged(Z)V

    .line 88
    .line 89
    .line 90
    iget-object p1, p0, Lcom/aliyun/player/nativeclass/DisplayViewHelper;->mDisPlayView:Lcom/aliyun/player/videoview/displayView/IDisplayView;

    .line 91
    .line 92
    iget p2, p0, Lcom/aliyun/player/nativeclass/DisplayViewHelper;->mVideoWidth:I

    .line 93
    .line 94
    iget v1, p0, Lcom/aliyun/player/nativeclass/DisplayViewHelper;->mVideoHeight:I

    .line 95
    .line 96
    iget v2, p0, Lcom/aliyun/player/nativeclass/DisplayViewHelper;->mVideoRotate:I

    .line 97
    .line 98
    invoke-virtual {p1, p2, v1, v2}, Lcom/aliyun/player/videoview/displayView/IDisplayView;->setVideoSize(III)V

    .line 99
    .line 100
    .line 101
    iget-object p1, p0, Lcom/aliyun/player/nativeclass/DisplayViewHelper;->mDisPlayView:Lcom/aliyun/player/videoview/displayView/IDisplayView;

    .line 102
    .line 103
    iget-object p2, p0, Lcom/aliyun/player/nativeclass/DisplayViewHelper;->mMirrorMode:Lcom/aliyun/player/IPlayer$MirrorMode;

    .line 104
    .line 105
    invoke-virtual {p1, p2}, Lcom/aliyun/player/videoview/displayView/IDisplayView;->setMirrorMode(Lcom/aliyun/player/IPlayer$MirrorMode;)V

    .line 106
    .line 107
    .line 108
    iget-object p1, p0, Lcom/aliyun/player/nativeclass/DisplayViewHelper;->mDisPlayView:Lcom/aliyun/player/videoview/displayView/IDisplayView;

    .line 109
    .line 110
    iget-object p2, p0, Lcom/aliyun/player/nativeclass/DisplayViewHelper;->mRotateMode:Lcom/aliyun/player/IPlayer$RotateMode;

    .line 111
    .line 112
    invoke-virtual {p1, p2}, Lcom/aliyun/player/videoview/displayView/IDisplayView;->setRotateMode(Lcom/aliyun/player/IPlayer$RotateMode;)V

    .line 113
    .line 114
    .line 115
    iget-object p1, p0, Lcom/aliyun/player/nativeclass/DisplayViewHelper;->mDisPlayView:Lcom/aliyun/player/videoview/displayView/IDisplayView;

    .line 116
    .line 117
    iget-object p2, p0, Lcom/aliyun/player/nativeclass/DisplayViewHelper;->mScaleMode:Lcom/aliyun/player/IPlayer$ScaleMode;

    .line 118
    .line 119
    invoke-virtual {p1, p2}, Lcom/aliyun/player/videoview/displayView/IDisplayView;->setScaleMode(Lcom/aliyun/player/IPlayer$ScaleMode;)V

    .line 120
    .line 121
    .line 122
    iget-object p1, p0, Lcom/aliyun/player/nativeclass/DisplayViewHelper;->mDisPlayView:Lcom/aliyun/player/videoview/displayView/IDisplayView;

    .line 123
    .line 124
    invoke-virtual {p1}, Lcom/aliyun/player/videoview/displayView/IDisplayView;->attachView()V

    .line 125
    .line 126
    .line 127
    if-eqz v0, :cond_4

    .line 128
    .line 129
    const/4 p1, 0x0

    .line 130
    invoke-virtual {v0, p1}, Lcom/aliyun/player/videoview/displayView/IDisplayView;->setOnViewStatusListener(Lcom/aliyun/player/videoview/displayView/IDisplayView$OnDisplayViewStatusListener;)V

    .line 131
    .line 132
    .line 133
    iget-object p1, p0, Lcom/aliyun/player/nativeclass/DisplayViewHelper;->mOldDisplayViews:Ljava/util/List;

    .line 134
    .line 135
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 136
    .line 137
    .line 138
    :cond_4
    monitor-exit p0

    .line 139
    return-void

    .line 140
    :goto_2
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 141
    throw p1
.end method

.method firstFrameRender(Z)V
    .locals 3

    .line 1
    sget-object v0, Lcom/aliyun/player/nativeclass/DisplayViewHelper;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v2, "firstFrameRender , hasVideo = "

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-static {v0, v1}, Lcom/cicada/player/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    new-instance v0, Lcom/aliyun/player/nativeclass/DisplayViewHelper$4;

    .line 24
    .line 25
    invoke-direct {v0, p0, p1}, Lcom/aliyun/player/nativeclass/DisplayViewHelper$4;-><init>(Lcom/aliyun/player/nativeclass/DisplayViewHelper;Z)V

    .line 26
    .line 27
    .line 28
    invoke-direct {p0, v0}, Lcom/aliyun/player/nativeclass/DisplayViewHelper;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method needUpdateView(Lcom/aliyun/player/videoview/AliDisplayView$DisplayViewType;)Z
    .locals 0

    .line 1
    const/4 p1, 0x1

    .line 2
    return p1
.end method

.method setBackgroundColor(I)V
    .locals 3

    .line 1
    sget-object v0, Lcom/aliyun/player/nativeclass/DisplayViewHelper;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v2, "setBackgroundColor "

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-static {v0, v1}, Lcom/cicada/player/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    iput p1, p0, Lcom/aliyun/player/nativeclass/DisplayViewHelper;->mBackgroundColor:I

    .line 24
    .line 25
    iget-object v0, p0, Lcom/aliyun/player/nativeclass/DisplayViewHelper;->mClearScreenView:Landroid/view/View;

    .line 26
    .line 27
    if-eqz v0, :cond_0

    .line 28
    .line 29
    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 30
    .line 31
    .line 32
    :cond_0
    iget-object v0, p0, Lcom/aliyun/player/nativeclass/DisplayViewHelper;->mAliView:Lcom/aliyun/player/videoview/AliDisplayView;

    .line 33
    .line 34
    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 35
    .line 36
    .line 37
    return-void
.end method

.method setMirrorMode(Lcom/aliyun/player/IPlayer$MirrorMode;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/aliyun/player/nativeclass/DisplayViewHelper;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v2, "setMirrorMode "

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-static {v0, v1}, Lcom/cicada/player/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    iput-object p1, p0, Lcom/aliyun/player/nativeclass/DisplayViewHelper;->mMirrorMode:Lcom/aliyun/player/IPlayer$MirrorMode;

    .line 24
    .line 25
    iget-object v0, p0, Lcom/aliyun/player/nativeclass/DisplayViewHelper;->mDisPlayView:Lcom/aliyun/player/videoview/displayView/IDisplayView;

    .line 26
    .line 27
    if-eqz v0, :cond_0

    .line 28
    .line 29
    invoke-virtual {v0, p1}, Lcom/aliyun/player/videoview/displayView/IDisplayView;->setMirrorMode(Lcom/aliyun/player/IPlayer$MirrorMode;)V

    .line 30
    .line 31
    .line 32
    :cond_0
    return-void
.end method

.method setOnViewStatusListener(Lcom/aliyun/player/videoview/displayView/IDisplayView$OnDisplayViewStatusListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/aliyun/player/nativeclass/DisplayViewHelper;->mListener:Lcom/aliyun/player/videoview/displayView/IDisplayView$OnDisplayViewStatusListener;

    .line 2
    .line 3
    return-void
.end method

.method setRenderFlagChanged(Z)V
    .locals 3

    .line 1
    sget-object v0, Lcom/aliyun/player/nativeclass/DisplayViewHelper;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v2, "setRenderFlagChanged = "

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-static {v0, v1}, Lcom/cicada/player/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    iput-boolean p1, p0, Lcom/aliyun/player/nativeclass/DisplayViewHelper;->mDirectRender:Z

    .line 24
    .line 25
    iget-object v0, p0, Lcom/aliyun/player/nativeclass/DisplayViewHelper;->mDisPlayView:Lcom/aliyun/player/videoview/displayView/IDisplayView;

    .line 26
    .line 27
    if-eqz v0, :cond_0

    .line 28
    .line 29
    invoke-virtual {v0, p1}, Lcom/aliyun/player/videoview/displayView/IDisplayView;->setRenderFlag(Z)V

    .line 30
    .line 31
    .line 32
    :cond_0
    return-void
.end method

.method setRotateMode(Lcom/aliyun/player/IPlayer$RotateMode;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/aliyun/player/nativeclass/DisplayViewHelper;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v2, "setRotateMode "

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-static {v0, v1}, Lcom/cicada/player/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    iput-object p1, p0, Lcom/aliyun/player/nativeclass/DisplayViewHelper;->mRotateMode:Lcom/aliyun/player/IPlayer$RotateMode;

    .line 24
    .line 25
    iget-object v0, p0, Lcom/aliyun/player/nativeclass/DisplayViewHelper;->mDisPlayView:Lcom/aliyun/player/videoview/displayView/IDisplayView;

    .line 26
    .line 27
    if-eqz v0, :cond_0

    .line 28
    .line 29
    invoke-virtual {v0, p1}, Lcom/aliyun/player/videoview/displayView/IDisplayView;->setRotateMode(Lcom/aliyun/player/IPlayer$RotateMode;)V

    .line 30
    .line 31
    .line 32
    :cond_0
    return-void
.end method

.method setScaleMode(Lcom/aliyun/player/IPlayer$ScaleMode;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/aliyun/player/nativeclass/DisplayViewHelper;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v2, "setScaleMode "

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-static {v0, v1}, Lcom/cicada/player/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    iput-object p1, p0, Lcom/aliyun/player/nativeclass/DisplayViewHelper;->mScaleMode:Lcom/aliyun/player/IPlayer$ScaleMode;

    .line 24
    .line 25
    iget-object v0, p0, Lcom/aliyun/player/nativeclass/DisplayViewHelper;->mDisPlayView:Lcom/aliyun/player/videoview/displayView/IDisplayView;

    .line 26
    .line 27
    if-eqz v0, :cond_0

    .line 28
    .line 29
    invoke-virtual {v0, p1}, Lcom/aliyun/player/videoview/displayView/IDisplayView;->setScaleMode(Lcom/aliyun/player/IPlayer$ScaleMode;)V

    .line 30
    .line 31
    .line 32
    :cond_0
    return-void
.end method

.method public setSurfaceReuse(Z)V
    .locals 1

    .line 1
    iput-boolean p1, p0, Lcom/aliyun/player/nativeclass/DisplayViewHelper;->mReuseSurface:Z

    .line 2
    .line 3
    iget-object v0, p0, Lcom/aliyun/player/nativeclass/DisplayViewHelper;->mDisPlayView:Lcom/aliyun/player/videoview/displayView/IDisplayView;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0, p1}, Lcom/aliyun/player/videoview/displayView/IDisplayView;->setSurfaceReuse(Z)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method setVideoSize(III)V
    .locals 3

    .line 1
    sget-object v0, Lcom/aliyun/player/nativeclass/DisplayViewHelper;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v2, "setVideoSize "

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string v2, " , "

    .line 17
    .line 18
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-static {v0, v1}, Lcom/cicada/player/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    iput p1, p0, Lcom/aliyun/player/nativeclass/DisplayViewHelper;->mVideoWidth:I

    .line 32
    .line 33
    iput p2, p0, Lcom/aliyun/player/nativeclass/DisplayViewHelper;->mVideoHeight:I

    .line 34
    .line 35
    iput p3, p0, Lcom/aliyun/player/nativeclass/DisplayViewHelper;->mVideoRotate:I

    .line 36
    .line 37
    iget-object v0, p0, Lcom/aliyun/player/nativeclass/DisplayViewHelper;->mDisPlayView:Lcom/aliyun/player/videoview/displayView/IDisplayView;

    .line 38
    .line 39
    if-eqz v0, :cond_0

    .line 40
    .line 41
    invoke-virtual {v0, p1, p2, p3}, Lcom/aliyun/player/videoview/displayView/IDisplayView;->setVideoSize(III)V

    .line 42
    .line 43
    .line 44
    :cond_0
    return-void
.end method

.method snapshot()Landroid/graphics/Bitmap;
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/aliyun/player/nativeclass/DisplayViewHelper;->mDisPlayView:Lcom/aliyun/player/videoview/displayView/IDisplayView;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return-object v1

    .line 7
    :cond_0
    invoke-virtual {v0}, Lcom/aliyun/player/videoview/displayView/IDisplayView;->snapShot()Landroid/graphics/Bitmap;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-nez v0, :cond_1

    .line 12
    .line 13
    return-object v1

    .line 14
    :cond_1
    iget-object v2, p0, Lcom/aliyun/player/nativeclass/DisplayViewHelper;->mAliView:Lcom/aliyun/player/videoview/AliDisplayView;

    .line 15
    .line 16
    invoke-virtual {v2}, Landroid/view/View;->buildDrawingCache()V

    .line 17
    .line 18
    .line 19
    iget-object v2, p0, Lcom/aliyun/player/nativeclass/DisplayViewHelper;->mAliView:Lcom/aliyun/player/videoview/AliDisplayView;

    .line 20
    .line 21
    invoke-virtual {v2}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    if-nez v2, :cond_2

    .line 26
    .line 27
    return-object v1

    .line 28
    :cond_2
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    .line 33
    .line 34
    .line 35
    move-result v3

    .line 36
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 37
    .line 38
    invoke-static {v1, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    new-instance v3, Landroid/graphics/Canvas;

    .line 43
    .line 44
    invoke-direct {v3, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 45
    .line 46
    .line 47
    new-instance v4, Landroid/graphics/Paint;

    .line 48
    .line 49
    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    .line 50
    .line 51
    .line 52
    const/4 v5, 0x0

    .line 53
    invoke-virtual {v3, v2, v5, v5, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    .line 60
    .line 61
    .line 62
    move-result v4

    .line 63
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    .line 64
    .line 65
    .line 66
    move-result v6

    .line 67
    sub-int/2addr v4, v6

    .line 68
    int-to-float v4, v4

    .line 69
    const/high16 v6, 0x40000000    # 2.0f

    .line 70
    .line 71
    div-float/2addr v4, v6

    .line 72
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    .line 73
    .line 74
    .line 75
    move-result v2

    .line 76
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    .line 77
    .line 78
    .line 79
    move-result v7

    .line 80
    sub-int/2addr v2, v7

    .line 81
    int-to-float v2, v2

    .line 82
    div-float/2addr v2, v6

    .line 83
    new-instance v6, Landroid/graphics/Paint;

    .line 84
    .line 85
    invoke-direct {v6}, Landroid/graphics/Paint;-><init>()V

    .line 86
    .line 87
    .line 88
    invoke-virtual {v3, v0, v4, v2, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 92
    .line 93
    .line 94
    iget-object v0, p0, Lcom/aliyun/player/nativeclass/DisplayViewHelper;->mClearScreenView:Landroid/view/View;

    .line 95
    .line 96
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 97
    .line 98
    .line 99
    move-result v0

    .line 100
    if-nez v0, :cond_3

    .line 101
    .line 102
    iget-object v0, p0, Lcom/aliyun/player/nativeclass/DisplayViewHelper;->mClearScreenView:Landroid/view/View;

    .line 103
    .line 104
    invoke-virtual {v0}, Landroid/view/View;->buildDrawingCache()V

    .line 105
    .line 106
    .line 107
    iget-object v0, p0, Lcom/aliyun/player/nativeclass/DisplayViewHelper;->mClearScreenView:Landroid/view/View;

    .line 108
    .line 109
    invoke-virtual {v0}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    .line 110
    .line 111
    .line 112
    move-result-object v0

    .line 113
    if-eqz v0, :cond_3

    .line 114
    .line 115
    new-instance v2, Landroid/graphics/Paint;

    .line 116
    .line 117
    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    .line 118
    .line 119
    .line 120
    invoke-virtual {v3, v0, v5, v5, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 121
    .line 122
    .line 123
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 124
    .line 125
    .line 126
    :cond_3
    invoke-virtual {v3}, Landroid/graphics/Canvas;->save()I

    .line 127
    .line 128
    .line 129
    invoke-virtual {v3}, Landroid/graphics/Canvas;->restore()V

    .line 130
    .line 131
    .line 132
    return-object v1
.end method
