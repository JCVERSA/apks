.class public Lcom/transsion/transfer/androidasync/v;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lst/d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/transfer/androidasync/v$a;
    }
.end annotation


# instance fields
.field a:Ljava/nio/charset/Charset;

.field b:Lcom/transsion/transfer/androidasync/ByteBufferList;

.field c:Lcom/transsion/transfer/androidasync/v$a;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/transsion/transfer/androidasync/v;-><init>(Ljava/nio/charset/Charset;)V

    return-void
.end method

.method public constructor <init>(Ljava/nio/charset/Charset;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Lcom/transsion/transfer/androidasync/ByteBufferList;

    invoke-direct {v0}, Lcom/transsion/transfer/androidasync/ByteBufferList;-><init>()V

    iput-object v0, p0, Lcom/transsion/transfer/androidasync/v;->b:Lcom/transsion/transfer/androidasync/ByteBufferList;

    .line 4
    iput-object p1, p0, Lcom/transsion/transfer/androidasync/v;->a:Ljava/nio/charset/Charset;

    return-void
.end method


# virtual methods
.method public C(Lcom/transsion/transfer/androidasync/p;Lcom/transsion/transfer/androidasync/ByteBufferList;)V
    .locals 2

    .line 1
    invoke-virtual {p2}, Lcom/transsion/transfer/androidasync/ByteBufferList;->C()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    :goto_0
    invoke-virtual {p2}, Lcom/transsion/transfer/androidasync/ByteBufferList;->C()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-lez v0, :cond_1

    .line 14
    .line 15
    invoke-virtual {p2}, Lcom/transsion/transfer/androidasync/ByteBufferList;->e()B

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    const/16 v1, 0xa

    .line 20
    .line 21
    if-ne v0, v1, :cond_0

    .line 22
    .line 23
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 24
    .line 25
    .line 26
    iget-object p2, p0, Lcom/transsion/transfer/androidasync/v;->b:Lcom/transsion/transfer/androidasync/ByteBufferList;

    .line 27
    .line 28
    invoke-virtual {p2, p1}, Lcom/transsion/transfer/androidasync/ByteBufferList;->a(Ljava/nio/ByteBuffer;)Lcom/transsion/transfer/androidasync/ByteBufferList;

    .line 29
    .line 30
    .line 31
    iget-object p1, p0, Lcom/transsion/transfer/androidasync/v;->c:Lcom/transsion/transfer/androidasync/v$a;

    .line 32
    .line 33
    iget-object p2, p0, Lcom/transsion/transfer/androidasync/v;->b:Lcom/transsion/transfer/androidasync/ByteBufferList;

    .line 34
    .line 35
    iget-object v0, p0, Lcom/transsion/transfer/androidasync/v;->a:Ljava/nio/charset/Charset;

    .line 36
    .line 37
    invoke-virtual {p2, v0}, Lcom/transsion/transfer/androidasync/ByteBufferList;->z(Ljava/nio/charset/Charset;)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p2

    .line 41
    invoke-interface {p1, p2}, Lcom/transsion/transfer/androidasync/v$a;->a(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    new-instance p1, Lcom/transsion/transfer/androidasync/ByteBufferList;

    .line 45
    .line 46
    invoke-direct {p1}, Lcom/transsion/transfer/androidasync/ByteBufferList;-><init>()V

    .line 47
    .line 48
    .line 49
    iput-object p1, p0, Lcom/transsion/transfer/androidasync/v;->b:Lcom/transsion/transfer/androidasync/ByteBufferList;

    .line 50
    .line 51
    return-void

    .line 52
    :cond_0
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 53
    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_1
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 57
    .line 58
    .line 59
    iget-object p2, p0, Lcom/transsion/transfer/androidasync/v;->b:Lcom/transsion/transfer/androidasync/ByteBufferList;

    .line 60
    .line 61
    invoke-virtual {p2, p1}, Lcom/transsion/transfer/androidasync/ByteBufferList;->a(Ljava/nio/ByteBuffer;)Lcom/transsion/transfer/androidasync/ByteBufferList;

    .line 62
    .line 63
    .line 64
    return-void
.end method

.method public a(Lcom/transsion/transfer/androidasync/v$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/transfer/androidasync/v;->c:Lcom/transsion/transfer/androidasync/v$a;

    .line 2
    .line 3
    return-void
.end method
