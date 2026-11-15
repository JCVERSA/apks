.class Lcom/journeyapps/barcodescanner/CameraPreview$a;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/journeyapps/barcodescanner/CameraPreview;->x()Landroid/view/TextureView$SurfaceTextureListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/journeyapps/barcodescanner/CameraPreview;


# direct methods
.method constructor <init>(Lcom/journeyapps/barcodescanner/CameraPreview;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/journeyapps/barcodescanner/CameraPreview$a;->a:Lcom/journeyapps/barcodescanner/CameraPreview;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lcom/journeyapps/barcodescanner/CameraPreview$a;->onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 0

    .line 1
    const/4 p1, 0x0

    .line 2
    return p1
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/journeyapps/barcodescanner/CameraPreview$a;->a:Lcom/journeyapps/barcodescanner/CameraPreview;

    .line 2
    .line 3
    new-instance v0, Laf/q;

    .line 4
    .line 5
    invoke-direct {v0, p2, p3}, Laf/q;-><init>(II)V

    .line 6
    .line 7
    .line 8
    invoke-static {p1, v0}, Lcom/journeyapps/barcodescanner/CameraPreview;->a(Lcom/journeyapps/barcodescanner/CameraPreview;Laf/q;)Laf/q;

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lcom/journeyapps/barcodescanner/CameraPreview$a;->a:Lcom/journeyapps/barcodescanner/CameraPreview;

    .line 12
    .line 13
    invoke-static {p1}, Lcom/journeyapps/barcodescanner/CameraPreview;->b(Lcom/journeyapps/barcodescanner/CameraPreview;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    .line 1
    return-void
.end method
