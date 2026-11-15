.class Lcom/aliyun/player/nativeclass/NativePlayerBase$2;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aliyun/player/nativeclass/NativePlayerBase;->snapShot()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/aliyun/player/nativeclass/NativePlayerBase;


# direct methods
.method constructor <init>(Lcom/aliyun/player/nativeclass/NativePlayerBase;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase$2;->this$0:Lcom/aliyun/player/nativeclass/NativePlayerBase;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase$2;->this$0:Lcom/aliyun/player/nativeclass/NativePlayerBase;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->access$100(Lcom/aliyun/player/nativeclass/NativePlayerBase;)Lcom/aliyun/player/nativeclass/DisplayViewHelper;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lcom/aliyun/player/nativeclass/DisplayViewHelper;->snapshot()Landroid/graphics/Bitmap;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const/4 v1, 0x0

    .line 23
    move v2, v1

    .line 24
    :goto_0
    iget-object v3, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase$2;->this$0:Lcom/aliyun/player/nativeclass/NativePlayerBase;

    .line 25
    .line 26
    invoke-static {v3}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->access$300(Lcom/aliyun/player/nativeclass/NativePlayerBase;)Lcom/aliyun/player/nativeclass/NativePlayerBase$MainHandler;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    new-instance v4, Lcom/aliyun/player/nativeclass/NativePlayerBase$2$1;

    .line 31
    .line 32
    invoke-direct {v4, p0, v0, v1, v2}, Lcom/aliyun/player/nativeclass/NativePlayerBase$2$1;-><init>(Lcom/aliyun/player/nativeclass/NativePlayerBase$2;Landroid/graphics/Bitmap;II)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 36
    .line 37
    .line 38
    return-void
.end method
