.class Lcom/aliyun/player/nativeclass/NativePlayerBase$11;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aliyun/player/nativeclass/NativePlayerBase;->onVideoRendered(JJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/aliyun/player/nativeclass/NativePlayerBase;

.field final synthetic val$pts:J

.field final synthetic val$timeMs:J


# direct methods
.method constructor <init>(Lcom/aliyun/player/nativeclass/NativePlayerBase;JJ)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase$11;->this$0:Lcom/aliyun/player/nativeclass/NativePlayerBase;

    .line 2
    .line 3
    iput-wide p2, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase$11;->val$timeMs:J

    .line 4
    .line 5
    iput-wide p4, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase$11;->val$pts:J

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
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase$11;->this$0:Lcom/aliyun/player/nativeclass/NativePlayerBase;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->access$1000(Lcom/aliyun/player/nativeclass/NativePlayerBase;)Lcom/aliyun/player/IPlayer$OnVideoRenderedListener;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase$11;->this$0:Lcom/aliyun/player/nativeclass/NativePlayerBase;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->access$1000(Lcom/aliyun/player/nativeclass/NativePlayerBase;)Lcom/aliyun/player/IPlayer$OnVideoRenderedListener;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iget-wide v1, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase$11;->val$timeMs:J

    .line 16
    .line 17
    iget-wide v3, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase$11;->val$pts:J

    .line 18
    .line 19
    invoke-interface {v0, v1, v2, v3, v4}, Lcom/aliyun/player/IPlayer$OnVideoRenderedListener;->onVideoRendered(JJ)V

    .line 20
    .line 21
    .line 22
    :cond_0
    return-void
.end method
