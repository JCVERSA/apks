.class public Lcom/aliyun/player/videoview/displayView/TextureDisplayView;
.super Lcom/aliyun/player/videoview/displayView/IDisplayView;
.source "source.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mReuseSurface:Z

.field private mSurface:Landroid/view/Surface;

.field private mSurfaceTexture:Landroid/graphics/SurfaceTexture;

.field private mTextureView:Landroid/view/TextureView;


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
    const-class v1, Lcom/aliyun/player/videoview/displayView/TextureDisplayView;

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
    sput-object v0, Lcom/aliyun/player/videoview/displayView/TextureDisplayView;->TAG:Ljava/lang/String;

    .line 25
    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/aliyun/player/videoview/displayView/IDisplayView;-><init>(Landroid/view/ViewGroup;)V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x0

    .line 5
    iput-object p1, p0, Lcom/aliyun/player/videoview/displayView/TextureDisplayView;->mTextureView:Landroid/view/TextureView;

    .line 6
    .line 7
    iput-object p1, p0, Lcom/aliyun/player/videoview/displayView/TextureDisplayView;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 8
    .line 9
    iput-object p1, p0, Lcom/aliyun/player/videoview/displayView/TextureDisplayView;->mSurface:Landroid/view/Surface;

    .line 10
    .line 11
    const/4 p1, 0x1

    .line 12
    iput-boolean p1, p0, Lcom/aliyun/player/videoview/displayView/TextureDisplayView;->mReuseSurface:Z

    .line 13
    .line 14
    return-void
.end method

.method static synthetic access$000(Lcom/aliyun/player/videoview/displayView/TextureDisplayView;)Landroid/graphics/SurfaceTexture;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/aliyun/player/videoview/displayView/TextureDisplayView;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$002(Lcom/aliyun/player/videoview/displayView/TextureDisplayView;Landroid/graphics/SurfaceTexture;)Landroid/graphics/SurfaceTexture;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/aliyun/player/videoview/displayView/TextureDisplayView;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic access$100(Lcom/aliyun/player/videoview/displayView/TextureDisplayView;)Landroid/view/Surface;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/aliyun/player/videoview/displayView/TextureDisplayView;->mSurface:Landroid/view/Surface;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$102(Lcom/aliyun/player/videoview/displayView/TextureDisplayView;Landroid/view/Surface;)Landroid/view/Surface;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/aliyun/player/videoview/displayView/TextureDisplayView;->mSurface:Landroid/view/Surface;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic access$200(Lcom/aliyun/player/videoview/displayView/TextureDisplayView;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/aliyun/player/videoview/displayView/TextureDisplayView;->mReuseSurface:Z

    .line 2
    .line 3
    return p0
.end method

.method static synthetic access$300(Lcom/aliyun/player/videoview/displayView/TextureDisplayView;)Landroid/view/TextureView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/aliyun/player/videoview/displayView/TextureDisplayView;->mTextureView:Landroid/view/TextureView;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$400()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/aliyun/player/videoview/displayView/TextureDisplayView;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method private adjustPhotoRotation(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 7

    .line 1
    new-instance v5, Landroid/graphics/Matrix;

    .line 2
    .line 3
    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/aliyun/player/videoview/displayView/TextureDisplayView;->mTextureView:Landroid/view/TextureView;

    .line 7
    .line 8
    invoke-virtual {v0}, Landroid/view/View;->getRotation()F

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    invoke-virtual {v5, v0}, Landroid/graphics/Matrix;->preRotate(F)Z

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lcom/aliyun/player/videoview/displayView/TextureDisplayView;->mTextureView:Landroid/view/TextureView;

    .line 16
    .line 17
    invoke-virtual {v0}, Landroid/view/View;->getScaleX()F

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    iget-object v1, p0, Lcom/aliyun/player/videoview/displayView/TextureDisplayView;->mTextureView:Landroid/view/TextureView;

    .line 22
    .line 23
    invoke-virtual {v1}, Landroid/view/View;->getScaleY()F

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    invoke-virtual {v5, v0, v1}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    .line 31
    .line 32
    .line 33
    move-result v3

    .line 34
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    .line 35
    .line 36
    .line 37
    move-result v4

    .line 38
    const/4 v6, 0x1

    .line 39
    const/4 v1, 0x0

    .line 40
    const/4 v2, 0x0

    .line 41
    move-object v0, p1

    .line 42
    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    return-object p1
.end method


# virtual methods
.method protected getRenderView(Landroid/content/Context;)Landroid/view/View;
    .locals 1

    .line 1
    new-instance v0, Landroid/view/TextureView;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Landroid/view/TextureView;-><init>(Landroid/content/Context;)V

    .line 4
    .line 5
    .line 6
    iput-object v0, p0, Lcom/aliyun/player/videoview/displayView/TextureDisplayView;->mTextureView:Landroid/view/TextureView;

    .line 7
    .line 8
    new-instance p1, Lcom/aliyun/player/videoview/displayView/TextureDisplayView$1;

    .line 9
    .line 10
    invoke-direct {p1, p0}, Lcom/aliyun/player/videoview/displayView/TextureDisplayView$1;-><init>(Lcom/aliyun/player/videoview/displayView/TextureDisplayView;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, p1}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 14
    .line 15
    .line 16
    iget-object p1, p0, Lcom/aliyun/player/videoview/displayView/TextureDisplayView;->mTextureView:Landroid/view/TextureView;

    .line 17
    .line 18
    return-object p1
.end method

.method protected mirrorRenderView(Lcom/aliyun/player/IPlayer$MirrorMode;)Z
    .locals 3

    .line 1
    sget-object v0, Lcom/aliyun/player/IPlayer$MirrorMode;->MIRROR_MODE_HORIZONTAL:Lcom/aliyun/player/IPlayer$MirrorMode;

    .line 2
    .line 3
    const/high16 v1, -0x40800000    # -1.0f

    .line 4
    .line 5
    const/high16 v2, 0x3f800000    # 1.0f

    .line 6
    .line 7
    if-ne p1, v0, :cond_0

    .line 8
    .line 9
    iget-object p1, p0, Lcom/aliyun/player/videoview/displayView/TextureDisplayView;->mTextureView:Landroid/view/TextureView;

    .line 10
    .line 11
    invoke-virtual {p1, v1}, Landroid/view/View;->setScaleX(F)V

    .line 12
    .line 13
    .line 14
    iget-object p1, p0, Lcom/aliyun/player/videoview/displayView/TextureDisplayView;->mTextureView:Landroid/view/TextureView;

    .line 15
    .line 16
    invoke-virtual {p1, v2}, Landroid/view/View;->setScaleY(F)V

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    sget-object v0, Lcom/aliyun/player/IPlayer$MirrorMode;->MIRROR_MODE_VERTICAL:Lcom/aliyun/player/IPlayer$MirrorMode;

    .line 21
    .line 22
    if-ne p1, v0, :cond_1

    .line 23
    .line 24
    iget-object p1, p0, Lcom/aliyun/player/videoview/displayView/TextureDisplayView;->mTextureView:Landroid/view/TextureView;

    .line 25
    .line 26
    invoke-virtual {p1, v1}, Landroid/view/View;->setScaleY(F)V

    .line 27
    .line 28
    .line 29
    iget-object p1, p0, Lcom/aliyun/player/videoview/displayView/TextureDisplayView;->mTextureView:Landroid/view/TextureView;

    .line 30
    .line 31
    invoke-virtual {p1, v2}, Landroid/view/View;->setScaleX(F)V

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_1
    iget-object p1, p0, Lcom/aliyun/player/videoview/displayView/TextureDisplayView;->mTextureView:Landroid/view/TextureView;

    .line 36
    .line 37
    invoke-virtual {p1, v2}, Landroid/view/View;->setScaleY(F)V

    .line 38
    .line 39
    .line 40
    iget-object p1, p0, Lcom/aliyun/player/videoview/displayView/TextureDisplayView;->mTextureView:Landroid/view/TextureView;

    .line 41
    .line 42
    invoke-virtual {p1, v2}, Landroid/view/View;->setScaleX(F)V

    .line 43
    .line 44
    .line 45
    :goto_0
    const/4 p1, 0x1

    .line 46
    return p1
.end method

.method protected rotateRenderView(Lcom/aliyun/player/IPlayer$RotateMode;)Z
    .locals 1

    .line 1
    sget-object v0, Lcom/aliyun/player/IPlayer$RotateMode;->ROTATE_90:Lcom/aliyun/player/IPlayer$RotateMode;

    .line 2
    .line 3
    if-ne p1, v0, :cond_0

    .line 4
    .line 5
    iget-object p1, p0, Lcom/aliyun/player/videoview/displayView/TextureDisplayView;->mTextureView:Landroid/view/TextureView;

    .line 6
    .line 7
    const/high16 v0, 0x42b40000    # 90.0f

    .line 8
    .line 9
    invoke-virtual {p1, v0}, Landroid/view/View;->setRotation(F)V

    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    sget-object v0, Lcom/aliyun/player/IPlayer$RotateMode;->ROTATE_180:Lcom/aliyun/player/IPlayer$RotateMode;

    .line 14
    .line 15
    if-ne p1, v0, :cond_1

    .line 16
    .line 17
    iget-object p1, p0, Lcom/aliyun/player/videoview/displayView/TextureDisplayView;->mTextureView:Landroid/view/TextureView;

    .line 18
    .line 19
    const/high16 v0, 0x43340000    # 180.0f

    .line 20
    .line 21
    invoke-virtual {p1, v0}, Landroid/view/View;->setRotation(F)V

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_1
    sget-object v0, Lcom/aliyun/player/IPlayer$RotateMode;->ROTATE_270:Lcom/aliyun/player/IPlayer$RotateMode;

    .line 26
    .line 27
    if-ne p1, v0, :cond_2

    .line 28
    .line 29
    iget-object p1, p0, Lcom/aliyun/player/videoview/displayView/TextureDisplayView;->mTextureView:Landroid/view/TextureView;

    .line 30
    .line 31
    const/high16 v0, 0x43870000    # 270.0f

    .line 32
    .line 33
    invoke-virtual {p1, v0}, Landroid/view/View;->setRotation(F)V

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_2
    iget-object p1, p0, Lcom/aliyun/player/videoview/displayView/TextureDisplayView;->mTextureView:Landroid/view/TextureView;

    .line 38
    .line 39
    const/4 v0, 0x0

    .line 40
    invoke-virtual {p1, v0}, Landroid/view/View;->setRotation(F)V

    .line 41
    .line 42
    .line 43
    :goto_0
    const/4 p1, 0x1

    .line 44
    return p1
.end method

.method public setSurfaceReuse(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/aliyun/player/videoview/displayView/TextureDisplayView;->mReuseSurface:Z

    .line 2
    .line 3
    return-void
.end method

.method protected snapRenderView()Landroid/graphics/Bitmap;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/aliyun/player/videoview/displayView/TextureDisplayView;->mTextureView:Landroid/view/TextureView;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/view/TextureView;->getBitmap()Landroid/graphics/Bitmap;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-direct {p0, v0}, Lcom/aliyun/player/videoview/displayView/TextureDisplayView;->adjustPhotoRotation(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 12
    .line 13
    .line 14
    return-object v1
.end method
