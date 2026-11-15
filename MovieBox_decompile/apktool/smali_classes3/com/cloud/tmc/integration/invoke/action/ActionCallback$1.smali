.class Lcom/cloud/tmc/integration/invoke/action/ActionCallback$1;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/tmc/integration/invoke/action/ActionCallback;->onStart(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cloud/tmc/integration/invoke/action/ActionCallback;

.field final synthetic val$action:Lcom/cloud/tmc/integration/invoke/action/Action;

.field final synthetic val$extensions:Ljava/util/List;

.field final synthetic val$start:J


# direct methods
.method constructor <init>(Lcom/cloud/tmc/integration/invoke/action/ActionCallback;Lcom/cloud/tmc/integration/invoke/action/Action;JLjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/integration/invoke/action/ActionCallback$1;->this$0:Lcom/cloud/tmc/integration/invoke/action/ActionCallback;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/cloud/tmc/integration/invoke/action/ActionCallback$1;->val$action:Lcom/cloud/tmc/integration/invoke/action/Action;

    .line 4
    .line 5
    iput-wide p3, p0, Lcom/cloud/tmc/integration/invoke/action/ActionCallback$1;->val$start:J

    .line 6
    .line 7
    iput-object p5, p0, Lcom/cloud/tmc/integration/invoke/action/ActionCallback$1;->val$extensions:Ljava/util/List;

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
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "onComplete for "

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lcom/cloud/tmc/integration/invoke/action/ActionCallback$1;->val$action:Lcom/cloud/tmc/integration/invoke/action/Action;

    .line 12
    .line 13
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    const-string v1, " schedule "

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 30
    .line 31
    .line 32
    move-result-wide v1

    .line 33
    iget-wide v3, p0, Lcom/cloud/tmc/integration/invoke/action/ActionCallback$1;->val$start:J

    .line 34
    .line 35
    sub-long/2addr v1, v3

    .line 36
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    const-string v1, "TmcKernel:ActionCallback"

    .line 44
    .line 45
    invoke-static {v1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    iget-object v0, p0, Lcom/cloud/tmc/integration/invoke/action/ActionCallback$1;->val$action:Lcom/cloud/tmc/integration/invoke/action/Action;

    .line 49
    .line 50
    check-cast v0, Lcom/cloud/tmc/integration/invoke/action/Action$Start;

    .line 51
    .line 52
    iget-object v1, p0, Lcom/cloud/tmc/integration/invoke/action/ActionCallback$1;->val$extensions:Ljava/util/List;

    .line 53
    .line 54
    invoke-interface {v0, v1}, Lcom/cloud/tmc/integration/invoke/action/Action$Start;->onStart(Ljava/util/List;)V

    .line 55
    .line 56
    .line 57
    return-void
.end method
