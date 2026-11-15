.class Lcom/aliyun/player/nativeclass/NativePlayerBase$14;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aliyun/player/nativeclass/NativePlayerBase;->onSeiDataCallback(I[B)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/aliyun/player/nativeclass/NativePlayerBase;

.field final synthetic val$seiData:[B

.field final synthetic val$type:I


# direct methods
.method constructor <init>(Lcom/aliyun/player/nativeclass/NativePlayerBase;I[B)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase$14;->this$0:Lcom/aliyun/player/nativeclass/NativePlayerBase;

    .line 2
    .line 3
    iput p2, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase$14;->val$type:I

    .line 4
    .line 5
    iput-object p3, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase$14;->val$seiData:[B

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
    iget-object v0, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase$14;->this$0:Lcom/aliyun/player/nativeclass/NativePlayerBase;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->access$1300(Lcom/aliyun/player/nativeclass/NativePlayerBase;)Lcom/aliyun/player/IPlayer$OnSeiDataListener;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase$14;->this$0:Lcom/aliyun/player/nativeclass/NativePlayerBase;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->access$1300(Lcom/aliyun/player/nativeclass/NativePlayerBase;)Lcom/aliyun/player/IPlayer$OnSeiDataListener;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iget v1, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase$14;->val$type:I

    .line 16
    .line 17
    iget-object v2, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase$14;->val$seiData:[B

    .line 18
    .line 19
    invoke-interface {v0, v1, v2}, Lcom/aliyun/player/IPlayer$OnSeiDataListener;->onSeiData(I[B)V

    .line 20
    .line 21
    .line 22
    :cond_0
    return-void
.end method
