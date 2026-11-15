.class public Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/EjP;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/EjP$sP;,
        Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/EjP$c;
    }
.end annotation


# static fields
.field private static volatile k:Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/EjP;


# instance fields
.field private volatile a:I

.field private final b:Landroid/util/SparseArray;

.field private final c:Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/EjP$sP;

.field private final d:Ljava/util/concurrent/ExecutorService;

.field private volatile e:Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/sP$e;

.field private volatile f:Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Sj/TKC;

.field private final g:Ljava/util/HashSet;

.field private final h:Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/sP$b;

.field private volatile i:Ljava/lang/String;

.field private volatile j:Z


# direct methods
.method private constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const v0, 0x28000

    .line 5
    .line 6
    .line 7
    iput v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/EjP;->a:I

    .line 8
    .line 9
    new-instance v0, Landroid/util/SparseArray;

    .line 10
    .line 11
    const/4 v1, 0x2

    .line 12
    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    .line 13
    .line 14
    .line 15
    iput-object v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/EjP;->b:Landroid/util/SparseArray;

    .line 16
    .line 17
    new-instance v1, Ljava/util/HashSet;

    .line 18
    .line 19
    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 20
    .line 21
    .line 22
    iput-object v1, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/EjP;->g:Ljava/util/HashSet;

    .line 23
    .line 24
    new-instance v1, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/EjP$a;

    .line 25
    .line 26
    invoke-direct {v1, p0}, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/EjP$a;-><init>(Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/EjP;)V

    .line 27
    .line 28
    .line 29
    iput-object v1, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/EjP;->h:Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/sP$b;

    .line 30
    .line 31
    new-instance v1, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/EjP$sP;

    .line 32
    .line 33
    const/4 v2, 0x0

    .line 34
    invoke-direct {v1, v2}, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/EjP$sP;-><init>(Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/EjP$a;)V

    .line 35
    .line 36
    .line 37
    iput-object v1, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/EjP;->c:Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/EjP$sP;

    .line 38
    .line 39
    invoke-static {v1}, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/EjP;->d(Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/EjP$sP;)Ljava/util/concurrent/ExecutorService;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    iput-object v2, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/EjP;->d:Ljava/util/concurrent/ExecutorService;

    .line 44
    .line 45
    check-cast v2, Ljava/util/concurrent/ThreadPoolExecutor;

    .line 46
    .line 47
    invoke-virtual {v1, v2}, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/EjP$sP;->Sj(Ljava/util/concurrent/ThreadPoolExecutor;)V

    .line 48
    .line 49
    .line 50
    new-instance v1, Ljava/util/HashMap;

    .line 51
    .line 52
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 53
    .line 54
    .line 55
    const/4 v2, 0x0

    .line 56
    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 57
    .line 58
    .line 59
    new-instance v1, Ljava/util/HashMap;

    .line 60
    .line 61
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 62
    .line 63
    .line 64
    const/4 v2, 0x1

    .line 65
    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 66
    .line 67
    .line 68
    return-void
.end method

.method static synthetic b(Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/EjP;)Landroid/util/SparseArray;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/EjP;->b:Landroid/util/SparseArray;

    .line 2
    .line 3
    return-object p0
.end method

.method private static d(Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/EjP$sP;)Ljava/util/concurrent/ExecutorService;
    .locals 11

    .line 1
    invoke-static {}, Lh6/a;->a()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-gtz v0, :cond_1

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    :cond_0
    move v4, v0

    .line 9
    goto :goto_0

    .line 10
    :cond_1
    const/4 v1, 0x4

    .line 11
    if-le v0, v1, :cond_0

    .line 12
    .line 13
    move v4, v1

    .line 14
    :goto_0
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    .line 15
    .line 16
    sget-object v7, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 17
    .line 18
    new-instance v9, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/EjP$4;

    .line 19
    .line 20
    invoke-direct {v9}, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/EjP$4;-><init>()V

    .line 21
    .line 22
    .line 23
    new-instance v10, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/EjP$b;

    .line 24
    .line 25
    invoke-direct {v10, p0}, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/EjP$b;-><init>(Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/EjP$sP;)V

    .line 26
    .line 27
    .line 28
    const/4 v3, 0x0

    .line 29
    const-wide/16 v5, 0x3c

    .line 30
    .line 31
    move-object v2, v0

    .line 32
    move-object v8, p0

    .line 33
    invoke-direct/range {v2 .. v10}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;)V

    .line 34
    .line 35
    .line 36
    return-object v0
.end method

.method public static j()Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/EjP;
    .locals 2

    .line 1
    sget-object v0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/EjP;->k:Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/EjP;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    const-class v0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/EjP;

    .line 6
    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    sget-object v1, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/EjP;->k:Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/EjP;

    .line 9
    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    new-instance v1, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/EjP;

    .line 13
    .line 14
    invoke-direct {v1}, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/EjP;-><init>()V

    .line 15
    .line 16
    .line 17
    sput-object v1, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/EjP;->k:Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/EjP;

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :catchall_0
    move-exception v1

    .line 21
    goto :goto_1

    .line 22
    :cond_0
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    goto :goto_2

    .line 24
    :goto_1
    monitor-exit v0

    .line 25
    throw v1

    .line 26
    :cond_1
    :goto_2
    sget-object v0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/EjP;->k:Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/EjP;

    .line 27
    .line 28
    return-object v0
.end method

.method static synthetic k(Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/EjP;)Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/EjP$sP;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/EjP;->c:Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/EjP$sP;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    new-instance v0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/EjP$3;

    .line 2
    .line 3
    const-string v1, "cancelAll"

    .line 4
    .line 5
    invoke-direct {v0, p0, v1}, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/EjP$3;-><init>(Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/EjP;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-static {v0}, Lh6/a;->l(Lcom/bytedance/sdk/component/Dq/Dq;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method c()Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/c;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return-object v0
.end method

.method public e(Ljava/lang/String;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0, v0, p1}, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/EjP;->i(ZZLjava/lang/String;)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method f(ZLjava/lang/String;)V
    .locals 7

    .line 1
    iput-object p2, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/EjP;->i:Ljava/lang/String;

    .line 2
    .line 3
    iput-boolean p1, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/EjP;->j:Z

    .line 4
    .line 5
    sget-boolean v0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/a;->b:Z

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const-string v0, "setCurrentPlayKey, "

    .line 10
    .line 11
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    :cond_0
    const/4 v0, 0x0

    .line 19
    if-nez p2, :cond_4

    .line 20
    .line 21
    iget-object p1, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/EjP;->g:Ljava/util/HashSet;

    .line 22
    .line 23
    monitor-enter p1

    .line 24
    :try_start_0
    iget-object p2, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/EjP;->g:Ljava/util/HashSet;

    .line 25
    .line 26
    invoke-virtual {p2}, Ljava/util/HashSet;->isEmpty()Z

    .line 27
    .line 28
    .line 29
    move-result p2

    .line 30
    if-nez p2, :cond_1

    .line 31
    .line 32
    new-instance v0, Ljava/util/HashSet;

    .line 33
    .line 34
    iget-object p2, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/EjP;->g:Ljava/util/HashSet;

    .line 35
    .line 36
    invoke-direct {v0, p2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 37
    .line 38
    .line 39
    iget-object p2, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/EjP;->g:Ljava/util/HashSet;

    .line 40
    .line 41
    invoke-virtual {p2}, Ljava/util/HashSet;->clear()V

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :catchall_0
    move-exception p2

    .line 46
    goto :goto_2

    .line 47
    :cond_1
    :goto_0
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    if-eqz v0, :cond_3

    .line 49
    .line 50
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    :cond_2
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 55
    .line 56
    .line 57
    move-result p2

    .line 58
    if-eqz p2, :cond_3

    .line 59
    .line 60
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object p2

    .line 64
    check-cast p2, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/EjP$c;

    .line 65
    .line 66
    iget-boolean v1, p2, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/EjP$c;->a:Z

    .line 67
    .line 68
    iget-boolean v2, p2, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/EjP$c;->b:Z

    .line 69
    .line 70
    iget v3, p2, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/EjP$c;->c:I

    .line 71
    .line 72
    iget-object v4, p2, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/EjP$c;->d:Ljava/lang/String;

    .line 73
    .line 74
    iget-object v5, p2, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/EjP$c;->e:Ljava/util/Map;

    .line 75
    .line 76
    iget-object v6, p2, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/EjP$c;->f:[Ljava/lang/String;

    .line 77
    .line 78
    move-object v0, p0

    .line 79
    invoke-virtual/range {v0 .. v6}, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/EjP;->g(ZZILjava/lang/String;Ljava/util/Map;[Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    sget-boolean v0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/a;->b:Z

    .line 83
    .line 84
    if-eqz v0, :cond_2

    .line 85
    .line 86
    new-instance v0, Ljava/lang/StringBuilder;

    .line 87
    .line 88
    const-string v1, "setCurrentPlayKey, resume preload: "

    .line 89
    .line 90
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    iget-object p2, p2, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/EjP$c;->d:Ljava/lang/String;

    .line 94
    .line 95
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    goto :goto_1

    .line 99
    :cond_3
    return-void

    .line 100
    :goto_2
    monitor-exit p1

    .line 101
    throw p2

    .line 102
    :cond_4
    sget v1, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/a;->g:I

    .line 103
    .line 104
    const/4 v2, 0x3

    .line 105
    if-eq v1, v2, :cond_8

    .line 106
    .line 107
    const/4 v3, 0x2

    .line 108
    if-ne v1, v3, :cond_5

    .line 109
    .line 110
    goto :goto_6

    .line 111
    :cond_5
    const/4 v2, 0x1

    .line 112
    if-ne v1, v2, :cond_7

    .line 113
    .line 114
    iget-object v1, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/EjP;->b:Landroid/util/SparseArray;

    .line 115
    .line 116
    monitor-enter v1

    .line 117
    :try_start_1
    iget-object v2, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/EjP;->b:Landroid/util/SparseArray;

    .line 118
    .line 119
    invoke-static {p1}, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/sP$f;->a(Z)I

    .line 120
    .line 121
    .line 122
    move-result p1

    .line 123
    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 124
    .line 125
    .line 126
    move-result-object p1

    .line 127
    check-cast p1, Ljava/util/Map;

    .line 128
    .line 129
    if-eqz p1, :cond_6

    .line 130
    .line 131
    invoke-interface {p1, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    .line 133
    .line 134
    move-result-object p1

    .line 135
    move-object v0, p1

    .line 136
    check-cast v0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/sP;

    .line 137
    .line 138
    goto :goto_3

    .line 139
    :catchall_1
    move-exception p1

    .line 140
    goto :goto_4

    .line 141
    :cond_6
    :goto_3
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 142
    if-eqz v0, :cond_7

    .line 143
    .line 144
    invoke-virtual {v0}, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Sj;->Sj()V

    .line 145
    .line 146
    .line 147
    goto :goto_5

    .line 148
    :goto_4
    monitor-exit v1

    .line 149
    throw p1

    .line 150
    :cond_7
    :goto_5
    return-void

    .line 151
    :cond_8
    :goto_6
    iget-object p1, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/EjP;->b:Landroid/util/SparseArray;

    .line 152
    .line 153
    monitor-enter p1

    .line 154
    :try_start_2
    iget-object p2, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/EjP;->b:Landroid/util/SparseArray;

    .line 155
    .line 156
    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    .line 157
    .line 158
    .line 159
    move-result p2

    .line 160
    const/4 v3, 0x0

    .line 161
    :goto_7
    if-ge v3, p2, :cond_c

    .line 162
    .line 163
    iget-object v4, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/EjP;->b:Landroid/util/SparseArray;

    .line 164
    .line 165
    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->keyAt(I)I

    .line 166
    .line 167
    .line 168
    move-result v5

    .line 169
    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 170
    .line 171
    .line 172
    move-result-object v4

    .line 173
    check-cast v4, Ljava/util/Map;

    .line 174
    .line 175
    if-eqz v4, :cond_b

    .line 176
    .line 177
    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 178
    .line 179
    .line 180
    move-result-object v5

    .line 181
    if-eqz v5, :cond_a

    .line 182
    .line 183
    invoke-interface {v5}, Ljava/util/Collection;->isEmpty()Z

    .line 184
    .line 185
    .line 186
    move-result v6

    .line 187
    if-nez v6, :cond_a

    .line 188
    .line 189
    if-nez v0, :cond_9

    .line 190
    .line 191
    new-instance v0, Ljava/util/HashSet;

    .line 192
    .line 193
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 194
    .line 195
    .line 196
    goto :goto_8

    .line 197
    :catchall_2
    move-exception p2

    .line 198
    goto :goto_c

    .line 199
    :cond_9
    :goto_8
    invoke-virtual {v0, v5}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    .line 200
    .line 201
    .line 202
    :cond_a
    invoke-interface {v4}, Ljava/util/Map;->clear()V

    .line 203
    .line 204
    .line 205
    :cond_b
    add-int/lit8 v3, v3, 0x1

    .line 206
    .line 207
    goto :goto_7

    .line 208
    :cond_c
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 209
    if-eqz v0, :cond_11

    .line 210
    .line 211
    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    .line 212
    .line 213
    .line 214
    move-result p1

    .line 215
    if-nez p1, :cond_11

    .line 216
    .line 217
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 218
    .line 219
    .line 220
    move-result-object p1

    .line 221
    :cond_d
    :goto_9
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 222
    .line 223
    .line 224
    move-result p2

    .line 225
    if-eqz p2, :cond_e

    .line 226
    .line 227
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 228
    .line 229
    .line 230
    move-result-object p2

    .line 231
    check-cast p2, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/sP;

    .line 232
    .line 233
    invoke-virtual {p2}, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Sj;->Sj()V

    .line 234
    .line 235
    .line 236
    sget-boolean v3, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/a;->b:Z

    .line 237
    .line 238
    if-eqz v3, :cond_d

    .line 239
    .line 240
    new-instance v3, Ljava/lang/StringBuilder;

    .line 241
    .line 242
    const-string v4, "setCurrentPlayKey, cancel preload: "

    .line 243
    .line 244
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 245
    .line 246
    .line 247
    iget-object p2, p2, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Sj;->Jcg:Ljava/lang/String;

    .line 248
    .line 249
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 250
    .line 251
    .line 252
    goto :goto_9

    .line 253
    :cond_e
    if-ne v1, v2, :cond_11

    .line 254
    .line 255
    iget-object p1, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/EjP;->g:Ljava/util/HashSet;

    .line 256
    .line 257
    monitor-enter p1

    .line 258
    :try_start_3
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 259
    .line 260
    .line 261
    move-result-object p2

    .line 262
    :cond_f
    :goto_a
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 263
    .line 264
    .line 265
    move-result v0

    .line 266
    if-eqz v0, :cond_10

    .line 267
    .line 268
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 269
    .line 270
    .line 271
    move-result-object v0

    .line 272
    check-cast v0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/sP;

    .line 273
    .line 274
    iget-object v0, v0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/sP;->sef:Ljava/lang/Object;

    .line 275
    .line 276
    check-cast v0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/EjP$c;

    .line 277
    .line 278
    if-eqz v0, :cond_f

    .line 279
    .line 280
    iget-object v1, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/EjP;->g:Ljava/util/HashSet;

    .line 281
    .line 282
    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 283
    .line 284
    .line 285
    goto :goto_a

    .line 286
    :catchall_3
    move-exception p2

    .line 287
    goto :goto_b

    .line 288
    :cond_10
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 289
    return-void

    .line 290
    :goto_b
    monitor-exit p1

    .line 291
    throw p2

    .line 292
    :cond_11
    return-void

    .line 293
    :goto_c
    monitor-exit p1

    .line 294
    throw p2
.end method

.method public varargs g(ZZILjava/lang/String;Ljava/util/Map;[Ljava/lang/String;)V
    .locals 0

    .line 1
    sget-boolean p1, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/a;->b:Z

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    const-string p1, "TAG_PROXY_Preloader"

    .line 6
    .line 7
    const-string p2, "cache or videoProxyDB null in Preloader!!!"

    .line 8
    .line 9
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method public varargs h(ZZILjava/lang/String;[Ljava/lang/String;)V
    .locals 7

    .line 1
    const/4 v5, 0x0

    .line 2
    move-object v0, p0

    .line 3
    move v1, p1

    .line 4
    move v2, p2

    .line 5
    move v3, p3

    .line 6
    move-object v4, p4

    .line 7
    move-object v6, p5

    .line 8
    invoke-virtual/range {v0 .. v6}, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/EjP;->g(ZZILjava/lang/String;Ljava/util/Map;[Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public i(ZZLjava/lang/String;)V
    .locals 7

    .line 1
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    new-instance v0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/EjP$2;

    .line 9
    .line 10
    const-string v3, "cancel b b S"

    .line 11
    .line 12
    move-object v1, v0

    .line 13
    move-object v2, p0

    .line 14
    move v4, p1

    .line 15
    move v5, p2

    .line 16
    move-object v6, p3

    .line 17
    invoke-direct/range {v1 .. v6}, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/EjP$2;-><init>(Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/EjP;Ljava/lang/String;ZZLjava/lang/String;)V

    .line 18
    .line 19
    .line 20
    invoke-static {v0}, Lh6/a;->l(Lcom/bytedance/sdk/component/Dq/Dq;)V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method l()Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/c;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return-object v0
.end method
