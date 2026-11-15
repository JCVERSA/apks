.class Lcom/mbridge/msdk/foundation/download/resource/MBResourceManager$1;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mbridge/msdk/foundation/download/resource/MBResourceManager;->executeResourceStrategy(Lcom/mbridge/msdk/foundation/download/resource/ResourceConfig;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mbridge/msdk/foundation/download/resource/MBResourceManager;

.field final synthetic val$config:Lcom/mbridge/msdk/foundation/download/resource/ResourceConfig;

.field final synthetic val$queue:Ljava/util/Queue;


# direct methods
.method constructor <init>(Lcom/mbridge/msdk/foundation/download/resource/MBResourceManager;Ljava/util/Queue;Lcom/mbridge/msdk/foundation/download/resource/ResourceConfig;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/mbridge/msdk/foundation/download/resource/MBResourceManager$1;->this$0:Lcom/mbridge/msdk/foundation/download/resource/MBResourceManager;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/mbridge/msdk/foundation/download/resource/MBResourceManager$1;->val$queue:Ljava/util/Queue;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/mbridge/msdk/foundation/download/resource/MBResourceManager$1;->val$config:Lcom/mbridge/msdk/foundation/download/resource/ResourceConfig;

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
    .locals 4

    .line 1
    :goto_0
    iget-object v0, p0, Lcom/mbridge/msdk/foundation/download/resource/MBResourceManager$1;->val$queue:Ljava/util/Queue;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/mbridge/msdk/foundation/download/resource/ResourceStrategy;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    new-instance v1, Lcom/mbridge/msdk/foundation/download/resource/ResourceStrategyExecutor;

    .line 12
    .line 13
    invoke-direct {v1, v0}, Lcom/mbridge/msdk/foundation/download/resource/ResourceStrategyExecutor;-><init>(Lcom/mbridge/msdk/foundation/download/resource/ResourceStrategy;)V

    .line 14
    .line 15
    .line 16
    invoke-static {}, Lcom/mbridge/msdk/foundation/download/core/GlobalComponent;->getInstance()Lcom/mbridge/msdk/foundation/download/core/GlobalComponent;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/download/core/GlobalComponent;->getLogger()Lcom/mbridge/msdk/foundation/download/utils/ILogger;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    new-instance v2, Ljava/lang/StringBuilder;

    .line 25
    .line 26
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 27
    .line 28
    .line 29
    const-string v3, "\u6267\u884c\u7b56\u7565\uff1a "

    .line 30
    .line 31
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1}, Lcom/mbridge/msdk/foundation/download/resource/ResourceStrategyExecutor;->getResourceStrategyName()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    const-string v3, "ResourceStrategy"

    .line 46
    .line 47
    invoke-interface {v0, v3, v2}, Lcom/mbridge/msdk/foundation/download/utils/ILogger;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    invoke-static {}, Lcom/mbridge/msdk/foundation/download/resource/MBResourceManager;->access$000()Lcom/mbridge/msdk/foundation/download/resource/MBResourceManager;

    .line 51
    .line 52
    .line 53
    invoke-static {}, Lcom/mbridge/msdk/foundation/download/resource/MBResourceManager;->getInstance()Lcom/mbridge/msdk/foundation/download/resource/MBResourceManager;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    invoke-static {}, Lcom/mbridge/msdk/foundation/download/core/GlobalComponent;->getInstance()Lcom/mbridge/msdk/foundation/download/core/GlobalComponent;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    invoke-virtual {v2}, Lcom/mbridge/msdk/foundation/download/core/GlobalComponent;->getDatabaseHelper()Lcom/mbridge/msdk/foundation/download/database/IDatabaseHelper;

    .line 62
    .line 63
    .line 64
    move-result-object v2

    .line 65
    iget-object v3, p0, Lcom/mbridge/msdk/foundation/download/resource/MBResourceManager$1;->val$config:Lcom/mbridge/msdk/foundation/download/resource/ResourceConfig;

    .line 66
    .line 67
    invoke-virtual {v1, v0, v2, v3}, Lcom/mbridge/msdk/foundation/download/resource/ResourceStrategyExecutor;->processResource(Lcom/mbridge/msdk/foundation/download/resource/MBResourceManager;Lcom/mbridge/msdk/foundation/download/database/IDatabaseHelper;Lcom/mbridge/msdk/foundation/download/resource/ResourceConfig;)V

    .line 68
    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_0
    return-void
.end method
