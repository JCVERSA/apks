.class Lcom/aliyun/player/nativeclass/NativePlayerBase$22;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aliyun/player/nativeclass/NativePlayerBase;->onLocalCacheLoad(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/aliyun/player/nativeclass/NativePlayerBase;

.field final synthetic val$size:J


# direct methods
.method constructor <init>(Lcom/aliyun/player/nativeclass/NativePlayerBase;J)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase$22;->this$0:Lcom/aliyun/player/nativeclass/NativePlayerBase;

    .line 2
    .line 3
    iput-wide p2, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase$22;->val$size:J

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
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase$22;->this$0:Lcom/aliyun/player/nativeclass/NativePlayerBase;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->access$600(Lcom/aliyun/player/nativeclass/NativePlayerBase;)Lcom/aliyun/player/IPlayer$OnInfoListener;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    new-instance v0, Lcom/aliyun/player/bean/InfoBean;

    .line 10
    .line 11
    invoke-direct {v0}, Lcom/aliyun/player/bean/InfoBean;-><init>()V

    .line 12
    .line 13
    .line 14
    sget-object v1, Lcom/aliyun/player/bean/InfoCode;->LocalCacheLoaded:Lcom/aliyun/player/bean/InfoCode;

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Lcom/aliyun/player/bean/InfoBean;->setCode(Lcom/aliyun/player/bean/InfoCode;)V

    .line 17
    .line 18
    .line 19
    iget-wide v1, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase$22;->val$size:J

    .line 20
    .line 21
    invoke-virtual {v0, v1, v2}, Lcom/aliyun/player/bean/InfoBean;->setExtraValue(J)V

    .line 22
    .line 23
    .line 24
    iget-object v1, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase$22;->this$0:Lcom/aliyun/player/nativeclass/NativePlayerBase;

    .line 25
    .line 26
    invoke-static {v1}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->access$600(Lcom/aliyun/player/nativeclass/NativePlayerBase;)Lcom/aliyun/player/IPlayer$OnInfoListener;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-interface {v1, v0}, Lcom/aliyun/player/IPlayer$OnInfoListener;->onInfo(Lcom/aliyun/player/bean/InfoBean;)V

    .line 31
    .line 32
    .line 33
    :cond_0
    return-void
.end method
