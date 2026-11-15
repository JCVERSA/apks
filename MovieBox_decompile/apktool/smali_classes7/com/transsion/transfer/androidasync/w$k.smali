.class Lcom/transsion/transfer/androidasync/w$k;
.super Lcom/transsion/transfer/androidasync/w$l;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/transfer/androidasync/w;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "k"
.end annotation


# instance fields
.field b:B

.field c:Lst/d;


# direct methods
.method public constructor <init>(BLst/d;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-direct {p0, v0}, Lcom/transsion/transfer/androidasync/w$l;-><init>(I)V

    .line 3
    .line 4
    .line 5
    iput-byte p1, p0, Lcom/transsion/transfer/androidasync/w$k;->b:B

    .line 6
    .line 7
    iput-object p2, p0, Lcom/transsion/transfer/androidasync/w$k;->c:Lst/d;

    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public a(Lcom/transsion/transfer/androidasync/p;Lcom/transsion/transfer/androidasync/ByteBufferList;)Lcom/transsion/transfer/androidasync/w$l;
    .locals 7

    .line 1
    new-instance v0, Lcom/transsion/transfer/androidasync/ByteBufferList;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/transsion/transfer/androidasync/ByteBufferList;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    move v2, v1

    .line 8
    :goto_0
    invoke-virtual {p2}, Lcom/transsion/transfer/androidasync/ByteBufferList;->E()I

    .line 9
    .line 10
    .line 11
    move-result v3

    .line 12
    if-lez v3, :cond_3

    .line 13
    .line 14
    invoke-virtual {p2}, Lcom/transsion/transfer/androidasync/ByteBufferList;->D()Ljava/nio/ByteBuffer;

    .line 15
    .line 16
    .line 17
    move-result-object v3

    .line 18
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->mark()Ljava/nio/Buffer;

    .line 19
    .line 20
    .line 21
    const/4 v4, 0x0

    .line 22
    move v5, v4

    .line 23
    :goto_1
    invoke-virtual {v3}, Ljava/nio/Buffer;->remaining()I

    .line 24
    .line 25
    .line 26
    move-result v6

    .line 27
    if-lez v6, :cond_1

    .line 28
    .line 29
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->get()B

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    iget-byte v6, p0, Lcom/transsion/transfer/androidasync/w$k;->b:B

    .line 34
    .line 35
    if-ne v2, v6, :cond_0

    .line 36
    .line 37
    move v2, v1

    .line 38
    goto :goto_2

    .line 39
    :cond_0
    move v2, v4

    .line 40
    :goto_2
    if-nez v2, :cond_1

    .line 41
    .line 42
    add-int/lit8 v5, v5, 0x1

    .line 43
    .line 44
    goto :goto_1

    .line 45
    :cond_1
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->reset()Ljava/nio/Buffer;

    .line 46
    .line 47
    .line 48
    if-eqz v2, :cond_2

    .line 49
    .line 50
    invoke-virtual {p2, v3}, Lcom/transsion/transfer/androidasync/ByteBufferList;->c(Ljava/nio/ByteBuffer;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {p2, v0, v5}, Lcom/transsion/transfer/androidasync/ByteBufferList;->g(Lcom/transsion/transfer/androidasync/ByteBufferList;I)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {p2}, Lcom/transsion/transfer/androidasync/ByteBufferList;->e()B

    .line 57
    .line 58
    .line 59
    goto :goto_3

    .line 60
    :cond_2
    invoke-virtual {v0, v3}, Lcom/transsion/transfer/androidasync/ByteBufferList;->a(Ljava/nio/ByteBuffer;)Lcom/transsion/transfer/androidasync/ByteBufferList;

    .line 61
    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_3
    :goto_3
    iget-object p2, p0, Lcom/transsion/transfer/androidasync/w$k;->c:Lst/d;

    .line 65
    .line 66
    invoke-interface {p2, p1, v0}, Lst/d;->C(Lcom/transsion/transfer/androidasync/p;Lcom/transsion/transfer/androidasync/ByteBufferList;)V

    .line 67
    .line 68
    .line 69
    if-eqz v2, :cond_4

    .line 70
    .line 71
    const/4 p1, 0x0

    .line 72
    return-object p1

    .line 73
    :cond_4
    return-object p0
.end method
