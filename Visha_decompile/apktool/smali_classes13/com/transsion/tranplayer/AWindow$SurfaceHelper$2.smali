.class Lcom/transsion/tranplayer/AWindow$SurfaceHelper$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/tranplayer/AWindow$SurfaceHelper;->createSurfaceTextureListener()Landroid/view/TextureView$SurfaceTextureListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/transsion/tranplayer/AWindow$SurfaceHelper;


# direct methods
.method public constructor <init>(Lcom/transsion/tranplayer/AWindow$SurfaceHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/tranplayer/AWindow$SurfaceHelper$2;->this$1:Lcom/transsion/tranplayer/AWindow$SurfaceHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/tranplayer/AWindow$SurfaceHelper$2;->this$1:Lcom/transsion/tranplayer/AWindow$SurfaceHelper;

    new-instance p2, Landroid/view/Surface;

    invoke-direct {p2, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    invoke-static {p0, p2}, Lcom/transsion/tranplayer/AWindow$SurfaceHelper;->access$400(Lcom/transsion/tranplayer/AWindow$SurfaceHelper;Landroid/view/Surface;)V

    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 0

    iget-object p0, p0, Lcom/transsion/tranplayer/AWindow$SurfaceHelper$2;->this$1:Lcom/transsion/tranplayer/AWindow$SurfaceHelper;

    iget-object p0, p0, Lcom/transsion/tranplayer/AWindow$SurfaceHelper;->this$0:Lcom/transsion/tranplayer/AWindow;

    invoke-static {p0}, Lcom/transsion/tranplayer/AWindow;->access$500(Lcom/transsion/tranplayer/AWindow;)V

    const/4 p0, 0x1

    return p0
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    return-void
.end method
