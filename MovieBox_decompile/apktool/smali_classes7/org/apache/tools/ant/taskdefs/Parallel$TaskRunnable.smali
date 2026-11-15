.class Lorg/apache/tools/ant/taskdefs/Parallel$TaskRunnable;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/tools/ant/taskdefs/Parallel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TaskRunnable"
.end annotation


# instance fields
.field private exception:Ljava/lang/Throwable;

.field private finished:Z

.field private task:Lorg/apache/tools/ant/u;

.field private final synthetic this$0:Lorg/apache/tools/ant/taskdefs/Parallel;


# direct methods
.method constructor <init>(Lorg/apache/tools/ant/taskdefs/Parallel;Lorg/apache/tools/ant/u;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Parallel$TaskRunnable;->this$0:Lorg/apache/tools/ant/taskdefs/Parallel;

    .line 5
    .line 6
    iput-object p2, p0, Lorg/apache/tools/ant/taskdefs/Parallel$TaskRunnable;->task:Lorg/apache/tools/ant/u;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public getException()Ljava/lang/Throwable;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Parallel$TaskRunnable;->exception:Ljava/lang/Throwable;

    .line 2
    .line 3
    return-object v0
.end method

.method isFinished()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Parallel$TaskRunnable;->finished:Z

    .line 2
    .line 3
    return v0
.end method

.method public run()V
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    :try_start_0
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Parallel$TaskRunnable;->task:Lorg/apache/tools/ant/u;

    .line 3
    .line 4
    invoke-virtual {v1}, Lorg/apache/tools/ant/u;->o()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 5
    .line 6
    .line 7
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Parallel$TaskRunnable;->this$0:Lorg/apache/tools/ant/taskdefs/Parallel;

    .line 8
    .line 9
    invoke-static {v1}, Lorg/apache/tools/ant/taskdefs/Parallel;->v(Lorg/apache/tools/ant/taskdefs/Parallel;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    monitor-enter v1

    .line 14
    :try_start_1
    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Parallel$TaskRunnable;->finished:Z

    .line 15
    .line 16
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Parallel$TaskRunnable;->this$0:Lorg/apache/tools/ant/taskdefs/Parallel;

    .line 17
    .line 18
    invoke-static {v0}, Lorg/apache/tools/ant/taskdefs/Parallel;->v(Lorg/apache/tools/ant/taskdefs/Parallel;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 23
    .line 24
    .line 25
    monitor-exit v1

    .line 26
    goto :goto_1

    .line 27
    :catchall_0
    move-exception v0

    .line 28
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 29
    throw v0

    .line 30
    :catchall_1
    move-exception v1

    .line 31
    :try_start_2
    iput-object v1, p0, Lorg/apache/tools/ant/taskdefs/Parallel$TaskRunnable;->exception:Ljava/lang/Throwable;

    .line 32
    .line 33
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Parallel$TaskRunnable;->this$0:Lorg/apache/tools/ant/taskdefs/Parallel;

    .line 34
    .line 35
    invoke-static {v1}, Lorg/apache/tools/ant/taskdefs/Parallel;->y(Lorg/apache/tools/ant/taskdefs/Parallel;)Z

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    if-eqz v1, :cond_0

    .line 40
    .line 41
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Parallel$TaskRunnable;->this$0:Lorg/apache/tools/ant/taskdefs/Parallel;

    .line 42
    .line 43
    const/4 v2, 0x0

    .line 44
    invoke-static {v1, v2}, Lorg/apache/tools/ant/taskdefs/Parallel;->w(Lorg/apache/tools/ant/taskdefs/Parallel;Z)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 45
    .line 46
    .line 47
    goto :goto_0

    .line 48
    :catchall_2
    move-exception v1

    .line 49
    goto :goto_2

    .line 50
    :cond_0
    :goto_0
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Parallel$TaskRunnable;->this$0:Lorg/apache/tools/ant/taskdefs/Parallel;

    .line 51
    .line 52
    invoke-static {v1}, Lorg/apache/tools/ant/taskdefs/Parallel;->v(Lorg/apache/tools/ant/taskdefs/Parallel;)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    monitor-enter v1

    .line 57
    :try_start_3
    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Parallel$TaskRunnable;->finished:Z

    .line 58
    .line 59
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Parallel$TaskRunnable;->this$0:Lorg/apache/tools/ant/taskdefs/Parallel;

    .line 60
    .line 61
    invoke-static {v0}, Lorg/apache/tools/ant/taskdefs/Parallel;->v(Lorg/apache/tools/ant/taskdefs/Parallel;)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 66
    .line 67
    .line 68
    monitor-exit v1

    .line 69
    :goto_1
    return-void

    .line 70
    :catchall_3
    move-exception v0

    .line 71
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 72
    throw v0

    .line 73
    :goto_2
    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/Parallel$TaskRunnable;->this$0:Lorg/apache/tools/ant/taskdefs/Parallel;

    .line 74
    .line 75
    invoke-static {v2}, Lorg/apache/tools/ant/taskdefs/Parallel;->v(Lorg/apache/tools/ant/taskdefs/Parallel;)Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object v2

    .line 79
    monitor-enter v2

    .line 80
    :try_start_4
    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Parallel$TaskRunnable;->finished:Z

    .line 81
    .line 82
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Parallel$TaskRunnable;->this$0:Lorg/apache/tools/ant/taskdefs/Parallel;

    .line 83
    .line 84
    invoke-static {v0}, Lorg/apache/tools/ant/taskdefs/Parallel;->v(Lorg/apache/tools/ant/taskdefs/Parallel;)Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 89
    .line 90
    .line 91
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 92
    throw v1

    .line 93
    :catchall_4
    move-exception v0

    .line 94
    :try_start_5
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    .line 95
    throw v0
.end method
