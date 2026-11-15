.class Lcom/bytedance/sdk/component/Dq/Sj;
.super Ljava/util/concurrent/ThreadPoolExecutor;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/component/Dq/Sj$Sj;
    }
.end annotation


# instance fields
.field private Sj:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IIJ",
            "Ljava/util/concurrent/TimeUnit;",
            "Ljava/util/concurrent/BlockingQueue<",
            "Ljava/lang/Runnable;",
            ">;",
            "Ljava/util/concurrent/ThreadFactory;",
            "Ljava/util/concurrent/RejectedExecutionHandler;",
            ")V"
        }
    .end annotation

    .line 1
    move-object v0, p0

    .line 2
    move v1, p2

    .line 3
    move v2, p3

    .line 4
    move-wide v3, p4

    .line 5
    move-object v5, p6

    .line 6
    move-object/from16 v6, p7

    .line 7
    .line 8
    move-object/from16 v7, p8

    .line 9
    .line 10
    move-object/from16 v8, p9

    .line 11
    .line 12
    invoke-direct/range {v0 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;)V

    .line 13
    .line 14
    .line 15
    move-object v1, p1

    .line 16
    iput-object v1, v0, Lcom/bytedance/sdk/component/Dq/Sj;->Sj:Ljava/lang/String;

    .line 17
    .line 18
    return-void
.end method

.method private Sj(Ljava/lang/Runnable;)V
    .locals 1

    .line 1
    :try_start_0
    invoke-super {p0, p1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    .line 2
    invoke-direct {p0, p1, v0}, Lcom/bytedance/sdk/component/Dq/Sj;->Sj(Ljava/lang/Runnable;Ljava/lang/Throwable;)V

    return-void

    :catch_0
    move-exception v0

    .line 3
    invoke-direct {p0, p1, v0}, Lcom/bytedance/sdk/component/Dq/Sj;->Sj(Ljava/lang/Runnable;Ljava/lang/OutOfMemoryError;)V

    return-void
.end method

.method private Sj(Ljava/lang/Runnable;Ljava/lang/OutOfMemoryError;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1, p2}, Lcom/bytedance/sdk/component/Dq/Sj;->Sj(Ljava/lang/Runnable;Ljava/lang/Throwable;)V

    return-void
.end method

.method private Sj(Ljava/lang/Runnable;Ljava/lang/Throwable;)V
    .locals 1

    .line 5
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    if-eq p2, v0, :cond_0

    .line 6
    :try_start_0
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    return-void
.end method

.method private Sj(Ljava/util/concurrent/BlockingQueue;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/BlockingQueue<",
            "Ljava/lang/Runnable;",
            ">;I)V"
        }
    .end annotation

    .line 7
    invoke-virtual {p0}, Ljava/util/concurrent/ThreadPoolExecutor;->getCorePoolSize()I

    move-result v0

    if-eq v0, p2, :cond_0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result p1

    if-gtz p1, :cond_0

    .line 8
    :try_start_0
    invoke-virtual {p0, p2}, Ljava/util/concurrent/ThreadPoolExecutor;->setCorePoolSize(I)V

    .line 9
    invoke-virtual {p0}, Ljava/util/concurrent/ThreadPoolExecutor;->getCorePoolSize()I

    invoke-virtual {p0}, Ljava/util/concurrent/ThreadPoolExecutor;->getMaximumPoolSize()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 10
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    :cond_0
    return-void
.end method

.method private Sj(Ljava/util/concurrent/BlockingQueue;II)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/BlockingQueue<",
            "Ljava/lang/Runnable;",
            ">;II)V"
        }
    .end annotation

    .line 11
    invoke-virtual {p0}, Ljava/util/concurrent/ThreadPoolExecutor;->getCorePoolSize()I

    move-result v0

    if-eq v0, p2, :cond_0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result p1

    if-lt p1, p3, :cond_0

    .line 12
    :try_start_0
    invoke-virtual {p0, p2}, Ljava/util/concurrent/ThreadPoolExecutor;->setCorePoolSize(I)V

    .line 13
    invoke-virtual {p0}, Ljava/util/concurrent/ThreadPoolExecutor;->getCorePoolSize()I

    invoke-virtual {p0}, Ljava/util/concurrent/ThreadPoolExecutor;->getMaximumPoolSize()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 14
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    :cond_0
    return-void
.end method


# virtual methods
.method public Sj()Ljava/lang/String;
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/bytedance/sdk/component/Dq/Sj;->Sj:Ljava/lang/String;

    return-object v0
.end method

.method protected afterExecute(Ljava/lang/Runnable;Ljava/lang/Throwable;)V
    .locals 3

    .line 1
    const/4 v0, 0x2

    .line 2
    invoke-super {p0, p1, p2}, Ljava/util/concurrent/ThreadPoolExecutor;->afterExecute(Ljava/lang/Runnable;Ljava/lang/Throwable;)V

    .line 3
    .line 4
    .line 5
    invoke-static {}, Lcom/bytedance/sdk/component/Dq/vS;->Jcg()Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    if-eqz p1, :cond_3

    .line 10
    .line 11
    iget-object p1, p0, Lcom/bytedance/sdk/component/Dq/Sj;->Sj:Ljava/lang/String;

    .line 12
    .line 13
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    if-nez p1, :cond_3

    .line 18
    .line 19
    invoke-virtual {p0}, Ljava/util/concurrent/ThreadPoolExecutor;->getQueue()Ljava/util/concurrent/BlockingQueue;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    if-eqz p1, :cond_3

    .line 24
    .line 25
    iget-object p2, p0, Lcom/bytedance/sdk/component/Dq/Sj;->Sj:Ljava/lang/String;

    .line 26
    .line 27
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    .line 28
    .line 29
    .line 30
    const/4 v1, -0x1

    .line 31
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    sparse-switch v2, :sswitch_data_0

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :sswitch_0
    const-string v2, "aidl"

    .line 40
    .line 41
    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    move-result p2

    .line 45
    if-nez p2, :cond_0

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_0
    move v1, v0

    .line 49
    goto :goto_0

    .line 50
    :sswitch_1
    const-string v2, "log"

    .line 51
    .line 52
    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
    move-result p2

    .line 56
    if-nez p2, :cond_1

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_1
    const/4 v1, 0x1

    .line 60
    goto :goto_0

    .line 61
    :sswitch_2
    const-string v2, "io"

    .line 62
    .line 63
    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    move-result p2

    .line 67
    if-nez p2, :cond_2

    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_2
    const/4 v1, 0x0

    .line 71
    :goto_0
    packed-switch v1, :pswitch_data_0

    .line 72
    .line 73
    .line 74
    goto :goto_1

    .line 75
    :pswitch_0
    invoke-direct {p0, p1, v0}, Lcom/bytedance/sdk/component/Dq/Sj;->Sj(Ljava/util/concurrent/BlockingQueue;I)V

    .line 76
    .line 77
    .line 78
    return-void

    .line 79
    :pswitch_1
    const/4 p2, 0x4

    .line 80
    invoke-direct {p0, p1, p2}, Lcom/bytedance/sdk/component/Dq/Sj;->Sj(Ljava/util/concurrent/BlockingQueue;I)V

    .line 81
    .line 82
    .line 83
    goto :goto_1

    .line 84
    :pswitch_2
    invoke-direct {p0, p1, v0}, Lcom/bytedance/sdk/component/Dq/Sj;->Sj(Ljava/util/concurrent/BlockingQueue;I)V

    .line 85
    .line 86
    .line 87
    :cond_3
    :goto_1
    return-void

    .line 88
    nop

    .line 89
    :sswitch_data_0
    .sparse-switch
        0xd26 -> :sswitch_2
        0x1a344 -> :sswitch_1
        0x2daeb0 -> :sswitch_0
    .end sparse-switch

    .line 90
    .line 91
    .line 92
    .line 93
    .line 94
    .line 95
    .line 96
    .line 97
    .line 98
    .line 99
    .line 100
    .line 101
    .line 102
    .line 103
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public execute(Ljava/lang/Runnable;)V
    .locals 4

    .line 1
    const/4 v0, 0x2

    .line 2
    instance-of v1, p1, Lcom/bytedance/sdk/component/Dq/Dq;

    .line 3
    .line 4
    if-eqz v1, :cond_0

    .line 5
    .line 6
    new-instance v1, Lcom/bytedance/sdk/component/Dq/sP;

    .line 7
    .line 8
    check-cast p1, Lcom/bytedance/sdk/component/Dq/Dq;

    .line 9
    .line 10
    invoke-direct {v1, p1, p0}, Lcom/bytedance/sdk/component/Dq/sP;-><init>(Lcom/bytedance/sdk/component/Dq/Dq;Lcom/bytedance/sdk/component/Dq/Sj;)V

    .line 11
    .line 12
    .line 13
    invoke-direct {p0, v1}, Lcom/bytedance/sdk/component/Dq/Sj;->Sj(Ljava/lang/Runnable;)V

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    new-instance v1, Lcom/bytedance/sdk/component/Dq/Sj$1;

    .line 18
    .line 19
    const-string v2, "unknown"

    .line 20
    .line 21
    invoke-direct {v1, p0, v2, p1}, Lcom/bytedance/sdk/component/Dq/Sj$1;-><init>(Lcom/bytedance/sdk/component/Dq/Sj;Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 22
    .line 23
    .line 24
    new-instance p1, Lcom/bytedance/sdk/component/Dq/sP;

    .line 25
    .line 26
    invoke-direct {p1, v1, p0}, Lcom/bytedance/sdk/component/Dq/sP;-><init>(Lcom/bytedance/sdk/component/Dq/Dq;Lcom/bytedance/sdk/component/Dq/Sj;)V

    .line 27
    .line 28
    .line 29
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/component/Dq/Sj;->Sj(Ljava/lang/Runnable;)V

    .line 30
    .line 31
    .line 32
    :goto_0
    invoke-static {}, Lcom/bytedance/sdk/component/Dq/vS;->Jcg()Z

    .line 33
    .line 34
    .line 35
    move-result p1

    .line 36
    if-eqz p1, :cond_4

    .line 37
    .line 38
    iget-object p1, p0, Lcom/bytedance/sdk/component/Dq/Sj;->Sj:Ljava/lang/String;

    .line 39
    .line 40
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 41
    .line 42
    .line 43
    move-result p1

    .line 44
    if-nez p1, :cond_4

    .line 45
    .line 46
    invoke-virtual {p0}, Ljava/util/concurrent/ThreadPoolExecutor;->getQueue()Ljava/util/concurrent/BlockingQueue;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    if-eqz p1, :cond_4

    .line 51
    .line 52
    iget-object v1, p0, Lcom/bytedance/sdk/component/Dq/Sj;->Sj:Ljava/lang/String;

    .line 53
    .line 54
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 55
    .line 56
    .line 57
    const/4 v2, -0x1

    .line 58
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 59
    .line 60
    .line 61
    move-result v3

    .line 62
    sparse-switch v3, :sswitch_data_0

    .line 63
    .line 64
    .line 65
    goto :goto_1

    .line 66
    :sswitch_0
    const-string v3, "aidl"

    .line 67
    .line 68
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 69
    .line 70
    .line 71
    move-result v1

    .line 72
    if-nez v1, :cond_1

    .line 73
    .line 74
    goto :goto_1

    .line 75
    :cond_1
    move v2, v0

    .line 76
    goto :goto_1

    .line 77
    :sswitch_1
    const-string v3, "log"

    .line 78
    .line 79
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 80
    .line 81
    .line 82
    move-result v1

    .line 83
    if-nez v1, :cond_2

    .line 84
    .line 85
    goto :goto_1

    .line 86
    :cond_2
    const/4 v2, 0x1

    .line 87
    goto :goto_1

    .line 88
    :sswitch_2
    const-string v3, "io"

    .line 89
    .line 90
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 91
    .line 92
    .line 93
    move-result v1

    .line 94
    if-nez v1, :cond_3

    .line 95
    .line 96
    goto :goto_1

    .line 97
    :cond_3
    const/4 v2, 0x0

    .line 98
    :goto_1
    packed-switch v2, :pswitch_data_0

    .line 99
    .line 100
    .line 101
    goto :goto_2

    .line 102
    :pswitch_0
    const/4 v0, 0x5

    .line 103
    invoke-direct {p0, p1, v0, v0}, Lcom/bytedance/sdk/component/Dq/Sj;->Sj(Ljava/util/concurrent/BlockingQueue;II)V

    .line 104
    .line 105
    .line 106
    return-void

    .line 107
    :pswitch_1
    const/16 v0, 0x8

    .line 108
    .line 109
    invoke-direct {p0, p1, v0, v0}, Lcom/bytedance/sdk/component/Dq/Sj;->Sj(Ljava/util/concurrent/BlockingQueue;II)V

    .line 110
    .line 111
    .line 112
    goto :goto_2

    .line 113
    :pswitch_2
    sget v1, Lcom/bytedance/sdk/component/Dq/vS;->Sj:I

    .line 114
    .line 115
    add-int/2addr v1, v0

    .line 116
    invoke-virtual {p0}, Ljava/util/concurrent/ThreadPoolExecutor;->getCorePoolSize()I

    .line 117
    .line 118
    .line 119
    move-result v2

    .line 120
    mul-int/2addr v2, v0

    .line 121
    invoke-direct {p0, p1, v1, v2}, Lcom/bytedance/sdk/component/Dq/Sj;->Sj(Ljava/util/concurrent/BlockingQueue;II)V

    .line 122
    .line 123
    .line 124
    :cond_4
    :goto_2
    return-void

    .line 125
    :sswitch_data_0
    .sparse-switch
        0xd26 -> :sswitch_2
        0x1a344 -> :sswitch_1
        0x2daeb0 -> :sswitch_0
    .end sparse-switch

    .line 126
    .line 127
    .line 128
    .line 129
    .line 130
    .line 131
    .line 132
    .line 133
    .line 134
    .line 135
    .line 136
    .line 137
    .line 138
    .line 139
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public shutdown()V
    .locals 2

    .line 1
    const-string v0, "io"

    .line 2
    .line 3
    iget-object v1, p0, Lcom/bytedance/sdk/component/Dq/Sj;->Sj:Ljava/lang/String;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_1

    .line 10
    .line 11
    const-string v0, "aidl"

    .line 12
    .line 13
    iget-object v1, p0, Lcom/bytedance/sdk/component/Dq/Sj;->Sj:Ljava/lang/String;

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    invoke-super {p0}, Ljava/util/concurrent/ThreadPoolExecutor;->shutdown()V

    .line 23
    .line 24
    .line 25
    :cond_1
    :goto_0
    return-void
.end method

.method public shutdownNow()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation

    .line 1
    const-string v0, "io"

    .line 2
    .line 3
    iget-object v1, p0, Lcom/bytedance/sdk/component/Dq/Sj;->Sj:Ljava/lang/String;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_1

    .line 10
    .line 11
    const-string v0, "aidl"

    .line 12
    .line 13
    iget-object v1, p0, Lcom/bytedance/sdk/component/Dq/Sj;->Sj:Ljava/lang/String;

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    invoke-super {p0}, Ljava/util/concurrent/ThreadPoolExecutor;->shutdownNow()Ljava/util/List;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    return-object v0

    .line 27
    :cond_1
    :goto_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    return-object v0
.end method
