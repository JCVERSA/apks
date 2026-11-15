.class public Lcom/transsion/audiotagger/audio/asf/io/MetadataReader;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/audiotagger/audio/asf/io/ChunkReader;


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final APPLYING:[Lcom/transsion/audiotagger/audio/asf/data/GUID;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    sget-object v0, Lcom/transsion/audiotagger/audio/asf/data/ContainerType;->EXTENDED_CONTENT:Lcom/transsion/audiotagger/audio/asf/data/ContainerType;

    invoke-virtual {v0}, Lcom/transsion/audiotagger/audio/asf/data/ContainerType;->getContainerGUID()Lcom/transsion/audiotagger/audio/asf/data/GUID;

    move-result-object v0

    sget-object v1, Lcom/transsion/audiotagger/audio/asf/data/ContainerType;->METADATA_OBJECT:Lcom/transsion/audiotagger/audio/asf/data/ContainerType;

    invoke-virtual {v1}, Lcom/transsion/audiotagger/audio/asf/data/ContainerType;->getContainerGUID()Lcom/transsion/audiotagger/audio/asf/data/GUID;

    move-result-object v1

    sget-object v2, Lcom/transsion/audiotagger/audio/asf/data/ContainerType;->METADATA_LIBRARY_OBJECT:Lcom/transsion/audiotagger/audio/asf/data/ContainerType;

    invoke-virtual {v2}, Lcom/transsion/audiotagger/audio/asf/data/ContainerType;->getContainerGUID()Lcom/transsion/audiotagger/audio/asf/data/GUID;

    move-result-object v2

    filled-new-array {v0, v1, v2}, [Lcom/transsion/audiotagger/audio/asf/data/GUID;

    move-result-object v0

    sput-object v0, Lcom/transsion/audiotagger/audio/asf/io/MetadataReader;->APPLYING:[Lcom/transsion/audiotagger/audio/asf/data/GUID;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private readBoolean(Ljava/io/InputStream;I)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-array p0, p2, [B

    invoke-virtual {p1, p0}, Ljava/io/InputStream;->read([B)I

    const/4 p1, 0x0

    move v0, p1

    move v1, v0

    :goto_0
    if-ge v0, p2, :cond_2

    add-int/lit8 v2, p2, -0x1

    if-ne v0, v2, :cond_1

    aget-byte v1, p0, v0

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    move v1, v2

    goto :goto_1

    :cond_0
    move v1, p1

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method


# virtual methods
.method public canFail()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getApplyingIds()[Lcom/transsion/audiotagger/audio/asf/data/GUID;
    .locals 0

    sget-object p0, Lcom/transsion/audiotagger/audio/asf/io/MetadataReader;->APPLYING:[Lcom/transsion/audiotagger/audio/asf/data/GUID;

    invoke-virtual {p0}, [Lcom/transsion/audiotagger/audio/asf/data/GUID;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lcom/transsion/audiotagger/audio/asf/data/GUID;

    return-object p0
.end method

.method public read(Lcom/transsion/audiotagger/audio/asf/data/GUID;Ljava/io/InputStream;J)Lcom/transsion/audiotagger/audio/asf/data/Chunk;
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p2

    invoke-static/range {p2 .. p2}, Lcom/transsion/audiotagger/audio/asf/util/Utils;->readBig64(Ljava/io/InputStream;)Ljava/math/BigInteger;

    move-result-object v1

    new-instance v2, Lcom/transsion/audiotagger/audio/asf/data/MetadataContainer;

    move-object/from16 v3, p1

    move-wide/from16 v4, p3

    invoke-direct {v2, v3, v4, v5, v1}, Lcom/transsion/audiotagger/audio/asf/data/MetadataContainer;-><init>(Lcom/transsion/audiotagger/audio/asf/data/GUID;JLjava/math/BigInteger;)V

    invoke-virtual {v2}, Lcom/transsion/audiotagger/audio/asf/data/MetadataContainer;->getContainerType()Lcom/transsion/audiotagger/audio/asf/data/ContainerType;

    move-result-object v1

    sget-object v3, Lcom/transsion/audiotagger/audio/asf/data/ContainerType;->EXTENDED_CONTENT:Lcom/transsion/audiotagger/audio/asf/data/ContainerType;

    if-ne v1, v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static/range {p2 .. p2}, Lcom/transsion/audiotagger/audio/asf/util/Utils;->readUINT16(Ljava/io/InputStream;)I

    move-result v3

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v3, :cond_5

    if-nez v1, :cond_1

    invoke-static/range {p2 .. p2}, Lcom/transsion/audiotagger/audio/asf/util/Utils;->readUINT16(Ljava/io/InputStream;)I

    move-result v6

    invoke-static/range {p2 .. p2}, Lcom/transsion/audiotagger/audio/asf/util/Utils;->readUINT16(Ljava/io/InputStream;)I

    move-result v7

    move v13, v6

    move v12, v7

    goto :goto_2

    :cond_1
    const/4 v12, 0x0

    const/4 v13, 0x0

    :goto_2
    invoke-static/range {p2 .. p2}, Lcom/transsion/audiotagger/audio/asf/util/Utils;->readUINT16(Ljava/io/InputStream;)I

    move-result v6

    if-eqz v1, :cond_2

    invoke-static {v0, v6}, Lcom/transsion/audiotagger/audio/asf/util/Utils;->readFixedSizeUTF16Str(Ljava/io/InputStream;I)Ljava/lang/String;

    move-result-object v7

    goto :goto_3

    :cond_2
    const/4 v7, 0x0

    :goto_3
    invoke-static/range {p2 .. p2}, Lcom/transsion/audiotagger/audio/asf/util/Utils;->readUINT16(Ljava/io/InputStream;)I

    move-result v14

    if-eqz v1, :cond_3

    invoke-static/range {p2 .. p2}, Lcom/transsion/audiotagger/audio/asf/util/Utils;->readUINT16(Ljava/io/InputStream;)I

    move-result v8

    int-to-long v8, v8

    :goto_4
    move-wide v10, v8

    goto :goto_5

    :cond_3
    invoke-static/range {p2 .. p2}, Lcom/transsion/audiotagger/audio/asf/util/Utils;->readUINT32(Ljava/io/InputStream;)J

    move-result-wide v8

    goto :goto_4

    :goto_5
    if-nez v1, :cond_4

    invoke-static {v0, v6}, Lcom/transsion/audiotagger/audio/asf/util/Utils;->readFixedSizeUTF16Str(Ljava/io/InputStream;I)Ljava/lang/String;

    move-result-object v6

    goto :goto_6

    :cond_4
    move-object v6, v7

    :goto_6
    new-instance v7, Lcom/transsion/audiotagger/audio/asf/data/MetadataDescriptor;

    invoke-virtual {v2}, Lcom/transsion/audiotagger/audio/asf/data/MetadataContainer;->getContainerType()Lcom/transsion/audiotagger/audio/asf/data/ContainerType;

    move-result-object v9

    move-object v8, v7

    move/from16 p3, v5

    move-wide v4, v10

    move-object v10, v6

    move v11, v14

    invoke-direct/range {v8 .. v13}, Lcom/transsion/audiotagger/audio/asf/data/MetadataDescriptor;-><init>(Lcom/transsion/audiotagger/audio/asf/data/ContainerType;Ljava/lang/String;III)V

    packed-switch v14, :pswitch_data_0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Invalid datatype: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v8, Ljava/lang/String;

    invoke-static {v0, v4, v5}, Lcom/transsion/audiotagger/audio/asf/util/Utils;->readBinary(Ljava/io/InputStream;J)[B

    move-result-object v4

    invoke-direct {v8, v4}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Lcom/transsion/audiotagger/audio/asf/data/MetadataDescriptor;->setStringValue(Ljava/lang/String;)V

    :goto_7
    move-object v6, p0

    goto :goto_8

    :pswitch_0
    invoke-static/range {p2 .. p2}, Lcom/transsion/audiotagger/audio/asf/util/Utils;->readGUID(Ljava/io/InputStream;)Lcom/transsion/audiotagger/audio/asf/data/GUID;

    move-result-object v4

    invoke-virtual {v7, v4}, Lcom/transsion/audiotagger/audio/asf/data/MetadataDescriptor;->setGUIDValue(Lcom/transsion/audiotagger/audio/asf/data/GUID;)V

    goto :goto_7

    :pswitch_1
    invoke-static/range {p2 .. p2}, Lcom/transsion/audiotagger/audio/asf/util/Utils;->readUINT16(Ljava/io/InputStream;)I

    move-result v4

    invoke-virtual {v7, v4}, Lcom/transsion/audiotagger/audio/asf/data/MetadataDescriptor;->setWordValue(I)V

    goto :goto_7

    :pswitch_2
    invoke-static/range {p2 .. p2}, Lcom/transsion/audiotagger/audio/asf/util/Utils;->readUINT64(Ljava/io/InputStream;)J

    move-result-wide v4

    invoke-virtual {v7, v4, v5}, Lcom/transsion/audiotagger/audio/asf/data/MetadataDescriptor;->setQWordValue(J)V

    goto :goto_7

    :pswitch_3
    invoke-static/range {p2 .. p2}, Lcom/transsion/audiotagger/audio/asf/util/Utils;->readUINT32(Ljava/io/InputStream;)J

    move-result-wide v4

    invoke-virtual {v7, v4, v5}, Lcom/transsion/audiotagger/audio/asf/data/MetadataDescriptor;->setDWordValue(J)V

    goto :goto_7

    :pswitch_4
    long-to-int v4, v4

    move-object v6, p0

    invoke-direct {p0, v0, v4}, Lcom/transsion/audiotagger/audio/asf/io/MetadataReader;->readBoolean(Ljava/io/InputStream;I)Z

    move-result v4

    invoke-virtual {v7, v4}, Lcom/transsion/audiotagger/audio/asf/data/MetadataDescriptor;->setBooleanValue(Z)V

    goto :goto_8

    :pswitch_5
    move-object v6, p0

    invoke-static {v0, v4, v5}, Lcom/transsion/audiotagger/audio/asf/util/Utils;->readBinary(Ljava/io/InputStream;J)[B

    move-result-object v4

    invoke-virtual {v7, v4}, Lcom/transsion/audiotagger/audio/asf/data/MetadataDescriptor;->setBinaryValue([B)V

    goto :goto_8

    :pswitch_6
    move-object v6, p0

    long-to-int v4, v4

    invoke-static {v0, v4}, Lcom/transsion/audiotagger/audio/asf/util/Utils;->readFixedSizeUTF16Str(Ljava/io/InputStream;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Lcom/transsion/audiotagger/audio/asf/data/MetadataDescriptor;->setStringValue(Ljava/lang/String;)V

    :goto_8
    invoke-virtual {v2, v7}, Lcom/transsion/audiotagger/audio/asf/data/MetadataContainer;->addDescriptor(Lcom/transsion/audiotagger/audio/asf/data/MetadataDescriptor;)V

    add-int/lit8 v5, p3, 0x1

    goto/16 :goto_1

    :cond_5
    return-object v2

    nop

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
