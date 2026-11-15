.class public final Lcom/yandex/mobile/ads/impl/lg0$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/mobile/ads/impl/lg0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private a:I

.field private final b:Ljava/util/ArrayList;

.field private final c:Lokio/BufferedSource;

.field public d:[Lcom/yandex/mobile/ads/impl/lf0;

.field private e:I

.field public f:I

.field public g:I


# direct methods
.method public synthetic constructor <init>(Lcom/yandex/mobile/ads/impl/nh0$b;)V
    .locals 1

    const/16 v0, 0x1000

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/yandex/mobile/ads/impl/lg0$a;-><init>(Lcom/yandex/mobile/ads/impl/nh0$b;I)V

    return-void
.end method

.method public constructor <init>(Lcom/yandex/mobile/ads/impl/nh0$b;I)V
    .locals 1

    .line 2
    const-string v0, "source"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput p2, p0, Lcom/yandex/mobile/ads/impl/lg0$a;->a:I

    .line 5
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/lg0$a;->b:Ljava/util/ArrayList;

    .line 6
    invoke-static {p1}, Lokio/Okio;->buffer(Lokio/Source;)Lokio/BufferedSource;

    move-result-object p1

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/lg0$a;->c:Lokio/BufferedSource;

    const/16 p1, 0x8

    .line 7
    new-array p1, p1, [Lcom/yandex/mobile/ads/impl/lf0;

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/lg0$a;->d:[Lcom/yandex/mobile/ads/impl/lf0;

    const/4 p1, 0x7

    .line 8
    iput p1, p0, Lcom/yandex/mobile/ads/impl/lg0$a;->e:I

    return-void
.end method

.method private final a(I)I
    .locals 4

    const/4 v0, 0x0

    if-lez p1, :cond_1

    .line 1
    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/lg0$a;->d:[Lcom/yandex/mobile/ads/impl/lf0;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    .line 2
    :goto_0
    iget v2, p0, Lcom/yandex/mobile/ads/impl/lg0$a;->e:I

    if-lt v1, v2, :cond_0

    if-lez p1, :cond_0

    .line 3
    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/lg0$a;->d:[Lcom/yandex/mobile/ads/impl/lf0;

    aget-object v2, v2, v1

    invoke-static {v2}, Ly45;->g(Ljava/lang/Object;)V

    .line 4
    iget v2, v2, Lcom/yandex/mobile/ads/impl/lf0;->c:I

    sub-int/2addr p1, v2

    .line 5
    iget v3, p0, Lcom/yandex/mobile/ads/impl/lg0$a;->g:I

    sub-int/2addr v3, v2

    iput v3, p0, Lcom/yandex/mobile/ads/impl/lg0$a;->g:I

    .line 6
    iget v2, p0, Lcom/yandex/mobile/ads/impl/lg0$a;->f:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/yandex/mobile/ads/impl/lg0$a;->f:I

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 7
    :cond_0
    iget-object p1, p0, Lcom/yandex/mobile/ads/impl/lg0$a;->d:[Lcom/yandex/mobile/ads/impl/lf0;

    add-int/lit8 v2, v2, 0x1

    add-int v1, v2, v0

    .line 8
    iget v3, p0, Lcom/yandex/mobile/ads/impl/lg0$a;->f:I

    .line 9
    invoke-static {p1, v2, p1, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 10
    iget p1, p0, Lcom/yandex/mobile/ads/impl/lg0$a;->e:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/yandex/mobile/ads/impl/lg0$a;->e:I

    :cond_1
    return v0
.end method

.method private final a(Lcom/yandex/mobile/ads/impl/lf0;)V
    .locals 9

    .line 13
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/lg0$a;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 14
    iget v0, p1, Lcom/yandex/mobile/ads/impl/lf0;->c:I

    .line 15
    iget v1, p0, Lcom/yandex/mobile/ads/impl/lg0$a;->a:I

    const/4 v2, 0x0

    if-le v0, v1, :cond_0

    .line 16
    iget-object v3, p0, Lcom/yandex/mobile/ads/impl/lg0$a;->d:[Lcom/yandex/mobile/ads/impl/lf0;

    const/4 v7, 0x6

    const/4 v8, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v3 .. v8}, Lfi;->y([Ljava/lang/Object;Ljava/lang/Object;IIILjava/lang/Object;)V

    .line 17
    iget-object p1, p0, Lcom/yandex/mobile/ads/impl/lg0$a;->d:[Lcom/yandex/mobile/ads/impl/lf0;

    array-length p1, p1

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/yandex/mobile/ads/impl/lg0$a;->e:I

    .line 18
    iput v2, p0, Lcom/yandex/mobile/ads/impl/lg0$a;->f:I

    .line 19
    iput v2, p0, Lcom/yandex/mobile/ads/impl/lg0$a;->g:I

    return-void

    .line 20
    :cond_0
    iget v3, p0, Lcom/yandex/mobile/ads/impl/lg0$a;->g:I

    add-int/2addr v3, v0

    sub-int/2addr v3, v1

    .line 21
    invoke-direct {p0, v3}, Lcom/yandex/mobile/ads/impl/lg0$a;->a(I)I

    .line 22
    iget v1, p0, Lcom/yandex/mobile/ads/impl/lg0$a;->f:I

    add-int/lit8 v1, v1, 0x1

    iget-object v3, p0, Lcom/yandex/mobile/ads/impl/lg0$a;->d:[Lcom/yandex/mobile/ads/impl/lf0;

    array-length v4, v3

    if-le v1, v4, :cond_1

    .line 23
    array-length v1, v3

    mul-int/lit8 v1, v1, 0x2

    new-array v1, v1, [Lcom/yandex/mobile/ads/impl/lf0;

    .line 24
    array-length v4, v3

    array-length v5, v3

    invoke-static {v3, v2, v1, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 25
    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/lg0$a;->d:[Lcom/yandex/mobile/ads/impl/lf0;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/yandex/mobile/ads/impl/lg0$a;->e:I

    .line 26
    iput-object v1, p0, Lcom/yandex/mobile/ads/impl/lg0$a;->d:[Lcom/yandex/mobile/ads/impl/lf0;

    .line 27
    :cond_1
    iget v1, p0, Lcom/yandex/mobile/ads/impl/lg0$a;->e:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lcom/yandex/mobile/ads/impl/lg0$a;->e:I

    .line 28
    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/lg0$a;->d:[Lcom/yandex/mobile/ads/impl/lf0;

    aput-object p1, v2, v1

    .line 29
    iget p1, p0, Lcom/yandex/mobile/ads/impl/lg0$a;->f:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/yandex/mobile/ads/impl/lg0$a;->f:I

    .line 30
    iget p1, p0, Lcom/yandex/mobile/ads/impl/lg0$a;->g:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/yandex/mobile/ads/impl/lg0$a;->g:I

    return-void
.end method

.method private final b(I)Lokio/ByteString;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-ltz p1, :cond_0

    .line 1
    invoke-static {}, Lcom/yandex/mobile/ads/impl/lg0;->b()[Lcom/yandex/mobile/ads/impl/lf0;

    move-result-object v0

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    if-gt p1, v0, :cond_0

    .line 2
    invoke-static {}, Lcom/yandex/mobile/ads/impl/lg0;->b()[Lcom/yandex/mobile/ads/impl/lf0;

    move-result-object p0

    aget-object p0, p0, p1

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/lf0;->a:Lokio/ByteString;

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {}, Lcom/yandex/mobile/ads/impl/lg0;->b()[Lcom/yandex/mobile/ads/impl/lf0;

    move-result-object v0

    array-length v0, v0

    sub-int v0, p1, v0

    .line 4
    iget v1, p0, Lcom/yandex/mobile/ads/impl/lg0$a;->e:I

    add-int/lit8 v1, v1, 0x1

    add-int/2addr v1, v0

    if-ltz v1, :cond_1

    .line 5
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/lg0$a;->d:[Lcom/yandex/mobile/ads/impl/lf0;

    array-length v0, p0

    if-ge v1, v0, :cond_1

    .line 6
    aget-object p0, p0, v1

    invoke-static {p0}, Ly45;->g(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/lf0;->a:Lokio/ByteString;

    :goto_0
    return-object p0

    .line 7
    :cond_1
    new-instance p0, Ljava/io/IOException;

    add-int/lit8 p1, p1, 0x1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Header index too large "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private final c(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-ltz p1, :cond_0

    .line 28
    invoke-static {}, Lcom/yandex/mobile/ads/impl/lg0;->b()[Lcom/yandex/mobile/ads/impl/lf0;

    move-result-object v0

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    if-gt p1, v0, :cond_0

    .line 29
    invoke-static {}, Lcom/yandex/mobile/ads/impl/lg0;->b()[Lcom/yandex/mobile/ads/impl/lf0;

    move-result-object v0

    aget-object p1, v0, p1

    .line 30
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/lg0$a;->b:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 31
    :cond_0
    invoke-static {}, Lcom/yandex/mobile/ads/impl/lg0;->b()[Lcom/yandex/mobile/ads/impl/lf0;

    move-result-object v0

    array-length v0, v0

    sub-int v0, p1, v0

    .line 32
    iget v1, p0, Lcom/yandex/mobile/ads/impl/lg0$a;->e:I

    add-int/lit8 v1, v1, 0x1

    add-int/2addr v1, v0

    if-ltz v1, :cond_1

    .line 33
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/lg0$a;->d:[Lcom/yandex/mobile/ads/impl/lf0;

    array-length v2, v0

    if-ge v1, v2, :cond_1

    .line 34
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/lg0$a;->b:Ljava/util/ArrayList;

    aget-object p1, v0, v1

    invoke-static {p1}, Ly45;->g(Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void

    .line 35
    :cond_1
    new-instance p0, Ljava/io/IOException;

    add-int/lit8 p1, p1, 0x1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Header index too large "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final a(II)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    and-int/2addr p1, p2

    if-ge p1, p2, :cond_0

    return p1

    :cond_0
    const/4 p1, 0x0

    .line 31
    :goto_0
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/lg0$a;->c:Lokio/BufferedSource;

    invoke-interface {v0}, Lokio/BufferedSource;->readByte()B

    move-result v0

    sget-object v1, Lcom/yandex/mobile/ads/impl/g92;->a:[B

    and-int/lit16 v1, v0, 0xff

    and-int/lit16 v2, v0, 0x80

    if-eqz v2, :cond_1

    and-int/lit8 v0, v0, 0x7f

    shl-int/2addr v0, p1

    add-int/2addr p2, v0

    add-int/lit8 p1, p1, 0x7

    goto :goto_0

    :cond_1
    shl-int p0, v1, p1

    add-int/2addr p2, p0

    return p2
.end method

.method public final a()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/yandex/mobile/ads/impl/lf0;",
            ">;"
        }
    .end annotation

    .line 11
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/lg0$a;->b:Ljava/util/ArrayList;

    invoke-static {v0}, Li81;->b1(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    .line 12
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/lg0$a;->b:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    return-object v0
.end method

.method public final b()Lokio/ByteString;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 8
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/lg0$a;->c:Lokio/BufferedSource;

    invoke-interface {v0}, Lokio/BufferedSource;->readByte()B

    move-result v0

    sget-object v1, Lcom/yandex/mobile/ads/impl/g92;->a:[B

    and-int/lit16 v1, v0, 0xff

    const/16 v2, 0x80

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/16 v2, 0x7f

    .line 9
    invoke-virtual {p0, v1, v2}, Lcom/yandex/mobile/ads/impl/lg0$a;->a(II)I

    move-result v1

    int-to-long v1, v1

    if-eqz v0, :cond_1

    .line 10
    new-instance v0, Lokio/Buffer;

    invoke-direct {v0}, Lokio/Buffer;-><init>()V

    .line 11
    sget v3, Lcom/yandex/mobile/ads/impl/ii0;->d:I

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/lg0$a;->c:Lokio/BufferedSource;

    invoke-static {p0, v1, v2, v0}, Lcom/yandex/mobile/ads/impl/ii0;->a(Lokio/BufferedSource;JLokio/Buffer;)V

    .line 12
    invoke-virtual {v0}, Lokio/Buffer;->readByteString()Lokio/ByteString;

    move-result-object p0

    goto :goto_1

    .line 13
    :cond_1
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/lg0$a;->c:Lokio/BufferedSource;

    invoke-interface {p0, v1, v2}, Lokio/BufferedSource;->readByteString(J)Lokio/ByteString;

    move-result-object p0

    :goto_1
    return-object p0
.end method

.method public final c()V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x20

    const/16 v1, 0x40

    const/16 v2, 0x80

    .line 1
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/yandex/mobile/ads/impl/lg0$a;->c:Lokio/BufferedSource;

    invoke-interface {v3}, Lokio/BufferedSource;->exhausted()Z

    move-result v3

    if-nez v3, :cond_a

    .line 2
    iget-object v3, p0, Lcom/yandex/mobile/ads/impl/lg0$a;->c:Lokio/BufferedSource;

    invoke-interface {v3}, Lokio/BufferedSource;->readByte()B

    move-result v3

    invoke-static {v3}, Lcom/yandex/mobile/ads/impl/g92;->a(B)I

    move-result v3

    if-eq v3, v2, :cond_9

    and-int/lit16 v4, v3, 0x80

    if-ne v4, v2, :cond_1

    const/16 v4, 0x7f

    .line 3
    invoke-virtual {p0, v3, v4}, Lcom/yandex/mobile/ads/impl/lg0$a;->a(II)I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    .line 4
    invoke-direct {p0, v3}, Lcom/yandex/mobile/ads/impl/lg0$a;->c(I)V

    goto :goto_0

    :cond_1
    if-ne v3, v1, :cond_2

    .line 5
    sget v3, Lcom/yandex/mobile/ads/impl/lg0;->c:I

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/lg0$a;->b()Lokio/ByteString;

    move-result-object v3

    invoke-static {v3}, Lcom/yandex/mobile/ads/impl/lg0;->a(Lokio/ByteString;)Lokio/ByteString;

    move-result-object v3

    .line 6
    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/lg0$a;->b()Lokio/ByteString;

    move-result-object v4

    .line 7
    new-instance v5, Lcom/yandex/mobile/ads/impl/lf0;

    invoke-direct {v5, v3, v4}, Lcom/yandex/mobile/ads/impl/lf0;-><init>(Lokio/ByteString;Lokio/ByteString;)V

    invoke-direct {p0, v5}, Lcom/yandex/mobile/ads/impl/lg0$a;->a(Lcom/yandex/mobile/ads/impl/lf0;)V

    goto :goto_0

    :cond_2
    and-int/lit8 v4, v3, 0x40

    if-ne v4, v1, :cond_3

    const/16 v4, 0x3f

    .line 8
    invoke-virtual {p0, v3, v4}, Lcom/yandex/mobile/ads/impl/lg0$a;->a(II)I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    .line 9
    invoke-direct {p0, v3}, Lcom/yandex/mobile/ads/impl/lg0$a;->b(I)Lokio/ByteString;

    move-result-object v3

    .line 10
    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/lg0$a;->b()Lokio/ByteString;

    move-result-object v4

    .line 11
    new-instance v5, Lcom/yandex/mobile/ads/impl/lf0;

    invoke-direct {v5, v3, v4}, Lcom/yandex/mobile/ads/impl/lf0;-><init>(Lokio/ByteString;Lokio/ByteString;)V

    invoke-direct {p0, v5}, Lcom/yandex/mobile/ads/impl/lg0$a;->a(Lcom/yandex/mobile/ads/impl/lf0;)V

    goto :goto_0

    :cond_3
    and-int/lit8 v4, v3, 0x20

    if-ne v4, v0, :cond_6

    const/16 v4, 0x1f

    .line 12
    invoke-virtual {p0, v3, v4}, Lcom/yandex/mobile/ads/impl/lg0$a;->a(II)I

    move-result v3

    iput v3, p0, Lcom/yandex/mobile/ads/impl/lg0$a;->a:I

    if-ltz v3, :cond_5

    const/16 v4, 0x1000

    if-gt v3, v4, :cond_5

    .line 13
    iget v4, p0, Lcom/yandex/mobile/ads/impl/lg0$a;->g:I

    if-ge v3, v4, :cond_0

    if-nez v3, :cond_4

    .line 14
    iget-object v5, p0, Lcom/yandex/mobile/ads/impl/lg0$a;->d:[Lcom/yandex/mobile/ads/impl/lf0;

    const/4 v9, 0x6

    const/4 v10, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v5 .. v10}, Lfi;->y([Ljava/lang/Object;Ljava/lang/Object;IIILjava/lang/Object;)V

    .line 15
    iget-object v3, p0, Lcom/yandex/mobile/ads/impl/lg0$a;->d:[Lcom/yandex/mobile/ads/impl/lf0;

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/yandex/mobile/ads/impl/lg0$a;->e:I

    const/4 v3, 0x0

    .line 16
    iput v3, p0, Lcom/yandex/mobile/ads/impl/lg0$a;->f:I

    .line 17
    iput v3, p0, Lcom/yandex/mobile/ads/impl/lg0$a;->g:I

    goto/16 :goto_0

    :cond_4
    sub-int/2addr v4, v3

    .line 18
    invoke-direct {p0, v4}, Lcom/yandex/mobile/ads/impl/lg0$a;->a(I)I

    goto/16 :goto_0

    .line 19
    :cond_5
    new-instance v0, Ljava/io/IOException;

    iget p0, p0, Lcom/yandex/mobile/ads/impl/lg0$a;->a:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid dynamic table size update "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    const/16 v4, 0x10

    if-eq v3, v4, :cond_8

    if-nez v3, :cond_7

    goto :goto_1

    :cond_7
    const/16 v4, 0xf

    .line 20
    invoke-virtual {p0, v3, v4}, Lcom/yandex/mobile/ads/impl/lg0$a;->a(II)I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    .line 21
    invoke-direct {p0, v3}, Lcom/yandex/mobile/ads/impl/lg0$a;->b(I)Lokio/ByteString;

    move-result-object v3

    .line 22
    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/lg0$a;->b()Lokio/ByteString;

    move-result-object v4

    .line 23
    iget-object v5, p0, Lcom/yandex/mobile/ads/impl/lg0$a;->b:Ljava/util/ArrayList;

    new-instance v6, Lcom/yandex/mobile/ads/impl/lf0;

    invoke-direct {v6, v3, v4}, Lcom/yandex/mobile/ads/impl/lf0;-><init>(Lokio/ByteString;Lokio/ByteString;)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 24
    :cond_8
    :goto_1
    sget v3, Lcom/yandex/mobile/ads/impl/lg0;->c:I

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/lg0$a;->b()Lokio/ByteString;

    move-result-object v3

    invoke-static {v3}, Lcom/yandex/mobile/ads/impl/lg0;->a(Lokio/ByteString;)Lokio/ByteString;

    move-result-object v3

    .line 25
    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/lg0$a;->b()Lokio/ByteString;

    move-result-object v4

    .line 26
    iget-object v5, p0, Lcom/yandex/mobile/ads/impl/lg0$a;->b:Ljava/util/ArrayList;

    new-instance v6, Lcom/yandex/mobile/ads/impl/lf0;

    invoke-direct {v6, v3, v4}, Lcom/yandex/mobile/ads/impl/lf0;-><init>(Lokio/ByteString;Lokio/ByteString;)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 27
    :cond_9
    new-instance p0, Ljava/io/IOException;

    const-string v0, "index == 0"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_a
    return-void
.end method
