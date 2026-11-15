.class Lcom/cloud/tmc/integration/invoke/action/ActionCallback$3;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/tmc/integration/invoke/action/ActionCallback;->onException(Lcom/cloud/tmc/kernel/extension/Extension;Ljava/lang/Throwable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cloud/tmc/integration/invoke/action/ActionCallback;

.field final synthetic val$action:Lcom/cloud/tmc/integration/invoke/action/Action;

.field final synthetic val$exception:Ljava/lang/Throwable;

.field final synthetic val$extension:Lcom/cloud/tmc/kernel/extension/Extension;


# direct methods
.method constructor <init>(Lcom/cloud/tmc/integration/invoke/action/ActionCallback;Lcom/cloud/tmc/integration/invoke/action/Action;Lcom/cloud/tmc/kernel/extension/Extension;Ljava/lang/Throwable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/integration/invoke/action/ActionCallback$3;->this$0:Lcom/cloud/tmc/integration/invoke/action/ActionCallback;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/cloud/tmc/integration/invoke/action/ActionCallback$3;->val$action:Lcom/cloud/tmc/integration/invoke/action/Action;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/cloud/tmc/integration/invoke/action/ActionCallback$3;->val$extension:Lcom/cloud/tmc/kernel/extension/Extension;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/cloud/tmc/integration/invoke/action/ActionCallback$3;->val$exception:Ljava/lang/Throwable;

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
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/integration/invoke/action/ActionCallback$3;->val$action:Lcom/cloud/tmc/integration/invoke/action/Action;

    .line 2
    .line 3
    check-cast v0, Lcom/cloud/tmc/integration/invoke/action/Action$Exception;

    .line 4
    .line 5
    iget-object v1, p0, Lcom/cloud/tmc/integration/invoke/action/ActionCallback$3;->val$extension:Lcom/cloud/tmc/kernel/extension/Extension;

    .line 6
    .line 7
    iget-object v2, p0, Lcom/cloud/tmc/integration/invoke/action/ActionCallback$3;->val$exception:Ljava/lang/Throwable;

    .line 8
    .line 9
    invoke-interface {v0, v1, v2}, Lcom/cloud/tmc/integration/invoke/action/Action$Exception;->onException(Lcom/cloud/tmc/kernel/extension/Extension;Ljava/lang/Throwable;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method
