.class public final Lcom/mbridge/msdk/foundation/same/task/c;
.super Ljava/lang/Object;
.source "source.java"


# static fields
.field private static volatile a:Ljava/util/concurrent/ThreadPoolExecutor;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method private static a(ILjava/lang/String;)I
    .locals 1

    .line 2
    :try_start_0
    invoke-static {}, Lcom/mbridge/msdk/foundation/tools/q0;->a()Lcom/mbridge/msdk/foundation/tools/q0;

    move-result-object v0

    invoke-virtual {v0, p1, p0}, Lcom/mbridge/msdk/foundation/tools/q0;->b(Ljava/lang/String;I)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-gtz p1, :cond_0

    goto :goto_0

    :cond_0
    move p0, p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 3
    sget-boolean v0, Lcom/mbridge/msdk/MBridgeConstans;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string v0, "CommonTaskLoaderThreadPool"

    invoke-static {v0, p1}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return p0
.end method

.method private static a()Ljava/util/concurrent/ThreadFactory;
    .locals 1

    .line 1
    new-instance v0, Lcom/mbridge/msdk/foundation/same/task/c$a;

    invoke-direct {v0}, Lcom/mbridge/msdk/foundation/same/task/c$a;-><init>()V

    return-object v0
.end method

.method public static b()Ljava/util/concurrent/ThreadPoolExecutor;
    .locals 11

    .line 1
    invoke-static {}, Lcom/mbridge/msdk/foundation/same/task/c;->c()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lcom/mbridge/msdk/foundation/same/task/c;->a:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    mul-int/lit8 v0, v0, 0x2

    .line 17
    .line 18
    const/4 v1, 0x1

    .line 19
    add-int/lit8 v4, v0, 0x1

    .line 20
    .line 21
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    .line 22
    .line 23
    sget-object v7, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 24
    .line 25
    new-instance v8, Ljava/util/concurrent/LinkedBlockingDeque;

    .line 26
    .line 27
    invoke-direct {v8}, Ljava/util/concurrent/LinkedBlockingDeque;-><init>()V

    .line 28
    .line 29
    .line 30
    invoke-static {}, Lcom/mbridge/msdk/foundation/same/task/c;->a()Ljava/util/concurrent/ThreadFactory;

    .line 31
    .line 32
    .line 33
    move-result-object v9

    .line 34
    new-instance v10, Ljava/util/concurrent/ThreadPoolExecutor$DiscardPolicy;

    .line 35
    .line 36
    invoke-direct {v10}, Ljava/util/concurrent/ThreadPoolExecutor$DiscardPolicy;-><init>()V

    .line 37
    .line 38
    .line 39
    const-wide/16 v5, 0xa

    .line 40
    .line 41
    move-object v2, v0

    .line 42
    move v3, v4

    .line 43
    invoke-direct/range {v2 .. v10}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;)V

    .line 44
    .line 45
    .line 46
    sput-object v0, Lcom/mbridge/msdk/foundation/same/task/c;->a:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 47
    .line 48
    sget-object v0, Lcom/mbridge/msdk/foundation/same/task/c;->a:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 49
    .line 50
    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    .line 51
    .line 52
    .line 53
    :cond_0
    sget-object v0, Lcom/mbridge/msdk/foundation/same/task/c;->a:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 54
    .line 55
    return-object v0
.end method

.method private static c()V
    .locals 12

    .line 1
    const-string v0, "CommonTaskLoaderThreadPool"

    .line 2
    .line 3
    sget-object v1, Lcom/mbridge/msdk/foundation/same/task/c;->a:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    const/16 v1, 0xa

    .line 9
    .line 10
    const-string v2, "c_t_l_t_p_c"

    .line 11
    .line 12
    invoke-static {v1, v2}, Lcom/mbridge/msdk/foundation/same/task/c;->a(ILjava/lang/String;)I

    .line 13
    .line 14
    .line 15
    move-result v4

    .line 16
    const/16 v1, 0x32

    .line 17
    .line 18
    const-string v2, "c_t_l_t_p_m"

    .line 19
    .line 20
    invoke-static {v1, v2}, Lcom/mbridge/msdk/foundation/same/task/c;->a(ILjava/lang/String;)I

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    const/4 v2, 0x5

    .line 25
    const-string v3, "c_t_l_t_p_t"

    .line 26
    .line 27
    invoke-static {v2, v3}, Lcom/mbridge/msdk/foundation/same/task/c;->a(ILjava/lang/String;)I

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    if-ge v1, v4, :cond_1

    .line 32
    .line 33
    move v5, v4

    .line 34
    goto :goto_0

    .line 35
    :cond_1
    move v5, v1

    .line 36
    :goto_0
    :try_start_0
    sget-boolean v1, Lcom/mbridge/msdk/MBridgeConstans;->DEBUG:Z

    .line 37
    .line 38
    if-eqz v1, :cond_2

    .line 39
    .line 40
    new-instance v1, Ljava/lang/StringBuilder;

    .line 41
    .line 42
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 43
    .line 44
    .line 45
    const-string v3, "create ThreadPoolExecutor for core "

    .line 46
    .line 47
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    const-string v3, " max "

    .line 54
    .line 55
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    const-string v3, " timeout "

    .line 62
    .line 63
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    invoke-static {v0, v1}, Lcom/mbridge/msdk/foundation/tools/o0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    goto :goto_1

    .line 77
    :catch_0
    move-exception v1

    .line 78
    goto :goto_2

    .line 79
    :cond_2
    :goto_1
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    .line 80
    .line 81
    int-to-long v2, v2

    .line 82
    const-wide/16 v6, 0x0

    .line 83
    .line 84
    cmp-long v6, v2, v6

    .line 85
    .line 86
    if-gtz v6, :cond_3

    .line 87
    .line 88
    const-wide/16 v2, 0x1

    .line 89
    .line 90
    :cond_3
    move-wide v6, v2

    .line 91
    sget-object v8, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 92
    .line 93
    new-instance v9, Ljava/util/concurrent/LinkedBlockingDeque;

    .line 94
    .line 95
    invoke-direct {v9}, Ljava/util/concurrent/LinkedBlockingDeque;-><init>()V

    .line 96
    .line 97
    .line 98
    invoke-static {}, Lcom/mbridge/msdk/foundation/same/task/c;->a()Ljava/util/concurrent/ThreadFactory;

    .line 99
    .line 100
    .line 101
    move-result-object v10

    .line 102
    new-instance v11, Ljava/util/concurrent/ThreadPoolExecutor$DiscardPolicy;

    .line 103
    .line 104
    invoke-direct {v11}, Ljava/util/concurrent/ThreadPoolExecutor$DiscardPolicy;-><init>()V

    .line 105
    .line 106
    .line 107
    move-object v3, v1

    .line 108
    invoke-direct/range {v3 .. v11}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;)V

    .line 109
    .line 110
    .line 111
    sput-object v1, Lcom/mbridge/msdk/foundation/same/task/c;->a:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 112
    .line 113
    sget-object v1, Lcom/mbridge/msdk/foundation/same/task/c;->a:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 114
    .line 115
    const/4 v2, 0x1

    .line 116
    invoke-virtual {v1, v2}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 117
    .line 118
    .line 119
    goto :goto_3

    .line 120
    :goto_2
    sget-boolean v2, Lcom/mbridge/msdk/MBridgeConstans;->DEBUG:Z

    .line 121
    .line 122
    if-eqz v2, :cond_4

    .line 123
    .line 124
    const-string v2, "create ThreadPoolExecutor failed "

    .line 125
    .line 126
    invoke-static {v0, v2, v1}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 127
    .line 128
    .line 129
    :cond_4
    :goto_3
    return-void
.end method
