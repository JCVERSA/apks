.class final Lcom/google/protobuf/w0;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/google/protobuf/i1;


# instance fields
.field private final defaultInstance:Lcom/google/protobuf/s0;

.field private final extensionSchema:Lcom/google/protobuf/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/p;"
        }
    .end annotation
.end field

.field private final hasExtensions:Z

.field private final unknownFieldSchema:Lcom/google/protobuf/o1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/o1;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/google/protobuf/o1;Lcom/google/protobuf/p;Lcom/google/protobuf/s0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/o1;",
            "Lcom/google/protobuf/p;",
            "Lcom/google/protobuf/s0;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/protobuf/w0;->unknownFieldSchema:Lcom/google/protobuf/o1;

    .line 5
    .line 6
    invoke-virtual {p2, p3}, Lcom/google/protobuf/p;->hasExtensions(Lcom/google/protobuf/s0;)Z

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    iput-boolean p1, p0, Lcom/google/protobuf/w0;->hasExtensions:Z

    .line 11
    .line 12
    iput-object p2, p0, Lcom/google/protobuf/w0;->extensionSchema:Lcom/google/protobuf/p;

    .line 13
    .line 14
    iput-object p3, p0, Lcom/google/protobuf/w0;->defaultInstance:Lcom/google/protobuf/s0;

    .line 15
    .line 16
    return-void
.end method

.method private getUnknownFieldsSerializedSize(Lcom/google/protobuf/o1;Ljava/lang/Object;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<UT:",
            "Ljava/lang/Object;",
            "UB:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/protobuf/o1;",
            "Ljava/lang/Object;",
            ")I"
        }
    .end annotation

    .line 1
    invoke-virtual {p1, p2}, Lcom/google/protobuf/o1;->getFromMessage(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    invoke-virtual {p1, p2}, Lcom/google/protobuf/o1;->getSerializedSizeAsMessageSet(Ljava/lang/Object;)I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    return p1
.end method

.method private mergeFromHelper(Lcom/google/protobuf/o1;Lcom/google/protobuf/p;Ljava/lang/Object;Lcom/google/protobuf/h1;Lcom/google/protobuf/o;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<UT:",
            "Ljava/lang/Object;",
            "UB:",
            "Ljava/lang/Object;",
            "ET::",
            "Lcom/google/protobuf/t$c;",
            ">(",
            "Lcom/google/protobuf/o1;",
            "Lcom/google/protobuf/p;",
            "Ljava/lang/Object;",
            "Lcom/google/protobuf/h1;",
            "Lcom/google/protobuf/o;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1, p3}, Lcom/google/protobuf/o1;->getBuilderFromMessage(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v7

    .line 5
    invoke-virtual {p2, p3}, Lcom/google/protobuf/p;->getMutableExtensions(Ljava/lang/Object;)Lcom/google/protobuf/t;

    .line 6
    .line 7
    .line 8
    move-result-object v8

    .line 9
    :goto_0
    :try_start_0
    invoke-interface {p4}, Lcom/google/protobuf/h1;->getFieldNumber()I

    .line 10
    .line 11
    .line 12
    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    const v1, 0x7fffffff

    .line 14
    .line 15
    .line 16
    if-ne v0, v1, :cond_0

    .line 17
    .line 18
    invoke-virtual {p1, p3, v7}, Lcom/google/protobuf/o1;->setBuilderToMessage(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    :cond_0
    move-object v0, p0

    .line 23
    move-object v1, p4

    .line 24
    move-object v2, p5

    .line 25
    move-object v3, p2

    .line 26
    move-object v4, v8

    .line 27
    move-object v5, p1

    .line 28
    move-object v6, v7

    .line 29
    :try_start_1
    invoke-direct/range {v0 .. v6}, Lcom/google/protobuf/w0;->parseMessageSetItemOrUnknownField(Lcom/google/protobuf/h1;Lcom/google/protobuf/o;Lcom/google/protobuf/p;Lcom/google/protobuf/t;Lcom/google/protobuf/o1;Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 33
    if-eqz v0, :cond_1

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_1
    invoke-virtual {p1, p3, v7}, Lcom/google/protobuf/o1;->setBuilderToMessage(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    return-void

    .line 40
    :catchall_0
    move-exception p2

    .line 41
    invoke-virtual {p1, p3, v7}, Lcom/google/protobuf/o1;->setBuilderToMessage(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 42
    .line 43
    .line 44
    throw p2
.end method

.method static newSchema(Lcom/google/protobuf/o1;Lcom/google/protobuf/p;Lcom/google/protobuf/s0;)Lcom/google/protobuf/w0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/protobuf/o1;",
            "Lcom/google/protobuf/p;",
            "Lcom/google/protobuf/s0;",
            ")",
            "Lcom/google/protobuf/w0;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/protobuf/w0;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1, p2}, Lcom/google/protobuf/w0;-><init>(Lcom/google/protobuf/o1;Lcom/google/protobuf/p;Lcom/google/protobuf/s0;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method private parseMessageSetItemOrUnknownField(Lcom/google/protobuf/h1;Lcom/google/protobuf/o;Lcom/google/protobuf/p;Lcom/google/protobuf/t;Lcom/google/protobuf/o1;Ljava/lang/Object;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<UT:",
            "Ljava/lang/Object;",
            "UB:",
            "Ljava/lang/Object;",
            "ET::",
            "Lcom/google/protobuf/t$c;",
            ">(",
            "Lcom/google/protobuf/h1;",
            "Lcom/google/protobuf/o;",
            "Lcom/google/protobuf/p;",
            "Lcom/google/protobuf/t;",
            "Lcom/google/protobuf/o1;",
            "TUB;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Lcom/google/protobuf/h1;->getTag()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    sget v1, Lcom/google/protobuf/WireFormat;->MESSAGE_SET_ITEM_TAG:I

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    const/4 v3, 0x1

    .line 9
    if-eq v0, v1, :cond_2

    .line 10
    .line 11
    invoke-static {v0}, Lcom/google/protobuf/WireFormat;->getTagWireType(I)I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    const/4 v4, 0x2

    .line 16
    if-ne v1, v4, :cond_1

    .line 17
    .line 18
    iget-object v1, p0, Lcom/google/protobuf/w0;->defaultInstance:Lcom/google/protobuf/s0;

    .line 19
    .line 20
    invoke-static {v0}, Lcom/google/protobuf/WireFormat;->getTagFieldNumber(I)I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    invoke-virtual {p3, p2, v1, v0}, Lcom/google/protobuf/p;->findExtensionByNumber(Lcom/google/protobuf/o;Lcom/google/protobuf/s0;I)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    if-eqz v0, :cond_0

    .line 29
    .line 30
    invoke-virtual {p3, p1, v0, p2, p4}, Lcom/google/protobuf/p;->parseLengthPrefixedMessageSetItem(Lcom/google/protobuf/h1;Ljava/lang/Object;Lcom/google/protobuf/o;Lcom/google/protobuf/t;)V

    .line 31
    .line 32
    .line 33
    return v3

    .line 34
    :cond_0
    invoke-virtual {p5, p6, p1, v2}, Lcom/google/protobuf/o1;->mergeOneFieldFrom(Ljava/lang/Object;Lcom/google/protobuf/h1;I)Z

    .line 35
    .line 36
    .line 37
    move-result p1

    .line 38
    return p1

    .line 39
    :cond_1
    invoke-interface {p1}, Lcom/google/protobuf/h1;->skipField()Z

    .line 40
    .line 41
    .line 42
    move-result p1

    .line 43
    return p1

    .line 44
    :cond_2
    const/4 v0, 0x0

    .line 45
    move-object v1, v0

    .line 46
    :cond_3
    :goto_0
    invoke-interface {p1}, Lcom/google/protobuf/h1;->getFieldNumber()I

    .line 47
    .line 48
    .line 49
    move-result v4

    .line 50
    const v5, 0x7fffffff

    .line 51
    .line 52
    .line 53
    if-ne v4, v5, :cond_4

    .line 54
    .line 55
    goto :goto_1

    .line 56
    :cond_4
    invoke-interface {p1}, Lcom/google/protobuf/h1;->getTag()I

    .line 57
    .line 58
    .line 59
    move-result v4

    .line 60
    sget v5, Lcom/google/protobuf/WireFormat;->MESSAGE_SET_TYPE_ID_TAG:I

    .line 61
    .line 62
    if-ne v4, v5, :cond_5

    .line 63
    .line 64
    invoke-interface {p1}, Lcom/google/protobuf/h1;->readUInt32()I

    .line 65
    .line 66
    .line 67
    move-result v2

    .line 68
    iget-object v0, p0, Lcom/google/protobuf/w0;->defaultInstance:Lcom/google/protobuf/s0;

    .line 69
    .line 70
    invoke-virtual {p3, p2, v0, v2}, Lcom/google/protobuf/p;->findExtensionByNumber(Lcom/google/protobuf/o;Lcom/google/protobuf/s0;I)Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    goto :goto_0

    .line 75
    :cond_5
    sget v5, Lcom/google/protobuf/WireFormat;->MESSAGE_SET_MESSAGE_TAG:I

    .line 76
    .line 77
    if-ne v4, v5, :cond_7

    .line 78
    .line 79
    if-eqz v0, :cond_6

    .line 80
    .line 81
    invoke-virtual {p3, p1, v0, p2, p4}, Lcom/google/protobuf/p;->parseLengthPrefixedMessageSetItem(Lcom/google/protobuf/h1;Ljava/lang/Object;Lcom/google/protobuf/o;Lcom/google/protobuf/t;)V

    .line 82
    .line 83
    .line 84
    goto :goto_0

    .line 85
    :cond_6
    invoke-interface {p1}, Lcom/google/protobuf/h1;->readBytes()Lcom/google/protobuf/ByteString;

    .line 86
    .line 87
    .line 88
    move-result-object v1

    .line 89
    goto :goto_0

    .line 90
    :cond_7
    invoke-interface {p1}, Lcom/google/protobuf/h1;->skipField()Z

    .line 91
    .line 92
    .line 93
    move-result v4

    .line 94
    if-nez v4, :cond_3

    .line 95
    .line 96
    :goto_1
    invoke-interface {p1}, Lcom/google/protobuf/h1;->getTag()I

    .line 97
    .line 98
    .line 99
    move-result p1

    .line 100
    sget v4, Lcom/google/protobuf/WireFormat;->MESSAGE_SET_ITEM_END_TAG:I

    .line 101
    .line 102
    if-ne p1, v4, :cond_a

    .line 103
    .line 104
    if-eqz v1, :cond_9

    .line 105
    .line 106
    if-eqz v0, :cond_8

    .line 107
    .line 108
    invoke-virtual {p3, v1, v0, p2, p4}, Lcom/google/protobuf/p;->parseMessageSetItem(Lcom/google/protobuf/ByteString;Ljava/lang/Object;Lcom/google/protobuf/o;Lcom/google/protobuf/t;)V

    .line 109
    .line 110
    .line 111
    goto :goto_2

    .line 112
    :cond_8
    invoke-virtual {p5, p6, v2, v1}, Lcom/google/protobuf/o1;->addLengthDelimited(Ljava/lang/Object;ILcom/google/protobuf/ByteString;)V

    .line 113
    .line 114
    .line 115
    :cond_9
    :goto_2
    return v3

    .line 116
    :cond_a
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidEndTag()Lcom/google/protobuf/InvalidProtocolBufferException;

    .line 117
    .line 118
    .line 119
    move-result-object p1

    .line 120
    throw p1
.end method

.method private writeUnknownFieldsHelper(Lcom/google/protobuf/o1;Ljava/lang/Object;Lcom/google/protobuf/Writer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<UT:",
            "Ljava/lang/Object;",
            "UB:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/protobuf/o1;",
            "Ljava/lang/Object;",
            "Lcom/google/protobuf/Writer;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1, p2}, Lcom/google/protobuf/o1;->getFromMessage(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    invoke-virtual {p1, p2, p3}, Lcom/google/protobuf/o1;->writeAsMessageSetTo(Ljava/lang/Object;Lcom/google/protobuf/Writer;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/w0;->unknownFieldSchema:Lcom/google/protobuf/o1;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/google/protobuf/o1;->getFromMessage(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/google/protobuf/w0;->unknownFieldSchema:Lcom/google/protobuf/o1;

    .line 8
    .line 9
    invoke-virtual {v1, p2}, Lcom/google/protobuf/o1;->getFromMessage(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-nez v0, :cond_0

    .line 18
    .line 19
    const/4 p1, 0x0

    .line 20
    return p1

    .line 21
    :cond_0
    iget-boolean v0, p0, Lcom/google/protobuf/w0;->hasExtensions:Z

    .line 22
    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    iget-object v0, p0, Lcom/google/protobuf/w0;->extensionSchema:Lcom/google/protobuf/p;

    .line 26
    .line 27
    invoke-virtual {v0, p1}, Lcom/google/protobuf/p;->getExtensions(Ljava/lang/Object;)Lcom/google/protobuf/t;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    iget-object v0, p0, Lcom/google/protobuf/w0;->extensionSchema:Lcom/google/protobuf/p;

    .line 32
    .line 33
    invoke-virtual {v0, p2}, Lcom/google/protobuf/p;->getExtensions(Ljava/lang/Object;)Lcom/google/protobuf/t;

    .line 34
    .line 35
    .line 36
    move-result-object p2

    .line 37
    invoke-virtual {p1, p2}, Lcom/google/protobuf/t;->equals(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result p1

    .line 41
    return p1

    .line 42
    :cond_1
    const/4 p1, 0x1

    .line 43
    return p1
.end method

.method public getSerializedSize(Ljava/lang/Object;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")I"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/w0;->unknownFieldSchema:Lcom/google/protobuf/o1;

    .line 2
    .line 3
    invoke-direct {p0, v0, p1}, Lcom/google/protobuf/w0;->getUnknownFieldsSerializedSize(Lcom/google/protobuf/o1;Ljava/lang/Object;)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iget-boolean v1, p0, Lcom/google/protobuf/w0;->hasExtensions:Z

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    iget-object v1, p0, Lcom/google/protobuf/w0;->extensionSchema:Lcom/google/protobuf/p;

    .line 12
    .line 13
    invoke-virtual {v1, p1}, Lcom/google/protobuf/p;->getExtensions(Ljava/lang/Object;)Lcom/google/protobuf/t;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-virtual {p1}, Lcom/google/protobuf/t;->getMessageSetSerializedSize()I

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    add-int/2addr v0, p1

    .line 22
    :cond_0
    return v0
.end method

.method public hashCode(Ljava/lang/Object;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")I"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/w0;->unknownFieldSchema:Lcom/google/protobuf/o1;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/google/protobuf/o1;->getFromMessage(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    iget-boolean v1, p0, Lcom/google/protobuf/w0;->hasExtensions:Z

    .line 12
    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    iget-object v1, p0, Lcom/google/protobuf/w0;->extensionSchema:Lcom/google/protobuf/p;

    .line 16
    .line 17
    invoke-virtual {v1, p1}, Lcom/google/protobuf/p;->getExtensions(Ljava/lang/Object;)Lcom/google/protobuf/t;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    mul-int/lit8 v0, v0, 0x35

    .line 22
    .line 23
    invoke-virtual {p1}, Lcom/google/protobuf/t;->hashCode()I

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    add-int/2addr v0, p1

    .line 28
    :cond_0
    return v0
.end method

.method public final isInitialized(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/w0;->extensionSchema:Lcom/google/protobuf/p;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/google/protobuf/p;->getExtensions(Ljava/lang/Object;)Lcom/google/protobuf/t;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {p1}, Lcom/google/protobuf/t;->isInitialized()Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    return p1
.end method

.method public makeImmutable(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/w0;->unknownFieldSchema:Lcom/google/protobuf/o1;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/google/protobuf/o1;->makeImmutable(Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/google/protobuf/w0;->extensionSchema:Lcom/google/protobuf/p;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Lcom/google/protobuf/p;->makeImmutable(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public mergeFrom(Ljava/lang/Object;Lcom/google/protobuf/h1;Lcom/google/protobuf/o;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lcom/google/protobuf/h1;",
            "Lcom/google/protobuf/o;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 44
    iget-object v1, p0, Lcom/google/protobuf/w0;->unknownFieldSchema:Lcom/google/protobuf/o1;

    iget-object v2, p0, Lcom/google/protobuf/w0;->extensionSchema:Lcom/google/protobuf/p;

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/protobuf/w0;->mergeFromHelper(Lcom/google/protobuf/o1;Lcom/google/protobuf/p;Ljava/lang/Object;Lcom/google/protobuf/h1;Lcom/google/protobuf/o;)V

    return-void
.end method

.method public mergeFrom(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/w0;->unknownFieldSchema:Lcom/google/protobuf/o1;

    invoke-static {v0, p1, p2}, Lcom/google/protobuf/k1;->mergeUnknownFields(Lcom/google/protobuf/o1;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2
    iget-boolean v0, p0, Lcom/google/protobuf/w0;->hasExtensions:Z

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/google/protobuf/w0;->extensionSchema:Lcom/google/protobuf/p;

    invoke-static {v0, p1, p2}, Lcom/google/protobuf/k1;->mergeExtensions(Lcom/google/protobuf/p;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public mergeFrom(Ljava/lang/Object;[BIILcom/google/protobuf/e$b;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "[BII",
            "Lcom/google/protobuf/e$b;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4
    move-object v0, p1

    check-cast v0, Lcom/google/protobuf/GeneratedMessageLite;

    iget-object v1, v0, Lcom/google/protobuf/GeneratedMessageLite;->unknownFields:Lcom/google/protobuf/p1;

    .line 5
    invoke-static {}, Lcom/google/protobuf/p1;->getDefaultInstance()Lcom/google/protobuf/p1;

    move-result-object v2

    if-ne v1, v2, :cond_0

    .line 6
    invoke-static {}, Lcom/google/protobuf/p1;->newInstance()Lcom/google/protobuf/p1;

    move-result-object v1

    .line 7
    iput-object v1, v0, Lcom/google/protobuf/GeneratedMessageLite;->unknownFields:Lcom/google/protobuf/p1;

    .line 8
    :cond_0
    check-cast p1, Lcom/google/protobuf/GeneratedMessageLite$d;

    .line 9
    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$d;->ensureExtensionsAreMutable()Lcom/google/protobuf/t;

    move-result-object p1

    const/4 v0, 0x0

    move-object v2, v0

    :goto_0
    if-ge p3, p4, :cond_b

    .line 10
    invoke-static {p2, p3, p5}, Lcom/google/protobuf/e;->decodeVarint32([BILcom/google/protobuf/e$b;)I

    move-result v4

    .line 11
    iget p3, p5, Lcom/google/protobuf/e$b;->int1:I

    .line 12
    sget v3, Lcom/google/protobuf/WireFormat;->MESSAGE_SET_ITEM_TAG:I

    const/4 v5, 0x2

    if-eq p3, v3, :cond_3

    .line 13
    invoke-static {p3}, Lcom/google/protobuf/WireFormat;->getTagWireType(I)I

    move-result v3

    if-ne v3, v5, :cond_2

    .line 14
    iget-object v2, p0, Lcom/google/protobuf/w0;->extensionSchema:Lcom/google/protobuf/p;

    iget-object v3, p5, Lcom/google/protobuf/e$b;->extensionRegistry:Lcom/google/protobuf/o;

    iget-object v5, p0, Lcom/google/protobuf/w0;->defaultInstance:Lcom/google/protobuf/s0;

    .line 15
    invoke-static {p3}, Lcom/google/protobuf/WireFormat;->getTagFieldNumber(I)I

    move-result v6

    .line 16
    invoke-virtual {v2, v3, v5, v6}, Lcom/google/protobuf/p;->findExtensionByNumber(Lcom/google/protobuf/o;Lcom/google/protobuf/s0;I)Ljava/lang/Object;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Lcom/google/protobuf/GeneratedMessageLite$g;

    if-eqz v8, :cond_1

    .line 17
    invoke-static {}, Lcom/google/protobuf/d1;->getInstance()Lcom/google/protobuf/d1;

    move-result-object p3

    .line 18
    invoke-virtual {v8}, Lcom/google/protobuf/GeneratedMessageLite$g;->getMessageDefaultInstance()Lcom/google/protobuf/s0;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 19
    invoke-virtual {p3, v2}, Lcom/google/protobuf/d1;->schemaFor(Ljava/lang/Class;)Lcom/google/protobuf/i1;

    move-result-object p3

    .line 20
    invoke-static {p3, p2, v4, p4, p5}, Lcom/google/protobuf/e;->decodeMessageField(Lcom/google/protobuf/i1;[BIILcom/google/protobuf/e$b;)I

    move-result p3

    .line 21
    iget-object v2, v8, Lcom/google/protobuf/GeneratedMessageLite$g;->descriptor:Lcom/google/protobuf/GeneratedMessageLite$f;

    iget-object v3, p5, Lcom/google/protobuf/e$b;->object1:Ljava/lang/Object;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/t;->setField(Lcom/google/protobuf/t$c;Ljava/lang/Object;)V

    :goto_1
    move-object v2, v8

    goto :goto_0

    :cond_1
    move v2, p3

    move-object v3, p2

    move v5, p4

    move-object v6, v1

    move-object v7, p5

    .line 22
    invoke-static/range {v2 .. v7}, Lcom/google/protobuf/e;->decodeUnknownField(I[BIILcom/google/protobuf/p1;Lcom/google/protobuf/e$b;)I

    move-result p3

    goto :goto_1

    .line 23
    :cond_2
    invoke-static {p3, p2, v4, p4, p5}, Lcom/google/protobuf/e;->skipField(I[BIILcom/google/protobuf/e$b;)I

    move-result p3

    goto :goto_0

    :cond_3
    const/4 p3, 0x0

    move-object v3, v0

    :goto_2
    if-ge v4, p4, :cond_9

    .line 24
    invoke-static {p2, v4, p5}, Lcom/google/protobuf/e;->decodeVarint32([BILcom/google/protobuf/e$b;)I

    move-result v4

    .line 25
    iget v6, p5, Lcom/google/protobuf/e$b;->int1:I

    .line 26
    invoke-static {v6}, Lcom/google/protobuf/WireFormat;->getTagFieldNumber(I)I

    move-result v7

    .line 27
    invoke-static {v6}, Lcom/google/protobuf/WireFormat;->getTagWireType(I)I

    move-result v8

    if-eq v7, v5, :cond_6

    const/4 v9, 0x3

    if-eq v7, v9, :cond_4

    goto :goto_3

    :cond_4
    if-eqz v2, :cond_5

    .line 28
    invoke-static {}, Lcom/google/protobuf/d1;->getInstance()Lcom/google/protobuf/d1;

    move-result-object v6

    .line 29
    invoke-virtual {v2}, Lcom/google/protobuf/GeneratedMessageLite$g;->getMessageDefaultInstance()Lcom/google/protobuf/s0;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    .line 30
    invoke-virtual {v6, v7}, Lcom/google/protobuf/d1;->schemaFor(Ljava/lang/Class;)Lcom/google/protobuf/i1;

    move-result-object v6

    .line 31
    invoke-static {v6, p2, v4, p4, p5}, Lcom/google/protobuf/e;->decodeMessageField(Lcom/google/protobuf/i1;[BIILcom/google/protobuf/e$b;)I

    move-result v4

    .line 32
    iget-object v6, v2, Lcom/google/protobuf/GeneratedMessageLite$g;->descriptor:Lcom/google/protobuf/GeneratedMessageLite$f;

    iget-object v7, p5, Lcom/google/protobuf/e$b;->object1:Ljava/lang/Object;

    invoke-virtual {p1, v6, v7}, Lcom/google/protobuf/t;->setField(Lcom/google/protobuf/t$c;Ljava/lang/Object;)V

    goto :goto_2

    :cond_5
    if-ne v8, v5, :cond_7

    .line 33
    invoke-static {p2, v4, p5}, Lcom/google/protobuf/e;->decodeBytes([BILcom/google/protobuf/e$b;)I

    move-result v4

    .line 34
    iget-object v3, p5, Lcom/google/protobuf/e$b;->object1:Ljava/lang/Object;

    check-cast v3, Lcom/google/protobuf/ByteString;

    goto :goto_2

    :cond_6
    if-nez v8, :cond_7

    .line 35
    invoke-static {p2, v4, p5}, Lcom/google/protobuf/e;->decodeVarint32([BILcom/google/protobuf/e$b;)I

    move-result v4

    .line 36
    iget p3, p5, Lcom/google/protobuf/e$b;->int1:I

    .line 37
    iget-object v2, p0, Lcom/google/protobuf/w0;->extensionSchema:Lcom/google/protobuf/p;

    iget-object v6, p5, Lcom/google/protobuf/e$b;->extensionRegistry:Lcom/google/protobuf/o;

    iget-object v7, p0, Lcom/google/protobuf/w0;->defaultInstance:Lcom/google/protobuf/s0;

    .line 38
    invoke-virtual {v2, v6, v7, p3}, Lcom/google/protobuf/p;->findExtensionByNumber(Lcom/google/protobuf/o;Lcom/google/protobuf/s0;I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/GeneratedMessageLite$g;

    goto :goto_2

    .line 39
    :cond_7
    :goto_3
    sget v7, Lcom/google/protobuf/WireFormat;->MESSAGE_SET_ITEM_END_TAG:I

    if-ne v6, v7, :cond_8

    goto :goto_4

    .line 40
    :cond_8
    invoke-static {v6, p2, v4, p4, p5}, Lcom/google/protobuf/e;->skipField(I[BIILcom/google/protobuf/e$b;)I

    move-result v4

    goto :goto_2

    :cond_9
    :goto_4
    if-eqz v3, :cond_a

    .line 41
    invoke-static {p3, v5}, Lcom/google/protobuf/WireFormat;->makeTag(II)I

    move-result p3

    .line 42
    invoke-virtual {v1, p3, v3}, Lcom/google/protobuf/p1;->storeField(ILjava/lang/Object;)V

    :cond_a
    move p3, v4

    goto/16 :goto_0

    :cond_b
    if-ne p3, p4, :cond_c

    return-void

    .line 43
    :cond_c
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->parseFailure()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
.end method

.method public newInstance()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/w0;->defaultInstance:Lcom/google/protobuf/s0;

    .line 2
    .line 3
    instance-of v1, v0, Lcom/google/protobuf/GeneratedMessageLite;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    check-cast v0, Lcom/google/protobuf/GeneratedMessageLite;

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->newMutableInstance()Lcom/google/protobuf/GeneratedMessageLite;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    return-object v0

    .line 14
    :cond_0
    invoke-interface {v0}, Lcom/google/protobuf/s0;->newBuilderForType()Lcom/google/protobuf/s0$a;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-interface {v0}, Lcom/google/protobuf/s0$a;->buildPartial()Lcom/google/protobuf/s0;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    return-object v0
.end method

.method public writeTo(Ljava/lang/Object;Lcom/google/protobuf/Writer;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lcom/google/protobuf/Writer;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/w0;->extensionSchema:Lcom/google/protobuf/p;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/google/protobuf/p;->getExtensions(Ljava/lang/Object;)Lcom/google/protobuf/t;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lcom/google/protobuf/t;->iterator()Ljava/util/Iterator;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_2

    .line 16
    .line 17
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    check-cast v1, Ljava/util/Map$Entry;

    .line 22
    .line 23
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    check-cast v2, Lcom/google/protobuf/t$c;

    .line 28
    .line 29
    invoke-interface {v2}, Lcom/google/protobuf/t$c;->getLiteJavaType()Lcom/google/protobuf/WireFormat$JavaType;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    sget-object v4, Lcom/google/protobuf/WireFormat$JavaType;->MESSAGE:Lcom/google/protobuf/WireFormat$JavaType;

    .line 34
    .line 35
    if-ne v3, v4, :cond_1

    .line 36
    .line 37
    invoke-interface {v2}, Lcom/google/protobuf/t$c;->isRepeated()Z

    .line 38
    .line 39
    .line 40
    move-result v3

    .line 41
    if-nez v3, :cond_1

    .line 42
    .line 43
    invoke-interface {v2}, Lcom/google/protobuf/t$c;->isPacked()Z

    .line 44
    .line 45
    .line 46
    move-result v3

    .line 47
    if-nez v3, :cond_1

    .line 48
    .line 49
    instance-of v3, v1, Lcom/google/protobuf/f0$b;

    .line 50
    .line 51
    if-eqz v3, :cond_0

    .line 52
    .line 53
    invoke-interface {v2}, Lcom/google/protobuf/t$c;->getNumber()I

    .line 54
    .line 55
    .line 56
    move-result v2

    .line 57
    check-cast v1, Lcom/google/protobuf/f0$b;

    .line 58
    .line 59
    invoke-virtual {v1}, Lcom/google/protobuf/f0$b;->getField()Lcom/google/protobuf/f0;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    invoke-virtual {v1}, Lcom/google/protobuf/g0;->toByteString()Lcom/google/protobuf/ByteString;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    invoke-interface {p2, v2, v1}, Lcom/google/protobuf/Writer;->writeMessageSetItem(ILjava/lang/Object;)V

    .line 68
    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_0
    invoke-interface {v2}, Lcom/google/protobuf/t$c;->getNumber()I

    .line 72
    .line 73
    .line 74
    move-result v2

    .line 75
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    invoke-interface {p2, v2, v1}, Lcom/google/protobuf/Writer;->writeMessageSetItem(ILjava/lang/Object;)V

    .line 80
    .line 81
    .line 82
    goto :goto_0

    .line 83
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 84
    .line 85
    const-string p2, "Found invalid MessageSet item."

    .line 86
    .line 87
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    throw p1

    .line 91
    :cond_2
    iget-object v0, p0, Lcom/google/protobuf/w0;->unknownFieldSchema:Lcom/google/protobuf/o1;

    .line 92
    .line 93
    invoke-direct {p0, v0, p1, p2}, Lcom/google/protobuf/w0;->writeUnknownFieldsHelper(Lcom/google/protobuf/o1;Ljava/lang/Object;Lcom/google/protobuf/Writer;)V

    .line 94
    .line 95
    .line 96
    return-void
.end method
