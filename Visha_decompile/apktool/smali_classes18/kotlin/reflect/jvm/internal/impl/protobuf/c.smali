.class public final Lkotlin/reflect/jvm/internal/impl/protobuf/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:[B

.field public final b:Z

.field public c:I

.field public d:I

.field public e:I

.field public final f:Ljava/io/InputStream;

.field public g:I

.field public h:Z

.field public i:I

.field public j:I

.field public k:I

.field public l:I

.field public m:I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/c;->h:Z

    const v1, 0x7fffffff

    iput v1, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/c;->j:I

    const/16 v1, 0x40

    iput v1, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/c;->l:I

    const/high16 v1, 0x4000000

    iput v1, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/c;->m:I

    const/16 v1, 0x1000

    new-array v1, v1, [B

    iput-object v1, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/c;->a:[B

    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/c;->c:I

    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/c;->e:I

    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/c;->i:I

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/c;->f:Ljava/io/InputStream;

    iput-boolean v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/c;->b:Z

    return-void
.end method

.method public static A(ILjava/io/InputStream;)I
    .locals 3

    and-int/lit16 v0, p0, 0x80

    if-nez v0, :cond_0

    return p0

    :cond_0
    and-int/lit8 p0, p0, 0x7f

    const/4 v0, 0x7

    :goto_0
    const/16 v1, 0x20

    const/4 v2, -0x1

    if-ge v0, v1, :cond_3

    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v1

    if-eq v1, v2, :cond_2

    and-int/lit8 v2, v1, 0x7f

    shl-int/2addr v2, v0

    or-int/2addr p0, v2

    and-int/lit16 v1, v1, 0x80

    if-nez v1, :cond_1

    return p0

    :cond_1
    add-int/lit8 v0, v0, 0x7

    goto :goto_0

    :cond_2
    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lkotlin/reflect/jvm/internal/impl/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0

    :cond_3
    :goto_1
    const/16 v1, 0x40

    if-ge v0, v1, :cond_6

    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v1

    if-eq v1, v2, :cond_5

    and-int/lit16 v1, v1, 0x80

    if-nez v1, :cond_4

    return p0

    :cond_4
    add-int/lit8 v0, v0, 0x7

    goto :goto_1

    :cond_5
    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lkotlin/reflect/jvm/internal/impl/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0

    :cond_6
    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/protobuf/InvalidProtocolBufferException;->malformedVarint()Lkotlin/reflect/jvm/internal/impl/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0
.end method

.method public static b(I)I
    .locals 1

    ushr-int/lit8 v0, p0, 0x1

    and-int/lit8 p0, p0, 0x1

    neg-int p0, p0

    xor-int/2addr p0, v0

    return p0
.end method

.method public static c(J)J
    .locals 4

    const/4 v0, 0x1

    ushr-long v0, p0, v0

    const-wide/16 v2, 0x1

    and-long/2addr p0, v2

    neg-long p0, p0

    xor-long/2addr p0, v0

    return-wide p0
.end method

.method public static g(Ljava/io/InputStream;)Lkotlin/reflect/jvm/internal/impl/protobuf/c;
    .locals 1

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/protobuf/c;

    invoke-direct {v0, p0}, Lkotlin/reflect/jvm/internal/impl/protobuf/c;-><init>(Ljava/io/InputStream;)V

    return-object v0
.end method


# virtual methods
.method public B()J
    .locals 10

    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/c;->e:I

    iget v1, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/c;->c:I

    if-ne v1, v0, :cond_0

    goto/16 :goto_3

    :cond_0
    iget-object v2, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/c;->a:[B

    add-int/lit8 v3, v0, 0x1

    aget-byte v4, v2, v0

    if-ltz v4, :cond_1

    iput v3, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/c;->e:I

    int-to-long v0, v4

    return-wide v0

    :cond_1
    sub-int/2addr v1, v3

    const/16 v5, 0x9

    if-ge v1, v5, :cond_2

    goto/16 :goto_3

    :cond_2
    add-int/lit8 v1, v0, 0x2

    aget-byte v3, v2, v3

    shl-int/lit8 v3, v3, 0x7

    xor-int/2addr v3, v4

    int-to-long v3, v3

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-gez v7, :cond_3

    const-wide/16 v5, -0x80

    :goto_0
    xor-long v2, v3, v5

    goto/16 :goto_4

    :cond_3
    add-int/lit8 v7, v0, 0x3

    aget-byte v1, v2, v1

    shl-int/lit8 v1, v1, 0xe

    int-to-long v8, v1

    xor-long/2addr v3, v8

    cmp-long v1, v3, v5

    if-ltz v1, :cond_4

    const-wide/16 v0, 0x3f80

    :goto_1
    xor-long v2, v3, v0

    :goto_2
    move v1, v7

    goto/16 :goto_4

    :cond_4
    add-int/lit8 v1, v0, 0x4

    aget-byte v7, v2, v7

    shl-int/lit8 v7, v7, 0x15

    int-to-long v7, v7

    xor-long/2addr v3, v7

    cmp-long v7, v3, v5

    if-gez v7, :cond_5

    const-wide/32 v5, -0x1fc080

    goto :goto_0

    :cond_5
    add-int/lit8 v7, v0, 0x5

    aget-byte v1, v2, v1

    int-to-long v8, v1

    const/16 v1, 0x1c

    shl-long/2addr v8, v1

    xor-long/2addr v3, v8

    cmp-long v1, v3, v5

    if-ltz v1, :cond_6

    const-wide/32 v0, 0xfe03f80

    goto :goto_1

    :cond_6
    add-int/lit8 v1, v0, 0x6

    aget-byte v7, v2, v7

    int-to-long v7, v7

    const/16 v9, 0x23

    shl-long/2addr v7, v9

    xor-long/2addr v3, v7

    cmp-long v7, v3, v5

    if-gez v7, :cond_7

    const-wide v5, -0x7f01fc080L

    goto :goto_0

    :cond_7
    add-int/lit8 v7, v0, 0x7

    aget-byte v1, v2, v1

    int-to-long v8, v1

    const/16 v1, 0x2a

    shl-long/2addr v8, v1

    xor-long/2addr v3, v8

    cmp-long v1, v3, v5

    if-ltz v1, :cond_8

    const-wide v0, 0x3f80fe03f80L

    goto :goto_1

    :cond_8
    add-int/lit8 v1, v0, 0x8

    aget-byte v7, v2, v7

    int-to-long v7, v7

    const/16 v9, 0x31

    shl-long/2addr v7, v9

    xor-long/2addr v3, v7

    cmp-long v7, v3, v5

    if-gez v7, :cond_9

    const-wide v5, -0x1fc07f01fc080L

    goto :goto_0

    :cond_9
    add-int/lit8 v7, v0, 0x9

    aget-byte v1, v2, v1

    int-to-long v8, v1

    const/16 v1, 0x38

    shl-long/2addr v8, v1

    xor-long/2addr v3, v8

    const-wide v8, 0xfe03f80fe03f80L

    xor-long/2addr v3, v8

    cmp-long v1, v3, v5

    if-gez v1, :cond_b

    add-int/lit8 v1, v0, 0xa

    aget-byte v0, v2, v7

    int-to-long v7, v0

    cmp-long v0, v7, v5

    if-gez v0, :cond_a

    :goto_3
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/protobuf/c;->C()J

    move-result-wide v0

    return-wide v0

    :cond_a
    move-wide v2, v3

    goto :goto_4

    :cond_b
    move-wide v2, v3

    goto/16 :goto_2

    :goto_4
    iput v1, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/c;->e:I

    return-wide v2
.end method

.method public C()J
    .locals 6

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    :goto_0
    const/16 v3, 0x40

    if-ge v2, v3, :cond_1

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/protobuf/c;->v()B

    move-result v3

    and-int/lit8 v4, v3, 0x7f

    int-to-long v4, v4

    shl-long/2addr v4, v2

    or-long/2addr v0, v4

    and-int/lit16 v3, v3, 0x80

    if-nez v3, :cond_0

    return-wide v0

    :cond_0
    add-int/lit8 v2, v2, 0x7

    goto :goto_0

    :cond_1
    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/protobuf/InvalidProtocolBufferException;->malformedVarint()Lkotlin/reflect/jvm/internal/impl/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0
.end method

.method public D()I
    .locals 0

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/protobuf/c;->x()I

    move-result p0

    return p0
.end method

.method public E()J
    .locals 2

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/protobuf/c;->y()J

    move-result-wide v0

    return-wide v0
.end method

.method public F()I
    .locals 0

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/protobuf/c;->z()I

    move-result p0

    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/protobuf/c;->b(I)I

    move-result p0

    return p0
.end method

.method public G()J
    .locals 2

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/protobuf/c;->B()J

    move-result-wide v0

    invoke-static {v0, v1}, Lkotlin/reflect/jvm/internal/impl/protobuf/c;->c(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public H()Ljava/lang/String;
    .locals 5

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/protobuf/c;->z()I

    move-result v0

    iget v1, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/c;->c:I

    iget v2, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/c;->e:I

    sub-int/2addr v1, v2

    const-string v3, "UTF-8"

    if-gt v0, v1, :cond_0

    if-lez v0, :cond_0

    new-instance v1, Ljava/lang/String;

    iget-object v4, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/c;->a:[B

    invoke-direct {v1, v4, v2, v0, v3}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    iget v2, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/c;->e:I

    add-int/2addr v2, v0

    iput v2, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/c;->e:I

    return-object v1

    :cond_0
    if-nez v0, :cond_1

    const-string p0, ""

    return-object p0

    :cond_1
    new-instance v1, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lkotlin/reflect/jvm/internal/impl/protobuf/c;->w(I)[B

    move-result-object p0

    invoke-direct {v1, p0, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object v1
.end method

.method public I()Ljava/lang/String;
    .locals 4

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/protobuf/c;->z()I

    move-result v0

    iget v1, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/c;->e:I

    iget v2, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/c;->c:I

    sub-int/2addr v2, v1

    if-gt v0, v2, :cond_0

    if-lez v0, :cond_0

    iget-object v2, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/c;->a:[B

    add-int v3, v1, v0

    iput v3, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/c;->e:I

    goto :goto_0

    :cond_0
    if-nez v0, :cond_1

    const-string p0, ""

    return-object p0

    :cond_1
    invoke-virtual {p0, v0}, Lkotlin/reflect/jvm/internal/impl/protobuf/c;->w(I)[B

    move-result-object v2

    const/4 v1, 0x0

    :goto_0
    add-int p0, v1, v0

    invoke-static {v2, v1, p0}, Likb;->f([BII)Z

    move-result p0

    if-eqz p0, :cond_2

    new-instance p0, Ljava/lang/String;

    const-string v3, "UTF-8"

    invoke-direct {p0, v2, v1, v0, v3}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    return-object p0

    :cond_2
    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/protobuf/InvalidProtocolBufferException;->invalidUtf8()Lkotlin/reflect/jvm/internal/impl/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0
.end method

.method public J()I
    .locals 1

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/protobuf/c;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/c;->g:I

    return v0

    :cond_0
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/protobuf/c;->z()I

    move-result v0

    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/c;->g:I

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat;->a(I)I

    move-result v0

    if-eqz v0, :cond_1

    iget p0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/c;->g:I

    return p0

    :cond_1
    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/protobuf/InvalidProtocolBufferException;->invalidTag()Lkotlin/reflect/jvm/internal/impl/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0
.end method

.method public K()I
    .locals 0

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/protobuf/c;->z()I

    move-result p0

    return p0
.end method

.method public L()J
    .locals 2

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/protobuf/c;->B()J

    move-result-wide v0

    return-wide v0
.end method

.method public final M()V
    .locals 3

    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/c;->c:I

    iget v1, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/c;->d:I

    add-int/2addr v0, v1

    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/c;->c:I

    iget v1, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/c;->i:I

    add-int/2addr v1, v0

    iget v2, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/c;->j:I

    if-le v1, v2, :cond_0

    sub-int/2addr v1, v2

    iput v1, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/c;->d:I

    sub-int/2addr v0, v1

    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/c;->c:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/c;->d:I

    :goto_0
    return-void
.end method

.method public final N(I)V
    .locals 0

    invoke-virtual {p0, p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/c;->S(I)Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lkotlin/reflect/jvm/internal/impl/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0
.end method

.method public O(ILkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;)Z
    .locals 4

    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat;->b(I)I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_5

    if-eq v0, v1, :cond_4

    const/4 v2, 0x2

    if-eq v0, v2, :cond_3

    const/4 v2, 0x3

    const/4 v3, 0x4

    if-eq v0, v2, :cond_2

    if-eq v0, v3, :cond_1

    const/4 v2, 0x5

    if-ne v0, v2, :cond_0

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/protobuf/c;->x()I

    move-result p0

    invoke-virtual {p2, p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->n0(I)V

    invoke-virtual {p2, p0}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->T(I)V

    return v1

    :cond_0
    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/protobuf/InvalidProtocolBufferException;->invalidWireType()Lkotlin/reflect/jvm/internal/impl/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0

    :cond_1
    const/4 p0, 0x0

    return p0

    :cond_2
    invoke-virtual {p2, p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->n0(I)V

    invoke-virtual {p0, p2}, Lkotlin/reflect/jvm/internal/impl/protobuf/c;->P(Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;)V

    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat;->a(I)I

    move-result p1

    invoke-static {p1, v3}, Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat;->c(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/c;->a(I)V

    invoke-virtual {p2, p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->n0(I)V

    return v1

    :cond_3
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/protobuf/c;->k()Lpo0;

    move-result-object p0

    invoke-virtual {p2, p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->n0(I)V

    invoke-virtual {p2, p0}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->O(Lpo0;)V

    return v1

    :cond_4
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/protobuf/c;->y()J

    move-result-wide v2

    invoke-virtual {p2, p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->n0(I)V

    invoke-virtual {p2, v2, v3}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->U(J)V

    return v1

    :cond_5
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/protobuf/c;->s()J

    move-result-wide v2

    invoke-virtual {p2, p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->n0(I)V

    invoke-virtual {p2, v2, v3}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->y0(J)V

    return v1
.end method

.method public P(Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;)V
    .locals 1

    :cond_0
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/protobuf/c;->J()I

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, v0, p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/c;->O(ILkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;)Z

    move-result v0

    if-nez v0, :cond_0

    :cond_1
    return-void
.end method

.method public Q(I)V
    .locals 2

    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/c;->c:I

    iget v1, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/c;->e:I

    sub-int/2addr v0, v1

    if-gt p1, v0, :cond_0

    if-ltz p1, :cond_0

    add-int/2addr v1, p1

    iput v1, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/c;->e:I

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/c;->R(I)V

    :goto_0
    return-void
.end method

.method public final R(I)V
    .locals 4

    if-ltz p1, :cond_2

    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/c;->i:I

    iget v1, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/c;->e:I

    add-int v2, v0, v1

    add-int/2addr v2, p1

    iget v3, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/c;->j:I

    if-gt v2, v3, :cond_1

    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/c;->c:I

    sub-int v1, v0, v1

    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/c;->e:I

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lkotlin/reflect/jvm/internal/impl/protobuf/c;->N(I)V

    :goto_0
    sub-int v2, p1, v1

    iget v3, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/c;->c:I

    if-le v2, v3, :cond_0

    add-int/2addr v1, v3

    iput v3, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/c;->e:I

    invoke-virtual {p0, v0}, Lkotlin/reflect/jvm/internal/impl/protobuf/c;->N(I)V

    goto :goto_0

    :cond_0
    iput v2, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/c;->e:I

    return-void

    :cond_1
    sub-int/2addr v3, v0

    sub-int/2addr v3, v1

    invoke-virtual {p0, v3}, Lkotlin/reflect/jvm/internal/impl/protobuf/c;->Q(I)V

    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lkotlin/reflect/jvm/internal/impl/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0

    :cond_2
    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/protobuf/InvalidProtocolBufferException;->negativeSize()Lkotlin/reflect/jvm/internal/impl/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0
.end method

.method public final S(I)Z
    .locals 5

    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/c;->e:I

    add-int v1, v0, p1

    iget v2, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/c;->c:I

    if-le v1, v2, :cond_7

    iget v1, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/c;->i:I

    add-int/2addr v1, v0

    add-int/2addr v1, p1

    iget v3, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/c;->j:I

    const/4 v4, 0x0

    if-le v1, v3, :cond_0

    return v4

    :cond_0
    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/c;->f:Ljava/io/InputStream;

    if-eqz v1, :cond_6

    if-lez v0, :cond_2

    if-le v2, v0, :cond_1

    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/c;->a:[B

    sub-int/2addr v2, v0

    invoke-static {v1, v0, v1, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    iget v1, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/c;->i:I

    add-int/2addr v1, v0

    iput v1, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/c;->i:I

    iget v1, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/c;->c:I

    sub-int/2addr v1, v0

    iput v1, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/c;->c:I

    iput v4, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/c;->e:I

    :cond_2
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/c;->f:Ljava/io/InputStream;

    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/c;->a:[B

    iget v2, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/c;->c:I

    array-length v3, v1

    sub-int/2addr v3, v2

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    if-eqz v0, :cond_5

    const/4 v1, -0x1

    if-lt v0, v1, :cond_5

    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/c;->a:[B

    array-length v1, v1

    if-gt v0, v1, :cond_5

    if-lez v0, :cond_6

    iget v1, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/c;->c:I

    add-int/2addr v1, v0

    iput v1, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/c;->c:I

    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/c;->i:I

    add-int/2addr v0, p1

    iget v1, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/c;->m:I

    sub-int/2addr v0, v1

    if-gtz v0, :cond_4

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/protobuf/c;->M()V

    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/c;->c:I

    if-lt v0, p1, :cond_3

    const/4 p0, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {p0, p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/c;->S(I)Z

    move-result p0

    :goto_0
    return p0

    :cond_4
    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/protobuf/InvalidProtocolBufferException;->sizeLimitExceeded()Lkotlin/reflect/jvm/internal/impl/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0

    :cond_5
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p1, Ljava/lang/StringBuilder;

    const/16 v1, 0x66

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "InputStream#read(byte[]) returned invalid result: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "\nThe InputStream implementation is buggy."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    return v4

    :cond_7
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x4d

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "refillBuffer() called when "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " bytes were already available in buffer"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public a(I)V
    .locals 0

    iget p0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/c;->g:I

    if-ne p0, p1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/protobuf/InvalidProtocolBufferException;->invalidEndTag()Lkotlin/reflect/jvm/internal/impl/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0
.end method

.method public final d(I)V
    .locals 2

    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/c;->c:I

    iget v1, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/c;->e:I

    sub-int/2addr v0, v1

    if-ge v0, p1, :cond_0

    invoke-virtual {p0, p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/c;->N(I)V

    :cond_0
    return-void
.end method

.method public e()I
    .locals 2

    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/c;->j:I

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    iget v1, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/c;->i:I

    iget p0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/c;->e:I

    add-int/2addr v1, p0

    sub-int/2addr v0, v1

    return v0
.end method

.method public f()Z
    .locals 2

    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/c;->e:I

    iget v1, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/c;->c:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lkotlin/reflect/jvm/internal/impl/protobuf/c;->S(I)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public h(I)V
    .locals 0

    iput p1, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/c;->j:I

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/protobuf/c;->M()V

    return-void
.end method

.method public i(I)I
    .locals 2

    if-ltz p1, :cond_1

    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/c;->i:I

    iget v1, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/c;->e:I

    add-int/2addr v0, v1

    add-int/2addr p1, v0

    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/c;->j:I

    if-gt p1, v0, :cond_0

    iput p1, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/c;->j:I

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/protobuf/c;->M()V

    return v0

    :cond_0
    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lkotlin/reflect/jvm/internal/impl/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0

    :cond_1
    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/protobuf/InvalidProtocolBufferException;->negativeSize()Lkotlin/reflect/jvm/internal/impl/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0
.end method

.method public j()Z
    .locals 4

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/protobuf/c;->B()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public k()Lpo0;
    .locals 4

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/protobuf/c;->z()I

    move-result v0

    iget v1, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/c;->c:I

    iget v2, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/c;->e:I

    sub-int/2addr v1, v2

    if-gt v0, v1, :cond_1

    if-lez v0, :cond_1

    iget-boolean v1, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/c;->b:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/c;->h:Z

    if-eqz v1, :cond_0

    new-instance v1, Llk0;

    iget-object v2, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/c;->a:[B

    iget v3, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/c;->e:I

    invoke-direct {v1, v2, v3, v0}, Llk0;-><init>([BII)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/c;->a:[B

    invoke-static {v1, v2, v0}, Lpo0;->j([BII)Lpo0;

    move-result-object v1

    :goto_0
    iget v2, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/c;->e:I

    add-int/2addr v2, v0

    iput v2, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/c;->e:I

    return-object v1

    :cond_1
    if-nez v0, :cond_2

    sget-object p0, Lpo0;->b:Lpo0;

    return-object p0

    :cond_2
    new-instance v1, Lqm5;

    invoke-virtual {p0, v0}, Lkotlin/reflect/jvm/internal/impl/protobuf/c;->w(I)[B

    move-result-object p0

    invoke-direct {v1, p0}, Lqm5;-><init>([B)V

    return-object v1
.end method

.method public l()D
    .locals 2

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/protobuf/c;->y()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public m()I
    .locals 0

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/protobuf/c;->z()I

    move-result p0

    return p0
.end method

.method public n()I
    .locals 0

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/protobuf/c;->x()I

    move-result p0

    return p0
.end method

.method public o()J
    .locals 2

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/protobuf/c;->y()J

    move-result-wide v0

    return-wide v0
.end method

.method public p()F
    .locals 0

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/protobuf/c;->x()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p0

    return p0
.end method

.method public q(ILkotlin/reflect/jvm/internal/impl/protobuf/g$a;Lkotlin/reflect/jvm/internal/impl/protobuf/d;)V
    .locals 2

    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/c;->k:I

    iget v1, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/c;->l:I

    if-ge v0, v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/c;->k:I

    invoke-interface {p2, p0, p3}, Lkotlin/reflect/jvm/internal/impl/protobuf/g$a;->b(Lkotlin/reflect/jvm/internal/impl/protobuf/c;Lkotlin/reflect/jvm/internal/impl/protobuf/d;)Lkotlin/reflect/jvm/internal/impl/protobuf/g$a;

    const/4 p2, 0x4

    invoke-static {p1, p2}, Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat;->c(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/c;->a(I)V

    iget p1, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/c;->k:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/c;->k:I

    return-void

    :cond_0
    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/protobuf/InvalidProtocolBufferException;->recursionLimitExceeded()Lkotlin/reflect/jvm/internal/impl/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0
.end method

.method public r()I
    .locals 0

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/protobuf/c;->z()I

    move-result p0

    return p0
.end method

.method public s()J
    .locals 2

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/protobuf/c;->B()J

    move-result-wide v0

    return-wide v0
.end method

.method public t(Lcx7;Lkotlin/reflect/jvm/internal/impl/protobuf/d;)Lkotlin/reflect/jvm/internal/impl/protobuf/g;
    .locals 3

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/protobuf/c;->z()I

    move-result v0

    iget v1, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/c;->k:I

    iget v2, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/c;->l:I

    if-ge v1, v2, :cond_0

    invoke-virtual {p0, v0}, Lkotlin/reflect/jvm/internal/impl/protobuf/c;->i(I)I

    move-result v0

    iget v1, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/c;->k:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/c;->k:I

    invoke-interface {p1, p0, p2}, Lcx7;->c(Lkotlin/reflect/jvm/internal/impl/protobuf/c;Lkotlin/reflect/jvm/internal/impl/protobuf/d;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlin/reflect/jvm/internal/impl/protobuf/g;

    const/4 p2, 0x0

    invoke-virtual {p0, p2}, Lkotlin/reflect/jvm/internal/impl/protobuf/c;->a(I)V

    iget p2, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/c;->k:I

    add-int/lit8 p2, p2, -0x1

    iput p2, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/c;->k:I

    invoke-virtual {p0, v0}, Lkotlin/reflect/jvm/internal/impl/protobuf/c;->h(I)V

    return-object p1

    :cond_0
    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/protobuf/InvalidProtocolBufferException;->recursionLimitExceeded()Lkotlin/reflect/jvm/internal/impl/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0
.end method

.method public u(Lkotlin/reflect/jvm/internal/impl/protobuf/g$a;Lkotlin/reflect/jvm/internal/impl/protobuf/d;)V
    .locals 3

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/protobuf/c;->z()I

    move-result v0

    iget v1, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/c;->k:I

    iget v2, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/c;->l:I

    if-ge v1, v2, :cond_0

    invoke-virtual {p0, v0}, Lkotlin/reflect/jvm/internal/impl/protobuf/c;->i(I)I

    move-result v0

    iget v1, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/c;->k:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/c;->k:I

    invoke-interface {p1, p0, p2}, Lkotlin/reflect/jvm/internal/impl/protobuf/g$a;->b(Lkotlin/reflect/jvm/internal/impl/protobuf/c;Lkotlin/reflect/jvm/internal/impl/protobuf/d;)Lkotlin/reflect/jvm/internal/impl/protobuf/g$a;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/c;->a(I)V

    iget p1, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/c;->k:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/c;->k:I

    invoke-virtual {p0, v0}, Lkotlin/reflect/jvm/internal/impl/protobuf/c;->h(I)V

    return-void

    :cond_0
    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/protobuf/InvalidProtocolBufferException;->recursionLimitExceeded()Lkotlin/reflect/jvm/internal/impl/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0
.end method

.method public v()B
    .locals 3

    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/c;->e:I

    iget v1, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/c;->c:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lkotlin/reflect/jvm/internal/impl/protobuf/c;->N(I)V

    :cond_0
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/c;->a:[B

    iget v1, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/c;->e:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/c;->e:I

    aget-byte p0, v0, v1

    return p0
.end method

.method public final w(I)[B
    .locals 12

    if-gtz p1, :cond_1

    if-nez p1, :cond_0

    sget-object p0, Lkotlin/reflect/jvm/internal/impl/protobuf/f;->a:[B

    return-object p0

    :cond_0
    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/protobuf/InvalidProtocolBufferException;->negativeSize()Lkotlin/reflect/jvm/internal/impl/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0

    :cond_1
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/c;->i:I

    iget v1, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/c;->e:I

    add-int v2, v0, v1

    add-int/2addr v2, p1

    iget v3, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/c;->j:I

    if-gt v2, v3, :cond_8

    const/16 v2, 0x1000

    const/4 v3, 0x0

    if-ge p1, v2, :cond_2

    new-array v0, p1, [B

    iget v2, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/c;->c:I

    sub-int/2addr v2, v1

    iget-object v4, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/c;->a:[B

    invoke-static {v4, v1, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v1, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/c;->c:I

    iput v1, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/c;->e:I

    sub-int/2addr p1, v2

    invoke-virtual {p0, p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/c;->d(I)V

    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/c;->a:[B

    invoke-static {v1, v3, v0, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput p1, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/c;->e:I

    return-object v0

    :cond_2
    iget v4, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/c;->c:I

    add-int/2addr v0, v4

    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/c;->i:I

    iput v3, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/c;->e:I

    iput v3, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/c;->c:I

    sub-int/2addr v4, v1

    sub-int v0, p1, v4

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    if-lez v0, :cond_6

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v6

    new-array v7, v6, [B

    move v8, v3

    :goto_1
    if-ge v8, v6, :cond_5

    iget-object v9, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/c;->f:Ljava/io/InputStream;

    const/4 v10, -0x1

    if-nez v9, :cond_3

    move v9, v10

    goto :goto_2

    :cond_3
    sub-int v11, v6, v8

    invoke-virtual {v9, v7, v8, v11}, Ljava/io/InputStream;->read([BII)I

    move-result v9

    :goto_2
    if-eq v9, v10, :cond_4

    iget v10, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/c;->i:I

    add-int/2addr v10, v9

    iput v10, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/c;->i:I

    add-int/2addr v8, v9

    goto :goto_1

    :cond_4
    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lkotlin/reflect/jvm/internal/impl/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0

    :cond_5
    sub-int/2addr v0, v6

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_6
    new-array p1, p1, [B

    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/c;->a:[B

    invoke-static {p0, v1, p1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    array-length v1, v0

    invoke-static {v0, v3, p1, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v0, v0

    add-int/2addr v4, v0

    goto :goto_3

    :cond_7
    return-object p1

    :cond_8
    sub-int/2addr v3, v0

    sub-int/2addr v3, v1

    invoke-virtual {p0, v3}, Lkotlin/reflect/jvm/internal/impl/protobuf/c;->Q(I)V

    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lkotlin/reflect/jvm/internal/impl/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0
.end method

.method public x()I
    .locals 3

    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/c;->e:I

    iget v1, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/c;->c:I

    sub-int/2addr v1, v0

    const/4 v2, 0x4

    if-ge v1, v2, :cond_0

    invoke-virtual {p0, v2}, Lkotlin/reflect/jvm/internal/impl/protobuf/c;->N(I)V

    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/c;->e:I

    :cond_0
    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/c;->a:[B

    add-int/lit8 v2, v0, 0x4

    iput v2, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/c;->e:I

    aget-byte p0, v1, v0

    and-int/lit16 p0, p0, 0xff

    add-int/lit8 v2, v0, 0x1

    aget-byte v2, v1, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr p0, v2

    add-int/lit8 v2, v0, 0x2

    aget-byte v2, v1, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr p0, v2

    add-int/lit8 v0, v0, 0x3

    aget-byte v0, v1, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    or-int/2addr p0, v0

    return p0
.end method

.method public y()J
    .locals 9

    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/c;->e:I

    iget v1, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/c;->c:I

    sub-int/2addr v1, v0

    const/16 v2, 0x8

    if-ge v1, v2, :cond_0

    invoke-virtual {p0, v2}, Lkotlin/reflect/jvm/internal/impl/protobuf/c;->N(I)V

    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/c;->e:I

    :cond_0
    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/c;->a:[B

    add-int/lit8 v3, v0, 0x8

    iput v3, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/c;->e:I

    aget-byte p0, v1, v0

    int-to-long v3, p0

    const-wide/16 v5, 0xff

    and-long/2addr v3, v5

    add-int/lit8 p0, v0, 0x1

    aget-byte p0, v1, p0

    int-to-long v7, p0

    and-long/2addr v7, v5

    shl-long/2addr v7, v2

    or-long v2, v3, v7

    add-int/lit8 p0, v0, 0x2

    aget-byte p0, v1, p0

    int-to-long v7, p0

    and-long/2addr v7, v5

    const/16 p0, 0x10

    shl-long/2addr v7, p0

    or-long/2addr v2, v7

    add-int/lit8 p0, v0, 0x3

    aget-byte p0, v1, p0

    int-to-long v7, p0

    and-long/2addr v7, v5

    const/16 p0, 0x18

    shl-long/2addr v7, p0

    or-long/2addr v2, v7

    add-int/lit8 p0, v0, 0x4

    aget-byte p0, v1, p0

    int-to-long v7, p0

    and-long/2addr v7, v5

    const/16 p0, 0x20

    shl-long/2addr v7, p0

    or-long/2addr v2, v7

    add-int/lit8 p0, v0, 0x5

    aget-byte p0, v1, p0

    int-to-long v7, p0

    and-long/2addr v7, v5

    const/16 p0, 0x28

    shl-long/2addr v7, p0

    or-long/2addr v2, v7

    add-int/lit8 p0, v0, 0x6

    aget-byte p0, v1, p0

    int-to-long v7, p0

    and-long/2addr v7, v5

    const/16 p0, 0x30

    shl-long/2addr v7, p0

    or-long/2addr v2, v7

    add-int/lit8 v0, v0, 0x7

    aget-byte p0, v1, v0

    int-to-long v0, p0

    and-long/2addr v0, v5

    const/16 p0, 0x38

    shl-long/2addr v0, p0

    or-long/2addr v0, v2

    return-wide v0
.end method

.method public z()I
    .locals 11

    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/c;->e:I

    iget v1, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/c;->c:I

    if-ne v1, v0, :cond_0

    goto/16 :goto_2

    :cond_0
    iget-object v2, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/c;->a:[B

    add-int/lit8 v3, v0, 0x1

    aget-byte v4, v2, v0

    if-ltz v4, :cond_1

    iput v3, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/c;->e:I

    return v4

    :cond_1
    sub-int/2addr v1, v3

    const/16 v5, 0x9

    if-ge v1, v5, :cond_2

    goto :goto_2

    :cond_2
    add-int/lit8 v1, v0, 0x2

    aget-byte v3, v2, v3

    shl-int/lit8 v3, v3, 0x7

    xor-int/2addr v3, v4

    int-to-long v4, v3

    const-wide/16 v6, 0x0

    cmp-long v8, v4, v6

    if-gez v8, :cond_3

    const-wide/16 v2, -0x80

    xor-long/2addr v2, v4

    long-to-int v0, v2

    goto/16 :goto_3

    :cond_3
    add-int/lit8 v4, v0, 0x3

    aget-byte v1, v2, v1

    shl-int/lit8 v1, v1, 0xe

    xor-int/2addr v1, v3

    int-to-long v8, v1

    cmp-long v3, v8, v6

    if-ltz v3, :cond_4

    const-wide/16 v0, 0x3f80

    xor-long/2addr v0, v8

    long-to-int v0, v0

    :goto_0
    move v1, v4

    goto :goto_3

    :cond_4
    add-int/lit8 v3, v0, 0x4

    aget-byte v4, v2, v4

    shl-int/lit8 v4, v4, 0x15

    xor-int/2addr v1, v4

    int-to-long v4, v1

    cmp-long v6, v4, v6

    if-gez v6, :cond_5

    const-wide/32 v0, -0x1fc080

    xor-long/2addr v0, v4

    long-to-int v0, v0

    :goto_1
    move v1, v3

    goto :goto_3

    :cond_5
    add-int/lit8 v4, v0, 0x5

    aget-byte v3, v2, v3

    shl-int/lit8 v5, v3, 0x1c

    xor-int/2addr v1, v5

    int-to-long v5, v1

    const-wide/32 v7, 0xfe03f80

    xor-long/2addr v5, v7

    long-to-int v1, v5

    if-gez v3, :cond_7

    add-int/lit8 v3, v0, 0x6

    aget-byte v4, v2, v4

    if-gez v4, :cond_8

    add-int/lit8 v4, v0, 0x7

    aget-byte v3, v2, v3

    if-gez v3, :cond_7

    add-int/lit8 v3, v0, 0x8

    aget-byte v4, v2, v4

    if-gez v4, :cond_8

    add-int/lit8 v4, v0, 0x9

    aget-byte v3, v2, v3

    if-gez v3, :cond_7

    add-int/lit8 v0, v0, 0xa

    aget-byte v2, v2, v4

    if-gez v2, :cond_6

    :goto_2
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/protobuf/c;->C()J

    move-result-wide v0

    long-to-int p0, v0

    return p0

    :cond_6
    move v10, v1

    move v1, v0

    move v0, v10

    goto :goto_3

    :cond_7
    move v0, v1

    goto :goto_0

    :cond_8
    move v0, v1

    goto :goto_1

    :goto_3
    iput v1, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/c;->e:I

    return v0
.end method
