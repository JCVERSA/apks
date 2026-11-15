.class Lcom/transsion/transfer/androidasync/a0$e;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lst/j;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/transfer/androidasync/a0;->e(Ljava/io/InputStream;JLcom/transsion/transfer/androidasync/s;Lst/a;Lst/e;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field a:I

.field b:Lcom/transsion/transfer/androidasync/ByteBufferList;

.field c:Lcom/transsion/transfer/androidasync/util/a;

.field final synthetic d:Lcom/transsion/transfer/androidasync/s;

.field final synthetic e:Ljava/io/InputStream;

.field final synthetic f:J

.field final synthetic g:Lst/a;

.field final synthetic h:Lst/e;


# direct methods
.method constructor <init>(Lcom/transsion/transfer/androidasync/s;Ljava/io/InputStream;JLst/a;Lst/e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/transfer/androidasync/a0$e;->d:Lcom/transsion/transfer/androidasync/s;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/transsion/transfer/androidasync/a0$e;->e:Ljava/io/InputStream;

    .line 4
    .line 5
    iput-wide p3, p0, Lcom/transsion/transfer/androidasync/a0$e;->f:J

    .line 6
    .line 7
    iput-object p5, p0, Lcom/transsion/transfer/androidasync/a0$e;->g:Lst/a;

    .line 8
    .line 9
    iput-object p6, p0, Lcom/transsion/transfer/androidasync/a0$e;->h:Lst/e;

    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    const/4 p1, 0x0

    .line 15
    iput p1, p0, Lcom/transsion/transfer/androidasync/a0$e;->a:I

    .line 16
    .line 17
    new-instance p1, Lcom/transsion/transfer/androidasync/ByteBufferList;

    .line 18
    .line 19
    invoke-direct {p1}, Lcom/transsion/transfer/androidasync/ByteBufferList;-><init>()V

    .line 20
    .line 21
    .line 22
    iput-object p1, p0, Lcom/transsion/transfer/androidasync/a0$e;->b:Lcom/transsion/transfer/androidasync/ByteBufferList;

    .line 23
    .line 24
    new-instance p1, Lcom/transsion/transfer/androidasync/util/a;

    .line 25
    .line 26
    invoke-direct {p1}, Lcom/transsion/transfer/androidasync/util/a;-><init>()V

    .line 27
    .line 28
    .line 29
    const-wide/32 p5, 0x100000

    .line 30
    .line 31
    .line 32
    invoke-static {p5, p6, p3, p4}, Ljava/lang/Math;->min(JJ)J

    .line 33
    .line 34
    .line 35
    move-result-wide p2

    .line 36
    long-to-int p2, p2

    .line 37
    invoke-virtual {p1, p2}, Lcom/transsion/transfer/androidasync/util/a;->d(I)Lcom/transsion/transfer/androidasync/util/a;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    iput-object p1, p0, Lcom/transsion/transfer/androidasync/a0$e;->c:Lcom/transsion/transfer/androidasync/util/a;

    .line 42
    .line 43
    return-void
.end method

.method private b()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/transsion/transfer/androidasync/a0$e;->d:Lcom/transsion/transfer/androidasync/s;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-interface {v0, v1}, Lcom/transsion/transfer/androidasync/s;->i(Lst/a;)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/transsion/transfer/androidasync/a0$e;->d:Lcom/transsion/transfer/androidasync/s;

    .line 8
    .line 9
    invoke-interface {v0, v1}, Lcom/transsion/transfer/androidasync/s;->B(Lst/j;)V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lcom/transsion/transfer/androidasync/a0$e;->b:Lcom/transsion/transfer/androidasync/ByteBufferList;

    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/transsion/transfer/androidasync/ByteBufferList;->B()V

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Lcom/transsion/transfer/androidasync/a0$e;->e:Ljava/io/InputStream;

    .line 18
    .line 19
    const/4 v1, 0x1

    .line 20
    new-array v1, v1, [Ljava/io/Closeable;

    .line 21
    .line 22
    const/4 v2, 0x0

    .line 23
    aput-object v0, v1, v2

    .line 24
    .line 25
    invoke-static {v1}, Lcom/transsion/transfer/androidasync/util/d;->a([Ljava/io/Closeable;)V

    .line 26
    .line 27
    .line 28
    return-void
.end method


# virtual methods
.method public a()V
    .locals 9

    .line 1
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/transsion/transfer/androidasync/a0$e;->b:Lcom/transsion/transfer/androidasync/ByteBufferList;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/transsion/transfer/androidasync/ByteBufferList;->r()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_5

    .line 8
    .line 9
    iget-object v0, p0, Lcom/transsion/transfer/androidasync/a0$e;->c:Lcom/transsion/transfer/androidasync/util/a;

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/transsion/transfer/androidasync/util/a;->a()Ljava/nio/ByteBuffer;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iget-wide v1, p0, Lcom/transsion/transfer/androidasync/a0$e;->f:J

    .line 16
    .line 17
    iget v3, p0, Lcom/transsion/transfer/androidasync/a0$e;->a:I

    .line 18
    .line 19
    int-to-long v3, v3

    .line 20
    sub-long/2addr v1, v3

    .line 21
    invoke-virtual {v0}, Ljava/nio/Buffer;->capacity()I

    .line 22
    .line 23
    .line 24
    move-result v3

    .line 25
    int-to-long v3, v3

    .line 26
    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->min(JJ)J

    .line 27
    .line 28
    .line 29
    move-result-wide v1

    .line 30
    iget-object v3, p0, Lcom/transsion/transfer/androidasync/a0$e;->e:Ljava/io/InputStream;

    .line 31
    .line 32
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    .line 33
    .line 34
    .line 35
    move-result-object v4

    .line 36
    long-to-int v1, v1

    .line 37
    const/4 v2, 0x0

    .line 38
    invoke-virtual {v3, v4, v2, v1}, Ljava/io/InputStream;->read([BII)I

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    const/4 v3, -0x1

    .line 43
    if-eq v1, v3, :cond_3

    .line 44
    .line 45
    iget v3, p0, Lcom/transsion/transfer/androidasync/a0$e;->a:I

    .line 46
    .line 47
    int-to-long v3, v3

    .line 48
    iget-wide v5, p0, Lcom/transsion/transfer/androidasync/a0$e;->f:J

    .line 49
    .line 50
    cmp-long v3, v3, v5

    .line 51
    .line 52
    if-nez v3, :cond_1

    .line 53
    .line 54
    goto :goto_1

    .line 55
    :cond_1
    iget-object v3, p0, Lcom/transsion/transfer/androidasync/a0$e;->c:Lcom/transsion/transfer/androidasync/util/a;

    .line 56
    .line 57
    int-to-long v4, v1

    .line 58
    invoke-virtual {v3, v4, v5}, Lcom/transsion/transfer/androidasync/util/a;->e(J)V

    .line 59
    .line 60
    .line 61
    iget v3, p0, Lcom/transsion/transfer/androidasync/a0$e;->a:I

    .line 62
    .line 63
    add-int/2addr v3, v1

    .line 64
    iput v3, p0, Lcom/transsion/transfer/androidasync/a0$e;->a:I

    .line 65
    .line 66
    iget-object v4, p0, Lcom/transsion/transfer/androidasync/a0$e;->h:Lst/e;

    .line 67
    .line 68
    if-eqz v4, :cond_2

    .line 69
    .line 70
    int-to-long v5, v3

    .line 71
    iget-wide v7, p0, Lcom/transsion/transfer/androidasync/a0$e;->f:J

    .line 72
    .line 73
    invoke-interface {v4, v5, v6, v7, v8}, Lst/e;->a(JJ)V

    .line 74
    .line 75
    .line 76
    goto :goto_0

    .line 77
    :catch_0
    move-exception v0

    .line 78
    goto :goto_3

    .line 79
    :cond_2
    :goto_0
    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 80
    .line 81
    .line 82
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 83
    .line 84
    .line 85
    iget-object v1, p0, Lcom/transsion/transfer/androidasync/a0$e;->b:Lcom/transsion/transfer/androidasync/ByteBufferList;

    .line 86
    .line 87
    invoke-virtual {v1, v0}, Lcom/transsion/transfer/androidasync/ByteBufferList;->a(Ljava/nio/ByteBuffer;)Lcom/transsion/transfer/androidasync/ByteBufferList;

    .line 88
    .line 89
    .line 90
    goto :goto_2

    .line 91
    :cond_3
    :goto_1
    invoke-direct {p0}, Lcom/transsion/transfer/androidasync/a0$e;->b()V

    .line 92
    .line 93
    .line 94
    iget-object v0, p0, Lcom/transsion/transfer/androidasync/a0$e;->g:Lst/a;

    .line 95
    .line 96
    const/4 v1, 0x0

    .line 97
    invoke-interface {v0, v1}, Lst/a;->g(Ljava/lang/Exception;)V

    .line 98
    .line 99
    .line 100
    iget-object v0, p0, Lcom/transsion/transfer/androidasync/a0$e;->h:Lst/e;

    .line 101
    .line 102
    if-eqz v0, :cond_4

    .line 103
    .line 104
    invoke-interface {v0, v1}, Lst/e;->b(Ljava/lang/Exception;)V

    .line 105
    .line 106
    .line 107
    :cond_4
    return-void

    .line 108
    :cond_5
    :goto_2
    iget-object v0, p0, Lcom/transsion/transfer/androidasync/a0$e;->d:Lcom/transsion/transfer/androidasync/s;

    .line 109
    .line 110
    iget-object v1, p0, Lcom/transsion/transfer/androidasync/a0$e;->b:Lcom/transsion/transfer/androidasync/ByteBufferList;

    .line 111
    .line 112
    invoke-interface {v0, v1}, Lcom/transsion/transfer/androidasync/s;->n(Lcom/transsion/transfer/androidasync/ByteBufferList;)V

    .line 113
    .line 114
    .line 115
    iget-object v0, p0, Lcom/transsion/transfer/androidasync/a0$e;->b:Lcom/transsion/transfer/androidasync/ByteBufferList;

    .line 116
    .line 117
    invoke-virtual {v0}, Lcom/transsion/transfer/androidasync/ByteBufferList;->r()Z

    .line 118
    .line 119
    .line 120
    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 121
    if-eqz v0, :cond_0

    .line 122
    .line 123
    goto :goto_4

    .line 124
    :goto_3
    invoke-direct {p0}, Lcom/transsion/transfer/androidasync/a0$e;->b()V

    .line 125
    .line 126
    .line 127
    iget-object v1, p0, Lcom/transsion/transfer/androidasync/a0$e;->g:Lst/a;

    .line 128
    .line 129
    invoke-interface {v1, v0}, Lst/a;->g(Ljava/lang/Exception;)V

    .line 130
    .line 131
    .line 132
    iget-object v1, p0, Lcom/transsion/transfer/androidasync/a0$e;->h:Lst/e;

    .line 133
    .line 134
    if-eqz v1, :cond_6

    .line 135
    .line 136
    invoke-interface {v1, v0}, Lst/e;->b(Ljava/lang/Exception;)V

    .line 137
    .line 138
    .line 139
    :cond_6
    :goto_4
    return-void
.end method
