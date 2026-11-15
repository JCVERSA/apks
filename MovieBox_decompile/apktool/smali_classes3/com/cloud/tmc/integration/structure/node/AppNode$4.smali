.class Lcom/cloud/tmc/integration/structure/node/AppNode$4;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/cloud/tmc/kernel/engine/EngineInitCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/tmc/integration/structure/node/AppNode;->onStart()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cloud/tmc/integration/structure/node/AppNode;


# direct methods
.method constructor <init>(Lcom/cloud/tmc/integration/structure/node/AppNode;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/integration/structure/node/AppNode$4;->this$0:Lcom/cloud/tmc/integration/structure/node/AppNode;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public initResult(ZLjava/lang/String;)V
    .locals 1

    .line 1
    new-instance p2, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v0, "EngineInitCallback initResult success: "

    .line 7
    .line 8
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p2

    .line 18
    const-string v0, "TmcApp:App"

    .line 19
    .line 20
    invoke-static {v0, p2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    if-eqz p1, :cond_0

    .line 24
    .line 25
    iget-object p1, p0, Lcom/cloud/tmc/integration/structure/node/AppNode$4;->this$0:Lcom/cloud/tmc/integration/structure/node/AppNode;

    .line 26
    .line 27
    invoke-static {p1}, Lcom/cloud/tmc/integration/structure/node/AppNode;->g(Lcom/cloud/tmc/integration/structure/node/AppNode;)V

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    iget-object p1, p0, Lcom/cloud/tmc/integration/structure/node/AppNode$4;->this$0:Lcom/cloud/tmc/integration/structure/node/AppNode;

    .line 32
    .line 33
    invoke-static {p1}, Lcom/cloud/tmc/integration/structure/node/AppNode;->f(Lcom/cloud/tmc/integration/structure/node/AppNode;)V

    .line 34
    .line 35
    .line 36
    :goto_0
    return-void
.end method
