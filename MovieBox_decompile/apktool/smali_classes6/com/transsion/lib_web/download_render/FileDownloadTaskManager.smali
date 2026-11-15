.class public final Lcom/transsion/lib_web/download_render/FileDownloadTaskManager;
.super Ljava/lang/Object;
.source "source.java"


# static fields
.field public static final a:Lcom/transsion/lib_web/download_render/FileDownloadTaskManager;

.field private static final b:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static c:Ljava/util/concurrent/atomic/AtomicLong;

.field private static final d:Lkotlinx/coroutines/sync/a;

.field private static final e:Lkotlinx/coroutines/n0;

.field private static final f:Lkotlinx/coroutines/n0;

.field private static final g:Ljava/util/LinkedHashMap;

.field private static final h:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static i:Ljava/lang/String;

.field private static j:Lcom/transsion/lib_web/download_render/d;

.field private static final k:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lcom/transsion/lib_web/download_render/FileDownloadTaskManager;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/transsion/lib_web/download_render/FileDownloadTaskManager;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/transsion/lib_web/download_render/FileDownloadTaskManager;->a:Lcom/transsion/lib_web/download_render/FileDownloadTaskManager;

    .line 7
    .line 8
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 12
    .line 13
    .line 14
    sput-object v0, Lcom/transsion/lib_web/download_render/FileDownloadTaskManager;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 15
    .line 16
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    .line 17
    .line 18
    const-wide/16 v2, 0x1

    .line 19
    .line 20
    invoke-direct {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    .line 21
    .line 22
    .line 23
    sput-object v0, Lcom/transsion/lib_web/download_render/FileDownloadTaskManager;->c:Ljava/util/concurrent/atomic/AtomicLong;

    .line 24
    .line 25
    const/4 v0, 0x1

    .line 26
    const/4 v2, 0x0

    .line 27
    invoke-static {v1, v0, v2}, Lkotlinx/coroutines/sync/g;->b(ZILjava/lang/Object;)Lkotlinx/coroutines/sync/a;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    sput-object v0, Lcom/transsion/lib_web/download_render/FileDownloadTaskManager;->d:Lkotlinx/coroutines/sync/a;

    .line 32
    .line 33
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    const-string v2, "newSingleThreadExecutor(...)"

    .line 38
    .line 39
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    invoke-static {v0}, Lkotlinx/coroutines/m1;->c(Ljava/util/concurrent/ExecutorService;)Lkotlinx/coroutines/k1;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    invoke-static {v0}, Lkotlinx/coroutines/o0;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/n0;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    sput-object v0, Lcom/transsion/lib_web/download_render/FileDownloadTaskManager;->e:Lkotlinx/coroutines/n0;

    .line 51
    .line 52
    invoke-static {}, Lkotlinx/coroutines/y0;->b()Lkotlinx/coroutines/i0;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    invoke-static {v0}, Lkotlinx/coroutines/o0;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/n0;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    sput-object v0, Lcom/transsion/lib_web/download_render/FileDownloadTaskManager;->f:Lkotlinx/coroutines/n0;

    .line 61
    .line 62
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 63
    .line 64
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 65
    .line 66
    .line 67
    sput-object v0, Lcom/transsion/lib_web/download_render/FileDownloadTaskManager;->g:Ljava/util/LinkedHashMap;

    .line 68
    .line 69
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 70
    .line 71
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 72
    .line 73
    .line 74
    sput-object v0, Lcom/transsion/lib_web/download_render/FileDownloadTaskManager;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 75
    .line 76
    new-instance v0, Lcom/transsion/lib_web/download_render/FileDownloadTaskManager$a;

    .line 77
    .line 78
    invoke-direct {v0}, Lcom/transsion/lib_web/download_render/FileDownloadTaskManager$a;-><init>()V

    .line 79
    .line 80
    .line 81
    sput-object v0, Lcom/transsion/lib_web/download_render/FileDownloadTaskManager;->j:Lcom/transsion/lib_web/download_render/d;

    .line 82
    .line 83
    new-instance v0, Ljava/util/ArrayList;

    .line 84
    .line 85
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 86
    .line 87
    .line 88
    sput-object v0, Lcom/transsion/lib_web/download_render/FileDownloadTaskManager;->k:Ljava/util/List;

    .line 89
    .line 90
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic a()Ljava/util/LinkedHashMap;
    .locals 1

    .line 1
    sget-object v0, Lcom/transsion/lib_web/download_render/FileDownloadTaskManager;->g:Ljava/util/LinkedHashMap;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic b()Ljava/util/List;
    .locals 1

    .line 1
    sget-object v0, Lcom/transsion/lib_web/download_render/FileDownloadTaskManager;->k:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic c()Lkotlinx/coroutines/sync/a;
    .locals 1

    .line 1
    sget-object v0, Lcom/transsion/lib_web/download_render/FileDownloadTaskManager;->d:Lkotlinx/coroutines/sync/a;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic d()Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .line 1
    sget-object v0, Lcom/transsion/lib_web/download_render/FileDownloadTaskManager;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic e(Ljava/lang/String;)V
    .locals 0

    .line 1
    sput-object p0, Lcom/transsion/lib_web/download_render/FileDownloadTaskManager;->i:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic f(Lcom/transsion/lib_web/download_render/FileDownloadTaskManager;Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/transsion/lib_web/download_render/FileDownloadTaskManager;->m(Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private final k()V
    .locals 7

    .line 1
    sget-object v0, Lpl/h;->a:Lpl/h;

    .line 2
    .line 3
    sget-object v1, Lcom/transsion/lib_web/download_render/FileDownloadTaskManager;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 4
    .line 5
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    new-instance v3, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 12
    .line 13
    .line 14
    const-string v4, "<startDownloadExecution> isDownloadRunning value: "

    .line 15
    .line 16
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    const-string v2, ", if value is true -> can\'t load download"

    .line 23
    .line 24
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    const-string v3, "DR_FileDownloadTaskManager"

    .line 32
    .line 33
    invoke-virtual {v0, v3, v2}, Lpl/h;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    const/4 v0, 0x0

    .line 37
    const/4 v2, 0x1

    .line 38
    invoke-virtual {v1, v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    if-eqz v0, :cond_0

    .line 43
    .line 44
    sget-object v1, Lcom/transsion/lib_web/download_render/FileDownloadTaskManager;->f:Lkotlinx/coroutines/n0;

    .line 45
    .line 46
    new-instance v4, Lcom/transsion/lib_web/download_render/FileDownloadTaskManager$startDownloadExecution$1;

    .line 47
    .line 48
    const/4 v0, 0x0

    .line 49
    invoke-direct {v4, v0}, Lcom/transsion/lib_web/download_render/FileDownloadTaskManager$startDownloadExecution$1;-><init>(Lkotlin/coroutines/Continuation;)V

    .line 50
    .line 51
    .line 52
    const/4 v5, 0x3

    .line 53
    const/4 v6, 0x0

    .line 54
    const/4 v2, 0x0

    .line 55
    const/4 v3, 0x0

    .line 56
    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 57
    .line 58
    .line 59
    :cond_0
    return-void
.end method

.method private final m(Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 21

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p2

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    instance-of v3, v0, Lcom/transsion/lib_web/download_render/FileDownloadTaskManager$updateTask$1;

    .line 7
    .line 8
    if-eqz v3, :cond_0

    .line 9
    .line 10
    move-object v3, v0

    .line 11
    check-cast v3, Lcom/transsion/lib_web/download_render/FileDownloadTaskManager$updateTask$1;

    .line 12
    .line 13
    iget v4, v3, Lcom/transsion/lib_web/download_render/FileDownloadTaskManager$updateTask$1;->label:I

    .line 14
    .line 15
    const/high16 v5, -0x80000000

    .line 16
    .line 17
    and-int v6, v4, v5

    .line 18
    .line 19
    if-eqz v6, :cond_0

    .line 20
    .line 21
    sub-int/2addr v4, v5

    .line 22
    iput v4, v3, Lcom/transsion/lib_web/download_render/FileDownloadTaskManager$updateTask$1;->label:I

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    new-instance v3, Lcom/transsion/lib_web/download_render/FileDownloadTaskManager$updateTask$1;

    .line 26
    .line 27
    invoke-direct {v3, v1, v0}, Lcom/transsion/lib_web/download_render/FileDownloadTaskManager$updateTask$1;-><init>(Lcom/transsion/lib_web/download_render/FileDownloadTaskManager;Lkotlin/coroutines/Continuation;)V

    .line 28
    .line 29
    .line 30
    :goto_0
    iget-object v0, v3, Lcom/transsion/lib_web/download_render/FileDownloadTaskManager$updateTask$1;->result:Ljava/lang/Object;

    .line 31
    .line 32
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v4

    .line 36
    iget v5, v3, Lcom/transsion/lib_web/download_render/FileDownloadTaskManager$updateTask$1;->label:I

    .line 37
    .line 38
    const-string v6, "DR_FileDownloadTaskManager"

    .line 39
    .line 40
    const/4 v7, 0x0

    .line 41
    if-eqz v5, :cond_2

    .line 42
    .line 43
    if-ne v5, v2, :cond_1

    .line 44
    .line 45
    iget-object v4, v3, Lcom/transsion/lib_web/download_render/FileDownloadTaskManager$updateTask$1;->L$2:Ljava/lang/Object;

    .line 46
    .line 47
    check-cast v4, Lkotlinx/coroutines/sync/a;

    .line 48
    .line 49
    iget-object v5, v3, Lcom/transsion/lib_web/download_render/FileDownloadTaskManager$updateTask$1;->L$1:Ljava/lang/Object;

    .line 50
    .line 51
    check-cast v5, Ljava/util/List;

    .line 52
    .line 53
    iget-object v3, v3, Lcom/transsion/lib_web/download_render/FileDownloadTaskManager$updateTask$1;->L$0:Ljava/lang/Object;

    .line 54
    .line 55
    check-cast v3, Lcom/transsion/lib_web/download_render/FileDownloadTaskManager;

    .line 56
    .line 57
    invoke-static {v0}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 58
    .line 59
    .line 60
    goto :goto_1

    .line 61
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 62
    .line 63
    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 64
    .line 65
    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    throw v0

    .line 69
    :cond_2
    invoke-static {v0}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 70
    .line 71
    .line 72
    sget-object v0, Lpl/h;->a:Lpl/h;

    .line 73
    .line 74
    const-string v5, "<updateTask> start"

    .line 75
    .line 76
    invoke-virtual {v0, v6, v5}, Lpl/h;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    sget-object v0, Lcom/transsion/lib_web/download_render/FileDownloadTaskManager;->d:Lkotlinx/coroutines/sync/a;

    .line 80
    .line 81
    iput-object v1, v3, Lcom/transsion/lib_web/download_render/FileDownloadTaskManager$updateTask$1;->L$0:Ljava/lang/Object;

    .line 82
    .line 83
    move-object/from16 v5, p1

    .line 84
    .line 85
    iput-object v5, v3, Lcom/transsion/lib_web/download_render/FileDownloadTaskManager$updateTask$1;->L$1:Ljava/lang/Object;

    .line 86
    .line 87
    iput-object v0, v3, Lcom/transsion/lib_web/download_render/FileDownloadTaskManager$updateTask$1;->L$2:Ljava/lang/Object;

    .line 88
    .line 89
    iput v2, v3, Lcom/transsion/lib_web/download_render/FileDownloadTaskManager$updateTask$1;->label:I

    .line 90
    .line 91
    invoke-interface {v0, v7, v3}, Lkotlinx/coroutines/sync/a;->f(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    move-result-object v3

    .line 95
    if-ne v3, v4, :cond_3

    .line 96
    .line 97
    return-object v4

    .line 98
    :cond_3
    move-object v4, v0

    .line 99
    move-object v3, v1

    .line 100
    :goto_1
    :try_start_0
    new-instance v0, Ljava/util/LinkedHashSet;

    .line 101
    .line 102
    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 103
    .line 104
    .line 105
    new-instance v8, Ljava/util/LinkedHashSet;

    .line 106
    .line 107
    invoke-direct {v8}, Ljava/util/LinkedHashSet;-><init>()V

    .line 108
    .line 109
    .line 110
    new-instance v9, Ljava/util/LinkedHashSet;

    .line 111
    .line 112
    invoke-direct {v9}, Ljava/util/LinkedHashSet;-><init>()V

    .line 113
    .line 114
    .line 115
    move-object v10, v5

    .line 116
    check-cast v10, Ljava/lang/Iterable;

    .line 117
    .line 118
    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 119
    .line 120
    .line 121
    move-result-object v10

    .line 122
    const/4 v11, 0x0

    .line 123
    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    .line 124
    .line 125
    .line 126
    move-result v12

    .line 127
    if-eqz v12, :cond_a

    .line 128
    .line 129
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 130
    .line 131
    .line 132
    move-result-object v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 133
    add-int/lit8 v13, v11, 0x1

    .line 134
    .line 135
    if-gez v11, :cond_4

    .line 136
    .line 137
    :try_start_1
    invoke-static {}, Lkotlin/collections/CollectionsKt;->u()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 138
    .line 139
    .line 140
    goto :goto_3

    .line 141
    :catchall_0
    move-exception v0

    .line 142
    move-object v1, v7

    .line 143
    goto/16 :goto_12

    .line 144
    .line 145
    :cond_4
    :goto_3
    :try_start_2
    check-cast v12, Lcom/transsion/lib_web/download_render/data/PageData;

    .line 146
    .line 147
    new-instance v14, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 148
    .line 149
    invoke-direct {v14}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 150
    .line 151
    .line 152
    new-instance v15, Lkotlin/jvm/internal/Ref$LongRef;

    .line 153
    .line 154
    invoke-direct {v15}, Lkotlin/jvm/internal/Ref$LongRef;-><init>()V

    .line 155
    .line 156
    .line 157
    move-object/from16 p1, v3

    .line 158
    .line 159
    const-wide/16 v2, -0x1

    .line 160
    .line 161
    iput-wide v2, v15, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    .line 162
    .line 163
    sget-object v17, Lcom/transsion/lib_web/download_render/FileDownloadTaskManager;->g:Ljava/util/LinkedHashMap;

    .line 164
    .line 165
    invoke-interface/range {v17 .. v17}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 166
    .line 167
    .line 168
    move-result-object v17

    .line 169
    invoke-interface/range {v17 .. v17}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 170
    .line 171
    .line 172
    move-result-object v17

    .line 173
    :goto_4
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    .line 174
    .line 175
    .line 176
    move-result v18

    .line 177
    if-eqz v18, :cond_6

    .line 178
    .line 179
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 180
    .line 181
    .line 182
    move-result-object v18

    .line 183
    check-cast v18, Ljava/util/Map$Entry;

    .line 184
    .line 185
    invoke-interface/range {v18 .. v18}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 186
    .line 187
    .line 188
    move-result-object v19

    .line 189
    check-cast v19, Ljava/lang/Number;

    .line 190
    .line 191
    move-object/from16 v20, v8

    .line 192
    .line 193
    invoke-virtual/range {v19 .. v19}, Ljava/lang/Number;->longValue()J

    .line 194
    .line 195
    .line 196
    move-result-wide v7

    .line 197
    invoke-interface/range {v18 .. v18}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 198
    .line 199
    .line 200
    move-result-object v18

    .line 201
    move-object/from16 v2, v18

    .line 202
    .line 203
    check-cast v2, Ltl/a;

    .line 204
    .line 205
    invoke-virtual {v2}, Ltl/a;->a()Lcom/transsion/lib_web/download_render/data/PageData;

    .line 206
    .line 207
    .line 208
    move-result-object v3

    .line 209
    invoke-virtual {v3}, Lcom/transsion/lib_web/download_render/data/PageData;->getUrl()Ljava/lang/String;

    .line 210
    .line 211
    .line 212
    move-result-object v3

    .line 213
    invoke-virtual {v12}, Lcom/transsion/lib_web/download_render/data/PageData;->getUrl()Ljava/lang/String;

    .line 214
    .line 215
    .line 216
    move-result-object v1

    .line 217
    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 218
    .line 219
    .line 220
    move-result v1

    .line 221
    if-eqz v1, :cond_5

    .line 222
    .line 223
    iput-object v2, v14, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 224
    .line 225
    iput-wide v7, v15, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    .line 226
    .line 227
    goto :goto_5

    .line 228
    :catchall_1
    move-exception v0

    .line 229
    const/4 v1, 0x0

    .line 230
    goto/16 :goto_12

    .line 231
    .line 232
    :cond_5
    :goto_5
    move-object/from16 v1, p0

    .line 233
    .line 234
    move-object/from16 v8, v20

    .line 235
    .line 236
    const-wide/16 v2, -0x1

    .line 237
    .line 238
    const/4 v7, 0x0

    .line 239
    goto :goto_4

    .line 240
    :cond_6
    move-object/from16 v20, v8

    .line 241
    .line 242
    iget-wide v1, v15, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    .line 243
    .line 244
    const-wide/16 v7, -0x1

    .line 245
    .line 246
    cmp-long v1, v1, v7

    .line 247
    .line 248
    if-nez v1, :cond_7

    .line 249
    .line 250
    invoke-static {v11}, Lkotlin/coroutines/jvm/internal/Boxing;->d(I)Ljava/lang/Integer;

    .line 251
    .line 252
    .line 253
    move-result-object v1

    .line 254
    invoke-interface {v9, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 255
    .line 256
    .line 257
    :goto_6
    move-object/from16 v2, v20

    .line 258
    .line 259
    goto :goto_8

    .line 260
    :cond_7
    invoke-virtual {v12}, Lcom/transsion/lib_web/download_render/data/PageData;->getVersionCode()Ljava/lang/String;

    .line 261
    .line 262
    .line 263
    move-result-object v1

    .line 264
    iget-object v2, v14, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 265
    .line 266
    check-cast v2, Ltl/a;

    .line 267
    .line 268
    if-eqz v2, :cond_8

    .line 269
    .line 270
    invoke-virtual {v2}, Ltl/a;->a()Lcom/transsion/lib_web/download_render/data/PageData;

    .line 271
    .line 272
    .line 273
    move-result-object v2

    .line 274
    if-eqz v2, :cond_8

    .line 275
    .line 276
    invoke-virtual {v2}, Lcom/transsion/lib_web/download_render/data/PageData;->getVersionCode()Ljava/lang/String;

    .line 277
    .line 278
    .line 279
    move-result-object v2

    .line 280
    goto :goto_7

    .line 281
    :cond_8
    const/4 v2, 0x0

    .line 282
    :goto_7
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 283
    .line 284
    .line 285
    move-result v1

    .line 286
    if-nez v1, :cond_9

    .line 287
    .line 288
    iget-wide v1, v15, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    .line 289
    .line 290
    invoke-static {v1, v2}, Lkotlin/coroutines/jvm/internal/Boxing;->e(J)Ljava/lang/Long;

    .line 291
    .line 292
    .line 293
    move-result-object v1

    .line 294
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 295
    .line 296
    .line 297
    invoke-static {v11}, Lkotlin/coroutines/jvm/internal/Boxing;->d(I)Ljava/lang/Integer;

    .line 298
    .line 299
    .line 300
    move-result-object v1

    .line 301
    invoke-interface {v9, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 302
    .line 303
    .line 304
    goto :goto_6

    .line 305
    :cond_9
    iget-wide v1, v15, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    .line 306
    .line 307
    invoke-static {v1, v2}, Lkotlin/coroutines/jvm/internal/Boxing;->e(J)Ljava/lang/Long;

    .line 308
    .line 309
    .line 310
    move-result-object v1

    .line 311
    move-object/from16 v2, v20

    .line 312
    .line 313
    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 314
    .line 315
    .line 316
    :goto_8
    move-object/from16 v1, p0

    .line 317
    .line 318
    move-object/from16 v3, p1

    .line 319
    .line 320
    move-object v8, v2

    .line 321
    move v11, v13

    .line 322
    const/4 v2, 0x1

    .line 323
    const/4 v7, 0x0

    .line 324
    goto/16 :goto_2

    .line 325
    .line 326
    :cond_a
    move-object/from16 p1, v3

    .line 327
    .line 328
    move-object v2, v8

    .line 329
    sget-object v1, Lcom/transsion/lib_web/download_render/FileDownloadTaskManager;->g:Ljava/util/LinkedHashMap;

    .line 330
    .line 331
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 332
    .line 333
    .line 334
    move-result-object v1

    .line 335
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 336
    .line 337
    .line 338
    move-result-object v1

    .line 339
    :cond_b
    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 340
    .line 341
    .line 342
    move-result v3

    .line 343
    if-eqz v3, :cond_c

    .line 344
    .line 345
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 346
    .line 347
    .line 348
    move-result-object v3

    .line 349
    check-cast v3, Ljava/util/Map$Entry;

    .line 350
    .line 351
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 352
    .line 353
    .line 354
    move-result-object v3

    .line 355
    check-cast v3, Ljava/lang/Number;

    .line 356
    .line 357
    invoke-virtual {v3}, Ljava/lang/Number;->longValue()J

    .line 358
    .line 359
    .line 360
    move-result-wide v7

    .line 361
    invoke-static {v7, v8}, Lkotlin/coroutines/jvm/internal/Boxing;->e(J)Ljava/lang/Long;

    .line 362
    .line 363
    .line 364
    move-result-object v3

    .line 365
    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 366
    .line 367
    .line 368
    move-result v3

    .line 369
    if-nez v3, :cond_b

    .line 370
    .line 371
    invoke-static {v7, v8}, Lkotlin/coroutines/jvm/internal/Boxing;->e(J)Ljava/lang/Long;

    .line 372
    .line 373
    .line 374
    move-result-object v3

    .line 375
    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 376
    .line 377
    .line 378
    goto :goto_9

    .line 379
    :cond_c
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 380
    .line 381
    .line 382
    move-result-object v0

    .line 383
    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 384
    .line 385
    .line 386
    move-result v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 387
    const-string v2, ", manifestUrl:"

    .line 388
    .line 389
    const-string v3, ", priority:"

    .line 390
    .line 391
    const-string v7, ", versionCode:"

    .line 392
    .line 393
    const-string v8, ", url:"

    .line 394
    .line 395
    if-eqz v1, :cond_12

    .line 396
    .line 397
    :try_start_3
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 398
    .line 399
    .line 400
    move-result-object v1

    .line 401
    check-cast v1, Ljava/lang/Number;

    .line 402
    .line 403
    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    .line 404
    .line 405
    .line 406
    move-result-wide v10

    .line 407
    sget-object v1, Lcom/transsion/lib_web/download_render/FileDownloadTaskManager;->g:Ljava/util/LinkedHashMap;

    .line 408
    .line 409
    invoke-static {v10, v11}, Lkotlin/coroutines/jvm/internal/Boxing;->e(J)Ljava/lang/Long;

    .line 410
    .line 411
    .line 412
    move-result-object v10

    .line 413
    invoke-virtual {v1, v10}, Ljava/util/AbstractMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 414
    .line 415
    .line 416
    move-result-object v1

    .line 417
    check-cast v1, Ltl/a;

    .line 418
    .line 419
    sget-object v10, Lpl/h;->a:Lpl/h;

    .line 420
    .line 421
    if-eqz v1, :cond_d

    .line 422
    .line 423
    invoke-virtual {v1}, Ltl/a;->b()J

    .line 424
    .line 425
    .line 426
    move-result-wide v11

    .line 427
    invoke-static {v11, v12}, Lkotlin/coroutines/jvm/internal/Boxing;->e(J)Ljava/lang/Long;

    .line 428
    .line 429
    .line 430
    move-result-object v11

    .line 431
    goto :goto_b

    .line 432
    :cond_d
    const/4 v11, 0x0

    .line 433
    :goto_b
    if-eqz v1, :cond_e

    .line 434
    .line 435
    invoke-virtual {v1}, Ltl/a;->a()Lcom/transsion/lib_web/download_render/data/PageData;

    .line 436
    .line 437
    .line 438
    move-result-object v12

    .line 439
    if-eqz v12, :cond_e

    .line 440
    .line 441
    invoke-virtual {v12}, Lcom/transsion/lib_web/download_render/data/PageData;->getUrl()Ljava/lang/String;

    .line 442
    .line 443
    .line 444
    move-result-object v12

    .line 445
    goto :goto_c

    .line 446
    :cond_e
    const/4 v12, 0x0

    .line 447
    :goto_c
    if-eqz v1, :cond_f

    .line 448
    .line 449
    invoke-virtual {v1}, Ltl/a;->a()Lcom/transsion/lib_web/download_render/data/PageData;

    .line 450
    .line 451
    .line 452
    move-result-object v13

    .line 453
    if-eqz v13, :cond_f

    .line 454
    .line 455
    invoke-virtual {v13}, Lcom/transsion/lib_web/download_render/data/PageData;->getVersionCode()Ljava/lang/String;

    .line 456
    .line 457
    .line 458
    move-result-object v13

    .line 459
    goto :goto_d

    .line 460
    :cond_f
    const/4 v13, 0x0

    .line 461
    :goto_d
    if-eqz v1, :cond_10

    .line 462
    .line 463
    invoke-virtual {v1}, Ltl/a;->a()Lcom/transsion/lib_web/download_render/data/PageData;

    .line 464
    .line 465
    .line 466
    move-result-object v14

    .line 467
    if-eqz v14, :cond_10

    .line 468
    .line 469
    invoke-virtual {v14}, Lcom/transsion/lib_web/download_render/data/PageData;->getPriority()Ljava/lang/Long;

    .line 470
    .line 471
    .line 472
    move-result-object v14

    .line 473
    goto :goto_e

    .line 474
    :cond_10
    const/4 v14, 0x0

    .line 475
    :goto_e
    if-eqz v1, :cond_11

    .line 476
    .line 477
    invoke-virtual {v1}, Ltl/a;->a()Lcom/transsion/lib_web/download_render/data/PageData;

    .line 478
    .line 479
    .line 480
    move-result-object v1

    .line 481
    if-eqz v1, :cond_11

    .line 482
    .line 483
    invoke-virtual {v1}, Lcom/transsion/lib_web/download_render/data/PageData;->getManifestUrl()Ljava/lang/String;

    .line 484
    .line 485
    .line 486
    move-result-object v1

    .line 487
    goto :goto_f

    .line 488
    :cond_11
    const/4 v1, 0x0

    .line 489
    :goto_f
    new-instance v15, Ljava/lang/StringBuilder;

    .line 490
    .line 491
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    .line 492
    .line 493
    .line 494
    move-object/from16 v16, v0

    .line 495
    .line 496
    const-string v0, "<updateTask> downloadTaskQueue \u79fb\u9664\u6389\u7684\u4efb\u52a1 taskId: "

    .line 497
    .line 498
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 499
    .line 500
    .line 501
    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 502
    .line 503
    .line 504
    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 505
    .line 506
    .line 507
    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 508
    .line 509
    .line 510
    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 511
    .line 512
    .line 513
    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 514
    .line 515
    .line 516
    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 517
    .line 518
    .line 519
    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 520
    .line 521
    .line 522
    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 523
    .line 524
    .line 525
    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 526
    .line 527
    .line 528
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 529
    .line 530
    .line 531
    move-result-object v0

    .line 532
    invoke-virtual {v10, v6, v0}, Lpl/h;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 533
    .line 534
    .line 535
    move-object/from16 v0, v16

    .line 536
    .line 537
    goto/16 :goto_a

    .line 538
    .line 539
    :cond_12
    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 540
    .line 541
    .line 542
    move-result-object v0

    .line 543
    :goto_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 544
    .line 545
    .line 546
    move-result v1

    .line 547
    if-eqz v1, :cond_13

    .line 548
    .line 549
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 550
    .line 551
    .line 552
    move-result-object v1

    .line 553
    check-cast v1, Ljava/lang/Number;

    .line 554
    .line 555
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    .line 556
    .line 557
    .line 558
    move-result v1

    .line 559
    sget-object v9, Lcom/transsion/lib_web/download_render/FileDownloadTaskManager;->c:Ljava/util/concurrent/atomic/AtomicLong;

    .line 560
    .line 561
    const-wide/16 v10, 0x1

    .line 562
    .line 563
    invoke-virtual {v9, v10, v11}, Ljava/util/concurrent/atomic/AtomicLong;->getAndAdd(J)J

    .line 564
    .line 565
    .line 566
    move-result-wide v9

    .line 567
    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 568
    .line 569
    .line 570
    move-result-object v1

    .line 571
    check-cast v1, Lcom/transsion/lib_web/download_render/data/PageData;

    .line 572
    .line 573
    sget-object v11, Lpl/h;->a:Lpl/h;

    .line 574
    .line 575
    invoke-virtual {v1}, Lcom/transsion/lib_web/download_render/data/PageData;->getUrl()Ljava/lang/String;

    .line 576
    .line 577
    .line 578
    move-result-object v12

    .line 579
    invoke-virtual {v1}, Lcom/transsion/lib_web/download_render/data/PageData;->getVersionCode()Ljava/lang/String;

    .line 580
    .line 581
    .line 582
    move-result-object v13

    .line 583
    invoke-virtual {v1}, Lcom/transsion/lib_web/download_render/data/PageData;->getPriority()Ljava/lang/Long;

    .line 584
    .line 585
    .line 586
    move-result-object v14

    .line 587
    invoke-virtual {v1}, Lcom/transsion/lib_web/download_render/data/PageData;->getManifestUrl()Ljava/lang/String;

    .line 588
    .line 589
    .line 590
    move-result-object v15

    .line 591
    move-object/from16 v16, v0

    .line 592
    .line 593
    new-instance v0, Ljava/lang/StringBuilder;

    .line 594
    .line 595
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 596
    .line 597
    .line 598
    move-object/from16 v17, v5

    .line 599
    .line 600
    const-string v5, "<updateTask> downloadTaskQueue \u6dfb\u52a0\u65b0\u4efb\u52a1 taskId: "

    .line 601
    .line 602
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 603
    .line 604
    .line 605
    invoke-virtual {v0, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 606
    .line 607
    .line 608
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 609
    .line 610
    .line 611
    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 612
    .line 613
    .line 614
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 615
    .line 616
    .line 617
    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 618
    .line 619
    .line 620
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 621
    .line 622
    .line 623
    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 624
    .line 625
    .line 626
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 627
    .line 628
    .line 629
    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 630
    .line 631
    .line 632
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 633
    .line 634
    .line 635
    move-result-object v0

    .line 636
    invoke-virtual {v11, v6, v0}, Lpl/h;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 637
    .line 638
    .line 639
    invoke-static {v9, v10}, Lkotlin/coroutines/jvm/internal/Boxing;->e(J)Ljava/lang/Long;

    .line 640
    .line 641
    .line 642
    move-result-object v0

    .line 643
    sget-object v5, Lcom/transsion/lib_web/download_render/FileDownloadTaskManager;->g:Ljava/util/LinkedHashMap;

    .line 644
    .line 645
    new-instance v11, Ltl/a;

    .line 646
    .line 647
    invoke-direct {v11, v9, v10, v1}, Ltl/a;-><init>(JLcom/transsion/lib_web/download_render/data/PageData;)V

    .line 648
    .line 649
    .line 650
    invoke-interface {v5, v0, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 651
    .line 652
    .line 653
    move-object/from16 v0, v16

    .line 654
    .line 655
    move-object/from16 v5, v17

    .line 656
    .line 657
    goto :goto_10

    .line 658
    :cond_13
    sget-object v0, Lcom/transsion/lib_web/download_render/FileDownloadTaskManager;->g:Ljava/util/LinkedHashMap;

    .line 659
    .line 660
    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    .line 661
    .line 662
    .line 663
    move-result-object v1

    .line 664
    const-string v2, "<get-values>(...)"

    .line 665
    .line 666
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 667
    .line 668
    .line 669
    check-cast v1, Ljava/lang/Iterable;

    .line 670
    .line 671
    new-instance v2, Lcom/transsion/lib_web/download_render/FileDownloadTaskManager$updateTask$lambda$9$$inlined$sortedByDescending$1;

    .line 672
    .line 673
    invoke-direct {v2}, Lcom/transsion/lib_web/download_render/FileDownloadTaskManager$updateTask$lambda$9$$inlined$sortedByDescending$1;-><init>()V

    .line 674
    .line 675
    .line 676
    invoke-static {v1, v2}, Lkotlin/collections/CollectionsKt;->I0(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    .line 677
    .line 678
    .line 679
    move-result-object v1

    .line 680
    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->clear()V

    .line 681
    .line 682
    .line 683
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 684
    .line 685
    .line 686
    move-result-object v0

    .line 687
    :goto_11
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 688
    .line 689
    .line 690
    move-result v1

    .line 691
    if-eqz v1, :cond_14

    .line 692
    .line 693
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 694
    .line 695
    .line 696
    move-result-object v1

    .line 697
    const-string v2, "next(...)"

    .line 698
    .line 699
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 700
    .line 701
    .line 702
    check-cast v1, Ltl/a;

    .line 703
    .line 704
    sget-object v2, Lcom/transsion/lib_web/download_render/FileDownloadTaskManager;->g:Ljava/util/LinkedHashMap;

    .line 705
    .line 706
    invoke-virtual {v1}, Ltl/a;->b()J

    .line 707
    .line 708
    .line 709
    move-result-wide v5

    .line 710
    invoke-static {v5, v6}, Lkotlin/coroutines/jvm/internal/Boxing;->e(J)Ljava/lang/Long;

    .line 711
    .line 712
    .line 713
    move-result-object v3

    .line 714
    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 715
    .line 716
    .line 717
    goto :goto_11

    .line 718
    :cond_14
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 719
    .line 720
    const/4 v1, 0x0

    .line 721
    invoke-interface {v4, v1}, Lkotlinx/coroutines/sync/a;->unlock(Ljava/lang/Object;)V

    .line 722
    .line 723
    .line 724
    invoke-direct/range {p1 .. p1}, Lcom/transsion/lib_web/download_render/FileDownloadTaskManager;->k()V

    .line 725
    .line 726
    .line 727
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 728
    .line 729
    return-object v0

    .line 730
    :goto_12
    invoke-interface {v4, v1}, Lkotlinx/coroutines/sync/a;->unlock(Ljava/lang/Object;)V

    .line 731
    .line 732
    .line 733
    throw v0
.end method


# virtual methods
.method public final g(Ljava/util/List;)V
    .locals 9

    .line 1
    sget-object v0, Lcom/transsion/lib_web/download_render/FileDownloadTaskManager;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const-string v1, "DR_FileDownloadTaskManager"

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    sget-object p1, Lpl/h;->a:Lpl/h;

    .line 12
    .line 13
    const-string v0, "<executeTask> fail, plz init first"

    .line 14
    .line 15
    invoke-virtual {p1, v1, v0}, Lpl/h;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :cond_0
    if-eqz p1, :cond_2

    .line 20
    .line 21
    move-object v0, p1

    .line 22
    check-cast v0, Ljava/util/Collection;

    .line 23
    .line 24
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    const/4 v2, 0x0

    .line 29
    if-nez v0, :cond_1

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_1
    move-object p1, v2

    .line 33
    :goto_0
    if-eqz p1, :cond_2

    .line 34
    .line 35
    sget-object v3, Lcom/transsion/lib_web/download_render/FileDownloadTaskManager;->e:Lkotlinx/coroutines/n0;

    .line 36
    .line 37
    new-instance v6, Lcom/transsion/lib_web/download_render/FileDownloadTaskManager$executeTask$2$1;

    .line 38
    .line 39
    invoke-direct {v6, p1, v2}, Lcom/transsion/lib_web/download_render/FileDownloadTaskManager$executeTask$2$1;-><init>(Ljava/util/List;Lkotlin/coroutines/Continuation;)V

    .line 40
    .line 41
    .line 42
    const/4 v7, 0x3

    .line 43
    const/4 v8, 0x0

    .line 44
    const/4 v4, 0x0

    .line 45
    const/4 v5, 0x0

    .line 46
    invoke-static/range {v3 .. v8}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    if-nez p1, :cond_3

    .line 51
    .line 52
    :cond_2
    sget-object p1, Lpl/h;->a:Lpl/h;

    .line 53
    .line 54
    const-string v0, "<executeTask> fail: h5Pages is null or empty"

    .line 55
    .line 56
    invoke-virtual {p1, v1, v0}, Lpl/h;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 60
    .line 61
    :cond_3
    return-void
.end method

.method public final h()Lcom/transsion/lib_web/download_render/d;
    .locals 1

    .line 1
    sget-object v0, Lcom/transsion/lib_web/download_render/FileDownloadTaskManager;->j:Lcom/transsion/lib_web/download_render/d;

    .line 2
    .line 3
    return-object v0
.end method

.method public final i()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/transsion/lib_web/download_render/FileDownloadTaskManager;->i:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final j(Landroid/app/Application;ZZZLqi/i;Ljava/lang/String;)V
    .locals 13

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    move-object v10, p1

    .line 4
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    const-string v0, "api"

    .line 8
    .line 9
    move-object/from16 v11, p5

    .line 10
    .line 11
    invoke-static {v11, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    const-string v0, "path"

    .line 15
    .line 16
    move-object/from16 v12, p6

    .line 17
    .line 18
    invoke-static {v12, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    if-eqz p3, :cond_0

    .line 22
    .line 23
    sget-object v1, Lxf/c;->a:Lxf/c$a;

    .line 24
    .line 25
    sget-object v3, Lcom/tn/lib/logger/xlog/LogType;->TYPE_LOGCAT:Lcom/tn/lib/logger/xlog/LogType;

    .line 26
    .line 27
    const/16 v8, 0x18

    .line 28
    .line 29
    const/4 v9, 0x0

    .line 30
    const/4 v5, 0x0

    .line 31
    const-wide/16 v6, 0x0

    .line 32
    .line 33
    move-object v2, p1

    .line 34
    move/from16 v4, p4

    .line 35
    .line 36
    invoke-static/range {v1 .. v9}, Lxf/c$a;->g(Lxf/c$a;Landroid/app/Application;Lcom/tn/lib/logger/xlog/LogType;ZLjava/lang/String;JILjava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    :cond_0
    sget-object v0, Lcom/transsion/lib_web/download_render/FileDownloadTaskManager;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 40
    .line 41
    const/4 v1, 0x0

    .line 42
    const/4 v2, 0x1

    .line 43
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    const-string v1, "DR_FileDownloadTaskManager"

    .line 48
    .line 49
    if-eqz v0, :cond_1

    .line 50
    .line 51
    sget-object v0, Lpl/h;->a:Lpl/h;

    .line 52
    .line 53
    const-string v2, "<init> start"

    .line 54
    .line 55
    invoke-virtual {v0, v1, v2}, Lpl/h;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    sget-object v0, Lcom/transsion/lib_web/download_render/FileDownloadTaskManager;->e:Lkotlinx/coroutines/n0;

    .line 59
    .line 60
    new-instance v7, Lcom/transsion/lib_web/download_render/FileDownloadTaskManager$init$1;

    .line 61
    .line 62
    const/4 v6, 0x0

    .line 63
    move-object v1, v7

    .line 64
    move-object/from16 v2, p6

    .line 65
    .line 66
    move-object v3, p1

    .line 67
    move v4, p2

    .line 68
    move-object/from16 v5, p5

    .line 69
    .line 70
    invoke-direct/range {v1 .. v6}, Lcom/transsion/lib_web/download_render/FileDownloadTaskManager$init$1;-><init>(Ljava/lang/String;Landroid/app/Application;ZLqi/i;Lkotlin/coroutines/Continuation;)V

    .line 71
    .line 72
    .line 73
    const/4 v1, 0x3

    .line 74
    const/4 v2, 0x0

    .line 75
    const/4 v3, 0x0

    .line 76
    const/4 v4, 0x0

    .line 77
    move-object p1, v0

    .line 78
    move-object p2, v3

    .line 79
    move-object/from16 p3, v4

    .line 80
    .line 81
    move-object/from16 p4, v7

    .line 82
    .line 83
    move/from16 p5, v1

    .line 84
    .line 85
    move-object/from16 p6, v2

    .line 86
    .line 87
    invoke-static/range {p1 .. p6}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 88
    .line 89
    .line 90
    goto :goto_0

    .line 91
    :cond_1
    sget-object v0, Lpl/h;->a:Lpl/h;

    .line 92
    .line 93
    const-string v2, "<init> already done"

    .line 94
    .line 95
    invoke-virtual {v0, v1, v2}, Lpl/h;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    :goto_0
    return-void
.end method

.method public final l()V
    .locals 1

    .line 1
    new-instance v0, Lcom/transsion/lib_web/download_render/init/b;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/transsion/lib_web/download_render/init/b;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/transsion/lib_web/download_render/init/b;->invoke()V

    .line 7
    .line 8
    .line 9
    return-void
.end method
