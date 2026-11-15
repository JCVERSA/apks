.class Lcom/aliyun/player/nativeclass/NativePlayerBase$7;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aliyun/player/nativeclass/NativePlayerBase;->onError(ILjava/lang/String;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/aliyun/player/nativeclass/NativePlayerBase;

.field final synthetic val$finalErrorCode:Lcom/aliyun/player/bean/ErrorCode;

.field final synthetic val$msg:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/aliyun/player/nativeclass/NativePlayerBase;Lcom/aliyun/player/bean/ErrorCode;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase$7;->this$0:Lcom/aliyun/player/nativeclass/NativePlayerBase;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase$7;->val$finalErrorCode:Lcom/aliyun/player/bean/ErrorCode;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase$7;->val$msg:Ljava/lang/String;

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
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase$7;->this$0:Lcom/aliyun/player/nativeclass/NativePlayerBase;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->access$700(Lcom/aliyun/player/nativeclass/NativePlayerBase;)Lcom/aliyun/player/IPlayer$OnErrorListener;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    new-instance v0, Lcom/aliyun/player/bean/ErrorInfo;

    .line 10
    .line 11
    invoke-direct {v0}, Lcom/aliyun/player/bean/ErrorInfo;-><init>()V

    .line 12
    .line 13
    .line 14
    iget-object v1, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase$7;->val$finalErrorCode:Lcom/aliyun/player/bean/ErrorCode;

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Lcom/aliyun/player/bean/ErrorInfo;->setCode(Lcom/aliyun/player/bean/ErrorCode;)V

    .line 17
    .line 18
    .line 19
    iget-object v1, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase$7;->val$msg:Ljava/lang/String;

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Lcom/aliyun/player/bean/ErrorInfo;->setMsg(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    iget-object v1, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase$7;->this$0:Lcom/aliyun/player/nativeclass/NativePlayerBase;

    .line 25
    .line 26
    invoke-static {v1}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->access$700(Lcom/aliyun/player/nativeclass/NativePlayerBase;)Lcom/aliyun/player/IPlayer$OnErrorListener;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-interface {v1, v0}, Lcom/aliyun/player/IPlayer$OnErrorListener;->onError(Lcom/aliyun/player/bean/ErrorInfo;)V

    .line 31
    .line 32
    .line 33
    :cond_0
    return-void
.end method
