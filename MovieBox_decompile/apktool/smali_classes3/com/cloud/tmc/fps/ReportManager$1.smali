.class Lcom/cloud/tmc/fps/ReportManager$1;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cloud/tmc/fps/ReportManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cloud/tmc/fps/ReportManager;


# direct methods
.method constructor <init>(Lcom/cloud/tmc/fps/ReportManager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/fps/ReportManager$1;->this$0:Lcom/cloud/tmc/fps/ReportManager;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iget-object v1, p0, Lcom/cloud/tmc/fps/ReportManager$1;->this$0:Lcom/cloud/tmc/fps/ReportManager;

    .line 14
    .line 15
    invoke-static {v1}, Lcom/cloud/tmc/fps/ReportManager;->a(Lcom/cloud/tmc/fps/ReportManager;)Ljava/lang/Boolean;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-eqz v1, :cond_0

    .line 24
    .line 25
    iget-object v1, p0, Lcom/cloud/tmc/fps/ReportManager$1;->this$0:Lcom/cloud/tmc/fps/ReportManager;

    .line 26
    .line 27
    invoke-static {v1}, Lcom/cloud/tmc/fps/ReportManager;->c(Lcom/cloud/tmc/fps/ReportManager;)Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->clear()V

    .line 32
    .line 33
    .line 34
    :cond_0
    iget-object v1, p0, Lcom/cloud/tmc/fps/ReportManager$1;->this$0:Lcom/cloud/tmc/fps/ReportManager;

    .line 35
    .line 36
    invoke-static {v1}, Lcom/cloud/tmc/fps/ReportManager;->c(Lcom/cloud/tmc/fps/ReportManager;)Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    iget-object v0, p0, Lcom/cloud/tmc/fps/ReportManager$1;->this$0:Lcom/cloud/tmc/fps/ReportManager;

    .line 44
    .line 45
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 46
    .line 47
    invoke-static {v0, v1}, Lcom/cloud/tmc/fps/ReportManager;->d(Lcom/cloud/tmc/fps/ReportManager;Ljava/lang/Boolean;)V

    .line 48
    .line 49
    .line 50
    iget-object v0, p0, Lcom/cloud/tmc/fps/ReportManager$1;->this$0:Lcom/cloud/tmc/fps/ReportManager;

    .line 51
    .line 52
    invoke-static {v0}, Lcom/cloud/tmc/fps/ReportManager;->b(Lcom/cloud/tmc/fps/ReportManager;)Landroid/os/Handler;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    sget-object v1, Lcom/cloud/tmc/fps/FpsConfig;->INSTANCE:Lcom/cloud/tmc/fps/FpsConfig;

    .line 57
    .line 58
    invoke-virtual {v1}, Lcom/cloud/tmc/fps/FpsConfig;->getTraceInterval()J

    .line 59
    .line 60
    .line 61
    move-result-wide v1

    .line 62
    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 63
    .line 64
    .line 65
    return-void
.end method
