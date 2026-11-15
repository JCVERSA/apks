.class Lcom/cloud/tmc/integration/structure/node/AppNode$3;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/tmc/integration/structure/node/AppNode;->start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cloud/tmc/integration/structure/node/AppNode;

.field final synthetic val$loadAppStart:J


# direct methods
.method constructor <init>(Lcom/cloud/tmc/integration/structure/node/AppNode;J)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/integration/structure/node/AppNode$3;->this$0:Lcom/cloud/tmc/integration/structure/node/AppNode;

    .line 2
    .line 3
    iput-wide p2, p0, Lcom/cloud/tmc/integration/structure/node/AppNode$3;->val$loadAppStart:J

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
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/integration/structure/node/AppNode$3;->this$0:Lcom/cloud/tmc/integration/structure/node/AppNode;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/cloud/tmc/integration/structure/node/AppNode;->c(Lcom/cloud/tmc/integration/structure/node/AppNode;)Lcom/cloud/tmc/integration/structure/AppLoadResult;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    iget-wide v2, p0, Lcom/cloud/tmc/integration/structure/node/AppNode$3;->val$loadAppStart:J

    .line 8
    .line 9
    invoke-static {v0, v1, v2, v3}, Lcom/cloud/tmc/integration/structure/node/AppNode;->h(Lcom/cloud/tmc/integration/structure/node/AppNode;Lcom/cloud/tmc/integration/structure/AppLoadResult;J)V

    .line 10
    .line 11
    .line 12
    return-void
.end method
