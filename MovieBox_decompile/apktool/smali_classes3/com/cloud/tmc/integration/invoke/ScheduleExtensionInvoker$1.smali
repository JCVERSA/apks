.class Lcom/cloud/tmc/integration/invoke/ScheduleExtensionInvoker$1;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/tmc/integration/invoke/ScheduleExtensionInvoker;->onInvoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Lcom/cloud/tmc/integration/invoke/ExtensionInvoker$InvokeResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cloud/tmc/integration/invoke/ScheduleExtensionInvoker;

.field final synthetic val$args:[Ljava/lang/Object;

.field final synthetic val$method:Ljava/lang/reflect/Method;

.field final synthetic val$proxy:Ljava/lang/Object;

.field final synthetic val$t1:J


# direct methods
.method constructor <init>(Lcom/cloud/tmc/integration/invoke/ScheduleExtensionInvoker;Ljava/lang/reflect/Method;JLjava/lang/Object;[Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/integration/invoke/ScheduleExtensionInvoker$1;->this$0:Lcom/cloud/tmc/integration/invoke/ScheduleExtensionInvoker;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/cloud/tmc/integration/invoke/ScheduleExtensionInvoker$1;->val$method:Ljava/lang/reflect/Method;

    .line 4
    .line 5
    iput-wide p3, p0, Lcom/cloud/tmc/integration/invoke/ScheduleExtensionInvoker$1;->val$t1:J

    .line 6
    .line 7
    iput-object p5, p0, Lcom/cloud/tmc/integration/invoke/ScheduleExtensionInvoker$1;->val$proxy:Ljava/lang/Object;

    .line 8
    .line 9
    iput-object p6, p0, Lcom/cloud/tmc/integration/invoke/ScheduleExtensionInvoker$1;->val$args:[Ljava/lang/Object;

    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
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
    const-string v1, "method "

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lcom/cloud/tmc/integration/invoke/ScheduleExtensionInvoker$1;->val$method:Ljava/lang/reflect/Method;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string v1, " cost "

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 22
    .line 23
    .line 24
    move-result-wide v1

    .line 25
    iget-wide v3, p0, Lcom/cloud/tmc/integration/invoke/ScheduleExtensionInvoker$1;->val$t1:J

    .line 26
    .line 27
    sub-long/2addr v1, v3

    .line 28
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    const-string v1, "TmcKernel:ExtensionInvoker:Schedule"

    .line 36
    .line 37
    invoke-static {v1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    iget-object v0, p0, Lcom/cloud/tmc/integration/invoke/ScheduleExtensionInvoker$1;->this$0:Lcom/cloud/tmc/integration/invoke/ScheduleExtensionInvoker;

    .line 41
    .line 42
    iget-object v1, v0, Lcom/cloud/tmc/integration/invoke/ExtensionInvoker;->targetExtensions:Lcom/cloud/tmc/kernel/datastructure/immutable/ImmutableList;

    .line 43
    .line 44
    iget-object v2, p0, Lcom/cloud/tmc/integration/invoke/ScheduleExtensionInvoker$1;->val$proxy:Ljava/lang/Object;

    .line 45
    .line 46
    iget-object v3, p0, Lcom/cloud/tmc/integration/invoke/ScheduleExtensionInvoker$1;->val$method:Ljava/lang/reflect/Method;

    .line 47
    .line 48
    iget-object v4, p0, Lcom/cloud/tmc/integration/invoke/ScheduleExtensionInvoker$1;->val$args:[Ljava/lang/Object;

    .line 49
    .line 50
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/cloud/tmc/integration/invoke/ExtensionInvoker;->proceedSafe(Lcom/cloud/tmc/kernel/datastructure/immutable/ImmutableList;Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    return-void
.end method
