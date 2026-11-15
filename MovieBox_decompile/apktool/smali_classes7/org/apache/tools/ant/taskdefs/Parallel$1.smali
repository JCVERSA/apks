.class Lorg/apache/tools/ant/taskdefs/Parallel$1;
.super Ljava/lang/Thread;
.source "source.java"


# instance fields
.field private final synthetic this$0:Lorg/apache/tools/ant/taskdefs/Parallel;


# direct methods
.method constructor <init>(Lorg/apache/tools/ant/taskdefs/Parallel;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Parallel$1;->this$0:Lorg/apache/tools/ant/taskdefs/Parallel;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public declared-synchronized run()V
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Parallel$1;->this$0:Lorg/apache/tools/ant/taskdefs/Parallel;

    .line 3
    .line 4
    invoke-static {v0}, Lorg/apache/tools/ant/taskdefs/Parallel;->u(Lorg/apache/tools/ant/taskdefs/Parallel;)J

    .line 5
    .line 6
    .line 7
    move-result-wide v0

    .line 8
    invoke-virtual {p0, v0, v1}, Ljava/lang/Object;->wait(J)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Parallel$1;->this$0:Lorg/apache/tools/ant/taskdefs/Parallel;

    .line 12
    .line 13
    invoke-static {v0}, Lorg/apache/tools/ant/taskdefs/Parallel;->v(Lorg/apache/tools/ant/taskdefs/Parallel;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 18
    :try_start_1
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Parallel$1;->this$0:Lorg/apache/tools/ant/taskdefs/Parallel;

    .line 19
    .line 20
    const/4 v2, 0x0

    .line 21
    invoke-static {v1, v2}, Lorg/apache/tools/ant/taskdefs/Parallel;->w(Lorg/apache/tools/ant/taskdefs/Parallel;Z)Z

    .line 22
    .line 23
    .line 24
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Parallel$1;->this$0:Lorg/apache/tools/ant/taskdefs/Parallel;

    .line 25
    .line 26
    const/4 v2, 0x1

    .line 27
    invoke-static {v1, v2}, Lorg/apache/tools/ant/taskdefs/Parallel;->x(Lorg/apache/tools/ant/taskdefs/Parallel;Z)Z

    .line 28
    .line 29
    .line 30
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Parallel$1;->this$0:Lorg/apache/tools/ant/taskdefs/Parallel;

    .line 31
    .line 32
    invoke-static {v1}, Lorg/apache/tools/ant/taskdefs/Parallel;->v(Lorg/apache/tools/ant/taskdefs/Parallel;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 37
    .line 38
    .line 39
    monitor-exit v0

    .line 40
    goto :goto_0

    .line 41
    :catchall_0
    move-exception v1

    .line 42
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 43
    :try_start_2
    throw v1
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 44
    :catchall_1
    move-exception v0

    .line 45
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 46
    throw v0

    .line 47
    :catch_0
    :goto_0
    monitor-exit p0

    .line 48
    return-void
.end method
