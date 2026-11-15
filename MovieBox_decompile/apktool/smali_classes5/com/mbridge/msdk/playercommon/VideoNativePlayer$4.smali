.class Lcom/mbridge/msdk/playercommon/VideoNativePlayer$4;
.super Ljava/util/TimerTask;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->startBufferingTimer(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mbridge/msdk/playercommon/VideoNativePlayer;

.field final synthetic val$bufferMsg:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/mbridge/msdk/playercommon/VideoNativePlayer;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer$4;->this$0:Lcom/mbridge/msdk/playercommon/VideoNativePlayer;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer$4;->val$bufferMsg:Ljava/lang/String;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    const-string v0, "VideoNativePlayer"

    .line 2
    .line 3
    :try_start_0
    iget-object v1, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer$4;->this$0:Lcom/mbridge/msdk/playercommon/VideoNativePlayer;

    .line 4
    .line 5
    invoke-static {v1}, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->access$1000(Lcom/mbridge/msdk/playercommon/VideoNativePlayer;)Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    iget-object v1, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer$4;->this$0:Lcom/mbridge/msdk/playercommon/VideoNativePlayer;

    .line 12
    .line 13
    invoke-static {v1}, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->access$600(Lcom/mbridge/msdk/playercommon/VideoNativePlayer;)Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-eqz v1, :cond_1

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :catch_0
    move-exception v1

    .line 21
    goto :goto_1

    .line 22
    :cond_0
    :goto_0
    const-string v1, "\u7f13\u51b2\u8d85\u65f6"

    .line 23
    .line 24
    invoke-static {v0, v1}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    iget-object v1, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer$4;->this$0:Lcom/mbridge/msdk/playercommon/VideoNativePlayer;

    .line 28
    .line 29
    iget-object v2, p0, Lcom/mbridge/msdk/playercommon/VideoNativePlayer$4;->val$bufferMsg:Ljava/lang/String;

    .line 30
    .line 31
    invoke-static {v1, v2}, Lcom/mbridge/msdk/playercommon/VideoNativePlayer;->access$1100(Lcom/mbridge/msdk/playercommon/VideoNativePlayer;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 32
    .line 33
    .line 34
    goto :goto_2

    .line 35
    :goto_1
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    invoke-static {v0, v1}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    :cond_1
    :goto_2
    return-void
.end method
