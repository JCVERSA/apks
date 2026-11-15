.class Lcom/aliyun/player/nativeclass/NativePlayerBase$25;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aliyun/player/nativeclass/NativePlayerBase;->onShowSubtitle(IJLjava/lang/String;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/aliyun/player/nativeclass/NativePlayerBase;

.field final synthetic val$content:Ljava/lang/String;

.field final synthetic val$id:J

.field final synthetic val$trackIndex:I


# direct methods
.method constructor <init>(Lcom/aliyun/player/nativeclass/NativePlayerBase;IJLjava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase$25;->this$0:Lcom/aliyun/player/nativeclass/NativePlayerBase;

    .line 2
    .line 3
    iput p2, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase$25;->val$trackIndex:I

    .line 4
    .line 5
    iput-wide p3, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase$25;->val$id:J

    .line 6
    .line 7
    iput-object p5, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase$25;->val$content:Ljava/lang/String;

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
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase$25;->this$0:Lcom/aliyun/player/nativeclass/NativePlayerBase;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->access$1700(Lcom/aliyun/player/nativeclass/NativePlayerBase;)Lcom/aliyun/player/IPlayer$OnSubtitleDisplayListener;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase$25;->this$0:Lcom/aliyun/player/nativeclass/NativePlayerBase;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->access$1700(Lcom/aliyun/player/nativeclass/NativePlayerBase;)Lcom/aliyun/player/IPlayer$OnSubtitleDisplayListener;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iget v1, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase$25;->val$trackIndex:I

    .line 16
    .line 17
    iget-wide v2, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase$25;->val$id:J

    .line 18
    .line 19
    iget-object v4, p0, Lcom/aliyun/player/nativeclass/NativePlayerBase$25;->val$content:Ljava/lang/String;

    .line 20
    .line 21
    invoke-interface {v0, v1, v2, v3, v4}, Lcom/aliyun/player/IPlayer$OnSubtitleDisplayListener;->onSubtitleShow(IJLjava/lang/String;)V

    .line 22
    .line 23
    .line 24
    :cond_0
    return-void
.end method
