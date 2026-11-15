.class Lcom/aliyun/player/nativeclass/DisplayViewHelper$2;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/aliyun/player/videoview/displayView/IDisplayView$OnDisplayViewStatusListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aliyun/player/nativeclass/DisplayViewHelper;->createDisplayView(Lcom/aliyun/player/videoview/AliDisplayView$DisplayViewType;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/aliyun/player/nativeclass/DisplayViewHelper;

.field final synthetic val$mOutOnViewStatusListener:Lcom/aliyun/player/videoview/AliDisplayView$OnViewStatusListener;


# direct methods
.method constructor <init>(Lcom/aliyun/player/nativeclass/DisplayViewHelper;Lcom/aliyun/player/videoview/AliDisplayView$OnViewStatusListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/aliyun/player/nativeclass/DisplayViewHelper$2;->this$0:Lcom/aliyun/player/nativeclass/DisplayViewHelper;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/aliyun/player/nativeclass/DisplayViewHelper$2;->val$mOutOnViewStatusListener:Lcom/aliyun/player/videoview/AliDisplayView$OnViewStatusListener;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onSurfaceCreated(Landroid/view/Surface;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/aliyun/player/nativeclass/DisplayViewHelper$2;->this$0:Lcom/aliyun/player/nativeclass/DisplayViewHelper;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-static {v0, v1}, Lcom/aliyun/player/nativeclass/DisplayViewHelper;->access$402(Lcom/aliyun/player/nativeclass/DisplayViewHelper;Z)Z

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/aliyun/player/nativeclass/DisplayViewHelper$2;->this$0:Lcom/aliyun/player/nativeclass/DisplayViewHelper;

    .line 8
    .line 9
    invoke-static {v0}, Lcom/aliyun/player/nativeclass/DisplayViewHelper;->access$500(Lcom/aliyun/player/nativeclass/DisplayViewHelper;)Lcom/aliyun/player/videoview/displayView/IDisplayView$OnDisplayViewStatusListener;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    iget-object v0, p0, Lcom/aliyun/player/nativeclass/DisplayViewHelper$2;->this$0:Lcom/aliyun/player/nativeclass/DisplayViewHelper;

    .line 16
    .line 17
    invoke-static {v0}, Lcom/aliyun/player/nativeclass/DisplayViewHelper;->access$500(Lcom/aliyun/player/nativeclass/DisplayViewHelper;)Lcom/aliyun/player/videoview/displayView/IDisplayView$OnDisplayViewStatusListener;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-interface {v0, p1}, Lcom/aliyun/player/videoview/displayView/IDisplayView$OnDisplayViewStatusListener;->onSurfaceCreated(Landroid/view/Surface;)V

    .line 22
    .line 23
    .line 24
    :cond_0
    iget-object p1, p0, Lcom/aliyun/player/nativeclass/DisplayViewHelper$2;->val$mOutOnViewStatusListener:Lcom/aliyun/player/videoview/AliDisplayView$OnViewStatusListener;

    .line 25
    .line 26
    if-eqz p1, :cond_1

    .line 27
    .line 28
    invoke-interface {p1}, Lcom/aliyun/player/videoview/AliDisplayView$OnViewStatusListener;->onSurfaceCreated()V

    .line 29
    .line 30
    .line 31
    :cond_1
    return-void
.end method

.method public onSurfaceDestroy()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/aliyun/player/nativeclass/DisplayViewHelper$2;->this$0:Lcom/aliyun/player/nativeclass/DisplayViewHelper;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-static {v0, v1}, Lcom/aliyun/player/nativeclass/DisplayViewHelper;->access$402(Lcom/aliyun/player/nativeclass/DisplayViewHelper;Z)Z

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/aliyun/player/nativeclass/DisplayViewHelper$2;->this$0:Lcom/aliyun/player/nativeclass/DisplayViewHelper;

    .line 8
    .line 9
    invoke-static {v0}, Lcom/aliyun/player/nativeclass/DisplayViewHelper;->access$500(Lcom/aliyun/player/nativeclass/DisplayViewHelper;)Lcom/aliyun/player/videoview/displayView/IDisplayView$OnDisplayViewStatusListener;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    iget-object v0, p0, Lcom/aliyun/player/nativeclass/DisplayViewHelper$2;->this$0:Lcom/aliyun/player/nativeclass/DisplayViewHelper;

    .line 16
    .line 17
    invoke-static {v0}, Lcom/aliyun/player/nativeclass/DisplayViewHelper;->access$500(Lcom/aliyun/player/nativeclass/DisplayViewHelper;)Lcom/aliyun/player/videoview/displayView/IDisplayView$OnDisplayViewStatusListener;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-interface {v0}, Lcom/aliyun/player/videoview/displayView/IDisplayView$OnDisplayViewStatusListener;->onSurfaceDestroy()V

    .line 22
    .line 23
    .line 24
    :cond_0
    iget-object v0, p0, Lcom/aliyun/player/nativeclass/DisplayViewHelper$2;->val$mOutOnViewStatusListener:Lcom/aliyun/player/videoview/AliDisplayView$OnViewStatusListener;

    .line 25
    .line 26
    if-eqz v0, :cond_1

    .line 27
    .line 28
    invoke-interface {v0}, Lcom/aliyun/player/videoview/AliDisplayView$OnViewStatusListener;->onSurfaceDestroy()V

    .line 29
    .line 30
    .line 31
    :cond_1
    return-void
.end method

.method public onSurfaceSizeChanged()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/aliyun/player/nativeclass/DisplayViewHelper$2;->this$0:Lcom/aliyun/player/nativeclass/DisplayViewHelper;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/aliyun/player/nativeclass/DisplayViewHelper;->access$500(Lcom/aliyun/player/nativeclass/DisplayViewHelper;)Lcom/aliyun/player/videoview/displayView/IDisplayView$OnDisplayViewStatusListener;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/aliyun/player/nativeclass/DisplayViewHelper$2;->this$0:Lcom/aliyun/player/nativeclass/DisplayViewHelper;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/aliyun/player/nativeclass/DisplayViewHelper;->access$500(Lcom/aliyun/player/nativeclass/DisplayViewHelper;)Lcom/aliyun/player/videoview/displayView/IDisplayView$OnDisplayViewStatusListener;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-interface {v0}, Lcom/aliyun/player/videoview/displayView/IDisplayView$OnDisplayViewStatusListener;->onSurfaceSizeChanged()V

    .line 16
    .line 17
    .line 18
    :cond_0
    iget-object v0, p0, Lcom/aliyun/player/nativeclass/DisplayViewHelper$2;->val$mOutOnViewStatusListener:Lcom/aliyun/player/videoview/AliDisplayView$OnViewStatusListener;

    .line 19
    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    invoke-interface {v0}, Lcom/aliyun/player/videoview/AliDisplayView$OnViewStatusListener;->onSurfaceSizeChanged()V

    .line 23
    .line 24
    .line 25
    :cond_1
    return-void
.end method

.method public onViewCreated(Lcom/aliyun/player/videoview/AliDisplayView$DisplayViewType;)V
    .locals 0

    .line 1
    return-void
.end method
