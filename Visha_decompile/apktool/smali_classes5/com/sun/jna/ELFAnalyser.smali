.class public Lcom/sun/jna/ELFAnalyser;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/jna/ELFAnalyser$ArmAeabiAttributesTag;,
        Lcom/sun/jna/ELFAnalyser$b;,
        Lcom/sun/jna/ELFAnalyser$c;
    }
.end annotation


# static fields
.field public static final i:[B


# instance fields
.field public final a:Ljava/lang/String;

.field public b:Z

.field public c:Z

.field public d:Z

.field public e:Z

.field public f:Z

.field public g:Z

.field public h:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x4

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/sun/jna/ELFAnalyser;->i:[B

    return-void

    nop

    :array_0
    .array-data 1
        0x7ft
        0x45t
        0x4ct
        0x46t
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sun/jna/ELFAnalyser;->b:Z

    iput-boolean v0, p0, Lcom/sun/jna/ELFAnalyser;->c:Z

    iput-boolean v0, p0, Lcom/sun/jna/ELFAnalyser;->d:Z

    iput-boolean v0, p0, Lcom/sun/jna/ELFAnalyser;->e:Z

    iput-boolean v0, p0, Lcom/sun/jna/ELFAnalyser;->f:Z

    iput-boolean v0, p0, Lcom/sun/jna/ELFAnalyser;->g:Z

    iput-boolean v0, p0, Lcom/sun/jna/ELFAnalyser;->h:Z

    iput-object p1, p0, Lcom/sun/jna/ELFAnalyser;->a:Ljava/lang/String;

    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/sun/jna/ELFAnalyser;
    .locals 1

    new-instance v0, Lcom/sun/jna/ELFAnalyser;

    invoke-direct {v0, p0}, Lcom/sun/jna/ELFAnalyser;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/sun/jna/ELFAnalyser;->k()V

    return-object v0
.end method

.method public static e(Ljava/nio/ByteBuffer;)Ljava/util/Map;
    .locals 5

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    :goto_0
    invoke-virtual {p0}, Ljava/nio/Buffer;->position()I

    move-result v1

    invoke-virtual {p0}, Ljava/nio/Buffer;->limit()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-virtual {p0}, Ljava/nio/Buffer;->position()I

    move-result v1

    invoke-static {p0}, Lcom/sun/jna/ELFAnalyser;->j(Ljava/nio/ByteBuffer;)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigInteger;->intValue()I

    move-result v2

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v3

    const/4 v4, 0x1

    if-ne v2, v4, :cond_0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p0}, Lcom/sun/jna/ELFAnalyser;->h(Ljava/nio/ByteBuffer;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    add-int/2addr v1, v3

    invoke-virtual {p0, v1}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static f(Ljava/nio/ByteBuffer;)Ljava/util/Map;
    .locals 4

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    const/16 v1, 0x41

    if-eq v0, v1, :cond_0

    sget-object p0, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    return-object p0

    :cond_0
    :goto_0
    invoke-virtual {p0}, Ljava/nio/Buffer;->position()I

    move-result v0

    invoke-virtual {p0}, Ljava/nio/Buffer;->limit()I

    move-result v1

    if-ge v0, v1, :cond_3

    invoke-virtual {p0}, Ljava/nio/Buffer;->position()I

    move-result v0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    if-gtz v1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    invoke-static {p0, v2}, Lcom/sun/jna/ELFAnalyser;->i(Ljava/nio/ByteBuffer;Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "aeabi"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {p0}, Lcom/sun/jna/ELFAnalyser;->e(Ljava/nio/ByteBuffer;)Ljava/util/Map;

    move-result-object p0

    return-object p0

    :cond_2
    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    goto :goto_0

    :cond_3
    :goto_1
    sget-object p0, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    return-object p0
.end method

.method public static h(Ljava/nio/ByteBuffer;)Ljava/util/Map;
    .locals 4

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    :goto_0
    invoke-virtual {p0}, Ljava/nio/Buffer;->position()I

    move-result v1

    invoke-virtual {p0}, Ljava/nio/Buffer;->limit()I

    move-result v2

    if-ge v1, v2, :cond_3

    invoke-static {p0}, Lcom/sun/jna/ELFAnalyser;->j(Ljava/nio/ByteBuffer;)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->intValue()I

    move-result v1

    invoke-static {v1}, Lcom/sun/jna/ELFAnalyser$ArmAeabiAttributesTag;->b(I)Lcom/sun/jna/ELFAnalyser$ArmAeabiAttributesTag;

    move-result-object v1

    sget-object v2, Lcom/sun/jna/ELFAnalyser$a;->a:[I

    invoke-virtual {v1}, Lcom/sun/jna/ELFAnalyser$ArmAeabiAttributesTag;->d()Lcom/sun/jna/ELFAnalyser$ArmAeabiAttributesTag$ParameterType;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/4 v3, 0x1

    if-eq v2, v3, :cond_2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_1

    const/4 v3, 0x3

    if-eq v2, v3, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lcom/sun/jna/ELFAnalyser;->j(Ljava/nio/ByteBuffer;)Ljava/math/BigInteger;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    invoke-static {p0, v2}, Lcom/sun/jna/ELFAnalyser;->i(Ljava/nio/ByteBuffer;Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method public static i(Ljava/nio/ByteBuffer;Ljava/lang/Integer;)Ljava/lang/String;
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    :cond_0
    invoke-virtual {p0}, Ljava/nio/Buffer;->position()I

    move-result p1

    :cond_1
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Ljava/nio/Buffer;->position()I

    move-result v0

    invoke-virtual {p0}, Ljava/nio/Buffer;->limit()I

    move-result v1

    if-le v0, v1, :cond_1

    :cond_2
    invoke-virtual {p0}, Ljava/nio/Buffer;->position()I

    move-result v0

    sub-int/2addr v0, p1

    add-int/lit8 v0, v0, -0x1

    new-array v0, v0, [B

    invoke-virtual {p0, p1}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    invoke-virtual {p0}, Ljava/nio/Buffer;->position()I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    :try_start_0
    new-instance p0, Ljava/lang/String;

    const-string p1, "ASCII"

    invoke-direct {p0, v0, p1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static j(Ljava/nio/ByteBuffer;)Ljava/math/BigInteger;
    .locals 5

    sget-object v0, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    and-int/lit8 v3, v2, 0x7f

    int-to-long v3, v3

    invoke-static {v3, v4}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/math/BigInteger;->or(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    and-int/lit16 v2, v2, 0x80

    if-nez v2, :cond_0

    return-object v0

    :cond_0
    add-int/lit8 v1, v1, 0x7

    goto :goto_0
.end method


# virtual methods
.method public b()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sun/jna/ELFAnalyser;->g:Z

    return p0
.end method

.method public c()Z
    .locals 1

    invoke-virtual {p0}, Lcom/sun/jna/ELFAnalyser;->b()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/sun/jna/ELFAnalyser;->d()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public d()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sun/jna/ELFAnalyser;->e:Z

    return p0
.end method

.method public final g(Ljava/nio/ByteBuffer;Ljava/io/RandomAccessFile;)V
    .locals 5

    new-instance v0, Lcom/sun/jna/ELFAnalyser$c;

    iget-boolean v1, p0, Lcom/sun/jna/ELFAnalyser;->c:Z

    iget-boolean v2, p0, Lcom/sun/jna/ELFAnalyser;->d:Z

    invoke-direct {v0, v1, v2, p1, p2}, Lcom/sun/jna/ELFAnalyser$c;-><init>(ZZLjava/nio/ByteBuffer;Ljava/io/RandomAccessFile;)V

    invoke-virtual {v0}, Lcom/sun/jna/ELFAnalyser$c;->a()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/jna/ELFAnalyser$b;

    invoke-virtual {v0}, Lcom/sun/jna/ELFAnalyser$b;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, ".ARM.attributes"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/sun/jna/ELFAnalyser$b;->d()I

    move-result v1

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    iget-boolean v2, p0, Lcom/sun/jna/ELFAnalyser;->d:Z

    if-eqz v2, :cond_1

    sget-object v2, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    goto :goto_1

    :cond_1
    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    :goto_1
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    invoke-virtual {p2}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v2

    invoke-virtual {v0}, Lcom/sun/jna/ELFAnalyser$b;->c()I

    move-result v0

    int-to-long v3, v0

    invoke-virtual {v2, v1, v3, v4}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;J)I

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    invoke-static {v1}, Lcom/sun/jna/ELFAnalyser;->f(Ljava/nio/ByteBuffer;)Ljava/util/Map;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    sget-object v2, Lcom/sun/jna/ELFAnalyser$ArmAeabiAttributesTag;->H:Lcom/sun/jna/ELFAnalyser$ArmAeabiAttributesTag;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v2, v0, Ljava/lang/Integer;

    if-eqz v2, :cond_3

    move-object v2, v0

    check-cast v2, Ljava/lang/Integer;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iput-boolean v1, p0, Lcom/sun/jna/ELFAnalyser;->g:Z

    goto :goto_0

    :cond_3
    instance-of v2, v0, Ljava/math/BigInteger;

    if-eqz v2, :cond_0

    check-cast v0, Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    if-ne v0, v1, :cond_0

    iput-boolean v1, p0, Lcom/sun/jna/ELFAnalyser;->g:Z

    goto :goto_0

    :cond_4
    return-void
.end method

.method public final k()V
    .locals 8

    new-instance v0, Ljava/io/RandomAccessFile;

    iget-object v1, p0, Lcom/sun/jna/ELFAnalyser;->a:Ljava/lang/String;

    const-string v2, "r"

    invoke-direct {v0, v1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v1

    const-wide/16 v3, 0x4

    cmp-long v1, v1, v3

    const-wide/16 v5, 0x0

    const/4 v2, 0x1

    if-lez v1, :cond_0

    const/4 v1, 0x4

    new-array v1, v1, [B

    invoke-virtual {v0, v5, v6}, Ljava/io/RandomAccessFile;->seek(J)V

    invoke-virtual {v0, v1}, Ljava/io/RandomAccessFile;->read([B)I

    sget-object v7, Lcom/sun/jna/ELFAnalyser;->i:[B

    invoke-static {v1, v7}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-eqz v1, :cond_0

    iput-boolean v2, p0, Lcom/sun/jna/ELFAnalyser;->b:Z

    goto :goto_0

    :catchall_0
    move-exception p0

    goto/16 :goto_9

    :cond_0
    :goto_0
    iget-boolean v1, p0, Lcom/sun/jna/ELFAnalyser;->b:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    :try_start_1
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    return-void

    :cond_1
    :try_start_2
    invoke-virtual {v0, v3, v4}, Ljava/io/RandomAccessFile;->seek(J)V

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->readByte()B

    move-result v1

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->readByte()B

    move-result v3

    const/4 v4, 0x2

    const/4 v7, 0x0

    if-ne v1, v4, :cond_2

    move v1, v2

    goto :goto_1

    :cond_2
    move v1, v7

    :goto_1
    iput-boolean v1, p0, Lcom/sun/jna/ELFAnalyser;->c:Z

    if-ne v3, v4, :cond_3

    move v1, v2

    goto :goto_2

    :cond_3
    move v1, v7

    :goto_2
    iput-boolean v1, p0, Lcom/sun/jna/ELFAnalyser;->d:Z

    invoke-virtual {v0, v5, v6}, Ljava/io/RandomAccessFile;->seek(J)V

    iget-boolean v1, p0, Lcom/sun/jna/ELFAnalyser;->c:Z

    if-eqz v1, :cond_4

    const/16 v1, 0x40

    goto :goto_3

    :cond_4
    const/16 v1, 0x34

    :goto_3
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v3

    invoke-virtual {v3, v1, v5, v6}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;J)I

    iget-boolean v3, p0, Lcom/sun/jna/ELFAnalyser;->d:Z

    if-eqz v3, :cond_5

    sget-object v3, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    goto :goto_4

    :cond_5
    sget-object v3, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    :goto_4
    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    const/16 v3, 0x12

    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v3

    const/16 v4, 0x28

    if-ne v3, v4, :cond_6

    move v3, v2

    goto :goto_5

    :cond_6
    move v3, v7

    :goto_5
    iput-boolean v3, p0, Lcom/sun/jna/ELFAnalyser;->h:Z

    if-eqz v3, :cond_a

    iget-boolean v3, p0, Lcom/sun/jna/ELFAnalyser;->c:Z

    if-eqz v3, :cond_7

    const/16 v3, 0x30

    goto :goto_6

    :cond_7
    const/16 v3, 0x24

    :goto_6
    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v3

    and-int/lit16 v4, v3, 0x400

    const/16 v5, 0x400

    if-ne v4, v5, :cond_8

    move v4, v2

    goto :goto_7

    :cond_8
    move v4, v7

    :goto_7
    iput-boolean v4, p0, Lcom/sun/jna/ELFAnalyser;->e:Z

    const/16 v4, 0x200

    and-int/2addr v3, v4

    if-ne v3, v4, :cond_9

    goto :goto_8

    :cond_9
    move v2, v7

    :goto_8
    iput-boolean v2, p0, Lcom/sun/jna/ELFAnalyser;->f:Z

    invoke-virtual {p0, v1, v0}, Lcom/sun/jna/ELFAnalyser;->g(Ljava/nio/ByteBuffer;Ljava/io/RandomAccessFile;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_a
    :try_start_3
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    :catch_1
    return-void

    :goto_9
    :try_start_4
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    :catch_2
    throw p0
.end method
