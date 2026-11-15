.class Lcom/aliyun/player/nativeclass/NativePlayerBase$30;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aliyun/player/nativeclass/NativePlayerBase;->nUpdateViewCallback(I)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/aliyun/player/nativeclass/NativePlayerBase;

.field final synthetic val$finalDisplayViewType:Lcom/aliyun/player/videoview/AliDisplayView$DisplayViewType;


# direct methods
.method constructor <init>(Lcom/aliyun/player/nativeclass/NativePlayerBase;Lcom/aliyun/player/videoview/AliDisplayView$DisplayViewType;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase$30;->this$0:Lcom/aliyun/player/nativeclass/NativePlayerBase;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase$30;->val$finalDisplayViewType:Lcom/aliyun/player/videoview/AliDisplayView$DisplayViewType;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase$30;->this$0:Lcom/aliyun/player/nativeclass/NativePlayerBase;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->access$100(Lcom/aliyun/player/nativeclass/NativePlayerBase;)Lcom/aliyun/player/nativeclass/DisplayViewHelper;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase$30;->val$finalDisplayViewType:Lcom/aliyun/player/videoview/AliDisplayView$DisplayViewType;

    .line 8
    .line 9
    iget-object v2, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase$30;->this$0:Lcom/aliyun/player/nativeclass/NativePlayerBase;

    .line 10
    .line 11
    invoke-static {v2}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->access$1800(Lcom/aliyun/player/nativeclass/NativePlayerBase;)Z

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    invoke-virtual {v0, v1, v2}, Lcom/aliyun/player/nativeclass/DisplayViewHelper;->createDisplayView(Lcom/aliyun/player/videoview/AliDisplayView$DisplayViewType;Z)V

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase$30;->this$0:Lcom/aliyun/player/nativeclass/NativePlayerBase;

    .line 19
    .line 20
    invoke-virtual {v0}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->getVideoWidth()I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    iget-object v1, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase$30;->this$0:Lcom/aliyun/player/nativeclass/NativePlayerBase;

    .line 25
    .line 26
    invoke-virtual {v1}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->getVideoHeight()I

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    iget-object v2, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase$30;->this$0:Lcom/aliyun/player/nativeclass/NativePlayerBase;

    .line 31
    .line 32
    invoke-virtual {v2}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->getVideoRotation()F

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    iget-object v3, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase$30;->this$0:Lcom/aliyun/player/nativeclass/NativePlayerBase;

    .line 37
    .line 38
    invoke-static {v3}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->access$100(Lcom/aliyun/player/nativeclass/NativePlayerBase;)Lcom/aliyun/player/nativeclass/DisplayViewHelper;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    float-to-int v2, v2

    .line 43
    invoke-virtual {v3, v0, v1, v2}, Lcom/aliyun/player/nativeclass/DisplayViewHelper;->setVideoSize(III)V

    .line 44
    .line 45
    .line 46
    return-void
.end method
