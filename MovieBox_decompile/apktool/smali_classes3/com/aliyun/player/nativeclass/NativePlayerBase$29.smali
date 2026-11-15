.class Lcom/aliyun/player/nativeclass/NativePlayerBase$29;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aliyun/player/nativeclass/NativePlayerBase;->onCaptureScreen(II[B)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/aliyun/player/nativeclass/NativePlayerBase;

.field final synthetic val$finalBOutput:Landroid/graphics/Bitmap;

.field final synthetic val$height:I

.field final synthetic val$width:I


# direct methods
.method constructor <init>(Lcom/aliyun/player/nativeclass/NativePlayerBase;Landroid/graphics/Bitmap;II)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase$29;->this$0:Lcom/aliyun/player/nativeclass/NativePlayerBase;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase$29;->val$finalBOutput:Landroid/graphics/Bitmap;

    .line 4
    .line 5
    iput p3, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase$29;->val$width:I

    .line 6
    .line 7
    iput p4, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase$29;->val$height:I

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase$29;->this$0:Lcom/aliyun/player/nativeclass/NativePlayerBase;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->access$200(Lcom/aliyun/player/nativeclass/NativePlayerBase;)Lcom/aliyun/player/IPlayer$OnSnapShotListener;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase$29;->this$0:Lcom/aliyun/player/nativeclass/NativePlayerBase;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->access$200(Lcom/aliyun/player/nativeclass/NativePlayerBase;)Lcom/aliyun/player/IPlayer$OnSnapShotListener;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iget-object v1, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase$29;->val$finalBOutput:Landroid/graphics/Bitmap;

    .line 16
    .line 17
    iget v2, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase$29;->val$width:I

    .line 18
    .line 19
    iget v3, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase$29;->val$height:I

    .line 20
    .line 21
    invoke-interface {v0, v1, v2, v3}, Lcom/aliyun/player/IPlayer$OnSnapShotListener;->onSnapShot(Landroid/graphics/Bitmap;II)V

    .line 22
    .line 23
    .line 24
    :cond_0
    return-void
.end method
