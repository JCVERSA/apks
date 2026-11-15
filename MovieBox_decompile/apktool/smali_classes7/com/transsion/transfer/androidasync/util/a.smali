.class public Lcom/transsion/transfer/androidasync/util/a;
.super Ljava/lang/Object;
.source "source.java"


# instance fields
.field final a:I

.field b:I

.field c:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/transsion/transfer/androidasync/util/a;->b:I

    .line 6
    .line 7
    const/16 v0, 0x1000

    .line 8
    .line 9
    iput v0, p0, Lcom/transsion/transfer/androidasync/util/a;->c:I

    .line 10
    .line 11
    sget v0, Lcom/transsion/transfer/androidasync/ByteBufferList;->f:I

    .line 12
    .line 13
    iput v0, p0, Lcom/transsion/transfer/androidasync/util/a;->a:I

    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public a()Ljava/nio/ByteBuffer;
    .locals 1

    .line 1
    iget v0, p0, Lcom/transsion/transfer/androidasync/util/a;->b:I

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/transsion/transfer/androidasync/util/a;->b(I)Ljava/nio/ByteBuffer;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public b(I)Ljava/nio/ByteBuffer;
    .locals 1

    .line 1
    iget v0, p0, Lcom/transsion/transfer/androidasync/util/a;->c:I

    .line 2
    .line 3
    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    iget v0, p0, Lcom/transsion/transfer/androidasync/util/a;->a:I

    .line 8
    .line 9
    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    invoke-static {p1}, Lcom/transsion/transfer/androidasync/ByteBufferList;->t(I)Ljava/nio/ByteBuffer;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    return-object p1
.end method

.method public c()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/transsion/transfer/androidasync/util/a;->c:I

    .line 2
    .line 3
    return v0
.end method

.method public d(I)Lcom/transsion/transfer/androidasync/util/a;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    .line 3
    .line 4
    .line 5
    move-result p1

    .line 6
    iput p1, p0, Lcom/transsion/transfer/androidasync/util/a;->c:I

    .line 7
    .line 8
    return-object p0
.end method

.method public e(J)V
    .locals 0

    .line 1
    long-to-int p1, p1

    .line 2
    mul-int/lit8 p1, p1, 0x2

    .line 3
    .line 4
    iput p1, p0, Lcom/transsion/transfer/androidasync/util/a;->b:I

    .line 5
    .line 6
    return-void
.end method
