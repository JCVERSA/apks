.class public Lcom/transsion/audiotagger/audio/asf/data/MetadataDescriptor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/transsion/audiotagger/audio/asf/data/MetadataDescriptor;",
        ">;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field public static final DWORD_MAXVALUE:J

.field private static final LOGGER:Ljava/util/logging/Logger;

.field public static final MAX_LANG_INDEX:I = 0x7f

.field public static final MAX_STREAM_NUMBER:I = 0x7f

.field public static final QWORD_MAXVALUE:Ljava/math/BigInteger;

.field public static final TYPE_BINARY:I = 0x1

.field public static final TYPE_BOOLEAN:I = 0x2

.field public static final TYPE_DWORD:I = 0x3

.field public static final TYPE_GUID:I = 0x6

.field public static final TYPE_QWORD:I = 0x4

.field public static final TYPE_STRING:I = 0x0

.field public static final TYPE_WORD:I = 0x5

.field public static final WORD_MAXVALUE:I = 0xffff


# instance fields
.field private final containerType:Lcom/transsion/audiotagger/audio/asf/data/ContainerType;

.field private content:[B

.field private descriptorType:I

.field private languageIndex:I

.field private final name:Ljava/lang/String;

.field private streamNumber:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/math/BigInteger;

    const-string v1, "FFFFFFFF"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v0

    sput-wide v0, Lcom/transsion/audiotagger/audio/asf/data/MetadataDescriptor;->DWORD_MAXVALUE:J

    const-string v0, "com.transsion.audiotagger.audio.asf.data"

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/transsion/audiotagger/audio/asf/data/MetadataDescriptor;->LOGGER:Ljava/util/logging/Logger;

    new-instance v0, Ljava/math/BigInteger;

    const-string v1, "FFFFFFFFFFFFFFFF"

    invoke-direct {v0, v1, v2}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/transsion/audiotagger/audio/asf/data/MetadataDescriptor;->QWORD_MAXVALUE:Ljava/math/BigInteger;

    return-void
.end method

.method public constructor <init>(Lcom/transsion/audiotagger/audio/asf/data/ContainerType;Ljava/lang/String;I)V
    .locals 6

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    .line 1
    invoke-direct/range {v0 .. v5}, Lcom/transsion/audiotagger/audio/asf/data/MetadataDescriptor;-><init>(Lcom/transsion/audiotagger/audio/asf/data/ContainerType;Ljava/lang/String;III)V

    return-void
.end method

.method public constructor <init>(Lcom/transsion/audiotagger/audio/asf/data/ContainerType;Ljava/lang/String;III)V
    .locals 8

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 3
    new-array v1, v0, [B

    iput-object v1, p0, Lcom/transsion/audiotagger/audio/asf/data/MetadataDescriptor;->content:[B

    .line 4
    iput v0, p0, Lcom/transsion/audiotagger/audio/asf/data/MetadataDescriptor;->languageIndex:I

    .line 5
    iput v0, p0, Lcom/transsion/audiotagger/audio/asf/data/MetadataDescriptor;->streamNumber:I

    .line 6
    new-array v4, v0, [B

    move-object v2, p1

    move-object v3, p2

    move v5, p3

    move v6, p4

    move v7, p5

    invoke-virtual/range {v2 .. v7}, Lcom/transsion/audiotagger/audio/asf/data/ContainerType;->assertConstraints(Ljava/lang/String;[BIII)V

    .line 7
    iput-object p1, p0, Lcom/transsion/audiotagger/audio/asf/data/MetadataDescriptor;->containerType:Lcom/transsion/audiotagger/audio/asf/data/ContainerType;

    .line 8
    iput-object p2, p0, Lcom/transsion/audiotagger/audio/asf/data/MetadataDescriptor;->name:Ljava/lang/String;

    .line 9
    iput p3, p0, Lcom/transsion/audiotagger/audio/asf/data/MetadataDescriptor;->descriptorType:I

    .line 10
    iput p4, p0, Lcom/transsion/audiotagger/audio/asf/data/MetadataDescriptor;->streamNumber:I

    .line 11
    iput p5, p0, Lcom/transsion/audiotagger/audio/asf/data/MetadataDescriptor;->languageIndex:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 12
    invoke-direct {p0, p1, v0}, Lcom/transsion/audiotagger/audio/asf/data/MetadataDescriptor;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 6

    .line 13
    sget-object v1, Lcom/transsion/audiotagger/audio/asf/data/ContainerType;->METADATA_LIBRARY_OBJECT:Lcom/transsion/audiotagger/audio/asf/data/ContainerType;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/transsion/audiotagger/audio/asf/data/MetadataDescriptor;-><init>(Lcom/transsion/audiotagger/audio/asf/data/ContainerType;Ljava/lang/String;III)V

    return-void
.end method


# virtual methods
.method public asNumber()Ljava/math/BigInteger;
    .locals 6

    iget v0, p0, Lcom/transsion/audiotagger/audio/asf/data/MetadataDescriptor;->descriptorType:I

    packed-switch v0, :pswitch_data_0

    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0

    :pswitch_0
    new-instance p0, Ljava/lang/NumberFormatException;

    const-string v0, "GUID cannot be converted to a number."

    invoke-direct {p0, v0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_1
    iget-object v0, p0, Lcom/transsion/audiotagger/audio/asf/data/MetadataDescriptor;->content:[B

    array-length v0, v0

    const/16 v1, 0x8

    if-gt v0, v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/NumberFormatException;

    const-string v0, "Binary data would exceed QWORD"

    invoke-direct {p0, v0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_2
    new-instance v0, Ljava/math/BigInteger;

    invoke-virtual {p0}, Lcom/transsion/audiotagger/audio/asf/data/MetadataDescriptor;->getString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    :goto_0
    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/transsion/audiotagger/audio/asf/data/MetadataDescriptor;->content:[B

    array-length v0, v0

    new-array v1, v0, [B

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v0, :cond_1

    iget-object v3, p0, Lcom/transsion/audiotagger/audio/asf/data/MetadataDescriptor;->content:[B

    array-length v4, v3

    add-int/lit8 v5, v2, 0x1

    sub-int/2addr v4, v5

    aget-byte v3, v3, v4

    aput-byte v3, v1, v2

    move v2, v5

    goto :goto_1

    :cond_1
    new-instance v0, Ljava/math/BigInteger;

    const/4 p0, 0x1

    invoke-direct {v0, p0, v1}, Ljava/math/BigInteger;-><init>(I[B)V

    :cond_2
    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public clone()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public compareTo(Lcom/transsion/audiotagger/audio/asf/data/MetadataDescriptor;)I
    .locals 0

    .line 2
    invoke-virtual {p0}, Lcom/transsion/audiotagger/audio/asf/data/MetadataDescriptor;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Lcom/transsion/audiotagger/audio/asf/data/MetadataDescriptor;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lcom/transsion/audiotagger/audio/asf/data/MetadataDescriptor;

    invoke-virtual {p0, p1}, Lcom/transsion/audiotagger/audio/asf/data/MetadataDescriptor;->compareTo(Lcom/transsion/audiotagger/audio/asf/data/MetadataDescriptor;)I

    move-result p0

    return p0
.end method

.method public createCopy()Lcom/transsion/audiotagger/audio/asf/data/MetadataDescriptor;
    .locals 7

    new-instance v6, Lcom/transsion/audiotagger/audio/asf/data/MetadataDescriptor;

    iget-object v1, p0, Lcom/transsion/audiotagger/audio/asf/data/MetadataDescriptor;->containerType:Lcom/transsion/audiotagger/audio/asf/data/ContainerType;

    iget-object v2, p0, Lcom/transsion/audiotagger/audio/asf/data/MetadataDescriptor;->name:Ljava/lang/String;

    iget v3, p0, Lcom/transsion/audiotagger/audio/asf/data/MetadataDescriptor;->descriptorType:I

    iget v4, p0, Lcom/transsion/audiotagger/audio/asf/data/MetadataDescriptor;->streamNumber:I

    iget v5, p0, Lcom/transsion/audiotagger/audio/asf/data/MetadataDescriptor;->languageIndex:I

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/transsion/audiotagger/audio/asf/data/MetadataDescriptor;-><init>(Lcom/transsion/audiotagger/audio/asf/data/ContainerType;Ljava/lang/String;III)V

    invoke-virtual {p0}, Lcom/transsion/audiotagger/audio/asf/data/MetadataDescriptor;->getRawData()[B

    move-result-object p0

    iput-object p0, v6, Lcom/transsion/audiotagger/audio/asf/data/MetadataDescriptor;->content:[B

    return-object v6
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    instance-of v0, p1, Lcom/transsion/audiotagger/audio/asf/data/MetadataDescriptor;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    :goto_0
    move v1, v0

    goto :goto_1

    :cond_0
    check-cast p1, Lcom/transsion/audiotagger/audio/asf/data/MetadataDescriptor;

    invoke-virtual {p1}, Lcom/transsion/audiotagger/audio/asf/data/MetadataDescriptor;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/transsion/audiotagger/audio/asf/data/MetadataDescriptor;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget v2, p1, Lcom/transsion/audiotagger/audio/asf/data/MetadataDescriptor;->descriptorType:I

    iget v3, p0, Lcom/transsion/audiotagger/audio/asf/data/MetadataDescriptor;->descriptorType:I

    if-ne v2, v3, :cond_1

    iget v2, p1, Lcom/transsion/audiotagger/audio/asf/data/MetadataDescriptor;->languageIndex:I

    iget v3, p0, Lcom/transsion/audiotagger/audio/asf/data/MetadataDescriptor;->languageIndex:I

    if-ne v2, v3, :cond_1

    iget v2, p1, Lcom/transsion/audiotagger/audio/asf/data/MetadataDescriptor;->streamNumber:I

    iget v3, p0, Lcom/transsion/audiotagger/audio/asf/data/MetadataDescriptor;->streamNumber:I

    if-ne v2, v3, :cond_1

    iget-object p0, p0, Lcom/transsion/audiotagger/audio/asf/data/MetadataDescriptor;->content:[B

    iget-object p1, p1, Lcom/transsion/audiotagger/audio/asf/data/MetadataDescriptor;->content:[B

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    :goto_1
    return v1
.end method

.method public getBoolean()Z
    .locals 2

    iget-object p0, p0, Lcom/transsion/audiotagger/audio/asf/data/MetadataDescriptor;->content:[B

    array-length v0, p0

    const/4 v1, 0x0

    if-lez v0, :cond_0

    aget-byte p0, p0, v1

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public getBytes()[B
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    :try_start_0
    iget-object v1, p0, Lcom/transsion/audiotagger/audio/asf/data/MetadataDescriptor;->containerType:Lcom/transsion/audiotagger/audio/asf/data/ContainerType;

    invoke-virtual {p0, v0, v1}, Lcom/transsion/audiotagger/audio/asf/data/MetadataDescriptor;->writeInto(Ljava/io/OutputStream;Lcom/transsion/audiotagger/audio/asf/data/ContainerType;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object v1, Lcom/transsion/audiotagger/audio/asf/data/MetadataDescriptor;->LOGGER:Ljava/util/logging/Logger;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    :goto_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0
.end method

.method public getContainerType()Lcom/transsion/audiotagger/audio/asf/data/ContainerType;
    .locals 0

    iget-object p0, p0, Lcom/transsion/audiotagger/audio/asf/data/MetadataDescriptor;->containerType:Lcom/transsion/audiotagger/audio/asf/data/ContainerType;

    return-object p0
.end method

.method public getCurrentAsfSize(Lcom/transsion/audiotagger/audio/asf/data/ContainerType;)I
    .locals 4

    sget-object v0, Lcom/transsion/audiotagger/audio/asf/data/ContainerType;->EXTENDED_CONTENT:Lcom/transsion/audiotagger/audio/asf/data/ContainerType;

    if-eq p1, v0, :cond_0

    const/16 v1, 0xe

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {p0}, Lcom/transsion/audiotagger/audio/asf/data/MetadataDescriptor;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x2

    mul-int/2addr v2, v3

    add-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/transsion/audiotagger/audio/asf/data/MetadataDescriptor;->getType()I

    move-result v2

    if-ne v2, v3, :cond_1

    add-int/lit8 p0, v1, 0x2

    if-ne p1, v0, :cond_3

    add-int/lit8 p0, v1, 0x4

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lcom/transsion/audiotagger/audio/asf/data/MetadataDescriptor;->content:[B

    array-length p1, p1

    add-int/2addr p1, v1

    invoke-virtual {p0}, Lcom/transsion/audiotagger/audio/asf/data/MetadataDescriptor;->getType()I

    move-result p0

    if-nez p0, :cond_2

    add-int/lit8 p0, p1, 0x2

    goto :goto_1

    :cond_2
    move p0, p1

    :cond_3
    :goto_1
    return p0
.end method

.method public getGuid()Lcom/transsion/audiotagger/audio/asf/data/GUID;
    .locals 2

    invoke-virtual {p0}, Lcom/transsion/audiotagger/audio/asf/data/MetadataDescriptor;->getType()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/transsion/audiotagger/audio/asf/data/MetadataDescriptor;->content:[B

    array-length v0, v0

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    new-instance v0, Lcom/transsion/audiotagger/audio/asf/data/GUID;

    iget-object p0, p0, Lcom/transsion/audiotagger/audio/asf/data/MetadataDescriptor;->content:[B

    invoke-direct {v0, p0}, Lcom/transsion/audiotagger/audio/asf/data/GUID;-><init>([B)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getLanguageIndex()I
    .locals 0

    iget p0, p0, Lcom/transsion/audiotagger/audio/asf/data/MetadataDescriptor;->languageIndex:I

    return p0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/audiotagger/audio/asf/data/MetadataDescriptor;->name:Ljava/lang/String;

    return-object p0
.end method

.method public getNumber()J
    .locals 8

    invoke-virtual {p0}, Lcom/transsion/audiotagger/audio/asf/data/MetadataDescriptor;->getType()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v2, 0x3

    const/4 v3, 0x4

    if-eq v0, v2, :cond_2

    if-eq v0, v3, :cond_1

    const/4 v2, 0x5

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The current type doesn\'t allow an interpretation as a number. ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/transsion/audiotagger/audio/asf/data/MetadataDescriptor;->getType()I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const/16 v1, 0x8

    goto :goto_0

    :cond_2
    move v1, v3

    goto :goto_0

    :cond_3
    const/4 v1, 0x1

    :goto_0
    iget-object v0, p0, Lcom/transsion/audiotagger/audio/asf/data/MetadataDescriptor;->content:[B

    array-length v0, v0

    if-gt v1, v0, :cond_5

    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v1, :cond_4

    iget-object v4, p0, Lcom/transsion/audiotagger/audio/asf/data/MetadataDescriptor;->content:[B

    aget-byte v4, v4, v0

    int-to-long v4, v4

    const-wide/16 v6, 0xff

    and-long/2addr v4, v6

    mul-int/lit8 v6, v0, 0x8

    shl-long/2addr v4, v6

    or-long/2addr v2, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    return-wide v2

    :cond_5
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "The stored data cannot represent the type of current object."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getRawData()[B
    .locals 3

    iget-object p0, p0, Lcom/transsion/audiotagger/audio/asf/data/MetadataDescriptor;->content:[B

    array-length v0, p0

    new-array v0, v0, [B

    const/4 v1, 0x0

    array-length v2, p0

    invoke-static {p0, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method public getRawDataSize()I
    .locals 0

    iget-object p0, p0, Lcom/transsion/audiotagger/audio/asf/data/MetadataDescriptor;->content:[B

    array-length p0, p0

    return p0
.end method

.method public getStreamNumber()I
    .locals 0

    iget p0, p0, Lcom/transsion/audiotagger/audio/asf/data/MetadataDescriptor;->streamNumber:I

    return p0
.end method

.method public getString()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lcom/transsion/audiotagger/audio/asf/data/MetadataDescriptor;->getType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Current type is not known."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    invoke-virtual {p0}, Lcom/transsion/audiotagger/audio/asf/data/MetadataDescriptor;->getGuid()Lcom/transsion/audiotagger/audio/asf/data/GUID;

    move-result-object v0

    if-nez v0, :cond_0

    const-string p0, "Invalid GUID"

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/transsion/audiotagger/audio/asf/data/MetadataDescriptor;->getGuid()Lcom/transsion/audiotagger/audio/asf/data/GUID;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/audiotagger/audio/asf/data/GUID;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0}, Lcom/transsion/audiotagger/audio/asf/data/MetadataDescriptor;->getNumber()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0}, Lcom/transsion/audiotagger/audio/asf/data/MetadataDescriptor;->getBoolean()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :pswitch_3
    const-string p0, "binary data"

    goto :goto_0

    :pswitch_4
    :try_start_0
    new-instance v0, Ljava/lang/String;

    iget-object p0, p0, Lcom/transsion/audiotagger/audio/asf/data/MetadataDescriptor;->content:[B

    const-string v1, "UTF-16LE"

    invoke-direct {v0, p0, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-object p0, v0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object v0, Lcom/transsion/audiotagger/audio/asf/data/MetadataDescriptor;->LOGGER:Ljava/util/logging/Logger;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    const/4 p0, 0x0

    :goto_0
    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getType()I
    .locals 0

    iget p0, p0, Lcom/transsion/audiotagger/audio/asf/data/MetadataDescriptor;->descriptorType:I

    return p0
.end method

.method public hashCode()I
    .locals 0

    iget-object p0, p0, Lcom/transsion/audiotagger/audio/asf/data/MetadataDescriptor;->name:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    return p0
.end method

.method public isEmpty()Z
    .locals 0

    iget-object p0, p0, Lcom/transsion/audiotagger/audio/asf/data/MetadataDescriptor;->content:[B

    array-length p0, p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public setBinaryValue([B)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    iget-object v0, p0, Lcom/transsion/audiotagger/audio/asf/data/MetadataDescriptor;->containerType:Lcom/transsion/audiotagger/audio/asf/data/ContainerType;

    iget-object v1, p0, Lcom/transsion/audiotagger/audio/asf/data/MetadataDescriptor;->name:Ljava/lang/String;

    iget v3, p0, Lcom/transsion/audiotagger/audio/asf/data/MetadataDescriptor;->descriptorType:I

    iget v4, p0, Lcom/transsion/audiotagger/audio/asf/data/MetadataDescriptor;->streamNumber:I

    iget v5, p0, Lcom/transsion/audiotagger/audio/asf/data/MetadataDescriptor;->languageIndex:I

    move-object v2, p1

    invoke-virtual/range {v0 .. v5}, Lcom/transsion/audiotagger/audio/asf/data/ContainerType;->assertConstraints(Ljava/lang/String;[BIII)V

    invoke-virtual {p1}, [B->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    iput-object p1, p0, Lcom/transsion/audiotagger/audio/asf/data/MetadataDescriptor;->content:[B

    const/4 p1, 0x1

    iput p1, p0, Lcom/transsion/audiotagger/audio/asf/data/MetadataDescriptor;->descriptorType:I

    return-void
.end method

.method public setBooleanValue(Z)V
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [B

    const/4 v1, 0x0

    aput-byte p1, v0, v1

    iput-object v0, p0, Lcom/transsion/audiotagger/audio/asf/data/MetadataDescriptor;->content:[B

    const/4 p1, 0x2

    iput p1, p0, Lcom/transsion/audiotagger/audio/asf/data/MetadataDescriptor;->descriptorType:I

    return-void
.end method

.method public setDWordValue(J)V
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    sget-wide v0, Lcom/transsion/audiotagger/audio/asf/data/MetadataDescriptor;->DWORD_MAXVALUE:J

    cmp-long v0, p1, v0

    if-gtz v0, :cond_0

    const/4 v0, 0x4

    invoke-static {p1, p2, v0}, Lcom/transsion/audiotagger/audio/asf/util/Utils;->getBytes(JI)[B

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/audiotagger/audio/asf/data/MetadataDescriptor;->content:[B

    const/4 p1, 0x3

    iput p1, p0, Lcom/transsion/audiotagger/audio/asf/data/MetadataDescriptor;->descriptorType:I

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "value out of range (0-"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v0, Lcom/transsion/audiotagger/audio/asf/data/MetadataDescriptor;->DWORD_MAXVALUE:J

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, ")"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setGUIDValue(Lcom/transsion/audiotagger/audio/asf/data/GUID;)V
    .locals 6

    iget-object v0, p0, Lcom/transsion/audiotagger/audio/asf/data/MetadataDescriptor;->containerType:Lcom/transsion/audiotagger/audio/asf/data/ContainerType;

    iget-object v1, p0, Lcom/transsion/audiotagger/audio/asf/data/MetadataDescriptor;->name:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/transsion/audiotagger/audio/asf/data/GUID;->getBytes()[B

    move-result-object v2

    iget v4, p0, Lcom/transsion/audiotagger/audio/asf/data/MetadataDescriptor;->streamNumber:I

    iget v5, p0, Lcom/transsion/audiotagger/audio/asf/data/MetadataDescriptor;->languageIndex:I

    const/4 v3, 0x6

    invoke-virtual/range {v0 .. v5}, Lcom/transsion/audiotagger/audio/asf/data/ContainerType;->assertConstraints(Ljava/lang/String;[BIII)V

    invoke-virtual {p1}, Lcom/transsion/audiotagger/audio/asf/data/GUID;->getBytes()[B

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/audiotagger/audio/asf/data/MetadataDescriptor;->content:[B

    const/4 p1, 0x6

    iput p1, p0, Lcom/transsion/audiotagger/audio/asf/data/MetadataDescriptor;->descriptorType:I

    return-void
.end method

.method public setLanguageIndex(I)V
    .locals 6

    iget-object v0, p0, Lcom/transsion/audiotagger/audio/asf/data/MetadataDescriptor;->containerType:Lcom/transsion/audiotagger/audio/asf/data/ContainerType;

    iget-object v1, p0, Lcom/transsion/audiotagger/audio/asf/data/MetadataDescriptor;->name:Ljava/lang/String;

    iget-object v2, p0, Lcom/transsion/audiotagger/audio/asf/data/MetadataDescriptor;->content:[B

    iget v3, p0, Lcom/transsion/audiotagger/audio/asf/data/MetadataDescriptor;->descriptorType:I

    iget v4, p0, Lcom/transsion/audiotagger/audio/asf/data/MetadataDescriptor;->streamNumber:I

    move v5, p1

    invoke-virtual/range {v0 .. v5}, Lcom/transsion/audiotagger/audio/asf/data/ContainerType;->assertConstraints(Ljava/lang/String;[BIII)V

    iput p1, p0, Lcom/transsion/audiotagger/audio/asf/data/MetadataDescriptor;->languageIndex:I

    return-void
.end method

.method public setQWordValue(J)V
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    const/16 v0, 0x8

    .line 13
    invoke-static {p1, p2, v0}, Lcom/transsion/audiotagger/audio/asf/util/Utils;->getBytes(JI)[B

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/audiotagger/audio/asf/data/MetadataDescriptor;->content:[B

    const/4 p1, 0x4

    .line 14
    iput p1, p0, Lcom/transsion/audiotagger/audio/asf/data/MetadataDescriptor;->descriptorType:I

    return-void

    .line 15
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "value out of range (0-"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p2, Lcom/transsion/audiotagger/audio/asf/data/MetadataDescriptor;->QWORD_MAXVALUE:Ljava/math/BigInteger;

    invoke-virtual {p2}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ")"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setQWordValue(Ljava/math/BigInteger;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    if-eqz p1, :cond_4

    .line 1
    sget-object v0, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {v0, p1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-gtz v0, :cond_3

    .line 2
    sget-object v0, Lcom/transsion/audiotagger/audio/asf/data/MetadataDescriptor;->QWORD_MAXVALUE:Ljava/math/BigInteger;

    invoke-virtual {v0, p1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-ltz v0, :cond_2

    const/16 v0, 0x8

    .line 3
    new-array v1, v0, [B

    iput-object v1, p0, Lcom/transsion/audiotagger/audio/asf/data/MetadataDescriptor;->content:[B

    .line 4
    invoke-virtual {p1}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object p1

    .line 5
    array-length v1, p1

    if-gt v1, v0, :cond_0

    .line 6
    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 7
    iget-object v1, p0, Lcom/transsion/audiotagger/audio/asf/data/MetadataDescriptor;->content:[B

    array-length v2, p1

    add-int/lit8 v3, v0, 0x1

    sub-int/2addr v2, v3

    aget-byte v3, p1, v0

    aput-byte v3, v1, v2

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 8
    :cond_0
    iget-object p1, p0, Lcom/transsion/audiotagger/audio/asf/data/MetadataDescriptor;->content:[B

    const/4 v0, -0x1

    invoke-static {p1, v0}, Ljava/util/Arrays;->fill([BB)V

    :cond_1
    const/4 p1, 0x4

    .line 9
    iput p1, p0, Lcom/transsion/audiotagger/audio/asf/data/MetadataDescriptor;->descriptorType:I

    return-void

    .line 10
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Value exceeds QWORD (64 bit unsigned)"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 11
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Only unsigned values allowed (no negative)"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 12
    :cond_4
    new-instance p0, Ljava/lang/NumberFormatException;

    const-string p1, "null"

    invoke-direct {p0, p1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setStreamNumber(I)V
    .locals 6

    iget-object v0, p0, Lcom/transsion/audiotagger/audio/asf/data/MetadataDescriptor;->containerType:Lcom/transsion/audiotagger/audio/asf/data/ContainerType;

    iget-object v1, p0, Lcom/transsion/audiotagger/audio/asf/data/MetadataDescriptor;->name:Ljava/lang/String;

    iget-object v2, p0, Lcom/transsion/audiotagger/audio/asf/data/MetadataDescriptor;->content:[B

    iget v3, p0, Lcom/transsion/audiotagger/audio/asf/data/MetadataDescriptor;->descriptorType:I

    iget v5, p0, Lcom/transsion/audiotagger/audio/asf/data/MetadataDescriptor;->languageIndex:I

    move v4, p1

    invoke-virtual/range {v0 .. v5}, Lcom/transsion/audiotagger/audio/asf/data/ContainerType;->assertConstraints(Ljava/lang/String;[BIII)V

    iput p1, p0, Lcom/transsion/audiotagger/audio/asf/data/MetadataDescriptor;->streamNumber:I

    return-void
.end method

.method public setString(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Lcom/transsion/audiotagger/audio/asf/data/MetadataDescriptor;->getType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0

    :catch_0
    move-exception p0

    goto :goto_1

    :pswitch_0
    invoke-static {p1}, Lcom/transsion/audiotagger/audio/asf/data/GUID;->parseGUID(Ljava/lang/String;)Lcom/transsion/audiotagger/audio/asf/data/GUID;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/transsion/audiotagger/audio/asf/data/MetadataDescriptor;->setGUIDValue(Lcom/transsion/audiotagger/audio/asf/data/GUID;)V

    goto :goto_0

    :pswitch_1
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/transsion/audiotagger/audio/asf/data/MetadataDescriptor;->setWordValue(I)V

    goto :goto_0

    :pswitch_2
    new-instance v0, Ljava/math/BigInteger;

    const/16 v1, 0xa

    invoke-direct {v0, p1, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p0, v0}, Lcom/transsion/audiotagger/audio/asf/data/MetadataDescriptor;->setQWordValue(Ljava/math/BigInteger;)V

    goto :goto_0

    :pswitch_3
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/transsion/audiotagger/audio/asf/data/MetadataDescriptor;->setDWordValue(J)V

    goto :goto_0

    :pswitch_4
    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/transsion/audiotagger/audio/asf/data/MetadataDescriptor;->setBooleanValue(Z)V

    goto :goto_0

    :pswitch_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Cannot interpret binary as string."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_6
    invoke-virtual {p0, p1}, Lcom/transsion/audiotagger/audio/asf/data/MetadataDescriptor;->setStringValue(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :goto_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Value cannot be parsed as Number or is out of range (\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\")"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setStringValue(Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    new-array p1, v0, [B

    iput-object p1, p0, Lcom/transsion/audiotagger/audio/asf/data/MetadataDescriptor;->content:[B

    goto :goto_1

    :cond_0
    sget-object v1, Lcom/transsion/audiotagger/audio/asf/data/AsfHeader;->ASF_CHARSET:Ljava/nio/charset/Charset;

    invoke-static {p1, v1}, Lcom/transsion/audiotagger/audio/asf/util/Utils;->getBytes(Ljava/lang/String;Ljava/nio/charset/Charset;)[B

    move-result-object p1

    invoke-virtual {p0}, Lcom/transsion/audiotagger/audio/asf/data/MetadataDescriptor;->getContainerType()Lcom/transsion/audiotagger/audio/asf/data/ContainerType;

    move-result-object v1

    array-length v2, p1

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Lcom/transsion/audiotagger/audio/asf/data/ContainerType;->isWithinValueRange(J)Z

    move-result v1

    if-eqz v1, :cond_1

    iput-object p1, p0, Lcom/transsion/audiotagger/audio/asf/data/MetadataDescriptor;->content:[B

    goto :goto_1

    :cond_1
    invoke-static {}, Lcom/transsion/audiotagger/tag/TagOptionSingleton;->getInstance()Lcom/transsion/audiotagger/tag/TagOptionSingleton;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/audiotagger/tag/TagOptionSingleton;->isTruncateTextWithoutErrors()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/transsion/audiotagger/audio/asf/data/MetadataDescriptor;->getContainerType()Lcom/transsion/audiotagger/audio/asf/data/ContainerType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/audiotagger/audio/asf/data/ContainerType;->getMaximumDataLength()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v1

    long-to-int v1, v1

    rem-int/lit8 v2, v1, 0x2

    if-nez v2, :cond_2

    goto :goto_0

    :cond_2
    add-int/lit8 v1, v1, -0x1

    :goto_0
    new-array v1, v1, [B

    iput-object v1, p0, Lcom/transsion/audiotagger/audio/asf/data/MetadataDescriptor;->content:[B

    array-length v2, v1

    invoke-static {p1, v0, v1, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_1
    iput v0, p0, Lcom/transsion/audiotagger/audio/asf/data/MetadataDescriptor;->descriptorType:I

    return-void

    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    sget-object v1, Lcom/transsion/audiotagger/logging/ErrorMessage;->WMA_LENGTH_OF_DATA_IS_TOO_LARGE:Lcom/transsion/audiotagger/logging/ErrorMessage;

    array-length p1, p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0}, Lcom/transsion/audiotagger/audio/asf/data/MetadataDescriptor;->getContainerType()Lcom/transsion/audiotagger/audio/asf/data/ContainerType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/transsion/audiotagger/audio/asf/data/ContainerType;->getMaximumDataLength()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {p0}, Lcom/transsion/audiotagger/audio/asf/data/MetadataDescriptor;->getContainerType()Lcom/transsion/audiotagger/audio/asf/data/ContainerType;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/audiotagger/audio/asf/data/ContainerType;->getContainerGUID()Lcom/transsion/audiotagger/audio/asf/data/GUID;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/audiotagger/audio/asf/data/GUID;->getDescription()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p1, v2, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/transsion/audiotagger/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setWordValue(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    if-ltz p1, :cond_0

    const v0, 0xffff

    if-gt p1, v0, :cond_0

    int-to-long v0, p1

    const/4 p1, 0x2

    invoke-static {v0, v1, p1}, Lcom/transsion/audiotagger/audio/asf/util/Utils;->getBytes(JI)[B

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/audiotagger/audio/asf/data/MetadataDescriptor;->content:[B

    const/4 p1, 0x5

    iput p1, p0, Lcom/transsion/audiotagger/audio/asf/data/MetadataDescriptor;->descriptorType:I

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "value out of range (0-65535)"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public toString()Ljava/lang/String;
    .locals 9

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/transsion/audiotagger/audio/asf/data/MetadataDescriptor;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "WORD:"

    const-string v8, "GUID:"

    const-string v2, "String: "

    const-string v3, "Binary: "

    const-string v4, "Boolean: "

    const-string v5, "DWORD: "

    const-string v6, "QWORD:"

    filled-new-array/range {v2 .. v8}, [Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/transsion/audiotagger/audio/asf/data/MetadataDescriptor;->descriptorType:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/transsion/audiotagger/audio/asf/data/MetadataDescriptor;->getString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " (language: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/audiotagger/audio/asf/data/MetadataDescriptor;->languageIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " / stream: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/transsion/audiotagger/audio/asf/data/MetadataDescriptor;->streamNumber:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeInto(Ljava/io/OutputStream;Lcom/transsion/audiotagger/audio/asf/data/ContainerType;)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p2}, Lcom/transsion/audiotagger/audio/asf/data/MetadataDescriptor;->getCurrentAsfSize(Lcom/transsion/audiotagger/audio/asf/data/ContainerType;)I

    move-result v0

    iget v1, p0, Lcom/transsion/audiotagger/audio/asf/data/MetadataDescriptor;->descriptorType:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    sget-object v1, Lcom/transsion/audiotagger/audio/asf/data/ContainerType;->EXTENDED_CONTENT:Lcom/transsion/audiotagger/audio/asf/data/ContainerType;

    if-ne p2, v1, :cond_0

    const/4 v1, 0x4

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    new-array v1, v1, [B

    invoke-virtual {p0}, Lcom/transsion/audiotagger/audio/asf/data/MetadataDescriptor;->getBoolean()Z

    move-result v3

    int-to-byte v3, v3

    const/4 v4, 0x0

    aput-byte v3, v1, v4

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/transsion/audiotagger/audio/asf/data/MetadataDescriptor;->content:[B

    :goto_1
    sget-object v3, Lcom/transsion/audiotagger/audio/asf/data/ContainerType;->EXTENDED_CONTENT:Lcom/transsion/audiotagger/audio/asf/data/ContainerType;

    if-eq p2, v3, :cond_2

    invoke-virtual {p0}, Lcom/transsion/audiotagger/audio/asf/data/MetadataDescriptor;->getLanguageIndex()I

    move-result v4

    invoke-static {v4, p1}, Lcom/transsion/audiotagger/audio/asf/util/Utils;->writeUINT16(ILjava/io/OutputStream;)V

    invoke-virtual {p0}, Lcom/transsion/audiotagger/audio/asf/data/MetadataDescriptor;->getStreamNumber()I

    move-result v4

    invoke-static {v4, p1}, Lcom/transsion/audiotagger/audio/asf/util/Utils;->writeUINT16(ILjava/io/OutputStream;)V

    :cond_2
    invoke-virtual {p0}, Lcom/transsion/audiotagger/audio/asf/data/MetadataDescriptor;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    mul-int/2addr v4, v2

    add-int/2addr v4, v2

    invoke-static {v4, p1}, Lcom/transsion/audiotagger/audio/asf/util/Utils;->writeUINT16(ILjava/io/OutputStream;)V

    if-ne p2, v3, :cond_3

    invoke-virtual {p0}, Lcom/transsion/audiotagger/audio/asf/data/MetadataDescriptor;->getName()Ljava/lang/String;

    move-result-object v2

    sget-object v4, Lcom/transsion/audiotagger/audio/asf/data/AsfHeader;->ASF_CHARSET:Ljava/nio/charset/Charset;

    invoke-static {v2, v4}, Lcom/transsion/audiotagger/audio/asf/util/Utils;->getBytes(Ljava/lang/String;Ljava/nio/charset/Charset;)[B

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/OutputStream;->write([B)V

    sget-object v2, Lcom/transsion/audiotagger/audio/asf/data/AsfHeader;->ZERO_TERM:[B

    invoke-virtual {p1, v2}, Ljava/io/OutputStream;->write([B)V

    :cond_3
    invoke-virtual {p0}, Lcom/transsion/audiotagger/audio/asf/data/MetadataDescriptor;->getType()I

    move-result v2

    invoke-static {v2, p1}, Lcom/transsion/audiotagger/audio/asf/util/Utils;->writeUINT16(ILjava/io/OutputStream;)V

    array-length v4, v1

    if-nez v2, :cond_4

    add-int/lit8 v4, v4, 0x2

    :cond_4
    if-ne p2, v3, :cond_5

    invoke-static {v4, p1}, Lcom/transsion/audiotagger/audio/asf/util/Utils;->writeUINT16(ILjava/io/OutputStream;)V

    goto :goto_2

    :cond_5
    int-to-long v4, v4

    invoke-static {v4, v5, p1}, Lcom/transsion/audiotagger/audio/asf/util/Utils;->writeUINT32(JLjava/io/OutputStream;)V

    :goto_2
    if-eq p2, v3, :cond_6

    invoke-virtual {p0}, Lcom/transsion/audiotagger/audio/asf/data/MetadataDescriptor;->getName()Ljava/lang/String;

    move-result-object p0

    sget-object p2, Lcom/transsion/audiotagger/audio/asf/data/AsfHeader;->ASF_CHARSET:Ljava/nio/charset/Charset;

    invoke-static {p0, p2}, Lcom/transsion/audiotagger/audio/asf/util/Utils;->getBytes(Ljava/lang/String;Ljava/nio/charset/Charset;)[B

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/OutputStream;->write([B)V

    sget-object p0, Lcom/transsion/audiotagger/audio/asf/data/AsfHeader;->ZERO_TERM:[B

    invoke-virtual {p1, p0}, Ljava/io/OutputStream;->write([B)V

    :cond_6
    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V

    if-nez v2, :cond_7

    sget-object p0, Lcom/transsion/audiotagger/audio/asf/data/AsfHeader;->ZERO_TERM:[B

    invoke-virtual {p1, p0}, Ljava/io/OutputStream;->write([B)V

    :cond_7
    return v0
.end method
