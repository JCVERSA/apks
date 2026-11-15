.class Lcom/cloud/tmc/integration/structure/node/PageNode$2;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/cloud/tmc/kernel/render/ExitCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/tmc/integration/structure/node/PageNode;->exit(ZLcom/cloud/tmc/integration/structure/Page$TaskContext;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cloud/tmc/integration/structure/node/PageNode;

.field final synthetic val$autoExitApp:Z

.field final synthetic val$taskContext:Lcom/cloud/tmc/integration/structure/Page$TaskContext;


# direct methods
.method constructor <init>(Lcom/cloud/tmc/integration/structure/node/PageNode;ZLcom/cloud/tmc/integration/structure/Page$TaskContext;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/integration/structure/node/PageNode$2;->this$0:Lcom/cloud/tmc/integration/structure/node/PageNode;

    .line 2
    .line 3
    iput-boolean p2, p0, Lcom/cloud/tmc/integration/structure/node/PageNode$2;->val$autoExitApp:Z

    .line 4
    .line 5
    iput-object p3, p0, Lcom/cloud/tmc/integration/structure/node/PageNode$2;->val$taskContext:Lcom/cloud/tmc/integration/structure/Page$TaskContext;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public afterProcess(Z)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/cloud/tmc/integration/structure/node/PageNode$2;->this$0:Lcom/cloud/tmc/integration/structure/node/PageNode;

    .line 2
    .line 3
    iget-boolean v0, p0, Lcom/cloud/tmc/integration/structure/node/PageNode$2;->val$autoExitApp:Z

    .line 4
    .line 5
    iget-object v1, p0, Lcom/cloud/tmc/integration/structure/node/PageNode$2;->val$taskContext:Lcom/cloud/tmc/integration/structure/Page$TaskContext;

    .line 6
    .line 7
    invoke-static {p1, v0, v1}, Lcom/cloud/tmc/integration/structure/node/PageNode;->f(Lcom/cloud/tmc/integration/structure/node/PageNode;ZLcom/cloud/tmc/integration/structure/Page$TaskContext;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
