.class Lcom/transsion/tranplayer/AWindow$SurfaceHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/tranplayer/AWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SurfaceHelper"
.end annotation


# instance fields
.field private final mId:I

.field private mSurface:Landroid/view/Surface;

.field private final mSurfaceHolder:Landroid/view/SurfaceHolder;

.field private final mSurfaceHolderCallback:Landroid/view/SurfaceHolder$Callback;

.field private final mSurfaceTextureListener:Landroid/view/TextureView$SurfaceTextureListener;

.field private final mSurfaceView:Landroid/view/SurfaceView;

.field private final mTextureView:Landroid/view/TextureView;

.field final synthetic this$0:Lcom/transsion/tranplayer/AWindow;


# direct methods
.method private constructor <init>(Lcom/transsion/tranplayer/AWindow;ILandroid/view/Surface;Landroid/view/SurfaceHolder;)V
    .locals 0

    .line 18
    iput-object p1, p0, Lcom/transsion/tranplayer/AWindow$SurfaceHelper;->this$0:Lcom/transsion/tranplayer/AWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance p1, Lcom/transsion/tranplayer/AWindow$SurfaceHelper$1;

    invoke-direct {p1, p0}, Lcom/transsion/tranplayer/AWindow$SurfaceHelper$1;-><init>(Lcom/transsion/tranplayer/AWindow$SurfaceHelper;)V

    iput-object p1, p0, Lcom/transsion/tranplayer/AWindow$SurfaceHelper;->mSurfaceHolderCallback:Landroid/view/SurfaceHolder$Callback;

    .line 20
    invoke-direct {p0}, Lcom/transsion/tranplayer/AWindow$SurfaceHelper;->createSurfaceTextureListener()Landroid/view/TextureView$SurfaceTextureListener;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/tranplayer/AWindow$SurfaceHelper;->mSurfaceTextureListener:Landroid/view/TextureView$SurfaceTextureListener;

    .line 21
    iput p2, p0, Lcom/transsion/tranplayer/AWindow$SurfaceHelper;->mId:I

    const/4 p1, 0x0

    .line 22
    iput-object p1, p0, Lcom/transsion/tranplayer/AWindow$SurfaceHelper;->mSurfaceView:Landroid/view/SurfaceView;

    .line 23
    iput-object p1, p0, Lcom/transsion/tranplayer/AWindow$SurfaceHelper;->mTextureView:Landroid/view/TextureView;

    .line 24
    iput-object p4, p0, Lcom/transsion/tranplayer/AWindow$SurfaceHelper;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 25
    iput-object p3, p0, Lcom/transsion/tranplayer/AWindow$SurfaceHelper;->mSurface:Landroid/view/Surface;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/transsion/tranplayer/AWindow;ILandroid/view/Surface;Landroid/view/SurfaceHolder;Lcom/transsion/tranplayer/AWindow$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/transsion/tranplayer/AWindow$SurfaceHelper;-><init>(Lcom/transsion/tranplayer/AWindow;ILandroid/view/Surface;Landroid/view/SurfaceHolder;)V

    return-void
.end method

.method private constructor <init>(Lcom/transsion/tranplayer/AWindow;ILandroid/view/SurfaceView;)V
    .locals 0

    .line 4
    iput-object p1, p0, Lcom/transsion/tranplayer/AWindow$SurfaceHelper;->this$0:Lcom/transsion/tranplayer/AWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    new-instance p1, Lcom/transsion/tranplayer/AWindow$SurfaceHelper$1;

    invoke-direct {p1, p0}, Lcom/transsion/tranplayer/AWindow$SurfaceHelper$1;-><init>(Lcom/transsion/tranplayer/AWindow$SurfaceHelper;)V

    iput-object p1, p0, Lcom/transsion/tranplayer/AWindow$SurfaceHelper;->mSurfaceHolderCallback:Landroid/view/SurfaceHolder$Callback;

    .line 6
    invoke-direct {p0}, Lcom/transsion/tranplayer/AWindow$SurfaceHelper;->createSurfaceTextureListener()Landroid/view/TextureView$SurfaceTextureListener;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/tranplayer/AWindow$SurfaceHelper;->mSurfaceTextureListener:Landroid/view/TextureView$SurfaceTextureListener;

    .line 7
    iput p2, p0, Lcom/transsion/tranplayer/AWindow$SurfaceHelper;->mId:I

    const/4 p1, 0x0

    .line 8
    iput-object p1, p0, Lcom/transsion/tranplayer/AWindow$SurfaceHelper;->mTextureView:Landroid/view/TextureView;

    .line 9
    iput-object p3, p0, Lcom/transsion/tranplayer/AWindow$SurfaceHelper;->mSurfaceView:Landroid/view/SurfaceView;

    .line 10
    invoke-virtual {p3}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/tranplayer/AWindow$SurfaceHelper;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/transsion/tranplayer/AWindow;ILandroid/view/SurfaceView;Lcom/transsion/tranplayer/AWindow$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/tranplayer/AWindow$SurfaceHelper;-><init>(Lcom/transsion/tranplayer/AWindow;ILandroid/view/SurfaceView;)V

    return-void
.end method

.method private constructor <init>(Lcom/transsion/tranplayer/AWindow;ILandroid/view/TextureView;)V
    .locals 0

    .line 11
    iput-object p1, p0, Lcom/transsion/tranplayer/AWindow$SurfaceHelper;->this$0:Lcom/transsion/tranplayer/AWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    new-instance p1, Lcom/transsion/tranplayer/AWindow$SurfaceHelper$1;

    invoke-direct {p1, p0}, Lcom/transsion/tranplayer/AWindow$SurfaceHelper$1;-><init>(Lcom/transsion/tranplayer/AWindow$SurfaceHelper;)V

    iput-object p1, p0, Lcom/transsion/tranplayer/AWindow$SurfaceHelper;->mSurfaceHolderCallback:Landroid/view/SurfaceHolder$Callback;

    .line 13
    invoke-direct {p0}, Lcom/transsion/tranplayer/AWindow$SurfaceHelper;->createSurfaceTextureListener()Landroid/view/TextureView$SurfaceTextureListener;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/tranplayer/AWindow$SurfaceHelper;->mSurfaceTextureListener:Landroid/view/TextureView$SurfaceTextureListener;

    .line 14
    iput p2, p0, Lcom/transsion/tranplayer/AWindow$SurfaceHelper;->mId:I

    const/4 p1, 0x0

    .line 15
    iput-object p1, p0, Lcom/transsion/tranplayer/AWindow$SurfaceHelper;->mSurfaceView:Landroid/view/SurfaceView;

    .line 16
    iput-object p1, p0, Lcom/transsion/tranplayer/AWindow$SurfaceHelper;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 17
    iput-object p3, p0, Lcom/transsion/tranplayer/AWindow$SurfaceHelper;->mTextureView:Landroid/view/TextureView;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/transsion/tranplayer/AWindow;ILandroid/view/TextureView;Lcom/transsion/tranplayer/AWindow$1;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/tranplayer/AWindow$SurfaceHelper;-><init>(Lcom/transsion/tranplayer/AWindow;ILandroid/view/TextureView;)V

    return-void
.end method

.method public static synthetic access$300(Lcom/transsion/tranplayer/AWindow$SurfaceHelper;)Landroid/view/SurfaceHolder;
    .locals 0

    iget-object p0, p0, Lcom/transsion/tranplayer/AWindow$SurfaceHelper;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    return-object p0
.end method

.method public static synthetic access$400(Lcom/transsion/tranplayer/AWindow$SurfaceHelper;Landroid/view/Surface;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/tranplayer/AWindow$SurfaceHelper;->setSurface(Landroid/view/Surface;)V

    return-void
.end method

.method private attachSurface()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/tranplayer/AWindow$SurfaceHelper;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/transsion/tranplayer/AWindow$SurfaceHelper;->mSurfaceHolderCallback:Landroid/view/SurfaceHolder$Callback;

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    :cond_0
    iget-object v0, p0, Lcom/transsion/tranplayer/AWindow$SurfaceHelper;->mSurface:Landroid/view/Surface;

    invoke-direct {p0, v0}, Lcom/transsion/tranplayer/AWindow$SurfaceHelper;->setSurface(Landroid/view/Surface;)V

    return-void
.end method

.method private attachSurfaceView()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/tranplayer/AWindow$SurfaceHelper;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    iget-object v1, p0, Lcom/transsion/tranplayer/AWindow$SurfaceHelper;->mSurfaceHolderCallback:Landroid/view/SurfaceHolder$Callback;

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    iget-object v0, p0, Lcom/transsion/tranplayer/AWindow$SurfaceHelper;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v0}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/transsion/tranplayer/AWindow$SurfaceHelper;->setSurface(Landroid/view/Surface;)V

    return-void
.end method

.method private attachTextureView()V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    iget-object v0, p0, Lcom/transsion/tranplayer/AWindow$SurfaceHelper;->mTextureView:Landroid/view/TextureView;

    iget-object v1, p0, Lcom/transsion/tranplayer/AWindow$SurfaceHelper;->mSurfaceTextureListener:Landroid/view/TextureView$SurfaceTextureListener;

    invoke-virtual {v0, v1}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    new-instance v0, Landroid/view/Surface;

    iget-object v1, p0, Lcom/transsion/tranplayer/AWindow$SurfaceHelper;->mTextureView:Landroid/view/TextureView;

    invoke-virtual {v1}, Landroid/view/TextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    invoke-direct {p0, v0}, Lcom/transsion/tranplayer/AWindow$SurfaceHelper;->setSurface(Landroid/view/Surface;)V

    return-void
.end method

.method private createSurfaceTextureListener()Landroid/view/TextureView$SurfaceTextureListener;
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    new-instance v0, Lcom/transsion/tranplayer/AWindow$SurfaceHelper$2;

    invoke-direct {v0, p0}, Lcom/transsion/tranplayer/AWindow$SurfaceHelper$2;-><init>(Lcom/transsion/tranplayer/AWindow$SurfaceHelper;)V

    return-object v0
.end method

.method private releaseTextureView()V
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    iget-object p0, p0, Lcom/transsion/tranplayer/AWindow$SurfaceHelper;->mTextureView:Landroid/view/TextureView;

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    :cond_0
    return-void
.end method

.method private setSurface(Landroid/view/Surface;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/Surface;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/tranplayer/AWindow$SurfaceHelper;->this$0:Lcom/transsion/tranplayer/AWindow;

    iget v1, p0, Lcom/transsion/tranplayer/AWindow$SurfaceHelper;->mId:I

    invoke-static {v0, v1}, Lcom/transsion/tranplayer/AWindow;->access$000(Lcom/transsion/tranplayer/AWindow;I)Landroid/view/Surface;

    move-result-object v0

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/transsion/tranplayer/AWindow$SurfaceHelper;->mSurface:Landroid/view/Surface;

    iget-object v0, p0, Lcom/transsion/tranplayer/AWindow$SurfaceHelper;->this$0:Lcom/transsion/tranplayer/AWindow;

    iget v1, p0, Lcom/transsion/tranplayer/AWindow$SurfaceHelper;->mId:I

    invoke-static {v0, v1, p1}, Lcom/transsion/tranplayer/AWindow;->access$100(Lcom/transsion/tranplayer/AWindow;ILandroid/view/Surface;)V

    iget-object p0, p0, Lcom/transsion/tranplayer/AWindow$SurfaceHelper;->this$0:Lcom/transsion/tranplayer/AWindow;

    invoke-static {p0}, Lcom/transsion/tranplayer/AWindow;->access$200(Lcom/transsion/tranplayer/AWindow;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public attach()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/tranplayer/AWindow$SurfaceHelper;->mSurfaceView:Landroid/view/SurfaceView;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/transsion/tranplayer/AWindow$SurfaceHelper;->attachSurfaceView()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/transsion/tranplayer/AWindow$SurfaceHelper;->mTextureView:Landroid/view/TextureView;

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/transsion/tranplayer/AWindow$SurfaceHelper;->attachTextureView()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/transsion/tranplayer/AWindow$SurfaceHelper;->mSurface:Landroid/view/Surface;

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/transsion/tranplayer/AWindow$SurfaceHelper;->attachSurface()V

    :goto_0
    return-void

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
.end method

.method public getSurface()Landroid/view/Surface;
    .locals 0

    iget-object p0, p0, Lcom/transsion/tranplayer/AWindow$SurfaceHelper;->mSurface:Landroid/view/Surface;

    return-object p0
.end method

.method public getSurfaceHolder()Landroid/view/SurfaceHolder;
    .locals 0

    iget-object p0, p0, Lcom/transsion/tranplayer/AWindow$SurfaceHelper;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    return-object p0
.end method

.method public isReady()Z
    .locals 1

    iget-object v0, p0, Lcom/transsion/tranplayer/AWindow$SurfaceHelper;->mSurfaceView:Landroid/view/SurfaceView;

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/transsion/tranplayer/AWindow$SurfaceHelper;->mSurface:Landroid/view/Surface;

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public release()V
    .locals 3

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/transsion/tranplayer/AWindow$SurfaceHelper;->mSurface:Landroid/view/Surface;

    iget-object v1, p0, Lcom/transsion/tranplayer/AWindow$SurfaceHelper;->this$0:Lcom/transsion/tranplayer/AWindow;

    iget v2, p0, Lcom/transsion/tranplayer/AWindow$SurfaceHelper;->mId:I

    invoke-static {v1, v2, v0}, Lcom/transsion/tranplayer/AWindow;->access$100(Lcom/transsion/tranplayer/AWindow;ILandroid/view/Surface;)V

    iget-object v0, p0, Lcom/transsion/tranplayer/AWindow$SurfaceHelper;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/transsion/tranplayer/AWindow$SurfaceHelper;->mSurfaceHolderCallback:Landroid/view/SurfaceHolder$Callback;

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->removeCallback(Landroid/view/SurfaceHolder$Callback;)V

    :cond_0
    invoke-direct {p0}, Lcom/transsion/tranplayer/AWindow$SurfaceHelper;->releaseTextureView()V

    return-void
.end method
