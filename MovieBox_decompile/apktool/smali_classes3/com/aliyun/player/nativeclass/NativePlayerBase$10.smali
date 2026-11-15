.class Lcom/aliyun/player/nativeclass/NativePlayerBase$10;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aliyun/player/nativeclass/NativePlayerBase;->onVideoSizeChanged(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/aliyun/player/nativeclass/NativePlayerBase;

.field final synthetic val$height:I

.field final synthetic val$width:I


# direct methods
.method constructor <init>(Lcom/aliyun/player/nativeclass/NativePlayerBase;II)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase$10;->this$0:Lcom/aliyun/player/nativeclass/NativePlayerBase;

    .line 2
    .line 3
    iput p2, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase$10;->val$width:I

    .line 4
    .line 5
    iput p3, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase$10;->val$height:I

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase$10;->this$0:Lcom/aliyun/player/nativeclass/NativePlayerBase;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->access$900(Lcom/aliyun/player/nativeclass/NativePlayerBase;)Lcom/aliyun/player/IPlayer$OnVideoSizeChangedListener;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase$10;->this$0:Lcom/aliyun/player/nativeclass/NativePlayerBase;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->access$900(Lcom/aliyun/player/nativeclass/NativePlayerBase;)Lcom/aliyun/player/IPlayer$OnVideoSizeChangedListener;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iget v1, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase$10;->val$width:I

    .line 16
    .line 17
    iget v2, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase$10;->val$height:I

    .line 18
    .line 19
    invoke-interface {v0, v1, v2}, Lcom/aliyun/player/IPlayer$OnVideoSizeChangedListener;->onVideoSizeChanged(II)V

    .line 20
    .line 21
    .line 22
    :cond_0
    return-void
.end method
