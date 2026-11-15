.class public Lcom/transsion/transfer/androidasync/ByteBufferList;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/transfer/androidasync/ByteBufferList$Reclaimer;
    }
.end annotation


# static fields
.field static d:Ljava/util/PriorityQueue;

.field private static e:I

.field public static f:I

.field static g:I

.field static h:I

.field private static final i:Ljava/lang/Object;

.field public static final j:Ljava/nio/ByteBuffer;


# instance fields
.field a:Lcom/transsion/transfer/androidasync/util/ArrayDeque;

.field b:Ljava/nio/ByteOrder;

.field private c:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Ljava/util/PriorityQueue;

    .line 2
    .line 3
    new-instance v1, Lcom/transsion/transfer/androidasync/ByteBufferList$Reclaimer;

    .line 4
    .line 5
    invoke-direct {v1}, Lcom/transsion/transfer/androidasync/ByteBufferList$Reclaimer;-><init>()V

    .line 6
    .line 7
    .line 8
    const/16 v2, 0x8

    .line 9
    .line 10
    invoke-direct {v0, v2, v1}, Ljava/util/PriorityQueue;-><init>(ILjava/util/Comparator;)V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lcom/transsion/transfer/androidasync/ByteBufferList;->d:Ljava/util/PriorityQueue;

    .line 14
    .line 15
    const/high16 v0, 0x100000

    .line 16
    .line 17
    sput v0, Lcom/transsion/transfer/androidasync/ByteBufferList;->e:I

    .line 18
    .line 19
    const/high16 v0, 0x40000

    .line 20
    .line 21
    sput v0, Lcom/transsion/transfer/androidasync/ByteBufferList;->f:I

    .line 22
    .line 23
    const/4 v0, 0x0

    .line 24
    sput v0, Lcom/transsion/transfer/androidasync/ByteBufferList;->g:I

    .line 25
    .line 26
    sput v0, Lcom/transsion/transfer/androidasync/ByteBufferList;->h:I

    .line 27
    .line 28
    new-instance v1, Ljava/lang/Object;

    .line 29
    .line 30
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 31
    .line 32
    .line 33
    sput-object v1, Lcom/transsion/transfer/androidasync/ByteBufferList;->i:Ljava/lang/Object;

    .line 34
    .line 35
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    sput-object v0, Lcom/transsion/transfer/androidasync/ByteBufferList;->j:Ljava/nio/ByteBuffer;

    .line 40
    .line 41
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/transsion/transfer/androidasync/util/ArrayDeque;

    invoke-direct {v0}, Lcom/transsion/transfer/androidasync/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/transsion/transfer/androidasync/ByteBufferList;->a:Lcom/transsion/transfer/androidasync/util/ArrayDeque;

    .line 3
    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    iput-object v0, p0, Lcom/transsion/transfer/androidasync/ByteBufferList;->b:Ljava/nio/ByteOrder;

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Lcom/transsion/transfer/androidasync/ByteBufferList;->c:I

    return-void
.end method

.method public constructor <init>([B)V
    .locals 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    new-instance v0, Lcom/transsion/transfer/androidasync/util/ArrayDeque;

    invoke-direct {v0}, Lcom/transsion/transfer/androidasync/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/transsion/transfer/androidasync/ByteBufferList;->a:Lcom/transsion/transfer/androidasync/util/ArrayDeque;

    .line 12
    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    iput-object v0, p0, Lcom/transsion/transfer/androidasync/ByteBufferList;->b:Ljava/nio/ByteOrder;

    const/4 v0, 0x0

    .line 13
    iput v0, p0, Lcom/transsion/transfer/androidasync/ByteBufferList;->c:I

    .line 14
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 15
    invoke-virtual {p0, p1}, Lcom/transsion/transfer/androidasync/ByteBufferList;->a(Ljava/nio/ByteBuffer;)Lcom/transsion/transfer/androidasync/ByteBufferList;

    return-void
.end method

.method public varargs constructor <init>([Ljava/nio/ByteBuffer;)V
    .locals 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    new-instance v0, Lcom/transsion/transfer/androidasync/util/ArrayDeque;

    invoke-direct {v0}, Lcom/transsion/transfer/androidasync/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/transsion/transfer/androidasync/ByteBufferList;->a:Lcom/transsion/transfer/androidasync/util/ArrayDeque;

    .line 7
    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    iput-object v0, p0, Lcom/transsion/transfer/androidasync/ByteBufferList;->b:Ljava/nio/ByteOrder;

    const/4 v0, 0x0

    .line 8
    iput v0, p0, Lcom/transsion/transfer/androidasync/ByteBufferList;->c:I

    .line 9
    invoke-virtual {p0, p1}, Lcom/transsion/transfer/androidasync/ByteBufferList;->b([Ljava/nio/ByteBuffer;)Lcom/transsion/transfer/androidasync/ByteBufferList;

    return-void
.end method

.method public static A(Ljava/nio/ByteBuffer;)V
    .locals 4

    .line 1
    if-eqz p0, :cond_7

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->isDirect()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    goto/16 :goto_2

    .line 10
    .line 11
    :cond_0
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->arrayOffset()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_7

    .line 16
    .line 17
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    array-length v0, v0

    .line 22
    invoke-virtual {p0}, Ljava/nio/Buffer;->capacity()I

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    if-eq v0, v1, :cond_1

    .line 27
    .line 28
    goto/16 :goto_2

    .line 29
    .line 30
    :cond_1
    invoke-virtual {p0}, Ljava/nio/Buffer;->capacity()I

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    const/16 v1, 0x2000

    .line 35
    .line 36
    if-ge v0, v1, :cond_2

    .line 37
    .line 38
    return-void

    .line 39
    :cond_2
    invoke-virtual {p0}, Ljava/nio/Buffer;->capacity()I

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    sget v1, Lcom/transsion/transfer/androidasync/ByteBufferList;->f:I

    .line 44
    .line 45
    if-le v0, v1, :cond_3

    .line 46
    .line 47
    return-void

    .line 48
    :cond_3
    invoke-static {}, Lcom/transsion/transfer/androidasync/ByteBufferList;->p()Ljava/util/PriorityQueue;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    if-nez v0, :cond_4

    .line 53
    .line 54
    return-void

    .line 55
    :cond_4
    sget-object v1, Lcom/transsion/transfer/androidasync/ByteBufferList;->i:Ljava/lang/Object;

    .line 56
    .line 57
    monitor-enter v1

    .line 58
    :goto_0
    :try_start_0
    sget v2, Lcom/transsion/transfer/androidasync/ByteBufferList;->g:I

    .line 59
    .line 60
    sget v3, Lcom/transsion/transfer/androidasync/ByteBufferList;->e:I

    .line 61
    .line 62
    if-le v2, v3, :cond_5

    .line 63
    .line 64
    invoke-virtual {v0}, Ljava/util/PriorityQueue;->size()I

    .line 65
    .line 66
    .line 67
    move-result v2

    .line 68
    if-lez v2, :cond_5

    .line 69
    .line 70
    invoke-virtual {v0}, Ljava/util/PriorityQueue;->peek()Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object v2

    .line 74
    check-cast v2, Ljava/nio/ByteBuffer;

    .line 75
    .line 76
    invoke-virtual {v2}, Ljava/nio/Buffer;->capacity()I

    .line 77
    .line 78
    .line 79
    move-result v2

    .line 80
    invoke-virtual {p0}, Ljava/nio/Buffer;->capacity()I

    .line 81
    .line 82
    .line 83
    move-result v3

    .line 84
    if-ge v2, v3, :cond_5

    .line 85
    .line 86
    invoke-virtual {v0}, Ljava/util/AbstractQueue;->remove()Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    move-result-object v2

    .line 90
    check-cast v2, Ljava/nio/ByteBuffer;

    .line 91
    .line 92
    sget v3, Lcom/transsion/transfer/androidasync/ByteBufferList;->g:I

    .line 93
    .line 94
    invoke-virtual {v2}, Ljava/nio/Buffer;->capacity()I

    .line 95
    .line 96
    .line 97
    move-result v2

    .line 98
    sub-int/2addr v3, v2

    .line 99
    sput v3, Lcom/transsion/transfer/androidasync/ByteBufferList;->g:I

    .line 100
    .line 101
    goto :goto_0

    .line 102
    :catchall_0
    move-exception p0

    .line 103
    goto :goto_1

    .line 104
    :cond_5
    sget v2, Lcom/transsion/transfer/androidasync/ByteBufferList;->g:I

    .line 105
    .line 106
    sget v3, Lcom/transsion/transfer/androidasync/ByteBufferList;->e:I

    .line 107
    .line 108
    if-le v2, v3, :cond_6

    .line 109
    .line 110
    monitor-exit v1

    .line 111
    return-void

    .line 112
    :cond_6
    const/4 v2, 0x0

    .line 113
    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 114
    .line 115
    .line 116
    invoke-virtual {p0}, Ljava/nio/Buffer;->capacity()I

    .line 117
    .line 118
    .line 119
    move-result v2

    .line 120
    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 121
    .line 122
    .line 123
    sget v2, Lcom/transsion/transfer/androidasync/ByteBufferList;->g:I

    .line 124
    .line 125
    invoke-virtual {p0}, Ljava/nio/Buffer;->capacity()I

    .line 126
    .line 127
    .line 128
    move-result v3

    .line 129
    add-int/2addr v2, v3

    .line 130
    sput v2, Lcom/transsion/transfer/androidasync/ByteBufferList;->g:I

    .line 131
    .line 132
    invoke-virtual {v0, p0}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    .line 133
    .line 134
    .line 135
    sget v0, Lcom/transsion/transfer/androidasync/ByteBufferList;->h:I

    .line 136
    .line 137
    invoke-virtual {p0}, Ljava/nio/Buffer;->capacity()I

    .line 138
    .line 139
    .line 140
    move-result p0

    .line 141
    invoke-static {v0, p0}, Ljava/lang/Math;->max(II)I

    .line 142
    .line 143
    .line 144
    move-result p0

    .line 145
    sput p0, Lcom/transsion/transfer/androidasync/ByteBufferList;->h:I

    .line 146
    .line 147
    monitor-exit v1

    .line 148
    return-void

    .line 149
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 150
    throw p0

    .line 151
    :cond_7
    :goto_2
    return-void
.end method

.method private d(I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/transsion/transfer/androidasync/ByteBufferList;->C()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-ltz v0, :cond_0

    .line 6
    .line 7
    iget v0, p0, Lcom/transsion/transfer/androidasync/ByteBufferList;->c:I

    .line 8
    .line 9
    add-int/2addr v0, p1

    .line 10
    iput v0, p0, Lcom/transsion/transfer/androidasync/ByteBufferList;->c:I

    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method private static p()Ljava/util/PriorityQueue;
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    if-ne v1, v0, :cond_0

    .line 16
    .line 17
    const/4 v0, 0x0

    .line 18
    return-object v0

    .line 19
    :cond_0
    sget-object v0, Lcom/transsion/transfer/androidasync/ByteBufferList;->d:Ljava/util/PriorityQueue;

    .line 20
    .line 21
    return-object v0
.end method

.method public static t(I)Ljava/nio/ByteBuffer;
    .locals 5

    .line 1
    sget v0, Lcom/transsion/transfer/androidasync/ByteBufferList;->h:I

    .line 2
    .line 3
    if-gt p0, v0, :cond_3

    .line 4
    .line 5
    invoke-static {}, Lcom/transsion/transfer/androidasync/ByteBufferList;->p()Ljava/util/PriorityQueue;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_3

    .line 10
    .line 11
    sget-object v1, Lcom/transsion/transfer/androidasync/ByteBufferList;->i:Ljava/lang/Object;

    .line 12
    .line 13
    monitor-enter v1

    .line 14
    :cond_0
    :try_start_0
    invoke-virtual {v0}, Ljava/util/PriorityQueue;->size()I

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    if-lez v2, :cond_2

    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/util/AbstractQueue;->remove()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    check-cast v2, Ljava/nio/ByteBuffer;

    .line 25
    .line 26
    invoke-virtual {v0}, Ljava/util/PriorityQueue;->size()I

    .line 27
    .line 28
    .line 29
    move-result v3

    .line 30
    if-nez v3, :cond_1

    .line 31
    .line 32
    const/4 v3, 0x0

    .line 33
    sput v3, Lcom/transsion/transfer/androidasync/ByteBufferList;->h:I

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :catchall_0
    move-exception p0

    .line 37
    goto :goto_1

    .line 38
    :cond_1
    :goto_0
    sget v3, Lcom/transsion/transfer/androidasync/ByteBufferList;->g:I

    .line 39
    .line 40
    invoke-virtual {v2}, Ljava/nio/Buffer;->capacity()I

    .line 41
    .line 42
    .line 43
    move-result v4

    .line 44
    sub-int/2addr v3, v4

    .line 45
    sput v3, Lcom/transsion/transfer/androidasync/ByteBufferList;->g:I

    .line 46
    .line 47
    invoke-virtual {v2}, Ljava/nio/Buffer;->capacity()I

    .line 48
    .line 49
    .line 50
    move-result v3

    .line 51
    if-lt v3, p0, :cond_0

    .line 52
    .line 53
    monitor-exit v1

    .line 54
    return-object v2

    .line 55
    :cond_2
    monitor-exit v1

    .line 56
    goto :goto_2

    .line 57
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    throw p0

    .line 59
    :cond_3
    :goto_2
    const/16 v0, 0x2000

    .line 60
    .line 61
    invoke-static {v0, p0}, Ljava/lang/Math;->max(II)I

    .line 62
    .line 63
    .line 64
    move-result p0

    .line 65
    invoke-static {p0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 66
    .line 67
    .line 68
    move-result-object p0

    .line 69
    return-object p0
.end method

.method private x(I)Ljava/nio/ByteBuffer;
    .locals 7

    .line 1
    invoke-virtual {p0}, Lcom/transsion/transfer/androidasync/ByteBufferList;->C()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-lt v0, p1, :cond_6

    .line 6
    .line 7
    iget-object v0, p0, Lcom/transsion/transfer/androidasync/ByteBufferList;->a:Lcom/transsion/transfer/androidasync/util/ArrayDeque;

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/transsion/transfer/androidasync/util/ArrayDeque;->peek()Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Ljava/nio/ByteBuffer;

    .line 14
    .line 15
    :goto_0
    if-eqz v0, :cond_0

    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/nio/Buffer;->hasRemaining()Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-nez v1, :cond_0

    .line 22
    .line 23
    iget-object v0, p0, Lcom/transsion/transfer/androidasync/ByteBufferList;->a:Lcom/transsion/transfer/androidasync/util/ArrayDeque;

    .line 24
    .line 25
    invoke-virtual {v0}, Lcom/transsion/transfer/androidasync/util/ArrayDeque;->remove()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    check-cast v0, Ljava/nio/ByteBuffer;

    .line 30
    .line 31
    invoke-static {v0}, Lcom/transsion/transfer/androidasync/ByteBufferList;->A(Ljava/nio/ByteBuffer;)V

    .line 32
    .line 33
    .line 34
    iget-object v0, p0, Lcom/transsion/transfer/androidasync/ByteBufferList;->a:Lcom/transsion/transfer/androidasync/util/ArrayDeque;

    .line 35
    .line 36
    invoke-virtual {v0}, Lcom/transsion/transfer/androidasync/util/ArrayDeque;->peek()Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    check-cast v0, Ljava/nio/ByteBuffer;

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_0
    if-nez v0, :cond_1

    .line 44
    .line 45
    sget-object p1, Lcom/transsion/transfer/androidasync/ByteBufferList;->j:Ljava/nio/ByteBuffer;

    .line 46
    .line 47
    return-object p1

    .line 48
    :cond_1
    invoke-virtual {v0}, Ljava/nio/Buffer;->remaining()I

    .line 49
    .line 50
    .line 51
    move-result v1

    .line 52
    if-lt v1, p1, :cond_2

    .line 53
    .line 54
    iget-object p1, p0, Lcom/transsion/transfer/androidasync/ByteBufferList;->b:Ljava/nio/ByteOrder;

    .line 55
    .line 56
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    return-object p1

    .line 61
    :cond_2
    invoke-static {p1}, Lcom/transsion/transfer/androidasync/ByteBufferList;->t(I)Ljava/nio/ByteBuffer;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    const/4 v2, 0x0

    .line 73
    const/4 v3, 0x0

    .line 74
    :goto_1
    move-object v4, v2

    .line 75
    :cond_3
    if-ge v3, p1, :cond_4

    .line 76
    .line 77
    iget-object v4, p0, Lcom/transsion/transfer/androidasync/ByteBufferList;->a:Lcom/transsion/transfer/androidasync/util/ArrayDeque;

    .line 78
    .line 79
    invoke-virtual {v4}, Lcom/transsion/transfer/androidasync/util/ArrayDeque;->remove()Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object v4

    .line 83
    check-cast v4, Ljava/nio/ByteBuffer;

    .line 84
    .line 85
    sub-int v5, p1, v3

    .line 86
    .line 87
    invoke-virtual {v4}, Ljava/nio/Buffer;->remaining()I

    .line 88
    .line 89
    .line 90
    move-result v6

    .line 91
    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    .line 92
    .line 93
    .line 94
    move-result v5

    .line 95
    invoke-virtual {v4, v1, v3, v5}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 96
    .line 97
    .line 98
    add-int/2addr v3, v5

    .line 99
    invoke-virtual {v4}, Ljava/nio/Buffer;->remaining()I

    .line 100
    .line 101
    .line 102
    move-result v5

    .line 103
    if-nez v5, :cond_3

    .line 104
    .line 105
    invoke-static {v4}, Lcom/transsion/transfer/androidasync/ByteBufferList;->A(Ljava/nio/ByteBuffer;)V

    .line 106
    .line 107
    .line 108
    goto :goto_1

    .line 109
    :cond_4
    if-eqz v4, :cond_5

    .line 110
    .line 111
    invoke-virtual {v4}, Ljava/nio/Buffer;->remaining()I

    .line 112
    .line 113
    .line 114
    move-result p1

    .line 115
    if-lez p1, :cond_5

    .line 116
    .line 117
    iget-object p1, p0, Lcom/transsion/transfer/androidasync/ByteBufferList;->a:Lcom/transsion/transfer/androidasync/util/ArrayDeque;

    .line 118
    .line 119
    invoke-virtual {p1, v4}, Lcom/transsion/transfer/androidasync/util/ArrayDeque;->addFirst(Ljava/lang/Object;)V

    .line 120
    .line 121
    .line 122
    :cond_5
    iget-object p1, p0, Lcom/transsion/transfer/androidasync/ByteBufferList;->a:Lcom/transsion/transfer/androidasync/util/ArrayDeque;

    .line 123
    .line 124
    invoke-virtual {p1, v0}, Lcom/transsion/transfer/androidasync/util/ArrayDeque;->addFirst(Ljava/lang/Object;)V

    .line 125
    .line 126
    .line 127
    iget-object p1, p0, Lcom/transsion/transfer/androidasync/ByteBufferList;->b:Ljava/nio/ByteOrder;

    .line 128
    .line 129
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 130
    .line 131
    .line 132
    move-result-object p1

    .line 133
    return-object p1

    .line 134
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 135
    .line 136
    new-instance v1, Ljava/lang/StringBuilder;

    .line 137
    .line 138
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 139
    .line 140
    .line 141
    const-string v2, "count : "

    .line 142
    .line 143
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    .line 145
    .line 146
    invoke-virtual {p0}, Lcom/transsion/transfer/androidasync/ByteBufferList;->C()I

    .line 147
    .line 148
    .line 149
    move-result v2

    .line 150
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 151
    .line 152
    .line 153
    const-string v2, "/"

    .line 154
    .line 155
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    .line 157
    .line 158
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 159
    .line 160
    .line 161
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object p1

    .line 165
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 166
    .line 167
    .line 168
    throw v0
.end method


# virtual methods
.method public B()V
    .locals 1

    .line 1
    :goto_0
    iget-object v0, p0, Lcom/transsion/transfer/androidasync/ByteBufferList;->a:Lcom/transsion/transfer/androidasync/util/ArrayDeque;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/transsion/transfer/androidasync/util/ArrayDeque;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-lez v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/transsion/transfer/androidasync/ByteBufferList;->a:Lcom/transsion/transfer/androidasync/util/ArrayDeque;

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/transsion/transfer/androidasync/util/ArrayDeque;->remove()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Ljava/nio/ByteBuffer;

    .line 16
    .line 17
    invoke-static {v0}, Lcom/transsion/transfer/androidasync/ByteBufferList;->A(Ljava/nio/ByteBuffer;)V

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/4 v0, 0x0

    .line 22
    iput v0, p0, Lcom/transsion/transfer/androidasync/ByteBufferList;->c:I

    .line 23
    .line 24
    return-void
.end method

.method public C()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/transsion/transfer/androidasync/ByteBufferList;->c:I

    .line 2
    .line 3
    return v0
.end method

.method public D()Ljava/nio/ByteBuffer;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/transsion/transfer/androidasync/ByteBufferList;->a:Lcom/transsion/transfer/androidasync/util/ArrayDeque;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/transsion/transfer/androidasync/util/ArrayDeque;->remove()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/nio/ByteBuffer;

    .line 8
    .line 9
    iget v1, p0, Lcom/transsion/transfer/androidasync/ByteBufferList;->c:I

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/nio/Buffer;->remaining()I

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    sub-int/2addr v1, v2

    .line 16
    iput v1, p0, Lcom/transsion/transfer/androidasync/ByteBufferList;->c:I

    .line 17
    .line 18
    return-object v0
.end method

.method public E()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/transfer/androidasync/ByteBufferList;->a:Lcom/transsion/transfer/androidasync/util/ArrayDeque;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/transsion/transfer/androidasync/util/ArrayDeque;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public F()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Lcom/transsion/transfer/androidasync/ByteBufferList;->x(I)Ljava/nio/ByteBuffer;

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public a(Ljava/nio/ByteBuffer;)Lcom/transsion/transfer/androidasync/ByteBufferList;
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-gtz v0, :cond_0

    .line 6
    .line 7
    invoke-static {p1}, Lcom/transsion/transfer/androidasync/ByteBufferList;->A(Ljava/nio/ByteBuffer;)V

    .line 8
    .line 9
    .line 10
    return-object p0

    .line 11
    :cond_0
    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    invoke-direct {p0, v0}, Lcom/transsion/transfer/androidasync/ByteBufferList;->d(I)V

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Lcom/transsion/transfer/androidasync/ByteBufferList;->a:Lcom/transsion/transfer/androidasync/util/ArrayDeque;

    .line 19
    .line 20
    invoke-virtual {v0}, Lcom/transsion/transfer/androidasync/util/ArrayDeque;->size()I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-lez v0, :cond_1

    .line 25
    .line 26
    iget-object v0, p0, Lcom/transsion/transfer/androidasync/ByteBufferList;->a:Lcom/transsion/transfer/androidasync/util/ArrayDeque;

    .line 27
    .line 28
    invoke-virtual {v0}, Lcom/transsion/transfer/androidasync/util/ArrayDeque;->getLast()Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    check-cast v0, Ljava/nio/ByteBuffer;

    .line 33
    .line 34
    invoke-virtual {v0}, Ljava/nio/Buffer;->capacity()I

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    invoke-virtual {v0}, Ljava/nio/Buffer;->limit()I

    .line 39
    .line 40
    .line 41
    move-result v2

    .line 42
    sub-int/2addr v1, v2

    .line 43
    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    .line 44
    .line 45
    .line 46
    move-result v2

    .line 47
    if-lt v1, v2, :cond_1

    .line 48
    .line 49
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->mark()Ljava/nio/Buffer;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0}, Ljava/nio/Buffer;->limit()I

    .line 53
    .line 54
    .line 55
    move-result v1

    .line 56
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0}, Ljava/nio/Buffer;->capacity()I

    .line 60
    .line 61
    .line 62
    move-result v1

    .line 63
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v0}, Ljava/nio/Buffer;->position()I

    .line 70
    .line 71
    .line 72
    move-result v1

    .line 73
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 74
    .line 75
    .line 76
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->reset()Ljava/nio/Buffer;

    .line 77
    .line 78
    .line 79
    invoke-static {p1}, Lcom/transsion/transfer/androidasync/ByteBufferList;->A(Ljava/nio/ByteBuffer;)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {p0}, Lcom/transsion/transfer/androidasync/ByteBufferList;->F()V

    .line 83
    .line 84
    .line 85
    return-object p0

    .line 86
    :cond_1
    iget-object v0, p0, Lcom/transsion/transfer/androidasync/ByteBufferList;->a:Lcom/transsion/transfer/androidasync/util/ArrayDeque;

    .line 87
    .line 88
    invoke-virtual {v0, p1}, Lcom/transsion/transfer/androidasync/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 89
    .line 90
    .line 91
    invoke-virtual {p0}, Lcom/transsion/transfer/androidasync/ByteBufferList;->F()V

    .line 92
    .line 93
    .line 94
    return-object p0
.end method

.method public varargs b([Ljava/nio/ByteBuffer;)Lcom/transsion/transfer/androidasync/ByteBufferList;
    .locals 3

    .line 1
    array-length v0, p1

    .line 2
    const/4 v1, 0x0

    .line 3
    :goto_0
    if-ge v1, v0, :cond_0

    .line 4
    .line 5
    aget-object v2, p1, v1

    .line 6
    .line 7
    invoke-virtual {p0, v2}, Lcom/transsion/transfer/androidasync/ByteBufferList;->a(Ljava/nio/ByteBuffer;)Lcom/transsion/transfer/androidasync/ByteBufferList;

    .line 8
    .line 9
    .line 10
    add-int/lit8 v1, v1, 0x1

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    return-object p0
.end method

.method public c(Ljava/nio/ByteBuffer;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-gtz v0, :cond_0

    .line 6
    .line 7
    invoke-static {p1}, Lcom/transsion/transfer/androidasync/ByteBufferList;->A(Ljava/nio/ByteBuffer;)V

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    invoke-direct {p0, v0}, Lcom/transsion/transfer/androidasync/ByteBufferList;->d(I)V

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Lcom/transsion/transfer/androidasync/ByteBufferList;->a:Lcom/transsion/transfer/androidasync/util/ArrayDeque;

    .line 19
    .line 20
    invoke-virtual {v0}, Lcom/transsion/transfer/androidasync/util/ArrayDeque;->size()I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-lez v0, :cond_1

    .line 25
    .line 26
    iget-object v0, p0, Lcom/transsion/transfer/androidasync/ByteBufferList;->a:Lcom/transsion/transfer/androidasync/util/ArrayDeque;

    .line 27
    .line 28
    invoke-virtual {v0}, Lcom/transsion/transfer/androidasync/util/ArrayDeque;->getFirst()Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    check-cast v0, Ljava/nio/ByteBuffer;

    .line 33
    .line 34
    invoke-virtual {v0}, Ljava/nio/Buffer;->position()I

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    .line 39
    .line 40
    .line 41
    move-result v2

    .line 42
    if-lt v1, v2, :cond_1

    .line 43
    .line 44
    invoke-virtual {v0}, Ljava/nio/Buffer;->position()I

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    .line 49
    .line 50
    .line 51
    move-result v2

    .line 52
    sub-int/2addr v1, v2

    .line 53
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->mark()Ljava/nio/Buffer;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->reset()Ljava/nio/Buffer;

    .line 63
    .line 64
    .line 65
    invoke-static {p1}, Lcom/transsion/transfer/androidasync/ByteBufferList;->A(Ljava/nio/ByteBuffer;)V

    .line 66
    .line 67
    .line 68
    return-void

    .line 69
    :cond_1
    iget-object v0, p0, Lcom/transsion/transfer/androidasync/ByteBufferList;->a:Lcom/transsion/transfer/androidasync/util/ArrayDeque;

    .line 70
    .line 71
    invoke-virtual {v0, p1}, Lcom/transsion/transfer/androidasync/util/ArrayDeque;->addFirst(Ljava/lang/Object;)V

    .line 72
    .line 73
    .line 74
    return-void
.end method

.method public e()B
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-direct {p0, v0}, Lcom/transsion/transfer/androidasync/ByteBufferList;->x(I)Ljava/nio/ByteBuffer;

    .line 3
    .line 4
    .line 5
    move-result-object v1

    .line 6
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    iget v2, p0, Lcom/transsion/transfer/androidasync/ByteBufferList;->c:I

    .line 11
    .line 12
    sub-int/2addr v2, v0

    .line 13
    iput v2, p0, Lcom/transsion/transfer/androidasync/ByteBufferList;->c:I

    .line 14
    .line 15
    return v1
.end method

.method public f(Lcom/transsion/transfer/androidasync/ByteBufferList;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/transsion/transfer/androidasync/ByteBufferList;->C()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0, p1, v0}, Lcom/transsion/transfer/androidasync/ByteBufferList;->g(Lcom/transsion/transfer/androidasync/ByteBufferList;I)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public g(Lcom/transsion/transfer/androidasync/ByteBufferList;I)V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/transsion/transfer/androidasync/ByteBufferList;->C()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-lt v0, p2, :cond_3

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    move v1, v0

    .line 9
    :goto_0
    if-ge v1, p2, :cond_2

    .line 10
    .line 11
    iget-object v2, p0, Lcom/transsion/transfer/androidasync/ByteBufferList;->a:Lcom/transsion/transfer/androidasync/util/ArrayDeque;

    .line 12
    .line 13
    invoke-virtual {v2}, Lcom/transsion/transfer/androidasync/util/ArrayDeque;->remove()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    check-cast v2, Ljava/nio/ByteBuffer;

    .line 18
    .line 19
    invoke-virtual {v2}, Ljava/nio/Buffer;->remaining()I

    .line 20
    .line 21
    .line 22
    move-result v3

    .line 23
    if-nez v3, :cond_0

    .line 24
    .line 25
    invoke-static {v2}, Lcom/transsion/transfer/androidasync/ByteBufferList;->A(Ljava/nio/ByteBuffer;)V

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    add-int/2addr v3, v1

    .line 30
    if-le v3, p2, :cond_1

    .line 31
    .line 32
    sub-int v1, p2, v1

    .line 33
    .line 34
    invoke-static {v1}, Lcom/transsion/transfer/androidasync/ByteBufferList;->t(I)Ljava/nio/ByteBuffer;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    invoke-virtual {v3, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->array()[B

    .line 42
    .line 43
    .line 44
    move-result-object v4

    .line 45
    invoke-virtual {v2, v4, v0, v1}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 46
    .line 47
    .line 48
    invoke-virtual {p1, v3}, Lcom/transsion/transfer/androidasync/ByteBufferList;->a(Ljava/nio/ByteBuffer;)Lcom/transsion/transfer/androidasync/ByteBufferList;

    .line 49
    .line 50
    .line 51
    iget-object p1, p0, Lcom/transsion/transfer/androidasync/ByteBufferList;->a:Lcom/transsion/transfer/androidasync/util/ArrayDeque;

    .line 52
    .line 53
    invoke-virtual {p1, v2}, Lcom/transsion/transfer/androidasync/util/ArrayDeque;->addFirst(Ljava/lang/Object;)V

    .line 54
    .line 55
    .line 56
    goto :goto_1

    .line 57
    :cond_1
    invoke-virtual {p1, v2}, Lcom/transsion/transfer/androidasync/ByteBufferList;->a(Ljava/nio/ByteBuffer;)Lcom/transsion/transfer/androidasync/ByteBufferList;

    .line 58
    .line 59
    .line 60
    move v1, v3

    .line 61
    goto :goto_0

    .line 62
    :cond_2
    :goto_1
    iget p1, p0, Lcom/transsion/transfer/androidasync/ByteBufferList;->c:I

    .line 63
    .line 64
    sub-int/2addr p1, p2

    .line 65
    iput p1, p0, Lcom/transsion/transfer/androidasync/ByteBufferList;->c:I

    .line 66
    .line 67
    return-void

    .line 68
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 69
    .line 70
    const-string p2, "length"

    .line 71
    .line 72
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    throw p1
.end method

.method public h([B)V
    .locals 2

    .line 1
    array-length v0, p1

    .line 2
    const/4 v1, 0x0

    .line 3
    invoke-virtual {p0, p1, v1, v0}, Lcom/transsion/transfer/androidasync/ByteBufferList;->i([BII)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public i([BII)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/transsion/transfer/androidasync/ByteBufferList;->C()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-lt v0, p3, :cond_3

    .line 6
    .line 7
    move v0, p3

    .line 8
    :cond_0
    :goto_0
    if-lez v0, :cond_2

    .line 9
    .line 10
    iget-object v1, p0, Lcom/transsion/transfer/androidasync/ByteBufferList;->a:Lcom/transsion/transfer/androidasync/util/ArrayDeque;

    .line 11
    .line 12
    invoke-virtual {v1}, Lcom/transsion/transfer/androidasync/util/ArrayDeque;->peek()Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    check-cast v1, Ljava/nio/ByteBuffer;

    .line 17
    .line 18
    invoke-virtual {v1}, Ljava/nio/Buffer;->remaining()I

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    if-eqz p1, :cond_1

    .line 27
    .line 28
    invoke-virtual {v1, p1, p2, v2}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 29
    .line 30
    .line 31
    goto :goto_1

    .line 32
    :cond_1
    invoke-virtual {v1}, Ljava/nio/Buffer;->position()I

    .line 33
    .line 34
    .line 35
    move-result v3

    .line 36
    add-int/2addr v3, v2

    .line 37
    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 38
    .line 39
    .line 40
    :goto_1
    sub-int/2addr v0, v2

    .line 41
    add-int/2addr p2, v2

    .line 42
    invoke-virtual {v1}, Ljava/nio/Buffer;->remaining()I

    .line 43
    .line 44
    .line 45
    move-result v2

    .line 46
    if-nez v2, :cond_0

    .line 47
    .line 48
    iget-object v2, p0, Lcom/transsion/transfer/androidasync/ByteBufferList;->a:Lcom/transsion/transfer/androidasync/util/ArrayDeque;

    .line 49
    .line 50
    invoke-virtual {v2}, Lcom/transsion/transfer/androidasync/util/ArrayDeque;->remove()Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    check-cast v2, Ljava/nio/ByteBuffer;

    .line 55
    .line 56
    invoke-static {v1}, Lcom/transsion/transfer/androidasync/ByteBufferList;->A(Ljava/nio/ByteBuffer;)V

    .line 57
    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_2
    iget p1, p0, Lcom/transsion/transfer/androidasync/ByteBufferList;->c:I

    .line 61
    .line 62
    sub-int/2addr p1, p3

    .line 63
    iput p1, p0, Lcom/transsion/transfer/androidasync/ByteBufferList;->c:I

    .line 64
    .line 65
    return-void

    .line 66
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 67
    .line 68
    const-string p2, "length"

    .line 69
    .line 70
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    throw p1
.end method

.method public j()Ljava/nio/ByteBuffer;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/transsion/transfer/androidasync/ByteBufferList;->C()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    sget-object v0, Lcom/transsion/transfer/androidasync/ByteBufferList;->j:Ljava/nio/ByteBuffer;

    .line 8
    .line 9
    return-object v0

    .line 10
    :cond_0
    invoke-virtual {p0}, Lcom/transsion/transfer/androidasync/ByteBufferList;->C()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    invoke-direct {p0, v0}, Lcom/transsion/transfer/androidasync/ByteBufferList;->x(I)Ljava/nio/ByteBuffer;

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/transsion/transfer/androidasync/ByteBufferList;->D()Ljava/nio/ByteBuffer;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    return-object v0
.end method

.method public k()[Ljava/nio/ByteBuffer;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transsion/transfer/androidasync/ByteBufferList;->a:Lcom/transsion/transfer/androidasync/util/ArrayDeque;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/transsion/transfer/androidasync/util/ArrayDeque;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    new-array v0, v0, [Ljava/nio/ByteBuffer;

    .line 8
    .line 9
    iget-object v1, p0, Lcom/transsion/transfer/androidasync/ByteBufferList;->a:Lcom/transsion/transfer/androidasync/util/ArrayDeque;

    .line 10
    .line 11
    invoke-virtual {v1, v0}, Lcom/transsion/transfer/androidasync/util/ArrayDeque;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, [Ljava/nio/ByteBuffer;

    .line 16
    .line 17
    iget-object v1, p0, Lcom/transsion/transfer/androidasync/ByteBufferList;->a:Lcom/transsion/transfer/androidasync/util/ArrayDeque;

    .line 18
    .line 19
    invoke-virtual {v1}, Lcom/transsion/transfer/androidasync/util/ArrayDeque;->clear()V

    .line 20
    .line 21
    .line 22
    const/4 v1, 0x0

    .line 23
    iput v1, p0, Lcom/transsion/transfer/androidasync/ByteBufferList;->c:I

    .line 24
    .line 25
    return-object v0
.end method

.method public l()[B
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/transsion/transfer/androidasync/ByteBufferList;->C()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    new-array v0, v0, [B

    .line 6
    .line 7
    invoke-virtual {p0, v0}, Lcom/transsion/transfer/androidasync/ByteBufferList;->h([B)V

    .line 8
    .line 9
    .line 10
    return-object v0
.end method

.method public m()C
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-direct {p0, v0}, Lcom/transsion/transfer/androidasync/ByteBufferList;->x(I)Ljava/nio/ByteBuffer;

    .line 3
    .line 4
    .line 5
    move-result-object v1

    .line 6
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    int-to-char v1, v1

    .line 11
    iget v2, p0, Lcom/transsion/transfer/androidasync/ByteBufferList;->c:I

    .line 12
    .line 13
    sub-int/2addr v2, v0

    .line 14
    iput v2, p0, Lcom/transsion/transfer/androidasync/ByteBufferList;->c:I

    .line 15
    .line 16
    return v1
.end method

.method public n()I
    .locals 3

    .line 1
    const/4 v0, 0x4

    .line 2
    invoke-direct {p0, v0}, Lcom/transsion/transfer/androidasync/ByteBufferList;->x(I)Ljava/nio/ByteBuffer;

    .line 3
    .line 4
    .line 5
    move-result-object v1

    .line 6
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    iget v2, p0, Lcom/transsion/transfer/androidasync/ByteBufferList;->c:I

    .line 11
    .line 12
    sub-int/2addr v2, v0

    .line 13
    iput v2, p0, Lcom/transsion/transfer/androidasync/ByteBufferList;->c:I

    .line 14
    .line 15
    return v1
.end method

.method public o()J
    .locals 4

    .line 1
    const/16 v0, 0x8

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lcom/transsion/transfer/androidasync/ByteBufferList;->x(I)Ljava/nio/ByteBuffer;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getLong()J

    .line 8
    .line 9
    .line 10
    move-result-wide v1

    .line 11
    iget v3, p0, Lcom/transsion/transfer/androidasync/ByteBufferList;->c:I

    .line 12
    .line 13
    sub-int/2addr v3, v0

    .line 14
    iput v3, p0, Lcom/transsion/transfer/androidasync/ByteBufferList;->c:I

    .line 15
    .line 16
    return-wide v1
.end method

.method public q()S
    .locals 3

    .line 1
    const/4 v0, 0x2

    .line 2
    invoke-direct {p0, v0}, Lcom/transsion/transfer/androidasync/ByteBufferList;->x(I)Ljava/nio/ByteBuffer;

    .line 3
    .line 4
    .line 5
    move-result-object v1

    .line 6
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getShort()S

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    iget v2, p0, Lcom/transsion/transfer/androidasync/ByteBufferList;->c:I

    .line 11
    .line 12
    sub-int/2addr v2, v0

    .line 13
    iput v2, p0, Lcom/transsion/transfer/androidasync/ByteBufferList;->c:I

    .line 14
    .line 15
    return v1
.end method

.method public r()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/transsion/transfer/androidasync/ByteBufferList;->C()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-lez v0, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    :goto_0
    return v0
.end method

.method public s()Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/transsion/transfer/androidasync/ByteBufferList;->c:I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    :goto_0
    return v0
.end method

.method public u(Ljava/nio/ByteOrder;)Lcom/transsion/transfer/androidasync/ByteBufferList;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/transfer/androidasync/ByteBufferList;->b:Ljava/nio/ByteOrder;

    .line 2
    .line 3
    return-object p0
.end method

.method public v()Ljava/lang/String;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lcom/transsion/transfer/androidasync/ByteBufferList;->w(Ljava/nio/charset/Charset;)Ljava/lang/String;

    .line 3
    .line 4
    .line 5
    move-result-object v0

    .line 6
    return-object v0
.end method

.method public w(Ljava/nio/charset/Charset;)Ljava/lang/String;
    .locals 7

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    sget-object p1, Lcom/transsion/transfer/androidasync/util/c;->b:Ljava/nio/charset/Charset;

    .line 4
    .line 5
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    iget-object v1, p0, Lcom/transsion/transfer/androidasync/ByteBufferList;->a:Lcom/transsion/transfer/androidasync/util/ArrayDeque;

    .line 11
    .line 12
    invoke-virtual {v1}, Lcom/transsion/transfer/androidasync/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    if-eqz v2, :cond_2

    .line 21
    .line 22
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    check-cast v2, Ljava/nio/ByteBuffer;

    .line 27
    .line 28
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->isDirect()Z

    .line 29
    .line 30
    .line 31
    move-result v3

    .line 32
    if-eqz v3, :cond_1

    .line 33
    .line 34
    invoke-virtual {v2}, Ljava/nio/Buffer;->remaining()I

    .line 35
    .line 36
    .line 37
    move-result v3

    .line 38
    new-array v3, v3, [B

    .line 39
    .line 40
    invoke-virtual {v2}, Ljava/nio/Buffer;->remaining()I

    .line 41
    .line 42
    .line 43
    move-result v4

    .line 44
    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 45
    .line 46
    .line 47
    const/4 v2, 0x0

    .line 48
    goto :goto_1

    .line 49
    :cond_1
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    .line 50
    .line 51
    .line 52
    move-result-object v3

    .line 53
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->arrayOffset()I

    .line 54
    .line 55
    .line 56
    move-result v4

    .line 57
    invoke-virtual {v2}, Ljava/nio/Buffer;->position()I

    .line 58
    .line 59
    .line 60
    move-result v5

    .line 61
    add-int/2addr v4, v5

    .line 62
    invoke-virtual {v2}, Ljava/nio/Buffer;->remaining()I

    .line 63
    .line 64
    .line 65
    move-result v2

    .line 66
    move v6, v4

    .line 67
    move v4, v2

    .line 68
    move v2, v6

    .line 69
    :goto_1
    new-instance v5, Ljava/lang/String;

    .line 70
    .line 71
    invoke-direct {v5, v3, v2, v4, p1}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    goto :goto_0

    .line 78
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    return-object p1
.end method

.method public y()Ljava/lang/String;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lcom/transsion/transfer/androidasync/ByteBufferList;->z(Ljava/nio/charset/Charset;)Ljava/lang/String;

    .line 3
    .line 4
    .line 5
    move-result-object v0

    .line 6
    return-object v0
.end method

.method public z(Ljava/nio/charset/Charset;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/transsion/transfer/androidasync/ByteBufferList;->w(Ljava/nio/charset/Charset;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p0}, Lcom/transsion/transfer/androidasync/ByteBufferList;->B()V

    .line 6
    .line 7
    .line 8
    return-object p1
.end method
