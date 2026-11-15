.class Lcom/aliyun/player/videoview/displayView/TextureDisplayView$1;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aliyun/player/videoview/displayView/TextureDisplayView;->getRenderView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/aliyun/player/videoview/displayView/TextureDisplayView;


# direct methods
.method constructor <init>(Lcom/aliyun/player/videoview/displayView/TextureDisplayView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/aliyun/player/videoview/displayView/TextureDisplayView$1;->this$0:Lcom/aliyun/player/videoview/displayView/TextureDisplayView;

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
    .locals 1

    .line 1
    iget-object p2, p0, Lcom/aliyun/player/videoview/displayView/TextureDisplayView$1;->this$0:Lcom/aliyun/player/videoview/displayView/TextureDisplayView;

    .line 2
    .line 3
    invoke-static {p2}, Lcom/aliyun/player/videoview/displayView/TextureDisplayView;->access$000(Lcom/aliyun/player/videoview/displayView/TextureDisplayView;)Landroid/graphics/SurfaceTexture;

    .line 4
    .line 5
    .line 6
    move-result-object p2

    .line 7
    if-nez p2, :cond_0

    .line 8
    .line 9
    iget-object p2, p0, Lcom/aliyun/player/videoview/displayView/TextureDisplayView$1;->this$0:Lcom/aliyun/player/videoview/displayView/TextureDisplayView;

    .line 10
    .line 11
    invoke-static {p2, p1}, Lcom/aliyun/player/videoview/displayView/TextureDisplayView;->access$002(Lcom/aliyun/player/videoview/displayView/TextureDisplayView;Landroid/graphics/SurfaceTexture;)Landroid/graphics/SurfaceTexture;

    .line 12
    .line 13
    .line 14
    iget-object p2, p0, Lcom/aliyun/player/videoview/displayView/TextureDisplayView$1;->this$0:Lcom/aliyun/player/videoview/displayView/TextureDisplayView;

    .line 15
    .line 16
    new-instance p3, Landroid/view/Surface;

    .line 17
    .line 18
    invoke-direct {p3, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    .line 19
    .line 20
    .line 21
    invoke-static {p2, p3}, Lcom/aliyun/player/videoview/displayView/TextureDisplayView;->access$102(Lcom/aliyun/player/videoview/displayView/TextureDisplayView;Landroid/view/Surface;)Landroid/view/Surface;

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    iget-object p2, p0, Lcom/aliyun/player/videoview/displayView/TextureDisplayView$1;->this$0:Lcom/aliyun/player/videoview/displayView/TextureDisplayView;

    .line 26
    .line 27
    invoke-static {p2}, Lcom/aliyun/player/videoview/displayView/TextureDisplayView;->access$200(Lcom/aliyun/player/videoview/displayView/TextureDisplayView;)Z

    .line 28
    .line 29
    .line 30
    move-result p2

    .line 31
    if-eqz p2, :cond_1

    .line 32
    .line 33
    iget-object p2, p0, Lcom/aliyun/player/videoview/displayView/TextureDisplayView$1;->this$0:Lcom/aliyun/player/videoview/displayView/TextureDisplayView;

    .line 34
    .line 35
    invoke-static {p2}, Lcom/aliyun/player/videoview/displayView/TextureDisplayView;->access$300(Lcom/aliyun/player/videoview/displayView/TextureDisplayView;)Landroid/view/TextureView;

    .line 36
    .line 37
    .line 38
    move-result-object p2

    .line 39
    iget-object p3, p0, Lcom/aliyun/player/videoview/displayView/TextureDisplayView$1;->this$0:Lcom/aliyun/player/videoview/displayView/TextureDisplayView;

    .line 40
    .line 41
    invoke-static {p3}, Lcom/aliyun/player/videoview/displayView/TextureDisplayView;->access$000(Lcom/aliyun/player/videoview/displayView/TextureDisplayView;)Landroid/graphics/SurfaceTexture;

    .line 42
    .line 43
    .line 44
    move-result-object p3

    .line 45
    invoke-virtual {p2, p3}, Landroid/view/TextureView;->setSurfaceTexture(Landroid/graphics/SurfaceTexture;)V

    .line 46
    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_1
    iget-object p2, p0, Lcom/aliyun/player/videoview/displayView/TextureDisplayView$1;->this$0:Lcom/aliyun/player/videoview/displayView/TextureDisplayView;

    .line 50
    .line 51
    invoke-static {p2}, Lcom/aliyun/player/videoview/displayView/TextureDisplayView;->access$100(Lcom/aliyun/player/videoview/displayView/TextureDisplayView;)Landroid/view/Surface;

    .line 52
    .line 53
    .line 54
    move-result-object p2

    .line 55
    invoke-virtual {p2}, Landroid/view/Surface;->release()V

    .line 56
    .line 57
    .line 58
    iget-object p2, p0, Lcom/aliyun/player/videoview/displayView/TextureDisplayView$1;->this$0:Lcom/aliyun/player/videoview/displayView/TextureDisplayView;

    .line 59
    .line 60
    invoke-static {p2, p1}, Lcom/aliyun/player/videoview/displayView/TextureDisplayView;->access$002(Lcom/aliyun/player/videoview/displayView/TextureDisplayView;Landroid/graphics/SurfaceTexture;)Landroid/graphics/SurfaceTexture;

    .line 61
    .line 62
    .line 63
    iget-object p2, p0, Lcom/aliyun/player/videoview/displayView/TextureDisplayView$1;->this$0:Lcom/aliyun/player/videoview/displayView/TextureDisplayView;

    .line 64
    .line 65
    new-instance p3, Landroid/view/Surface;

    .line 66
    .line 67
    invoke-direct {p3, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    .line 68
    .line 69
    .line 70
    invoke-static {p2, p3}, Lcom/aliyun/player/videoview/displayView/TextureDisplayView;->access$102(Lcom/aliyun/player/videoview/displayView/TextureDisplayView;Landroid/view/Surface;)Landroid/view/Surface;

    .line 71
    .line 72
    .line 73
    :goto_0
    invoke-static {}, Lcom/aliyun/player/videoview/displayView/TextureDisplayView;->access$400()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object p2

    .line 77
    new-instance p3, Ljava/lang/StringBuilder;

    .line 78
    .line 79
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 80
    .line 81
    .line 82
    iget-object v0, p0, Lcom/aliyun/player/videoview/displayView/TextureDisplayView$1;->this$0:Lcom/aliyun/player/videoview/displayView/TextureDisplayView;

    .line 83
    .line 84
    invoke-static {v0}, Lcom/aliyun/player/videoview/displayView/TextureDisplayView;->access$300(Lcom/aliyun/player/videoview/displayView/TextureDisplayView;)Landroid/view/TextureView;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    const-string v0, " onSurfaceTextureAvailable  "

    .line 92
    .line 93
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object p1

    .line 103
    invoke-static {p2, p1}, Lcom/cicada/player/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    iget-object p1, p0, Lcom/aliyun/player/videoview/displayView/TextureDisplayView$1;->this$0:Lcom/aliyun/player/videoview/displayView/TextureDisplayView;

    .line 107
    .line 108
    iget-object p2, p1, Lcom/aliyun/player/videoview/displayView/IDisplayView;->mOnViewStatusListener:Lcom/aliyun/player/videoview/displayView/IDisplayView$OnDisplayViewStatusListener;

    .line 109
    .line 110
    if-eqz p2, :cond_2

    .line 111
    .line 112
    invoke-static {p1}, Lcom/aliyun/player/videoview/displayView/TextureDisplayView;->access$100(Lcom/aliyun/player/videoview/displayView/TextureDisplayView;)Landroid/view/Surface;

    .line 113
    .line 114
    .line 115
    move-result-object p1

    .line 116
    invoke-interface {p2, p1}, Lcom/aliyun/player/videoview/displayView/IDisplayView$OnDisplayViewStatusListener;->onSurfaceCreated(Landroid/view/Surface;)V

    .line 117
    .line 118
    .line 119
    :cond_2
    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 2

    .line 1
    invoke-static {}, Lcom/aliyun/player/videoview/displayView/TextureDisplayView;->access$400()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    iget-object v1, p0, Lcom/aliyun/player/videoview/displayView/TextureDisplayView$1;->this$0:Lcom/aliyun/player/videoview/displayView/TextureDisplayView;

    .line 11
    .line 12
    invoke-static {v1}, Lcom/aliyun/player/videoview/displayView/TextureDisplayView;->access$300(Lcom/aliyun/player/videoview/displayView/TextureDisplayView;)Landroid/view/TextureView;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    const-string v1, " onSurfaceTextureDestroyed  "

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-static {p1, v0}, Lcom/cicada/player/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    iget-object p1, p0, Lcom/aliyun/player/videoview/displayView/TextureDisplayView$1;->this$0:Lcom/aliyun/player/videoview/displayView/TextureDisplayView;

    .line 32
    .line 33
    iget-object p1, p1, Lcom/aliyun/player/videoview/displayView/IDisplayView;->mOnViewStatusListener:Lcom/aliyun/player/videoview/displayView/IDisplayView$OnDisplayViewStatusListener;

    .line 34
    .line 35
    if-eqz p1, :cond_0

    .line 36
    .line 37
    invoke-interface {p1}, Lcom/aliyun/player/videoview/displayView/IDisplayView$OnDisplayViewStatusListener;->onSurfaceDestroy()V

    .line 38
    .line 39
    .line 40
    :cond_0
    const/4 p1, 0x0

    .line 41
    return p1
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    .line 1
    invoke-static {}, Lcom/aliyun/player/videoview/displayView/TextureDisplayView;->access$400()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    new-instance p2, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    iget-object p3, p0, Lcom/aliyun/player/videoview/displayView/TextureDisplayView$1;->this$0:Lcom/aliyun/player/videoview/displayView/TextureDisplayView;

    .line 11
    .line 12
    invoke-static {p3}, Lcom/aliyun/player/videoview/displayView/TextureDisplayView;->access$300(Lcom/aliyun/player/videoview/displayView/TextureDisplayView;)Landroid/view/TextureView;

    .line 13
    .line 14
    .line 15
    move-result-object p3

    .line 16
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    const-string p3, " onSurfaceTextureSizeChanged  "

    .line 20
    .line 21
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p2

    .line 28
    invoke-static {p1, p2}, Lcom/cicada/player/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    iget-object p1, p0, Lcom/aliyun/player/videoview/displayView/TextureDisplayView$1;->this$0:Lcom/aliyun/player/videoview/displayView/TextureDisplayView;

    .line 32
    .line 33
    iget-object p1, p1, Lcom/aliyun/player/videoview/displayView/IDisplayView;->mOnViewStatusListener:Lcom/aliyun/player/videoview/displayView/IDisplayView$OnDisplayViewStatusListener;

    .line 34
    .line 35
    if-eqz p1, :cond_0

    .line 36
    .line 37
    invoke-interface {p1}, Lcom/aliyun/player/videoview/displayView/IDisplayView$OnDisplayViewStatusListener;->onSurfaceSizeChanged()V

    .line 38
    .line 39
    .line 40
    :cond_0
    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    .line 1
    return-void
.end method
