.class public final Lui/r0;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lui/n0;


# instance fields
.field private final a:Landroidx/room/RoomDatabase;

.field private final b:Landroidx/room/g;


# direct methods
.method public constructor <init>(Landroidx/room/RoomDatabase;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lui/r0;->a:Landroidx/room/RoomDatabase;

    .line 5
    .line 6
    new-instance p1, Lui/r0$a;

    .line 7
    .line 8
    invoke-direct {p1, p0}, Lui/r0$a;-><init>(Lui/r0;)V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Lui/r0;->b:Landroidx/room/g;

    .line 12
    .line 13
    return-void
.end method

.method public static synthetic d(Ljava/lang/String;Ly3/b;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lui/r0;->h(Ljava/lang/String;Ly3/b;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic e(Lui/r0;Lcom/transsion/baselib/db/download/DownloadRange;Ly3/b;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lui/r0;->j(Lcom/transsion/baselib/db/download/DownloadRange;Ly3/b;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic f(Ljava/lang/String;Ly3/b;)Ljava/util/List;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lui/r0;->i(Ljava/lang/String;Ly3/b;)Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static g()Ljava/util/List;
    .locals 1

    .line 1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method private static synthetic h(Ljava/lang/String;Ly3/b;)Lkotlin/Unit;
    .locals 1

    .line 1
    const-string v0, "DELETE FROM DOWNLOAD_THREAD_RANGE WHERE resourceId=?"

    .line 2
    .line 3
    invoke-interface {p1, v0}, Ly3/b;->F0(Ljava/lang/String;)Ly3/e;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    const/4 v0, 0x1

    .line 8
    if-nez p0, :cond_0

    .line 9
    .line 10
    :try_start_0
    invoke-interface {p1, v0}, Ly3/e;->g(I)V

    .line 11
    .line 12
    .line 13
    goto :goto_0

    .line 14
    :catchall_0
    move-exception p0

    .line 15
    goto :goto_1

    .line 16
    :cond_0
    invoke-interface {p1, v0, p0}, Ly3/e;->i(ILjava/lang/String;)V

    .line 17
    .line 18
    .line 19
    :goto_0
    invoke-interface {p1}, Ly3/e;->C0()Z

    .line 20
    .line 21
    .line 22
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    .line 24
    invoke-interface {p1}, Ly3/e;->close()V

    .line 25
    .line 26
    .line 27
    return-object p0

    .line 28
    :goto_1
    invoke-interface {p1}, Ly3/e;->close()V

    .line 29
    .line 30
    .line 31
    throw p0
.end method

.method private static synthetic i(Ljava/lang/String;Ly3/b;)Ljava/util/List;
    .locals 9

    .line 1
    const-string v0, "SELECT * FROM DOWNLOAD_THREAD_RANGE WHERE resourceId = ?"

    .line 2
    .line 3
    invoke-interface {p1, v0}, Ly3/b;->F0(Ljava/lang/String;)Ly3/e;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    const/4 v0, 0x1

    .line 8
    if-nez p0, :cond_0

    .line 9
    .line 10
    :try_start_0
    invoke-interface {p1, v0}, Ly3/e;->g(I)V

    .line 11
    .line 12
    .line 13
    goto :goto_0

    .line 14
    :catchall_0
    move-exception p0

    .line 15
    goto :goto_3

    .line 16
    :cond_0
    invoke-interface {p1, v0, p0}, Ly3/e;->i(ILjava/lang/String;)V

    .line 17
    .line 18
    .line 19
    :goto_0
    const-string p0, "threadId"

    .line 20
    .line 21
    invoke-static {p1, p0}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 22
    .line 23
    .line 24
    move-result p0

    .line 25
    const-string v0, "rangeId"

    .line 26
    .line 27
    invoke-static {p1, v0}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    const-string v1, "resourceId"

    .line 32
    .line 33
    invoke-static {p1, v1}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    const-string v2, "start"

    .line 38
    .line 39
    invoke-static {p1, v2}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 40
    .line 41
    .line 42
    move-result v2

    .line 43
    const-string v3, "end"

    .line 44
    .line 45
    invoke-static {p1, v3}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 46
    .line 47
    .line 48
    move-result v3

    .line 49
    const-string v4, "progress"

    .line 50
    .line 51
    invoke-static {p1, v4}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 52
    .line 53
    .line 54
    move-result v4

    .line 55
    new-instance v5, Ljava/util/ArrayList;

    .line 56
    .line 57
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 58
    .line 59
    .line 60
    :goto_1
    invoke-interface {p1}, Ly3/e;->C0()Z

    .line 61
    .line 62
    .line 63
    move-result v6

    .line 64
    if-eqz v6, :cond_2

    .line 65
    .line 66
    new-instance v6, Lcom/transsion/baselib/db/download/DownloadRange;

    .line 67
    .line 68
    invoke-direct {v6}, Lcom/transsion/baselib/db/download/DownloadRange;-><init>()V

    .line 69
    .line 70
    .line 71
    invoke-interface {p1, p0}, Ly3/e;->getLong(I)J

    .line 72
    .line 73
    .line 74
    move-result-wide v7

    .line 75
    long-to-int v7, v7

    .line 76
    invoke-virtual {v6, v7}, Lcom/transsion/baselib/db/download/DownloadRange;->setThreadId(I)V

    .line 77
    .line 78
    .line 79
    invoke-interface {p1, v0}, Ly3/e;->getLong(I)J

    .line 80
    .line 81
    .line 82
    move-result-wide v7

    .line 83
    long-to-int v7, v7

    .line 84
    invoke-virtual {v6, v7}, Lcom/transsion/baselib/db/download/DownloadRange;->setRangeId(I)V

    .line 85
    .line 86
    .line 87
    invoke-interface {p1, v1}, Ly3/e;->isNull(I)Z

    .line 88
    .line 89
    .line 90
    move-result v7

    .line 91
    if-eqz v7, :cond_1

    .line 92
    .line 93
    const/4 v7, 0x0

    .line 94
    goto :goto_2

    .line 95
    :cond_1
    invoke-interface {p1, v1}, Ly3/e;->q0(I)Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v7

    .line 99
    :goto_2
    invoke-virtual {v6, v7}, Lcom/transsion/baselib/db/download/DownloadRange;->setResourceId(Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    invoke-interface {p1, v2}, Ly3/e;->getLong(I)J

    .line 103
    .line 104
    .line 105
    move-result-wide v7

    .line 106
    invoke-virtual {v6, v7, v8}, Lcom/transsion/baselib/db/download/DownloadRange;->setStart(J)V

    .line 107
    .line 108
    .line 109
    invoke-interface {p1, v3}, Ly3/e;->getLong(I)J

    .line 110
    .line 111
    .line 112
    move-result-wide v7

    .line 113
    invoke-virtual {v6, v7, v8}, Lcom/transsion/baselib/db/download/DownloadRange;->setEnd(J)V

    .line 114
    .line 115
    .line 116
    invoke-interface {p1, v4}, Ly3/e;->getLong(I)J

    .line 117
    .line 118
    .line 119
    move-result-wide v7

    .line 120
    invoke-virtual {v6, v7, v8}, Lcom/transsion/baselib/db/download/DownloadRange;->setProgress(J)V

    .line 121
    .line 122
    .line 123
    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 124
    .line 125
    .line 126
    goto :goto_1

    .line 127
    :cond_2
    invoke-interface {p1}, Ly3/e;->close()V

    .line 128
    .line 129
    .line 130
    return-object v5

    .line 131
    :goto_3
    invoke-interface {p1}, Ly3/e;->close()V

    .line 132
    .line 133
    .line 134
    throw p0
.end method

.method private synthetic j(Lcom/transsion/baselib/db/download/DownloadRange;Ly3/b;)Lkotlin/Unit;
    .locals 1

    .line 1
    iget-object v0, p0, Lui/r0;->b:Landroidx/room/g;

    .line 2
    .line 3
    invoke-virtual {v0, p2, p1}, Landroidx/room/g;->d(Ly3/b;Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 7
    .line 8
    return-object p1
.end method


# virtual methods
.method public a(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Lui/r0;->a:Landroidx/room/RoomDatabase;

    .line 2
    .line 3
    new-instance v1, Lui/o0;

    .line 4
    .line 5
    invoke-direct {v1, p1}, Lui/o0;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const/4 p1, 0x1

    .line 9
    const/4 v2, 0x0

    .line 10
    invoke-static {v0, p1, v2, v1, p2}, Landroidx/room/util/b;->f(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    return-object p1
.end method

.method public b(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Lui/r0;->a:Landroidx/room/RoomDatabase;

    .line 2
    .line 3
    new-instance v1, Lui/q0;

    .line 4
    .line 5
    invoke-direct {v1, p1}, Lui/q0;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const/4 p1, 0x0

    .line 9
    const/4 v2, 0x1

    .line 10
    invoke-static {v0, p1, v2, v1, p2}, Landroidx/room/util/b;->f(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    return-object p1
.end method

.method public c(Lcom/transsion/baselib/db/download/DownloadRange;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lui/r0;->a:Landroidx/room/RoomDatabase;

    .line 5
    .line 6
    new-instance v1, Lui/p0;

    .line 7
    .line 8
    invoke-direct {v1, p0, p1}, Lui/p0;-><init>(Lui/r0;Lcom/transsion/baselib/db/download/DownloadRange;)V

    .line 9
    .line 10
    .line 11
    const/4 p1, 0x0

    .line 12
    const/4 v2, 0x1

    .line 13
    invoke-static {v0, p1, v2, v1, p2}, Landroidx/room/util/b;->f(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    return-object p1
.end method
