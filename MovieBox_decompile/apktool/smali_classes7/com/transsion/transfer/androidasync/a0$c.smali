.class Lcom/transsion/transfer/androidasync/a0$c;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lst/j;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/transfer/androidasync/a0;->d(Ljava/io/InputStream;JLcom/transsion/transfer/androidasync/s;Lst/a;)V
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


# direct methods
.method constructor <init>(Lcom/transsion/transfer/androidasync/s;Ljava/io/InputStream;JLst/a;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/transsion/transfer/androidasync/a0$c;->d:Lcom/transsion/transfer/androidasync/s;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/transsion/transfer/androidasync/a0$c;->e:Ljava/io/InputStream;

    .line 4
    .line 5
    iput-wide p3, p0, Lcom/transsion/transfer/androidasync/a0$c;->f:J

    .line 6
    .line 7
    iput-object p5, p0, Lcom/transsion/transfer/androidasync/a0$c;->g:Lst/a;

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    const/4 p1, 0x0

    .line 13
    iput p1, p0, Lcom/transsion/transfer/androidasync/a0$c;->a:I

    .line 14
    .line 15
    new-instance p1, Lcom/transsion/transfer/androidasync/ByteBufferList;

    .line 16
    .line 17
    invoke-direct {p1}, Lcom/transsion/transfer/androidasync/ByteBufferList;-><init>()V

    .line 18
    .line 19
    .line 20
    iput-object p1, p0, Lcom/transsion/transfer/androidasync/a0$c;->b:Lcom/transsion/transfer/androidasync/ByteBufferList;

    .line 21
    .line 22
    new-instance p1, Lcom/transsion/transfer/androidasync/util/a;

    .line 23
    .line 24
    invoke-direct {p1}, Lcom/transsion/transfer/androidasync/util/a;-><init>()V

    .line 25
    .line 26
    .line 27
    const-wide/32 v0, 0x100000

    .line 28
    .line 29
    .line 30
    invoke-static {v0, v1, p3, p4}, Ljava/lang/Math;->min(JJ)J

    .line 31
    .line 32
    .line 33
    move-result-wide p2

    .line 34
    long-to-int p2, p2

    .line 35
    invoke-virtual {p1, p2}, Lcom/transsion/transfer/androidasync/util/a;->d(I)Lcom/transsion/transfer/androidasync/util/a;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    iput-object p1, p0, Lcom/transsion/transfer/androidasync/a0$c;->c:Lcom/transsion/transfer/androidasync/util/a;

    .line 40
    .line 41
    return-void
.end method

.method private b()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/transsion/transfer/androidasync/a0$c;->d:Lcom/transsion/transfer/androidasync/s;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-interface {v0, v1}, Lcom/transsion/transfer/androidasync/s;->i(Lst/a;)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/transsion/transfer/androidasync/a0$c;->d:Lcom/transsion/transfer/androidasync/s;

    .line 8
    .line 9
    invoke-interface {v0, v1}, Lcom/transsion/transfer/androidasync/s;->B(Lst/j;)V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lcom/transsion/transfer/androidasync/a0$c;->b:Lcom/transsion/transfer/androidasync/ByteBufferList;

    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/transsion/transfer/androidasync/ByteBufferList;->B()V

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Lcom/transsion/transfer/androidasync/a0$c;->e:Ljava/io/InputStream;

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
    .locals 7

    .line 1
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/transsion/transfer/androidasync/a0$c;->b:Lcom/transsion/transfer/androidasync/ByteBufferList;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/transsion/transfer/androidasync/ByteBufferList;->r()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_3

    .line 8
    .line 9
    iget-object v0, p0, Lcom/transsion/transfer/androidasync/a0$c;->c:Lcom/transsion/transfer/androidasync/util/a;

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/transsion/transfer/androidasync/util/a;->a()Ljava/nio/ByteBuffer;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iget-wide v1, p0, Lcom/transsion/transfer/androidasync/a0$c;->f:J

    .line 16
    .line 17
    iget v3, p0, Lcom/transsion/transfer/androidasync/a0$c;->a:I

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
    iget-object v3, p0, Lcom/transsion/transfer/androidasync/a0$c;->e:Ljava/io/InputStream;

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
    if-eq v1, v3, :cond_2

    .line 44
    .line 45
    iget v3, p0, Lcom/transsion/transfer/androidasync/a0$c;->a:I

    .line 46
    .line 47
    int-to-long v3, v3

    .line 48
    iget-wide v5, p0, Lcom/transsion/transfer/androidasync/a0$c;->f:J

    .line 49
    .line 50
    cmp-long v3, v3, v5

    .line 51
    .line 52
    if-nez v3, :cond_1

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_1
    iget-object v3, p0, Lcom/transsion/transfer/androidasync/a0$c;->c:Lcom/transsion/transfer/androidasync/util/a;

    .line 56
    .line 57
    int-to-long v4, v1

    .line 58
    invoke-virtual {v3, v4, v5}, Lcom/transsion/transfer/androidasync/util/a;->e(J)V

    .line 59
    .line 60
    .line 61
    iget v3, p0, Lcom/transsion/transfer/androidasync/a0$c;->a:I

    .line 62
    .line 63
    add-int/2addr v3, v1

    .line 64
    iput v3, p0, Lcom/transsion/transfer/androidasync/a0$c;->a:I

    .line 65
    .line 66
    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 70
    .line 71
    .line 72
    iget-object v1, p0, Lcom/transsion/transfer/androidasync/a0$c;->b:Lcom/transsion/transfer/androidasync/ByteBufferList;

    .line 73
    .line 74
    invoke-virtual {v1, v0}, Lcom/transsion/transfer/androidasync/ByteBufferList;->a(Ljava/nio/ByteBuffer;)Lcom/transsion/transfer/androidasync/ByteBufferList;

    .line 75
    .line 76
    .line 77
    goto :goto_1

    .line 78
    :catch_0
    move-exception v0

    .line 79
    goto :goto_2

    .line 80
    :cond_2
    :goto_0
    invoke-direct {p0}, Lcom/transsion/transfer/androidasync/a0$c;->b()V

    .line 81
    .line 82
    .line 83
    iget-object v0, p0, Lcom/transsion/transfer/androidasync/a0$c;->g:Lst/a;

    .line 84
    .line 85
    const/4 v1, 0x0

    .line 86
    invoke-interface {v0, v1}, Lst/a;->g(Ljava/lang/Exception;)V

    .line 87
    .line 88
    .line 89
    return-void

    .line 90
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/transsion/transfer/androidasync/a0$c;->d:Lcom/transsion/transfer/androidasync/s;

    .line 91
    .line 92
    iget-object v1, p0, Lcom/transsion/transfer/androidasync/a0$c;->b:Lcom/transsion/transfer/androidasync/ByteBufferList;

    .line 93
    .line 94
    invoke-interface {v0, v1}, Lcom/transsion/transfer/androidasync/s;->n(Lcom/transsion/transfer/androidasync/ByteBufferList;)V

    .line 95
    .line 96
    .line 97
    iget-object v0, p0, Lcom/transsion/transfer/androidasync/a0$c;->b:Lcom/transsion/transfer/androidasync/ByteBufferList;

    .line 98
    .line 99
    invoke-virtual {v0}, Lcom/transsion/transfer/androidasync/ByteBufferList;->r()Z

    .line 100
    .line 101
    .line 102
    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 103
    if-eqz v0, :cond_0

    .line 104
    .line 105
    goto :goto_3

    .line 106
    :goto_2
    invoke-direct {p0}, Lcom/transsion/transfer/androidasync/a0$c;->b()V

    .line 107
    .line 108
    .line 109
    iget-object v1, p0, Lcom/transsion/transfer/androidasync/a0$c;->g:Lst/a;

    .line 110
    .line 111
    invoke-interface {v1, v0}, Lst/a;->g(Ljava/lang/Exception;)V

    .line 112
    .line 113
    .line 114
    :goto_3
    return-void
.end method
