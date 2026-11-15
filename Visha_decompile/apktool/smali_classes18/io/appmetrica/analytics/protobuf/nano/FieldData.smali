.class Lio/appmetrica/analytics/protobuf/nano/FieldData;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field private cachedExtension:Lio/appmetrica/analytics/protobuf/nano/Extension;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/appmetrica/analytics/protobuf/nano/Extension<",
            "**>;"
        }
    .end annotation
.end field

.field private unknownFieldData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/appmetrica/analytics/protobuf/nano/UnknownFieldData;",
            ">;"
        }
    .end annotation
.end field

.field private value:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/appmetrica/analytics/protobuf/nano/FieldData;->unknownFieldData:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lio/appmetrica/analytics/protobuf/nano/Extension;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/appmetrica/analytics/protobuf/nano/Extension<",
            "*TT;>;TT;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lio/appmetrica/analytics/protobuf/nano/FieldData;->cachedExtension:Lio/appmetrica/analytics/protobuf/nano/Extension;

    .line 3
    iput-object p2, p0, Lio/appmetrica/analytics/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    return-void
.end method

.method private toByteArray()[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lio/appmetrica/analytics/protobuf/nano/FieldData;->computeSerializedSize()I

    move-result v0

    new-array v0, v0, [B

    invoke-static {v0}, Lio/appmetrica/analytics/protobuf/nano/CodedOutputByteBufferNano;->newInstance([B)Lio/appmetrica/analytics/protobuf/nano/CodedOutputByteBufferNano;

    move-result-object v1

    invoke-virtual {p0, v1}, Lio/appmetrica/analytics/protobuf/nano/FieldData;->writeTo(Lio/appmetrica/analytics/protobuf/nano/CodedOutputByteBufferNano;)V

    return-object v0
.end method


# virtual methods
.method public addUnknownField(Lio/appmetrica/analytics/protobuf/nano/UnknownFieldData;)V
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/protobuf/nano/FieldData;->unknownFieldData:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final clone()Lio/appmetrica/analytics/protobuf/nano/FieldData;
    .locals 4

    .line 2
    new-instance v0, Lio/appmetrica/analytics/protobuf/nano/FieldData;

    invoke-direct {v0}, Lio/appmetrica/analytics/protobuf/nano/FieldData;-><init>()V

    .line 3
    :try_start_0
    iget-object v1, p0, Lio/appmetrica/analytics/protobuf/nano/FieldData;->cachedExtension:Lio/appmetrica/analytics/protobuf/nano/Extension;

    iput-object v1, v0, Lio/appmetrica/analytics/protobuf/nano/FieldData;->cachedExtension:Lio/appmetrica/analytics/protobuf/nano/Extension;

    .line 4
    iget-object v1, p0, Lio/appmetrica/analytics/protobuf/nano/FieldData;->unknownFieldData:Ljava/util/List;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 5
    iput-object v1, v0, Lio/appmetrica/analytics/protobuf/nano/FieldData;->unknownFieldData:Ljava/util/List;

    goto :goto_0

    :catch_0
    move-exception p0

    goto/16 :goto_4

    .line 6
    :cond_0
    iget-object v2, v0, Lio/appmetrica/analytics/protobuf/nano/FieldData;->unknownFieldData:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 7
    :goto_0
    iget-object p0, p0, Lio/appmetrica/analytics/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    if-nez p0, :cond_1

    goto/16 :goto_3

    .line 8
    :cond_1
    instance-of v1, p0, Lio/appmetrica/analytics/protobuf/nano/MessageNano;

    if-eqz v1, :cond_2

    .line 9
    check-cast p0, Lio/appmetrica/analytics/protobuf/nano/MessageNano;

    invoke-virtual {p0}, Lio/appmetrica/analytics/protobuf/nano/MessageNano;->clone()Lio/appmetrica/analytics/protobuf/nano/MessageNano;

    move-result-object p0

    iput-object p0, v0, Lio/appmetrica/analytics/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    goto/16 :goto_3

    .line 10
    :cond_2
    instance-of v1, p0, [B

    if-eqz v1, :cond_3

    .line 11
    check-cast p0, [B

    invoke-virtual {p0}, [B->clone()Ljava/lang/Object;

    move-result-object p0

    iput-object p0, v0, Lio/appmetrica/analytics/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    goto/16 :goto_3

    .line 12
    :cond_3
    instance-of v1, p0, [[B

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    .line 13
    check-cast p0, [[B

    .line 14
    array-length v1, p0

    new-array v1, v1, [[B

    .line 15
    iput-object v1, v0, Lio/appmetrica/analytics/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    .line 16
    :goto_1
    array-length v3, p0

    if-ge v2, v3, :cond_a

    .line 17
    aget-object v3, p0, v2

    invoke-virtual {v3}, [B->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 18
    :cond_4
    instance-of v1, p0, [Z

    if-eqz v1, :cond_5

    .line 19
    check-cast p0, [Z

    invoke-virtual {p0}, [Z->clone()Ljava/lang/Object;

    move-result-object p0

    iput-object p0, v0, Lio/appmetrica/analytics/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    goto :goto_3

    .line 20
    :cond_5
    instance-of v1, p0, [I

    if-eqz v1, :cond_6

    .line 21
    check-cast p0, [I

    invoke-virtual {p0}, [I->clone()Ljava/lang/Object;

    move-result-object p0

    iput-object p0, v0, Lio/appmetrica/analytics/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    goto :goto_3

    .line 22
    :cond_6
    instance-of v1, p0, [J

    if-eqz v1, :cond_7

    .line 23
    check-cast p0, [J

    invoke-virtual {p0}, [J->clone()Ljava/lang/Object;

    move-result-object p0

    iput-object p0, v0, Lio/appmetrica/analytics/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    goto :goto_3

    .line 24
    :cond_7
    instance-of v1, p0, [F

    if-eqz v1, :cond_8

    .line 25
    check-cast p0, [F

    invoke-virtual {p0}, [F->clone()Ljava/lang/Object;

    move-result-object p0

    iput-object p0, v0, Lio/appmetrica/analytics/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    goto :goto_3

    .line 26
    :cond_8
    instance-of v1, p0, [D

    if-eqz v1, :cond_9

    .line 27
    check-cast p0, [D

    invoke-virtual {p0}, [D->clone()Ljava/lang/Object;

    move-result-object p0

    iput-object p0, v0, Lio/appmetrica/analytics/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    goto :goto_3

    .line 28
    :cond_9
    instance-of v1, p0, [Lio/appmetrica/analytics/protobuf/nano/MessageNano;

    if-eqz v1, :cond_a

    .line 29
    check-cast p0, [Lio/appmetrica/analytics/protobuf/nano/MessageNano;

    .line 30
    array-length v1, p0

    new-array v1, v1, [Lio/appmetrica/analytics/protobuf/nano/MessageNano;

    .line 31
    iput-object v1, v0, Lio/appmetrica/analytics/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    .line 32
    :goto_2
    array-length v3, p0

    if-ge v2, v3, :cond_a

    .line 33
    aget-object v3, p0, v2

    invoke-virtual {v3}, Lio/appmetrica/analytics/protobuf/nano/MessageNano;->clone()Lio/appmetrica/analytics/protobuf/nano/MessageNano;

    move-result-object v3

    aput-object v3, v1, v2
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_a
    :goto_3
    return-object v0

    .line 34
    :goto_4
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lio/appmetrica/analytics/protobuf/nano/FieldData;->clone()Lio/appmetrica/analytics/protobuf/nano/FieldData;

    move-result-object p0

    return-object p0
.end method

.method public computeSerializedSize()I
    .locals 2

    iget-object v0, p0, Lio/appmetrica/analytics/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lio/appmetrica/analytics/protobuf/nano/FieldData;->cachedExtension:Lio/appmetrica/analytics/protobuf/nano/Extension;

    invoke-virtual {p0, v0}, Lio/appmetrica/analytics/protobuf/nano/Extension;->computeSerializedSize(Ljava/lang/Object;)I

    move-result p0

    goto :goto_1

    :cond_0
    iget-object p0, p0, Lio/appmetrica/analytics/protobuf/nano/FieldData;->unknownFieldData:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/appmetrica/analytics/protobuf/nano/UnknownFieldData;

    invoke-virtual {v1}, Lio/appmetrica/analytics/protobuf/nano/UnknownFieldData;->computeSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0

    :cond_1
    move p0, v0

    :goto_1
    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    instance-of v0, p1, Lio/appmetrica/analytics/protobuf/nano/FieldData;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    return v1

    :cond_1
    check-cast p1, Lio/appmetrica/analytics/protobuf/nano/FieldData;

    iget-object v0, p0, Lio/appmetrica/analytics/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    if-eqz v0, :cond_a

    iget-object v0, p1, Lio/appmetrica/analytics/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lio/appmetrica/analytics/protobuf/nano/FieldData;->cachedExtension:Lio/appmetrica/analytics/protobuf/nano/Extension;

    iget-object v2, p1, Lio/appmetrica/analytics/protobuf/nano/FieldData;->cachedExtension:Lio/appmetrica/analytics/protobuf/nano/Extension;

    if-eq v0, v2, :cond_2

    return v1

    :cond_2
    iget-object v0, v0, Lio/appmetrica/analytics/protobuf/nano/Extension;->clazz:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object p0, p0, Lio/appmetrica/analytics/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    iget-object p1, p1, Lio/appmetrica/analytics/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_3
    iget-object p0, p0, Lio/appmetrica/analytics/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    instance-of v0, p0, [B

    if-eqz v0, :cond_4

    check-cast p0, [B

    iget-object p1, p1, Lio/appmetrica/analytics/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    check-cast p1, [B

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p0

    return p0

    :cond_4
    instance-of v0, p0, [I

    if-eqz v0, :cond_5

    check-cast p0, [I

    iget-object p1, p1, Lio/appmetrica/analytics/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    check-cast p1, [I

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result p0

    return p0

    :cond_5
    instance-of v0, p0, [J

    if-eqz v0, :cond_6

    check-cast p0, [J

    iget-object p1, p1, Lio/appmetrica/analytics/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    check-cast p1, [J

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([J[J)Z

    move-result p0

    return p0

    :cond_6
    instance-of v0, p0, [F

    if-eqz v0, :cond_7

    check-cast p0, [F

    iget-object p1, p1, Lio/appmetrica/analytics/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    check-cast p1, [F

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([F[F)Z

    move-result p0

    return p0

    :cond_7
    instance-of v0, p0, [D

    if-eqz v0, :cond_8

    check-cast p0, [D

    iget-object p1, p1, Lio/appmetrica/analytics/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    check-cast p1, [D

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([D[D)Z

    move-result p0

    return p0

    :cond_8
    instance-of v0, p0, [Z

    if-eqz v0, :cond_9

    check-cast p0, [Z

    iget-object p1, p1, Lio/appmetrica/analytics/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    check-cast p1, [Z

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([Z[Z)Z

    move-result p0

    return p0

    :cond_9
    check-cast p0, [Ljava/lang/Object;

    iget-object p1, p1, Lio/appmetrica/analytics/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    check-cast p1, [Ljava/lang/Object;

    invoke-static {p0, p1}, Ljava/util/Arrays;->deepEquals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_a
    iget-object v0, p0, Lio/appmetrica/analytics/protobuf/nano/FieldData;->unknownFieldData:Ljava/util/List;

    if-eqz v0, :cond_b

    iget-object v1, p1, Lio/appmetrica/analytics/protobuf/nano/FieldData;->unknownFieldData:Ljava/util/List;

    if-eqz v1, :cond_b

    invoke-interface {v0, v1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_b
    :try_start_0
    invoke-direct {p0}, Lio/appmetrica/analytics/protobuf/nano/FieldData;->toByteArray()[B

    move-result-object p0

    invoke-direct {p1}, Lio/appmetrica/analytics/protobuf/nano/FieldData;->toByteArray()[B

    move-result-object p1

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public getUnknownField(I)Lio/appmetrica/analytics/protobuf/nano/UnknownFieldData;
    .locals 2

    iget-object v0, p0, Lio/appmetrica/analytics/protobuf/nano/FieldData;->unknownFieldData:Ljava/util/List;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_1

    iget-object p0, p0, Lio/appmetrica/analytics/protobuf/nano/FieldData;->unknownFieldData:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/appmetrica/analytics/protobuf/nano/UnknownFieldData;

    return-object p0

    :cond_1
    return-object v1
.end method

.method public getUnknownFieldSize()I
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/protobuf/nano/FieldData;->unknownFieldData:Ljava/util/List;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public getValue(Lio/appmetrica/analytics/protobuf/nano/Extension;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/appmetrica/analytics/protobuf/nano/Extension<",
            "*TT;>;)TT;"
        }
    .end annotation

    iget-object v0, p0, Lio/appmetrica/analytics/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lio/appmetrica/analytics/protobuf/nano/FieldData;->cachedExtension:Lio/appmetrica/analytics/protobuf/nano/Extension;

    if-ne v0, p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Tried to getExtension with a differernt Extension."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    iput-object p1, p0, Lio/appmetrica/analytics/protobuf/nano/FieldData;->cachedExtension:Lio/appmetrica/analytics/protobuf/nano/Extension;

    iget-object v0, p0, Lio/appmetrica/analytics/protobuf/nano/FieldData;->unknownFieldData:Ljava/util/List;

    invoke-virtual {p1, v0}, Lio/appmetrica/analytics/protobuf/nano/Extension;->getValueFrom(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lio/appmetrica/analytics/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    const/4 p1, 0x0

    iput-object p1, p0, Lio/appmetrica/analytics/protobuf/nano/FieldData;->unknownFieldData:Ljava/util/List;

    :goto_0
    iget-object p0, p0, Lio/appmetrica/analytics/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    return-object p0
.end method

.method public hashCode()I
    .locals 1

    :try_start_0
    invoke-direct {p0}, Lio/appmetrica/analytics/protobuf/nano/FieldData;->toByteArray()[B

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->hashCode([B)I

    move-result p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit16 p0, p0, 0x20f

    return p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public setValue(Lio/appmetrica/analytics/protobuf/nano/Extension;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/appmetrica/analytics/protobuf/nano/Extension<",
            "*TT;>;TT;)V"
        }
    .end annotation

    iput-object p1, p0, Lio/appmetrica/analytics/protobuf/nano/FieldData;->cachedExtension:Lio/appmetrica/analytics/protobuf/nano/Extension;

    iput-object p2, p0, Lio/appmetrica/analytics/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    const/4 p1, 0x0

    iput-object p1, p0, Lio/appmetrica/analytics/protobuf/nano/FieldData;->unknownFieldData:Ljava/util/List;

    return-void
.end method

.method public writeTo(Lio/appmetrica/analytics/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lio/appmetrica/analytics/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lio/appmetrica/analytics/protobuf/nano/FieldData;->cachedExtension:Lio/appmetrica/analytics/protobuf/nano/Extension;

    invoke-virtual {p0, v0, p1}, Lio/appmetrica/analytics/protobuf/nano/Extension;->writeTo(Ljava/lang/Object;Lio/appmetrica/analytics/protobuf/nano/CodedOutputByteBufferNano;)V

    goto :goto_1

    :cond_0
    iget-object p0, p0, Lio/appmetrica/analytics/protobuf/nano/FieldData;->unknownFieldData:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/appmetrica/analytics/protobuf/nano/UnknownFieldData;

    invoke-virtual {v0, p1}, Lio/appmetrica/analytics/protobuf/nano/UnknownFieldData;->writeTo(Lio/appmetrica/analytics/protobuf/nano/CodedOutputByteBufferNano;)V

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method
