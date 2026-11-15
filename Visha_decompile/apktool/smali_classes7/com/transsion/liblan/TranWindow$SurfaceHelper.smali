.class Lcom/transsion/liblan/TranWindow$SurfaceHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/liblan/TranWindow;
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

.field final synthetic this$0:Lcom/transsion/liblan/TranWindow;


# direct methods
.method private constructor <init>(Lcom/transsion/liblan/TranWindow;ILandroid/view/Surface;Landroid/view/SurfaceHolder;)V
    .locals 0

    .line 18
    iput-object p1, p0, Lcom/transsion/liblan/TranWindow$SurfaceHelper;->this$0:Lcom/transsion/liblan/TranWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance p1, Lcom/transsion/liblan/TranWindow$SurfaceHelper$1;

    invoke-direct {p1, p0}, Lcom/transsion/liblan/TranWindow$SurfaceHelper$1;-><init>(Lcom/transsion/liblan/TranWindow$SurfaceHelper;)V

    iput-object p1, p0, Lcom/transsion/liblan/TranWindow$SurfaceHelper;->mSurfaceHolderCallback:Landroid/view/SurfaceHolder$Callback;

    .line 20
    invoke-direct {p0}, Lcom/transsion/liblan/TranWindow$SurfaceHelper;->createSurfaceTextureListener()Landroid/view/TextureView$SurfaceTextureListener;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/liblan/TranWindow$SurfaceHelper;->mSurfaceTextureListener:Landroid/view/TextureView$SurfaceTextureListener;

    .line 21
    iput p2, p0, Lcom/transsion/liblan/TranWindow$SurfaceHelper;->mId:I

    const/4 p1, 0x0

    .line 22
    iput-object p1, p0, Lcom/transsion/liblan/TranWindow$SurfaceHelper;->mSurfaceView:Landroid/view/SurfaceView;

    .line 23
    iput-object p1, p0, Lcom/transsion/liblan/TranWindow$SurfaceHelper;->mTextureView:Landroid/view/TextureView;

    .line 24
    iput-object p4, p0, Lcom/transsion/liblan/TranWindow$SurfaceHelper;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 25
    iput-object p3, p0, Lcom/transsion/liblan/TranWindow$SurfaceHelper;->mSurface:Landroid/view/Surface;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/transsion/liblan/TranWindow;ILandroid/view/Surface;Landroid/view/SurfaceHolder;Lk5b;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/transsion/liblan/TranWindow$SurfaceHelper;-><init>(Lcom/transsion/liblan/TranWindow;ILandroid/view/Surface;Landroid/view/SurfaceHolder;)V

    return-void
.end method

.method private constructor <init>(Lcom/transsion/liblan/TranWindow;ILandroid/view/SurfaceView;)V
    .locals 0

    .line 4
    iput-object p1, p0, Lcom/transsion/liblan/TranWindow$SurfaceHelper;->this$0:Lcom/transsion/liblan/TranWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    new-instance p1, Lcom/transsion/liblan/TranWindow$SurfaceHelper$1;

    invoke-direct {p1, p0}, Lcom/transsion/liblan/TranWindow$SurfaceHelper$1;-><init>(Lcom/transsion/liblan/TranWindow$SurfaceHelper;)V

    iput-object p1, p0, Lcom/transsion/liblan/TranWindow$SurfaceHelper;->mSurfaceHolderCallback:Landroid/view/SurfaceHolder$Callback;

    .line 6
    invoke-direct {p0}, Lcom/transsion/liblan/TranWindow$SurfaceHelper;->createSurfaceTextureListener()Landroid/view/TextureView$SurfaceTextureListener;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/liblan/TranWindow$SurfaceHelper;->mSurfaceTextureListener:Landroid/view/TextureView$SurfaceTextureListener;

    .line 7
    iput p2, p0, Lcom/transsion/liblan/TranWindow$SurfaceHelper;->mId:I

    const/4 p1, 0x0

    .line 8
    iput-object p1, p0, Lcom/transsion/liblan/TranWindow$SurfaceHelper;->mTextureView:Landroid/view/TextureView;

    .line 9
    iput-object p3, p0, Lcom/transsion/liblan/TranWindow$SurfaceHelper;->mSurfaceView:Landroid/view/SurfaceView;

    .line 10
    invoke-virtual {p3}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/liblan/TranWindow$SurfaceHelper;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/transsion/liblan/TranWindow;ILandroid/view/SurfaceView;Lk5b;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/liblan/TranWindow$SurfaceHelper;-><init>(Lcom/transsion/liblan/TranWindow;ILandroid/view/SurfaceView;)V

    return-void
.end method

.method private constructor <init>(Lcom/transsion/liblan/TranWindow;ILandroid/view/TextureView;)V
    .locals 0

    .line 11
    iput-object p1, p0, Lcom/transsion/liblan/TranWindow$SurfaceHelper;->this$0:Lcom/transsion/liblan/TranWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    new-instance p1, Lcom/transsion/liblan/TranWindow$SurfaceHelper$1;

    invoke-direct {p1, p0}, Lcom/transsion/liblan/TranWindow$SurfaceHelper$1;-><init>(Lcom/transsion/liblan/TranWindow$SurfaceHelper;)V

    iput-object p1, p0, Lcom/transsion/liblan/TranWindow$SurfaceHelper;->mSurfaceHolderCallback:Landroid/view/SurfaceHolder$Callback;

    .line 13
    invoke-direct {p0}, Lcom/transsion/liblan/TranWindow$SurfaceHelper;->createSurfaceTextureListener()Landroid/view/TextureView$SurfaceTextureListener;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/liblan/TranWindow$SurfaceHelper;->mSurfaceTextureListener:Landroid/view/TextureView$SurfaceTextureListener;

    .line 14
    iput p2, p0, Lcom/transsion/liblan/TranWindow$SurfaceHelper;->mId:I

    const/4 p1, 0x0

    .line 15
    iput-object p1, p0, Lcom/transsion/liblan/TranWindow$SurfaceHelper;->mSurfaceView:Landroid/view/SurfaceView;

    .line 16
    iput-object p1, p0, Lcom/transsion/liblan/TranWindow$SurfaceHelper;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 17
    iput-object p3, p0, Lcom/transsion/liblan/TranWindow$SurfaceHelper;->mTextureView:Landroid/view/TextureView;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/transsion/liblan/TranWindow;ILandroid/view/TextureView;Lk5b;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/liblan/TranWindow$SurfaceHelper;-><init>(Lcom/transsion/liblan/TranWindow;ILandroid/view/TextureView;)V

    return-void
.end method

.method public static bridge synthetic a(Lcom/transsion/liblan/TranWindow$SurfaceHelper;)Landroid/view/Surface;
    .locals 0

    iget-object p0, p0, Lcom/transsion/liblan/TranWindow$SurfaceHelper;->mSurface:Landroid/view/Surface;

    return-object p0
.end method

.method private attachSurface()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/liblan/TranWindow$SurfaceHelper;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/transsion/liblan/TranWindow$SurfaceHelper;->mSurfaceHolderCallback:Landroid/view/SurfaceHolder$Callback;

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    :cond_0
    iget-object v0, p0, Lcom/transsion/liblan/TranWindow$SurfaceHelper;->mSurface:Landroid/view/Surface;

    invoke-direct {p0, v0}, Lcom/transsion/liblan/TranWindow$SurfaceHelper;->setSurface(Landroid/view/Surface;)V

    return-void
.end method

.method private attachSurfaceView()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/liblan/TranWindow$SurfaceHelper;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    iget-object v1, p0, Lcom/transsion/liblan/TranWindow$SurfaceHelper;->mSurfaceHolderCallback:Landroid/view/SurfaceHolder$Callback;

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    iget-object v0, p0, Lcom/transsion/liblan/TranWindow$SurfaceHelper;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v0}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/transsion/liblan/TranWindow$SurfaceHelper;->setSurface(Landroid/view/Surface;)V

    return-void
.end method

.method private attachTextureView()V
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    iget-object v0, p0, Lcom/transsion/liblan/TranWindow$SurfaceHelper;->mTextureView:Landroid/view/TextureView;

    iget-object v1, p0, Lcom/transsion/liblan/TranWindow$SurfaceHelper;->mSurfaceTextureListener:Landroid/view/TextureView$SurfaceTextureListener;

    invoke-virtual {v0, v1}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    iget-object v0, p0, Lcom/transsion/liblan/TranWindow$SurfaceHelper;->mTextureView:Landroid/view/TextureView;

    invoke-virtual {v0}, Landroid/view/TextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/transsion/liblan/TranWindow$SurfaceHelper;->mSurfaceTextureListener:Landroid/view/TextureView$SurfaceTextureListener;

    iget-object v2, p0, Lcom/transsion/liblan/TranWindow$SurfaceHelper;->mTextureView:Landroid/view/TextureView;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    iget-object p0, p0, Lcom/transsion/liblan/TranWindow$SurfaceHelper;->mTextureView:Landroid/view/TextureView;

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    invoke-interface {v1, v0, v2, p0}, Landroid/view/TextureView$SurfaceTextureListener;->onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V

    :cond_0
    return-void
.end method

.method public static bridge synthetic b(Lcom/transsion/liblan/TranWindow$SurfaceHelper;)Landroid/view/SurfaceHolder;
    .locals 0

    iget-object p0, p0, Lcom/transsion/liblan/TranWindow$SurfaceHelper;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    return-object p0
.end method

.method public static bridge synthetic c(Lcom/transsion/liblan/TranWindow$SurfaceHelper;Landroid/view/Surface;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/liblan/TranWindow$SurfaceHelper;->setSurface(Landroid/view/Surface;)V

    return-void
.end method

.method private createSurfaceTextureListener()Landroid/view/TextureView$SurfaceTextureListener;
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    new-instance v0, Lcom/transsion/liblan/TranWindow$SurfaceHelper$2;

    invoke-direct {v0, p0}, Lcom/transsion/liblan/TranWindow$SurfaceHelper$2;-><init>(Lcom/transsion/liblan/TranWindow$SurfaceHelper;)V

    return-object v0
.end method

.method private releaseTextureView()V
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    iget-object p0, p0, Lcom/transsion/liblan/TranWindow$SurfaceHelper;->mTextureView:Landroid/view/TextureView;

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    :cond_0
    return-void
.end method

.method private setSurface(Landroid/view/Surface;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setSurface=============="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AWindow"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/view/Surface;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/liblan/TranWindow$SurfaceHelper;->this$0:Lcom/transsion/liblan/TranWindow;

    iget v2, p0, Lcom/transsion/liblan/TranWindow$SurfaceHelper;->mId:I

    invoke-static {v0, v2}, Lcom/transsion/liblan/TranWindow;->b(Lcom/transsion/liblan/TranWindow;I)Landroid/view/Surface;

    move-result-object v0

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/transsion/liblan/TranWindow$SurfaceHelper;->mSurface:Landroid/view/Surface;

    iget-object v0, p0, Lcom/transsion/liblan/TranWindow$SurfaceHelper;->this$0:Lcom/transsion/liblan/TranWindow;

    iget v2, p0, Lcom/transsion/liblan/TranWindow$SurfaceHelper;->mId:I

    invoke-static {v0, v2, p1}, Lcom/transsion/liblan/TranWindow;->e(Lcom/transsion/liblan/TranWindow;ILandroid/view/Surface;)V

    iget-object p0, p0, Lcom/transsion/liblan/TranWindow$SurfaceHelper;->this$0:Lcom/transsion/liblan/TranWindow;

    invoke-static {p0}, Lcom/transsion/liblan/TranWindow;->c(Lcom/transsion/liblan/TranWindow;)V

    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setSurface==========onSurfaceCreated===="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public attach()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/liblan/TranWindow$SurfaceHelper;->mSurfaceView:Landroid/view/SurfaceView;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/transsion/liblan/TranWindow$SurfaceHelper;->attachSurfaceView()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/transsion/liblan/TranWindow$SurfaceHelper;->mTextureView:Landroid/view/TextureView;

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/transsion/liblan/TranWindow$SurfaceHelper;->attachTextureView()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/transsion/liblan/TranWindow$SurfaceHelper;->mSurface:Landroid/view/Surface;

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/transsion/liblan/TranWindow$SurfaceHelper;->attachSurface()V

    :goto_0
    return-void

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
.end method

.method public getSurface()Landroid/view/Surface;
    .locals 0

    iget-object p0, p0, Lcom/transsion/liblan/TranWindow$SurfaceHelper;->mSurface:Landroid/view/Surface;

    return-object p0
.end method

.method public getSurfaceHolder()Landroid/view/SurfaceHolder;
    .locals 0

    iget-object p0, p0, Lcom/transsion/liblan/TranWindow$SurfaceHelper;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    return-object p0
.end method

.method public isReady()Z
    .locals 1

    iget-object v0, p0, Lcom/transsion/liblan/TranWindow$SurfaceHelper;->mSurfaceView:Landroid/view/SurfaceView;

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/transsion/liblan/TranWindow$SurfaceHelper;->mSurface:Landroid/view/Surface;

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

    iput-object v0, p0, Lcom/transsion/liblan/TranWindow$SurfaceHelper;->mSurface:Landroid/view/Surface;

    iget-object v1, p0, Lcom/transsion/liblan/TranWindow$SurfaceHelper;->this$0:Lcom/transsion/liblan/TranWindow;

    iget v2, p0, Lcom/transsion/liblan/TranWindow$SurfaceHelper;->mId:I

    invoke-static {v1, v2, v0}, Lcom/transsion/liblan/TranWindow;->e(Lcom/transsion/liblan/TranWindow;ILandroid/view/Surface;)V

    iget-object v0, p0, Lcom/transsion/liblan/TranWindow$SurfaceHelper;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/transsion/liblan/TranWindow$SurfaceHelper;->mSurfaceHolderCallback:Landroid/view/SurfaceHolder$Callback;

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->removeCallback(Landroid/view/SurfaceHolder$Callback;)V

    :cond_0
    invoke-direct {p0}, Lcom/transsion/liblan/TranWindow$SurfaceHelper;->releaseTextureView()V

    return-void
.end method
